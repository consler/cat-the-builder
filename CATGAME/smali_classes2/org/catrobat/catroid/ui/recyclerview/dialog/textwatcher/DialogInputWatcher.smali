.class public Lorg/catrobat/catroid/ui/recyclerview/dialog/textwatcher/DialogInputWatcher;
.super Ljava/lang/Object;
.source "DialogInputWatcher.java"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field private allowEmptyInput:Z

.field private inputLayout:Lcom/google/android/material/textfield/TextInputLayout;

.field private positiveButton:Landroid/widget/Button;


# direct methods
.method public constructor <init>(Lcom/google/android/material/textfield/TextInputLayout;Landroid/widget/Button;Z)V
    .locals 0
    .param p1, "inputLayout"    # Lcom/google/android/material/textfield/TextInputLayout;
    .param p2, "positiveButton"    # Landroid/widget/Button;
    .param p3, "allowEmptyInput"    # Z

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lorg/catrobat/catroid/ui/recyclerview/dialog/textwatcher/DialogInputWatcher;->inputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    .line 40
    iput-object p2, p0, Lorg/catrobat/catroid/ui/recyclerview/dialog/textwatcher/DialogInputWatcher;->positiveButton:Landroid/widget/Button;

    .line 41
    iput-boolean p3, p0, Lorg/catrobat/catroid/ui/recyclerview/dialog/textwatcher/DialogInputWatcher;->allowEmptyInput:Z

    .line 42
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .param p1, "s"    # Landroid/text/Editable;

    .line 58
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .line 46
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .line 50
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/dialog/textwatcher/DialogInputWatcher;->inputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 51
    iget-boolean v0, p0, Lorg/catrobat/catroid/ui/recyclerview/dialog/textwatcher/DialogInputWatcher;->allowEmptyInput:Z

    if-nez v0, :cond_1

    .line 52
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/dialog/textwatcher/DialogInputWatcher;->positiveButton:Landroid/widget/Button;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 54
    :cond_1
    return-void
.end method
