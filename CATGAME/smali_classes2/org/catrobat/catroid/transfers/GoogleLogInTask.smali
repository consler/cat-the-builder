.class public Lorg/catrobat/catroid/transfers/GoogleLogInTask;
.super Landroid/os/AsyncTask;
.source "GoogleLogInTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/catrobat/catroid/transfers/GoogleLogInTask$OnGoogleServerLogInCompleteListener;
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

.field private id:Ljava/lang/String;

.field private locale:Ljava/lang/String;

.field private mail:Ljava/lang/String;

.field private message:Ljava/lang/String;

.field private onGoogleServerLogInCompleteListener:Lorg/catrobat/catroid/transfers/GoogleLogInTask$OnGoogleServerLogInCompleteListener;

.field private progressDialog:Landroid/app/ProgressDialog;

.field private userSignedIn:Z

.field private username:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 42
    const-class v0, Lorg/catrobat/catroid/transfers/GoogleLogInTask;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/catrobat/catroid/transfers/GoogleLogInTask;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "mail"    # Ljava/lang/String;
    .param p3, "username"    # Ljava/lang/String;
    .param p4, "id"    # Ljava/lang/String;
    .param p5, "locale"    # Ljava/lang/String;

    .line 55
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 56
    iput-object p1, p0, Lorg/catrobat/catroid/transfers/GoogleLogInTask;->context:Landroid/content/Context;

    .line 57
    iput-object p2, p0, Lorg/catrobat/catroid/transfers/GoogleLogInTask;->mail:Ljava/lang/String;

    .line 58
    iput-object p3, p0, Lorg/catrobat/catroid/transfers/GoogleLogInTask;->username:Ljava/lang/String;

    .line 59
    iput-object p4, p0, Lorg/catrobat/catroid/transfers/GoogleLogInTask;->id:Ljava/lang/String;

    .line 60
    iput-object p5, p0, Lorg/catrobat/catroid/transfers/GoogleLogInTask;->locale:Ljava/lang/String;

    .line 61
    return-void
.end method

.method private showDialog(I)V
    .locals 5
    .param p1, "messageId"    # I

    .line 123
    iget-object v0, p0, Lorg/catrobat/catroid/transfers/GoogleLogInTask;->context:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 124
    return-void

    .line 126
    :cond_0
    iget-object v1, p0, Lorg/catrobat/catroid/transfers/GoogleLogInTask;->message:Ljava/lang/String;

    const/4 v2, 0x0

    const v3, 0x7f1205ff

    const v4, 0x7f1206fe

    if-nez v1, :cond_1

    .line 127
    new-instance v1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v4}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 128
    invoke-virtual {v0, v3, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    goto :goto_0

    .line 130
    :cond_1
    new-instance v1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v4}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lorg/catrobat/catroid/transfers/GoogleLogInTask;->message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 131
    invoke-virtual {v0, v3, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    .line 133
    :goto_0
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 8
    .param p1, "arg0"    # [Ljava/lang/Void;

    .line 81
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lorg/catrobat/catroid/transfers/GoogleLogInTask;->context:Landroid/content/Context;

    invoke-static {v1}, Lorg/catrobat/catroid/utils/Utils;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 82
    new-instance v1, Lorg/catrobat/catroid/web/WebconnectionException;

    const/16 v2, 0x3ea

    const-string v3, "Network not available!"

    invoke-direct {v1, v2, v3}, Lorg/catrobat/catroid/web/WebconnectionException;-><init>(ILjava/lang/String;)V

    iput-object v1, p0, Lorg/catrobat/catroid/transfers/GoogleLogInTask;->exception:Lorg/catrobat/catroid/web/WebconnectionException;

    .line 83
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 86
    :cond_0
    new-instance v2, Lorg/catrobat/catroid/web/ServerCalls;

    sget-object v1, Lorg/catrobat/catroid/web/CatrobatWebClient;->INSTANCE:Lorg/catrobat/catroid/web/CatrobatWebClient;

    invoke-virtual {v1}, Lorg/catrobat/catroid/web/CatrobatWebClient;->getClient()Lokhttp3/OkHttpClient;

    move-result-object v1

    invoke-direct {v2, v1}, Lorg/catrobat/catroid/web/ServerCalls;-><init>(Lokhttp3/OkHttpClient;)V

    iget-object v3, p0, Lorg/catrobat/catroid/transfers/GoogleLogInTask;->mail:Ljava/lang/String;

    iget-object v4, p0, Lorg/catrobat/catroid/transfers/GoogleLogInTask;->username:Ljava/lang/String;

    iget-object v5, p0, Lorg/catrobat/catroid/transfers/GoogleLogInTask;->id:Ljava/lang/String;

    iget-object v6, p0, Lorg/catrobat/catroid/transfers/GoogleLogInTask;->locale:Ljava/lang/String;

    iget-object v7, p0, Lorg/catrobat/catroid/transfers/GoogleLogInTask;->context:Landroid/content/Context;

    invoke-virtual/range {v2 .. v7}, Lorg/catrobat/catroid/web/ServerCalls;->googleLogin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, p0, Lorg/catrobat/catroid/transfers/GoogleLogInTask;->userSignedIn:Z

    .line 87
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0
    :try_end_0
    .catch Lorg/catrobat/catroid/web/WebconnectionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 88
    :catch_0
    move-exception v1

    .line 89
    .local v1, "webconnectionException":Lorg/catrobat/catroid/web/WebconnectionException;
    sget-object v2, Lorg/catrobat/catroid/transfers/GoogleLogInTask;->TAG:Ljava/lang/String;

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    invoke-virtual {v1}, Lorg/catrobat/catroid/web/WebconnectionException;->getMessage()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/catrobat/catroid/transfers/GoogleLogInTask;->message:Ljava/lang/String;

    .line 92
    .end local v1    # "webconnectionException":Lorg/catrobat/catroid/web/WebconnectionException;
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 40
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lorg/catrobat/catroid/transfers/GoogleLogInTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 2
    .param p1, "success"    # Ljava/lang/Boolean;

    .line 97
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 99
    iget-object v0, p0, Lorg/catrobat/catroid/transfers/GoogleLogInTask;->progressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lorg/catrobat/catroid/transfers/GoogleLogInTask;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 103
    :cond_0
    iget-object v0, p0, Lorg/catrobat/catroid/transfers/GoogleLogInTask;->exception:Lorg/catrobat/catroid/web/WebconnectionException;

    invoke-static {v0}, Lorg/catrobat/catroid/utils/Utils;->checkForNetworkError(Lorg/catrobat/catroid/web/WebconnectionException;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 104
    const v0, 0x7f1202e5

    invoke-direct {p0, v0}, Lorg/catrobat/catroid/transfers/GoogleLogInTask;->showDialog(I)V

    .line 105
    return-void

    .line 108
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/catrobat/catroid/transfers/GoogleLogInTask;->exception:Lorg/catrobat/catroid/web/WebconnectionException;

    if-nez v0, :cond_3

    :cond_2
    iget-boolean v0, p0, Lorg/catrobat/catroid/transfers/GoogleLogInTask;->userSignedIn:Z

    if-nez v0, :cond_4

    .line 109
    :cond_3
    const v0, 0x7f120740

    invoke-direct {p0, v0}, Lorg/catrobat/catroid/transfers/GoogleLogInTask;->showDialog(I)V

    .line 110
    return-void

    .line 113
    :cond_4
    if-eqz v0, :cond_5

    .line 114
    iget-object v0, p0, Lorg/catrobat/catroid/transfers/GoogleLogInTask;->context:Landroid/content/Context;

    const v1, 0x7f1207cb

    invoke-static {v0, v1}, Lorg/catrobat/catroid/utils/ToastUtil;->showSuccess(Landroid/content/Context;I)V

    .line 117
    :cond_5
    iget-object v0, p0, Lorg/catrobat/catroid/transfers/GoogleLogInTask;->onGoogleServerLogInCompleteListener:Lorg/catrobat/catroid/transfers/GoogleLogInTask$OnGoogleServerLogInCompleteListener;

    if-eqz v0, :cond_6

    .line 118
    invoke-interface {v0}, Lorg/catrobat/catroid/transfers/GoogleLogInTask$OnGoogleServerLogInCompleteListener;->onGoogleServerLogInComplete()V

    .line 120
    :cond_6
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 40
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lorg/catrobat/catroid/transfers/GoogleLogInTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 3

    .line 69
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 70
    iget-object v0, p0, Lorg/catrobat/catroid/transfers/GoogleLogInTask;->context:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 71
    return-void

    .line 73
    :cond_0
    const v1, 0x7f120642

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 74
    .local v0, "title":Ljava/lang/String;
    iget-object v1, p0, Lorg/catrobat/catroid/transfers/GoogleLogInTask;->context:Landroid/content/Context;

    const v2, 0x7f120533

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 75
    .local v1, "message":Ljava/lang/String;
    iget-object v2, p0, Lorg/catrobat/catroid/transfers/GoogleLogInTask;->context:Landroid/content/Context;

    invoke-static {v2, v0, v1}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v2

    iput-object v2, p0, Lorg/catrobat/catroid/transfers/GoogleLogInTask;->progressDialog:Landroid/app/ProgressDialog;

    .line 76
    return-void
.end method

.method public setOnGoogleServerLogInCompleteListener(Lorg/catrobat/catroid/transfers/GoogleLogInTask$OnGoogleServerLogInCompleteListener;)V
    .locals 0
    .param p1, "listener"    # Lorg/catrobat/catroid/transfers/GoogleLogInTask$OnGoogleServerLogInCompleteListener;

    .line 64
    iput-object p1, p0, Lorg/catrobat/catroid/transfers/GoogleLogInTask;->onGoogleServerLogInCompleteListener:Lorg/catrobat/catroid/transfers/GoogleLogInTask$OnGoogleServerLogInCompleteListener;

    .line 65
    return-void
.end method
