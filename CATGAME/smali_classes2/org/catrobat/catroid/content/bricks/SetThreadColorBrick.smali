.class public Lorg/catrobat/catroid/content/bricks/SetThreadColorBrick;
.super Lorg/catrobat/catroid/content/bricks/FormulaBrick;
.source "SetThreadColorBrick.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/catrobat/catroid/content/bricks/SetThreadColorBrick$SetThreadColorBrickCallback;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final transient showFormulaEditorStrategy:Lorg/catrobat/catroid/content/strategy/ShowFormulaEditorStrategy;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 44
    invoke-direct {p0}, Lorg/catrobat/catroid/content/bricks/FormulaBrick;-><init>()V

    .line 45
    sget-object v0, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->THREAD_COLOR:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    const v1, 0x7f0a023f

    invoke-virtual {p0, v0, v1}, Lorg/catrobat/catroid/content/bricks/SetThreadColorBrick;->addAllowedBrickField(Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;I)V

    .line 47
    new-instance v0, Lorg/catrobat/catroid/content/strategy/ShowColorPickerFormulaEditorStrategy;

    invoke-direct {v0}, Lorg/catrobat/catroid/content/strategy/ShowColorPickerFormulaEditorStrategy;-><init>()V

    iput-object v0, p0, Lorg/catrobat/catroid/content/bricks/SetThreadColorBrick;->showFormulaEditorStrategy:Lorg/catrobat/catroid/content/strategy/ShowFormulaEditorStrategy;

    .line 48
    return-void
.end method

.method public constructor <init>(Lorg/catrobat/catroid/formulaeditor/Formula;)V
    .locals 1
    .param p1, "color"    # Lorg/catrobat/catroid/formulaeditor/Formula;

    .line 51
    invoke-direct {p0}, Lorg/catrobat/catroid/content/bricks/SetThreadColorBrick;-><init>()V

    .line 52
    sget-object v0, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->THREAD_COLOR:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    invoke-virtual {p0, v0, p1}, Lorg/catrobat/catroid/content/bricks/SetThreadColorBrick;->setFormulaWithBrickField(Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;Lorg/catrobat/catroid/formulaeditor/Formula;)V

    .line 53
    return-void
.end method

.method static synthetic access$100(Lorg/catrobat/catroid/content/bricks/SetThreadColorBrick;Landroid/view/View;)V
    .locals 0
    .param p0, "x0"    # Lorg/catrobat/catroid/content/bricks/SetThreadColorBrick;
    .param p1, "x1"    # Landroid/view/View;

    .line 38
    invoke-direct {p0, p1}, Lorg/catrobat/catroid/content/bricks/SetThreadColorBrick;->superShowFormulaEditor(Landroid/view/View;)V

    return-void
.end method

.method private superShowFormulaEditor(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .line 67
    invoke-super {p0, p1}, Lorg/catrobat/catroid/content/bricks/FormulaBrick;->showFormulaEditorToEditFormula(Landroid/view/View;)V

    .line 68
    return-void
.end method


# virtual methods
.method public addActionToSequence(Lorg/catrobat/catroid/content/Sprite;Lorg/catrobat/catroid/content/actions/ScriptSequenceAction;)V
    .locals 2
    .param p1, "sprite"    # Lorg/catrobat/catroid/content/Sprite;
    .param p2, "sequence"    # Lorg/catrobat/catroid/content/actions/ScriptSequenceAction;

    .line 77
    invoke-virtual {p1}, Lorg/catrobat/catroid/content/Sprite;->getActionFactory()Lorg/catrobat/catroid/content/ActionFactory;

    move-result-object v0

    sget-object v1, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->THREAD_COLOR:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    .line 78
    invoke-virtual {p0, v1}, Lorg/catrobat/catroid/content/bricks/SetThreadColorBrick;->getFormulaWithBrickField(Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;)Lorg/catrobat/catroid/formulaeditor/Formula;

    move-result-object v1

    .line 77
    invoke-virtual {v0, p1, p2, v1}, Lorg/catrobat/catroid/content/ActionFactory;->createSetThreadColorAction(Lorg/catrobat/catroid/content/Sprite;Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;Lorg/catrobat/catroid/formulaeditor/Formula;)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/catrobat/catroid/content/actions/ScriptSequenceAction;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    .line 79
    return-void
.end method

.method public getDefaultBrickField()Lorg/catrobat/catroid/content/bricks/Brick$BrickField;
    .locals 1

    .line 72
    sget-object v0, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->THREAD_COLOR:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    return-object v0
.end method

.method public bridge synthetic getDefaultBrickField()Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;
    .locals 1

    .line 38
    invoke-virtual {p0}, Lorg/catrobat/catroid/content/bricks/SetThreadColorBrick;->getDefaultBrickField()Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    move-result-object v0

    return-object v0
.end method

.method public getViewResource()I
    .locals 1

    .line 57
    const v0, 0x7f0d00e0

    return v0
.end method

.method public showFormulaEditorToEditFormula(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .line 62
    new-instance v0, Lorg/catrobat/catroid/content/bricks/SetThreadColorBrick$SetThreadColorBrickCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lorg/catrobat/catroid/content/bricks/SetThreadColorBrick$SetThreadColorBrickCallback;-><init>(Lorg/catrobat/catroid/content/bricks/SetThreadColorBrick;Landroid/view/View;Lorg/catrobat/catroid/content/bricks/SetThreadColorBrick$1;)V

    .line 63
    .local v0, "callback":Lorg/catrobat/catroid/content/strategy/ShowFormulaEditorStrategy$Callback;
    iget-object v1, p0, Lorg/catrobat/catroid/content/bricks/SetThreadColorBrick;->showFormulaEditorStrategy:Lorg/catrobat/catroid/content/strategy/ShowFormulaEditorStrategy;

    invoke-interface {v1, p1, v0}, Lorg/catrobat/catroid/content/strategy/ShowFormulaEditorStrategy;->showFormulaEditorToEditFormula(Landroid/view/View;Lorg/catrobat/catroid/content/strategy/ShowFormulaEditorStrategy$Callback;)V

    .line 64
    return-void
.end method
