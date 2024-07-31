.class public Lorg/catrobat/catroid/content/bricks/ArduinoSendPWMValueBrick;
.super Lorg/catrobat/catroid/content/bricks/FormulaBrick;
.source "ArduinoSendPWMValueBrick.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 36
    invoke-direct {p0}, Lorg/catrobat/catroid/content/bricks/FormulaBrick;-><init>()V

    .line 37
    sget-object v0, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->ARDUINO_ANALOG_PIN_NUMBER:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    const v1, 0x7f0a006a

    invoke-virtual {p0, v0, v1}, Lorg/catrobat/catroid/content/bricks/ArduinoSendPWMValueBrick;->addAllowedBrickField(Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;I)V

    .line 38
    sget-object v0, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->ARDUINO_ANALOG_PIN_VALUE:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    const v1, 0x7f0a006c

    invoke-virtual {p0, v0, v1}, Lorg/catrobat/catroid/content/bricks/ArduinoSendPWMValueBrick;->addAllowedBrickField(Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;I)V

    .line 39
    return-void
.end method

.method public constructor <init>(II)V
    .locals 3
    .param p1, "pinNumber"    # I
    .param p2, "pinValue"    # I

    .line 42
    new-instance v0, Lorg/catrobat/catroid/formulaeditor/Formula;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/catrobat/catroid/formulaeditor/Formula;-><init>(Ljava/lang/Integer;)V

    new-instance v1, Lorg/catrobat/catroid/formulaeditor/Formula;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/catrobat/catroid/formulaeditor/Formula;-><init>(Ljava/lang/Integer;)V

    invoke-direct {p0, v0, v1}, Lorg/catrobat/catroid/content/bricks/ArduinoSendPWMValueBrick;-><init>(Lorg/catrobat/catroid/formulaeditor/Formula;Lorg/catrobat/catroid/formulaeditor/Formula;)V

    .line 43
    return-void
.end method

.method public constructor <init>(Lorg/catrobat/catroid/formulaeditor/Formula;Lorg/catrobat/catroid/formulaeditor/Formula;)V
    .locals 1
    .param p1, "pinNumber"    # Lorg/catrobat/catroid/formulaeditor/Formula;
    .param p2, "pinValue"    # Lorg/catrobat/catroid/formulaeditor/Formula;

    .line 46
    invoke-direct {p0}, Lorg/catrobat/catroid/content/bricks/ArduinoSendPWMValueBrick;-><init>()V

    .line 47
    sget-object v0, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->ARDUINO_ANALOG_PIN_NUMBER:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    invoke-virtual {p0, v0, p1}, Lorg/catrobat/catroid/content/bricks/ArduinoSendPWMValueBrick;->setFormulaWithBrickField(Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;Lorg/catrobat/catroid/formulaeditor/Formula;)V

    .line 48
    sget-object v0, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->ARDUINO_ANALOG_PIN_VALUE:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    invoke-virtual {p0, v0, p2}, Lorg/catrobat/catroid/content/bricks/ArduinoSendPWMValueBrick;->setFormulaWithBrickField(Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;Lorg/catrobat/catroid/formulaeditor/Formula;)V

    .line 49
    return-void
.end method


# virtual methods
.method public addActionToSequence(Lorg/catrobat/catroid/content/Sprite;Lorg/catrobat/catroid/content/actions/ScriptSequenceAction;)V
    .locals 3
    .param p1, "sprite"    # Lorg/catrobat/catroid/content/Sprite;
    .param p2, "sequence"    # Lorg/catrobat/catroid/content/actions/ScriptSequenceAction;

    .line 64
    invoke-virtual {p1}, Lorg/catrobat/catroid/content/Sprite;->getActionFactory()Lorg/catrobat/catroid/content/ActionFactory;

    move-result-object v0

    sget-object v1, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->ARDUINO_ANALOG_PIN_NUMBER:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    .line 65
    invoke-virtual {p0, v1}, Lorg/catrobat/catroid/content/bricks/ArduinoSendPWMValueBrick;->getFormulaWithBrickField(Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;)Lorg/catrobat/catroid/formulaeditor/Formula;

    move-result-object v1

    sget-object v2, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->ARDUINO_ANALOG_PIN_VALUE:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    .line 66
    invoke-virtual {p0, v2}, Lorg/catrobat/catroid/content/bricks/ArduinoSendPWMValueBrick;->getFormulaWithBrickField(Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;)Lorg/catrobat/catroid/formulaeditor/Formula;

    move-result-object v2

    .line 64
    invoke-virtual {v0, p1, p2, v1, v2}, Lorg/catrobat/catroid/content/ActionFactory;->createSendPWMArduinoValueAction(Lorg/catrobat/catroid/content/Sprite;Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;Lorg/catrobat/catroid/formulaeditor/Formula;Lorg/catrobat/catroid/formulaeditor/Formula;)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/catrobat/catroid/content/actions/ScriptSequenceAction;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    .line 67
    return-void
.end method

.method public addRequiredResources(Lorg/catrobat/catroid/content/bricks/Brick$ResourcesSet;)V
    .locals 1
    .param p1, "requiredResourcesSet"    # Lorg/catrobat/catroid/content/bricks/Brick$ResourcesSet;

    .line 58
    const/4 v0, 0x6

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

    .line 71
    sget-object v0, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->ARDUINO_ANALOG_PIN_NUMBER:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    return-object v0
.end method

.method public bridge synthetic getDefaultBrickField()Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;
    .locals 1

    .line 32
    invoke-virtual {p0}, Lorg/catrobat/catroid/content/bricks/ArduinoSendPWMValueBrick;->getDefaultBrickField()Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    move-result-object v0

    return-object v0
.end method

.method public getViewResource()I
    .locals 1

    .line 53
    const v0, 0x7f0d0035

    return v0
.end method

.method public updateArduinoValues994to995()V
    .locals 7

    .line 75
    sget-object v0, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->ARDUINO_ANALOG_PIN_VALUE:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    invoke-virtual {p0, v0}, Lorg/catrobat/catroid/content/bricks/ArduinoSendPWMValueBrick;->getFormulaWithBrickField(Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;)Lorg/catrobat/catroid/formulaeditor/Formula;

    move-result-object v0

    .line 76
    .local v0, "formula":Lorg/catrobat/catroid/formulaeditor/Formula;
    invoke-virtual {v0}, Lorg/catrobat/catroid/formulaeditor/Formula;->getRoot()Lorg/catrobat/catroid/formulaeditor/FormulaElement;

    move-result-object v1

    .line 78
    .local v1, "oldFormulaElement":Lorg/catrobat/catroid/formulaeditor/FormulaElement;
    new-instance v2, Lorg/catrobat/catroid/formulaeditor/FormulaElement;

    sget-object v3, Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;->OPERATOR:Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;

    sget-object v4, Lorg/catrobat/catroid/formulaeditor/Operators;->MULT:Lorg/catrobat/catroid/formulaeditor/Operators;

    .line 79
    invoke-virtual {v4}, Lorg/catrobat/catroid/formulaeditor/Operators;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5}, Lorg/catrobat/catroid/formulaeditor/FormulaElement;-><init>(Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;Ljava/lang/String;Lorg/catrobat/catroid/formulaeditor/FormulaElement;)V

    .line 80
    .local v2, "multiplication":Lorg/catrobat/catroid/formulaeditor/FormulaElement;
    new-instance v3, Lorg/catrobat/catroid/formulaeditor/FormulaElement;

    sget-object v4, Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;->NUMBER:Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;

    const-string v6, "2.55"

    invoke-direct {v3, v4, v6, v5}, Lorg/catrobat/catroid/formulaeditor/FormulaElement;-><init>(Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;Ljava/lang/String;Lorg/catrobat/catroid/formulaeditor/FormulaElement;)V

    .line 82
    .local v3, "twoPointFiveFive":Lorg/catrobat/catroid/formulaeditor/FormulaElement;
    invoke-virtual {v2, v3}, Lorg/catrobat/catroid/formulaeditor/FormulaElement;->setLeftChild(Lorg/catrobat/catroid/formulaeditor/FormulaElement;)V

    .line 83
    invoke-virtual {v2, v1}, Lorg/catrobat/catroid/formulaeditor/FormulaElement;->setRightChild(Lorg/catrobat/catroid/formulaeditor/FormulaElement;)V

    .line 85
    sget-object v4, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->ARDUINO_ANALOG_PIN_VALUE:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    new-instance v5, Lorg/catrobat/catroid/formulaeditor/Formula;

    invoke-direct {v5, v2}, Lorg/catrobat/catroid/formulaeditor/Formula;-><init>(Lorg/catrobat/catroid/formulaeditor/FormulaElement;)V

    invoke-virtual {p0, v4, v5}, Lorg/catrobat/catroid/content/bricks/ArduinoSendPWMValueBrick;->setFormulaWithBrickField(Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;Lorg/catrobat/catroid/formulaeditor/Formula;)V

    .line 86
    return-void
.end method
