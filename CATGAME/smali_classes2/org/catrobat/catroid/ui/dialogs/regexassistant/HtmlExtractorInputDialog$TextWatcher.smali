.class public abstract Lorg/catrobat/catroid/ui/dialogs/regexassistant/HtmlExtractorInputDialog$TextWatcher;
.super Ljava/lang/Object;
.source "HtmlExtractorInputDialog.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/catrobat/catroid/ui/dialogs/regexassistant/HtmlExtractorInputDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "TextWatcher"
.end annotation


# instance fields
.field private alertDialog:Landroidx/appcompat/app/AlertDialog;

.field private inputLayout:Lcom/google/android/material/textfield/TextInputLayout;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lorg/catrobat/catroid/ui/dialogs/regexassistant/HtmlExtractorInputDialog$TextWatcher;Lcom/google/android/material/textfield/TextInputLayout;)V
    .locals 0
    .param p0, "x0"    # Lorg/catrobat/catroid/ui/dialogs/regexassistant/HtmlExtractorInputDialog$TextWatcher;
    .param p1, "x1"    # Lcom/google/android/material/textfield/TextInputLayout;

    .line 161
    invoke-direct {p0, p1}, Lorg/catrobat/catroid/ui/dialogs/regexassistant/HtmlExtractorInputDialog$TextWatcher;->setInputLayout(Lcom/google/android/material/textfield/TextInputLayout;)V

    return-void
.end method

.method static synthetic access$100(Lorg/catrobat/catroid/ui/dialogs/regexassistant/HtmlExtractorInputDialog$TextWatcher;Landroidx/appcompat/app/AlertDialog;)V
    .locals 0
    .param p0, "x0"    # Lorg/catrobat/catroid/ui/dialogs/regexassistant/HtmlExtractorInputDialog$TextWatcher;
    .param p1, "x1"    # Landroidx/appcompat/app/AlertDialog;

    .line 161
    invoke-direct {p0, p1}, Lorg/catrobat/catroid/ui/dialogs/regexassistant/HtmlExtractorInputDialog$TextWatcher;->setAlertDialog(Landroidx/appcompat/app/AlertDialog;)V

    return-void
.end method

.method private setAlertDialog(Landroidx/appcompat/app/AlertDialog;)V
    .locals 0
    .param p1, "alertDialog"    # Landroidx/appcompat/app/AlertDialog;

    .line 171
    iput-object p1, p0, Lorg/catrobat/catroid/ui/dialogs/regexassistant/HtmlExtractorInputDialog$TextWatcher;->alertDialog:Landroidx/appcompat/app/AlertDialog;

    .line 172
    return-void
.end method

.method private setInputLayout(Lcom/google/android/material/textfield/TextInputLayout;)V
    .locals 0
    .param p1, "inputLayout"    # Lcom/google/android/material/textfield/TextInputLayout;

    .line 167
    iput-object p1, p0, Lorg/catrobat/catroid/ui/dialogs/regexassistant/HtmlExtractorInputDialog$TextWatcher;->inputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    .line 168
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 4
    .param p1, "s"    # Landroid/text/Editable;

    .line 184
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 185
    .local v0, "input":Ljava/lang/String;
    iget-object v1, p0, Lorg/catrobat/catroid/ui/dialogs/regexassistant/HtmlExtractorInputDialog$TextWatcher;->alertDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {v1}, Landroidx/appcompat/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/catrobat/catroid/ui/dialogs/regexassistant/HtmlExtractorInputDialog$TextWatcher;->validateInput(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 186
    .local v1, "error":Ljava/lang/String;
    iget-object v2, p0, Lorg/catrobat/catroid/ui/dialogs/regexassistant/HtmlExtractorInputDialog$TextWatcher;->inputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v2, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 187
    iget-object v2, p0, Lorg/catrobat/catroid/ui/dialogs/regexassistant/HtmlExtractorInputDialog$TextWatcher;->alertDialog:Landroidx/appcompat/app/AlertDialog;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroidx/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v2

    if-nez v1, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v2, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 188
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .line 176
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .line 180
    return-void
.end method

.method public abstract validateInput(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
.end method
