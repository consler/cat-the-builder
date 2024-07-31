.class public Lorg/catrobat/catroid/ui/recyclerview/dialog/login/OAuthUsernameDialogFragment;
.super Landroidx/fragment/app/DialogFragment;
.source "OAuthUsernameDialogFragment.java"

# interfaces
.implements Lorg/catrobat/catroid/transfers/CheckUserNameAvailableTask$OnCheckUserNameAvailableCompleteListener;
.implements Lorg/catrobat/catroid/transfers/GoogleExchangeCodeTask$OnGoogleExchangeCodeCompleteListener;
.implements Lorg/catrobat/catroid/transfers/GoogleLogInTask$OnGoogleServerLogInCompleteListener;


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field private inputLayout:Lcom/google/android/material/textfield/TextInputLayout;

.field private openAuthProvider:Ljava/lang/String;

.field private signInCompleteListener:Lorg/catrobat/catroid/ui/recyclerview/dialog/login/SignInCompleteListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 50
    const-class v0, Lorg/catrobat/catroid/ui/recyclerview/dialog/login/OAuthUsernameDialogFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/catrobat/catroid/ui/recyclerview/dialog/login/OAuthUsernameDialogFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    return-void
.end method

.method private onPositiveButtonClick()V
    .locals 3

    .line 90
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/dialog/login/OAuthUsernameDialogFragment;->inputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 92
    .local v0, "username":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 93
    iget-object v1, p0, Lorg/catrobat/catroid/ui/recyclerview/dialog/login/OAuthUsernameDialogFragment;->inputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    const v2, 0x7f120742

    invoke-virtual {p0, v2}, Lorg/catrobat/catroid/ui/recyclerview/dialog/login/OAuthUsernameDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 95
    :cond_0
    new-instance v1, Lorg/catrobat/catroid/transfers/CheckUserNameAvailableTask;

    invoke-direct {v1, v0}, Lorg/catrobat/catroid/transfers/CheckUserNameAvailableTask;-><init>(Ljava/lang/String;)V

    .line 96
    .local v1, "checkUserNameAvailableTask":Lorg/catrobat/catroid/transfers/CheckUserNameAvailableTask;
    invoke-virtual {v1, p0}, Lorg/catrobat/catroid/transfers/CheckUserNameAvailableTask;->setOnCheckUserNameAvailableCompleteListener(Lorg/catrobat/catroid/transfers/CheckUserNameAvailableTask$OnCheckUserNameAvailableCompleteListener;)V

    .line 97
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lorg/catrobat/catroid/transfers/CheckUserNameAvailableTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 99
    .end local v1    # "checkUserNameAvailableTask":Lorg/catrobat/catroid/transfers/CheckUserNameAvailableTask;
    :goto_0
    return-void
.end method


# virtual methods
.method public synthetic lambda$null$0$OAuthUsernameDialogFragment(Landroid/view/View;)V
    .locals 0
    .param p1, "view1"    # Landroid/view/View;

    .line 80
    invoke-direct {p0}, Lorg/catrobat/catroid/ui/recyclerview/dialog/login/OAuthUsernameDialogFragment;->onPositiveButtonClick()V

    return-void
.end method

.method public synthetic lambda$onCreateDialog$1$OAuthUsernameDialogFragment(Landroidx/appcompat/app/AlertDialog;Landroid/content/DialogInterface;)V
    .locals 4
    .param p1, "alertDialog"    # Landroidx/appcompat/app/AlertDialog;
    .param p2, "dialog"    # Landroid/content/DialogInterface;

    .line 79
    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    .line 80
    .local v0, "buttonPositive":Landroid/widget/Button;
    new-instance v1, Lorg/catrobat/catroid/ui/recyclerview/dialog/login/-$$Lambda$OAuthUsernameDialogFragment$2VFcfb_vlYk5dKr9QxOGZJdRluY;

    invoke-direct {v1, p0}, Lorg/catrobat/catroid/ui/recyclerview/dialog/login/-$$Lambda$OAuthUsernameDialogFragment$2VFcfb_vlYk5dKr9QxOGZJdRluY;-><init>(Lorg/catrobat/catroid/ui/recyclerview/dialog/login/OAuthUsernameDialogFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    iget-object v1, p0, Lorg/catrobat/catroid/ui/recyclerview/dialog/login/OAuthUsernameDialogFragment;->inputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 82
    new-instance v1, Lorg/catrobat/catroid/ui/recyclerview/dialog/textwatcher/DialogInputWatcher;

    iget-object v2, p0, Lorg/catrobat/catroid/ui/recyclerview/dialog/login/OAuthUsernameDialogFragment;->inputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3}, Lorg/catrobat/catroid/ui/recyclerview/dialog/textwatcher/DialogInputWatcher;-><init>(Lcom/google/android/material/textfield/TextInputLayout;Landroid/widget/Button;Z)V

    .line 83
    .local v1, "inputWatcher":Lorg/catrobat/catroid/ui/recyclerview/dialog/textwatcher/DialogInputWatcher;
    iget-object v2, p0, Lorg/catrobat/catroid/ui/recyclerview/dialog/login/OAuthUsernameDialogFragment;->inputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v2}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 84
    return-void
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .line 103
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/dialog/login/OAuthUsernameDialogFragment;->signInCompleteListener:Lorg/catrobat/catroid/ui/recyclerview/dialog/login/SignInCompleteListener;

    invoke-interface {v0}, Lorg/catrobat/catroid/ui/recyclerview/dialog/login/SignInCompleteListener;->onLoginCancel()V

    .line 104
    return-void
.end method

.method public onCheckUserNameAvailableComplete(Ljava/lang/Boolean;Ljava/lang/String;)V
    .locals 11
    .param p1, "userNameAvailable"    # Ljava/lang/Boolean;
    .param p2, "username"    # Ljava/lang/String;

    .line 108
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 109
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/recyclerview/dialog/login/OAuthUsernameDialogFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f1202ce

    .line 110
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f1205fe

    .line 111
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f1205ff

    const/4 v2, 0x0

    .line 112
    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 113
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    goto :goto_0

    .line 115
    :cond_0
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/recyclerview/dialog/login/OAuthUsernameDialogFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 116
    .local v0, "sharedPreferences":Landroid/content/SharedPreferences;
    iget-object v1, p0, Lorg/catrobat/catroid/ui/recyclerview/dialog/login/OAuthUsernameDialogFragment;->openAuthProvider:Ljava/lang/String;

    const-string v2, "GPLUS"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 117
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 118
    const-string v2, "GOOGLE_USERNAME"

    invoke-interface {v1, v2, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 119
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 121
    new-instance v1, Lorg/catrobat/catroid/transfers/GoogleExchangeCodeTask;

    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/recyclerview/dialog/login/OAuthUsernameDialogFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    .line 122
    const-string v3, "GOOGLE_EXCHANGE_CODE"

    const-string v5, "NO_GOOGLE_EXCHANGE_CODE"

    invoke-interface {v0, v3, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 123
    const-string v3, "GOOGLE_EMAIL"

    const-string v6, "NO_GOOGLE_EMAIL"

    invoke-interface {v0, v3, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 124
    const-string v3, "NO_GOOGLE_USERNAME"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 125
    const-string v2, "GOOGLE_ID"

    const-string v3, "NO_GOOGLE_ID"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 126
    const-string v2, "GOOGLE_LOCALE"

    const-string v3, "NO_GOOGLE_LOCALE"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 127
    const-string v2, "GOOGLE_ID_TOKEN"

    const-string v3, "NO_GOOGLE_ID_TOKEN"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    move-object v3, v1

    invoke-direct/range {v3 .. v10}, Lorg/catrobat/catroid/transfers/GoogleExchangeCodeTask;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    .local v1, "googleExchangeCodeTask":Lorg/catrobat/catroid/transfers/GoogleExchangeCodeTask;
    invoke-virtual {v1, p0}, Lorg/catrobat/catroid/transfers/GoogleExchangeCodeTask;->setOnGoogleExchangeCodeCompleteListener(Lorg/catrobat/catroid/transfers/GoogleExchangeCodeTask$OnGoogleExchangeCodeCompleteListener;)V

    .line 129
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lorg/catrobat/catroid/transfers/GoogleExchangeCodeTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 132
    .end local v0    # "sharedPreferences":Landroid/content/SharedPreferences;
    .end local v1    # "googleExchangeCodeTask":Lorg/catrobat/catroid/transfers/GoogleExchangeCodeTask;
    :cond_1
    :goto_0
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 63
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/recyclerview/dialog/login/OAuthUsernameDialogFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0d014f

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 65
    .local v0, "view":Landroid/view/View;
    const v1, 0x7f0a035e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/textfield/TextInputLayout;

    iput-object v1, p0, Lorg/catrobat/catroid/ui/recyclerview/dialog/login/OAuthUsernameDialogFragment;->inputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    .line 67
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/recyclerview/dialog/login/OAuthUsernameDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    .line 68
    .local v1, "bundle":Landroid/os/Bundle;
    if-eqz v1, :cond_0

    .line 69
    const-string v3, "PROVIDER"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lorg/catrobat/catroid/ui/recyclerview/dialog/login/OAuthUsernameDialogFragment;->openAuthProvider:Ljava/lang/String;

    .line 72
    :cond_0
    new-instance v3, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/recyclerview/dialog/login/OAuthUsernameDialogFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f12073f

    .line 73
    invoke-virtual {v3, v4}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v3

    .line 74
    invoke-virtual {v3, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f1205ff

    .line 75
    invoke-virtual {v3, v4, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v2

    .line 76
    invoke-virtual {v2}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v2

    .line 78
    .local v2, "alertDialog":Landroidx/appcompat/app/AlertDialog;
    new-instance v3, Lorg/catrobat/catroid/ui/recyclerview/dialog/login/-$$Lambda$OAuthUsernameDialogFragment$_uiwHJXq-lLmE43NOfX_NIKeE_M;

    invoke-direct {v3, p0, v2}, Lorg/catrobat/catroid/ui/recyclerview/dialog/login/-$$Lambda$OAuthUsernameDialogFragment$_uiwHJXq-lLmE43NOfX_NIKeE_M;-><init>(Lorg/catrobat/catroid/ui/recyclerview/dialog/login/OAuthUsernameDialogFragment;Landroidx/appcompat/app/AlertDialog;)V

    invoke-virtual {v2, v3}, Landroidx/appcompat/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 86
    return-object v2
.end method

.method public onGoogleExchangeCodeComplete()V
    .locals 8

    .line 136
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/recyclerview/dialog/login/OAuthUsernameDialogFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 137
    .local v0, "sharedPreferences":Landroid/content/SharedPreferences;
    new-instance v7, Lorg/catrobat/catroid/transfers/GoogleLogInTask;

    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/recyclerview/dialog/login/OAuthUsernameDialogFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    .line 138
    const-string v1, "GOOGLE_EMAIL"

    const-string v3, "NO_GOOGLE_EMAIL"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 139
    const-string v1, "GOOGLE_USERNAME"

    const-string v4, "NO_GOOGLE_USERNAME"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 140
    const-string v1, "GOOGLE_ID"

    const-string v5, "NO_GOOGLE_ID"

    invoke-interface {v0, v1, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 141
    const-string v1, "GOOGLE_LOCALE"

    const-string v6, "NO_GOOGLE_LOCALE"

    invoke-interface {v0, v1, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lorg/catrobat/catroid/transfers/GoogleLogInTask;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    .local v1, "googleLogInTask":Lorg/catrobat/catroid/transfers/GoogleLogInTask;
    invoke-virtual {v1, p0}, Lorg/catrobat/catroid/transfers/GoogleLogInTask;->setOnGoogleServerLogInCompleteListener(Lorg/catrobat/catroid/transfers/GoogleLogInTask$OnGoogleServerLogInCompleteListener;)V

    .line 144
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lorg/catrobat/catroid/transfers/GoogleLogInTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 145
    return-void
.end method

.method public onGoogleServerLogInComplete()V
    .locals 2

    .line 149
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/dialog/login/OAuthUsernameDialogFragment;->signInCompleteListener:Lorg/catrobat/catroid/ui/recyclerview/dialog/login/SignInCompleteListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/catrobat/catroid/ui/recyclerview/dialog/login/SignInCompleteListener;->onLoginSuccessful(Landroid/os/Bundle;)V

    .line 150
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/recyclerview/dialog/login/OAuthUsernameDialogFragment;->dismiss()V

    .line 151
    return-void
.end method

.method public setSignInCompleteListener(Lorg/catrobat/catroid/ui/recyclerview/dialog/login/SignInCompleteListener;)V
    .locals 0
    .param p1, "signInCompleteListener"    # Lorg/catrobat/catroid/ui/recyclerview/dialog/login/SignInCompleteListener;

    .line 58
    iput-object p1, p0, Lorg/catrobat/catroid/ui/recyclerview/dialog/login/OAuthUsernameDialogFragment;->signInCompleteListener:Lorg/catrobat/catroid/ui/recyclerview/dialog/login/SignInCompleteListener;

    .line 59
    return-void
.end method
