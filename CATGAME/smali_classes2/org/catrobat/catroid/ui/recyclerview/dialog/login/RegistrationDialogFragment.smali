.class public Lorg/catrobat/catroid/ui/recyclerview/dialog/login/RegistrationDialogFragment;
.super Landroidx/fragment/app/DialogFragment;
.source "RegistrationDialogFragment.java"

# interfaces
.implements Lorg/catrobat/catroid/transfers/RegistrationTask$OnRegistrationListener;


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field private alertDialog:Landroidx/appcompat/app/AlertDialog;

.field private confirmPasswordEditText:Landroid/widget/EditText;

.field private confirmPasswordInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

.field private emailAddressEditText:Landroid/widget/EditText;

.field private emailInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

.field private passwordEditText:Landroid/widget/EditText;

.field private passwordInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

.field private signInCompleteListener:Lorg/catrobat/catroid/ui/recyclerview/dialog/login/SignInCompleteListener;

.field private userNameEditText:Landroid/widget/EditText;

.field private usernameInputLayout:Lcom/google/android/material/textfield/TextInputLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 55
    const-class v0, Lorg/catrobat/catroid/ui/recyclerview/dialog/login/RegistrationDialogFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/catrobat/catroid/ui/recyclerview/dialog/login/RegistrationDialogFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 53
    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lorg/catrobat/catroid/ui/recyclerview/dialog/login/RegistrationDialogFragment;)Lcom/google/android/material/textfield/TextInputLayout;
    .locals 1
    .param p0, "x0"    # Lorg/catrobat/catroid/ui/recyclerview/dialog/login/RegistrationDialogFragment;

    .line 53
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/dialog/login/RegistrationDialogFragment;->usernameInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    return-object v0
.end method

.method static synthetic access$100(Lorg/catrobat/catroid/ui/recyclerview/dialog/login/RegistrationDialogFragment;)V
    .locals 0
    .param p0, "x0"    # Lorg/catrobat/catroid/ui/recyclerview/dialog/login/RegistrationDialogFragment;

    .line 53
    invoke-direct {p0}, Lorg/catrobat/catroid/ui/recyclerview/dialog/login/RegistrationDialogFragment;->handleRegisterBtnStatus()V

    return-void
.end method

.method static synthetic access$200(Lorg/catrobat/catroid/ui/recyclerview/dialog/login/RegistrationDialogFragment;)Lcom/google/android/material/textfield/TextInputLayout;
    .locals 1
    .param p0, "x0"    # Lorg/catrobat/catroid/ui/recyclerview/dialog/login/RegistrationDialogFragment;

    .line 53
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/dialog/login/RegistrationDialogFragment;->emailInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    return-object v0
.end method

.method static synthetic access$300(Lorg/catrobat/catroid/ui/recyclerview/dialog/login/RegistrationDialogFragment;)Lcom/google/android/material/textfield/TextInputLayout;
    .locals 1
    .param p0, "x0"    # Lorg/catrobat/catroid/ui/recyclerview/dialog/login/RegistrationDialogFragment;

    .line 53
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/dialog/login/RegistrationDialogFragment;->passwordInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    return-object v0
.end method

.method static synthetic access$400(Lorg/catrobat/catroid/ui/recyclerview/dialog/login/RegistrationDialogFragment;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lorg/catrobat/catroid/ui/recyclerview/dialog/login/RegistrationDialogFragment;

    .line 53
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/dialog/login/RegistrationDialogFragment;->confirmPasswordEditText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$500(Lorg/catrobat/catroid/ui/recyclerview/dialog/login/RegistrationDialogFragment;)Lcom/google/android/material/textfield/TextInputLayout;
    .locals 1
    .param p0, "x0"    # Lorg/catrobat/catroid/ui/recyclerview/dialog/login/RegistrationDialogFragment;

    .line 53
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/dialog/login/RegistrationDialogFragment;->confirmPasswordInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    return-object v0
.end method

.method static synthetic access$600(Lorg/catrobat/catroid/ui/recyclerview/dialog/login/RegistrationDialogFragment;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lorg/catrobat/catroid/ui/recyclerview/dialog/login/RegistrationDialogFragment;

    .line 53
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/dialog/login/RegistrationDialogFragment;->passwordEditText:Landroid/widget/EditText;

    return-object v0
.end method

.method private handleRegisterBtnStatus()V
    .locals 2

    .line 279
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/dialog/login/RegistrationDialogFragment;->alertDialog:Landroidx/appcompat/app/AlertDialog;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 280
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/dialog/login/RegistrationDialogFragment;->usernameInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->isErrorEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/dialog/login/RegistrationDialogFragment;->emailInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->isErrorEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/dialog/login/RegistrationDialogFragment;->passwordInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    .line 281
    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->isErrorEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/dialog/login/RegistrationDialogFragment;->confirmPasswordInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->isErrorEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/recyclerview/dialog/login/RegistrationDialogFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lorg/catrobat/catroid/utils/Utils;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 282
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/dialog/login/RegistrationDialogFragment;->alertDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 284
    :cond_0
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/dialog/login/RegistrationDialogFragment;->alertDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 287
    :cond_1
    :goto_0
    return-void
.end method

.method private onRegisterButtonClick()V
    .locals 5

    .line 269
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/dialog/login/RegistrationDialogFragment;->userNameEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 270
    .local v0, "username":Ljava/lang/String;
    iget-object v1, p0, Lorg/catrobat/catroid/ui/recyclerview/dialog/login/RegistrationDialogFragment;->passwordEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 271
    .local v1, "password":Ljava/lang/String;
    iget-object v2, p0, Lorg/catrobat/catroid/ui/recyclerview/dialog/login/RegistrationDialogFragment;->emailAddressEditText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 273
    .local v2, "email":Ljava/lang/String;
    new-instance v3, Lorg/catrobat/catroid/transfers/RegistrationTask;

    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/recyclerview/dialog/login/RegistrationDialogFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    invoke-direct {v3, v4, v0, v1, v2}, Lorg/catrobat/catroid/transfers/RegistrationTask;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    .local v3, "registrationTask":Lorg/catrobat/catroid/transfers/RegistrationTask;
    invoke-virtual {v3, p0}, Lorg/catrobat/catroid/transfers/RegistrationTask;->setOnRegistrationListener(Lorg/catrobat/catroid/transfers/RegistrationTask$OnRegistrationListener;)V

    .line 275
    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Void;

    invoke-virtual {v3, v4}, Lorg/catrobat/catroid/transfers/RegistrationTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 276
    return-void
.end method


# virtual methods
.method public synthetic lambda$null$0$RegistrationDialogFragment(Landroid/view/View;)V
    .locals 0
    .param p1, "buttonView"    # Landroid/view/View;

    .line 243
    invoke-direct {p0}, Lorg/catrobat/catroid/ui/recyclerview/dialog/login/RegistrationDialogFragment;->onRegisterButtonClick()V

    return-void
.end method

.method public synthetic lambda$onCreateDialog$1$RegistrationDialogFragment(Landroid/content/DialogInterface;)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .line 242
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/dialog/login/RegistrationDialogFragment;->alertDialog:Landroidx/appcompat/app/AlertDialog;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 243
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/dialog/login/RegistrationDialogFragment;->alertDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    new-instance v1, Lorg/catrobat/catroid/ui/recyclerview/dialog/login/-$$Lambda$RegistrationDialogFragment$Jyt8m1nS4lvy8Oo4TsH9k2a4bqE;

    invoke-direct {v1, p0}, Lorg/catrobat/catroid/ui/recyclerview/dialog/login/-$$Lambda$RegistrationDialogFragment$Jyt8m1nS4lvy8Oo4TsH9k2a4bqE;-><init>(Lorg/catrobat/catroid/ui/recyclerview/dialog/login/RegistrationDialogFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 244
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/dialog/login/RegistrationDialogFragment;->userNameEditText:Landroid/widget/EditText;

    invoke-static {v0}, Lorg/catrobat/catroid/ui/ViewUtils;->showKeyboard(Landroid/view/View;)V

    .line 245
    return-void
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .line 251
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/dialog/login/RegistrationDialogFragment;->signInCompleteListener:Lorg/catrobat/catroid/ui/recyclerview/dialog/login/SignInCompleteListener;

    invoke-interface {v0}, Lorg/catrobat/catroid/ui/recyclerview/dialog/login/SignInCompleteListener;->onLoginCancel()V

    .line 252
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 5
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 75
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/recyclerview/dialog/login/RegistrationDialogFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0d014b

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 77
    .local v0, "view":Landroid/view/View;
    const v1, 0x7f0a035a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/textfield/TextInputLayout;

    iput-object v1, p0, Lorg/catrobat/catroid/ui/recyclerview/dialog/login/RegistrationDialogFragment;->usernameInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    .line 78
    const v1, 0x7f0a0357

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/textfield/TextInputLayout;

    iput-object v1, p0, Lorg/catrobat/catroid/ui/recyclerview/dialog/login/RegistrationDialogFragment;->emailInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    .line 79
    const v1, 0x7f0a0358

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/textfield/TextInputLayout;

    iput-object v1, p0, Lorg/catrobat/catroid/ui/recyclerview/dialog/login/RegistrationDialogFragment;->passwordInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    .line 80
    const v1, 0x7f0a0359

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/textfield/TextInputLayout;

    iput-object v1, p0, Lorg/catrobat/catroid/ui/recyclerview/dialog/login/RegistrationDialogFragment;->confirmPasswordInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    .line 82
    new-instance v1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/recyclerview/dialog/login/RegistrationDialogFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v1, v3}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 83
    const v3, 0x7f1206fc

    invoke-virtual {v1, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    .line 84
    invoke-virtual {v1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    .line 85
    invoke-virtual {v1, v3, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    .line 86
    invoke-virtual {v1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lorg/catrobat/catroid/ui/recyclerview/dialog/login/RegistrationDialogFragment;->alertDialog:Landroidx/appcompat/app/AlertDialog;

    .line 88
    iget-object v1, p0, Lorg/catrobat/catroid/ui/recyclerview/dialog/login/RegistrationDialogFragment;->usernameInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    iput-object v1, p0, Lorg/catrobat/catroid/ui/recyclerview/dialog/login/RegistrationDialogFragment;->userNameEditText:Landroid/widget/EditText;

    .line 89
    iget-object v1, p0, Lorg/catrobat/catroid/ui/recyclerview/dialog/login/RegistrationDialogFragment;->emailInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    iput-object v1, p0, Lorg/catrobat/catroid/ui/recyclerview/dialog/login/RegistrationDialogFragment;->emailAddressEditText:Landroid/widget/EditText;

    .line 90
    iget-object v1, p0, Lorg/catrobat/catroid/ui/recyclerview/dialog/login/RegistrationDialogFragment;->passwordInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    iput-object v1, p0, Lorg/catrobat/catroid/ui/recyclerview/dialog/login/RegistrationDialogFragment;->passwordEditText:Landroid/widget/EditText;

    .line 91
    iget-object v1, p0, Lorg/catrobat/catroid/ui/recyclerview/dialog/login/RegistrationDialogFragment;->confirmPasswordInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    iput-object v1, p0, Lorg/catrobat/catroid/ui/recyclerview/dialog/login/RegistrationDialogFragment;->confirmPasswordEditText:Landroid/widget/EditText;

    .line 93
    iget-object v1, p0, Lorg/catrobat/catroid/ui/recyclerview/dialog/login/RegistrationDialogFragment;->userNameEditText:Landroid/widget/EditText;

    new-instance v2, Lorg/catrobat/catroid/ui/recyclerview/dialog/login/RegistrationDialogFragment$1;

    invoke-direct {v2, p0}, Lorg/catrobat/catroid/ui/recyclerview/dialog/login/RegistrationDialogFragment$1;-><init>(Lorg/catrobat/catroid/ui/recyclerview/dialog/login/RegistrationDialogFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 134
    iget-object v1, p0, Lorg/catrobat/catroid/ui/recyclerview/dialog/login/RegistrationDialogFragment;->emailAddressEditText:Landroid/widget/EditText;

    new-instance v2, Lorg/catrobat/catroid/ui/recyclerview/dialog/login/RegistrationDialogFragment$2;

    invoke-direct {v2, p0}, Lorg/catrobat/catroid/ui/recyclerview/dialog/login/RegistrationDialogFragment$2;-><init>(Lorg/catrobat/catroid/ui/recyclerview/dialog/login/RegistrationDialogFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 170
    iget-object v1, p0, Lorg/catrobat/catroid/ui/recyclerview/dialog/login/RegistrationDialogFragment;->passwordEditText:Landroid/widget/EditText;

    new-instance v2, Lorg/catrobat/catroid/ui/recyclerview/dialog/login/RegistrationDialogFragment$3;

    invoke-direct {v2, p0}, Lorg/catrobat/catroid/ui/recyclerview/dialog/login/RegistrationDialogFragment$3;-><init>(Lorg/catrobat/catroid/ui/recyclerview/dialog/login/RegistrationDialogFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 196
    iget-object v1, p0, Lorg/catrobat/catroid/ui/recyclerview/dialog/login/RegistrationDialogFragment;->confirmPasswordEditText:Landroid/widget/EditText;

    new-instance v2, Lorg/catrobat/catroid/ui/recyclerview/dialog/login/RegistrationDialogFragment$4;

    invoke-direct {v2, p0}, Lorg/catrobat/catroid/ui/recyclerview/dialog/login/RegistrationDialogFragment$4;-><init>(Lorg/catrobat/catroid/ui/recyclerview/dialog/login/RegistrationDialogFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 221
    const v1, 0x7f0a05b1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    .line 222
    .local v1, "showPasswordCheckBox":Landroid/widget/CheckBox;
    new-instance v2, Lorg/catrobat/catroid/ui/recyclerview/dialog/login/RegistrationDialogFragment$5;

    invoke-direct {v2, p0}, Lorg/catrobat/catroid/ui/recyclerview/dialog/login/RegistrationDialogFragment$5;-><init>(Lorg/catrobat/catroid/ui/recyclerview/dialog/login/RegistrationDialogFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 235
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/recyclerview/dialog/login/RegistrationDialogFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lorg/catrobat/catroid/utils/DeviceSettingsProvider;->getUserEmail(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 236
    .local v2, "eMail":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 237
    iget-object v3, p0, Lorg/catrobat/catroid/ui/recyclerview/dialog/login/RegistrationDialogFragment;->emailAddressEditText:Landroid/widget/EditText;

    invoke-virtual {v3, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 238
    iget-object v3, p0, Lorg/catrobat/catroid/ui/recyclerview/dialog/login/RegistrationDialogFragment;->emailInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/google/android/material/textfield/TextInputLayout;->setErrorEnabled(Z)V

    .line 241
    :cond_0
    iget-object v3, p0, Lorg/catrobat/catroid/ui/recyclerview/dialog/login/RegistrationDialogFragment;->alertDialog:Landroidx/appcompat/app/AlertDialog;

    new-instance v4, Lorg/catrobat/catroid/ui/recyclerview/dialog/login/-$$Lambda$RegistrationDialogFragment$ZURKpAJdN-7zlJ7ayJ-f7d731gE;

    invoke-direct {v4, p0}, Lorg/catrobat/catroid/ui/recyclerview/dialog/login/-$$Lambda$RegistrationDialogFragment$ZURKpAJdN-7zlJ7ayJ-f7d731gE;-><init>(Lorg/catrobat/catroid/ui/recyclerview/dialog/login/RegistrationDialogFragment;)V

    invoke-virtual {v3, v4}, Landroidx/appcompat/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 246
    iget-object v3, p0, Lorg/catrobat/catroid/ui/recyclerview/dialog/login/RegistrationDialogFragment;->alertDialog:Landroidx/appcompat/app/AlertDialog;

    return-object v3
.end method

.method public onRegistrationComplete()V
    .locals 3

    .line 256
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 257
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "PROVIDER"

    const-string v2, "NATIVE"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    iget-object v1, p0, Lorg/catrobat/catroid/ui/recyclerview/dialog/login/RegistrationDialogFragment;->signInCompleteListener:Lorg/catrobat/catroid/ui/recyclerview/dialog/login/SignInCompleteListener;

    invoke-interface {v1, v0}, Lorg/catrobat/catroid/ui/recyclerview/dialog/login/SignInCompleteListener;->onLoginSuccessful(Landroid/os/Bundle;)V

    .line 259
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/recyclerview/dialog/login/RegistrationDialogFragment;->dismiss()V

    .line 260
    return-void
.end method

.method public onRegistrationFailed(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    .line 264
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/dialog/login/RegistrationDialogFragment;->confirmPasswordEditText:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 265
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/dialog/login/RegistrationDialogFragment;->alertDialog:Landroidx/appcompat/app/AlertDialog;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 266
    return-void
.end method

.method public setSignInCompleteListener(Lorg/catrobat/catroid/ui/recyclerview/dialog/login/SignInCompleteListener;)V
    .locals 0
    .param p1, "signInCompleteListener"    # Lorg/catrobat/catroid/ui/recyclerview/dialog/login/SignInCompleteListener;

    .line 70
    iput-object p1, p0, Lorg/catrobat/catroid/ui/recyclerview/dialog/login/RegistrationDialogFragment;->signInCompleteListener:Lorg/catrobat/catroid/ui/recyclerview/dialog/login/SignInCompleteListener;

    .line 71
    return-void
.end method
