.class public Lorg/catrobat/catroid/transfers/CheckTokenTask;
.super Landroid/os/AsyncTask;
.source "CheckTokenTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/catrobat/catroid/transfers/CheckTokenTask$TokenCheckListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "[",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private onCheckTokenCompleteListener:Lorg/catrobat/catroid/transfers/CheckTokenTask$TokenCheckListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 34
    const-class v0, Lorg/catrobat/catroid/transfers/CheckTokenTask;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/catrobat/catroid/transfers/CheckTokenTask;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/catrobat/catroid/transfers/CheckTokenTask$TokenCheckListener;)V
    .locals 0
    .param p1, "onCheckTokenCompleteListener"    # Lorg/catrobat/catroid/transfers/CheckTokenTask$TokenCheckListener;

    .line 37
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 38
    iput-object p1, p0, Lorg/catrobat/catroid/transfers/CheckTokenTask;->onCheckTokenCompleteListener:Lorg/catrobat/catroid/transfers/CheckTokenTask$TokenCheckListener;

    .line 39
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 32
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lorg/catrobat/catroid/transfers/CheckTokenTask;->doInBackground([Ljava/lang/String;)[Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/String;)[Ljava/lang/Boolean;
    .locals 8
    .param p1, "arg0"    # [Ljava/lang/String;

    .line 44
    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_0
    new-array v3, v0, [Ljava/lang/Boolean;

    new-instance v4, Lorg/catrobat/catroid/web/CatrobatServerCalls;

    invoke-direct {v4}, Lorg/catrobat/catroid/web/CatrobatServerCalls;-><init>()V

    aget-object v5, p1, v2

    aget-object v6, p1, v1

    const-string v7, "https://share.catrob.at/pocketcode/"

    invoke-virtual {v4, v5, v6, v7}, Lorg/catrobat/catroid/web/CatrobatServerCalls;->checkToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v1
    :try_end_0
    .catch Lorg/catrobat/catroid/web/WebconnectionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 45
    :catch_0
    move-exception v3

    .line 46
    .local v3, "e":Lorg/catrobat/catroid/web/WebconnectionException;
    sget-object v4, Lorg/catrobat/catroid/transfers/CheckTokenTask;->TAG:Ljava/lang/String;

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    new-array v0, v0, [Ljava/lang/Boolean;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v0, v2

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 32
    check-cast p1, [Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lorg/catrobat/catroid/transfers/CheckTokenTask;->onPostExecute([Ljava/lang/Boolean;)V

    return-void
.end method

.method protected onPostExecute([Ljava/lang/Boolean;)V
    .locals 3
    .param p1, "b"    # [Ljava/lang/Boolean;

    .line 53
    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 54
    .local v0, "tokenValid":Z
    const/4 v1, 0x1

    aget-object v1, p1, v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 55
    .local v1, "connectionFailed":Z
    iget-object v2, p0, Lorg/catrobat/catroid/transfers/CheckTokenTask;->onCheckTokenCompleteListener:Lorg/catrobat/catroid/transfers/CheckTokenTask$TokenCheckListener;

    invoke-interface {v2, v0, v1}, Lorg/catrobat/catroid/transfers/CheckTokenTask$TokenCheckListener;->onTokenCheckComplete(ZZ)V

    .line 56
    return-void
.end method
