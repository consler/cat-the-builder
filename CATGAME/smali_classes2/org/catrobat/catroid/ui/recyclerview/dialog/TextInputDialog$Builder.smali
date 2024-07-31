.class public Lorg/catrobat/catroid/ui/recyclerview/dialog/TextInputDialog$Builder;
.super Landroidx/appcompat/app/AlertDialog$Builder;
.source "TextInputDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/catrobat/catroid/ui/recyclerview/dialog/TextInputDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private hint:Ljava/lang/String;

.field private text:Ljava/lang/String;

.field private textWatcher:Lorg/catrobat/catroid/ui/recyclerview/dialog/textwatcher/InputWatcher$TextWatcher;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 60
    invoke-direct {p0, p1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 61
    const v0, 0x7f0d0152

    invoke-virtual {p0, v0}, Lorg/catrobat/catroid/ui/recyclerview/dialog/TextInputDialog$Builder;->setView(I)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 62
    return-void
.end method

.method static synthetic lambda$setPositiveButton$0(Lorg/catrobat/catroid/ui/recyclerview/dialog/TextInputDialog$OnClickListener;Landroid/content/DialogInterface;I)V
    .locals 2
    .param p0, "listener"    # Lorg/catrobat/catroid/ui/recyclerview/dialog/TextInputDialog$OnClickListener;
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .line 81
    move-object v0, p1

    check-cast v0, Landroid/app/Dialog;

    const v1, 0x7f0a03ea

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textfield/TextInputLayout;

    .line 82
    .local v0, "textInputLayout":Lcom/google/android/material/textfield/TextInputLayout;
    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 83
    .local v1, "text":Ljava/lang/String;
    invoke-interface {p0, p1, v1}, Lorg/catrobat/catroid/ui/recyclerview/dialog/TextInputDialog$OnClickListener;->onPositiveButtonClick(Landroid/content/DialogInterface;Ljava/lang/String;)V

    .line 84
    return-void
.end method


# virtual methods
.method public create()Landroidx/appcompat/app/AlertDialog;
    .locals 2

    .line 90
    invoke-super {p0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    .line 92
    .local v0, "alertDialog":Landroidx/appcompat/app/AlertDialog;
    new-instance v1, Lorg/catrobat/catroid/ui/recyclerview/dialog/-$$Lambda$TextInputDialog$Builder$Qdf9wjuRmkCFy1oAZldnh6teJCQ;

    invoke-direct {v1, p0, v0}, Lorg/catrobat/catroid/ui/recyclerview/dialog/-$$Lambda$TextInputDialog$Builder$Qdf9wjuRmkCFy1oAZldnh6teJCQ;-><init>(Lorg/catrobat/catroid/ui/recyclerview/dialog/TextInputDialog$Builder;Landroidx/appcompat/app/AlertDialog;)V

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 108
    return-object v0
.end method

.method public createUniqueNameProvider(I)Lorg/catrobat/catroid/ui/recyclerview/util/UniqueNameProvider;
    .locals 1
    .param p1, "stringID"    # I

    .line 113
    const v0, 0x7f120241

    if-eq p1, v0, :cond_1

    const v0, 0x7f120253

    if-eq p1, v0, :cond_0

    .line 131
    new-instance v0, Lorg/catrobat/catroid/ui/recyclerview/util/UniqueNameProvider;

    invoke-direct {v0}, Lorg/catrobat/catroid/ui/recyclerview/util/UniqueNameProvider;-><init>()V

    .local v0, "uniqueNameProvider":Lorg/catrobat/catroid/ui/recyclerview/util/UniqueNameProvider;
    goto :goto_0

    .line 123
    .end local v0    # "uniqueNameProvider":Lorg/catrobat/catroid/ui/recyclerview/util/UniqueNameProvider;
    :cond_0
    new-instance v0, Lorg/catrobat/catroid/ui/recyclerview/dialog/TextInputDialog$Builder$2;

    invoke-direct {v0, p0}, Lorg/catrobat/catroid/ui/recyclerview/dialog/TextInputDialog$Builder$2;-><init>(Lorg/catrobat/catroid/ui/recyclerview/dialog/TextInputDialog$Builder;)V

    .line 129
    .restart local v0    # "uniqueNameProvider":Lorg/catrobat/catroid/ui/recyclerview/util/UniqueNameProvider;
    goto :goto_0

    .line 115
    .end local v0    # "uniqueNameProvider":Lorg/catrobat/catroid/ui/recyclerview/util/UniqueNameProvider;
    :cond_1
    new-instance v0, Lorg/catrobat/catroid/ui/recyclerview/dialog/TextInputDialog$Builder$1;

    invoke-direct {v0, p0}, Lorg/catrobat/catroid/ui/recyclerview/dialog/TextInputDialog$Builder$1;-><init>(Lorg/catrobat/catroid/ui/recyclerview/dialog/TextInputDialog$Builder;)V

    .line 121
    .restart local v0    # "uniqueNameProvider":Lorg/catrobat/catroid/ui/recyclerview/util/UniqueNameProvider;
    nop

    .line 133
    :goto_0
    return-object v0
.end method

.method public synthetic lambda$create$1$TextInputDialog$Builder(Landroidx/appcompat/app/AlertDialog;Landroid/content/DialogInterface;)V
    .locals 4
    .param p1, "alertDialog"    # Landroidx/appcompat/app/AlertDialog;
    .param p2, "dialog"    # Landroid/content/DialogInterface;

    .line 93
    const v0, 0x7f0a03ea

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textfield/TextInputLayout;

    .line 94
    .local v0, "textInputLayout":Lcom/google/android/material/textfield/TextInputLayout;
    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    .line 95
    .local v1, "editText":Landroid/widget/EditText;
    iget-object v2, p0, Lorg/catrobat/catroid/ui/recyclerview/dialog/TextInputDialog$Builder;->hint:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/google/android/material/textfield/TextInputLayout;->setHint(Ljava/lang/CharSequence;)V

    .line 97
    iget-object v2, p0, Lorg/catrobat/catroid/ui/recyclerview/dialog/TextInputDialog$Builder;->textWatcher:Lorg/catrobat/catroid/ui/recyclerview/dialog/textwatcher/InputWatcher$TextWatcher;

    if-eqz v2, :cond_0

    .line 98
    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v2

    iget-object v3, p0, Lorg/catrobat/catroid/ui/recyclerview/dialog/TextInputDialog$Builder;->textWatcher:Lorg/catrobat/catroid/ui/recyclerview/dialog/textwatcher/InputWatcher$TextWatcher;

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 99
    iget-object v2, p0, Lorg/catrobat/catroid/ui/recyclerview/dialog/TextInputDialog$Builder;->textWatcher:Lorg/catrobat/catroid/ui/recyclerview/dialog/textwatcher/InputWatcher$TextWatcher;

    invoke-virtual {v2, v0}, Lorg/catrobat/catroid/ui/recyclerview/dialog/textwatcher/InputWatcher$TextWatcher;->setInputLayout(Lcom/google/android/material/textfield/TextInputLayout;)V

    .line 100
    iget-object v2, p0, Lorg/catrobat/catroid/ui/recyclerview/dialog/TextInputDialog$Builder;->textWatcher:Lorg/catrobat/catroid/ui/recyclerview/dialog/textwatcher/InputWatcher$TextWatcher;

    const/4 v3, -0x1

    invoke-virtual {p1, v3}, Landroidx/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/catrobat/catroid/ui/recyclerview/dialog/textwatcher/InputWatcher$TextWatcher;->setButton(Landroid/widget/Button;)V

    .line 101
    iget-object v2, p0, Lorg/catrobat/catroid/ui/recyclerview/dialog/TextInputDialog$Builder;->textWatcher:Lorg/catrobat/catroid/ui/recyclerview/dialog/textwatcher/InputWatcher$TextWatcher;

    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/recyclerview/dialog/TextInputDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/catrobat/catroid/ui/recyclerview/dialog/textwatcher/InputWatcher$TextWatcher;->setContext(Landroid/content/Context;)V

    .line 104
    :cond_0
    iget-object v2, p0, Lorg/catrobat/catroid/ui/recyclerview/dialog/TextInputDialog$Builder;->text:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 105
    invoke-virtual {v1}, Landroid/widget/EditText;->selectAll()V

    .line 106
    invoke-static {v1}, Lorg/catrobat/catroid/ui/ViewUtils;->showKeyboard(Landroid/view/View;)V

    .line 107
    return-void
.end method

.method public setHint(Ljava/lang/String;)Lorg/catrobat/catroid/ui/recyclerview/dialog/TextInputDialog$Builder;
    .locals 0
    .param p1, "hint"    # Ljava/lang/String;

    .line 65
    iput-object p1, p0, Lorg/catrobat/catroid/ui/recyclerview/dialog/TextInputDialog$Builder;->hint:Ljava/lang/String;

    .line 66
    return-object p0
.end method

.method public setPositiveButton(Ljava/lang/String;Lorg/catrobat/catroid/ui/recyclerview/dialog/TextInputDialog$OnClickListener;)Lorg/catrobat/catroid/ui/recyclerview/dialog/TextInputDialog$Builder;
    .locals 1
    .param p1, "buttonText"    # Ljava/lang/String;
    .param p2, "listener"    # Lorg/catrobat/catroid/ui/recyclerview/dialog/TextInputDialog$OnClickListener;

    .line 80
    new-instance v0, Lorg/catrobat/catroid/ui/recyclerview/dialog/-$$Lambda$TextInputDialog$Builder$AlnwiicSs8peqdWprSQu8TGYYmA;

    invoke-direct {v0, p2}, Lorg/catrobat/catroid/ui/recyclerview/dialog/-$$Lambda$TextInputDialog$Builder$AlnwiicSs8peqdWprSQu8TGYYmA;-><init>(Lorg/catrobat/catroid/ui/recyclerview/dialog/TextInputDialog$OnClickListener;)V

    invoke-virtual {p0, p1, v0}, Lorg/catrobat/catroid/ui/recyclerview/dialog/TextInputDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 85
    return-object p0
.end method

.method public setText(Ljava/lang/String;)Lorg/catrobat/catroid/ui/recyclerview/dialog/TextInputDialog$Builder;
    .locals 0
    .param p1, "text"    # Ljava/lang/String;

    .line 70
    iput-object p1, p0, Lorg/catrobat/catroid/ui/recyclerview/dialog/TextInputDialog$Builder;->text:Ljava/lang/String;

    .line 71
    return-object p0
.end method

.method public setTextWatcher(Lorg/catrobat/catroid/ui/recyclerview/dialog/textwatcher/InputWatcher$TextWatcher;)Lorg/catrobat/catroid/ui/recyclerview/dialog/TextInputDialog$Builder;
    .locals 0
    .param p1, "textWatcher"    # Lorg/catrobat/catroid/ui/recyclerview/dialog/textwatcher/InputWatcher$TextWatcher;

    .line 75
    iput-object p1, p0, Lorg/catrobat/catroid/ui/recyclerview/dialog/TextInputDialog$Builder;->textWatcher:Lorg/catrobat/catroid/ui/recyclerview/dialog/textwatcher/InputWatcher$TextWatcher;

    .line 76
    return-object p0
.end method
