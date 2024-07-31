.class public Lorg/catrobat/catroid/content/bricks/SetGravityBrick;
.super Lorg/catrobat/catroid/content/bricks/FormulaBrick;
.source "SetGravityBrick.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 36
    invoke-direct {p0}, Lorg/catrobat/catroid/content/bricks/FormulaBrick;-><init>()V

    .line 37
    sget-object v0, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->PHYSICS_GRAVITY_X:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    const v1, 0x7f0a0208

    invoke-virtual {p0, v0, v1}, Lorg/catrobat/catroid/content/bricks/SetGravityBrick;->addAllowedBrickField(Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;I)V

    .line 38
    sget-object v0, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->PHYSICS_GRAVITY_Y:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    const v1, 0x7f0a0209

    invoke-virtual {p0, v0, v1}, Lorg/catrobat/catroid/content/bricks/SetGravityBrick;->addAllowedBrickField(Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;I)V

    .line 39
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/math/Vector2;)V
    .locals 3
    .param p1, "gravity"    # Lcom/badlogic/gdx/math/Vector2;

    .line 42
    new-instance v0, Lorg/catrobat/catroid/formulaeditor/Formula;

    iget v1, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/catrobat/catroid/formulaeditor/Formula;-><init>(Ljava/lang/Float;)V

    new-instance v1, Lorg/catrobat/catroid/formulaeditor/Formula;

    iget v2, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/catrobat/catroid/formulaeditor/Formula;-><init>(Ljava/lang/Float;)V

    invoke-direct {p0, v0, v1}, Lorg/catrobat/catroid/content/bricks/SetGravityBrick;-><init>(Lorg/catrobat/catroid/formulaeditor/Formula;Lorg/catrobat/catroid/formulaeditor/Formula;)V

    .line 43
    return-void
.end method

.method public constructor <init>(Lorg/catrobat/catroid/formulaeditor/Formula;Lorg/catrobat/catroid/formulaeditor/Formula;)V
    .locals 2
    .param p1, "gravityX"    # Lorg/catrobat/catroid/formulaeditor/Formula;
    .param p2, "gravityY"    # Lorg/catrobat/catroid/formulaeditor/Formula;

    .line 45
    invoke-direct {p0}, Lorg/catrobat/catroid/content/bricks/FormulaBrick;-><init>()V

    .line 46
    sget-object v0, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->PHYSICS_GRAVITY_X:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    const v1, 0x7f0a0208

    invoke-virtual {p0, v0, v1}, Lorg/catrobat/catroid/content/bricks/SetGravityBrick;->addAllowedBrickField(Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;I)V

    .line 47
    sget-object v0, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->PHYSICS_GRAVITY_Y:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    const v1, 0x7f0a0209

    invoke-virtual {p0, v0, v1}, Lorg/catrobat/catroid/content/bricks/SetGravityBrick;->addAllowedBrickField(Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;I)V

    .line 48
    sget-object v0, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->PHYSICS_GRAVITY_X:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    invoke-virtual {p0, v0, p1}, Lorg/catrobat/catroid/content/bricks/SetGravityBrick;->setFormulaWithBrickField(Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;Lorg/catrobat/catroid/formulaeditor/Formula;)V

    .line 49
    sget-object v0, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->PHYSICS_GRAVITY_Y:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    invoke-virtual {p0, v0, p2}, Lorg/catrobat/catroid/content/bricks/SetGravityBrick;->setFormulaWithBrickField(Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;Lorg/catrobat/catroid/formulaeditor/Formula;)V

    .line 50
    return-void
.end method


# virtual methods
.method public addActionToSequence(Lorg/catrobat/catroid/content/Sprite;Lorg/catrobat/catroid/content/actions/ScriptSequenceAction;)V
    .locals 3
    .param p1, "sprite"    # Lorg/catrobat/catroid/content/Sprite;
    .param p2, "sequence"    # Lorg/catrobat/catroid/content/actions/ScriptSequenceAction;

    .line 70
    invoke-virtual {p1}, Lorg/catrobat/catroid/content/Sprite;->getActionFactory()Lorg/catrobat/catroid/content/ActionFactory;

    move-result-object v0

    sget-object v1, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->PHYSICS_GRAVITY_X:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    .line 71
    invoke-virtual {p0, v1}, Lorg/catrobat/catroid/content/bricks/SetGravityBrick;->getFormulaWithBrickField(Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;)Lorg/catrobat/catroid/formulaeditor/Formula;

    move-result-object v1

    sget-object v2, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->PHYSICS_GRAVITY_Y:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    .line 72
    invoke-virtual {p0, v2}, Lorg/catrobat/catroid/content/bricks/SetGravityBrick;->getFormulaWithBrickField(Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;)Lorg/catrobat/catroid/formulaeditor/Formula;

    move-result-object v2

    .line 70
    invoke-virtual {v0, p1, p2, v1, v2}, Lorg/catrobat/catroid/content/ActionFactory;->createSetGravityAction(Lorg/catrobat/catroid/content/Sprite;Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;Lorg/catrobat/catroid/formulaeditor/Formula;Lorg/catrobat/catroid/formulaeditor/Formula;)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/catrobat/catroid/content/actions/ScriptSequenceAction;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    .line 73
    return-void
.end method

.method public addRequiredResources(Lorg/catrobat/catroid/content/bricks/Brick$ResourcesSet;)V
    .locals 1
    .param p1, "requiredResourcesSet"    # Lorg/catrobat/catroid/content/bricks/Brick$ResourcesSet;

    .line 54
    const/4 v0, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/catrobat/catroid/content/bricks/Brick$ResourcesSet;->add(Ljava/lang/Integer;)Z

    .line 55
    invoke-super {p0, p1}, Lorg/catrobat/catroid/content/bricks/FormulaBrick;->addRequiredResources(Lorg/catrobat/catroid/content/bricks/Brick$ResourcesSet;)V

    .line 56
    return-void
.end method

.method public getDefaultBrickField()Lorg/catrobat/catroid/content/bricks/Brick$BrickField;
    .locals 1

    .line 65
    sget-object v0, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->PHYSICS_GRAVITY_X:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    return-object v0
.end method

.method public bridge synthetic getDefaultBrickField()Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;
    .locals 1

    .line 32
    invoke-virtual {p0}, Lorg/catrobat/catroid/content/bricks/SetGravityBrick;->getDefaultBrickField()Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    move-result-object v0

    return-object v0
.end method

.method public getViewResource()I
    .locals 1

    .line 60
    const v0, 0x7f0d00af

    return v0
.end method
