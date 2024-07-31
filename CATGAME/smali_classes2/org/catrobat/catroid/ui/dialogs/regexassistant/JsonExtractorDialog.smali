.class public Lorg/catrobat/catroid/ui/dialogs/regexassistant/JsonExtractorDialog;
.super Lorg/catrobat/catroid/ui/dialogs/regexassistant/RegularExpressionFeature;
.source "JsonExtractorDialog.java"


# instance fields
.field private fragmentManager:Landroidx/fragment/app/FragmentManager;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/FragmentManager;)V
    .locals 1
    .param p1, "fragmentManager"    # Landroidx/fragment/app/FragmentManager;

    .line 43
    invoke-direct {p0}, Lorg/catrobat/catroid/ui/dialogs/regexassistant/RegularExpressionFeature;-><init>()V

    .line 44
    const v0, 0x7f1203bc

    iput v0, p0, Lorg/catrobat/catroid/ui/dialogs/regexassistant/JsonExtractorDialog;->titleId:I

    .line 45
    iput-object p1, p0, Lorg/catrobat/catroid/ui/dialogs/regexassistant/JsonExtractorDialog;->fragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 46
    return-void
.end method

.method static synthetic access$000(Lorg/catrobat/catroid/ui/dialogs/regexassistant/JsonExtractorDialog;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lorg/catrobat/catroid/ui/dialogs/regexassistant/JsonExtractorDialog;
    .param p1, "x1"    # Ljava/lang/String;

    .line 41
    invoke-direct {p0, p1}, Lorg/catrobat/catroid/ui/dialogs/regexassistant/JsonExtractorDialog;->outputText(Ljava/lang/String;)V

    return-void
.end method

.method private getFormulaEditorFragment()Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;
    .locals 3

    .line 78
    const/4 v0, 0x0

    .line 79
    .local v0, "formulaEditorFragment":Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;
    iget-object v1, p0, Lorg/catrobat/catroid/ui/dialogs/regexassistant/JsonExtractorDialog;->fragmentManager:Landroidx/fragment/app/FragmentManager;

    if-eqz v1, :cond_0

    .line 80
    sget-object v2, Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;->FORMULA_EDITOR_FRAGMENT_TAG:Ljava/lang/String;

    .line 81
    invoke-virtual {v1, v2}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;

    .line 83
    :cond_0
    return-object v0
.end method

.method private outputText(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .line 87
    invoke-direct {p0}, Lorg/catrobat/catroid/ui/dialogs/regexassistant/JsonExtractorDialog;->getFormulaEditorFragment()Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;

    move-result-object v0

    .line 88
    .local v0, "formulaEditorFragment":Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;
    if-eqz v0, :cond_0

    .line 89
    invoke-virtual {v0, p1}, Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;->addString(Ljava/lang/String;)V

    .line 91
    :cond_0
    return-void
.end method


# virtual methods
.method public createDialog(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 52
    new-instance v0, Lorg/catrobat/catroid/ui/recyclerview/dialog/TextInputDialog$Builder;

    invoke-direct {v0, p1}, Lorg/catrobat/catroid/ui/recyclerview/dialog/TextInputDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 54
    .local v0, "builder":Lorg/catrobat/catroid/ui/recyclerview/dialog/TextInputDialog$Builder;
    const v1, 0x7f0d014a

    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/ui/recyclerview/dialog/TextInputDialog$Builder;->setView(I)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 55
    const v1, 0x7f1203bc

    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/ui/recyclerview/dialog/TextInputDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 56
    const v1, 0x7f1201b8

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/catrobat/catroid/ui/recyclerview/dialog/TextInputDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 57
    const v1, 0x7f120519

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/ui/recyclerview/dialog/TextInputDialog$Builder;->setHint(Ljava/lang/String;)Lorg/catrobat/catroid/ui/recyclerview/dialog/TextInputDialog$Builder;

    .line 58
    new-instance v1, Lorg/catrobat/catroid/ui/dialogs/regexassistant/JsonExtractorDialog$1;

    invoke-direct {v1, p0}, Lorg/catrobat/catroid/ui/dialogs/regexassistant/JsonExtractorDialog$1;-><init>(Lorg/catrobat/catroid/ui/dialogs/regexassistant/JsonExtractorDialog;)V

    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/ui/recyclerview/dialog/TextInputDialog$Builder;->setTextWatcher(Lorg/catrobat/catroid/ui/recyclerview/dialog/textwatcher/InputWatcher$TextWatcher;)Lorg/catrobat/catroid/ui/recyclerview/dialog/TextInputDialog$Builder;

    .line 65
    new-instance v1, Lorg/catrobat/catroid/ui/dialogs/regexassistant/JsonExtractorDialog$2;

    invoke-direct {v1, p0}, Lorg/catrobat/catroid/ui/dialogs/regexassistant/JsonExtractorDialog$2;-><init>(Lorg/catrobat/catroid/ui/dialogs/regexassistant/JsonExtractorDialog;)V

    const v2, 0x7f1205ff

    invoke-virtual {v0, v2, v1}, Lorg/catrobat/catroid/ui/recyclerview/dialog/TextInputDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 75
    invoke-virtual {v0}, Lorg/catrobat/catroid/ui/recyclerview/dialog/TextInputDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    .line 76
    return-void
.end method

.method public openDialog(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 49
    invoke-virtual {p0, p1}, Lorg/catrobat/catroid/ui/dialogs/regexassistant/JsonExtractorDialog;->createDialog(Landroid/content/Context;)V

    .line 50
    return-void
.end method
