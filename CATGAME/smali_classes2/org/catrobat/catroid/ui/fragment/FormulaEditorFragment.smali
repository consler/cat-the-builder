.class public Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;
.super Landroidx/fragment/app/Fragment;
.source "FormulaEditorFragment.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
.implements Lorg/catrobat/catroid/ui/recyclerview/fragment/DataListFragment$FormulaEditorDataInterface;


# static fields
.field public static final DO_NOT_SHOW_WARNING:Ljava/lang/String; = "DO_NOT_SHOW_WARNING"

.field public static final FORMULA_BRICK_BUNDLE_ARGUMENT:Ljava/lang/String; = "formula_brick"

.field public static final FORMULA_EDITOR_FRAGMENT_TAG:Ljava/lang/String;

.field public static final FORMULA_FIELD_BUNDLE_ARGUMENT:Ljava/lang/String; = "formula_field"

.field public static final REQUEST_GPS:I = 0x1

.field public static final REQUEST_PERMISSIONS_COMPUTE_DIALOG:I = 0x2bd

.field private static final SET_FORMULA_ON_CREATE_VIEW:I = 0x0

.field private static final SET_FORMULA_ON_RETURN_FROM_COLOR_PICKER:I = 0x3

.field private static final SET_FORMULA_ON_RETURN_FROM_VISUAL_PLACEMENT:I = 0x2

.field private static final SET_FORMULA_ON_SWITCH_EDIT_TEXT:I = 0x1

.field public static final TAG:Ljava/lang/String;

.field private static final TIME_WINDOW:I = 0x7d0

.field private static currentFormula:Lorg/catrobat/catroid/formulaeditor/Formula;

.field private static currentFormulaField:Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;


# instance fields
.field private actionBarTitleBuffer:Ljava/lang/String;

.field private chosenCategoryItem:Lorg/catrobat/catroid/ui/recyclerview/adapter/CategoryListRVAdapter$CategoryListItem;

.field private chosenUserDataItem:Lorg/catrobat/catroid/formulaeditor/UserData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/catrobat/catroid/formulaeditor/UserData<",
            "*>;"
        }
    .end annotation
.end field

.field private confirmSwitchEditTextCounter:I

.field private confirmSwitchEditTextTimeStamp:[J

.field private currentMenu:Landroid/view/Menu;

.field private formulaBrick:Lorg/catrobat/catroid/content/bricks/FormulaBrick;

.field private formulaEditorBrick:Landroid/widget/LinearLayout;

.field private formulaEditorEditText:Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;

.field private formulaEditorKeyboard:Landroid/widget/TableLayout;

.field private hasFormulaBeenChanged:Z

.field private showCustomView:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 124
    const-class v0, Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;->TAG:Ljava/lang/String;

    .line 134
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;->FORMULA_EDITOR_FRAGMENT_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 121
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 149
    const/4 v0, 0x2

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    iput-object v0, p0, Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;->confirmSwitchEditTextTimeStamp:[J

    .line 150
    const/4 v0, 0x0

    iput v0, p0, Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;->confirmSwitchEditTextCounter:I

    .line 151
    iput-boolean v0, p0, Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;->hasFormulaBeenChanged:Z

    .line 153
    const-string v1, ""

    iput-object v1, p0, Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;->actionBarTitleBuffer:Ljava/lang/String;

    .line 155
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;->chosenCategoryItem:Lorg/catrobat/catroid/ui/recyclerview/adapter/CategoryListRVAdapter$CategoryListItem;

    .line 156
    iput-object v1, p0, Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;->chosenUserDataItem:Lorg/catrobat/catroid/formulaeditor/UserData;

    .line 227
    iput-boolean v0, p0, Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;->showCustomView:Z

    return-void

    :array_0
    .array-data 8
        0x0
        0x0
    .end array-data
.end method

.method static synthetic access$100(Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;)Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;
    .locals 1
    .param p0, "x0"    # Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;

    .line 121
    iget-object v0, p0, Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;->formulaEditorEditText:Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;

    return-object v0
.end method

.method static synthetic access$200(Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;)V
    .locals 0
    .param p0, "x0"    # Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;

    .line 121
    invoke-direct {p0}, Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;->showComputeDialog()V

    return-void
.end method

.method static synthetic access$300(Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;Ljava/lang/String;I)V
    .locals 0
    .param p0, "x0"    # Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I

    .line 121
    invoke-direct {p0, p1, p2}, Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;->showCategoryListFragment(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$400(Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;)V
    .locals 0
    .param p0, "x0"    # Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;

    .line 121
    invoke-direct {p0}, Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;->showDataFragment()V

    return-void
.end method

.method static synthetic access$500(Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;)Z
    .locals 1
    .param p0, "x0"    # Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;

    .line 121
    invoke-direct {p0}, Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;->isSelectedTextFirstParamOfRegularExpression()Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;)V
    .locals 0
    .param p0, "x0"    # Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;

    .line 121
    invoke-direct {p0}, Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;->showNewRegexAssistantDialog()V

    return-void
.end method

.method static synthetic access$700(Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;)V
    .locals 0
    .param p0, "x0"    # Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;

    .line 121
    invoke-direct {p0}, Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;->showNewStringDialog()V

    return-void
.end method

.method static synthetic access$800(Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;Landroid/view/View;)V
    .locals 0
    .param p0, "x0"    # Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;
    .param p1, "x1"    # Landroid/view/View;

    .line 121
    invoke-direct {p0, p1}, Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;->showColorPickerDialog(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$900(Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;)Lorg/catrobat/catroid/content/Scope;
    .locals 1
    .param p0, "x0"    # Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;

    .line 121
    invoke-direct {p0}, Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;->generateScope()Lorg/catrobat/catroid/content/Scope;

    move-result-object v0

    return-object v0
.end method

.method private checkReturnWithoutSaving(I)Z
    .locals 8
    .param p1, "errorType"    # I

    .line 859
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;->confirmSwitchEditTextTimeStamp:[J

    const/4 v3, 0x0

    aget-wide v4, v2, v3

    const-wide/16 v6, 0x7d0

    add-long/2addr v4, v6

    cmp-long v0, v0, v4

    if-gtz v0, :cond_0

    iget v0, p0, Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;->confirmSwitchEditTextCounter:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 861
    const-wide/16 v4, 0x0

    aput-wide v4, v2, v3

    .line 862
    aput-wide v4, v2, v1

    .line 863
    iput v3, p0, Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;->confirmSwitchEditTextCounter:I

    .line 864
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const v2, 0x7f12034c

    invoke-static {v0, v2}, Lorg/catrobat/catroid/utils/ToastUtil;->showSuccess(Landroid/content/Context;I)V

    .line 865
    return v1

    .line 867
    :cond_0
    const/4 v0, -0x3

    if-eq p1, v0, :cond_2

    const/4 v0, -0x2

    if-eq p1, v0, :cond_1

    goto :goto_0

    .line 872
    :cond_1
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f120416

    invoke-static {v0, v1}, Lorg/catrobat/catroid/utils/ToastUtil;->showError(Landroid/content/Context;I)V

    goto :goto_0

    .line 869
    :cond_2
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f120415

    invoke-static {v0, v1}, Lorg/catrobat/catroid/utils/ToastUtil;->showError(Landroid/content/Context;I)V

    .line 870
    nop

    .line 875
    :goto_0
    return v3
.end method

.method private convertUserDefinedBrickInputToUserVariable(Lorg/catrobat/catroid/userbrick/UserDefinedBrickInput;)Lorg/catrobat/catroid/formulaeditor/UserVariable;
    .locals 5
    .param p1, "input"    # Lorg/catrobat/catroid/userbrick/UserDefinedBrickInput;

    .line 822
    new-instance v0, Lorg/catrobat/catroid/formulaeditor/UserVariable;

    .line 823
    invoke-virtual {p1}, Lorg/catrobat/catroid/userbrick/UserDefinedBrickInput;->getName()Ljava/lang/String;

    move-result-object v1

    .line 824
    invoke-virtual {p1}, Lorg/catrobat/catroid/userbrick/UserDefinedBrickInput;->getValue()Lorg/catrobat/catroid/formulaeditor/Formula;

    move-result-object v2

    new-instance v3, Lorg/catrobat/catroid/utils/ShowTextUtils$AndroidStringProvider;

    .line 825
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/catrobat/catroid/utils/ShowTextUtils$AndroidStringProvider;-><init>(Landroid/content/Context;)V

    .line 824
    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lorg/catrobat/catroid/formulaeditor/Formula;->getUserFriendlyString(Lorg/catrobat/catroid/formulaeditor/Formula$StringProvider;Lorg/catrobat/catroid/content/Scope;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/catrobat/catroid/formulaeditor/UserVariable;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 822
    return-object v0
.end method

.method private generateScope()Lorg/catrobat/catroid/content/Scope;
    .locals 10

    .line 802
    invoke-static {}, Lorg/catrobat/catroid/ProjectManager;->getInstance()Lorg/catrobat/catroid/ProjectManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/catrobat/catroid/ProjectManager;->getCurrentProject()Lorg/catrobat/catroid/content/Project;

    move-result-object v0

    .line 803
    .local v0, "project":Lorg/catrobat/catroid/content/Project;
    invoke-static {}, Lorg/catrobat/catroid/ProjectManager;->getInstance()Lorg/catrobat/catroid/ProjectManager;

    move-result-object v1

    invoke-virtual {v1}, Lorg/catrobat/catroid/ProjectManager;->getCurrentSprite()Lorg/catrobat/catroid/content/Sprite;

    move-result-object v1

    .line 804
    .local v1, "sprite":Lorg/catrobat/catroid/content/Sprite;
    const/4 v2, 0x0

    .line 805
    .local v2, "sequence":Lorg/catrobat/catroid/content/actions/ScriptSequenceAction;
    iget-object v3, p0, Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;->formulaBrick:Lorg/catrobat/catroid/content/bricks/FormulaBrick;

    invoke-virtual {v3}, Lorg/catrobat/catroid/content/bricks/FormulaBrick;->getScript()Lorg/catrobat/catroid/content/Script;

    move-result-object v3

    .line 806
    .local v3, "script":Lorg/catrobat/catroid/content/Script;
    instance-of v4, v3, Lorg/catrobat/catroid/content/UserDefinedScript;

    if-eqz v4, :cond_1

    .line 807
    invoke-virtual {v3}, Lorg/catrobat/catroid/content/Script;->getScriptBrick()Lorg/catrobat/catroid/content/bricks/ScriptBrick;

    move-result-object v4

    check-cast v4, Lorg/catrobat/catroid/content/bricks/UserDefinedReceiverBrick;

    .line 808
    .local v4, "brick":Lorg/catrobat/catroid/content/bricks/UserDefinedReceiverBrick;
    nop

    .line 809
    invoke-virtual {v4}, Lorg/catrobat/catroid/content/bricks/UserDefinedReceiverBrick;->getUserDefinedBrick()Lorg/catrobat/catroid/content/bricks/UserDefinedBrick;

    move-result-object v5

    invoke-virtual {v5}, Lorg/catrobat/catroid/content/bricks/UserDefinedBrick;->getUserDefinedBrickInputs()Ljava/util/List;

    move-result-object v5

    .line 810
    .local v5, "inputs":Ljava/util/List;, "Ljava/util/List<Lorg/catrobat/catroid/userbrick/UserDefinedBrickInput;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 811
    .local v6, "inputNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/catrobat/catroid/userbrick/UserDefinedBrickInput;

    .line 812
    .local v8, "input":Lorg/catrobat/catroid/userbrick/UserDefinedBrickInput;
    invoke-direct {p0, v8}, Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;->convertUserDefinedBrickInputToUserVariable(Lorg/catrobat/catroid/userbrick/UserDefinedBrickInput;)Lorg/catrobat/catroid/formulaeditor/UserVariable;

    move-result-object v9

    invoke-interface {v6, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 813
    .end local v8    # "input":Lorg/catrobat/catroid/userbrick/UserDefinedBrickInput;
    goto :goto_0

    .line 815
    :cond_0
    new-instance v7, Lorg/catrobat/catroid/content/actions/ScriptSequenceAction;

    invoke-direct {v7, v3}, Lorg/catrobat/catroid/content/actions/ScriptSequenceAction;-><init>(Lorg/catrobat/catroid/content/Script;)V

    move-object v2, v7

    .line 816
    invoke-virtual {v2}, Lorg/catrobat/catroid/content/actions/ScriptSequenceAction;->getScript()Lorg/catrobat/catroid/content/Script;

    move-result-object v7

    check-cast v7, Lorg/catrobat/catroid/content/UserDefinedScript;

    check-cast v7, Lorg/catrobat/catroid/content/UserDefinedScript;

    invoke-virtual {v7, v6}, Lorg/catrobat/catroid/content/UserDefinedScript;->setUserDefinedBrickInputs(Ljava/util/List;)V

    .line 818
    .end local v4    # "brick":Lorg/catrobat/catroid/content/bricks/UserDefinedReceiverBrick;
    .end local v5    # "inputs":Ljava/util/List;, "Ljava/util/List<Lorg/catrobat/catroid/userbrick/UserDefinedBrickInput;>;"
    .end local v6    # "inputNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :cond_1
    new-instance v4, Lorg/catrobat/catroid/content/Scope;

    invoke-direct {v4, v0, v1, v2}, Lorg/catrobat/catroid/content/Scope;-><init>(Lorg/catrobat/catroid/content/Project;Lorg/catrobat/catroid/content/Sprite;Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;)V

    return-object v4
.end method

.method private hasFileChanged()Z
    .locals 5

    .line 880
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lorg/catrobat/catroid/ProjectManager;->getInstance()Lorg/catrobat/catroid/ProjectManager;

    move-result-object v1

    invoke-virtual {v1}, Lorg/catrobat/catroid/ProjectManager;->getCurrentProject()Lorg/catrobat/catroid/content/Project;

    move-result-object v1

    invoke-virtual {v1}, Lorg/catrobat/catroid/content/Project;->getDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "code.xml"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 881
    .local v0, "currentCodeFile":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    invoke-static {}, Lorg/catrobat/catroid/ProjectManager;->getInstance()Lorg/catrobat/catroid/ProjectManager;

    move-result-object v2

    invoke-virtual {v2}, Lorg/catrobat/catroid/ProjectManager;->getCurrentProject()Lorg/catrobat/catroid/content/Project;

    move-result-object v2

    invoke-virtual {v2}, Lorg/catrobat/catroid/content/Project;->getDirectory()Ljava/io/File;

    move-result-object v2

    const-string v3, "undo_code.xml"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 883
    .local v1, "undoCodeFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 885
    :try_start_0
    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-static {v0, v2}, Lcom/google/common/io/Files;->readLines(Ljava/io/File;Ljava/nio/charset/Charset;)Ljava/util/List;

    move-result-object v2

    .line 886
    .local v2, "currentFile":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-static {v1, v3}, Lcom/google/common/io/Files;->readLines(Ljava/io/File;Ljava/nio/charset/Charset;)Ljava/util/List;

    move-result-object v3

    .line 888
    .local v3, "undoFile":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    xor-int/lit8 v4, v4, 0x1

    return v4

    .line 889
    .end local v2    # "currentFile":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v3    # "undoFile":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_0
    move-exception v2

    .line 890
    .local v2, "exception":Ljava/io/IOException;
    sget-object v3, Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;->TAG:Ljava/lang/String;

    const-string v4, "Comparing project files failed."

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 894
    .end local v2    # "exception":Ljava/io/IOException;
    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method private isSelectedTextFirstParamOfRegularExpression()Z
    .locals 1

    .line 518
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;->getFormulaEditorEditText()Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;

    move-result-object v0

    invoke-virtual {v0}, Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;->isSelectedTokenFirstParamOfRegularExpression()Z

    move-result v0

    return v0
.end method

.method private onUserDismiss()V
    .locals 2

    .line 269
    sget-object v0, Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;->currentFormula:Lorg/catrobat/catroid/formulaeditor/Formula;

    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/formulaeditor/Formula;->getTrimmedFormulaString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;->refreshFormulaPreviewString(Ljava/lang/String;)V

    .line 270
    iget-object v0, p0, Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;->formulaEditorEditText:Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;

    invoke-virtual {v0}, Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;->endEdit()V

    .line 271
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->popBackStack()V

    .line 272
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 273
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lorg/catrobat/catroid/ui/BottomBar;->showBottomBar(Landroid/app/Activity;)V

    .line 274
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lorg/catrobat/catroid/ui/BottomBar;->showPlayButton(Landroid/app/Activity;)V

    .line 276
    :cond_0
    return-void
.end method

.method private openAssistantDialog()V
    .locals 3

    .line 541
    new-instance v0, Lorg/catrobat/catroid/ui/dialogs/regexassistant/RegularExpressionAssistantDialog;

    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/catrobat/catroid/ui/dialogs/regexassistant/RegularExpressionAssistantDialog;-><init>(Landroid/content/Context;Landroidx/fragment/app/FragmentManager;)V

    invoke-virtual {v0}, Lorg/catrobat/catroid/ui/dialogs/regexassistant/RegularExpressionAssistantDialog;->createAssistant()V

    .line 542
    return-void
.end method

.method private saveValidFormula(Lorg/catrobat/catroid/formulaeditor/FormulaElement;)Z
    .locals 1
    .param p1, "formulaElement"    # Lorg/catrobat/catroid/formulaeditor/FormulaElement;

    .line 852
    sget-object v0, Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;->currentFormula:Lorg/catrobat/catroid/formulaeditor/Formula;

    invoke-virtual {v0, p1}, Lorg/catrobat/catroid/formulaeditor/Formula;->setRoot(Lorg/catrobat/catroid/formulaeditor/FormulaElement;)V

    .line 853
    iget-object v0, p0, Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;->formulaEditorEditText:Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;

    invoke-virtual {v0}, Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;->formulaSaved()V

    .line 854
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;->hasFormulaBeenChanged:Z

    .line 855
    return v0
.end method

.method private showCategoryListFragment(Ljava/lang/String;I)V
    .locals 5
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "actionbarResId"    # I

    .line 939
    new-instance v0, Lorg/catrobat/catroid/ui/recyclerview/fragment/CategoryListFragment;

    invoke-direct {v0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/CategoryListFragment;-><init>()V

    .line 940
    .local v0, "fragment":Lorg/catrobat/catroid/ui/recyclerview/fragment/CategoryListFragment;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 941
    .local v1, "bundle":Landroid/os/Bundle;
    nop

    .line 942
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroidx/fragment/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 941
    const-string v3, "actionBarTitle"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 943
    const-string v2, "fragmentTag"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 944
    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/ui/recyclerview/fragment/CategoryListFragment;->setArguments(Landroid/os/Bundle;)V

    .line 945
    iget-object v2, p0, Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;->currentMenu:Landroid/view/Menu;

    invoke-virtual {v0, v2}, Lorg/catrobat/catroid/ui/recyclerview/fragment/CategoryListFragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 947
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v2

    .line 948
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v3

    sget-object v4, Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;->FORMULA_EDITOR_FRAGMENT_TAG:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/fragment/app/FragmentTransaction;->hide(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v2

    .line 949
    const v3, 0x7f0a03b7

    invoke-virtual {v2, v3, v0, p1}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v2

    .line 950
    invoke-virtual {v2, p1}, Landroidx/fragment/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v2

    .line 951
    invoke-virtual {v2}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    .line 952
    return-void
.end method

.method private showColorPicker(Lorg/catrobat/catroid/content/strategy/ShowFormulaEditorStrategy$Callback;Landroidx/fragment/app/FragmentManager;)V
    .locals 5
    .param p1, "callback"    # Lorg/catrobat/catroid/content/strategy/ShowFormulaEditorStrategy$Callback;
    .param p2, "fragmentManager"    # Landroidx/fragment/app/FragmentManager;

    .line 418
    invoke-interface {p1}, Lorg/catrobat/catroid/content/strategy/ShowFormulaEditorStrategy$Callback;->getValue()I

    move-result v0

    .line 419
    .local v0, "currentColor":I
    sget-object v1, Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog;->Companion:Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog$Companion;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2, v2}, Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog$Companion;->newInstance(IZZ)Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog;

    move-result-object v1

    .line 422
    .local v1, "dialog":Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog;
    invoke-static {}, Lorg/catrobat/catroid/ProjectManager;->getInstance()Lorg/catrobat/catroid/ProjectManager;

    move-result-object v2

    invoke-static {v2}, Lorg/catrobat/catroid/utils/ProjectManagerExtensionsKt;->getProjectBitmap(Lorg/catrobat/catroid/ProjectManager;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 423
    .local v2, "projectBitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v1, v2}, Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 424
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lorg/catrobat/catroid/ui/fragment/-$$Lambda$GZOvFV0Fyj4_E50AhcYN8XqlH0U;

    invoke-direct {v3, p1}, Lorg/catrobat/catroid/ui/fragment/-$$Lambda$GZOvFV0Fyj4_E50AhcYN8XqlH0U;-><init>(Lorg/catrobat/catroid/content/strategy/ShowFormulaEditorStrategy$Callback;)V

    invoke-virtual {v1, v3}, Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog;->addOnColorPickedListener(Lorg/catrobat/paintroid/colorpicker/OnColorPickedListener;)V

    .line 425
    const/4 v3, 0x0

    const v4, 0x7f130005

    invoke-virtual {v1, v3, v4}, Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog;->setStyle(II)V

    .line 426
    const/4 v3, 0x0

    invoke-virtual {v1, p2, v3}, Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 427
    return-void
.end method

.method private showColorPickerDialog(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .line 430
    invoke-static {p1}, Lorg/catrobat/catroid/ui/UiUtils;->getActivityFromView(Landroid/view/View;)Landroidx/appcompat/app/AppCompatActivity;

    move-result-object v0

    .line 431
    .local v0, "activity":Landroidx/appcompat/app/AppCompatActivity;
    if-nez v0, :cond_0

    .line 432
    return-void

    .line 434
    :cond_0
    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    .line 435
    .local v1, "fragmentManager":Landroidx/fragment/app/FragmentManager;
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->isStateSaved()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 436
    return-void

    .line 438
    :cond_1
    new-instance v2, Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment$2;

    invoke-direct {v2, p0}, Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment$2;-><init>(Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;)V

    invoke-direct {p0, v2, v1}, Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;->showColorPicker(Lorg/catrobat/catroid/content/strategy/ShowFormulaEditorStrategy$Callback;Landroidx/fragment/app/FragmentManager;)V

    .line 458
    return-void
.end method

.method private showComputeDialog()V
    .locals 12

    .line 661
    iget-object v0, p0, Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;->formulaEditorEditText:Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;

    invoke-virtual {v0}, Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;->getFormulaParser()Lorg/catrobat/catroid/formulaeditor/InternFormulaParser;

    move-result-object v0

    .line 662
    .local v0, "internFormulaParser":Lorg/catrobat/catroid/formulaeditor/InternFormulaParser;
    invoke-direct {p0}, Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;->generateScope()Lorg/catrobat/catroid/content/Scope;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/formulaeditor/InternFormulaParser;->parseFormula(Lorg/catrobat/catroid/content/Scope;)Lorg/catrobat/catroid/formulaeditor/FormulaElement;

    move-result-object v1

    .line 663
    .local v1, "formulaElement":Lorg/catrobat/catroid/formulaeditor/FormulaElement;
    if-nez v1, :cond_1

    .line 664
    invoke-virtual {v0}, Lorg/catrobat/catroid/formulaeditor/InternFormulaParser;->getErrorTokenIndex()I

    move-result v2

    if-ltz v2, :cond_0

    .line 665
    iget-object v2, p0, Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;->formulaEditorEditText:Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;

    invoke-virtual {v2}, Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;->setParseErrorCursorAndSelection()V

    .line 667
    :cond_0
    return-void

    .line 669
    :cond_1
    new-instance v2, Lorg/catrobat/catroid/content/bricks/Brick$ResourcesSet;

    invoke-direct {v2}, Lorg/catrobat/catroid/content/bricks/Brick$ResourcesSet;-><init>()V

    move-object v9, v2

    .line 670
    .local v9, "resourcesSet":Lorg/catrobat/catroid/content/bricks/Brick$ResourcesSet;
    invoke-virtual {v1, v9}, Lorg/catrobat/catroid/formulaeditor/FormulaElement;->addRequiredResources(Ljava/util/Set;)V

    .line 671
    invoke-static {v9}, Lorg/catrobat/catroid/ui/runtimepermissions/BrickResourcesToRuntimePermissions;->translate(Lorg/catrobat/catroid/content/bricks/Brick$ResourcesSet;)Ljava/util/List;

    move-result-object v10

    .line 673
    .local v10, "requiredRuntimePermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v11, Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment$3;

    const/16 v4, 0x2bd

    const v6, 0x7f120710

    move-object v2, v11

    move-object v3, p0

    move-object v5, v10

    move-object v7, v9

    move-object v8, v1

    invoke-direct/range {v2 .. v8}, Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment$3;-><init>(Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;ILjava/util/List;ILorg/catrobat/catroid/content/bricks/Brick$ResourcesSet;Lorg/catrobat/catroid/formulaeditor/FormulaElement;)V

    .line 691
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v11, v2}, Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment$3;->execute(Landroid/app/Activity;)V

    .line 692
    return-void
.end method

.method public static showCustomFragment(Landroid/content/Context;Lorg/catrobat/catroid/content/bricks/FormulaBrick;Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "formulaBrick"    # Lorg/catrobat/catroid/content/bricks/FormulaBrick;
    .param p2, "formulaField"    # Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;

    .line 234
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;->showFragment(Landroid/content/Context;Lorg/catrobat/catroid/content/bricks/FormulaBrick;Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;Z)V

    .line 235
    return-void
.end method

.method private showDataFragment()V
    .locals 5

    .line 955
    new-instance v0, Lorg/catrobat/catroid/ui/recyclerview/fragment/DataListFragment;

    invoke-direct {v0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/DataListFragment;-><init>()V

    .line 956
    .local v0, "fragment":Lorg/catrobat/catroid/ui/recyclerview/fragment/DataListFragment;
    invoke-virtual {v0, p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/DataListFragment;->setFormulaEditorDataInterface(Lorg/catrobat/catroid/ui/recyclerview/fragment/DataListFragment$FormulaEditorDataInterface;)V

    .line 958
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 959
    .local v1, "bundle":Landroid/os/Bundle;
    iget-object v2, p0, Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;->formulaBrick:Lorg/catrobat/catroid/content/bricks/FormulaBrick;

    .line 960
    invoke-virtual {v2}, Lorg/catrobat/catroid/content/bricks/FormulaBrick;->getScript()Lorg/catrobat/catroid/content/Script;

    move-result-object v2

    invoke-virtual {v2}, Lorg/catrobat/catroid/content/Script;->getScriptBrick()Lorg/catrobat/catroid/content/bricks/ScriptBrick;

    move-result-object v2

    .line 959
    const-string v3, "parent_script_brick"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 961
    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/ui/recyclerview/fragment/DataListFragment;->setArguments(Landroid/os/Bundle;)V

    .line 963
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v2

    .line 964
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v3

    sget-object v4, Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;->FORMULA_EDITOR_FRAGMENT_TAG:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/fragment/app/FragmentTransaction;->hide(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v2

    sget-object v3, Lorg/catrobat/catroid/ui/recyclerview/fragment/DataListFragment;->TAG:Ljava/lang/String;

    .line 965
    const v4, 0x7f0a03b7

    invoke-virtual {v2, v4, v0, v3}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v2

    sget-object v3, Lorg/catrobat/catroid/ui/recyclerview/fragment/DataListFragment;->TAG:Ljava/lang/String;

    .line 966
    invoke-virtual {v2, v3}, Landroidx/fragment/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v2

    .line 967
    invoke-virtual {v2}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    .line 968
    return-void
.end method

.method private showFormulaInTextWarning()V
    .locals 3

    .line 646
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 647
    const v1, 0x7f1207d1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 648
    const v1, 0x7f1207d2

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 649
    const v1, 0x7f1205ff

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lorg/catrobat/catroid/ui/fragment/-$$Lambda$FormulaEditorFragment$9jf9FsAzKZYkwK-R9XxAnN29dC8;

    invoke-direct {v1, p0}, Lorg/catrobat/catroid/ui/fragment/-$$Lambda$FormulaEditorFragment$9jf9FsAzKZYkwK-R9XxAnN29dC8;-><init>(Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;)V

    .line 650
    const v2, 0x7f120293

    invoke-virtual {v0, v2, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 656
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    .line 657
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog;->show()V

    .line 658
    return-void
.end method

.method public static showFragment(Landroid/content/Context;Lorg/catrobat/catroid/content/bricks/FormulaBrick;Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "formulaBrick"    # Lorg/catrobat/catroid/content/bricks/FormulaBrick;
    .param p2, "formulaField"    # Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;

    .line 230
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;->showFragment(Landroid/content/Context;Lorg/catrobat/catroid/content/bricks/FormulaBrick;Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;Z)V

    .line 231
    return-void
.end method

.method private static showFragment(Landroid/content/Context;Lorg/catrobat/catroid/content/bricks/FormulaBrick;Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;Z)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "formulaBrick"    # Lorg/catrobat/catroid/content/bricks/FormulaBrick;
    .param p2, "formulaField"    # Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;
    .param p3, "showCustomView"    # Z

    .line 186
    invoke-static {p0}, Lorg/catrobat/catroid/ui/UiUtils;->getActivityFromContextWrapper(Landroid/content/Context;)Landroidx/appcompat/app/AppCompatActivity;

    move-result-object v0

    .line 187
    .local v0, "activity":Landroidx/appcompat/app/AppCompatActivity;
    if-nez v0, :cond_0

    .line 188
    return-void

    .line 191
    :cond_0
    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    sget-object v2, Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;->FORMULA_EDITOR_FRAGMENT_TAG:Ljava/lang/String;

    .line 192
    invoke-virtual {v1, v2}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v1

    check-cast v1, Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;

    .line 194
    .local v1, "formulaEditorFragment":Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;
    if-nez v1, :cond_1

    .line 195
    new-instance v2, Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;

    invoke-direct {v2}, Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;-><init>()V

    move-object v1, v2

    .line 196
    iput-boolean p3, v1, Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;->showCustomView:Z

    .line 197
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 198
    .local v2, "bundle":Landroid/os/Bundle;
    const-string v3, "formula_brick"

    invoke-virtual {v2, v3, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 199
    const-string v3, "formula_field"

    invoke-virtual {v2, v3, p2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 200
    invoke-virtual {v1, v2}, Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;->setArguments(Landroid/os/Bundle;)V

    .line 202
    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v3

    const v4, 0x7f0a03b7

    sget-object v5, Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;->FORMULA_EDITOR_FRAGMENT_TAG:Ljava/lang/String;

    .line 203
    invoke-virtual {v3, v4, v1, v5}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v3

    sget-object v4, Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;->FORMULA_EDITOR_FRAGMENT_TAG:Ljava/lang/String;

    .line 204
    invoke-virtual {v3, v4}, Landroidx/fragment/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v3

    .line 205
    invoke-virtual {v3}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    .line 207
    invoke-static {v0}, Lorg/catrobat/catroid/ui/BottomBar;->hideBottomBar(Landroid/app/Activity;)V

    .line 208
    .end local v2    # "bundle":Landroid/os/Bundle;
    goto :goto_0

    .line 209
    :cond_1
    const/4 v2, 0x0

    iput-boolean v2, v1, Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;->showCustomView:Z

    .line 210
    invoke-virtual {v1}, Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;->updateBrickView()V

    .line 211
    const/4 v2, 0x1

    invoke-virtual {v1, p2, v2}, Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;->setInputFormula(Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;I)V

    .line 213
    :goto_0
    return-void
.end method

.method private showNewRegexAssistantDialog()V
    .locals 6

    .line 522
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;->getSelectedFormulaText()Ljava/lang/String;

    move-result-object v0

    .line 524
    .local v0, "selectedFormulaText":Ljava/lang/String;
    new-instance v1, Lorg/catrobat/catroid/ui/recyclerview/dialog/TextInputDialog$Builder;

    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/catrobat/catroid/ui/recyclerview/dialog/TextInputDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 526
    .local v1, "builder":Lorg/catrobat/catroid/ui/recyclerview/dialog/TextInputDialog$Builder;
    const v2, 0x7f120778

    invoke-virtual {p0, v2}, Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/catrobat/catroid/ui/recyclerview/dialog/TextInputDialog$Builder;->setHint(Ljava/lang/String;)Lorg/catrobat/catroid/ui/recyclerview/dialog/TextInputDialog$Builder;

    move-result-object v2

    .line 527
    invoke-virtual {v2, v0}, Lorg/catrobat/catroid/ui/recyclerview/dialog/TextInputDialog$Builder;->setText(Ljava/lang/String;)Lorg/catrobat/catroid/ui/recyclerview/dialog/TextInputDialog$Builder;

    move-result-object v2

    .line 528
    const v3, 0x7f1205ff

    invoke-virtual {p0, v3}, Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lorg/catrobat/catroid/ui/fragment/-$$Lambda$FormulaEditorFragment$KHbP-Mb3v6WhK39fgSbGVrt_ImI;

    invoke-direct {v4, p0}, Lorg/catrobat/catroid/ui/fragment/-$$Lambda$FormulaEditorFragment$KHbP-Mb3v6WhK39fgSbGVrt_ImI;-><init>(Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;)V

    invoke-virtual {v2, v3, v4}, Lorg/catrobat/catroid/ui/recyclerview/dialog/TextInputDialog$Builder;->setPositiveButton(Ljava/lang/String;Lorg/catrobat/catroid/ui/recyclerview/dialog/TextInputDialog$OnClickListener;)Lorg/catrobat/catroid/ui/recyclerview/dialog/TextInputDialog$Builder;

    .line 530
    const v2, 0x7f120364

    .line 532
    .local v2, "titleId":I
    new-instance v3, Lorg/catrobat/catroid/ui/fragment/-$$Lambda$FormulaEditorFragment$lYJEfixFWpImZ19v7KT8mytGj0Q;

    invoke-direct {v3, p0}, Lorg/catrobat/catroid/ui/fragment/-$$Lambda$FormulaEditorFragment$lYJEfixFWpImZ19v7KT8mytGj0Q;-><init>(Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;)V

    const v4, 0x7f12004e

    invoke-virtual {v1, v4, v3}, Lorg/catrobat/catroid/ui/recyclerview/dialog/TextInputDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 535
    invoke-virtual {v1, v2}, Lorg/catrobat/catroid/ui/recyclerview/dialog/TextInputDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v3

    .line 536
    const v4, 0x7f1201b8

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v3

    .line 537
    invoke-virtual {v3}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    .line 538
    return-void
.end method

.method private showNewStringDialog()V
    .locals 6

    .line 545
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;->getSelectedFormulaText()Ljava/lang/String;

    move-result-object v0

    .line 547
    .local v0, "selectedFormulaText":Ljava/lang/String;
    new-instance v1, Lorg/catrobat/catroid/ui/recyclerview/dialog/TextInputDialog$Builder;

    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/catrobat/catroid/ui/recyclerview/dialog/TextInputDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 549
    .local v1, "builder":Lorg/catrobat/catroid/ui/recyclerview/dialog/TextInputDialog$Builder;
    const v2, 0x7f120778

    invoke-virtual {p0, v2}, Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/catrobat/catroid/ui/recyclerview/dialog/TextInputDialog$Builder;->setHint(Ljava/lang/String;)Lorg/catrobat/catroid/ui/recyclerview/dialog/TextInputDialog$Builder;

    move-result-object v2

    .line 550
    invoke-virtual {v2, v0}, Lorg/catrobat/catroid/ui/recyclerview/dialog/TextInputDialog$Builder;->setText(Ljava/lang/String;)Lorg/catrobat/catroid/ui/recyclerview/dialog/TextInputDialog$Builder;

    move-result-object v2

    .line 551
    const v3, 0x7f1205ff

    invoke-virtual {p0, v3}, Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lorg/catrobat/catroid/ui/fragment/-$$Lambda$FormulaEditorFragment$rhYrXCzASHE6ILZ08RruOve8Wa8;

    invoke-direct {v4, p0}, Lorg/catrobat/catroid/ui/fragment/-$$Lambda$FormulaEditorFragment$rhYrXCzASHE6ILZ08RruOve8Wa8;-><init>(Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;)V

    invoke-virtual {v2, v3, v4}, Lorg/catrobat/catroid/ui/recyclerview/dialog/TextInputDialog$Builder;->setPositiveButton(Ljava/lang/String;Lorg/catrobat/catroid/ui/recyclerview/dialog/TextInputDialog$OnClickListener;)Lorg/catrobat/catroid/ui/recyclerview/dialog/TextInputDialog$Builder;

    .line 553
    if-nez v0, :cond_0

    const v2, 0x7f1203f6

    goto :goto_0

    :cond_0
    const v2, 0x7f120365

    .line 556
    .local v2, "titleId":I
    :goto_0
    invoke-virtual {v1, v2}, Lorg/catrobat/catroid/ui/recyclerview/dialog/TextInputDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f1201b8

    const/4 v5, 0x0

    .line 557
    invoke-virtual {v3, v4, v5}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v3

    .line 558
    invoke-virtual {v3}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    .line 559
    return-void
.end method

.method private stringContainsUserDefinedBrickInput(Ljava/lang/String;)Z
    .locals 4
    .param p1, "string"    # Ljava/lang/String;

    .line 633
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;->getFormulaBrick()Lorg/catrobat/catroid/content/bricks/FormulaBrick;

    move-result-object v0

    invoke-virtual {v0}, Lorg/catrobat/catroid/content/bricks/FormulaBrick;->getScript()Lorg/catrobat/catroid/content/Script;

    move-result-object v0

    invoke-virtual {v0}, Lorg/catrobat/catroid/content/Script;->getScriptBrick()Lorg/catrobat/catroid/content/bricks/ScriptBrick;

    move-result-object v0

    instance-of v0, v0, Lorg/catrobat/catroid/content/bricks/UserDefinedReceiverBrick;

    if-eqz v0, :cond_1

    .line 634
    nop

    .line 635
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;->getFormulaBrick()Lorg/catrobat/catroid/content/bricks/FormulaBrick;

    move-result-object v0

    invoke-virtual {v0}, Lorg/catrobat/catroid/content/bricks/FormulaBrick;->getScript()Lorg/catrobat/catroid/content/Script;

    move-result-object v0

    invoke-virtual {v0}, Lorg/catrobat/catroid/content/Script;->getScriptBrick()Lorg/catrobat/catroid/content/bricks/ScriptBrick;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/content/bricks/UserDefinedReceiverBrick;

    invoke-virtual {v0}, Lorg/catrobat/catroid/content/bricks/UserDefinedReceiverBrick;->getUserDefinedBrick()Lorg/catrobat/catroid/content/bricks/UserDefinedBrick;

    move-result-object v0

    invoke-virtual {v0}, Lorg/catrobat/catroid/content/bricks/UserDefinedBrick;->getUserDefinedBrickInputs()Ljava/util/List;

    move-result-object v0

    .line 636
    .local v0, "userDefinedBrickInputs":Ljava/util/List;, "Ljava/util/List<Lorg/catrobat/catroid/userbrick/UserDefinedBrickInput;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/catrobat/catroid/userbrick/UserDefinedBrickInput;

    .line 637
    .local v2, "variable":Lorg/catrobat/catroid/userbrick/UserDefinedBrickInput;
    invoke-virtual {v2}, Lorg/catrobat/catroid/userbrick/UserDefinedBrickInput;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 638
    const/4 v1, 0x1

    return v1

    .line 640
    .end local v2    # "variable":Lorg/catrobat/catroid/userbrick/UserDefinedBrickInput;
    :cond_0
    goto :goto_0

    .line 642
    .end local v0    # "userDefinedBrickInputs":Ljava/util/List;, "Ljava/util/List<Lorg/catrobat/catroid/userbrick/UserDefinedBrickInput;>;"
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private stringContainsUserList(Ljava/lang/String;Ljava/util/List;)Z
    .locals 3
    .param p1, "string"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lorg/catrobat/catroid/formulaeditor/UserList;",
            ">;)Z"
        }
    .end annotation

    .line 624
    .local p2, "userList":Ljava/util/List;, "Ljava/util/List<Lorg/catrobat/catroid/formulaeditor/UserList;>;"
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/catrobat/catroid/formulaeditor/UserList;

    .line 625
    .local v1, "list":Lorg/catrobat/catroid/formulaeditor/UserList;
    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/UserList;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 626
    const/4 v0, 0x1

    return v0

    .line 628
    .end local v1    # "list":Lorg/catrobat/catroid/formulaeditor/UserList;
    :cond_0
    goto :goto_0

    .line 629
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private stringContainsUserVariable(Ljava/lang/String;Ljava/util/List;)Z
    .locals 3
    .param p1, "string"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lorg/catrobat/catroid/formulaeditor/UserVariable;",
            ">;)Z"
        }
    .end annotation

    .line 615
    .local p2, "variableList":Ljava/util/List;, "Ljava/util/List<Lorg/catrobat/catroid/formulaeditor/UserVariable;>;"
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/catrobat/catroid/formulaeditor/UserVariable;

    .line 616
    .local v1, "variable":Lorg/catrobat/catroid/formulaeditor/UserVariable;
    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/UserVariable;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 617
    const/4 v0, 0x1

    return v0

    .line 619
    .end local v1    # "variable":Lorg/catrobat/catroid/formulaeditor/UserVariable;
    :cond_0
    goto :goto_0

    .line 620
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private toggleFormulaEditorSpace(Z)V
    .locals 8
    .param p1, "isVisible"    # Z

    .line 473
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0a03b2

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 474
    .local v0, "keyboard":Landroid/view/View;
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f0a0392

    invoke-virtual {v1, v2}, Landroidx/fragment/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 476
    .local v1, "brickAndFormula":Landroid/view/View;
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v2, v3, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 482
    .local v2, "keyboardLayoutParams":Landroid/widget/LinearLayout$LayoutParams;
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v3, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    move-object v3, v5

    .line 488
    .local v3, "formulaLayoutParams":Landroid/widget/LinearLayout$LayoutParams;
    if-eqz p1, :cond_0

    .line 489
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    const v5, 0x7f0a05ea

    invoke-virtual {v4, v5}, Landroidx/fragment/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 490
    .local v4, "row1":Landroid/view/View;
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v5

    const v6, 0x7f0a05eb

    invoke-virtual {v5, v6}, Landroidx/fragment/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 491
    .local v5, "row2":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v6

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v7

    add-int/2addr v6, v7

    .line 492
    .local v6, "rowsHeight":I
    iput v6, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 493
    neg-int v7, v6

    iput v7, v3, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 494
    .end local v4    # "row1":Landroid/view/View;
    .end local v5    # "row2":Landroid/view/View;
    .end local v6    # "rowsHeight":I
    goto :goto_0

    .line 495
    :cond_0
    const/4 v4, 0x0

    iput v4, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 496
    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 498
    :goto_0
    invoke-virtual {v1, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 499
    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 500
    return-void
.end method


# virtual methods
.method public addCollideFormulaToActiveFormula(Ljava/lang/String;)V
    .locals 2
    .param p1, "spriteName"    # Ljava/lang/String;

    .line 1015
    iget-object v0, p0, Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;->formulaEditorEditText:Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1}, Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;->handleKeyEvent(ILjava/lang/String;)V

    .line 1017
    return-void
.end method

.method public addResourceToActiveFormula(I)V
    .locals 2
    .param p1, "resource"    # I

    .line 991
    iget-object v0, p0, Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;->formulaEditorEditText:Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;

    const-string v1, ""

    invoke-virtual {v0, p1, v1}, Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;->handleKeyEvent(ILjava/lang/String;)V

    .line 992
    const v0, 0x7f12037c

    if-eq p1, v0, :cond_1

    const v0, 0x7f1203cd

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 994
    .local v0, "requiresCollisionPolygons":Z
    :goto_1
    if-eqz v0, :cond_2

    .line 995
    invoke-static {}, Lorg/catrobat/catroid/ProjectManager;->getInstance()Lorg/catrobat/catroid/ProjectManager;

    move-result-object v1

    invoke-virtual {v1}, Lorg/catrobat/catroid/ProjectManager;->getCurrentSprite()Lorg/catrobat/catroid/content/Sprite;

    move-result-object v1

    invoke-virtual {v1}, Lorg/catrobat/catroid/content/Sprite;->createCollisionPolygons()V

    .line 997
    :cond_2
    return-void
.end method

.method public addString(Ljava/lang/String;)V
    .locals 8
    .param p1, "string"    # Ljava/lang/String;

    .line 562
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;->getSelectedFormulaText()Ljava/lang/String;

    move-result-object v0

    .line 563
    .local v0, "previousString":Ljava/lang/String;
    invoke-static {}, Lorg/catrobat/catroid/ProjectManager;->getInstance()Lorg/catrobat/catroid/ProjectManager;

    move-result-object v1

    invoke-virtual {v1}, Lorg/catrobat/catroid/ProjectManager;->getCurrentProject()Lorg/catrobat/catroid/content/Project;

    move-result-object v1

    .line 564
    .local v1, "currentProject":Lorg/catrobat/catroid/content/Project;
    invoke-static {}, Lorg/catrobat/catroid/ProjectManager;->getInstance()Lorg/catrobat/catroid/ProjectManager;

    move-result-object v2

    invoke-virtual {v2}, Lorg/catrobat/catroid/ProjectManager;->getCurrentSprite()Lorg/catrobat/catroid/content/Sprite;

    move-result-object v2

    .line 565
    .local v2, "currentSprite":Lorg/catrobat/catroid/content/Sprite;
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 566
    .local v3, "context":Landroid/content/Context;
    if-eqz v3, :cond_1

    .line 567
    const/4 v4, 0x0

    .line 568
    .local v4, "doNotShowWarning":Z
    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 569
    .local v5, "preferences":Landroid/content/SharedPreferences;
    const-string v6, "DO_NOT_SHOW_WARNING"

    invoke-interface {v5, v6}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 570
    const/4 v7, 0x0

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 572
    :cond_0
    if-nez v4, :cond_1

    invoke-virtual {p0, p1, v3, v1, v2}, Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;->recognizedFormulaInText(Ljava/lang/String;Landroid/content/Context;Lorg/catrobat/catroid/content/Project;Lorg/catrobat/catroid/content/Sprite;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 573
    invoke-direct {p0}, Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;->showFormulaInTextWarning()V

    .line 576
    .end local v4    # "doNotShowWarning":Z
    .end local v5    # "preferences":Landroid/content/SharedPreferences;
    :cond_1
    if-eqz v0, :cond_2

    const-string v4, "\\s*"

    invoke-virtual {v0, v4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 577
    invoke-virtual {p0, p1}, Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;->overrideSelectedText(Ljava/lang/String;)V

    goto :goto_0

    .line 579
    :cond_2
    invoke-virtual {p0, p1}, Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;->addStringToActiveFormula(Ljava/lang/String;)V

    .line 581
    :goto_0
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;->updateButtonsOnKeyboardAndInvalidateOptionsMenu()V

    .line 582
    return-void
.end method

.method public addStringToActiveFormula(Ljava/lang/String;)V
    .locals 2
    .param p1, "string"    # Ljava/lang/String;

    .line 1020
    iget-object v0, p0, Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;->formulaEditorEditText:Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;

    const v1, 0x7f0a03b1

    invoke-virtual {v0, v1, p1}, Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;->handleKeyEvent(ILjava/lang/String;)V

    .line 1021
    return-void
.end method

.method public addUserDefinedBrickInputToActiveFormula(Ljava/lang/String;)V
    .locals 2
    .param p1, "userDefinedBrickInput"    # Ljava/lang/String;

    .line 1010
    iget-object v0, p0, Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;->formulaEditorEditText:Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;->handleKeyEvent(ILjava/lang/String;)V

    .line 1012
    return-void
.end method

.method public addUserListToActiveFormula(Ljava/lang/String;)V
    .locals 2
    .param p1, "userListName"    # Ljava/lang/String;

    .line 1000
    iget-object v0, p0, Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;->formulaEditorEditText:Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;->handleKeyEvent(ILjava/lang/String;)V

    .line 1002
    return-void
.end method

.method public addUserVariableToActiveFormula(Ljava/lang/String;)V
    .locals 2
    .param p1, "userVariableName"    # Ljava/lang/String;

    .line 1005
    iget-object v0, p0, Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;->formulaEditorEditText:Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;->handleKeyEvent(ILjava/lang/String;)V

    .line 1007
    return-void
.end method

.method public endFormulaEditor()V
    .locals 1

    .line 923
    iget-object v0, p0, Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;->formulaEditorEditText:Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;

    invoke-virtual {v0}, Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;->hasChanges()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 924
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;->saveFormulaIfPossible()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 925
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;->hasFormulaBeenChanged:Z

    .line 926
    invoke-direct {p0}, Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;->onUserDismiss()V

    goto :goto_0

    .line 929
    :cond_0
    invoke-direct {p0}, Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;->onUserDismiss()V

    .line 931
    :cond_1
    :goto_0
    return-void
.end method

.method public exitFormulaEditorFragment()V
    .locals 3

    .line 898
    iget-object v0, p0, Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;->formulaEditorEditText:Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;

    invoke-virtual {v0}, Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;->isPopupMenuVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 899
    iget-object v0, p0, Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;->formulaEditorEditText:Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;

    invoke-virtual {v0}, Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;->dismissPopupMenu()V

    .line 900
    return-void

    .line 902
    :cond_0
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/ui/SpriteActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/ui/SpriteActivity;->setUndoMenuItemVisibility(Z)V

    .line 903
    iget-boolean v0, p0, Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;->hasFormulaBeenChanged:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;->formulaEditorEditText:Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;

    invoke-virtual {v0}, Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;->hasChanges()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 904
    :cond_1
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;->saveFormulaIfPossible()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 905
    iput-boolean v1, p0, Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;->hasFormulaBeenChanged:Z

    .line 910
    :cond_2
    invoke-direct {p0}, Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;->onUserDismiss()V

    .line 912
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    sget-object v1, Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment;

    .line 914
    .local v0, "fragment":Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment;
    invoke-static {}, Lorg/catrobat/catroid/io/XstreamSerializer;->getInstance()Lorg/catrobat/catroid/io/XstreamSerializer;

    move-result-object v1

    invoke-static {}, Lorg/catrobat/catroid/ProjectManager;->getInstance()Lorg/catrobat/catroid/ProjectManager;

    move-result-object v2

    invoke-virtual {v2}, Lorg/catrobat/catroid/ProjectManager;->getCurrentProject()Lorg/catrobat/catroid/content/Project;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/catrobat/catroid/io/XstreamSerializer;->saveProject(Lorg/catrobat/catroid/content/Project;)Z

    .line 916
    invoke-direct {p0}, Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;->hasFileChanged()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment;->checkVariables()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 917
    :cond_3
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lorg/catrobat/catroid/ui/SpriteActivity;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/catrobat/catroid/ui/SpriteActivity;->setUndoMenuItemVisibility(Z)V

    .line 919
    :cond_4
    return-void

    .line 907
    .end local v0    # "fragment":Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment;
    :cond_5
    return-void
.end method

.method public getCurrentBrickField()Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;
    .locals 1

    .line 1032
    sget-object v0, Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;->currentFormulaField:Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;

    return-object v0
.end method

.method public getFormulaBrick()Lorg/catrobat/catroid/content/bricks/FormulaBrick;
    .locals 1

    .line 1028
    iget-object v0, p0, Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;->formulaBrick:Lorg/catrobat/catroid/content/bricks/FormulaBrick;

    return-object v0
.end method

.method public getFormulaEditorEditText()Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;
    .locals 1

    .line 504
    iget-object v0, p0, Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;->formulaEditorEditText:Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;

    return-object v0
.end method

.method public getIndexOfCorrespondingRegularExpression()I
    .locals 1

    .line 1089
    iget-object v0, p0, Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;->formulaEditorEditText:Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;

    invoke-virtual {v0}, Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;->getIndexOfCorrespondingRegularExpression()I

    move-result v0

    return v0
.end method

.method public getSelectedFormulaText()Ljava/lang/String;
    .locals 1

    .line 1024
    iget-object v0, p0, Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;->formulaEditorEditText:Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;

    invoke-virtual {v0}, Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;->getSelectedTextFromInternFormula()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public synthetic lambda$showFormulaInTextWarning$3$FormulaEditorFragment(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "i"    # I

    .line 651
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 652
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 653
    const-string v1, "DO_NOT_SHOW_WARNING"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 654
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 655
    return-void
.end method

.method public synthetic lambda$showNewRegexAssistantDialog$0$FormulaEditorFragment(Landroid/content/DialogInterface;Ljava/lang/String;)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "textInput"    # Ljava/lang/String;

    .line 528
    invoke-virtual {p0, p2}, Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;->addString(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic lambda$showNewRegexAssistantDialog$1$FormulaEditorFragment(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "textInput"    # I

    .line 533
    invoke-direct {p0}, Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;->openAssistantDialog()V

    return-void
.end method

.method public synthetic lambda$showNewStringDialog$2$FormulaEditorFragment(Landroid/content/DialogInterface;Ljava/lang/String;)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "textInput"    # Ljava/lang/String;

    .line 551
    invoke-virtual {p0, p2}, Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;->addString(Ljava/lang/String;)V

    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 175
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 177
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    .line 178
    .local v0, "actionBar":Landroidx/appcompat/app/ActionBar;
    invoke-virtual {v0}, Landroidx/appcompat/app/ActionBar;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;->actionBarTitleBuffer:Ljava/lang/String;

    .line 179
    const v1, 0x7f1204b1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setTitle(I)V

    .line 181
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;->setHasOptionsMenu(Z)V

    .line 182
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lorg/catrobat/catroid/ui/settingsfragments/SettingsFragment;->setToChosenLanguage(Landroid/app/Activity;)V

    .line 183
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .line 696
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    if-nez p2, :cond_0

    invoke-static {}, Lorg/catrobat/catroid/formulaeditor/SensorHandler;->gpsAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 697
    invoke-direct {p0}, Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;->showComputeDialog()V

    goto :goto_0

    .line 699
    :cond_0
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f1202e2

    invoke-static {v0, v1}, Lorg/catrobat/catroid/utils/ToastUtil;->showError(Landroid/content/Context;I)V

    .line 701
    :goto_0
    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 1098
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/content/Context;)V

    .line 1099
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lorg/catrobat/catroid/ui/SpriteActivityOnTabSelectedListenerKt;->removeTabLayout(Landroid/app/Activity;)V

    .line 1100
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 160
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 162
    const/4 v0, 0x1

    if-eqz p1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 163
    .local v1, "isRestoringPreviouslyDestroyedActivity":Z
    :goto_0
    if-eqz v1, :cond_1

    .line 164
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v2

    sget-object v3, Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;->FORMULA_EDITOR_FRAGMENT_TAG:Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Landroidx/fragment/app/FragmentManager;->popBackStack(Ljava/lang/String;I)V

    .line 165
    return-void

    .line 168
    :cond_1
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "formula_brick"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/content/bricks/FormulaBrick;

    iput-object v0, p0, Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;->formulaBrick:Lorg/catrobat/catroid/content/bricks/FormulaBrick;

    .line 169
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "formula_field"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;

    sput-object v0, Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;->currentFormulaField:Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;

    .line 170
    iget-object v2, p0, Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;->formulaBrick:Lorg/catrobat/catroid/content/bricks/FormulaBrick;

    invoke-virtual {v2, v0}, Lorg/catrobat/catroid/content/bricks/FormulaBrick;->getFormulaWithBrickField(Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;)Lorg/catrobat/catroid/formulaeditor/Formula;

    move-result-object v0

    sput-object v0, Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;->currentFormula:Lorg/catrobat/catroid/formulaeditor/Formula;

    .line 171
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .line 737
    const v0, 0x7f0e0005

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 738
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 739
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .line 280
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;->setHasOptionsMenu(Z)V

    .line 281
    const v1, 0x7f0d0161

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 282
    .local v1, "fragmentView":Landroid/view/View;
    invoke-virtual {v1, v0}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 283
    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 285
    const v0, 0x7f0a0393

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;->formulaEditorBrick:Landroid/widget/LinearLayout;

    .line 286
    const v0, 0x7f0a0396

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;

    iput-object v0, p0, Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;->formulaEditorEditText:Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;

    .line 287
    const v0, 0x7f0a03b2

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TableLayout;

    iput-object v0, p0, Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;->formulaEditorKeyboard:Landroid/widget/TableLayout;

    .line 289
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;->updateBrickView()V

    .line 291
    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 292
    sget-object v0, Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;->currentFormulaField:Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;

    invoke-virtual {p0, v0, v2}, Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;->setInputFormula(Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;I)V

    .line 294
    iget-object v0, p0, Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;->formulaEditorEditText:Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;

    invoke-virtual {v0, p0}, Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;->init(Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;)V

    .line 295
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/app/AppCompatActivity;

    .line 297
    .local v0, "activity":Landroidx/appcompat/app/AppCompatActivity;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 298
    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v2

    const v3, 0x7f1204b1

    invoke-virtual {v2, v3}, Landroidx/appcompat/app/ActionBar;->setTitle(I)V

    .line 301
    :cond_0
    return-object v1
.end method

.method public onDetach()V
    .locals 2

    .line 1104
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/catrobat/catroid/ui/SpriteActivityOnTabSelectedListenerKt;->addTabLayout(Landroid/app/Activity;I)V

    .line 1105
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDetach()V

    .line 1106
    return-void
.end method

.method public onGlobalLayout()V
    .locals 3

    .line 983
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 984
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 985
    .local v0, "brickRect":Landroid/graphics/Rect;
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 986
    .local v1, "keyboardRec":Landroid/graphics/Rect;
    iget-object v2, p0, Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;->formulaEditorBrick:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 987
    iget-object v2, p0, Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;->formulaEditorKeyboard:Landroid/widget/TableLayout;

    invoke-virtual {v2, v1}, Landroid/widget/TableLayout;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 988
    return-void
.end method

.method public onHiddenChanged(Z)V
    .locals 5
    .param p1, "hidden"    # Z

    .line 1049
    if-nez p1, :cond_6

    .line 1050
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    .line 1051
    .local v0, "actionBar":Landroidx/appcompat/app/ActionBar;
    if-nez v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 1052
    .local v1, "isRestoringPreviouslyDestroyedActivity":Z
    :goto_0
    if-nez v1, :cond_1

    .line 1053
    const v2, 0x7f1204b1

    invoke-virtual {v0, v2}, Landroidx/appcompat/app/ActionBar;->setTitle(I)V

    .line 1054
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lorg/catrobat/catroid/ui/BottomBar;->hideBottomBar(Landroid/app/Activity;)V

    .line 1055
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;->updateButtonsOnKeyboardAndInvalidateOptionsMenu()V

    .line 1056
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;->updateBrickView()V

    .line 1058
    :cond_1
    iget-object v2, p0, Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;->chosenCategoryItem:Lorg/catrobat/catroid/ui/recyclerview/adapter/CategoryListRVAdapter$CategoryListItem;

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    .line 1059
    iget v2, v2, Lorg/catrobat/catroid/ui/recyclerview/adapter/CategoryListRVAdapter$CategoryListItem;->nameResId:I

    invoke-virtual {p0, v2}, Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;->addResourceToActiveFormula(I)V

    .line 1060
    iput-object v3, p0, Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;->chosenCategoryItem:Lorg/catrobat/catroid/ui/recyclerview/adapter/CategoryListRVAdapter$CategoryListItem;

    .line 1062
    :cond_2
    iget-object v2, p0, Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;->chosenUserDataItem:Lorg/catrobat/catroid/formulaeditor/UserData;

    if-eqz v2, :cond_6

    .line 1063
    instance-of v4, v2, Lorg/catrobat/catroid/formulaeditor/UserVariable;

    if-eqz v4, :cond_3

    .line 1064
    invoke-interface {v2}, Lorg/catrobat/catroid/formulaeditor/UserData;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;->addUserVariableToActiveFormula(Ljava/lang/String;)V

    goto :goto_1

    .line 1065
    :cond_3
    instance-of v4, v2, Lorg/catrobat/catroid/formulaeditor/UserList;

    if-eqz v4, :cond_4

    .line 1066
    invoke-interface {v2}, Lorg/catrobat/catroid/formulaeditor/UserData;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;->addUserListToActiveFormula(Ljava/lang/String;)V

    goto :goto_1

    .line 1067
    :cond_4
    instance-of v4, v2, Lorg/catrobat/catroid/userbrick/UserDefinedBrickInput;

    if-eqz v4, :cond_5

    .line 1068
    invoke-interface {v2}, Lorg/catrobat/catroid/formulaeditor/UserData;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;->addUserDefinedBrickInputToActiveFormula(Ljava/lang/String;)V

    .line 1070
    :cond_5
    :goto_1
    iput-object v3, p0, Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;->chosenUserDataItem:Lorg/catrobat/catroid/formulaeditor/UserData;

    .line 1073
    .end local v0    # "actionBar":Landroidx/appcompat/app/ActionBar;
    .end local v1    # "isRestoringPreviouslyDestroyedActivity":Z
    :cond_6
    return-void
.end method

.method public onListRenamed(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "previousName"    # Ljava/lang/String;
    .param p2, "newName"    # Ljava/lang/String;

    .line 977
    iget-object v0, p0, Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;->formulaEditorEditText:Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;

    invoke-virtual {v0, p1, p2}, Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;->updateListReferences(Ljava/lang/String;Ljava/lang/String;)V

    .line 978
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .line 743
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0a041b

    if-eq v0, v1, :cond_1

    const v1, 0x7f0a041e

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 745
    :cond_0
    iget-object v0, p0, Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;->formulaEditorEditText:Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;

    invoke-virtual {v0}, Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;->undo()Z

    .line 746
    goto :goto_0

    .line 748
    :cond_1
    iget-object v0, p0, Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;->formulaEditorEditText:Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;

    invoke-virtual {v0}, Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;->redo()Z

    .line 751
    :goto_0
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;->updateButtonsOnKeyboardAndInvalidateOptionsMenu()V

    .line 752
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 7
    .param p1, "menu"    # Landroid/view/Menu;

    .line 705
    iput-object p1, p0, Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;->currentMenu:Landroid/view/Menu;

    .line 707
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_0
    invoke-interface {p1}, Landroid/view/Menu;->size()I

    move-result v1

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    .line 708
    invoke-interface {p1, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 707
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 711
    .end local v0    # "index":I
    :cond_0
    const v0, 0x7f0a041e

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 712
    .local v1, "undo":Landroid/view/MenuItem;
    iget-object v3, p0, Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;->formulaEditorEditText:Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;

    const/4 v4, 0x1

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;->getHistory()Lorg/catrobat/catroid/formulaeditor/FormulaEditorHistory;

    move-result-object v3

    invoke-virtual {v3}, Lorg/catrobat/catroid/formulaeditor/FormulaEditorHistory;->undoIsPossible()Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_1

    .line 716
    :cond_1
    const v3, 0x7f080272

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 717
    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_2

    .line 713
    :cond_2
    :goto_1
    const v3, 0x7f080273

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 714
    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 720
    :goto_2
    const v3, 0x7f0a041b

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    .line 721
    .local v5, "redo":Landroid/view/MenuItem;
    iget-object v6, p0, Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;->formulaEditorEditText:Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;

    if-eqz v6, :cond_4

    invoke-virtual {v6}, Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;->getHistory()Lorg/catrobat/catroid/formulaeditor/FormulaEditorHistory;

    move-result-object v6

    invoke-virtual {v6}, Lorg/catrobat/catroid/formulaeditor/FormulaEditorHistory;->redoIsPossible()Z

    move-result v6

    if-nez v6, :cond_3

    goto :goto_3

    .line 725
    :cond_3
    const v2, 0x7f080270

    invoke-interface {v5, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 726
    invoke-interface {v5, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_4

    .line 722
    :cond_4
    :goto_3
    const v6, 0x7f080271

    invoke-interface {v5, v6}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 723
    invoke-interface {v5, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 729
    :goto_4
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 730
    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 732
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 733
    return-void
.end method

.method public onResume()V
    .locals 3

    .line 217
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 218
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lorg/catrobat/catroid/utils/SnackbarUtil;->areHintsEnabled(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 219
    invoke-static {}, Lorg/catrobat/catroid/utils/SnackbarUtil;->dismissAllHints()V

    .line 220
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1203e2

    .line 221
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v1

    .line 220
    invoke-static {v0, v1}, Lorg/catrobat/catroid/utils/SnackbarUtil;->wasHintAlreadyShown(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 222
    new-instance v0, Lorg/catrobat/catroid/ui/dialogs/FormulaEditorIntroDialog;

    const v1, 0x7f1301c6

    invoke-direct {v0, p0, v1}, Lorg/catrobat/catroid/ui/dialogs/FormulaEditorIntroDialog;-><init>(Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;I)V

    invoke-virtual {v0}, Lorg/catrobat/catroid/ui/dialogs/FormulaEditorIntroDialog;->show()V

    .line 225
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 6

    .line 306
    iget-object v0, p0, Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;->formulaEditorKeyboard:Landroid/widget/TableLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TableLayout;->setClickable(Z)V

    .line 308
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 309
    new-instance v0, Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment$1;

    invoke-direct {v0, p0}, Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment$1;-><init>(Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;)V

    .line 402
    .local v0, "touchListener":Landroid/view/View$OnTouchListener;
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_0
    iget-object v2, p0, Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;->formulaEditorKeyboard:Landroid/widget/TableLayout;

    invoke-virtual {v2}, Landroid/widget/TableLayout;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 403
    iget-object v2, p0, Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;->formulaEditorKeyboard:Landroid/widget/TableLayout;

    invoke-virtual {v2, v1}, Landroid/widget/TableLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 404
    .local v2, "tableRow":Landroid/view/View;
    instance-of v3, v2, Landroid/widget/TableRow;

    if-eqz v3, :cond_0

    .line 405
    move-object v3, v2

    check-cast v3, Landroid/widget/TableRow;

    .line 406
    .local v3, "row":Landroid/widget/TableRow;
    const/4 v4, 0x0

    .local v4, "indexRow":I
    :goto_1
    invoke-virtual {v3}, Landroid/widget/TableRow;->getChildCount()I

    move-result v5

    if-ge v4, v5, :cond_0

    .line 407
    invoke-virtual {v3, v4}, Landroid/widget/TableRow;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 406
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 402
    .end local v2    # "tableRow":Landroid/view/View;
    .end local v3    # "row":Landroid/widget/TableRow;
    .end local v4    # "indexRow":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 412
    .end local v1    # "index":I
    :cond_1
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;->updateButtonsOnKeyboardAndInvalidateOptionsMenu()V

    .line 413
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStart()V

    .line 414
    return-void
.end method

.method public onStop()V
    .locals 3

    .line 509
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStop()V

    .line 510
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/app/AppCompatActivity;

    .line 511
    .local v0, "activity":Landroidx/appcompat/app/AppCompatActivity;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 514
    :cond_0
    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v1

    iget-object v2, p0, Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;->actionBarTitleBuffer:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroidx/appcompat/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 515
    return-void

    .line 512
    :cond_1
    :goto_0
    return-void
.end method

.method public onVariableRenamed(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "previousName"    # Ljava/lang/String;
    .param p2, "newName"    # Ljava/lang/String;

    .line 972
    iget-object v0, p0, Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;->formulaEditorEditText:Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;

    invoke-virtual {v0, p1, p2}, Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;->updateVariableReferences(Ljava/lang/String;Ljava/lang/String;)V

    .line 973
    return-void
.end method

.method public overrideSelectedText(Ljava/lang/String;)V
    .locals 1
    .param p1, "string"    # Ljava/lang/String;

    .line 1036
    iget-object v0, p0, Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;->formulaEditorEditText:Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;

    invoke-virtual {v0, p1}, Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;->overrideSelectedText(Ljava/lang/String;)V

    .line 1037
    return-void
.end method

.method public recognizedFormulaInText(Ljava/lang/String;Landroid/content/Context;Lorg/catrobat/catroid/content/Project;Lorg/catrobat/catroid/content/Sprite;)Z
    .locals 9
    .param p1, "string"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "project"    # Lorg/catrobat/catroid/content/Project;
    .param p4, "sprite"    # Lorg/catrobat/catroid/content/Sprite;

    .line 586
    const/4 v0, 0x0

    .line 587
    .local v0, "recognizedFormula":Z
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f030017

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 588
    .local v1, "formulasWithParams":[Ljava/lang/String;
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f030018

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 590
    .local v2, "formulasWithoutParams":[Ljava/lang/String;
    array-length v3, v1

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_1

    aget-object v6, v1, v5

    .line 591
    .local v6, "formulaWithParams":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ".*"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "\\(.+\\).*"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 592
    const/4 v0, 0x1

    .line 593
    goto :goto_1

    .line 590
    .end local v6    # "formulaWithParams":Ljava/lang/String;
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 597
    :cond_1
    :goto_1
    array-length v3, v2

    move v5, v4

    :goto_2
    if-ge v5, v3, :cond_3

    aget-object v6, v2, v5

    .line 598
    .local v6, "formulaWithoutParams":Ljava/lang/String;
    invoke-virtual {p1, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 599
    const/4 v0, 0x1

    .line 600
    goto :goto_3

    .line 597
    .end local v6    # "formulaWithoutParams":Ljava/lang/String;
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 604
    :cond_3
    :goto_3
    invoke-virtual {p3}, Lorg/catrobat/catroid/content/Project;->getMultiplayerVariables()Ljava/util/List;

    move-result-object v3

    invoke-direct {p0, p1, v3}, Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;->stringContainsUserVariable(Ljava/lang/String;Ljava/util/List;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 605
    invoke-virtual {p3}, Lorg/catrobat/catroid/content/Project;->getUserVariables()Ljava/util/List;

    move-result-object v3

    invoke-direct {p0, p1, v3}, Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;->stringContainsUserVariable(Ljava/lang/String;Ljava/util/List;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 606
    invoke-virtual {p4}, Lorg/catrobat/catroid/content/Sprite;->getUserVariables()Ljava/util/List;

    move-result-object v3

    invoke-direct {p0, p1, v3}, Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;->stringContainsUserVariable(Ljava/lang/String;Ljava/util/List;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 607
    invoke-virtual {p3}, Lorg/catrobat/catroid/content/Project;->getUserLists()Ljava/util/List;

    move-result-object v3

    invoke-direct {p0, p1, v3}, Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;->stringContainsUserList(Ljava/lang/String;Ljava/util/List;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 608
    invoke-virtual {p4}, Lorg/catrobat/catroid/content/Sprite;->getUserLists()Ljava/util/List;

    move-result-object v3

    invoke-direct {p0, p1, v3}, Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;->stringContainsUserList(Ljava/lang/String;Ljava/util/List;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 609
    invoke-direct {p0, p1}, Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;->stringContainsUserDefinedBrickInput(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_4
    const/4 v4, 0x1

    :cond_5
    or-int/2addr v0, v4

    .line 611
    return v0
.end method

.method public refreshFormulaPreviewString(Ljava/lang/String;)V
    .locals 2
    .param p1, "newString"    # Ljava/lang/String;

    .line 934
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;->updateBrickView()V

    .line 935
    iget-object v0, p0, Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;->formulaBrick:Lorg/catrobat/catroid/content/bricks/FormulaBrick;

    sget-object v1, Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;->currentFormulaField:Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;

    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/content/bricks/FormulaBrick;->getTextView(Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 936
    return-void
.end method

.method public saveFormulaIfPossible()Z
    .locals 6

    .line 832
    iget-object v0, p0, Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;->formulaEditorEditText:Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;

    invoke-virtual {v0}, Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;->getFormulaParser()Lorg/catrobat/catroid/formulaeditor/InternFormulaParser;

    move-result-object v0

    .line 833
    .local v0, "formulaToParse":Lorg/catrobat/catroid/formulaeditor/InternFormulaParser;
    invoke-direct {p0}, Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;->generateScope()Lorg/catrobat/catroid/content/Scope;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/formulaeditor/InternFormulaParser;->parseFormula(Lorg/catrobat/catroid/content/Scope;)Lorg/catrobat/catroid/formulaeditor/FormulaElement;

    move-result-object v1

    .line 835
    .local v1, "formulaParseTree":Lorg/catrobat/catroid/formulaeditor/FormulaElement;
    invoke-virtual {v0}, Lorg/catrobat/catroid/formulaeditor/InternFormulaParser;->getErrorTokenIndex()I

    move-result v2

    const/4 v3, -0x4

    if-eq v2, v3, :cond_2

    const/4 v3, -0x2

    if-eq v2, v3, :cond_1

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    goto :goto_0

    .line 837
    :cond_0
    invoke-direct {p0, v1}, Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;->saveValidFormula(Lorg/catrobat/catroid/formulaeditor/FormulaElement;)Z

    move-result v2

    return v2

    .line 839
    :cond_1
    invoke-direct {p0, v3}, Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;->checkReturnWithoutSaving(I)Z

    move-result v2

    return v2

    .line 841
    :cond_2
    sget-object v2, Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;->currentFormulaField:Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;

    instance-of v3, v2, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    if-eqz v3, :cond_3

    check-cast v2, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    invoke-static {v2}, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->isExpectingStringValue(Lorg/catrobat/catroid/content/bricks/Brick$BrickField;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 842
    new-instance v2, Lorg/catrobat/catroid/formulaeditor/FormulaElement;

    sget-object v3, Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;->STRING:Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;

    const/4 v4, 0x0

    const-string v5, ""

    invoke-direct {v2, v3, v5, v4}, Lorg/catrobat/catroid/formulaeditor/FormulaElement;-><init>(Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;Ljava/lang/String;Lorg/catrobat/catroid/formulaeditor/FormulaElement;)V

    invoke-direct {p0, v2}, Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;->saveValidFormula(Lorg/catrobat/catroid/formulaeditor/FormulaElement;)Z

    move-result v2

    return v2

    .line 846
    :cond_3
    :goto_0
    iget-object v2, p0, Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;->formulaEditorEditText:Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;

    invoke-virtual {v2}, Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;->setParseErrorCursorAndSelection()V

    .line 847
    const/4 v2, -0x3

    invoke-direct {p0, v2}, Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;->checkReturnWithoutSaving(I)Z

    move-result v2

    return v2
.end method

.method public setChosenCategoryItem(Lorg/catrobat/catroid/ui/recyclerview/adapter/CategoryListRVAdapter$CategoryListItem;)V
    .locals 0
    .param p1, "chosenCategoryItem"    # Lorg/catrobat/catroid/ui/recyclerview/adapter/CategoryListRVAdapter$CategoryListItem;

    .line 1040
    iput-object p1, p0, Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;->chosenCategoryItem:Lorg/catrobat/catroid/ui/recyclerview/adapter/CategoryListRVAdapter$CategoryListItem;

    .line 1041
    return-void
.end method

.method public setChosenUserDataItem(Lorg/catrobat/catroid/formulaeditor/UserData;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/catrobat/catroid/formulaeditor/UserData<",
            "*>;)V"
        }
    .end annotation

    .line 1044
    .local p1, "chosenUserDataItem":Lorg/catrobat/catroid/formulaeditor/UserData;, "Lorg/catrobat/catroid/formulaeditor/UserData<*>;"
    iput-object p1, p0, Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;->chosenUserDataItem:Lorg/catrobat/catroid/formulaeditor/UserData;

    .line 1045
    return-void
.end method

.method public setInputFormula(Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;I)V
    .locals 7
    .param p1, "formulaField"    # Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;
    .param p2, "mode"    # I

    .line 757
    if-eqz p2, :cond_4

    const/4 v0, 0x1

    if-eq p2, v0, :cond_0

    const/4 v1, 0x2

    if-eq p2, v1, :cond_0

    const/4 v1, 0x3

    if-eq p2, v1, :cond_0

    goto/16 :goto_0

    .line 766
    :cond_0
    iget-object v1, p0, Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;->formulaBrick:Lorg/catrobat/catroid/content/bricks/FormulaBrick;

    invoke-virtual {v1, p1}, Lorg/catrobat/catroid/content/bricks/FormulaBrick;->getFormulaWithBrickField(Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;)Lorg/catrobat/catroid/formulaeditor/Formula;

    move-result-object v1

    .line 767
    .local v1, "newFormula":Lorg/catrobat/catroid/formulaeditor/Formula;
    sget-object v2, Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;->currentFormula:Lorg/catrobat/catroid/formulaeditor/Formula;

    if-ne v2, v1, :cond_1

    iget-object v2, p0, Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;->formulaEditorEditText:Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;

    invoke-virtual {v2}, Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;->hasChanges()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 768
    iget-object v0, p0, Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;->formulaEditorEditText:Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;

    invoke-virtual {v0}, Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;->quickSelect()V

    .line 769
    goto/16 :goto_0

    .line 771
    :cond_1
    iget-object v2, p0, Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;->formulaEditorEditText:Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;

    invoke-virtual {v2}, Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;->hasChanges()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    .line 772
    iget-object v2, p0, Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;->confirmSwitchEditTextTimeStamp:[J

    aget-wide v4, v2, v0

    aput-wide v4, v2, v3

    .line 773
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    aput-wide v4, v2, v0

    .line 774
    iget v2, p0, Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;->confirmSwitchEditTextCounter:I

    add-int/2addr v2, v0

    iput v2, p0, Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;->confirmSwitchEditTextCounter:I

    .line 775
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;->saveFormulaIfPossible()Z

    move-result v0

    if-nez v0, :cond_2

    .line 776
    return-void

    .line 779
    :cond_2
    iget-object v0, p0, Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;->currentMenu:Landroid/view/Menu;

    const v2, 0x7f0a041e

    invoke-interface {v0, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 780
    .local v0, "undo":Landroid/view/MenuItem;
    if-eqz v0, :cond_3

    .line 781
    const v2, 0x7f080273

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 782
    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 785
    :cond_3
    iget-object v2, p0, Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;->currentMenu:Landroid/view/Menu;

    const v4, 0x7f0a041b

    invoke-interface {v2, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 786
    .local v2, "redo":Landroid/view/MenuItem;
    const v4, 0x7f080271

    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 787
    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 789
    iget-object v3, p0, Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;->formulaEditorEditText:Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;

    invoke-virtual {v3}, Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;->endEdit()V

    .line 790
    sput-object p1, Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;->currentFormulaField:Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;

    .line 791
    sput-object v1, Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;->currentFormula:Lorg/catrobat/catroid/formulaeditor/Formula;

    .line 792
    iget-object v3, p0, Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;->formulaEditorEditText:Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;

    new-instance v4, Lorg/catrobat/catroid/formulaeditor/UndoState;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/Formula;->getInternFormulaState()Lorg/catrobat/catroid/formulaeditor/InternFormulaState;

    move-result-object v5

    sget-object v6, Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;->currentFormulaField:Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;

    invoke-direct {v4, v5, v6}, Lorg/catrobat/catroid/formulaeditor/UndoState;-><init>(Lorg/catrobat/catroid/formulaeditor/InternFormulaState;Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;)V

    invoke-virtual {v3, v4}, Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;->enterNewFormula(Lorg/catrobat/catroid/formulaeditor/UndoState;)V

    .line 794
    iget-object v3, p0, Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;->formulaEditorEditText:Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;

    invoke-virtual {v3}, Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;->getStringFromInternFormula()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;->refreshFormulaPreviewString(Ljava/lang/String;)V

    .line 795
    goto :goto_0

    .line 759
    .end local v0    # "undo":Landroid/view/MenuItem;
    .end local v1    # "newFormula":Lorg/catrobat/catroid/formulaeditor/Formula;
    .end local v2    # "redo":Landroid/view/MenuItem;
    :cond_4
    iget-object v0, p0, Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;->formulaEditorEditText:Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;

    new-instance v1, Lorg/catrobat/catroid/formulaeditor/UndoState;

    sget-object v2, Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;->currentFormula:Lorg/catrobat/catroid/formulaeditor/Formula;

    invoke-virtual {v2}, Lorg/catrobat/catroid/formulaeditor/Formula;->getInternFormulaState()Lorg/catrobat/catroid/formulaeditor/InternFormulaState;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Lorg/catrobat/catroid/formulaeditor/UndoState;-><init>(Lorg/catrobat/catroid/formulaeditor/InternFormulaState;Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;)V

    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;->enterNewFormula(Lorg/catrobat/catroid/formulaeditor/UndoState;)V

    .line 761
    iget-object v0, p0, Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;->formulaEditorEditText:Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;

    invoke-virtual {v0}, Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;->getStringFromInternFormula()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;->refreshFormulaPreviewString(Ljava/lang/String;)V

    .line 762
    nop

    .line 799
    :goto_0
    return-void
.end method

.method public setSelectionToFirstParamOfRegularExpressionAtInternalIndex(I)V
    .locals 1
    .param p1, "indexOfRegularExpression"    # I

    .line 1093
    iget-object v0, p0, Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;->formulaEditorEditText:Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;

    invoke-virtual {v0, p1}, Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;->setSelectionToFirstParamOfRegularExpressionAtInternalIndex(I)V

    .line 1094
    return-void
.end method

.method public toggleFunctionalButtons()V
    .locals 7

    .line 461
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0a05ea

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 462
    .local v0, "row1":Landroid/view/View;
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f0a05eb

    invoke-virtual {v1, v2}, Landroidx/fragment/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 463
    .local v1, "row2":Landroid/view/View;
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    const v3, 0x7f0a03aa

    invoke-virtual {v2, v3}, Landroidx/fragment/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    .line 465
    .local v2, "toggleButton":Landroid/widget/ImageButton;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v4

    .line 466
    .local v3, "isVisible":Z
    :goto_0
    const/16 v5, 0x8

    if-eqz v3, :cond_1

    move v6, v5

    goto :goto_1

    :cond_1
    move v6, v4

    :goto_1
    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 467
    if-eqz v3, :cond_2

    move v4, v5

    :cond_2
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 468
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    if-eqz v3, :cond_3

    const v5, 0x7f08016a

    goto :goto_2

    :cond_3
    const v5, 0x7f080169

    :goto_2
    invoke-static {v4, v5}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 469
    invoke-direct {p0, v3}, Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;->toggleFormulaEditorSpace(Z)V

    .line 470
    return-void
.end method

.method public updateBrickView()V
    .locals 3

    .line 238
    iget-object v0, p0, Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;->formulaEditorBrick:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 240
    iget-boolean v0, p0, Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;->showCustomView:Z

    if-eqz v0, :cond_0

    .line 241
    iget-object v0, p0, Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;->formulaEditorEditText:Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;->setVisibility(I)V

    .line 242
    iget-object v0, p0, Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;->formulaEditorKeyboard:Landroid/widget/TableLayout;

    invoke-virtual {v0, v1}, Landroid/widget/TableLayout;->setVisibility(I)V

    .line 243
    iget-object v0, p0, Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;->formulaEditorBrick:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;->formulaBrick:Lorg/catrobat/catroid/content/bricks/FormulaBrick;

    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/catrobat/catroid/content/bricks/FormulaBrick;->getCustomView(Landroid/content/Context;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 245
    :cond_0
    iget-object v0, p0, Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;->formulaEditorEditText:Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;->setVisibility(I)V

    .line 246
    iget-object v0, p0, Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;->formulaEditorKeyboard:Landroid/widget/TableLayout;

    invoke-virtual {v0, v1}, Landroid/widget/TableLayout;->setVisibility(I)V

    .line 248
    iget-object v0, p0, Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;->formulaBrick:Lorg/catrobat/catroid/content/bricks/FormulaBrick;

    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/content/bricks/FormulaBrick;->getView(Landroid/content/Context;)Landroid/view/View;

    move-result-object v0

    .line 250
    .local v0, "brickView":Landroid/view/View;
    iget-object v1, p0, Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;->formulaBrick:Lorg/catrobat/catroid/content/bricks/FormulaBrick;

    invoke-virtual {v1}, Lorg/catrobat/catroid/content/bricks/FormulaBrick;->setClickListeners()V

    .line 251
    iget-object v1, p0, Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;->formulaBrick:Lorg/catrobat/catroid/content/bricks/FormulaBrick;

    invoke-virtual {v1}, Lorg/catrobat/catroid/content/bricks/FormulaBrick;->disableSpinners()V

    .line 252
    iget-object v1, p0, Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;->formulaBrick:Lorg/catrobat/catroid/content/bricks/FormulaBrick;

    sget-object v2, Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;->currentFormulaField:Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;

    invoke-virtual {v1, v2}, Lorg/catrobat/catroid/content/bricks/FormulaBrick;->highlightTextView(Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;)V

    .line 254
    iget-object v1, p0, Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;->formulaEditorBrick:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 256
    .end local v0    # "brickView":Landroid/view/View;
    :goto_0
    return-void
.end method

.method public updateButtonsOnKeyboardAndInvalidateOptionsMenu()V
    .locals 2

    .line 1076
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->invalidateOptionsMenu()V

    .line 1078
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0a03a7

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 1079
    .local v0, "backspaceOnKeyboard":Landroid/widget/ImageButton;
    iget-object v1, p0, Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;->formulaEditorEditText:Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;->isThereSomethingToDelete()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1080
    const/16 v1, 0x55

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setAlpha(I)V

    .line 1081
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    goto :goto_0

    .line 1083
    :cond_0
    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setAlpha(I)V

    .line 1084
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 1086
    :goto_0
    return-void
.end method

.method public updateFragmentAfterColorPicker()V
    .locals 2

    .line 264
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;->updateBrickView()V

    .line 265
    sget-object v0, Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;->currentFormulaField:Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;->setInputFormula(Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;I)V

    .line 266
    return-void
.end method

.method public updateFragmentAfterVisualPlacement()V
    .locals 2

    .line 259
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;->updateBrickView()V

    .line 260
    sget-object v0, Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;->currentFormulaField:Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;->setInputFormula(Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;I)V

    .line 261
    return-void
.end method
