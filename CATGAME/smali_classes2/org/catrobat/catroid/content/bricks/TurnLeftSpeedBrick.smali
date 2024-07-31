.class public Lorg/catrobat/catroid/content/bricks/TurnLeftSpeedBrick;
.super Lorg/catrobat/catroid/content/bricks/FormulaBrick;
.source "TurnLeftSpeedBrick.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 34
    invoke-direct {p0}, Lorg/catrobat/catroid/content/bricks/FormulaBrick;-><init>()V

    .line 35
    sget-object v0, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->PHYSICS_TURN_LEFT_SPEED:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    const v1, 0x7f0a0298

    invoke-virtual {p0, v0, v1}, Lorg/catrobat/catroid/content/bricks/TurnLeftSpeedBrick;->addAllowedBrickField(Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;I)V

    .line 36
    return-void
.end method

.method public constructor <init>(D)V
    .locals 2
    .param p1, "degreesPerSecond"    # D

    .line 39
    new-instance v0, Lorg/catrobat/catroid/formulaeditor/Formula;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/catrobat/catroid/formulaeditor/Formula;-><init>(Ljava/lang/Double;)V

    invoke-direct {p0, v0}, Lorg/catrobat/catroid/content/bricks/TurnLeftSpeedBrick;-><init>(Lorg/catrobat/catroid/formulaeditor/Formula;)V

    .line 40
    return-void
.end method

.method public constructor <init>(Lorg/catrobat/catroid/formulaeditor/Formula;)V
    .locals 1
    .param p1, "formula"    # Lorg/catrobat/catroid/formulaeditor/Formula;

    .line 43
    invoke-direct {p0}, Lorg/catrobat/catroid/content/bricks/TurnLeftSpeedBrick;-><init>()V

    .line 44
    sget-object v0, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->PHYSICS_TURN_LEFT_SPEED:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    invoke-virtual {p0, v0, p1}, Lorg/catrobat/catroid/content/bricks/TurnLeftSpeedBrick;->setFormulaWithBrickField(Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;Lorg/catrobat/catroid/formulaeditor/Formula;)V

    .line 45
    return-void
.end method


# virtual methods
.method public addActionToSequence(Lorg/catrobat/catroid/content/Sprite;Lorg/catrobat/catroid/content/actions/ScriptSequenceAction;)V
    .locals 2
    .param p1, "sprite"    # Lorg/catrobat/catroid/content/Sprite;
    .param p2, "sequence"    # Lorg/catrobat/catroid/content/actions/ScriptSequenceAction;

    .line 60
    invoke-virtual {p1}, Lorg/catrobat/catroid/content/Sprite;->getActionFactory()Lorg/catrobat/catroid/content/ActionFactory;

    move-result-object v0

    sget-object v1, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->PHYSICS_TURN_LEFT_SPEED:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    .line 61
    invoke-virtual {p0, v1}, Lorg/catrobat/catroid/content/bricks/TurnLeftSpeedBrick;->getFormulaWithBrickField(Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;)Lorg/catrobat/catroid/formulaeditor/Formula;

    move-result-object v1

    .line 60
    invoke-virtual {v0, p1, p2, v1}, Lorg/catrobat/catroid/content/ActionFactory;->createTurnLeftSpeedAction(Lorg/catrobat/catroid/content/Sprite;Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;Lorg/catrobat/catroid/formulaeditor/Formula;)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/catrobat/catroid/content/actions/ScriptSequenceAction;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    .line 62
    return-void
.end method

.method public addRequiredResources(Lorg/catrobat/catroid/content/bricks/Brick$ResourcesSet;)V
    .locals 1
    .param p1, "requiredResourcesSet"    # Lorg/catrobat/catroid/content/bricks/Brick$ResourcesSet;

    .line 49
    const/4 v0, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/catrobat/catroid/content/bricks/Brick$ResourcesSet;->add(Ljava/lang/Integer;)Z

    .line 50
    invoke-super {p0, p1}, Lorg/catrobat/catroid/content/bricks/FormulaBrick;->addRequiredResources(Lorg/catrobat/catroid/content/bricks/Brick$ResourcesSet;)V

    .line 51
    return-void
.end method

.method public getViewResource()I
    .locals 1

    .line 55
    const v0, 0x7f0d00b3

    return v0
.end method
