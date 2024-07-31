.class public Lorg/catrobat/catroid/content/bricks/GlideToBrick;
.super Lorg/catrobat/catroid/content/bricks/VisualPlacementBrick;
.source "GlideToBrick.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 37
    invoke-direct {p0}, Lorg/catrobat/catroid/content/bricks/VisualPlacementBrick;-><init>()V

    .line 38
    sget-object v0, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->X_DESTINATION:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    const v1, 0x7f0a0127

    invoke-virtual {p0, v0, v1}, Lorg/catrobat/catroid/content/bricks/GlideToBrick;->addAllowedBrickField(Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;I)V

    .line 39
    sget-object v0, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->Y_DESTINATION:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    const v1, 0x7f0a0128

    invoke-virtual {p0, v0, v1}, Lorg/catrobat/catroid/content/bricks/GlideToBrick;->addAllowedBrickField(Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;I)V

    .line 40
    sget-object v0, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->DURATION_IN_SECONDS:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    const v1, 0x7f0a0126

    invoke-virtual {p0, v0, v1}, Lorg/catrobat/catroid/content/bricks/GlideToBrick;->addAllowedBrickField(Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;I)V

    .line 41
    return-void
.end method

.method public constructor <init>(III)V
    .locals 7
    .param p1, "xDestinationValue"    # I
    .param p2, "yDestinationValue"    # I
    .param p3, "durationInMilliSecondsValue"    # I

    .line 44
    new-instance v0, Lorg/catrobat/catroid/formulaeditor/Formula;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/catrobat/catroid/formulaeditor/Formula;-><init>(Ljava/lang/Integer;)V

    new-instance v1, Lorg/catrobat/catroid/formulaeditor/Formula;

    .line 45
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/catrobat/catroid/formulaeditor/Formula;-><init>(Ljava/lang/Integer;)V

    new-instance v2, Lorg/catrobat/catroid/formulaeditor/Formula;

    int-to-double v3, p3

    const-wide v5, 0x408f400000000000L    # 1000.0

    div-double/2addr v3, v5

    .line 46
    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/catrobat/catroid/formulaeditor/Formula;-><init>(Ljava/lang/Double;)V

    .line 44
    invoke-direct {p0, v0, v1, v2}, Lorg/catrobat/catroid/content/bricks/GlideToBrick;-><init>(Lorg/catrobat/catroid/formulaeditor/Formula;Lorg/catrobat/catroid/formulaeditor/Formula;Lorg/catrobat/catroid/formulaeditor/Formula;)V

    .line 47
    return-void
.end method

.method public constructor <init>(Lorg/catrobat/catroid/formulaeditor/Formula;Lorg/catrobat/catroid/formulaeditor/Formula;Lorg/catrobat/catroid/formulaeditor/Formula;)V
    .locals 1
    .param p1, "xDestination"    # Lorg/catrobat/catroid/formulaeditor/Formula;
    .param p2, "yDestination"    # Lorg/catrobat/catroid/formulaeditor/Formula;
    .param p3, "durationInSeconds"    # Lorg/catrobat/catroid/formulaeditor/Formula;

    .line 50
    invoke-direct {p0}, Lorg/catrobat/catroid/content/bricks/GlideToBrick;-><init>()V

    .line 51
    sget-object v0, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->X_DESTINATION:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    invoke-virtual {p0, v0, p1}, Lorg/catrobat/catroid/content/bricks/GlideToBrick;->setFormulaWithBrickField(Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;Lorg/catrobat/catroid/formulaeditor/Formula;)V

    .line 52
    sget-object v0, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->Y_DESTINATION:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    invoke-virtual {p0, v0, p2}, Lorg/catrobat/catroid/content/bricks/GlideToBrick;->setFormulaWithBrickField(Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;Lorg/catrobat/catroid/formulaeditor/Formula;)V

    .line 53
    sget-object v0, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->DURATION_IN_SECONDS:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    invoke-virtual {p0, v0, p3}, Lorg/catrobat/catroid/content/bricks/GlideToBrick;->setFormulaWithBrickField(Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;Lorg/catrobat/catroid/formulaeditor/Formula;)V

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

    sget-object v1, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->X_DESTINATION:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    .line 76
    invoke-virtual {p0, v1}, Lorg/catrobat/catroid/content/bricks/GlideToBrick;->getFormulaWithBrickField(Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;)Lorg/catrobat/catroid/formulaeditor/Formula;

    move-result-object v3

    sget-object v1, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->Y_DESTINATION:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    .line 77
    invoke-virtual {p0, v1}, Lorg/catrobat/catroid/content/bricks/GlideToBrick;->getFormulaWithBrickField(Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;)Lorg/catrobat/catroid/formulaeditor/Formula;

    move-result-object v4

    sget-object v1, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->DURATION_IN_SECONDS:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    .line 78
    invoke-virtual {p0, v1}, Lorg/catrobat/catroid/content/bricks/GlideToBrick;->getFormulaWithBrickField(Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;)Lorg/catrobat/catroid/formulaeditor/Formula;

    move-result-object v5

    .line 75
    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lorg/catrobat/catroid/content/ActionFactory;->createGlideToAction(Lorg/catrobat/catroid/content/Sprite;Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;Lorg/catrobat/catroid/formulaeditor/Formula;Lorg/catrobat/catroid/formulaeditor/Formula;Lorg/catrobat/catroid/formulaeditor/Formula;)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/catrobat/catroid/content/actions/ScriptSequenceAction;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    .line 79
    return-void
.end method

.method public getDefaultBrickField()Lorg/catrobat/catroid/content/bricks/Brick$BrickField;
    .locals 1

    .line 70
    sget-object v0, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->DURATION_IN_SECONDS:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    return-object v0
.end method

.method public bridge synthetic getDefaultBrickField()Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;
    .locals 1

    .line 33
    invoke-virtual {p0}, Lorg/catrobat/catroid/content/bricks/GlideToBrick;->getDefaultBrickField()Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    move-result-object v0

    return-object v0
.end method

.method public getView(Landroid/content/Context;)Landroid/view/View;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 63
    invoke-super {p0, p1}, Lorg/catrobat/catroid/content/bricks/VisualPlacementBrick;->getView(Landroid/content/Context;)Landroid/view/View;

    .line 64
    iget-object v0, p0, Lorg/catrobat/catroid/content/bricks/GlideToBrick;->view:Landroid/view/View;

    sget-object v1, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->DURATION_IN_SECONDS:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    invoke-virtual {p0, v0, v1}, Lorg/catrobat/catroid/content/bricks/GlideToBrick;->setSecondsLabel(Landroid/view/View;Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;)V

    .line 65
    iget-object v0, p0, Lorg/catrobat/catroid/content/bricks/GlideToBrick;->view:Landroid/view/View;

    return-object v0
.end method

.method public getViewResource()I
    .locals 1

    .line 58
    const v0, 0x7f0d0080

    return v0
.end method

.method public getXBrickField()Lorg/catrobat/catroid/content/bricks/Brick$BrickField;
    .locals 1

    .line 83
    sget-object v0, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->X_DESTINATION:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    return-object v0
.end method

.method public getXEditTextId()I
    .locals 1

    .line 93
    const v0, 0x7f0a0127

    return v0
.end method

.method public getYBrickField()Lorg/catrobat/catroid/content/bricks/Brick$BrickField;
    .locals 1

    .line 88
    sget-object v0, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->Y_DESTINATION:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    return-object v0
.end method

.method public getYEditTextId()I
    .locals 1

    .line 98
    const v0, 0x7f0a0128

    return v0
.end method
