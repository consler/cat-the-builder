.class public Lorg/catrobat/catroid/content/bricks/SetPenColorBrick;
.super Lorg/catrobat/catroid/content/bricks/FormulaBrick;
.source "SetPenColorBrick.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/catrobat/catroid/content/bricks/SetPenColorBrick$SetPenColorBrickCallback;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final transient showFormulaEditorStrategy:Lorg/catrobat/catroid/content/strategy/ShowFormulaEditorStrategy;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 45
    invoke-direct {p0}, Lorg/catrobat/catroid/content/bricks/FormulaBrick;-><init>()V

    .line 46
    sget-object v0, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->PEN_COLOR_RED:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    const v1, 0x7f0a0226

    invoke-virtual {p0, v0, v1}, Lorg/catrobat/catroid/content/bricks/SetPenColorBrick;->addAllowedBrickField(Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;I)V

    .line 47
    sget-object v0, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->PEN_COLOR_GREEN:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    const v1, 0x7f0a0224

    invoke-virtual {p0, v0, v1}, Lorg/catrobat/catroid/content/bricks/SetPenColorBrick;->addAllowedBrickField(Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;I)V

    .line 48
    sget-object v0, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->PEN_COLOR_BLUE:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    const v1, 0x7f0a0223

    invoke-virtual {p0, v0, v1}, Lorg/catrobat/catroid/content/bricks/SetPenColorBrick;->addAllowedBrickField(Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;I)V

    .line 50
    new-instance v0, Lorg/catrobat/catroid/content/strategy/ShowColorPickerFormulaEditorStrategy;

    invoke-direct {v0}, Lorg/catrobat/catroid/content/strategy/ShowColorPickerFormulaEditorStrategy;-><init>()V

    iput-object v0, p0, Lorg/catrobat/catroid/content/bricks/SetPenColorBrick;->showFormulaEditorStrategy:Lorg/catrobat/catroid/content/strategy/ShowFormulaEditorStrategy;

    .line 51
    return-void
.end method

.method public constructor <init>(III)V
    .locals 4
    .param p1, "red"    # I
    .param p2, "green"    # I
    .param p3, "blue"    # I

    .line 54
    new-instance v0, Lorg/catrobat/catroid/formulaeditor/Formula;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/catrobat/catroid/formulaeditor/Formula;-><init>(Ljava/lang/Integer;)V

    new-instance v1, Lorg/catrobat/catroid/formulaeditor/Formula;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/catrobat/catroid/formulaeditor/Formula;-><init>(Ljava/lang/Integer;)V

    new-instance v2, Lorg/catrobat/catroid/formulaeditor/Formula;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/catrobat/catroid/formulaeditor/Formula;-><init>(Ljava/lang/Integer;)V

    invoke-direct {p0, v0, v1, v2}, Lorg/catrobat/catroid/content/bricks/SetPenColorBrick;-><init>(Lorg/catrobat/catroid/formulaeditor/Formula;Lorg/catrobat/catroid/formulaeditor/Formula;Lorg/catrobat/catroid/formulaeditor/Formula;)V

    .line 55
    return-void
.end method

.method public constructor <init>(Lorg/catrobat/catroid/formulaeditor/Formula;Lorg/catrobat/catroid/formulaeditor/Formula;Lorg/catrobat/catroid/formulaeditor/Formula;)V
    .locals 1
    .param p1, "red"    # Lorg/catrobat/catroid/formulaeditor/Formula;
    .param p2, "green"    # Lorg/catrobat/catroid/formulaeditor/Formula;
    .param p3, "blue"    # Lorg/catrobat/catroid/formulaeditor/Formula;

    .line 58
    invoke-direct {p0}, Lorg/catrobat/catroid/content/bricks/SetPenColorBrick;-><init>()V

    .line 59
    sget-object v0, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->PEN_COLOR_RED:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    invoke-virtual {p0, v0, p1}, Lorg/catrobat/catroid/content/bricks/SetPenColorBrick;->setFormulaWithBrickField(Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;Lorg/catrobat/catroid/formulaeditor/Formula;)V

    .line 60
    sget-object v0, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->PEN_COLOR_GREEN:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    invoke-virtual {p0, v0, p2}, Lorg/catrobat/catroid/content/bricks/SetPenColorBrick;->setFormulaWithBrickField(Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;Lorg/catrobat/catroid/formulaeditor/Formula;)V

    .line 61
    sget-object v0, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->PEN_COLOR_BLUE:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    invoke-virtual {p0, v0, p3}, Lorg/catrobat/catroid/content/bricks/SetPenColorBrick;->setFormulaWithBrickField(Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;Lorg/catrobat/catroid/formulaeditor/Formula;)V

    .line 62
    return-void
.end method

.method static synthetic access$100(Lorg/catrobat/catroid/content/bricks/SetPenColorBrick;Landroid/view/View;)V
    .locals 0
    .param p0, "x0"    # Lorg/catrobat/catroid/content/bricks/SetPenColorBrick;
    .param p1, "x1"    # Landroid/view/View;

    .line 39
    invoke-direct {p0, p1}, Lorg/catrobat/catroid/content/bricks/SetPenColorBrick;->superShowFormulaEditor(Landroid/view/View;)V

    return-void
.end method

.method private areAllBrickFieldsNumbers()Z
    .locals 1

    .line 89
    sget-object v0, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->PEN_COLOR_RED:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    invoke-virtual {p0, v0}, Lorg/catrobat/catroid/content/bricks/SetPenColorBrick;->isBrickFieldANumber(Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->PEN_COLOR_GREEN:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    .line 90
    invoke-virtual {p0, v0}, Lorg/catrobat/catroid/content/bricks/SetPenColorBrick;->isBrickFieldANumber(Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->PEN_COLOR_BLUE:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    .line 91
    invoke-virtual {p0, v0}, Lorg/catrobat/catroid/content/bricks/SetPenColorBrick;->isBrickFieldANumber(Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 89
    :goto_0
    return v0
.end method

.method private superShowFormulaEditor(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .line 80
    invoke-super {p0, p1}, Lorg/catrobat/catroid/content/bricks/FormulaBrick;->showFormulaEditorToEditFormula(Landroid/view/View;)V

    .line 81
    return-void
.end method


# virtual methods
.method public addActionToSequence(Lorg/catrobat/catroid/content/Sprite;Lorg/catrobat/catroid/content/actions/ScriptSequenceAction;)V
    .locals 6
    .param p1, "sprite"    # Lorg/catrobat/catroid/content/Sprite;
    .param p2, "sequence"    # Lorg/catrobat/catroid/content/actions/ScriptSequenceAction;

    .line 96
    invoke-virtual {p1}, Lorg/catrobat/catroid/content/Sprite;->getActionFactory()Lorg/catrobat/catroid/content/ActionFactory;

    move-result-object v0

    sget-object v1, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->PEN_COLOR_RED:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    .line 97
    invoke-virtual {p0, v1}, Lorg/catrobat/catroid/content/bricks/SetPenColorBrick;->getFormulaWithBrickField(Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;)Lorg/catrobat/catroid/formulaeditor/Formula;

    move-result-object v3

    sget-object v1, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->PEN_COLOR_GREEN:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    .line 98
    invoke-virtual {p0, v1}, Lorg/catrobat/catroid/content/bricks/SetPenColorBrick;->getFormulaWithBrickField(Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;)Lorg/catrobat/catroid/formulaeditor/Formula;

    move-result-object v4

    sget-object v1, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->PEN_COLOR_BLUE:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    .line 99
    invoke-virtual {p0, v1}, Lorg/catrobat/catroid/content/bricks/SetPenColorBrick;->getFormulaWithBrickField(Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;)Lorg/catrobat/catroid/formulaeditor/Formula;

    move-result-object v5

    .line 96
    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lorg/catrobat/catroid/content/ActionFactory;->createSetPenColorAction(Lorg/catrobat/catroid/content/Sprite;Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;Lorg/catrobat/catroid/formulaeditor/Formula;Lorg/catrobat/catroid/formulaeditor/Formula;Lorg/catrobat/catroid/formulaeditor/Formula;)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/catrobat/catroid/content/actions/ScriptSequenceAction;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    .line 100
    return-void
.end method

.method public getDefaultBrickField()Lorg/catrobat/catroid/content/bricks/Brick$BrickField;
    .locals 1

    .line 85
    sget-object v0, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->PEN_COLOR_RED:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    return-object v0
.end method

.method public bridge synthetic getDefaultBrickField()Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;
    .locals 1

    .line 39
    invoke-virtual {p0}, Lorg/catrobat/catroid/content/bricks/SetPenColorBrick;->getDefaultBrickField()Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    move-result-object v0

    return-object v0
.end method

.method public getViewResource()I
    .locals 1

    .line 66
    const v0, 0x7f0d00da

    return v0
.end method

.method public showFormulaEditorToEditFormula(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .line 71
    invoke-direct {p0}, Lorg/catrobat/catroid/content/bricks/SetPenColorBrick;->areAllBrickFieldsNumbers()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 72
    new-instance v0, Lorg/catrobat/catroid/content/bricks/SetPenColorBrick$SetPenColorBrickCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lorg/catrobat/catroid/content/bricks/SetPenColorBrick$SetPenColorBrickCallback;-><init>(Lorg/catrobat/catroid/content/bricks/SetPenColorBrick;Landroid/view/View;Lorg/catrobat/catroid/content/bricks/SetPenColorBrick$1;)V

    .line 73
    .local v0, "callback":Lorg/catrobat/catroid/content/strategy/ShowFormulaEditorStrategy$Callback;
    iget-object v1, p0, Lorg/catrobat/catroid/content/bricks/SetPenColorBrick;->showFormulaEditorStrategy:Lorg/catrobat/catroid/content/strategy/ShowFormulaEditorStrategy;

    invoke-interface {v1, p1, v0}, Lorg/catrobat/catroid/content/strategy/ShowFormulaEditorStrategy;->showFormulaEditorToEditFormula(Landroid/view/View;Lorg/catrobat/catroid/content/strategy/ShowFormulaEditorStrategy$Callback;)V

    .line 74
    .end local v0    # "callback":Lorg/catrobat/catroid/content/strategy/ShowFormulaEditorStrategy$Callback;
    goto :goto_0

    .line 75
    :cond_0
    invoke-direct {p0, p1}, Lorg/catrobat/catroid/content/bricks/SetPenColorBrick;->superShowFormulaEditor(Landroid/view/View;)V

    .line 77
    :goto_0
    return-void
.end method
