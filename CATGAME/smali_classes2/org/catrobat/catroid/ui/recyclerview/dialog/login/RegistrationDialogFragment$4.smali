.class Lorg/catrobat/catroid/ui/recyclerview/dialog/login/RegistrationDialogFragment$4;
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

    .line 196
    iput-object p1, p0, Lorg/catrobat/catroid/ui/recyclerview/dialog/login/RegistrationDialogFragment$4;->this$0:Lorg/catrobat/catroid/ui/recyclerview/dialog/login/RegistrationDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 3
    .param p1, "s"    # Landroid/text/Editable;

    .line 207
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 208
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/dialog/login/RegistrationDialogFragment$4;->this$0:Lorg/catrobat/catroid/ui/recyclerview/dialog/login/RegistrationDialogFragment;

    invoke-static {v0}, Lorg/catrobat/catroid/ui/recyclerview/dialog/login/RegistrationDialogFragment;->access$500(Lorg/catrobat/catroid/ui/recyclerview/dialog/login/RegistrationDialogFragment;)Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object v0

    iget-object v1, p0, Lorg/catrobat/catroid/ui/recyclerview/dialog/login/RegistrationDialogFragment$4;->this$0:Lorg/catrobat/catroid/ui/recyclerview/dialog/login/RegistrationDialogFragment;

    const v2, 0x7f1202f9

    invoke-virtual {v1, v2}, Lorg/catrobat/catroid/ui/recyclerview/dialog/login/RegistrationDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 209
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x6

    if-ge v0, v1, :cond_1

    .line 210
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/dialog/login/RegistrationDialogFragment$4;->this$0:Lorg/catrobat/catroid/ui/recyclerview/dialog/login/RegistrationDialogFragment;

    invoke-static {v0}, Lorg/catrobat/catroid/ui/recyclerview/dialog/login/RegistrationDialogFragment;->access$500(Lorg/catrobat/catroid/ui/recyclerview/dialog/login/RegistrationDialogFragment;)Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object v0

    iget-object v1, p0, Lorg/catrobat/catroid/ui/recyclerview/dialog/login/RegistrationDialogFragment$4;->this$0:Lorg/catrobat/catroid/ui/recyclerview/dialog/login/RegistrationDialogFragment;

    const v2, 0x7f1202fe

    invoke-virtual {v1, v2}, Lorg/catrobat/catroid/ui/recyclerview/dialog/login/RegistrationDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 211
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/catrobat/catroid/ui/recyclerview/dialog/login/RegistrationDialogFragment$4;->this$0:Lorg/catrobat/catroid/ui/recyclerview/dialog/login/RegistrationDialogFragment;

    invoke-static {v1}, Lorg/catrobat/catroid/ui/recyclerview/dialog/login/RegistrationDialogFragment;->access$600(Lorg/catrobat/catroid/ui/recyclerview/dialog/login/RegistrationDialogFragment;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 212
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/dialog/login/RegistrationDialogFragment$4;->this$0:Lorg/catrobat/catroid/ui/recyclerview/dialog/login/RegistrationDialogFragment;

    invoke-static {v0}, Lorg/catrobat/catroid/ui/recyclerview/dialog/login/RegistrationDialogFragment;->access$500(Lorg/catrobat/catroid/ui/recyclerview/dialog/login/RegistrationDialogFragment;)Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object v0

    iget-object v1, p0, Lorg/catrobat/catroid/ui/recyclerview/dialog/login/RegistrationDialogFragment$4;->this$0:Lorg/catrobat/catroid/ui/recyclerview/dialog/login/RegistrationDialogFragment;

    const v2, 0x7f1202ff

    invoke-virtual {v1, v2}, Lorg/catrobat/catroid/ui/recyclerview/dialog/login/RegistrationDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 214
    :cond_2
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/dialog/login/RegistrationDialogFragment$4;->this$0:Lorg/catrobat/catroid/ui/recyclerview/dialog/login/RegistrationDialogFragment;

    invoke-static {v0}, Lorg/catrobat/catroid/ui/recyclerview/dialog/login/RegistrationDialogFragment;->access$500(Lorg/catrobat/catroid/ui/recyclerview/dialog/login/RegistrationDialogFragment;)Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setErrorEnabled(Z)V

    .line 215
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/dialog/login/RegistrationDialogFragment$4;->this$0:Lorg/catrobat/catroid/ui/recyclerview/dialog/login/RegistrationDialogFragment;

    invoke-static {v0}, Lorg/catrobat/catroid/ui/recyclerview/dialog/login/RegistrationDialogFragment;->access$300(Lorg/catrobat/catroid/ui/recyclerview/dialog/login/RegistrationDialogFragment;)Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setErrorEnabled(Z)V

    .line 217
    :goto_0
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/dialog/login/RegistrationDialogFragment$4;->this$0:Lorg/catrobat/catroid/ui/recyclerview/dialog/login/RegistrationDialogFragment;

    invoke-static {v0}, Lorg/catrobat/catroid/ui/recyclerview/dialog/login/RegistrationDialogFragment;->access$100(Lorg/catrobat/catroid/ui/recyclerview/dialog/login/RegistrationDialogFragment;)V

    .line 218
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .line 199
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .line 203
    return-void
.end method
