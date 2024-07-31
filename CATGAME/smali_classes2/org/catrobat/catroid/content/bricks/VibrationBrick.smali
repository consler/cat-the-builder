.class public Lorg/catrobat/catroid/content/bricks/VibrationBrick;
.super Lorg/catrobat/catroid/content/bricks/FormulaBrick;
.source "VibrationBrick.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 37
    invoke-direct {p0}, Lorg/catrobat/catroid/content/bricks/FormulaBrick;-><init>()V

    .line 38
    sget-object v0, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->VIBRATE_DURATION_IN_SECONDS:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    const v1, 0x7f0a02a7

    invoke-virtual {p0, v0, v1}, Lorg/catrobat/catroid/content/bricks/VibrationBrick;->addAllowedBrickField(Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;I)V

    .line 39
    return-void
.end method

.method public constructor <init>(D)V
    .locals 2
    .param p1, "vibrateDurationInSeconds"    # D

    .line 42
    new-instance v0, Lorg/catrobat/catroid/formulaeditor/Formula;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/catrobat/catroid/formulaeditor/Formula;-><init>(Ljava/lang/Double;)V

    invoke-direct {p0, v0}, Lorg/catrobat/catroid/content/bricks/VibrationBrick;-><init>(Lorg/catrobat/catroid/formulaeditor/Formula;)V

    .line 43
    return-void
.end method

.method public constructor <init>(Lorg/catrobat/catroid/formulaeditor/Formula;)V
    .locals 1
    .param p1, "vibrateDurationInSecondsFormula"    # Lorg/catrobat/catroid/formulaeditor/Formula;

    .line 46
    invoke-direct {p0}, Lorg/catrobat/catroid/content/bricks/VibrationBrick;-><init>()V

    .line 47
    sget-object v0, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->VIBRATE_DURATION_IN_SECONDS:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    invoke-virtual {p0, v0, p1}, Lorg/catrobat/catroid/content/bricks/VibrationBrick;->setFormulaWithBrickField(Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;Lorg/catrobat/catroid/formulaeditor/Formula;)V

    .line 48
    return-void
.end method


# virtual methods
.method public addActionToSequence(Lorg/catrobat/catroid/content/Sprite;Lorg/catrobat/catroid/content/actions/ScriptSequenceAction;)V
    .locals 2
    .param p1, "sprite"    # Lorg/catrobat/catroid/content/Sprite;
    .param p2, "sequence"    # Lorg/catrobat/catroid/content/actions/ScriptSequenceAction;

    .line 70
    invoke-virtual {p1}, Lorg/catrobat/catroid/content/Sprite;->getActionFactory()Lorg/catrobat/catroid/content/ActionFactory;

    move-result-object v0

    sget-object v1, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->VIBRATE_DURATION_IN_SECONDS:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    .line 72
    invoke-virtual {p0, v1}, Lorg/catrobat/catroid/content/bricks/VibrationBrick;->getFormulaWithBrickField(Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;)Lorg/catrobat/catroid/formulaeditor/Formula;

    move-result-object v1

    .line 71
    invoke-virtual {v0, p1, p2, v1}, Lorg/catrobat/catroid/content/ActionFactory;->createVibrateAction(Lorg/catrobat/catroid/content/Sprite;Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;Lorg/catrobat/catroid/formulaeditor/Formula;)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v0

    .line 70
    invoke-virtual {p2, v0}, Lorg/catrobat/catroid/content/actions/ScriptSequenceAction;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    .line 73
    return-void
.end method

.method public addRequiredResources(Lorg/catrobat/catroid/content/bricks/Brick$ResourcesSet;)V
    .locals 1
    .param p1, "requiredResourcesSet"    # Lorg/catrobat/catroid/content/bricks/Brick$ResourcesSet;

    .line 57
    const/16 v0, 0x9

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/catrobat/catroid/content/bricks/Brick$ResourcesSet;->add(Ljava/lang/Integer;)Z

    .line 58
    invoke-super {p0, p1}, Lorg/catrobat/catroid/content/bricks/FormulaBrick;->addRequiredResources(Lorg/catrobat/catroid/content/bricks/Brick$ResourcesSet;)V

    .line 59
    return-void
.end method

.method public getView(Landroid/content/Context;)Landroid/view/View;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 63
    invoke-super {p0, p1}, Lorg/catrobat/catroid/content/bricks/FormulaBrick;->getView(Landroid/content/Context;)Landroid/view/View;

    .line 64
    iget-object v0, p0, Lorg/catrobat/catroid/content/bricks/VibrationBrick;->view:Landroid/view/View;

    sget-object v1, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->VIBRATE_DURATION_IN_SECONDS:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    invoke-virtual {p0, v0, v1}, Lorg/catrobat/catroid/content/bricks/VibrationBrick;->setSecondsLabel(Landroid/view/View;Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;)V

    .line 65
    iget-object v0, p0, Lorg/catrobat/catroid/content/bricks/VibrationBrick;->view:Landroid/view/View;

    return-object v0
.end method

.method public getViewResource()I
    .locals 1

    .line 52
    const v0, 0x7f0d00fe

    return v0
.end method
