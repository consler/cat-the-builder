.class public Lorg/catrobat/catroid/content/bricks/JumpingSumoMoveBackwardBrick;
.super Lorg/catrobat/catroid/content/bricks/FormulaBrick;
.source "JumpingSumoMoveBackwardBrick.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 34
    invoke-direct {p0}, Lorg/catrobat/catroid/content/bricks/FormulaBrick;-><init>()V

    .line 35
    sget-object v0, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->JUMPING_SUMO_TIME_TO_DRIVE_IN_SECONDS:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    const v1, 0x7f0a014f

    invoke-virtual {p0, v0, v1}, Lorg/catrobat/catroid/content/bricks/JumpingSumoMoveBackwardBrick;->addAllowedBrickField(Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;I)V

    .line 37
    sget-object v0, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->JUMPING_SUMO_SPEED:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    const v1, 0x7f0a014e

    invoke-virtual {p0, v0, v1}, Lorg/catrobat/catroid/content/bricks/JumpingSumoMoveBackwardBrick;->addAllowedBrickField(Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;I)V

    .line 38
    return-void
.end method

.method public constructor <init>(II)V
    .locals 5
    .param p1, "durationInMilliseconds"    # I
    .param p2, "powerInPercent"    # I

    .line 41
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

    invoke-direct {p0, v0, v1}, Lorg/catrobat/catroid/content/bricks/JumpingSumoMoveBackwardBrick;-><init>(Lorg/catrobat/catroid/formulaeditor/Formula;Lorg/catrobat/catroid/formulaeditor/Formula;)V

    .line 42
    return-void
.end method

.method public constructor <init>(Lorg/catrobat/catroid/formulaeditor/Formula;Lorg/catrobat/catroid/formulaeditor/Formula;)V
    .locals 1
    .param p1, "durationInSeconds"    # Lorg/catrobat/catroid/formulaeditor/Formula;
    .param p2, "powerInPercent"    # Lorg/catrobat/catroid/formulaeditor/Formula;

    .line 45
    invoke-direct {p0}, Lorg/catrobat/catroid/content/bricks/JumpingSumoMoveBackwardBrick;-><init>()V

    .line 46
    sget-object v0, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->JUMPING_SUMO_TIME_TO_DRIVE_IN_SECONDS:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    invoke-virtual {p0, v0, p1}, Lorg/catrobat/catroid/content/bricks/JumpingSumoMoveBackwardBrick;->setFormulaWithBrickField(Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;Lorg/catrobat/catroid/formulaeditor/Formula;)V

    .line 47
    sget-object v0, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->JUMPING_SUMO_SPEED:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    invoke-virtual {p0, v0, p2}, Lorg/catrobat/catroid/content/bricks/JumpingSumoMoveBackwardBrick;->setFormulaWithBrickField(Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;Lorg/catrobat/catroid/formulaeditor/Formula;)V

    .line 48
    return-void
.end method


# virtual methods
.method public addActionToSequence(Lorg/catrobat/catroid/content/Sprite;Lorg/catrobat/catroid/content/actions/ScriptSequenceAction;)V
    .locals 0
    .param p1, "sprite"    # Lorg/catrobat/catroid/content/Sprite;
    .param p2, "sequence"    # Lorg/catrobat/catroid/content/actions/ScriptSequenceAction;

    .line 62
    return-void
.end method

.method public getDefaultBrickField()Lorg/catrobat/catroid/content/bricks/Brick$BrickField;
    .locals 1

    .line 57
    sget-object v0, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->JUMPING_SUMO_TIME_TO_DRIVE_IN_SECONDS:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    return-object v0
.end method

.method public bridge synthetic getDefaultBrickField()Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;
    .locals 1

    .line 30
    invoke-virtual {p0}, Lorg/catrobat/catroid/content/bricks/JumpingSumoMoveBackwardBrick;->getDefaultBrickField()Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    move-result-object v0

    return-object v0
.end method

.method public getViewResource()I
    .locals 1

    .line 52
    const v0, 0x7f0d008f

    return v0
.end method
