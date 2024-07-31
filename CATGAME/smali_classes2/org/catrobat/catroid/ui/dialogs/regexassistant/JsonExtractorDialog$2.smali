.class Lorg/catrobat/catroid/ui/dialogs/regexassistant/JsonExtractorDialog$2;
.super Ljava/lang/Object;
.source "JsonExtractorDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/catrobat/catroid/ui/dialogs/regexassistant/JsonExtractorDialog;->createDialog(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/catrobat/catroid/ui/dialogs/regexassistant/JsonExtractorDialog;


# direct methods
.method constructor <init>(Lorg/catrobat/catroid/ui/dialogs/regexassistant/JsonExtractorDialog;)V
    .locals 0
    .param p1, "this$0"    # Lorg/catrobat/catroid/ui/dialogs/regexassistant/JsonExtractorDialog;

    .line 65
    iput-object p1, p0, Lorg/catrobat/catroid/ui/dialogs/regexassistant/JsonExtractorDialog$2;->this$0:Lorg/catrobat/catroid/ui/dialogs/regexassistant/JsonExtractorDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .line 68
    move-object v0, p1

    check-cast v0, Landroid/app/Dialog;

    const v1, 0x7f0a03ea

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textfield/TextInputLayout;

    .line 69
    .local v0, "textInputLayout":Lcom/google/android/material/textfield/TextInputLayout;
    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 70
    .local v1, "input":Ljava/lang/String;
    invoke-static {v1}, Lorg/catrobat/catroid/utils/JsonRegexExtractor;->getJsonParserRegex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 71
    .local v2, "regex":Ljava/lang/String;
    iget-object v3, p0, Lorg/catrobat/catroid/ui/dialogs/regexassistant/JsonExtractorDialog$2;->this$0:Lorg/catrobat/catroid/ui/dialogs/regexassistant/JsonExtractorDialog;

    invoke-static {v3, v2}, Lorg/catrobat/catroid/ui/dialogs/regexassistant/JsonExtractorDialog;->access$000(Lorg/catrobat/catroid/ui/dialogs/regexassistant/JsonExtractorDialog;Ljava/lang/String;)V

    .line 72
    return-void
.end method
