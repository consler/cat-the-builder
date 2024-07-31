.class public Lorg/catrobat/catroid/ui/SignInActivity;
.super Lorg/catrobat/catroid/ui/BaseActivity;
.source "SignInActivity.java"

# interfaces
.implements Lorg/catrobat/catroid/ui/recyclerview/dialog/login/SignInCompleteListener;


# static fields
.field public static final LOGIN_SUCCESSFUL:Ljava/lang/String; = "LOGIN_SUCCESSFUL"


# instance fields
.field private googleLoginHandler:Lorg/catrobat/catroid/transfers/GoogleLoginHandler;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Lorg/catrobat/catroid/ui/BaseActivity;-><init>()V

    return-void
.end method

.method private onButtonClickForRealThisTime(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .line 74
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 81
    :pswitch_0
    new-instance v0, Lorg/catrobat/catroid/ui/recyclerview/dialog/login/RegistrationDialogFragment;

    invoke-direct {v0}, Lorg/catrobat/catroid/ui/recyclerview/dialog/login/RegistrationDialogFragment;-><init>()V

    .line 82
    .local v0, "registrationDialog":Lorg/catrobat/catroid/ui/recyclerview/dialog/login/RegistrationDialogFragment;
    invoke-virtual {v0, p0}, Lorg/catrobat/catroid/ui/recyclerview/dialog/login/RegistrationDialogFragment;->setSignInCompleteListener(Lorg/catrobat/catroid/ui/recyclerview/dialog/login/SignInCompleteListener;)V

    .line 83
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/SignInActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    sget-object v2, Lorg/catrobat/catroid/ui/recyclerview/dialog/login/RegistrationDialogFragment;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/catrobat/catroid/ui/recyclerview/dialog/login/RegistrationDialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 84
    goto :goto_0

    .line 76
    .end local v0    # "registrationDialog":Lorg/catrobat/catroid/ui/recyclerview/dialog/login/RegistrationDialogFragment;
    :pswitch_1
    new-instance v0, Lorg/catrobat/catroid/ui/recyclerview/dialog/login/LoginDialogFragment;

    invoke-direct {v0}, Lorg/catrobat/catroid/ui/recyclerview/dialog/login/LoginDialogFragment;-><init>()V

    .line 77
    .local v0, "logInDialog":Lorg/catrobat/catroid/ui/recyclerview/dialog/login/LoginDialogFragment;
    invoke-virtual {v0, p0}, Lorg/catrobat/catroid/ui/recyclerview/dialog/login/LoginDialogFragment;->setSignInCompleteListener(Lorg/catrobat/catroid/ui/recyclerview/dialog/login/SignInCompleteListener;)V

    .line 78
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/SignInActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    sget-object v2, Lorg/catrobat/catroid/ui/recyclerview/dialog/login/LoginDialogFragment;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/catrobat/catroid/ui/recyclerview/dialog/login/LoginDialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 79
    goto :goto_0

    .line 86
    .end local v0    # "logInDialog":Lorg/catrobat/catroid/ui/recyclerview/dialog/login/LoginDialogFragment;
    :pswitch_2
    iget-object v0, p0, Lorg/catrobat/catroid/ui/SignInActivity;->googleLoginHandler:Lorg/catrobat/catroid/transfers/GoogleLoginHandler;

    invoke-virtual {v0}, Lorg/catrobat/catroid/transfers/GoogleLoginHandler;->getGoogleSignInClient()Lcom/google/android/gms/auth/api/signin/GoogleSignInClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/auth/api/signin/GoogleSignInClient;->getSignInIntent()Landroid/content/Intent;

    move-result-object v0

    const/16 v1, 0x64

    invoke-virtual {p0, v0, v1}, Lorg/catrobat/catroid/ui/SignInActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 87
    nop

    .line 91
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x7f0a05b4
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .line 95
    iget-object v0, p0, Lorg/catrobat/catroid/ui/SignInActivity;->googleLoginHandler:Lorg/catrobat/catroid/transfers/GoogleLoginHandler;

    invoke-virtual {v0, p1, p2, p3}, Lorg/catrobat/catroid/transfers/GoogleLoginHandler;->onActivityResult(IILandroid/content/Intent;)V

    .line 97
    invoke-super {p0, p1, p2, p3}, Lorg/catrobat/catroid/ui/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 98
    return-void
.end method

.method public onButtonClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 68
    invoke-static {p0}, Lorg/catrobat/catroid/utils/Utils;->checkIsNetworkAvailableAndShowErrorMessage(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    invoke-direct {p0, p1}, Lorg/catrobat/catroid/ui/SignInActivity;->onButtonClickForRealThisTime(Landroid/view/View;)V

    .line 71
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 50
    invoke-super {p0, p1}, Lorg/catrobat/catroid/ui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 51
    const v0, 0x7f0d002b

    invoke-virtual {p0, v0}, Lorg/catrobat/catroid/ui/SignInActivity;->setContentView(I)V

    .line 52
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/SignInActivity;->setUpGoogleSignin()V

    .line 54
    const v0, 0x7f0a0573

    invoke-virtual {p0, v0}, Lorg/catrobat/catroid/ui/SignInActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 56
    .local v0, "termsOfUseLinkTextView":Landroid/widget/TextView;
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "https://share.catrob.at/pocketcode/termsOfUse"

    aput-object v3, v1, v2

    .line 57
    const v2, 0x7f1206fd

    invoke-virtual {p0, v2}, Lorg/catrobat/catroid/ui/SignInActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 56
    const v2, 0x7f120023

    invoke-virtual {p0, v2, v1}, Lorg/catrobat/catroid/ui/SignInActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 58
    .local v1, "termsOfUseUrl":Ljava/lang/String;
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 59
    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    return-void
.end method

.method public onLoginCancel()V
    .locals 0

    .line 110
    return-void
.end method

.method public onLoginSuccessful(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 102
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 103
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "LOGIN_SUCCESSFUL"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 104
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lorg/catrobat/catroid/ui/SignInActivity;->setResult(ILandroid/content/Intent;)V

    .line 105
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/SignInActivity;->finish()V

    .line 106
    return-void
.end method

.method public setUpGoogleSignin()V
    .locals 2

    .line 63
    new-instance v0, Lorg/catrobat/catroid/transfers/GoogleLoginHandler;

    invoke-direct {v0, p0}, Lorg/catrobat/catroid/transfers/GoogleLoginHandler;-><init>(Landroidx/appcompat/app/AppCompatActivity;)V

    iput-object v0, p0, Lorg/catrobat/catroid/ui/SignInActivity;->googleLoginHandler:Lorg/catrobat/catroid/transfers/GoogleLoginHandler;

    .line 64
    const v0, 0x7f0a05b4

    invoke-virtual {p0, v0}, Lorg/catrobat/catroid/ui/SignInActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lorg/catrobat/catroid/ui/-$$Lambda$5aJ0hG9Z89MxY3urEZ7KJkh1dQg;

    invoke-direct {v1, p0}, Lorg/catrobat/catroid/ui/-$$Lambda$5aJ0hG9Z89MxY3urEZ7KJkh1dQg;-><init>(Lorg/catrobat/catroid/ui/SignInActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 65
    return-void
.end method
