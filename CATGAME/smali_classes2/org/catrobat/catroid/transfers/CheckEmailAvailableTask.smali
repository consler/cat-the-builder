.class public Lorg/catrobat/catroid/transfers/CheckEmailAvailableTask;
.super Landroid/os/AsyncTask;
.source "CheckEmailAvailableTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/catrobat/catroid/transfers/CheckEmailAvailableTask$OnCheckEmailAvailableCompleteListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private email:Ljava/lang/String;

.field private emailAvailable:Ljava/lang/Boolean;

.field private onCheckEmailAvailableCompleteListener:Lorg/catrobat/catroid/transfers/CheckEmailAvailableTask$OnCheckEmailAvailableCompleteListener;

.field private provider:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 32
    const-class v0, Lorg/catrobat/catroid/transfers/CheckEmailAvailableTask;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/catrobat/catroid/transfers/CheckEmailAvailableTask;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "email"    # Ljava/lang/String;
    .param p2, "provider"    # Ljava/lang/String;

    .line 41
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 42
    iput-object p1, p0, Lorg/catrobat/catroid/transfers/CheckEmailAvailableTask;->email:Ljava/lang/String;

    .line 43
    iput-object p2, p0, Lorg/catrobat/catroid/transfers/CheckEmailAvailableTask;->provider:Ljava/lang/String;

    .line 44
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 3
    .param p1, "params"    # [Ljava/lang/String;

    .line 53
    :try_start_0
    new-instance v0, Lorg/catrobat/catroid/web/CatrobatServerCalls;

    invoke-direct {v0}, Lorg/catrobat/catroid/web/CatrobatServerCalls;-><init>()V

    iget-object v1, p0, Lorg/catrobat/catroid/transfers/CheckEmailAvailableTask;->email:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/web/CatrobatServerCalls;->isEMailAvailable(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lorg/catrobat/catroid/transfers/CheckEmailAvailableTask;->emailAvailable:Ljava/lang/Boolean;

    .line 54
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0
    :try_end_0
    .catch Lorg/catrobat/catroid/web/WebconnectionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 55
    :catch_0
    move-exception v0

    .line 56
    .local v0, "webconnectionException":Lorg/catrobat/catroid/web/WebconnectionException;
    sget-object v1, Lorg/catrobat/catroid/transfers/CheckEmailAvailableTask;->TAG:Ljava/lang/String;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    .end local v0    # "webconnectionException":Lorg/catrobat/catroid/web/WebconnectionException;
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 31
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lorg/catrobat/catroid/transfers/CheckEmailAvailableTask;->doInBackground([Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 3
    .param p1, "success"    # Ljava/lang/Boolean;

    .line 63
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 65
    iget-object v0, p0, Lorg/catrobat/catroid/transfers/CheckEmailAvailableTask;->onCheckEmailAvailableCompleteListener:Lorg/catrobat/catroid/transfers/CheckEmailAvailableTask$OnCheckEmailAvailableCompleteListener;

    if-eqz v0, :cond_0

    .line 66
    iget-object v1, p0, Lorg/catrobat/catroid/transfers/CheckEmailAvailableTask;->emailAvailable:Ljava/lang/Boolean;

    iget-object v2, p0, Lorg/catrobat/catroid/transfers/CheckEmailAvailableTask;->provider:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lorg/catrobat/catroid/transfers/CheckEmailAvailableTask$OnCheckEmailAvailableCompleteListener;->onCheckEmailAvailableComplete(Ljava/lang/Boolean;Ljava/lang/String;)V

    .line 68
    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 31
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lorg/catrobat/catroid/transfers/CheckEmailAvailableTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method

.method public setOnCheckEmailAvailableCompleteListener(Lorg/catrobat/catroid/transfers/CheckEmailAvailableTask$OnCheckEmailAvailableCompleteListener;)V
    .locals 0
    .param p1, "listener"    # Lorg/catrobat/catroid/transfers/CheckEmailAvailableTask$OnCheckEmailAvailableCompleteListener;

    .line 47
    iput-object p1, p0, Lorg/catrobat/catroid/transfers/CheckEmailAvailableTask;->onCheckEmailAvailableCompleteListener:Lorg/catrobat/catroid/transfers/CheckEmailAvailableTask$OnCheckEmailAvailableCompleteListener;

    .line 48
    return-void
.end method
