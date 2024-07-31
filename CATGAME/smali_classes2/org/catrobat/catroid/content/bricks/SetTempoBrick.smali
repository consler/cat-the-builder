.class public Lorg/catrobat/catroid/content/bricks/SetTempoBrick;
.super Lorg/catrobat/catroid/content/bricks/FormulaBrick;
.source "SetTempoBrick.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 35
    invoke-direct {p0}, Lorg/catrobat/catroid/content/bricks/FormulaBrick;-><init>()V

    .line 36
    sget-object v0, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->TEMPO:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    const v1, 0x7f0a0239

    invoke-virtual {p0, v0, v1}, Lorg/catrobat/catroid/content/bricks/SetTempoBrick;->addAllowedBrickField(Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;I)V

    .line 37
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .param p1, "tempo"    # I

    .line 40
    new-instance v0, Lorg/catrobat/catroid/formulaeditor/Formula;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/catrobat/catroid/formulaeditor/Formula;-><init>(Ljava/lang/Integer;)V

    invoke-direct {p0, v0}, Lorg/catrobat/catroid/content/bricks/SetTempoBrick;-><init>(Lorg/catrobat/catroid/formulaeditor/Formula;)V

    .line 41
    return-void
.end method

.method public constructor <init>(Lorg/catrobat/catroid/formulaeditor/Formula;)V
    .locals 1
    .param p1, "formula"    # Lorg/catrobat/catroid/formulaeditor/Formula;

    .line 44
    invoke-direct {p0}, Lorg/catrobat/catroid/content/bricks/SetTempoBrick;-><init>()V

    .line 45
    sget-object v0, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->TEMPO:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    invoke-virtual {p0, v0, p1}, Lorg/catrobat/catroid/content/bricks/SetTempoBrick;->setFormulaWithBrickField(Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;Lorg/catrobat/catroid/formulaeditor/Formula;)V

    .line 46
    return-void
.end method


# virtual methods
.method public addActionToSequence(Lorg/catrobat/catroid/content/Sprite;Lorg/catrobat/catroid/content/actions/ScriptSequenceAction;)V
    .locals 2
    .param p1, "sprite"    # Lorg/catrobat/catroid/content/Sprite;
    .param p2, "sequence"    # Lorg/catrobat/catroid/content/actions/ScriptSequenceAction;

    .line 61
    invoke-virtual {p1}, Lorg/catrobat/catroid/content/Sprite;->getActionFactory()Lorg/catrobat/catroid/content/ActionFactory;

    move-result-object v0

    sget-object v1, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->TEMPO:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    .line 62
    invoke-virtual {p0, v1}, Lorg/catrobat/catroid/content/bricks/SetTempoBrick;->getFormulaWithBrickField(Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;)Lorg/catrobat/catroid/formulaeditor/Formula;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v1}, Lorg/catrobat/catroid/content/ActionFactory;->createSetTempoAction(Lorg/catrobat/catroid/content/Sprite;Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;Lorg/catrobat/catroid/formulaeditor/Formula;)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v0

    .line 61
    invoke-virtual {p2, v0}, Lorg/catrobat/catroid/content/actions/ScriptSequenceAction;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    .line 63
    return-void
.end method

.method public getView(Landroid/content/Context;)Landroid/view/View;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 55
    invoke-super {p0, p1}, Lorg/catrobat/catroid/content/bricks/FormulaBrick;->getView(Landroid/content/Context;)Landroid/view/View;

    .line 56
    iget-object v0, p0, Lorg/catrobat/catroid/content/bricks/SetTempoBrick;->view:Landroid/view/View;

    return-object v0
.end method

.method public getViewResource()I
    .locals 1

    .line 50
    const v0, 0x7f0d00de

    return v0
.end method
