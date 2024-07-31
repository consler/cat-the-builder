.class Lorg/catrobat/catroid/ui/recyclerview/dialog/login/RegistrationDialogFragment$1$1;
.super Ljava/lang/Object;
.source "RegistrationDialogFragment.java"

# interfaces
.implements Lorg/catrobat/catroid/transfers/CheckUserNameAvailableTask$OnCheckUserNameAvailableCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/catrobat/catroid/ui/recyclerview/dialog/login/RegistrationDialogFragment$1;->afterTextChanged(Landroid/text/Editable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/catrobat/catroid/ui/recyclerview/dialog/login/RegistrationDialogFragment$1;


# direct methods
.method constructor <init>(Lorg/catrobat/catroid/ui/recyclerview/dialog/login/RegistrationDialogFragment$1;)V
    .locals 0
    .param p1, "this$1"    # Lorg/catrobat/catroid/ui/recyclerview/dialog/login/RegistrationDialogFragment$1;

    .line 118
    iput-object p1, p0, Lorg/catrobat/catroid/ui/recyclerview/dialog/login/RegistrationDialogFragment$1$1;->this$1:Lorg/catrobat/catroid/ui/recyclerview/dialog/login/RegistrationDialogFragment$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckUserNameAvailableComplete(Ljava/lang/Boolean;Ljava/lang/String;)V
    .locals 3
    .param p1, "userNameAvailable"    # Ljava/lang/Boolean;
    .param p2, "username"    # Ljava/lang/String;

    .line 121
    if-nez p1, :cond_0

    .line 122
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/dialog/login/RegistrationDialogFragment$1$1;->this$1:Lorg/catrobat/catroid/ui/recyclerview/dialog/login/RegistrationDialogFragment$1;

    iget-object v0, v0, Lorg/catrobat/catroid/ui/recyclerview/dialog/login/RegistrationDialogFragment$1;->this$0:Lorg/catrobat/catroid/ui/recyclerview/dialog/login/RegistrationDialogFragment;

    invoke-virtual {v0}, Lorg/catrobat/catroid/ui/recyclerview/dialog/login/RegistrationDialogFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f1202e5

    invoke-static {v0, v1}, Lorg/catrobat/catroid/utils/ToastUtil;->showError(Landroid/content/Context;I)V

    goto :goto_0

    .line 123
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 124
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/dialog/login/RegistrationDialogFragment$1$1;->this$1:Lorg/catrobat/catroid/ui/recyclerview/dialog/login/RegistrationDialogFragment$1;

    iget-object v0, v0, Lorg/catrobat/catroid/ui/recyclerview/dialog/login/RegistrationDialogFragment$1;->this$0:Lorg/catrobat/catroid/ui/recyclerview/dialog/login/RegistrationDialogFragment;

    invoke-static {v0}, Lorg/catrobat/catroid/ui/recyclerview/dialog/login/RegistrationDialogFragment;->access$000(Lorg/catrobat/catroid/ui/recyclerview/dialog/login/RegistrationDialogFragment;)Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object v0

    iget-object v1, p0, Lorg/catrobat/catroid/ui/recyclerview/dialog/login/RegistrationDialogFragment$1$1;->this$1:Lorg/catrobat/catroid/ui/recyclerview/dialog/login/RegistrationDialogFragment$1;

    iget-object v1, v1, Lorg/catrobat/catroid/ui/recyclerview/dialog/login/RegistrationDialogFragment$1;->this$0:Lorg/catrobat/catroid/ui/recyclerview/dialog/login/RegistrationDialogFragment;

    const v2, 0x7f120300

    invoke-virtual {v1, v2}, Lorg/catrobat/catroid/ui/recyclerview/dialog/login/RegistrationDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 126
    :cond_1
    :goto_0
    return-void
.end method
