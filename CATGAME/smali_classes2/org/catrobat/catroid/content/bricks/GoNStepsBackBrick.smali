.class public Lorg/catrobat/catroid/content/bricks/GoNStepsBackBrick;
.super Lorg/catrobat/catroid/content/bricks/FormulaBrick;
.source "GoNStepsBackBrick.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 43
    invoke-direct {p0}, Lorg/catrobat/catroid/content/bricks/FormulaBrick;-><init>()V

    .line 44
    sget-object v0, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->STEPS:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    const v1, 0x7f0a012c

    invoke-virtual {p0, v0, v1}, Lorg/catrobat/catroid/content/bricks/GoNStepsBackBrick;->addAllowedBrickField(Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;I)V

    .line 45
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .param p1, "steps"    # I

    .line 48
    new-instance v0, Lorg/catrobat/catroid/formulaeditor/Formula;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/catrobat/catroid/formulaeditor/Formula;-><init>(Ljava/lang/Integer;)V

    invoke-direct {p0, v0}, Lorg/catrobat/catroid/content/bricks/GoNStepsBackBrick;-><init>(Lorg/catrobat/catroid/formulaeditor/Formula;)V

    .line 49
    return-void
.end method

.method public constructor <init>(Lorg/catrobat/catroid/formulaeditor/Formula;)V
    .locals 1
    .param p1, "formula"    # Lorg/catrobat/catroid/formulaeditor/Formula;

    .line 52
    invoke-direct {p0}, Lorg/catrobat/catroid/content/bricks/GoNStepsBackBrick;-><init>()V

    .line 53
    sget-object v0, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->STEPS:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    invoke-virtual {p0, v0, p1}, Lorg/catrobat/catroid/content/bricks/GoNStepsBackBrick;->setFormulaWithBrickField(Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;Lorg/catrobat/catroid/formulaeditor/Formula;)V

    .line 54
    return-void
.end method


# virtual methods
.method public addActionToSequence(Lorg/catrobat/catroid/content/Sprite;Lorg/catrobat/catroid/content/actions/ScriptSequenceAction;)V
    .locals 2
    .param p1, "sprite"    # Lorg/catrobat/catroid/content/Sprite;
    .param p2, "sequence"    # Lorg/catrobat/catroid/content/actions/ScriptSequenceAction;

    .line 90
    invoke-virtual {p1}, Lorg/catrobat/catroid/content/Sprite;->getActionFactory()Lorg/catrobat/catroid/content/ActionFactory;

    move-result-object v0

    sget-object v1, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->STEPS:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    .line 91
    invoke-virtual {p0, v1}, Lorg/catrobat/catroid/content/bricks/GoNStepsBackBrick;->getFormulaWithBrickField(Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;)Lorg/catrobat/catroid/formulaeditor/Formula;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v1}, Lorg/catrobat/catroid/content/ActionFactory;->createGoNStepsBackAction(Lorg/catrobat/catroid/content/Sprite;Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;Lorg/catrobat/catroid/formulaeditor/Formula;)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v0

    .line 90
    invoke-virtual {p2, v0}, Lorg/catrobat/catroid/content/actions/ScriptSequenceAction;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    .line 92
    return-void
.end method

.method public getView(Landroid/content/Context;)Landroid/view/View;
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .line 63
    invoke-super {p0, p1}, Lorg/catrobat/catroid/content/bricks/FormulaBrick;->getView(Landroid/content/Context;)Landroid/view/View;

    .line 65
    iget-object v0, p0, Lorg/catrobat/catroid/content/bricks/GoNStepsBackBrick;->view:Landroid/view/View;

    const v1, 0x7f0a012e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 67
    .local v0, "times":Landroid/widget/TextView;
    sget-object v1, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->STEPS:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    invoke-virtual {p0, v1}, Lorg/catrobat/catroid/content/bricks/GoNStepsBackBrick;->getFormulaWithBrickField(Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;)Lorg/catrobat/catroid/formulaeditor/Formula;

    move-result-object v1

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/Formula;->isNumber()Z

    move-result v1

    const/high16 v2, 0x7f100000

    if-eqz v1, :cond_0

    .line 69
    :try_start_0
    invoke-static {}, Lorg/catrobat/catroid/ProjectManager;->getInstance()Lorg/catrobat/catroid/ProjectManager;

    move-result-object v1

    .line 70
    .local v1, "projectManager":Lorg/catrobat/catroid/ProjectManager;
    new-instance v3, Lorg/catrobat/catroid/content/Scope;

    invoke-virtual {v1}, Lorg/catrobat/catroid/ProjectManager;->getCurrentProject()Lorg/catrobat/catroid/content/Project;

    move-result-object v4

    .line 71
    invoke-virtual {v1}, Lorg/catrobat/catroid/ProjectManager;->getCurrentSprite()Lorg/catrobat/catroid/content/Sprite;

    move-result-object v5

    const/4 v6, 0x0

    invoke-direct {v3, v4, v5, v6}, Lorg/catrobat/catroid/content/Scope;-><init>(Lorg/catrobat/catroid/content/Project;Lorg/catrobat/catroid/content/Sprite;Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;)V

    .line 72
    .local v3, "scope":Lorg/catrobat/catroid/content/Scope;
    iget-object v4, p0, Lorg/catrobat/catroid/content/bricks/GoNStepsBackBrick;->view:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget-object v5, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->STEPS:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    .line 74
    invoke-virtual {p0, v5}, Lorg/catrobat/catroid/content/bricks/GoNStepsBackBrick;->getFormulaWithBrickField(Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;)Lorg/catrobat/catroid/formulaeditor/Formula;

    move-result-object v5

    invoke-virtual {v5, v3}, Lorg/catrobat/catroid/formulaeditor/Formula;->interpretDouble(Lorg/catrobat/catroid/content/Scope;)Ljava/lang/Double;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    invoke-static {v5, v6}, Lorg/catrobat/catroid/utils/Utils;->convertDoubleToPluralInteger(D)I

    move-result v5

    .line 72
    invoke-virtual {v4, v2, v5}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Lorg/catrobat/catroid/formulaeditor/InterpretationException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "projectManager":Lorg/catrobat/catroid/ProjectManager;
    .end local v3    # "scope":Lorg/catrobat/catroid/content/Scope;
    goto :goto_0

    .line 77
    :catch_0
    move-exception v1

    .line 78
    .local v1, "interpretationException":Lorg/catrobat/catroid/formulaeditor/InterpretationException;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Couldn\'t interpret Formula."

    invoke-static {v2, v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 79
    .end local v1    # "interpretationException":Lorg/catrobat/catroid/formulaeditor/InterpretationException;
    :goto_0
    goto :goto_1

    .line 81
    :cond_0
    iget-object v1, p0, Lorg/catrobat/catroid/content/bricks/GoNStepsBackBrick;->view:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0xbb6bc

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    :goto_1
    iget-object v1, p0, Lorg/catrobat/catroid/content/bricks/GoNStepsBackBrick;->view:Landroid/view/View;

    return-object v1
.end method

.method public getViewResource()I
    .locals 1

    .line 58
    const v0, 0x7f0d0081

    return v0
.end method
