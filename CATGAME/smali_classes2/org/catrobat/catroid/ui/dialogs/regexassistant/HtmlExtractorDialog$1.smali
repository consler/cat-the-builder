.class Lorg/catrobat/catroid/ui/dialogs/regexassistant/HtmlExtractorDialog$1;
.super Ljava/lang/Object;
.source "HtmlExtractorDialog.java"

# interfaces
.implements Lorg/catrobat/catroid/ui/dialogs/regexassistant/HtmlExtractorInputDialog$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/catrobat/catroid/ui/dialogs/regexassistant/HtmlExtractorDialog;->openDialog(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/catrobat/catroid/ui/dialogs/regexassistant/HtmlExtractorDialog;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lorg/catrobat/catroid/ui/dialogs/regexassistant/HtmlExtractorDialog;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lorg/catrobat/catroid/ui/dialogs/regexassistant/HtmlExtractorDialog;

    .line 47
    iput-object p1, p0, Lorg/catrobat/catroid/ui/dialogs/regexassistant/HtmlExtractorDialog$1;->this$0:Lorg/catrobat/catroid/ui/dialogs/regexassistant/HtmlExtractorDialog;

    iput-object p2, p0, Lorg/catrobat/catroid/ui/dialogs/regexassistant/HtmlExtractorDialog$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPositiveButtonClick(Landroid/content/DialogInterface;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "keywordInput"    # Ljava/lang/String;
    .param p3, "htmlInput"    # Ljava/lang/String;

    .line 50
    new-instance v0, Lorg/catrobat/catroid/utils/HtmlRegexExtractor;

    iget-object v1, p0, Lorg/catrobat/catroid/ui/dialogs/regexassistant/HtmlExtractorDialog$1;->val$context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lorg/catrobat/catroid/utils/HtmlRegexExtractor;-><init>(Landroid/content/Context;)V

    .line 51
    .local v0, "htmlRegexExt":Lorg/catrobat/catroid/utils/HtmlRegexExtractor;
    iget-object v1, p0, Lorg/catrobat/catroid/ui/dialogs/regexassistant/HtmlExtractorDialog$1;->this$0:Lorg/catrobat/catroid/ui/dialogs/regexassistant/HtmlExtractorDialog;

    invoke-virtual {v0, p2, p3}, Lorg/catrobat/catroid/utils/HtmlRegexExtractor;->searchKeyword(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/catrobat/catroid/ui/dialogs/regexassistant/HtmlExtractorDialog;->access$000(Lorg/catrobat/catroid/ui/dialogs/regexassistant/HtmlExtractorDialog;Ljava/lang/String;)V

    .line 52
    return-void
.end method
