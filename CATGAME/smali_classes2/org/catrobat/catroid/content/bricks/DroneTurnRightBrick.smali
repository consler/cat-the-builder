.class public Lorg/catrobat/catroid/content/bricks/DroneTurnRightBrick;
.super Lorg/catrobat/catroid/content/bricks/FormulaBrick;
.source "DroneTurnRightBrick.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 37
    invoke-direct {p0}, Lorg/catrobat/catroid/content/bricks/FormulaBrick;-><init>()V

    .line 38
    sget-object v0, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->DRONE_TIME_TO_FLY_IN_SECONDS:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    const v1, 0x7f0a00fd

    invoke-virtual {p0, v0, v1}, Lorg/catrobat/catroid/content/bricks/DroneTurnRightBrick;->addAllowedBrickField(Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;I)V

    .line 39
    sget-object v0, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->DRONE_POWER_IN_PERCENT:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    const v1, 0x7f0a00fc

    invoke-virtual {p0, v0, v1}, Lorg/catrobat/catroid/content/bricks/DroneTurnRightBrick;->addAllowedBrickField(Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;I)V

    .line 40
    return-void
.end method

.method public constructor <init>(II)V
    .locals 5
    .param p1, "durationInMilliseconds"    # I
    .param p2, "powerInPercent"    # I

    .line 43
    new-instance v0, Lorg/catrobat/catroid/formulaeditor/Formula;

    int-to-double v1, p1

    const-wide v3, 0x408f400000000000L    # 1000.0

    div-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/catrobat/catroid/formulaeditor/Formula;-><init>(Ljava/lang/Double;)V

    new-instance v1, Lorg/catrobat/catroid/formulaeditor/Formula;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/catrobat/catroid/formulaeditor/Formula;-><init>(Ljava/lang/Integer;)V

    invoke-direct {p0, v0, v1}, Lorg/catrobat/catroid/content/bricks/DroneTurnRightBrick;-><init>(Lorg/catrobat/catroid/formulaeditor/Formula;Lorg/catrobat/catroid/formulaeditor/Formula;)V

    .line 44
    return-void
.end method

.method public constructor <init>(Lorg/catrobat/catroid/formulaeditor/Formula;Lorg/catrobat/catroid/formulaeditor/Formula;)V
    .locals 1
    .param p1, "durationInSeconds"    # Lorg/catrobat/catroid/formulaeditor/Formula;
    .param p2, "powerInPercent"    # Lorg/catrobat/catroid/formulaeditor/Formula;

    .line 47
    invoke-direct {p0}, Lorg/catrobat/catroid/content/bricks/DroneTurnRightBrick;-><init>()V

    .line 48
    sget-object v0, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->DRONE_TIME_TO_FLY_IN_SECONDS:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    invoke-virtual {p0, v0, p1}, Lorg/catrobat/catroid/content/bricks/DroneTurnRightBrick;->setFormulaWithBrickField(Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;Lorg/catrobat/catroid/formulaeditor/Formula;)V

    .line 49
    sget-object v0, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->DRONE_POWER_IN_PERCENT:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    invoke-virtual {p0, v0, p2}, Lorg/catrobat/catroid/content/bricks/DroneTurnRightBrick;->setFormulaWithBrickField(Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;Lorg/catrobat/catroid/formulaeditor/Formula;)V

    .line 50
    return-void
.end method


# virtual methods
.method public addActionToSequence(Lorg/catrobat/catroid/content/Sprite;Lorg/catrobat/catroid/content/actions/ScriptSequenceAction;)V
    .locals 0
    .param p1, "sprite"    # Lorg/catrobat/catroid/content/Sprite;
    .param p2, "sequence"    # Lorg/catrobat/catroid/content/actions/ScriptSequenceAction;

    .line 71
    return-void
.end method

.method public getDefaultBrickField()Lorg/catrobat/catroid/content/bricks/Brick$BrickField;
    .locals 1

    .line 66
    sget-object v0, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->DRONE_TIME_TO_FLY_IN_SECONDS:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    return-object v0
.end method

.method public bridge synthetic getDefaultBrickField()Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;
    .locals 1

    .line 33
    invoke-virtual {p0}, Lorg/catrobat/catroid/content/bricks/DroneTurnRightBrick;->getDefaultBrickField()Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    move-result-object v0

    return-object v0
.end method

.method public getView(Landroid/content/Context;)Landroid/view/View;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 59
    invoke-super {p0, p1}, Lorg/catrobat/catroid/content/bricks/FormulaBrick;->getView(Landroid/content/Context;)Landroid/view/View;

    .line 60
    iget-object v0, p0, Lorg/catrobat/catroid/content/bricks/DroneTurnRightBrick;->view:Landroid/view/View;

    sget-object v1, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->DRONE_TIME_TO_FLY_IN_SECONDS:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    invoke-virtual {p0, v0, v1}, Lorg/catrobat/catroid/content/bricks/DroneTurnRightBrick;->setSecondsLabel(Landroid/view/View;Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;)V

    .line 61
    iget-object v0, p0, Lorg/catrobat/catroid/content/bricks/DroneTurnRightBrick;->view:Landroid/view/View;

    return-object v0
.end method

.method public getViewResource()I
    .locals 1

    .line 54
    const v0, 0x7f0d0071

    return v0
.end method
