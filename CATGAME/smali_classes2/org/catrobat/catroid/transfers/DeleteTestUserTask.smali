.class public Lorg/catrobat/catroid/transfers/DeleteTestUserTask;
.super Landroid/os/AsyncTask;
.source "DeleteTestUserTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/catrobat/catroid/transfers/DeleteTestUserTask$OnDeleteTestUserCompleteListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private context:Landroid/content/Context;

.field private exception:Lorg/catrobat/catroid/web/WebconnectionException;

.field private onDeleteTestUserCompleteListener:Lorg/catrobat/catroid/transfers/DeleteTestUserTask$OnDeleteTestUserCompleteListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 37
    const-class v0, Lorg/catrobat/catroid/transfers/DeleteTestUserTask;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/catrobat/catroid/transfers/DeleteTestUserTask;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 45
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 46
    iput-object p1, p0, Lorg/catrobat/catroid/transfers/DeleteTestUserTask;->context:Landroid/content/Context;

    .line 47
    return-void
.end method

.method private showDialog(I)V
    .locals 4
    .param p1, "messageId"    # I

    .line 84
    iget-object v0, p0, Lorg/catrobat/catroid/transfers/DeleteTestUserTask;->context:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 85
    return-void

    .line 87
    :cond_0
    iget-object v0, p0, Lorg/catrobat/catroid/transfers/DeleteTestUserTask;->exception:Lorg/catrobat/catroid/web/WebconnectionException;

    invoke-virtual {v0}, Lorg/catrobat/catroid/web/WebconnectionException;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const v2, 0x7f1205ff

    if-nez v0, :cond_1

    .line 88
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object v3, p0, Lorg/catrobat/catroid/transfers/DeleteTestUserTask;->context:Landroid/content/Context;

    invoke-direct {v0, v3}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v2, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 89
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    goto :goto_0

    .line 91
    :cond_1
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object v3, p0, Lorg/catrobat/catroid/transfers/DeleteTestUserTask;->context:Landroid/content/Context;

    invoke-direct {v0, v3}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v3, p0, Lorg/catrobat/catroid/transfers/DeleteTestUserTask;->exception:Lorg/catrobat/catroid/web/WebconnectionException;

    invoke-virtual {v3}, Lorg/catrobat/catroid/web/WebconnectionException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 92
    invoke-virtual {v0, v2, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    .line 94
    :goto_0
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 4
    .param p1, "params"    # [Ljava/lang/Void;

    .line 56
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lorg/catrobat/catroid/transfers/DeleteTestUserTask;->context:Landroid/content/Context;

    invoke-static {v1}, Lorg/catrobat/catroid/utils/Utils;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 57
    new-instance v1, Lorg/catrobat/catroid/web/WebconnectionException;

    const/16 v2, 0x3ea

    const-string v3, "Network not available!"

    invoke-direct {v1, v2, v3}, Lorg/catrobat/catroid/web/WebconnectionException;-><init>(ILjava/lang/String;)V

    iput-object v1, p0, Lorg/catrobat/catroid/transfers/DeleteTestUserTask;->exception:Lorg/catrobat/catroid/web/WebconnectionException;

    .line 58
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 61
    :cond_0
    new-instance v1, Lorg/catrobat/catroid/web/CatrobatServerCalls;

    invoke-direct {v1}, Lorg/catrobat/catroid/web/CatrobatServerCalls;-><init>()V

    invoke-virtual {v1}, Lorg/catrobat/catroid/web/CatrobatServerCalls;->deleteTestUserAccountsOnServer()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0
    :try_end_0
    .catch Lorg/catrobat/catroid/web/WebconnectionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 62
    :catch_0
    move-exception v1

    .line 63
    .local v1, "webconnectionException":Lorg/catrobat/catroid/web/WebconnectionException;
    sget-object v2, Lorg/catrobat/catroid/transfers/DeleteTestUserTask;->TAG:Ljava/lang/String;

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    iput-object v1, p0, Lorg/catrobat/catroid/transfers/DeleteTestUserTask;->exception:Lorg/catrobat/catroid/web/WebconnectionException;

    .line 66
    .end local v1    # "webconnectionException":Lorg/catrobat/catroid/web/WebconnectionException;
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 36
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lorg/catrobat/catroid/transfers/DeleteTestUserTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 1
    .param p1, "deleted"    # Ljava/lang/Boolean;

    .line 71
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 73
    iget-object v0, p0, Lorg/catrobat/catroid/transfers/DeleteTestUserTask;->exception:Lorg/catrobat/catroid/web/WebconnectionException;

    invoke-static {v0}, Lorg/catrobat/catroid/utils/Utils;->checkForNetworkError(Lorg/catrobat/catroid/web/WebconnectionException;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    const v0, 0x7f1202e5

    invoke-direct {p0, v0}, Lorg/catrobat/catroid/transfers/DeleteTestUserTask;->showDialog(I)V

    .line 75
    return-void

    .line 78
    :cond_0
    iget-object v0, p0, Lorg/catrobat/catroid/transfers/DeleteTestUserTask;->onDeleteTestUserCompleteListener:Lorg/catrobat/catroid/transfers/DeleteTestUserTask$OnDeleteTestUserCompleteListener;

    if-eqz v0, :cond_1

    .line 79
    invoke-interface {v0, p1}, Lorg/catrobat/catroid/transfers/DeleteTestUserTask$OnDeleteTestUserCompleteListener;->onDeleteTestUserComplete(Ljava/lang/Boolean;)V

    .line 81
    :cond_1
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 36
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lorg/catrobat/catroid/transfers/DeleteTestUserTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method

.method public setOnDeleteTestUserCompleteListener(Lorg/catrobat/catroid/transfers/DeleteTestUserTask$OnDeleteTestUserCompleteListener;)V
    .locals 0
    .param p1, "listener"    # Lorg/catrobat/catroid/transfers/DeleteTestUserTask$OnDeleteTestUserCompleteListener;

    .line 50
    iput-object p1, p0, Lorg/catrobat/catroid/transfers/DeleteTestUserTask;->onDeleteTestUserCompleteListener:Lorg/catrobat/catroid/transfers/DeleteTestUserTask$OnDeleteTestUserCompleteListener;

    .line 51
    return-void
.end method
