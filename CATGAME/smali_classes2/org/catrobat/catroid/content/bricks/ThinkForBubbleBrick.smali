.class public Lorg/catrobat/catroid/content/bricks/ThinkForBubbleBrick;
.super Lorg/catrobat/catroid/content/bricks/FormulaBrick;
.source "ThinkForBubbleBrick.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 41
    invoke-direct {p0}, Lorg/catrobat/catroid/content/bricks/FormulaBrick;-><init>()V

    .line 42
    sget-object v0, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->STRING:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    const v1, 0x7f0a0121

    invoke-virtual {p0, v0, v1}, Lorg/catrobat/catroid/content/bricks/ThinkForBubbleBrick;->addAllowedBrickField(Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;I)V

    .line 43
    sget-object v0, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->DURATION_IN_SECONDS:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    const v1, 0x7f0a0120

    invoke-virtual {p0, v0, v1}, Lorg/catrobat/catroid/content/bricks/ThinkForBubbleBrick;->addAllowedBrickField(Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;I)V

    .line 44
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;F)V
    .locals 3
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "durationInSecondsValue"    # F

    .line 47
    new-instance v0, Lorg/catrobat/catroid/formulaeditor/Formula;

    invoke-direct {v0, p1}, Lorg/catrobat/catroid/formulaeditor/Formula;-><init>(Ljava/lang/String;)V

    new-instance v1, Lorg/catrobat/catroid/formulaeditor/Formula;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/catrobat/catroid/formulaeditor/Formula;-><init>(Ljava/lang/Float;)V

    invoke-direct {p0, v0, v1}, Lorg/catrobat/catroid/content/bricks/ThinkForBubbleBrick;-><init>(Lorg/catrobat/catroid/formulaeditor/Formula;Lorg/catrobat/catroid/formulaeditor/Formula;)V

    .line 48
    return-void
.end method

.method public constructor <init>(Lorg/catrobat/catroid/formulaeditor/Formula;Lorg/catrobat/catroid/formulaeditor/Formula;)V
    .locals 1
    .param p1, "text"    # Lorg/catrobat/catroid/formulaeditor/Formula;
    .param p2, "formula"    # Lorg/catrobat/catroid/formulaeditor/Formula;

    .line 51
    invoke-direct {p0}, Lorg/catrobat/catroid/content/bricks/ThinkForBubbleBrick;-><init>()V

    .line 52
    sget-object v0, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->STRING:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    invoke-virtual {p0, v0, p1}, Lorg/catrobat/catroid/content/bricks/ThinkForBubbleBrick;->setFormulaWithBrickField(Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;Lorg/catrobat/catroid/formulaeditor/Formula;)V

    .line 53
    sget-object v0, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->DURATION_IN_SECONDS:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    invoke-virtual {p0, v0, p2}, Lorg/catrobat/catroid/content/bricks/ThinkForBubbleBrick;->setFormulaWithBrickField(Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;Lorg/catrobat/catroid/formulaeditor/Formula;)V

    .line 54
    return-void
.end method


# virtual methods
.method public addActionToSequence(Lorg/catrobat/catroid/content/Sprite;Lorg/catrobat/catroid/content/actions/ScriptSequenceAction;)V
    .locals 6
    .param p1, "sprite"    # Lorg/catrobat/catroid/content/Sprite;
    .param p2, "sequence"    # Lorg/catrobat/catroid/content/actions/ScriptSequenceAction;

    .line 75
    invoke-virtual {p1}, Lorg/catrobat/catroid/content/Sprite;->getActionFactory()Lorg/catrobat/catroid/content/ActionFactory;

    move-result-object v0

    new-instance v3, Lorg/catrobat/catroid/utils/ShowTextUtils$AndroidStringProvider;

    .line 76
    invoke-static {}, Lorg/catrobat/catroid/CatroidApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v3, v1}, Lorg/catrobat/catroid/utils/ShowTextUtils$AndroidStringProvider;-><init>(Landroid/content/Context;)V

    sget-object v1, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->STRING:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    .line 77
    invoke-virtual {p0, v1}, Lorg/catrobat/catroid/content/bricks/ThinkForBubbleBrick;->getFormulaWithBrickField(Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;)Lorg/catrobat/catroid/formulaeditor/Formula;

    move-result-object v4

    .line 75
    const/4 v5, 0x1

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lorg/catrobat/catroid/content/ActionFactory;->createThinkSayForBubbleAction(Lorg/catrobat/catroid/content/Sprite;Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;Lorg/catrobat/catroid/utils/ShowTextUtils$AndroidStringProvider;Lorg/catrobat/catroid/formulaeditor/Formula;I)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/catrobat/catroid/content/actions/ScriptSequenceAction;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    .line 78
    invoke-virtual {p1}, Lorg/catrobat/catroid/content/Sprite;->getActionFactory()Lorg/catrobat/catroid/content/ActionFactory;

    move-result-object v0

    sget-object v1, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->DURATION_IN_SECONDS:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    .line 79
    invoke-virtual {p0, v1}, Lorg/catrobat/catroid/content/bricks/ThinkForBubbleBrick;->getFormulaWithBrickField(Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;)Lorg/catrobat/catroid/formulaeditor/Formula;

    move-result-object v1

    .line 78
    invoke-virtual {v0, p1, p2, v1}, Lorg/catrobat/catroid/content/ActionFactory;->createWaitForBubbleBrickAction(Lorg/catrobat/catroid/content/Sprite;Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;Lorg/catrobat/catroid/formulaeditor/Formula;)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/catrobat/catroid/content/actions/ScriptSequenceAction;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    .line 80
    return-void
.end method

.method public getDefaultBrickField()Lorg/catrobat/catroid/content/bricks/Brick$BrickField;
    .locals 1

    .line 63
    sget-object v0, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->STRING:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    return-object v0
.end method

.method public bridge synthetic getDefaultBrickField()Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;
    .locals 1

    .line 37
    invoke-virtual {p0}, Lorg/catrobat/catroid/content/bricks/ThinkForBubbleBrick;->getDefaultBrickField()Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    move-result-object v0

    return-object v0
.end method

.method public getView(Landroid/content/Context;)Landroid/view/View;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 68
    invoke-super {p0, p1}, Lorg/catrobat/catroid/content/bricks/FormulaBrick;->getView(Landroid/content/Context;)Landroid/view/View;

    .line 69
    iget-object v0, p0, Lorg/catrobat/catroid/content/bricks/ThinkForBubbleBrick;->view:Landroid/view/View;

    sget-object v1, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->DURATION_IN_SECONDS:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    invoke-virtual {p0, v0, v1}, Lorg/catrobat/catroid/content/bricks/ThinkForBubbleBrick;->setSecondsLabel(Landroid/view/View;Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;)V

    .line 70
    iget-object v0, p0, Lorg/catrobat/catroid/content/bricks/ThinkForBubbleBrick;->view:Landroid/view/View;

    return-object v0
.end method

.method public getViewResource()I
    .locals 1

    .line 58
    const v0, 0x7f0d00f7

    return v0
.end method
