.class public Lorg/catrobat/catroid/content/bricks/ChangeVariableBrick;
.super Lorg/catrobat/catroid/content/bricks/UserVariableBrickWithFormula;
.source "ChangeVariableBrick.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 35
    invoke-direct {p0}, Lorg/catrobat/catroid/content/bricks/UserVariableBrickWithFormula;-><init>()V

    .line 36
    sget-object v0, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->VARIABLE_CHANGE:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    const v1, 0x7f0a009d

    invoke-virtual {p0, v0, v1}, Lorg/catrobat/catroid/content/bricks/ChangeVariableBrick;->addAllowedBrickField(Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;I)V

    .line 37
    return-void
.end method

.method public constructor <init>(D)V
    .locals 2
    .param p1, "value"    # D

    .line 40
    new-instance v0, Lorg/catrobat/catroid/formulaeditor/Formula;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/catrobat/catroid/formulaeditor/Formula;-><init>(Ljava/lang/Double;)V

    invoke-direct {p0, v0}, Lorg/catrobat/catroid/content/bricks/ChangeVariableBrick;-><init>(Lorg/catrobat/catroid/formulaeditor/Formula;)V

    .line 41
    return-void
.end method

.method public constructor <init>(Lorg/catrobat/catroid/formulaeditor/Formula;)V
    .locals 1
    .param p1, "formula"    # Lorg/catrobat/catroid/formulaeditor/Formula;

    .line 49
    invoke-direct {p0}, Lorg/catrobat/catroid/content/bricks/ChangeVariableBrick;-><init>()V

    .line 50
    sget-object v0, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->VARIABLE_CHANGE:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    invoke-virtual {p0, v0, p1}, Lorg/catrobat/catroid/content/bricks/ChangeVariableBrick;->setFormulaWithBrickField(Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;Lorg/catrobat/catroid/formulaeditor/Formula;)V

    .line 51
    return-void
.end method

.method public constructor <init>(Lorg/catrobat/catroid/formulaeditor/Formula;Lorg/catrobat/catroid/formulaeditor/UserVariable;)V
    .locals 0
    .param p1, "formula"    # Lorg/catrobat/catroid/formulaeditor/Formula;
    .param p2, "userVariable"    # Lorg/catrobat/catroid/formulaeditor/UserVariable;

    .line 44
    invoke-direct {p0, p1}, Lorg/catrobat/catroid/content/bricks/ChangeVariableBrick;-><init>(Lorg/catrobat/catroid/formulaeditor/Formula;)V

    .line 45
    iput-object p2, p0, Lorg/catrobat/catroid/content/bricks/ChangeVariableBrick;->userVariable:Lorg/catrobat/catroid/formulaeditor/UserVariable;

    .line 46
    return-void
.end method


# virtual methods
.method public addActionToSequence(Lorg/catrobat/catroid/content/Sprite;Lorg/catrobat/catroid/content/actions/ScriptSequenceAction;)V
    .locals 3
    .param p1, "sprite"    # Lorg/catrobat/catroid/content/Sprite;
    .param p2, "sequence"    # Lorg/catrobat/catroid/content/actions/ScriptSequenceAction;

    .line 65
    invoke-virtual {p1}, Lorg/catrobat/catroid/content/Sprite;->getActionFactory()Lorg/catrobat/catroid/content/ActionFactory;

    move-result-object v0

    sget-object v1, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->VARIABLE_CHANGE:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    .line 67
    invoke-virtual {p0, v1}, Lorg/catrobat/catroid/content/bricks/ChangeVariableBrick;->getFormulaWithBrickField(Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;)Lorg/catrobat/catroid/formulaeditor/Formula;

    move-result-object v1

    iget-object v2, p0, Lorg/catrobat/catroid/content/bricks/ChangeVariableBrick;->userVariable:Lorg/catrobat/catroid/formulaeditor/UserVariable;

    .line 66
    invoke-virtual {v0, p1, p2, v1, v2}, Lorg/catrobat/catroid/content/ActionFactory;->createChangeVariableAction(Lorg/catrobat/catroid/content/Sprite;Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;Lorg/catrobat/catroid/formulaeditor/Formula;Lorg/catrobat/catroid/formulaeditor/UserVariable;)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v0

    .line 65
    invoke-virtual {p2, v0}, Lorg/catrobat/catroid/content/actions/ScriptSequenceAction;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    .line 68
    return-void
.end method

.method protected getSpinnerId()I
    .locals 1

    .line 60
    const v0, 0x7f0a02f0

    return v0
.end method

.method public getViewResource()I
    .locals 1

    .line 55
    const v0, 0x7f0d0058

    return v0
.end method
