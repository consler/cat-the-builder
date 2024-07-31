.class Lorg/catrobat/catroid/ui/recyclerview/dialog/login/RegistrationDialogFragment$2;
.super Ljava/lang/Object;
.source "RegistrationDialogFragment.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/catrobat/catroid/ui/recyclerview/dialog/login/RegistrationDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/catrobat/catroid/ui/recyclerview/dialog/login/RegistrationDialogFragment;


# direct methods
.method constructor <init>(Lorg/catrobat/catroid/ui/recyclerview/dialog/login/RegistrationDialogFragment;)V
    .locals 0
    .param p1, "this$0"    # Lorg/catrobat/catroid/ui/recyclerview/dialog/login/RegistrationDialogFragment;

    .line 134
    iput-object p1, p0, Lorg/catrobat/catroid/ui/recyclerview/dialog/login/RegistrationDialogFragment$2;->this$0:Lorg/catrobat/catroid/ui/recyclerview/dialog/login/RegistrationDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 4
    .param p1, "s"    # Landroid/text/Editable;

    .line 145
    sget-object v0, Landroid/util/Patterns;->EMAIL_ADDRESS:Ljava/util/regex/Pattern;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 148
    :cond_0
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/dialog/login/RegistrationDialogFragment$2;->this$0:Lorg/catrobat/catroid/ui/recyclerview/dialog/login/RegistrationDialogFragment;

    invoke-static {v0}, Lorg/catrobat/catroid/ui/recyclerview/dialog/login/RegistrationDialogFragment;->access$200(Lorg/catrobat/catroid/ui/recyclerview/dialog/login/RegistrationDialogFragment;)Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setErrorEnabled(Z)V

    goto :goto_1

    .line 146
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/dialog/login/RegistrationDialogFragment$2;->this$0:Lorg/catrobat/catroid/ui/recyclerview/dialog/login/RegistrationDialogFragment;

    invoke-static {v0}, Lorg/catrobat/catroid/ui/recyclerview/dialog/login/RegistrationDialogFragment;->access$200(Lorg/catrobat/catroid/ui/recyclerview/dialog/login/RegistrationDialogFragment;)Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object v0

    iget-object v2, p0, Lorg/catrobat/catroid/ui/recyclerview/dialog/login/RegistrationDialogFragment$2;->this$0:Lorg/catrobat/catroid/ui/recyclerview/dialog/login/RegistrationDialogFragment;

    const v3, 0x7f1202fc

    invoke-virtual {v2, v3}, Lorg/catrobat/catroid/ui/recyclerview/dialog/login/RegistrationDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 150
    :goto_1
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/dialog/login/RegistrationDialogFragment$2;->this$0:Lorg/catrobat/catroid/ui/recyclerview/dialog/login/RegistrationDialogFragment;

    invoke-static {v0}, Lorg/catrobat/catroid/ui/recyclerview/dialog/login/RegistrationDialogFragment;->access$200(Lorg/catrobat/catroid/ui/recyclerview/dialog/login/RegistrationDialogFragment;)Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->isErrorEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    .line 151
    new-instance v0, Lorg/catrobat/catroid/transfers/CheckEmailAvailableTask;

    .line 152
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "NATIVE"

    invoke-direct {v0, v2, v3}, Lorg/catrobat/catroid/transfers/CheckEmailAvailableTask;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    .local v0, "checkEmailAvailableTask":Lorg/catrobat/catroid/transfers/CheckEmailAvailableTask;
    new-instance v2, Lorg/catrobat/catroid/ui/recyclerview/dialog/login/RegistrationDialogFragment$2$1;

    invoke-direct {v2, p0}, Lorg/catrobat/catroid/ui/recyclerview/dialog/login/RegistrationDialogFragment$2$1;-><init>(Lorg/catrobat/catroid/ui/recyclerview/dialog/login/RegistrationDialogFragment$2;)V

    invoke-virtual {v0, v2}, Lorg/catrobat/catroid/transfers/CheckEmailAvailableTask;->setOnCheckEmailAvailableCompleteListener(Lorg/catrobat/catroid/transfers/CheckEmailAvailableTask$OnCheckEmailAvailableCompleteListener;)V

    .line 164
    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/transfers/CheckEmailAvailableTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 166
    .end local v0    # "checkEmailAvailableTask":Lorg/catrobat/catroid/transfers/CheckEmailAvailableTask;
    :cond_2
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/dialog/login/RegistrationDialogFragment$2;->this$0:Lorg/catrobat/catroid/ui/recyclerview/dialog/login/RegistrationDialogFragment;

    invoke-static {v0}, Lorg/catrobat/catroid/ui/recyclerview/dialog/login/RegistrationDialogFragment;->access$100(Lorg/catrobat/catroid/ui/recyclerview/dialog/login/RegistrationDialogFragment;)V

    .line 167
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .line 137
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .line 141
    return-void
.end method
