.class public Lorg/catrobat/catroid/content/bricks/RaspiSendDigitalValueBrick;
.super Lorg/catrobat/catroid/content/bricks/FormulaBrick;
.source "RaspiSendDigitalValueBrick.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 34
    invoke-direct {p0}, Lorg/catrobat/catroid/content/bricks/FormulaBrick;-><init>()V

    .line 35
    sget-object v0, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->RASPI_DIGITAL_PIN_NUMBER:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    const v1, 0x7f0a01c0

    invoke-virtual {p0, v0, v1}, Lorg/catrobat/catroid/content/bricks/RaspiSendDigitalValueBrick;->addAllowedBrickField(Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;I)V

    .line 36
    sget-object v0, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->RASPI_DIGITAL_PIN_VALUE:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    const v1, 0x7f0a01c1

    invoke-virtual {p0, v0, v1}, Lorg/catrobat/catroid/content/bricks/RaspiSendDigitalValueBrick;->addAllowedBrickField(Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;I)V

    .line 37
    return-void
.end method

.method public constructor <init>(II)V
    .locals 3
    .param p1, "pinNumber"    # I
    .param p2, "pinValue"    # I

    .line 40
    new-instance v0, Lorg/catrobat/catroid/formulaeditor/Formula;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/catrobat/catroid/formulaeditor/Formula;-><init>(Ljava/lang/Integer;)V

    new-instance v1, Lorg/catrobat/catroid/formulaeditor/Formula;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/catrobat/catroid/formulaeditor/Formula;-><init>(Ljava/lang/Integer;)V

    invoke-direct {p0, v0, v1}, Lorg/catrobat/catroid/content/bricks/RaspiSendDigitalValueBrick;-><init>(Lorg/catrobat/catroid/formulaeditor/Formula;Lorg/catrobat/catroid/formulaeditor/Formula;)V

    .line 41
    return-void
.end method

.method public constructor <init>(Lorg/catrobat/catroid/formulaeditor/Formula;Lorg/catrobat/catroid/formulaeditor/Formula;)V
    .locals 1
    .param p1, "pinNumber"    # Lorg/catrobat/catroid/formulaeditor/Formula;
    .param p2, "pinValue"    # Lorg/catrobat/catroid/formulaeditor/Formula;

    .line 44
    invoke-direct {p0}, Lorg/catrobat/catroid/content/bricks/RaspiSendDigitalValueBrick;-><init>()V

    .line 45
    sget-object v0, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->RASPI_DIGITAL_PIN_NUMBER:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    invoke-virtual {p0, v0, p1}, Lorg/catrobat/catroid/content/bricks/RaspiSendDigitalValueBrick;->setFormulaWithBrickField(Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;Lorg/catrobat/catroid/formulaeditor/Formula;)V

    .line 46
    sget-object v0, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->RASPI_DIGITAL_PIN_VALUE:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    invoke-virtual {p0, v0, p2}, Lorg/catrobat/catroid/content/bricks/RaspiSendDigitalValueBrick;->setFormulaWithBrickField(Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;Lorg/catrobat/catroid/formulaeditor/Formula;)V

    .line 47
    return-void
.end method


# virtual methods
.method public addActionToSequence(Lorg/catrobat/catroid/content/Sprite;Lorg/catrobat/catroid/content/actions/ScriptSequenceAction;)V
    .locals 3
    .param p1, "sprite"    # Lorg/catrobat/catroid/content/Sprite;
    .param p2, "sequence"    # Lorg/catrobat/catroid/content/actions/ScriptSequenceAction;

    .line 67
    invoke-virtual {p1}, Lorg/catrobat/catroid/content/Sprite;->getActionFactory()Lorg/catrobat/catroid/content/ActionFactory;

    move-result-object v0

    sget-object v1, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->RASPI_DIGITAL_PIN_NUMBER:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    .line 68
    invoke-virtual {p0, v1}, Lorg/catrobat/catroid/content/bricks/RaspiSendDigitalValueBrick;->getFormulaWithBrickField(Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;)Lorg/catrobat/catroid/formulaeditor/Formula;

    move-result-object v1

    sget-object v2, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->RASPI_DIGITAL_PIN_VALUE:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    .line 69
    invoke-virtual {p0, v2}, Lorg/catrobat/catroid/content/bricks/RaspiSendDigitalValueBrick;->getFormulaWithBrickField(Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;)Lorg/catrobat/catroid/formulaeditor/Formula;

    move-result-object v2

    .line 67
    invoke-virtual {v0, p1, p2, v1, v2}, Lorg/catrobat/catroid/content/ActionFactory;->createSendDigitalRaspiValueAction(Lorg/catrobat/catroid/content/Sprite;Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;Lorg/catrobat/catroid/formulaeditor/Formula;Lorg/catrobat/catroid/formulaeditor/Formula;)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/catrobat/catroid/content/actions/ScriptSequenceAction;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    .line 70
    return-void
.end method

.method public addRequiredResources(Lorg/catrobat/catroid/content/bricks/Brick$ResourcesSet;)V
    .locals 1
    .param p1, "requiredResourcesSet"    # Lorg/catrobat/catroid/content/bricks/Brick$ResourcesSet;

    .line 56
    const/4 v0, 0x7

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/catrobat/catroid/content/bricks/Brick$ResourcesSet;->add(Ljava/lang/Integer;)Z

    .line 57
    invoke-super {p0, p1}, Lorg/catrobat/catroid/content/bricks/FormulaBrick;->addRequiredResources(Lorg/catrobat/catroid/content/bricks/Brick$ResourcesSet;)V

    .line 58
    return-void
.end method

.method public getDefaultBrickField()Lorg/catrobat/catroid/content/bricks/Brick$BrickField;
    .locals 1

    .line 62
    sget-object v0, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->RASPI_DIGITAL_PIN_NUMBER:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    return-object v0
.end method

.method public bridge synthetic getDefaultBrickField()Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;
    .locals 1

    .line 30
    invoke-virtual {p0}, Lorg/catrobat/catroid/content/bricks/RaspiSendDigitalValueBrick;->getDefaultBrickField()Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    move-result-object v0

    return-object v0
.end method

.method public getViewResource()I
    .locals 1

    .line 51
    const v0, 0x7f0d00bf

    return v0
.end method
