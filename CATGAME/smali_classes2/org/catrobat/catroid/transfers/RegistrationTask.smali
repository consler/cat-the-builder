.class public Lorg/catrobat/catroid/transfers/RegistrationTask;
.super Landroid/os/AsyncTask;
.source "RegistrationTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/catrobat/catroid/transfers/RegistrationTask$OnRegistrationListener;
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


# instance fields
.field private final contextWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private email:Ljava/lang/String;

.field private message:Ljava/lang/String;

.field private onRegistrationListener:Lorg/catrobat/catroid/transfers/RegistrationTask$OnRegistrationListener;

.field private password:Ljava/lang/String;

.field private progressDialog:Landroid/app/ProgressDialog;

.field private userRegistered:Z

.field private username:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "username"    # Ljava/lang/String;
    .param p3, "password"    # Ljava/lang/String;
    .param p4, "email"    # Ljava/lang/String;

    .line 55
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 51
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/catrobat/catroid/transfers/RegistrationTask;->userRegistered:Z

    .line 56
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/catrobat/catroid/transfers/RegistrationTask;->contextWeakReference:Ljava/lang/ref/WeakReference;

    .line 57
    iput-object p2, p0, Lorg/catrobat/catroid/transfers/RegistrationTask;->username:Ljava/lang/String;

    .line 58
    iput-object p3, p0, Lorg/catrobat/catroid/transfers/RegistrationTask;->password:Ljava/lang/String;

    .line 59
    iput-object p4, p0, Lorg/catrobat/catroid/transfers/RegistrationTask;->email:Ljava/lang/String;

    .line 60
    return-void
.end method

.method static synthetic access$002(Lorg/catrobat/catroid/transfers/RegistrationTask;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lorg/catrobat/catroid/transfers/RegistrationTask;
    .param p1, "x1"    # Ljava/lang/String;

    .line 43
    iput-object p1, p0, Lorg/catrobat/catroid/transfers/RegistrationTask;->message:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$102(Lorg/catrobat/catroid/transfers/RegistrationTask;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/catrobat/catroid/transfers/RegistrationTask;
    .param p1, "x1"    # Z

    .line 43
    iput-boolean p1, p0, Lorg/catrobat/catroid/transfers/RegistrationTask;->userRegistered:Z

    return p1
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 43
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lorg/catrobat/catroid/transfers/RegistrationTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 16
    .param p1, "arg0"    # [Ljava/lang/Void;

    .line 79
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/catrobat/catroid/transfers/RegistrationTask;->contextWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    .line 81
    .local v1, "context":Landroid/content/Context;
    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 82
    return-object v2

    .line 85
    :cond_0
    invoke-static {v1}, Lorg/catrobat/catroid/utils/Utils;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 86
    const v3, 0x7f1202e5

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lorg/catrobat/catroid/transfers/RegistrationTask;->message:Ljava/lang/String;

    .line 87
    const/4 v3, 0x0

    iput-boolean v3, v0, Lorg/catrobat/catroid/transfers/RegistrationTask;->userRegistered:Z

    .line 88
    return-object v2

    .line 91
    :cond_1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    .line 92
    .local v3, "language":Ljava/lang/String;
    invoke-static {}, Lorg/catrobat/catroid/utils/DeviceSettingsProvider;->getUserCountryCode()Ljava/lang/String;

    move-result-object v4

    .line 93
    .local v4, "country":Ljava/lang/String;
    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v13

    .line 94
    .local v13, "sharedPreferences":Landroid/content/SharedPreferences;
    const-string v5, "token"

    const-string v6, "no_token"

    invoke-interface {v13, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 96
    .local v14, "token":Ljava/lang/String;
    new-instance v15, Lorg/catrobat/catroid/web/ServerAuthenticator;

    iget-object v6, v0, Lorg/catrobat/catroid/transfers/RegistrationTask;->username:Ljava/lang/String;

    iget-object v7, v0, Lorg/catrobat/catroid/transfers/RegistrationTask;->password:Ljava/lang/String;

    sget-object v5, Lorg/catrobat/catroid/web/CatrobatWebClient;->INSTANCE:Lorg/catrobat/catroid/web/CatrobatWebClient;

    .line 98
    invoke-virtual {v5}, Lorg/catrobat/catroid/web/CatrobatWebClient;->getClient()Lokhttp3/OkHttpClient;

    move-result-object v9

    new-instance v12, Lorg/catrobat/catroid/transfers/RegistrationTask$1;

    invoke-direct {v12, v0, v1}, Lorg/catrobat/catroid/transfers/RegistrationTask$1;-><init>(Lorg/catrobat/catroid/transfers/RegistrationTask;Landroid/content/Context;)V

    const-string v10, "https://share.catrob.at/pocketcode/"

    move-object v5, v15

    move-object v8, v14

    move-object v11, v13

    invoke-direct/range {v5 .. v12}, Lorg/catrobat/catroid/web/ServerAuthenticator;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lokhttp3/OkHttpClient;Ljava/lang/String;Landroid/content/SharedPreferences;Lorg/catrobat/catroid/web/ServerAuthenticator$TaskListener;)V

    .line 114
    .local v5, "authenticator":Lorg/catrobat/catroid/web/ServerAuthenticator;
    iget-object v6, v0, Lorg/catrobat/catroid/transfers/RegistrationTask;->email:Ljava/lang/String;

    invoke-virtual {v5, v6, v3, v4}, Lorg/catrobat/catroid/web/ServerAuthenticator;->performCatrobatRegister(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    return-object v2
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 43
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lorg/catrobat/catroid/transfers/RegistrationTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 3
    .param p1, "any"    # Ljava/lang/Void;

    .line 120
    iget-object v0, p0, Lorg/catrobat/catroid/transfers/RegistrationTask;->contextWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 122
    .local v0, "context":Landroid/content/Context;
    if-nez v0, :cond_0

    .line 123
    return-void

    .line 126
    :cond_0
    iget-object v1, p0, Lorg/catrobat/catroid/transfers/RegistrationTask;->progressDialog:Landroid/app/ProgressDialog;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 127
    iget-object v1, p0, Lorg/catrobat/catroid/transfers/RegistrationTask;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 130
    :cond_1
    iget-boolean v1, p0, Lorg/catrobat/catroid/transfers/RegistrationTask;->userRegistered:Z

    if-eqz v1, :cond_3

    .line 131
    const v1, 0x7f1205b1

    invoke-static {v0, v1}, Lorg/catrobat/catroid/utils/ToastUtil;->showSuccess(Landroid/content/Context;I)V

    .line 132
    iget-object v1, p0, Lorg/catrobat/catroid/transfers/RegistrationTask;->onRegistrationListener:Lorg/catrobat/catroid/transfers/RegistrationTask$OnRegistrationListener;

    if-eqz v1, :cond_2

    .line 133
    invoke-interface {v1}, Lorg/catrobat/catroid/transfers/RegistrationTask$OnRegistrationListener;->onRegistrationComplete()V

    .line 135
    :cond_2
    return-void

    .line 138
    :cond_3
    iget-object v1, p0, Lorg/catrobat/catroid/transfers/RegistrationTask;->message:Ljava/lang/String;

    if-nez v1, :cond_4

    .line 139
    const v1, 0x7f1206fe

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/catrobat/catroid/transfers/RegistrationTask;->message:Ljava/lang/String;

    .line 142
    :cond_4
    iget-object v1, p0, Lorg/catrobat/catroid/transfers/RegistrationTask;->message:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/catrobat/catroid/utils/ToastUtil;->showError(Landroid/content/Context;Ljava/lang/String;)V

    .line 143
    iget-object v1, p0, Lorg/catrobat/catroid/transfers/RegistrationTask;->onRegistrationListener:Lorg/catrobat/catroid/transfers/RegistrationTask$OnRegistrationListener;

    if-eqz v1, :cond_5

    .line 144
    iget-object v2, p0, Lorg/catrobat/catroid/transfers/RegistrationTask;->message:Ljava/lang/String;

    invoke-interface {v1, v2}, Lorg/catrobat/catroid/transfers/RegistrationTask$OnRegistrationListener;->onRegistrationFailed(Ljava/lang/String;)V

    .line 146
    :cond_5
    return-void
.end method

.method protected onPreExecute()V
    .locals 4

    .line 68
    iget-object v0, p0, Lorg/catrobat/catroid/transfers/RegistrationTask;->contextWeakReference:Ljava/lang/ref/WeakReference;

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

    iput-object v3, p0, Lorg/catrobat/catroid/transfers/RegistrationTask;->progressDialog:Landroid/app/ProgressDialog;

    .line 75
    return-void
.end method

.method public setOnRegistrationListener(Lorg/catrobat/catroid/transfers/RegistrationTask$OnRegistrationListener;)V
    .locals 0
    .param p1, "listener"    # Lorg/catrobat/catroid/transfers/RegistrationTask$OnRegistrationListener;

    .line 63
    iput-object p1, p0, Lorg/catrobat/catroid/transfers/RegistrationTask;->onRegistrationListener:Lorg/catrobat/catroid/transfers/RegistrationTask$OnRegistrationListener;

    .line 64
    return-void
.end method
