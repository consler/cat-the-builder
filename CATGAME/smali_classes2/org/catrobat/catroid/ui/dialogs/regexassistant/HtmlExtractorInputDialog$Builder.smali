.class public Lorg/catrobat/catroid/ui/dialogs/regexassistant/HtmlExtractorInputDialog$Builder;
.super Landroidx/appcompat/app/AlertDialog$Builder;
.source "HtmlExtractorInputDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/catrobat/catroid/ui/dialogs/regexassistant/HtmlExtractorInputDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private htmlHint:Ljava/lang/String;

.field private htmlText:Ljava/lang/String;

.field private keyword:Ljava/lang/String;

.field private keywordHint:Ljava/lang/String;

.field private textWatcherHtml:Lorg/catrobat/catroid/ui/dialogs/regexassistant/HtmlExtractorInputDialog$TextWatcherHtml;

.field private textWatcherKeyword:Lorg/catrobat/catroid/ui/dialogs/regexassistant/HtmlExtractorInputDialog$TextWatcher;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 62
    invoke-direct {p0, p1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 63
    const v0, 0x7f0d0149

    invoke-virtual {p0, v0}, Lorg/catrobat/catroid/ui/dialogs/regexassistant/HtmlExtractorInputDialog$Builder;->setView(I)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 64
    return-void
.end method


# virtual methods
.method public create()Landroidx/appcompat/app/AlertDialog;
    .locals 2

    .line 121
    invoke-super {p0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    .line 123
    .local v0, "alertDialog":Landroidx/appcompat/app/AlertDialog;
    new-instance v1, Lorg/catrobat/catroid/ui/dialogs/regexassistant/-$$Lambda$HtmlExtractorInputDialog$Builder$3yxFXDtccF_As2-T_Pgq5-pqu0A;

    invoke-direct {v1, p0, v0}, Lorg/catrobat/catroid/ui/dialogs/regexassistant/-$$Lambda$HtmlExtractorInputDialog$Builder$3yxFXDtccF_As2-T_Pgq5-pqu0A;-><init>(Lorg/catrobat/catroid/ui/dialogs/regexassistant/HtmlExtractorInputDialog$Builder;Landroidx/appcompat/app/AlertDialog;)V

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 157
    return-object v0
.end method

.method public synthetic lambda$create$0$HtmlExtractorInputDialog$Builder(Landroidx/appcompat/app/AlertDialog;Landroid/content/DialogInterface;)V
    .locals 8
    .param p1, "alertDialog"    # Landroidx/appcompat/app/AlertDialog;
    .param p2, "dialog"    # Landroid/content/DialogInterface;

    .line 124
    const v0, 0x7f0a03ea

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textfield/TextInputLayout;

    .line 125
    .local v0, "textInputLayout":Lcom/google/android/material/textfield/TextInputLayout;
    iget-object v1, p0, Lorg/catrobat/catroid/ui/dialogs/regexassistant/HtmlExtractorInputDialog$Builder;->keywordHint:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setHint(Ljava/lang/CharSequence;)V

    .line 126
    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    iget-object v2, p0, Lorg/catrobat/catroid/ui/dialogs/regexassistant/HtmlExtractorInputDialog$Builder;->keyword:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 127
    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->selectAll()V

    .line 129
    const v1, 0x7f0a03eb

    invoke-virtual {p1, v1}, Landroidx/appcompat/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/textfield/TextInputLayout;

    .line 130
    .local v1, "textInputLayout1":Lcom/google/android/material/textfield/TextInputLayout;
    iget-object v2, p0, Lorg/catrobat/catroid/ui/dialogs/regexassistant/HtmlExtractorInputDialog$Builder;->htmlHint:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/google/android/material/textfield/TextInputLayout;->setHint(Ljava/lang/CharSequence;)V

    .line 131
    invoke-virtual {v1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v2

    iget-object v3, p0, Lorg/catrobat/catroid/ui/dialogs/regexassistant/HtmlExtractorInputDialog$Builder;->htmlText:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 132
    invoke-virtual {v1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->selectAll()V

    .line 134
    iget-object v2, p0, Lorg/catrobat/catroid/ui/dialogs/regexassistant/HtmlExtractorInputDialog$Builder;->textWatcherKeyword:Lorg/catrobat/catroid/ui/dialogs/regexassistant/HtmlExtractorInputDialog$TextWatcher;

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, -0x1

    if-eqz v2, :cond_1

    .line 135
    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v2

    iget-object v6, p0, Lorg/catrobat/catroid/ui/dialogs/regexassistant/HtmlExtractorInputDialog$Builder;->textWatcherKeyword:Lorg/catrobat/catroid/ui/dialogs/regexassistant/HtmlExtractorInputDialog$TextWatcher;

    invoke-virtual {v2, v6}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 136
    iget-object v2, p0, Lorg/catrobat/catroid/ui/dialogs/regexassistant/HtmlExtractorInputDialog$Builder;->textWatcherKeyword:Lorg/catrobat/catroid/ui/dialogs/regexassistant/HtmlExtractorInputDialog$TextWatcher;

    invoke-static {v2, v0}, Lorg/catrobat/catroid/ui/dialogs/regexassistant/HtmlExtractorInputDialog$TextWatcher;->access$000(Lorg/catrobat/catroid/ui/dialogs/regexassistant/HtmlExtractorInputDialog$TextWatcher;Lcom/google/android/material/textfield/TextInputLayout;)V

    .line 137
    iget-object v2, p0, Lorg/catrobat/catroid/ui/dialogs/regexassistant/HtmlExtractorInputDialog$Builder;->textWatcherKeyword:Lorg/catrobat/catroid/ui/dialogs/regexassistant/HtmlExtractorInputDialog$TextWatcher;

    invoke-static {v2, p1}, Lorg/catrobat/catroid/ui/dialogs/regexassistant/HtmlExtractorInputDialog$TextWatcher;->access$100(Lorg/catrobat/catroid/ui/dialogs/regexassistant/HtmlExtractorInputDialog$TextWatcher;Landroidx/appcompat/app/AlertDialog;)V

    .line 138
    iget-object v2, p0, Lorg/catrobat/catroid/ui/dialogs/regexassistant/HtmlExtractorInputDialog$Builder;->textWatcherKeyword:Lorg/catrobat/catroid/ui/dialogs/regexassistant/HtmlExtractorInputDialog$TextWatcher;

    .line 139
    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/dialogs/regexassistant/HtmlExtractorInputDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Lorg/catrobat/catroid/ui/dialogs/regexassistant/HtmlExtractorInputDialog$TextWatcher;->validateInput(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 141
    .local v2, "error":Ljava/lang/String;
    invoke-virtual {p1, v5}, Landroidx/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v6

    if-nez v2, :cond_0

    move v7, v3

    goto :goto_0

    :cond_0
    move v7, v4

    :goto_0
    invoke-virtual {v6, v7}, Landroid/widget/Button;->setEnabled(Z)V

    .line 144
    .end local v2    # "error":Ljava/lang/String;
    :cond_1
    iget-object v2, p0, Lorg/catrobat/catroid/ui/dialogs/regexassistant/HtmlExtractorInputDialog$Builder;->textWatcherHtml:Lorg/catrobat/catroid/ui/dialogs/regexassistant/HtmlExtractorInputDialog$TextWatcherHtml;

    if-eqz v2, :cond_3

    .line 145
    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v2

    iget-object v6, p0, Lorg/catrobat/catroid/ui/dialogs/regexassistant/HtmlExtractorInputDialog$Builder;->textWatcherHtml:Lorg/catrobat/catroid/ui/dialogs/regexassistant/HtmlExtractorInputDialog$TextWatcherHtml;

    invoke-virtual {v2, v6}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 146
    iget-object v2, p0, Lorg/catrobat/catroid/ui/dialogs/regexassistant/HtmlExtractorInputDialog$Builder;->textWatcherHtml:Lorg/catrobat/catroid/ui/dialogs/regexassistant/HtmlExtractorInputDialog$TextWatcherHtml;

    invoke-static {v2, v1}, Lorg/catrobat/catroid/ui/dialogs/regexassistant/HtmlExtractorInputDialog$TextWatcherHtml;->access$200(Lorg/catrobat/catroid/ui/dialogs/regexassistant/HtmlExtractorInputDialog$TextWatcherHtml;Lcom/google/android/material/textfield/TextInputLayout;)V

    .line 147
    iget-object v2, p0, Lorg/catrobat/catroid/ui/dialogs/regexassistant/HtmlExtractorInputDialog$Builder;->textWatcherHtml:Lorg/catrobat/catroid/ui/dialogs/regexassistant/HtmlExtractorInputDialog$TextWatcherHtml;

    invoke-static {v2, p1}, Lorg/catrobat/catroid/ui/dialogs/regexassistant/HtmlExtractorInputDialog$TextWatcherHtml;->access$300(Lorg/catrobat/catroid/ui/dialogs/regexassistant/HtmlExtractorInputDialog$TextWatcherHtml;Landroidx/appcompat/app/AlertDialog;)V

    .line 148
    iget-object v2, p0, Lorg/catrobat/catroid/ui/dialogs/regexassistant/HtmlExtractorInputDialog$Builder;->textWatcherHtml:Lorg/catrobat/catroid/ui/dialogs/regexassistant/HtmlExtractorInputDialog$TextWatcherHtml;

    .line 149
    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/dialogs/regexassistant/HtmlExtractorInputDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Lorg/catrobat/catroid/ui/dialogs/regexassistant/HtmlExtractorInputDialog$TextWatcherHtml;->validateInput(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 151
    .restart local v2    # "error":Ljava/lang/String;
    invoke-virtual {p1, v5}, Landroidx/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v5

    if-nez v2, :cond_2

    goto :goto_1

    :cond_2
    move v3, v4

    :goto_1
    invoke-virtual {v5, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 154
    .end local v2    # "error":Ljava/lang/String;
    :cond_3
    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v2

    invoke-static {v2}, Lorg/catrobat/catroid/ui/ViewUtils;->showKeyboard(Landroid/view/View;)V

    .line 155
    return-void
.end method

.method public setHtmlHint(I)Lorg/catrobat/catroid/ui/dialogs/regexassistant/HtmlExtractorInputDialog$Builder;
    .locals 1
    .param p1, "id"    # I

    .line 87
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/dialogs/regexassistant/HtmlExtractorInputDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/catrobat/catroid/ui/dialogs/regexassistant/HtmlExtractorInputDialog$Builder;->setHtmlHint(Ljava/lang/String;)Lorg/catrobat/catroid/ui/dialogs/regexassistant/HtmlExtractorInputDialog$Builder;

    .line 88
    return-object p0
.end method

.method public setHtmlHint(Ljava/lang/String;)Lorg/catrobat/catroid/ui/dialogs/regexassistant/HtmlExtractorInputDialog$Builder;
    .locals 0
    .param p1, "htmlHint"    # Ljava/lang/String;

    .line 82
    iput-object p1, p0, Lorg/catrobat/catroid/ui/dialogs/regexassistant/HtmlExtractorInputDialog$Builder;->htmlHint:Ljava/lang/String;

    .line 83
    return-object p0
.end method

.method public setHtmlText(Ljava/lang/String;)Lorg/catrobat/catroid/ui/dialogs/regexassistant/HtmlExtractorInputDialog$Builder;
    .locals 0
    .param p1, "htmlText"    # Ljava/lang/String;

    .line 92
    iput-object p1, p0, Lorg/catrobat/catroid/ui/dialogs/regexassistant/HtmlExtractorInputDialog$Builder;->htmlText:Ljava/lang/String;

    .line 93
    return-object p0
.end method

.method public setKeyword(Ljava/lang/String;)Lorg/catrobat/catroid/ui/dialogs/regexassistant/HtmlExtractorInputDialog$Builder;
    .locals 0
    .param p1, "keyword"    # Ljava/lang/String;

    .line 77
    iput-object p1, p0, Lorg/catrobat/catroid/ui/dialogs/regexassistant/HtmlExtractorInputDialog$Builder;->keyword:Ljava/lang/String;

    .line 78
    return-object p0
.end method

.method public setKeywordHint(I)Lorg/catrobat/catroid/ui/dialogs/regexassistant/HtmlExtractorInputDialog$Builder;
    .locals 1
    .param p1, "id"    # I

    .line 72
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/dialogs/regexassistant/HtmlExtractorInputDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/catrobat/catroid/ui/dialogs/regexassistant/HtmlExtractorInputDialog$Builder;->setKeywordHint(Ljava/lang/String;)Lorg/catrobat/catroid/ui/dialogs/regexassistant/HtmlExtractorInputDialog$Builder;

    .line 73
    return-object p0
.end method

.method public setKeywordHint(Ljava/lang/String;)Lorg/catrobat/catroid/ui/dialogs/regexassistant/HtmlExtractorInputDialog$Builder;
    .locals 0
    .param p1, "keywordHint"    # Ljava/lang/String;

    .line 67
    iput-object p1, p0, Lorg/catrobat/catroid/ui/dialogs/regexassistant/HtmlExtractorInputDialog$Builder;->keywordHint:Ljava/lang/String;

    .line 68
    return-object p0
.end method

.method public setPositiveButton(ILorg/catrobat/catroid/ui/dialogs/regexassistant/HtmlExtractorInputDialog$OnClickListener;)Lorg/catrobat/catroid/ui/dialogs/regexassistant/HtmlExtractorInputDialog$Builder;
    .locals 1
    .param p1, "id"    # I
    .param p2, "listener"    # Lorg/catrobat/catroid/ui/dialogs/regexassistant/HtmlExtractorInputDialog$OnClickListener;

    .line 116
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/dialogs/regexassistant/HtmlExtractorInputDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lorg/catrobat/catroid/ui/dialogs/regexassistant/HtmlExtractorInputDialog$Builder;->setPositiveButton(Ljava/lang/String;Lorg/catrobat/catroid/ui/dialogs/regexassistant/HtmlExtractorInputDialog$OnClickListener;)Lorg/catrobat/catroid/ui/dialogs/regexassistant/HtmlExtractorInputDialog$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setPositiveButton(Ljava/lang/String;Lorg/catrobat/catroid/ui/dialogs/regexassistant/HtmlExtractorInputDialog$OnClickListener;)Lorg/catrobat/catroid/ui/dialogs/regexassistant/HtmlExtractorInputDialog$Builder;
    .locals 1
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "listener"    # Lorg/catrobat/catroid/ui/dialogs/regexassistant/HtmlExtractorInputDialog$OnClickListener;

    .line 98
    new-instance v0, Lorg/catrobat/catroid/ui/dialogs/regexassistant/HtmlExtractorInputDialog$Builder$1;

    invoke-direct {v0, p0, p2}, Lorg/catrobat/catroid/ui/dialogs/regexassistant/HtmlExtractorInputDialog$Builder$1;-><init>(Lorg/catrobat/catroid/ui/dialogs/regexassistant/HtmlExtractorInputDialog$Builder;Lorg/catrobat/catroid/ui/dialogs/regexassistant/HtmlExtractorInputDialog$OnClickListener;)V

    invoke-virtual {p0, p1, v0}, Lorg/catrobat/catroid/ui/dialogs/regexassistant/HtmlExtractorInputDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 111
    return-object p0
.end method
