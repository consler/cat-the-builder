.class public Lorg/catrobat/catroid/transfers/CheckOAuthTokenTask;
.super Landroid/os/AsyncTask;
.source "CheckOAuthTokenTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/catrobat/catroid/transfers/CheckOAuthTokenTask$OnCheckOAuthTokenCompleteListener;
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
.field private activity:Landroid/app/Activity;

.field private exception:Lorg/catrobat/catroid/web/WebconnectionException;

.field private id:Ljava/lang/String;

.field private onCheckOAuthTokenCompleteListener:Lorg/catrobat/catroid/transfers/CheckOAuthTokenTask$OnCheckOAuthTokenCompleteListener;

.field private progressDialog:Landroid/app/ProgressDialog;

.field private provider:Ljava/lang/String;

.field private tokenAvailable:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 38
    const-class v0, Lorg/catrobat/catroid/transfers/CheckOAuthTokenTask;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/catrobat/catroid/transfers/CheckOAuthTokenTask;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "id"    # Ljava/lang/String;
    .param p3, "provider"    # Ljava/lang/String;

    .line 51
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 52
    iput-object p1, p0, Lorg/catrobat/catroid/transfers/CheckOAuthTokenTask;->activity:Landroid/app/Activity;

    .line 53
    iput-object p2, p0, Lorg/catrobat/catroid/transfers/CheckOAuthTokenTask;->id:Ljava/lang/String;

    .line 54
    iput-object p3, p0, Lorg/catrobat/catroid/transfers/CheckOAuthTokenTask;->provider:Ljava/lang/String;

    .line 55
    return-void
.end method

.method private showDialog(I)V
    .locals 4
    .param p1, "messageId"    # I

    .line 113
    iget-object v0, p0, Lorg/catrobat/catroid/transfers/CheckOAuthTokenTask;->activity:Landroid/app/Activity;

    if-nez v0, :cond_0

    .line 114
    return-void

    .line 116
    :cond_0
    iget-object v0, p0, Lorg/catrobat/catroid/transfers/CheckOAuthTokenTask;->exception:Lorg/catrobat/catroid/web/WebconnectionException;

    invoke-virtual {v0}, Lorg/catrobat/catroid/web/WebconnectionException;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const v2, 0x7f1205ff

    if-nez v0, :cond_1

    .line 117
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object v3, p0, Lorg/catrobat/catroid/transfers/CheckOAuthTokenTask;->activity:Landroid/app/Activity;

    invoke-direct {v0, v3}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v2, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 118
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    goto :goto_0

    .line 120
    :cond_1
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object v3, p0, Lorg/catrobat/catroid/transfers/CheckOAuthTokenTask;->activity:Landroid/app/Activity;

    invoke-direct {v0, v3}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v3, p0, Lorg/catrobat/catroid/transfers/CheckOAuthTokenTask;->exception:Lorg/catrobat/catroid/web/WebconnectionException;

    invoke-virtual {v3}, Lorg/catrobat/catroid/web/WebconnectionException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 121
    invoke-virtual {v0, v2, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    .line 123
    :goto_0
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 5
    .param p1, "params"    # [Ljava/lang/String;

    .line 75
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lorg/catrobat/catroid/transfers/CheckOAuthTokenTask;->activity:Landroid/app/Activity;

    invoke-static {v1}, Lorg/catrobat/catroid/utils/Utils;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 76
    new-instance v1, Lorg/catrobat/catroid/web/WebconnectionException;

    const/16 v2, 0x3ea

    const-string v3, "Network not available!"

    invoke-direct {v1, v2, v3}, Lorg/catrobat/catroid/web/WebconnectionException;-><init>(ILjava/lang/String;)V

    iput-object v1, p0, Lorg/catrobat/catroid/transfers/CheckOAuthTokenTask;->exception:Lorg/catrobat/catroid/web/WebconnectionException;

    .line 77
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 80
    :cond_0
    new-instance v1, Lorg/catrobat/catroid/web/CatrobatServerCalls;

    invoke-direct {v1}, Lorg/catrobat/catroid/web/CatrobatServerCalls;-><init>()V

    iget-object v2, p0, Lorg/catrobat/catroid/transfers/CheckOAuthTokenTask;->id:Ljava/lang/String;

    iget-object v3, p0, Lorg/catrobat/catroid/transfers/CheckOAuthTokenTask;->provider:Ljava/lang/String;

    iget-object v4, p0, Lorg/catrobat/catroid/transfers/CheckOAuthTokenTask;->activity:Landroid/app/Activity;

    invoke-virtual {v1, v2, v3, v4}, Lorg/catrobat/catroid/web/CatrobatServerCalls;->checkOAuthToken(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lorg/catrobat/catroid/transfers/CheckOAuthTokenTask;->tokenAvailable:Ljava/lang/Boolean;

    .line 81
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0
    :try_end_0
    .catch Lorg/catrobat/catroid/web/WebconnectionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 82
    :catch_0
    move-exception v1

    .line 83
    .local v1, "webconnectionException":Lorg/catrobat/catroid/web/WebconnectionException;
    sget-object v2, Lorg/catrobat/catroid/transfers/CheckOAuthTokenTask;->TAG:Ljava/lang/String;

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    iput-object v1, p0, Lorg/catrobat/catroid/transfers/CheckOAuthTokenTask;->exception:Lorg/catrobat/catroid/web/WebconnectionException;

    .line 86
    .end local v1    # "webconnectionException":Lorg/catrobat/catroid/web/WebconnectionException;
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 37
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lorg/catrobat/catroid/transfers/CheckOAuthTokenTask;->doInBackground([Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 3
    .param p1, "success"    # Ljava/lang/Boolean;

    .line 91
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 93
    iget-object v0, p0, Lorg/catrobat/catroid/transfers/CheckOAuthTokenTask;->progressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lorg/catrobat/catroid/transfers/CheckOAuthTokenTask;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 97
    :cond_0
    iget-object v0, p0, Lorg/catrobat/catroid/transfers/CheckOAuthTokenTask;->exception:Lorg/catrobat/catroid/web/WebconnectionException;

    invoke-static {v0}, Lorg/catrobat/catroid/utils/Utils;->checkForNetworkError(Lorg/catrobat/catroid/web/WebconnectionException;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 98
    const v0, 0x7f1202e5

    invoke-direct {p0, v0}, Lorg/catrobat/catroid/transfers/CheckOAuthTokenTask;->showDialog(I)V

    .line 99
    return-void

    .line 102
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/catrobat/catroid/transfers/CheckOAuthTokenTask;->exception:Lorg/catrobat/catroid/web/WebconnectionException;

    if-eqz v0, :cond_2

    .line 103
    const v0, 0x7f120740

    invoke-direct {p0, v0}, Lorg/catrobat/catroid/transfers/CheckOAuthTokenTask;->showDialog(I)V

    .line 104
    return-void

    .line 107
    :cond_2
    iget-object v0, p0, Lorg/catrobat/catroid/transfers/CheckOAuthTokenTask;->onCheckOAuthTokenCompleteListener:Lorg/catrobat/catroid/transfers/CheckOAuthTokenTask$OnCheckOAuthTokenCompleteListener;

    if-eqz v0, :cond_3

    .line 108
    iget-object v1, p0, Lorg/catrobat/catroid/transfers/CheckOAuthTokenTask;->tokenAvailable:Ljava/lang/Boolean;

    iget-object v2, p0, Lorg/catrobat/catroid/transfers/CheckOAuthTokenTask;->provider:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lorg/catrobat/catroid/transfers/CheckOAuthTokenTask$OnCheckOAuthTokenCompleteListener;->onCheckOAuthTokenComplete(Ljava/lang/Boolean;Ljava/lang/String;)V

    .line 110
    :cond_3
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 37
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lorg/catrobat/catroid/transfers/CheckOAuthTokenTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 3

    .line 63
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 64
    iget-object v0, p0, Lorg/catrobat/catroid/transfers/CheckOAuthTokenTask;->activity:Landroid/app/Activity;

    if-nez v0, :cond_0

    .line 65
    return-void

    .line 67
    :cond_0
    const v1, 0x7f120642

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 68
    .local v0, "title":Ljava/lang/String;
    iget-object v1, p0, Lorg/catrobat/catroid/transfers/CheckOAuthTokenTask;->activity:Landroid/app/Activity;

    const v2, 0x7f120531

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 69
    .local v1, "message":Ljava/lang/String;
    iget-object v2, p0, Lorg/catrobat/catroid/transfers/CheckOAuthTokenTask;->activity:Landroid/app/Activity;

    invoke-static {v2, v0, v1}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v2

    iput-object v2, p0, Lorg/catrobat/catroid/transfers/CheckOAuthTokenTask;->progressDialog:Landroid/app/ProgressDialog;

    .line 70
    return-void
.end method

.method public setOnCheckOAuthTokenCompleteListener(Lorg/catrobat/catroid/transfers/CheckOAuthTokenTask$OnCheckOAuthTokenCompleteListener;)V
    .locals 0
    .param p1, "listener"    # Lorg/catrobat/catroid/transfers/CheckOAuthTokenTask$OnCheckOAuthTokenCompleteListener;

    .line 58
    iput-object p1, p0, Lorg/catrobat/catroid/transfers/CheckOAuthTokenTask;->onCheckOAuthTokenCompleteListener:Lorg/catrobat/catroid/transfers/CheckOAuthTokenTask$OnCheckOAuthTokenCompleteListener;

    .line 59
    return-void
.end method
