.class public Lorg/catrobat/catroid/content/bricks/WaitBrick;
.super Lorg/catrobat/catroid/content/bricks/FormulaBrick;
.source "WaitBrick.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 37
    invoke-direct {p0}, Lorg/catrobat/catroid/content/bricks/FormulaBrick;-><init>()V

    .line 38
    sget-object v0, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->TIME_TO_WAIT_IN_SECONDS:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    const v1, 0x7f0a02ac

    invoke-virtual {p0, v0, v1}, Lorg/catrobat/catroid/content/bricks/WaitBrick;->addAllowedBrickField(Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;I)V

    .line 39
    return-void
.end method

.method public constructor <init>(I)V
    .locals 5
    .param p1, "timeToWaitInMillisecondsValue"    # I

    .line 42
    new-instance v0, Lorg/catrobat/catroid/formulaeditor/Formula;

    int-to-double v1, p1

    const-wide v3, 0x408f400000000000L    # 1000.0

    div-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/catrobat/catroid/formulaeditor/Formula;-><init>(Ljava/lang/Double;)V

    invoke-direct {p0, v0}, Lorg/catrobat/catroid/content/bricks/WaitBrick;-><init>(Lorg/catrobat/catroid/formulaeditor/Formula;)V

    .line 43
    return-void
.end method

.method public constructor <init>(Lorg/catrobat/catroid/formulaeditor/Formula;)V
    .locals 1
    .param p1, "formula"    # Lorg/catrobat/catroid/formulaeditor/Formula;

    .line 46
    invoke-direct {p0}, Lorg/catrobat/catroid/content/bricks/WaitBrick;-><init>()V

    .line 47
    sget-object v0, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->TIME_TO_WAIT_IN_SECONDS:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    invoke-virtual {p0, v0, p1}, Lorg/catrobat/catroid/content/bricks/WaitBrick;->setFormulaWithBrickField(Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;Lorg/catrobat/catroid/formulaeditor/Formula;)V

    .line 48
    return-void
.end method


# virtual methods
.method public addActionToSequence(Lorg/catrobat/catroid/content/Sprite;Lorg/catrobat/catroid/content/actions/ScriptSequenceAction;)V
    .locals 2
    .param p1, "sprite"    # Lorg/catrobat/catroid/content/Sprite;
    .param p2, "sequence"    # Lorg/catrobat/catroid/content/actions/ScriptSequenceAction;

    .line 64
    invoke-virtual {p1}, Lorg/catrobat/catroid/content/Sprite;->getActionFactory()Lorg/catrobat/catroid/content/ActionFactory;

    move-result-object v0

    sget-object v1, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->TIME_TO_WAIT_IN_SECONDS:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    .line 66
    invoke-virtual {p0, v1}, Lorg/catrobat/catroid/content/bricks/WaitBrick;->getFormulaWithBrickField(Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;)Lorg/catrobat/catroid/formulaeditor/Formula;

    move-result-object v1

    .line 65
    invoke-virtual {v0, p1, p2, v1}, Lorg/catrobat/catroid/content/ActionFactory;->createWaitAction(Lorg/catrobat/catroid/content/Sprite;Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;Lorg/catrobat/catroid/formulaeditor/Formula;)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v0

    .line 64
    invoke-virtual {p2, v0}, Lorg/catrobat/catroid/content/actions/ScriptSequenceAction;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    .line 67
    return-void
.end method

.method public getView(Landroid/content/Context;)Landroid/view/View;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 57
    invoke-super {p0, p1}, Lorg/catrobat/catroid/content/bricks/FormulaBrick;->getView(Landroid/content/Context;)Landroid/view/View;

    .line 58
    iget-object v0, p0, Lorg/catrobat/catroid/content/bricks/WaitBrick;->view:Landroid/view/View;

    sget-object v1, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->TIME_TO_WAIT_IN_SECONDS:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    invoke-virtual {p0, v0, v1}, Lorg/catrobat/catroid/content/bricks/WaitBrick;->setSecondsLabel(Landroid/view/View;Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;)V

    .line 59
    iget-object v0, p0, Lorg/catrobat/catroid/content/bricks/WaitBrick;->view:Landroid/view/View;

    return-object v0
.end method

.method public getViewResource()I
    .locals 1

    .line 52
    const v0, 0x7f0d0100

    return v0
.end method
