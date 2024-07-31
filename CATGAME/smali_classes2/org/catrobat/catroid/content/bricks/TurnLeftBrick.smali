.class public Lorg/catrobat/catroid/content/bricks/TurnLeftBrick;
.super Lorg/catrobat/catroid/content/bricks/FormulaBrick;
.source "TurnLeftBrick.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 34
    invoke-direct {p0}, Lorg/catrobat/catroid/content/bricks/FormulaBrick;-><init>()V

    .line 35
    sget-object v0, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->TURN_LEFT_DEGREES:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    const v1, 0x7f0a0295

    invoke-virtual {p0, v0, v1}, Lorg/catrobat/catroid/content/bricks/TurnLeftBrick;->addAllowedBrickField(Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;I)V

    .line 36
    return-void
.end method

.method public constructor <init>(D)V
    .locals 2
    .param p1, "degreesValue"    # D

    .line 39
    new-instance v0, Lorg/catrobat/catroid/formulaeditor/Formula;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/catrobat/catroid/formulaeditor/Formula;-><init>(Ljava/lang/Double;)V

    invoke-direct {p0, v0}, Lorg/catrobat/catroid/content/bricks/TurnLeftBrick;-><init>(Lorg/catrobat/catroid/formulaeditor/Formula;)V

    .line 40
    return-void
.end method

.method public constructor <init>(Lorg/catrobat/catroid/formulaeditor/Formula;)V
    .locals 2
    .param p1, "formula"    # Lorg/catrobat/catroid/formulaeditor/Formula;

    .line 42
    invoke-direct {p0}, Lorg/catrobat/catroid/content/bricks/FormulaBrick;-><init>()V

    .line 43
    sget-object v0, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->TURN_LEFT_DEGREES:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    const v1, 0x7f0a0295

    invoke-virtual {p0, v0, v1}, Lorg/catrobat/catroid/content/bricks/TurnLeftBrick;->addAllowedBrickField(Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;I)V

    .line 44
    sget-object v0, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->TURN_LEFT_DEGREES:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    invoke-virtual {p0, v0, p1}, Lorg/catrobat/catroid/content/bricks/TurnLeftBrick;->setFormulaWithBrickField(Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;Lorg/catrobat/catroid/formulaeditor/Formula;)V

    .line 45
    return-void
.end method


# virtual methods
.method public addActionToSequence(Lorg/catrobat/catroid/content/Sprite;Lorg/catrobat/catroid/content/actions/ScriptSequenceAction;)V
    .locals 2
    .param p1, "sprite"    # Lorg/catrobat/catroid/content/Sprite;
    .param p2, "sequence"    # Lorg/catrobat/catroid/content/actions/ScriptSequenceAction;

    .line 54
    invoke-virtual {p1}, Lorg/catrobat/catroid/content/Sprite;->getActionFactory()Lorg/catrobat/catroid/content/ActionFactory;

    move-result-object v0

    sget-object v1, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->TURN_LEFT_DEGREES:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    .line 56
    invoke-virtual {p0, v1}, Lorg/catrobat/catroid/content/bricks/TurnLeftBrick;->getFormulaWithBrickField(Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;)Lorg/catrobat/catroid/formulaeditor/Formula;

    move-result-object v1

    .line 55
    invoke-virtual {v0, p1, p2, v1}, Lorg/catrobat/catroid/content/ActionFactory;->createTurnLeftAction(Lorg/catrobat/catroid/content/Sprite;Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;Lorg/catrobat/catroid/formulaeditor/Formula;)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v0

    .line 54
    invoke-virtual {p2, v0}, Lorg/catrobat/catroid/content/actions/ScriptSequenceAction;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    .line 57
    return-void
.end method

.method public getViewResource()I
    .locals 1

    .line 49
    const v0, 0x7f0d00fa

    return v0
.end method
