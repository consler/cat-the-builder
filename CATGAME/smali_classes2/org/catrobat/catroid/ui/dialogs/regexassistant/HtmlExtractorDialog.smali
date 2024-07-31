.class public Lorg/catrobat/catroid/ui/dialogs/regexassistant/HtmlExtractorDialog;
.super Lorg/catrobat/catroid/ui/dialogs/regexassistant/RegularExpressionFeature;
.source "HtmlExtractorDialog.java"


# instance fields
.field private fragmentManager:Landroidx/fragment/app/FragmentManager;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/FragmentManager;)V
    .locals 1
    .param p1, "fragmentManager"    # Landroidx/fragment/app/FragmentManager;

    .line 38
    invoke-direct {p0}, Lorg/catrobat/catroid/ui/dialogs/regexassistant/RegularExpressionFeature;-><init>()V

    .line 39
    const v0, 0x7f12041d

    iput v0, p0, Lorg/catrobat/catroid/ui/dialogs/regexassistant/HtmlExtractorDialog;->titleId:I

    .line 40
    iput-object p1, p0, Lorg/catrobat/catroid/ui/dialogs/regexassistant/HtmlExtractorDialog;->fragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 41
    return-void
.end method

.method static synthetic access$000(Lorg/catrobat/catroid/ui/dialogs/regexassistant/HtmlExtractorDialog;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lorg/catrobat/catroid/ui/dialogs/regexassistant/HtmlExtractorDialog;
    .param p1, "x1"    # Ljava/lang/String;

    .line 35
    invoke-direct {p0, p1}, Lorg/catrobat/catroid/ui/dialogs/regexassistant/HtmlExtractorDialog;->outputText(Ljava/lang/String;)V

    return-void
.end method

.method private getFormulaEditorFragment()Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;
    .locals 3

    .line 60
    const/4 v0, 0x0

    .line 61
    .local v0, "formulaEditorFragment":Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;
    iget-object v1, p0, Lorg/catrobat/catroid/ui/dialogs/regexassistant/HtmlExtractorDialog;->fragmentManager:Landroidx/fragment/app/FragmentManager;

    if-eqz v1, :cond_0

    .line 62
    sget-object v2, Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;->FORMULA_EDITOR_FRAGMENT_TAG:Ljava/lang/String;

    .line 63
    invoke-virtual {v1, v2}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;

    .line 65
    :cond_0
    return-object v0
.end method

.method private outputText(Ljava/lang/String;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/String;

    .line 69
    invoke-direct {p0}, Lorg/catrobat/catroid/ui/dialogs/regexassistant/HtmlExtractorDialog;->getFormulaEditorFragment()Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;

    move-result-object v0

    .line 70
    .local v0, "formulaEditorFragment":Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;
    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 71
    invoke-virtual {v0, p1}, Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;->addString(Ljava/lang/String;)V

    .line 73
    :cond_0
    return-void
.end method


# virtual methods
.method public openDialog(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 44
    new-instance v0, Lorg/catrobat/catroid/ui/dialogs/regexassistant/HtmlExtractorInputDialog$Builder;

    invoke-direct {v0, p1}, Lorg/catrobat/catroid/ui/dialogs/regexassistant/HtmlExtractorInputDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 45
    .local v0, "builder":Lorg/catrobat/catroid/ui/dialogs/regexassistant/HtmlExtractorInputDialog$Builder;
    const v1, 0x7f120519

    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/ui/dialogs/regexassistant/HtmlExtractorInputDialog$Builder;->setKeywordHint(I)Lorg/catrobat/catroid/ui/dialogs/regexassistant/HtmlExtractorInputDialog$Builder;

    .line 46
    const v1, 0x7f120503

    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/ui/dialogs/regexassistant/HtmlExtractorInputDialog$Builder;->setHtmlHint(I)Lorg/catrobat/catroid/ui/dialogs/regexassistant/HtmlExtractorInputDialog$Builder;

    .line 47
    new-instance v1, Lorg/catrobat/catroid/ui/dialogs/regexassistant/HtmlExtractorDialog$1;

    invoke-direct {v1, p0, p1}, Lorg/catrobat/catroid/ui/dialogs/regexassistant/HtmlExtractorDialog$1;-><init>(Lorg/catrobat/catroid/ui/dialogs/regexassistant/HtmlExtractorDialog;Landroid/content/Context;)V

    const v2, 0x7f1205ff

    invoke-virtual {v0, v2, v1}, Lorg/catrobat/catroid/ui/dialogs/regexassistant/HtmlExtractorInputDialog$Builder;->setPositiveButton(ILorg/catrobat/catroid/ui/dialogs/regexassistant/HtmlExtractorInputDialog$OnClickListener;)Lorg/catrobat/catroid/ui/dialogs/regexassistant/HtmlExtractorInputDialog$Builder;

    .line 54
    const v1, 0x7f12041d

    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/ui/dialogs/regexassistant/HtmlExtractorInputDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 55
    const v1, 0x7f1201b8

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/catrobat/catroid/ui/dialogs/regexassistant/HtmlExtractorInputDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 56
    invoke-virtual {v0}, Lorg/catrobat/catroid/ui/dialogs/regexassistant/HtmlExtractorInputDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    .line 57
    return-void
.end method
