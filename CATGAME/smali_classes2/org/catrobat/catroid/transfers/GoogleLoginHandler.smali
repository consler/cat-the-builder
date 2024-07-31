.class public Lorg/catrobat/catroid/transfers/GoogleLoginHandler;
.super Ljava/lang/Object;
.source "GoogleLoginHandler.java"

# interfaces
.implements Lorg/catrobat/catroid/transfers/CheckOAuthTokenTask$OnCheckOAuthTokenCompleteListener;
.implements Lorg/catrobat/catroid/transfers/GoogleLogInTask$OnGoogleServerLogInCompleteListener;
.implements Lorg/catrobat/catroid/transfers/CheckEmailAvailableTask$OnCheckEmailAvailableCompleteListener;
.implements Lorg/catrobat/catroid/transfers/GoogleExchangeCodeTask$OnGoogleExchangeCodeCompleteListener;


# static fields
.field public static final REQUEST_CODE_GOOGLE_SIGNIN:I = 0x64


# instance fields
.field private activity:Landroidx/appcompat/app/AppCompatActivity;

.field private googleSignInClient:Lcom/google/android/gms/auth/api/signin/GoogleSignInClient;


# direct methods
.method public constructor <init>(Landroidx/appcompat/app/AppCompatActivity;)V
    .locals 2
    .param p1, "activity"    # Landroidx/appcompat/app/AppCompatActivity;

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Lorg/catrobat/catroid/transfers/GoogleLoginHandler;->activity:Landroidx/appcompat/app/AppCompatActivity;

    .line 63
    new-instance v0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;

    sget-object v1, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->DEFAULT_SIGN_IN:Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    invoke-direct {v0, v1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;-><init>(Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;)V

    .line 64
    invoke-virtual {v0}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;->requestEmail()Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;

    move-result-object v0

    .line 65
    const-string v1, "427226922034-r016ige5kb30q9vflqbt1h0i3arng8u1.apps.googleusercontent.com"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;->requestIdToken(Ljava/lang/String;)Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;

    move-result-object v0

    .line 66
    invoke-virtual {v0}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;->build()Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    move-result-object v0

    .line 67
    .local v0, "googleSignInOptions":Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;
    iget-object v1, p0, Lorg/catrobat/catroid/transfers/GoogleLoginHandler;->activity:Landroidx/appcompat/app/AppCompatActivity;

    invoke-static {v1, v0}, Lcom/google/android/gms/auth/api/signin/GoogleSignIn;->getClient(Landroid/app/Activity;Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;)Lcom/google/android/gms/auth/api/signin/GoogleSignInClient;

    move-result-object v1

    iput-object v1, p0, Lorg/catrobat/catroid/transfers/GoogleLoginHandler;->googleSignInClient:Lcom/google/android/gms/auth/api/signin/GoogleSignInClient;

    .line 68
    return-void
.end method

.method private showOauthUserNameDialog(Ljava/lang/String;)V
    .locals 4
    .param p1, "provider"    # Ljava/lang/String;

    .line 158
    new-instance v0, Lorg/catrobat/catroid/ui/recyclerview/dialog/login/OAuthUsernameDialogFragment;

    invoke-direct {v0}, Lorg/catrobat/catroid/ui/recyclerview/dialog/login/OAuthUsernameDialogFragment;-><init>()V

    .line 159
    .local v0, "dialog":Lorg/catrobat/catroid/ui/recyclerview/dialog/login/OAuthUsernameDialogFragment;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 160
    .local v1, "bundle":Landroid/os/Bundle;
    const-string v2, "PROVIDER"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/ui/recyclerview/dialog/login/OAuthUsernameDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 162
    iget-object v2, p0, Lorg/catrobat/catroid/transfers/GoogleLoginHandler;->activity:Landroidx/appcompat/app/AppCompatActivity;

    check-cast v2, Lorg/catrobat/catroid/ui/recyclerview/dialog/login/SignInCompleteListener;

    invoke-virtual {v0, v2}, Lorg/catrobat/catroid/ui/recyclerview/dialog/login/OAuthUsernameDialogFragment;->setSignInCompleteListener(Lorg/catrobat/catroid/ui/recyclerview/dialog/login/SignInCompleteListener;)V

    .line 163
    iget-object v2, p0, Lorg/catrobat/catroid/transfers/GoogleLoginHandler;->activity:Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {v2}, Landroidx/appcompat/app/AppCompatActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v2

    sget-object v3, Lorg/catrobat/catroid/ui/recyclerview/dialog/login/OAuthUsernameDialogFragment;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/catrobat/catroid/ui/recyclerview/dialog/login/OAuthUsernameDialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 164
    return-void
.end method


# virtual methods
.method public exchangeGoogleAuthorizationCode()V
    .locals 10

    .line 145
    iget-object v0, p0, Lorg/catrobat/catroid/transfers/GoogleLoginHandler;->activity:Landroidx/appcompat/app/AppCompatActivity;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 146
    .local v0, "sharedPreferences":Landroid/content/SharedPreferences;
    new-instance v9, Lorg/catrobat/catroid/transfers/GoogleExchangeCodeTask;

    iget-object v2, p0, Lorg/catrobat/catroid/transfers/GoogleLoginHandler;->activity:Landroidx/appcompat/app/AppCompatActivity;

    .line 147
    const-string v1, "GOOGLE_EXCHANGE_CODE"

    const-string v3, "NO_GOOGLE_EXCHANGE_CODE"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 148
    const-string v1, "GOOGLE_EMAIL"

    const-string v4, "NO_GOOGLE_EMAIL"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 149
    const-string v1, "GOOGLE_USERNAME"

    const-string v5, "NO_GOOGLE_USERNAME"

    invoke-interface {v0, v1, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 150
    const-string v1, "GOOGLE_ID"

    const-string v6, "NO_GOOGLE_ID"

    invoke-interface {v0, v1, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 151
    const-string v1, "GOOGLE_LOCALE"

    const-string v7, "NO_GOOGLE_LOCALE"

    invoke-interface {v0, v1, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 152
    const-string v1, "GOOGLE_ID_TOKEN"

    const-string v8, "NO_GOOGLE_ID_TOKEN"

    invoke-interface {v0, v1, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object v1, v9

    invoke-direct/range {v1 .. v8}, Lorg/catrobat/catroid/transfers/GoogleExchangeCodeTask;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    .local v1, "googleExchangeCodeTask":Lorg/catrobat/catroid/transfers/GoogleExchangeCodeTask;
    invoke-virtual {v1, p0}, Lorg/catrobat/catroid/transfers/GoogleExchangeCodeTask;->setOnGoogleExchangeCodeCompleteListener(Lorg/catrobat/catroid/transfers/GoogleExchangeCodeTask$OnGoogleExchangeCodeCompleteListener;)V

    .line 154
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lorg/catrobat/catroid/transfers/GoogleExchangeCodeTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 155
    return-void
.end method

.method public getGoogleSignInClient()Lcom/google/android/gms/auth/api/signin/GoogleSignInClient;
    .locals 1

    .line 71
    iget-object v0, p0, Lorg/catrobat/catroid/transfers/GoogleLoginHandler;->googleSignInClient:Lcom/google/android/gms/auth/api/signin/GoogleSignInClient;

    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 8
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .line 76
    const/16 v0, 0x64

    if-ne p1, v0, :cond_1

    .line 77
    invoke-static {p3}, Lcom/google/android/gms/auth/api/signin/GoogleSignIn;->getSignedInAccountFromIntent(Landroid/content/Intent;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    .line 78
    .local v0, "task":Lcom/google/android/gms/tasks/Task;, "Lcom/google/android/gms/tasks/Task<Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;>;"
    invoke-virtual {v0}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 79
    invoke-virtual {v0}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    invoke-virtual {p0, v1}, Lorg/catrobat/catroid/transfers/GoogleLoginHandler;->onGoogleLogInComplete(Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)V

    goto :goto_0

    .line 81
    :cond_0
    iget-object v1, p0, Lorg/catrobat/catroid/transfers/GoogleLoginHandler;->activity:Landroidx/appcompat/app/AppCompatActivity;

    const v2, 0x7f1202e1

    .line 82
    invoke-virtual {v1, v2}, Landroidx/appcompat/app/AppCompatActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v0}, Lcom/google/android/gms/tasks/Task;->getException()Ljava/lang/Exception;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v5

    const-string v6, ":"

    const-string v7, ""

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 81
    invoke-static {v1, v2}, Lorg/catrobat/catroid/utils/ToastUtil;->showError(Landroid/content/Context;Ljava/lang/String;)V

    .line 85
    .end local v0    # "task":Lcom/google/android/gms/tasks/Task;, "Lcom/google/android/gms/tasks/Task<Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;>;"
    :cond_1
    :goto_0
    return-void
.end method

.method public onCheckEmailAvailableComplete(Ljava/lang/Boolean;Ljava/lang/String;)V
    .locals 1
    .param p1, "emailAvailable"    # Ljava/lang/Boolean;
    .param p2, "provider"    # Ljava/lang/String;

    .line 137
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 138
    invoke-virtual {p0}, Lorg/catrobat/catroid/transfers/GoogleLoginHandler;->exchangeGoogleAuthorizationCode()V

    goto :goto_0

    .line 140
    :cond_0
    const-string v0, "GPLUS"

    invoke-direct {p0, v0}, Lorg/catrobat/catroid/transfers/GoogleLoginHandler;->showOauthUserNameDialog(Ljava/lang/String;)V

    .line 142
    :goto_0
    return-void
.end method

.method public onCheckOAuthTokenComplete(Ljava/lang/Boolean;Ljava/lang/String;)V
    .locals 11
    .param p1, "tokenAvailable"    # Ljava/lang/Boolean;
    .param p2, "provider"    # Ljava/lang/String;

    .line 111
    iget-object v0, p0, Lorg/catrobat/catroid/transfers/GoogleLoginHandler;->activity:Landroidx/appcompat/app/AppCompatActivity;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 112
    .local v0, "sharedPreferences":Landroid/content/SharedPreferences;
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const/4 v2, 0x0

    const-string v3, "NO_GOOGLE_EMAIL"

    const-string v4, "GOOGLE_EMAIL"

    if-eqz v1, :cond_0

    .line 113
    new-instance v1, Lorg/catrobat/catroid/transfers/GoogleLogInTask;

    iget-object v6, p0, Lorg/catrobat/catroid/transfers/GoogleLoginHandler;->activity:Landroidx/appcompat/app/AppCompatActivity;

    .line 114
    invoke-interface {v0, v4, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 115
    const-string v3, "GOOGLE_USERNAME"

    const-string v4, "NO_GOOGLE_USERNAME"

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 116
    const-string v3, "GOOGLE_ID"

    const-string v4, "NO_GOOGLE_ID"

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 117
    const-string v3, "GOOGLE_LOCALE"

    const-string v4, "NO_GOOGLE_LOCALE"

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    move-object v5, v1

    invoke-direct/range {v5 .. v10}, Lorg/catrobat/catroid/transfers/GoogleLogInTask;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    .local v1, "googleLogInTask":Lorg/catrobat/catroid/transfers/GoogleLogInTask;
    invoke-virtual {v1, p0}, Lorg/catrobat/catroid/transfers/GoogleLogInTask;->setOnGoogleServerLogInCompleteListener(Lorg/catrobat/catroid/transfers/GoogleLogInTask$OnGoogleServerLogInCompleteListener;)V

    .line 119
    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lorg/catrobat/catroid/transfers/GoogleLogInTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 120
    .end local v1    # "googleLogInTask":Lorg/catrobat/catroid/transfers/GoogleLogInTask;
    goto :goto_0

    .line 121
    :cond_0
    invoke-interface {v0, v4, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 122
    .local v1, "email":Ljava/lang/String;
    new-instance v3, Lorg/catrobat/catroid/transfers/CheckEmailAvailableTask;

    const-string v4, "GPLUS"

    invoke-direct {v3, v1, v4}, Lorg/catrobat/catroid/transfers/CheckEmailAvailableTask;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    .local v3, "checkEmailAvailableTask":Lorg/catrobat/catroid/transfers/CheckEmailAvailableTask;
    invoke-virtual {v3, p0}, Lorg/catrobat/catroid/transfers/CheckEmailAvailableTask;->setOnCheckEmailAvailableCompleteListener(Lorg/catrobat/catroid/transfers/CheckEmailAvailableTask$OnCheckEmailAvailableCompleteListener;)V

    .line 124
    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v3, v2}, Lorg/catrobat/catroid/transfers/CheckEmailAvailableTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 126
    .end local v1    # "email":Ljava/lang/String;
    .end local v3    # "checkEmailAvailableTask":Lorg/catrobat/catroid/transfers/CheckEmailAvailableTask;
    :goto_0
    return-void
.end method

.method public onGoogleExchangeCodeComplete()V
    .locals 8

    .line 168
    iget-object v0, p0, Lorg/catrobat/catroid/transfers/GoogleLoginHandler;->activity:Landroidx/appcompat/app/AppCompatActivity;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 169
    .local v0, "sharedPreferences":Landroid/content/SharedPreferences;
    new-instance v7, Lorg/catrobat/catroid/transfers/GoogleLogInTask;

    iget-object v2, p0, Lorg/catrobat/catroid/transfers/GoogleLoginHandler;->activity:Landroidx/appcompat/app/AppCompatActivity;

    .line 170
    const-string v1, "GOOGLE_EMAIL"

    const-string v3, "NO_GOOGLE_EMAIL"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 171
    const-string v1, "GOOGLE_USERNAME"

    const-string v4, "NO_GOOGLE_USERNAME"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 172
    const-string v1, "GOOGLE_ID"

    const-string v5, "NO_GOOGLE_ID"

    invoke-interface {v0, v1, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 173
    const-string v1, "GOOGLE_LOCALE"

    const-string v6, "NO_GOOGLE_LOCALE"

    invoke-interface {v0, v1, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lorg/catrobat/catroid/transfers/GoogleLogInTask;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    .local v1, "googleLogInTask":Lorg/catrobat/catroid/transfers/GoogleLogInTask;
    invoke-virtual {v1, p0}, Lorg/catrobat/catroid/transfers/GoogleLogInTask;->setOnGoogleServerLogInCompleteListener(Lorg/catrobat/catroid/transfers/GoogleLogInTask$OnGoogleServerLogInCompleteListener;)V

    .line 175
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lorg/catrobat/catroid/transfers/GoogleLogInTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 176
    return-void
.end method

.method public onGoogleLogInComplete(Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)V
    .locals 9
    .param p1, "account"    # Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    .line 88
    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->getId()Ljava/lang/String;

    move-result-object v0

    .line 89
    .local v0, "id":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    .line 90
    .local v1, "personName":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->getEmail()Ljava/lang/String;

    move-result-object v2

    .line 91
    .local v2, "email":Ljava/lang/String;
    invoke-static {}, Lorg/catrobat/catroid/utils/DeviceSettingsProvider;->getUserCountryCode()Ljava/lang/String;

    move-result-object v3

    .line 92
    .local v3, "locale":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->getIdToken()Ljava/lang/String;

    move-result-object v4

    .line 93
    .local v4, "idToken":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->getServerAuthCode()Ljava/lang/String;

    move-result-object v5

    .line 95
    .local v5, "code":Ljava/lang/String;
    iget-object v6, p0, Lorg/catrobat/catroid/transfers/GoogleLoginHandler;->activity:Landroidx/appcompat/app/AppCompatActivity;

    invoke-static {v6}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    .line 96
    const-string v7, "GOOGLE_ID"

    invoke-interface {v6, v7, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    .line 97
    const-string v7, "GOOGLE_USERNAME"

    invoke-interface {v6, v7, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    .line 98
    const-string v7, "GOOGLE_EMAIL"

    invoke-interface {v6, v7, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    .line 99
    const-string v7, "GOOGLE_LOCALE"

    invoke-interface {v6, v7, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    .line 100
    const-string v7, "GOOGLE_ID_TOKEN"

    invoke-interface {v6, v7, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    .line 101
    const-string v7, "GOOGLE_EXCHANGE_CODE"

    invoke-interface {v6, v7, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    .line 102
    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 104
    new-instance v6, Lorg/catrobat/catroid/transfers/CheckOAuthTokenTask;

    iget-object v7, p0, Lorg/catrobat/catroid/transfers/GoogleLoginHandler;->activity:Landroidx/appcompat/app/AppCompatActivity;

    const-string v8, "GPLUS"

    invoke-direct {v6, v7, v0, v8}, Lorg/catrobat/catroid/transfers/CheckOAuthTokenTask;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    .local v6, "checkOAuthTokenTask":Lorg/catrobat/catroid/transfers/CheckOAuthTokenTask;
    invoke-virtual {v6, p0}, Lorg/catrobat/catroid/transfers/CheckOAuthTokenTask;->setOnCheckOAuthTokenCompleteListener(Lorg/catrobat/catroid/transfers/CheckOAuthTokenTask$OnCheckOAuthTokenCompleteListener;)V

    .line 106
    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/String;

    invoke-virtual {v6, v7}, Lorg/catrobat/catroid/transfers/CheckOAuthTokenTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 107
    return-void
.end method

.method public onGoogleServerLogInComplete()V
    .locals 3

    .line 130
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 131
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "PROVIDER"

    const-string v2, "GPLUS"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    iget-object v1, p0, Lorg/catrobat/catroid/transfers/GoogleLoginHandler;->activity:Landroidx/appcompat/app/AppCompatActivity;

    check-cast v1, Lorg/catrobat/catroid/ui/recyclerview/dialog/login/SignInCompleteListener;

    invoke-interface {v1, v0}, Lorg/catrobat/catroid/ui/recyclerview/dialog/login/SignInCompleteListener;->onLoginSuccessful(Landroid/os/Bundle;)V

    .line 133
    return-void
.end method
