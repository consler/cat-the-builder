.class Lorg/catrobat/catroid/ui/dialogs/regexassistant/HtmlExtractorInputDialog$Builder$1;
.super Ljava/lang/Object;
.source "HtmlExtractorInputDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/catrobat/catroid/ui/dialogs/regexassistant/HtmlExtractorInputDialog$Builder;->setPositiveButton(Ljava/lang/String;Lorg/catrobat/catroid/ui/dialogs/regexassistant/HtmlExtractorInputDialog$OnClickListener;)Lorg/catrobat/catroid/ui/dialogs/regexassistant/HtmlExtractorInputDialog$Builder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/catrobat/catroid/ui/dialogs/regexassistant/HtmlExtractorInputDialog$Builder;

.field final synthetic val$listener:Lorg/catrobat/catroid/ui/dialogs/regexassistant/HtmlExtractorInputDialog$OnClickListener;


# direct methods
.method constructor <init>(Lorg/catrobat/catroid/ui/dialogs/regexassistant/HtmlExtractorInputDialog$Builder;Lorg/catrobat/catroid/ui/dialogs/regexassistant/HtmlExtractorInputDialog$OnClickListener;)V
    .locals 0
    .param p1, "this$0"    # Lorg/catrobat/catroid/ui/dialogs/regexassistant/HtmlExtractorInputDialog$Builder;

    .line 98
    iput-object p1, p0, Lorg/catrobat/catroid/ui/dialogs/regexassistant/HtmlExtractorInputDialog$Builder$1;->this$0:Lorg/catrobat/catroid/ui/dialogs/regexassistant/HtmlExtractorInputDialog$Builder;

    iput-object p2, p0, Lorg/catrobat/catroid/ui/dialogs/regexassistant/HtmlExtractorInputDialog$Builder$1;->val$listener:Lorg/catrobat/catroid/ui/dialogs/regexassistant/HtmlExtractorInputDialog$OnClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .line 102
    move-object v0, p1

    check-cast v0, Landroid/app/Dialog;

    const v1, 0x7f0a03ea

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textfield/TextInputLayout;

    .line 103
    .local v0, "textInputLayout":Lcom/google/android/material/textfield/TextInputLayout;
    move-object v1, p1

    check-cast v1, Landroid/app/Dialog;

    const v2, 0x7f0a03eb

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/textfield/TextInputLayout;

    .line 105
    .local v1, "textInputLayout1":Lcom/google/android/material/textfield/TextInputLayout;
    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 106
    .local v2, "text":Ljava/lang/String;
    invoke-virtual {v1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 108
    .local v3, "text1":Ljava/lang/String;
    iget-object v4, p0, Lorg/catrobat/catroid/ui/dialogs/regexassistant/HtmlExtractorInputDialog$Builder$1;->val$listener:Lorg/catrobat/catroid/ui/dialogs/regexassistant/HtmlExtractorInputDialog$OnClickListener;

    invoke-interface {v4, p1, v2, v3}, Lorg/catrobat/catroid/ui/dialogs/regexassistant/HtmlExtractorInputDialog$OnClickListener;->onPositiveButtonClick(Landroid/content/DialogInterface;Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    return-void
.end method
