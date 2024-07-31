.class public Lorg/catrobat/catroid/transfers/LoginTask;
.super Landroid/os/AsyncTask;
.source "LoginTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/catrobat/catroid/transfers/LoginTask$OnLoginListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private contextWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private message:Ljava/lang/String;

.field private onLoginListener:Lorg/catrobat/catroid/transfers/LoginTask$OnLoginListener;

.field private password:Ljava/lang/String;

.field private progressDialog:Landroid/app/ProgressDialog;

.field private userLoggedIn:Z

.field private username:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 44
    const-class v0, Lorg/catrobat/catroid/transfers/LoginTask;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/catrobat/catroid/transfers/LoginTask;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "activity"    # Landroid/content/Context;
    .param p2, "username"    # Ljava/lang/String;
    .param p3, "password"    # Ljava/lang/String;

    .line 56
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 52
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/catrobat/catroid/transfers/LoginTask;->userLoggedIn:Z

    .line 57
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/catrobat/catroid/transfers/LoginTask;->contextWeakReference:Ljava/lang/ref/WeakReference;

    .line 58
    iput-object p2, p0, Lorg/catrobat/catroid/transfers/LoginTask;->username:Ljava/lang/String;

    .line 59
    iput-object p3, p0, Lorg/catrobat/catroid/transfers/LoginTask;->password:Ljava/lang/String;

    .line 60
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 42
    sget-object v0, Lorg/catrobat/catroid/transfers/LoginTask;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Lorg/catrobat/catroid/transfers/LoginTask;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lorg/catrobat/catroid/transfers/LoginTask;
    .param p1, "x1"    # Ljava/lang/String;

    .line 42
    iput-object p1, p0, Lorg/catrobat/catroid/transfers/LoginTask;->message:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$202(Lorg/catrobat/catroid/transfers/LoginTask;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/catrobat/catroid/transfers/LoginTask;
    .param p1, "x1"    # Z

    .line 42
    iput-boolean p1, p0, Lorg/catrobat/catroid/transfers/LoginTask;->userLoggedIn:Z

    return p1
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 42
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lorg/catrobat/catroid/transfers/LoginTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 13
    .param p1, "arg0"    # [Ljava/lang/Void;

    .line 79
    iget-object v0, p0, Lorg/catrobat/catroid/transfers/LoginTask;->contextWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 81
    .local v0, "context":Landroid/content/Context;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 82
    return-object v1

    .line 85
    :cond_0
    invoke-static {v0}, Lorg/catrobat/catroid/utils/Utils;->checkIsNetworkAvailableAndShowErrorMessage(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 86
    const/4 v2, 0x0

    iput-boolean v2, p0, Lorg/catrobat/catroid/transfers/LoginTask;->userLoggedIn:Z

    .line 87
    return-object v1

    .line 89
    :cond_1
    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 90
    .local v2, "sharedPreferences":Landroid/content/SharedPreferences;
    const-string v3, "token"

    const-string v4, "no_token"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 91
    .local v11, "token":Ljava/lang/String;
    sget-object v3, Lorg/catrobat/catroid/transfers/LoginTask;->TAG:Ljava/lang/String;

    invoke-static {v3, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    new-instance v12, Lorg/catrobat/catroid/web/ServerAuthenticator;

    iget-object v4, p0, Lorg/catrobat/catroid/transfers/LoginTask;->username:Ljava/lang/String;

    iget-object v5, p0, Lorg/catrobat/catroid/transfers/LoginTask;->password:Ljava/lang/String;

    sget-object v3, Lorg/catrobat/catroid/web/CatrobatWebClient;->INSTANCE:Lorg/catrobat/catroid/web/CatrobatWebClient;

    .line 94
    invoke-virtual {v3}, Lorg/catrobat/catroid/web/CatrobatWebClient;->getClient()Lokhttp3/OkHttpClient;

    move-result-object v7

    new-instance v10, Lorg/catrobat/catroid/transfers/LoginTask$1;

    invoke-direct {v10, p0}, Lorg/catrobat/catroid/transfers/LoginTask$1;-><init>(Lorg/catrobat/catroid/transfers/LoginTask;)V

    const-string v8, "https://share.catrob.at/pocketcode/"

    move-object v3, v12

    move-object v6, v11

    move-object v9, v2

    invoke-direct/range {v3 .. v10}, Lorg/catrobat/catroid/web/ServerAuthenticator;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lokhttp3/OkHttpClient;Ljava/lang/String;Landroid/content/SharedPreferences;Lorg/catrobat/catroid/web/ServerAuthenticator$TaskListener;)V

    .line 110
    .local v3, "authenticator":Lorg/catrobat/catroid/web/ServerAuthenticator;
    invoke-virtual {v3}, Lorg/catrobat/catroid/web/ServerAuthenticator;->performCatrobatLogin()V

    .line 111
    return-object v1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 42
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lorg/catrobat/catroid/transfers/LoginTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 3
    .param p1, "arg"    # Ljava/lang/Void;

    .line 116
    iget-object v0, p0, Lorg/catrobat/catroid/transfers/LoginTask;->contextWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 117
    .local v0, "context":Landroid/content/Context;
    if-nez v0, :cond_0

    .line 118
    return-void

    .line 121
    :cond_0
    iget-object v1, p0, Lorg/catrobat/catroid/transfers/LoginTask;->progressDialog:Landroid/app/ProgressDialog;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 122
    iget-object v1, p0, Lorg/catrobat/catroid/transfers/LoginTask;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 125
    :cond_1
    iget-boolean v1, p0, Lorg/catrobat/catroid/transfers/LoginTask;->userLoggedIn:Z

    if-eqz v1, :cond_3

    .line 126
    const v1, 0x7f1207cb

    invoke-static {v0, v1}, Lorg/catrobat/catroid/utils/ToastUtil;->showSuccess(Landroid/content/Context;I)V

    .line 127
    iget-object v1, p0, Lorg/catrobat/catroid/transfers/LoginTask;->onLoginListener:Lorg/catrobat/catroid/transfers/LoginTask$OnLoginListener;

    if-eqz v1, :cond_2

    .line 128
    invoke-interface {v1}, Lorg/catrobat/catroid/transfers/LoginTask$OnLoginListener;->onLoginComplete()V

    .line 130
    :cond_2
    return-void

    .line 133
    :cond_3
    iget-object v1, p0, Lorg/catrobat/catroid/transfers/LoginTask;->message:Ljava/lang/String;

    if-nez v1, :cond_4

    .line 134
    const v1, 0x7f120740

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/catrobat/catroid/transfers/LoginTask;->message:Ljava/lang/String;

    .line 136
    :cond_4
    iget-object v1, p0, Lorg/catrobat/catroid/transfers/LoginTask;->onLoginListener:Lorg/catrobat/catroid/transfers/LoginTask$OnLoginListener;

    iget-object v2, p0, Lorg/catrobat/catroid/transfers/LoginTask;->message:Ljava/lang/String;

    invoke-interface {v1, v2}, Lorg/catrobat/catroid/transfers/LoginTask$OnLoginListener;->onLoginFailed(Ljava/lang/String;)V

    .line 137
    sget-object v1, Lorg/catrobat/catroid/transfers/LoginTask;->TAG:Ljava/lang/String;

    iget-object v2, p0, Lorg/catrobat/catroid/transfers/LoginTask;->message:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    return-void
.end method

.method protected onPreExecute()V
    .locals 4

    .line 68
    iget-object v0, p0, Lorg/catrobat/catroid/transfers/LoginTask;->contextWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 69
    .local v0, "context":Landroid/content/Context;
    if-nez v0, :cond_0

    .line 70
    return-void

    .line 72
    :cond_0
    const v1, 0x7f120642

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 73
    .local v1, "title":Ljava/lang/String;
    const v2, 0x7f120530

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 74
    .local v2, "message":Ljava/lang/String;
    invoke-static {v0, v1, v2}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v3

    iput-object v3, p0, Lorg/catrobat/catroid/transfers/LoginTask;->progressDialog:Landroid/app/ProgressDialog;

    .line 75
    return-void
.end method

.method public setOnLoginListener(Lorg/catrobat/catroid/transfers/LoginTask$OnLoginListener;)V
    .locals 0
    .param p1, "listener"    # Lorg/catrobat/catroid/transfers/LoginTask$OnLoginListener;

    .line 63
    iput-object p1, p0, Lorg/catrobat/catroid/transfers/LoginTask;->onLoginListener:Lorg/catrobat/catroid/transfers/LoginTask$OnLoginListener;

    .line 64
    return-void
.end method
