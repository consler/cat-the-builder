.class Lorg/catrobat/catroid/ui/recyclerview/dialog/login/LoginDialogFragment$2;
.super Ljava/lang/Object;
.source "LoginDialogFragment.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/catrobat/catroid/ui/recyclerview/dialog/login/LoginDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/catrobat/catroid/ui/recyclerview/dialog/login/LoginDialogFragment;


# direct methods
.method constructor <init>(Lorg/catrobat/catroid/ui/recyclerview/dialog/login/LoginDialogFragment;)V
    .locals 0
    .param p1, "this$0"    # Lorg/catrobat/catroid/ui/recyclerview/dialog/login/LoginDialogFragment;

    .line 97
    iput-object p1, p0, Lorg/catrobat/catroid/ui/recyclerview/dialog/login/LoginDialogFragment$2;->this$0:Lorg/catrobat/catroid/ui/recyclerview/dialog/login/LoginDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 3
    .param p1, "s"    # Landroid/text/Editable;

    .line 108
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/dialog/login/LoginDialogFragment$2;->this$0:Lorg/catrobat/catroid/ui/recyclerview/dialog/login/LoginDialogFragment;

    invoke-static {v0}, Lorg/catrobat/catroid/ui/recyclerview/dialog/login/LoginDialogFragment;->access$100(Lorg/catrobat/catroid/ui/recyclerview/dialog/login/LoginDialogFragment;)Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object v0

    iget-object v1, p0, Lorg/catrobat/catroid/ui/recyclerview/dialog/login/LoginDialogFragment$2;->this$0:Lorg/catrobat/catroid/ui/recyclerview/dialog/login/LoginDialogFragment;

    const v2, 0x7f1202fb

    invoke-virtual {v1, v2}, Lorg/catrobat/catroid/ui/recyclerview/dialog/login/LoginDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 110
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "^[a-zA-Z0-9-_.]*$"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 111
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/dialog/login/LoginDialogFragment$2;->this$0:Lorg/catrobat/catroid/ui/recyclerview/dialog/login/LoginDialogFragment;

    invoke-static {v0}, Lorg/catrobat/catroid/ui/recyclerview/dialog/login/LoginDialogFragment;->access$100(Lorg/catrobat/catroid/ui/recyclerview/dialog/login/LoginDialogFragment;)Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object v0

    iget-object v1, p0, Lorg/catrobat/catroid/ui/recyclerview/dialog/login/LoginDialogFragment$2;->this$0:Lorg/catrobat/catroid/ui/recyclerview/dialog/login/LoginDialogFragment;

    const v2, 0x7f1202fd

    invoke-virtual {v1, v2}, Lorg/catrobat/catroid/ui/recyclerview/dialog/login/LoginDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 113
    :cond_1
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/dialog/login/LoginDialogFragment$2;->this$0:Lorg/catrobat/catroid/ui/recyclerview/dialog/login/LoginDialogFragment;

    invoke-static {v0}, Lorg/catrobat/catroid/ui/recyclerview/dialog/login/LoginDialogFragment;->access$100(Lorg/catrobat/catroid/ui/recyclerview/dialog/login/LoginDialogFragment;)Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setErrorEnabled(Z)V

    .line 115
    :goto_0
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/dialog/login/LoginDialogFragment$2;->this$0:Lorg/catrobat/catroid/ui/recyclerview/dialog/login/LoginDialogFragment;

    invoke-static {v0}, Lorg/catrobat/catroid/ui/recyclerview/dialog/login/LoginDialogFragment;->access$200(Lorg/catrobat/catroid/ui/recyclerview/dialog/login/LoginDialogFragment;)V

    .line 116
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .line 100
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .line 104
    return-void
.end method
