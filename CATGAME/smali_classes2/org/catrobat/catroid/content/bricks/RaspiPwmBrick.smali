.class public Lorg/catrobat/catroid/content/bricks/RaspiPwmBrick;
.super Lorg/catrobat/catroid/content/bricks/FormulaBrick;
.source "RaspiPwmBrick.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 34
    invoke-direct {p0}, Lorg/catrobat/catroid/content/bricks/FormulaBrick;-><init>()V

    .line 35
    sget-object v0, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->RASPI_DIGITAL_PIN_NUMBER:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    const v1, 0x7f0a01be

    invoke-virtual {p0, v0, v1}, Lorg/catrobat/catroid/content/bricks/RaspiPwmBrick;->addAllowedBrickField(Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;I)V

    .line 36
    sget-object v0, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->RASPI_PWM_FREQUENCY:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    const v1, 0x7f0a01bb

    invoke-virtual {p0, v0, v1}, Lorg/catrobat/catroid/content/bricks/RaspiPwmBrick;->addAllowedBrickField(Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;I)V

    .line 37
    sget-object v0, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->RASPI_PWM_PERCENTAGE:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    const v1, 0x7f0a01bd

    invoke-virtual {p0, v0, v1}, Lorg/catrobat/catroid/content/bricks/RaspiPwmBrick;->addAllowedBrickField(Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;I)V

    .line 38
    return-void
.end method

.method public constructor <init>(IDD)V
    .locals 4
    .param p1, "pinNumber"    # I
    .param p2, "pwmFrequency"    # D
    .param p4, "pwmPercentage"    # D

    .line 41
    new-instance v0, Lorg/catrobat/catroid/formulaeditor/Formula;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/catrobat/catroid/formulaeditor/Formula;-><init>(Ljava/lang/Integer;)V

    new-instance v1, Lorg/catrobat/catroid/formulaeditor/Formula;

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/catrobat/catroid/formulaeditor/Formula;-><init>(Ljava/lang/Double;)V

    new-instance v2, Lorg/catrobat/catroid/formulaeditor/Formula;

    invoke-static {p4, p5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/catrobat/catroid/formulaeditor/Formula;-><init>(Ljava/lang/Double;)V

    invoke-direct {p0, v0, v1, v2}, Lorg/catrobat/catroid/content/bricks/RaspiPwmBrick;-><init>(Lorg/catrobat/catroid/formulaeditor/Formula;Lorg/catrobat/catroid/formulaeditor/Formula;Lorg/catrobat/catroid/formulaeditor/Formula;)V

    .line 42
    return-void
.end method

.method public constructor <init>(Lorg/catrobat/catroid/formulaeditor/Formula;Lorg/catrobat/catroid/formulaeditor/Formula;Lorg/catrobat/catroid/formulaeditor/Formula;)V
    .locals 1
    .param p1, "pinNumber"    # Lorg/catrobat/catroid/formulaeditor/Formula;
    .param p2, "pwmFrequency"    # Lorg/catrobat/catroid/formulaeditor/Formula;
    .param p3, "pwmPercentage"    # Lorg/catrobat/catroid/formulaeditor/Formula;

    .line 45
    invoke-direct {p0}, Lorg/catrobat/catroid/content/bricks/RaspiPwmBrick;-><init>()V

    .line 46
    sget-object v0, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->RASPI_DIGITAL_PIN_NUMBER:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    invoke-virtual {p0, v0, p1}, Lorg/catrobat/catroid/content/bricks/RaspiPwmBrick;->setFormulaWithBrickField(Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;Lorg/catrobat/catroid/formulaeditor/Formula;)V

    .line 47
    sget-object v0, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->RASPI_PWM_FREQUENCY:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    invoke-virtual {p0, v0, p2}, Lorg/catrobat/catroid/content/bricks/RaspiPwmBrick;->setFormulaWithBrickField(Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;Lorg/catrobat/catroid/formulaeditor/Formula;)V

    .line 48
    sget-object v0, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->RASPI_PWM_PERCENTAGE:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    invoke-virtual {p0, v0, p3}, Lorg/catrobat/catroid/content/bricks/RaspiPwmBrick;->setFormulaWithBrickField(Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;Lorg/catrobat/catroid/formulaeditor/Formula;)V

    .line 49
    return-void
.end method


# virtual methods
.method public addActionToSequence(Lorg/catrobat/catroid/content/Sprite;Lorg/catrobat/catroid/content/actions/ScriptSequenceAction;)V
    .locals 6
    .param p1, "sprite"    # Lorg/catrobat/catroid/content/Sprite;
    .param p2, "sequence"    # Lorg/catrobat/catroid/content/actions/ScriptSequenceAction;

    .line 69
    invoke-virtual {p1}, Lorg/catrobat/catroid/content/Sprite;->getActionFactory()Lorg/catrobat/catroid/content/ActionFactory;

    move-result-object v0

    sget-object v1, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->RASPI_DIGITAL_PIN_NUMBER:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    .line 70
    invoke-virtual {p0, v1}, Lorg/catrobat/catroid/content/bricks/RaspiPwmBrick;->getFormulaWithBrickField(Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;)Lorg/catrobat/catroid/formulaeditor/Formula;

    move-result-object v3

    sget-object v1, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->RASPI_PWM_FREQUENCY:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    .line 71
    invoke-virtual {p0, v1}, Lorg/catrobat/catroid/content/bricks/RaspiPwmBrick;->getFormulaWithBrickField(Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;)Lorg/catrobat/catroid/formulaeditor/Formula;

    move-result-object v4

    sget-object v1, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->RASPI_PWM_PERCENTAGE:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    .line 72
    invoke-virtual {p0, v1}, Lorg/catrobat/catroid/content/bricks/RaspiPwmBrick;->getFormulaWithBrickField(Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;)Lorg/catrobat/catroid/formulaeditor/Formula;

    move-result-object v5

    .line 69
    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lorg/catrobat/catroid/content/ActionFactory;->createSendRaspiPwmValueAction(Lorg/catrobat/catroid/content/Sprite;Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;Lorg/catrobat/catroid/formulaeditor/Formula;Lorg/catrobat/catroid/formulaeditor/Formula;Lorg/catrobat/catroid/formulaeditor/Formula;)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/catrobat/catroid/content/actions/ScriptSequenceAction;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    .line 73
    return-void
.end method

.method public addRequiredResources(Lorg/catrobat/catroid/content/bricks/Brick$ResourcesSet;)V
    .locals 1
    .param p1, "requiredResourcesSet"    # Lorg/catrobat/catroid/content/bricks/Brick$ResourcesSet;

    .line 58
    const/4 v0, 0x7

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/catrobat/catroid/content/bricks/Brick$ResourcesSet;->add(Ljava/lang/Integer;)Z

    .line 59
    invoke-super {p0, p1}, Lorg/catrobat/catroid/content/bricks/FormulaBrick;->addRequiredResources(Lorg/catrobat/catroid/content/bricks/Brick$ResourcesSet;)V

    .line 60
    return-void
.end method

.method public getDefaultBrickField()Lorg/catrobat/catroid/content/bricks/Brick$BrickField;
    .locals 1

    .line 64
    sget-object v0, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->RASPI_DIGITAL_PIN_NUMBER:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    return-object v0
.end method

.method public bridge synthetic getDefaultBrickField()Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;
    .locals 1

    .line 30
    invoke-virtual {p0}, Lorg/catrobat/catroid/content/bricks/RaspiPwmBrick;->getDefaultBrickField()Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    move-result-object v0

    return-object v0
.end method

.method public getViewResource()I
    .locals 1

    .line 53
    const v0, 0x7f0d00be

    return v0
.end method
