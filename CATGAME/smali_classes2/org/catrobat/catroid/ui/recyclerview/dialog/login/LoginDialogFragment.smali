.class public Lorg/catrobat/catroid/ui/recyclerview/dialog/login/LoginDialogFragment;
.super Landroidx/fragment/app/DialogFragment;
.source "LoginDialogFragment.java"

# interfaces
.implements Lorg/catrobat/catroid/transfers/LoginTask$OnLoginListener;


# static fields
.field public static final PASSWORD_FORGOTTEN_PATH:Ljava/lang/String; = "reset-password"

.field public static final TAG:Ljava/lang/String;


# instance fields
.field private alertDialog:Landroidx/appcompat/app/AlertDialog;

.field private passwordEditText:Landroid/widget/EditText;

.field private passwordInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

.field private signInCompleteListener:Lorg/catrobat/catroid/ui/recyclerview/dialog/login/SignInCompleteListener;

.field private usernameEditText:Landroid/widget/EditText;

.field private usernameInputLayout:Lcom/google/android/material/textfield/TextInputLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 52
    const-class v0, Lorg/catrobat/catroid/ui/recyclerview/dialog/login/LoginDialogFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/catrobat/catroid/ui/recyclerview/dialog/login/LoginDialogFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 50
    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lorg/catrobat/catroid/ui/recyclerview/dialog/login/LoginDialogFragment;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lorg/catrobat/catroid/ui/recyclerview/dialog/login/LoginDialogFragment;

    .line 50
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/dialog/login/LoginDialogFragment;->passwordEditText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$100(Lorg/catrobat/catroid/ui/recyclerview/dialog/login/LoginDialogFragment;)Lcom/google/android/material/textfield/TextInputLayout;
    .locals 1
    .param p0, "x0"    # Lorg/catrobat/catroid/ui/recyclerview/dialog/login/LoginDialogFragment;

    .line 50
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/dialog/login/LoginDialogFragment;->usernameInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    return-object v0
.end method

.method static synthetic access$200(Lorg/catrobat/catroid/ui/recyclerview/dialog/login/LoginDialogFragment;)V
    .locals 0
    .param p0, "x0"    # Lorg/catrobat/catroid/ui/recyclerview/dialog/login/LoginDialogFragment;

    .line 50
    invoke-direct {p0}, Lorg/catrobat/catroid/ui/recyclerview/dialog/login/LoginDialogFragment;->handleLoginBtnStatus()V

    return-void
.end method

.method static synthetic access$300(Lorg/catrobat/catroid/ui/recyclerview/dialog/login/LoginDialogFragment;)Lcom/google/android/material/textfield/TextInputLayout;
    .locals 1
    .param p0, "x0"    # Lorg/catrobat/catroid/ui/recyclerview/dialog/login/LoginDialogFragment;

    .line 50
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/dialog/login/LoginDialogFragment;->passwordInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    return-object v0
.end method

.method private handleLoginBtnStatus()V
    .locals 2

    .line 189
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/dialog/login/LoginDialogFragment;->alertDialog:Landroidx/appcompat/app/AlertDialog;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 190
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/dialog/login/LoginDialogFragment;->usernameInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->isErrorEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/dialog/login/LoginDialogFragment;->passwordInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->isErrorEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 191
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/dialog/login/LoginDialogFragment;->alertDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 193
    :cond_0
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/dialog/login/LoginDialogFragment;->alertDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 196
    :cond_1
    :goto_0
    return-void
.end method

.method private onLoginButtonClick()V
    .locals 4

    .line 172
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/dialog/login/LoginDialogFragment;->usernameEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\s"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 173
    .local v0, "username":Ljava/lang/String;
    iget-object v1, p0, Lorg/catrobat/catroid/ui/recyclerview/dialog/login/LoginDialogFragment;->passwordEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 174
    .local v1, "password":Ljava/lang/String;
    new-instance v2, Lorg/catrobat/catroid/transfers/LoginTask;

    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/recyclerview/dialog/login/LoginDialogFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v2, v3, v0, v1}, Lorg/catrobat/catroid/transfers/LoginTask;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    .local v2, "loginTask":Lorg/catrobat/catroid/transfers/LoginTask;
    invoke-virtual {v2, p0}, Lorg/catrobat/catroid/transfers/LoginTask;->setOnLoginListener(Lorg/catrobat/catroid/transfers/LoginTask$OnLoginListener;)V

    .line 176
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    invoke-virtual {v2, v3}, Lorg/catrobat/catroid/transfers/LoginTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 177
    return-void
.end method

.method private onPasswordForgottenButtonClick()V
    .locals 5

    .line 180
    sget-boolean v0, Lorg/catrobat/catroid/web/ServerCalls;->useTestUrl:Z

    if-eqz v0, :cond_0

    const-string v0, "https://catroid-test.catrob.at/pocketcode/"

    goto :goto_0

    :cond_0
    const-string v0, "https://share.catrob.at/pocketcode/"

    .line 181
    .local v0, "baseUrl":Ljava/lang/String;
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "reset-password"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 183
    .local v1, "url":Ljava/lang/String;
    new-instance v2, Landroid/content/Intent;

    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/recyclerview/dialog/login/LoginDialogFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    const-class v4, Lorg/catrobat/catroid/ui/WebViewActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 184
    .local v2, "intent":Landroid/content/Intent;
    const-string v3, "url"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 185
    invoke-virtual {p0, v2}, Lorg/catrobat/catroid/ui/recyclerview/dialog/login/LoginDialogFragment;->startActivity(Landroid/content/Intent;)V

    .line 186
    return-void
.end method


# virtual methods
.method public synthetic lambda$null$0$LoginDialogFragment(Landroid/view/View;)V
    .locals 0
    .param p1, "buttonView"    # Landroid/view/View;

    .line 143
    invoke-direct {p0}, Lorg/catrobat/catroid/ui/recyclerview/dialog/login/LoginDialogFragment;->onLoginButtonClick()V

    return-void
.end method

.method public synthetic lambda$null$1$LoginDialogFragment(Landroid/view/View;)V
    .locals 0
    .param p1, "buttonView"    # Landroid/view/View;

    .line 144
    invoke-direct {p0}, Lorg/catrobat/catroid/ui/recyclerview/dialog/login/LoginDialogFragment;->onPasswordForgottenButtonClick()V

    return-void
.end method

.method public synthetic lambda$onCreateDialog$2$LoginDialogFragment(Landroid/content/DialogInterface;)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .line 142
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/dialog/login/LoginDialogFragment;->alertDialog:Landroidx/appcompat/app/AlertDialog;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 143
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/dialog/login/LoginDialogFragment;->alertDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    new-instance v1, Lorg/catrobat/catroid/ui/recyclerview/dialog/login/-$$Lambda$LoginDialogFragment$nsvEG-7cv2XuORSsKO3Ss2M0Eqw;

    invoke-direct {v1, p0}, Lorg/catrobat/catroid/ui/recyclerview/dialog/login/-$$Lambda$LoginDialogFragment$nsvEG-7cv2XuORSsKO3Ss2M0Eqw;-><init>(Lorg/catrobat/catroid/ui/recyclerview/dialog/login/LoginDialogFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 144
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/dialog/login/LoginDialogFragment;->alertDialog:Landroidx/appcompat/app/AlertDialog;

    const/4 v1, -0x3

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    new-instance v1, Lorg/catrobat/catroid/ui/recyclerview/dialog/login/-$$Lambda$LoginDialogFragment$VYCBrRYFeQJR3lEM8HIUnTKn91k;

    invoke-direct {v1, p0}, Lorg/catrobat/catroid/ui/recyclerview/dialog/login/-$$Lambda$LoginDialogFragment$VYCBrRYFeQJR3lEM8HIUnTKn91k;-><init>(Lorg/catrobat/catroid/ui/recyclerview/dialog/login/LoginDialogFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 146
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/dialog/login/LoginDialogFragment;->usernameEditText:Landroid/widget/EditText;

    invoke-static {v0}, Lorg/catrobat/catroid/ui/ViewUtils;->showKeyboard(Landroid/view/View;)V

    .line 147
    return-void
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .line 168
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/dialog/login/LoginDialogFragment;->signInCompleteListener:Lorg/catrobat/catroid/ui/recyclerview/dialog/login/SignInCompleteListener;

    invoke-interface {v0}, Lorg/catrobat/catroid/ui/recyclerview/dialog/login/SignInCompleteListener;->onLoginCancel()V

    .line 169
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 5
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 69
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/recyclerview/dialog/login/LoginDialogFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0d0130

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 71
    .local v0, "view":Landroid/view/View;
    const v1, 0x7f0a0349

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/textfield/TextInputLayout;

    iput-object v1, p0, Lorg/catrobat/catroid/ui/recyclerview/dialog/login/LoginDialogFragment;->usernameInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    .line 72
    const v1, 0x7f0a0348

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/textfield/TextInputLayout;

    iput-object v1, p0, Lorg/catrobat/catroid/ui/recyclerview/dialog/login/LoginDialogFragment;->passwordInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    .line 73
    iget-object v1, p0, Lorg/catrobat/catroid/ui/recyclerview/dialog/login/LoginDialogFragment;->usernameInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    iput-object v1, p0, Lorg/catrobat/catroid/ui/recyclerview/dialog/login/LoginDialogFragment;->usernameEditText:Landroid/widget/EditText;

    .line 74
    iget-object v1, p0, Lorg/catrobat/catroid/ui/recyclerview/dialog/login/LoginDialogFragment;->passwordInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    iput-object v1, p0, Lorg/catrobat/catroid/ui/recyclerview/dialog/login/LoginDialogFragment;->passwordEditText:Landroid/widget/EditText;

    .line 76
    const v1, 0x7f0a05b1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    .line 77
    .local v1, "showPasswordCheckBox":Landroid/widget/CheckBox;
    new-instance v3, Lorg/catrobat/catroid/ui/recyclerview/dialog/login/LoginDialogFragment$1;

    invoke-direct {v3, p0}, Lorg/catrobat/catroid/ui/recyclerview/dialog/login/LoginDialogFragment$1;-><init>(Lorg/catrobat/catroid/ui/recyclerview/dialog/login/LoginDialogFragment;)V

    invoke-virtual {v1, v3}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 88
    new-instance v3, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/recyclerview/dialog/login/LoginDialogFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 89
    const v4, 0x7f120536

    invoke-virtual {v3, v4}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v3

    .line 90
    invoke-virtual {v3, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v3

    .line 91
    invoke-virtual {v3, v4, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v3

    .line 92
    const v4, 0x7f1201b8

    invoke-virtual {v3, v4, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v3

    .line 93
    const v4, 0x7f12070c

    invoke-virtual {v3, v4, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v2

    .line 94
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v2

    .line 95
    invoke-virtual {v2}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lorg/catrobat/catroid/ui/recyclerview/dialog/login/LoginDialogFragment;->alertDialog:Landroidx/appcompat/app/AlertDialog;

    .line 97
    iget-object v2, p0, Lorg/catrobat/catroid/ui/recyclerview/dialog/login/LoginDialogFragment;->usernameEditText:Landroid/widget/EditText;

    new-instance v3, Lorg/catrobat/catroid/ui/recyclerview/dialog/login/LoginDialogFragment$2;

    invoke-direct {v3, p0}, Lorg/catrobat/catroid/ui/recyclerview/dialog/login/LoginDialogFragment$2;-><init>(Lorg/catrobat/catroid/ui/recyclerview/dialog/login/LoginDialogFragment;)V

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 119
    iget-object v2, p0, Lorg/catrobat/catroid/ui/recyclerview/dialog/login/LoginDialogFragment;->passwordEditText:Landroid/widget/EditText;

    new-instance v3, Lorg/catrobat/catroid/ui/recyclerview/dialog/login/LoginDialogFragment$3;

    invoke-direct {v3, p0}, Lorg/catrobat/catroid/ui/recyclerview/dialog/login/LoginDialogFragment$3;-><init>(Lorg/catrobat/catroid/ui/recyclerview/dialog/login/LoginDialogFragment;)V

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 141
    iget-object v2, p0, Lorg/catrobat/catroid/ui/recyclerview/dialog/login/LoginDialogFragment;->alertDialog:Landroidx/appcompat/app/AlertDialog;

    new-instance v3, Lorg/catrobat/catroid/ui/recyclerview/dialog/login/-$$Lambda$LoginDialogFragment$ywIP3fO1Cx5nbgi4fKgy5RzLXZU;

    invoke-direct {v3, p0}, Lorg/catrobat/catroid/ui/recyclerview/dialog/login/-$$Lambda$LoginDialogFragment$ywIP3fO1Cx5nbgi4fKgy5RzLXZU;-><init>(Lorg/catrobat/catroid/ui/recyclerview/dialog/login/LoginDialogFragment;)V

    invoke-virtual {v2, v3}, Landroidx/appcompat/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 149
    iget-object v2, p0, Lorg/catrobat/catroid/ui/recyclerview/dialog/login/LoginDialogFragment;->alertDialog:Landroidx/appcompat/app/AlertDialog;

    return-object v2
.end method

.method public onLoginComplete()V
    .locals 3

    .line 154
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 155
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "PROVIDER"

    const-string v2, "NATIVE"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    iget-object v1, p0, Lorg/catrobat/catroid/ui/recyclerview/dialog/login/LoginDialogFragment;->signInCompleteListener:Lorg/catrobat/catroid/ui/recyclerview/dialog/login/SignInCompleteListener;

    invoke-interface {v1, v0}, Lorg/catrobat/catroid/ui/recyclerview/dialog/login/SignInCompleteListener;->onLoginSuccessful(Landroid/os/Bundle;)V

    .line 157
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/recyclerview/dialog/login/LoginDialogFragment;->dismiss()V

    .line 158
    return-void
.end method

.method public onLoginFailed(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    .line 162
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/dialog/login/LoginDialogFragment;->passwordEditText:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 163
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/dialog/login/LoginDialogFragment;->alertDialog:Landroidx/appcompat/app/AlertDialog;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 164
    return-void
.end method

.method public setSignInCompleteListener(Lorg/catrobat/catroid/ui/recyclerview/dialog/login/SignInCompleteListener;)V
    .locals 0
    .param p1, "signInCompleteListener"    # Lorg/catrobat/catroid/ui/recyclerview/dialog/login/SignInCompleteListener;

    .line 64
    iput-object p1, p0, Lorg/catrobat/catroid/ui/recyclerview/dialog/login/LoginDialogFragment;->signInCompleteListener:Lorg/catrobat/catroid/ui/recyclerview/dialog/login/SignInCompleteListener;

    .line 65
    return-void
.end method
