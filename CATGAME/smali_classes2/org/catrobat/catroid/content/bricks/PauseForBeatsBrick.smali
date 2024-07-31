.class public Lorg/catrobat/catroid/content/bricks/PauseForBeatsBrick;
.super Lorg/catrobat/catroid/content/bricks/FormulaBrick;
.source "PauseForBeatsBrick.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 32
    invoke-direct {p0}, Lorg/catrobat/catroid/content/bricks/FormulaBrick;-><init>()V

    .line 33
    sget-object v0, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->BEATS_TO_PAUSE:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    const v1, 0x7f0a0189

    invoke-virtual {p0, v0, v1}, Lorg/catrobat/catroid/content/bricks/PauseForBeatsBrick;->addAllowedBrickField(Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;I)V

    .line 34
    return-void
.end method

.method public constructor <init>(F)V
    .locals 2
    .param p1, "pausedBeats"    # F

    .line 37
    new-instance v0, Lorg/catrobat/catroid/formulaeditor/Formula;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/catrobat/catroid/formulaeditor/Formula;-><init>(Ljava/lang/Float;)V

    invoke-direct {p0, v0}, Lorg/catrobat/catroid/content/bricks/PauseForBeatsBrick;-><init>(Lorg/catrobat/catroid/formulaeditor/Formula;)V

    .line 38
    return-void
.end method

.method public constructor <init>(Lorg/catrobat/catroid/formulaeditor/Formula;)V
    .locals 1
    .param p1, "formula"    # Lorg/catrobat/catroid/formulaeditor/Formula;

    .line 41
    invoke-direct {p0}, Lorg/catrobat/catroid/content/bricks/PauseForBeatsBrick;-><init>()V

    .line 42
    sget-object v0, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->BEATS_TO_PAUSE:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    invoke-virtual {p0, v0, p1}, Lorg/catrobat/catroid/content/bricks/PauseForBeatsBrick;->setFormulaWithBrickField(Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;Lorg/catrobat/catroid/formulaeditor/Formula;)V

    .line 43
    return-void
.end method


# virtual methods
.method public addActionToSequence(Lorg/catrobat/catroid/content/Sprite;Lorg/catrobat/catroid/content/actions/ScriptSequenceAction;)V
    .locals 2
    .param p1, "sprite"    # Lorg/catrobat/catroid/content/Sprite;
    .param p2, "sequence"    # Lorg/catrobat/catroid/content/actions/ScriptSequenceAction;

    .line 52
    invoke-virtual {p1}, Lorg/catrobat/catroid/content/Sprite;->getActionFactory()Lorg/catrobat/catroid/content/ActionFactory;

    move-result-object v0

    sget-object v1, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->BEATS_TO_PAUSE:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    .line 53
    invoke-virtual {p0, v1}, Lorg/catrobat/catroid/content/bricks/PauseForBeatsBrick;->getFormulaWithBrickField(Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;)Lorg/catrobat/catroid/formulaeditor/Formula;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v1}, Lorg/catrobat/catroid/content/ActionFactory;->createPauseForBeatsAction(Lorg/catrobat/catroid/content/Sprite;Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;Lorg/catrobat/catroid/formulaeditor/Formula;)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v0

    .line 52
    invoke-virtual {p2, v0}, Lorg/catrobat/catroid/content/actions/ScriptSequenceAction;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    .line 54
    return-void
.end method

.method public getViewResource()I
    .locals 1

    .line 47
    const v0, 0x7f0d00a4

    return v0
.end method
