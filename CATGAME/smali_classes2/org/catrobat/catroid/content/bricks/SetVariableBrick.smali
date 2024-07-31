.class public Lorg/catrobat/catroid/content/bricks/SetVariableBrick;
.super Lorg/catrobat/catroid/content/bricks/UserVariableBrickWithFormula;
.source "SetVariableBrick.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 37
    invoke-direct {p0}, Lorg/catrobat/catroid/content/bricks/UserVariableBrickWithFormula;-><init>()V

    .line 38
    sget-object v0, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->VARIABLE:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    const v1, 0x7f0a0244

    invoke-virtual {p0, v0, v1}, Lorg/catrobat/catroid/content/bricks/SetVariableBrick;->addAllowedBrickField(Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;I)V

    .line 39
    return-void
.end method

.method public constructor <init>(D)V
    .locals 2
    .param p1, "value"    # D

    .line 42
    new-instance v0, Lorg/catrobat/catroid/formulaeditor/Formula;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/catrobat/catroid/formulaeditor/Formula;-><init>(Ljava/lang/Double;)V

    invoke-direct {p0, v0}, Lorg/catrobat/catroid/content/bricks/SetVariableBrick;-><init>(Lorg/catrobat/catroid/formulaeditor/Formula;)V

    .line 43
    return-void
.end method

.method private constructor <init>(Lorg/catrobat/catroid/formulaeditor/Formula;)V
    .locals 1
    .param p1, "formula"    # Lorg/catrobat/catroid/formulaeditor/Formula;

    .line 55
    invoke-direct {p0}, Lorg/catrobat/catroid/content/bricks/SetVariableBrick;-><init>()V

    .line 56
    sget-object v0, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->VARIABLE:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    invoke-virtual {p0, v0, p1}, Lorg/catrobat/catroid/content/bricks/SetVariableBrick;->setFormulaWithBrickField(Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;Lorg/catrobat/catroid/formulaeditor/Formula;)V

    .line 57
    return-void
.end method

.method public constructor <init>(Lorg/catrobat/catroid/formulaeditor/Formula;Lorg/catrobat/catroid/formulaeditor/UserVariable;)V
    .locals 0
    .param p1, "variableFormula"    # Lorg/catrobat/catroid/formulaeditor/Formula;
    .param p2, "userVariable"    # Lorg/catrobat/catroid/formulaeditor/UserVariable;

    .line 46
    invoke-direct {p0, p1}, Lorg/catrobat/catroid/content/bricks/SetVariableBrick;-><init>(Lorg/catrobat/catroid/formulaeditor/Formula;)V

    .line 47
    iput-object p2, p0, Lorg/catrobat/catroid/content/bricks/SetVariableBrick;->userVariable:Lorg/catrobat/catroid/formulaeditor/UserVariable;

    .line 48
    return-void
.end method

.method public constructor <init>(Lorg/catrobat/catroid/formulaeditor/Sensors;)V
    .locals 5
    .param p1, "defaultValue"    # Lorg/catrobat/catroid/formulaeditor/Sensors;

    .line 51
    new-instance v0, Lorg/catrobat/catroid/formulaeditor/Formula;

    new-instance v1, Lorg/catrobat/catroid/formulaeditor/FormulaElement;

    sget-object v2, Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;->SENSOR:Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;

    invoke-virtual {p1}, Lorg/catrobat/catroid/formulaeditor/Sensors;->name()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lorg/catrobat/catroid/formulaeditor/FormulaElement;-><init>(Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;Ljava/lang/String;Lorg/catrobat/catroid/formulaeditor/FormulaElement;)V

    invoke-direct {v0, v1}, Lorg/catrobat/catroid/formulaeditor/Formula;-><init>(Lorg/catrobat/catroid/formulaeditor/FormulaElement;)V

    invoke-direct {p0, v0}, Lorg/catrobat/catroid/content/bricks/SetVariableBrick;-><init>(Lorg/catrobat/catroid/formulaeditor/Formula;)V

    .line 52
    return-void
.end method


# virtual methods
.method public addActionToSequence(Lorg/catrobat/catroid/content/Sprite;Lorg/catrobat/catroid/content/actions/ScriptSequenceAction;)V
    .locals 3
    .param p1, "sprite"    # Lorg/catrobat/catroid/content/Sprite;
    .param p2, "sequence"    # Lorg/catrobat/catroid/content/actions/ScriptSequenceAction;

    .line 71
    invoke-virtual {p1}, Lorg/catrobat/catroid/content/Sprite;->getActionFactory()Lorg/catrobat/catroid/content/ActionFactory;

    move-result-object v0

    sget-object v1, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->VARIABLE:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    .line 72
    invoke-virtual {p0, v1}, Lorg/catrobat/catroid/content/bricks/SetVariableBrick;->getFormulaWithBrickField(Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;)Lorg/catrobat/catroid/formulaeditor/Formula;

    move-result-object v1

    iget-object v2, p0, Lorg/catrobat/catroid/content/bricks/SetVariableBrick;->userVariable:Lorg/catrobat/catroid/formulaeditor/UserVariable;

    .line 71
    invoke-virtual {v0, p1, p2, v1, v2}, Lorg/catrobat/catroid/content/ActionFactory;->createSetVariableAction(Lorg/catrobat/catroid/content/Sprite;Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;Lorg/catrobat/catroid/formulaeditor/Formula;Lorg/catrobat/catroid/formulaeditor/UserVariable;)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/catrobat/catroid/content/actions/ScriptSequenceAction;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    .line 73
    return-void
.end method

.method protected getSpinnerId()I
    .locals 1

    .line 66
    const v0, 0x7f0a05a7

    return v0
.end method

.method public getViewResource()I
    .locals 1

    .line 61
    const v0, 0x7f0d00e2

    return v0
.end method
