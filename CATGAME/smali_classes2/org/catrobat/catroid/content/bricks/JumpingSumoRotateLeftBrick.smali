.class public Lorg/catrobat/catroid/content/bricks/JumpingSumoRotateLeftBrick;
.super Lorg/catrobat/catroid/content/bricks/FormulaBrick;
.source "JumpingSumoRotateLeftBrick.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 34
    invoke-direct {p0}, Lorg/catrobat/catroid/content/bricks/FormulaBrick;-><init>()V

    .line 35
    sget-object v0, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->JUMPING_SUMO_ROTATE:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    const v1, 0x7f0a0148

    invoke-virtual {p0, v0, v1}, Lorg/catrobat/catroid/content/bricks/JumpingSumoRotateLeftBrick;->addAllowedBrickField(Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;I)V

    .line 36
    return-void
.end method

.method public constructor <init>(D)V
    .locals 2
    .param p1, "degree"    # D

    .line 39
    new-instance v0, Lorg/catrobat/catroid/formulaeditor/Formula;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/catrobat/catroid/formulaeditor/Formula;-><init>(Ljava/lang/Double;)V

    invoke-direct {p0, v0}, Lorg/catrobat/catroid/content/bricks/JumpingSumoRotateLeftBrick;-><init>(Lorg/catrobat/catroid/formulaeditor/Formula;)V

    .line 40
    return-void
.end method

.method public constructor <init>(Lorg/catrobat/catroid/formulaeditor/Formula;)V
    .locals 1
    .param p1, "formula"    # Lorg/catrobat/catroid/formulaeditor/Formula;

    .line 43
    invoke-direct {p0}, Lorg/catrobat/catroid/content/bricks/JumpingSumoRotateLeftBrick;-><init>()V

    .line 44
    sget-object v0, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->JUMPING_SUMO_ROTATE:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    invoke-virtual {p0, v0, p1}, Lorg/catrobat/catroid/content/bricks/JumpingSumoRotateLeftBrick;->setFormulaWithBrickField(Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;Lorg/catrobat/catroid/formulaeditor/Formula;)V

    .line 45
    return-void
.end method


# virtual methods
.method public addActionToSequence(Lorg/catrobat/catroid/content/Sprite;Lorg/catrobat/catroid/content/actions/ScriptSequenceAction;)V
    .locals 0
    .param p1, "sprite"    # Lorg/catrobat/catroid/content/Sprite;
    .param p2, "sequence"    # Lorg/catrobat/catroid/content/actions/ScriptSequenceAction;

    .line 54
    return-void
.end method

.method public getViewResource()I
    .locals 1

    .line 49
    const v0, 0x7f0d0092

    return v0
.end method
