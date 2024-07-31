.class public Lorg/catrobat/catroid/content/bricks/PlayNoteForBeatsBrick;
.super Lorg/catrobat/catroid/content/bricks/FormulaBrick;
.source "PlayNoteForBeatsBrick.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/catrobat/catroid/content/bricks/PlayNoteForBeatsBrick$PlayNoteForBeatsBrickCallback;
    }
.end annotation


# instance fields
.field private final transient showFormulaEditorStrategy:Lorg/catrobat/catroid/content/strategy/ShowFormulaEditorStrategy;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 42
    invoke-direct {p0}, Lorg/catrobat/catroid/content/bricks/FormulaBrick;-><init>()V

    .line 43
    sget-object v0, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->NOTE_TO_PLAY:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    const v1, 0x7f0a01ad

    invoke-virtual {p0, v0, v1}, Lorg/catrobat/catroid/content/bricks/PlayNoteForBeatsBrick;->addAllowedBrickField(Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;I)V

    .line 44
    sget-object v0, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->BEATS_TO_PLAY_NOTE:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    const v1, 0x7f0a01ab

    invoke-virtual {p0, v0, v1}, Lorg/catrobat/catroid/content/bricks/PlayNoteForBeatsBrick;->addAllowedBrickField(Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;I)V

    .line 46
    new-instance v0, Lorg/catrobat/catroid/content/strategy/ShowNotePickerFormulaEditorStrategy;

    invoke-direct {v0}, Lorg/catrobat/catroid/content/strategy/ShowNotePickerFormulaEditorStrategy;-><init>()V

    iput-object v0, p0, Lorg/catrobat/catroid/content/bricks/PlayNoteForBeatsBrick;->showFormulaEditorStrategy:Lorg/catrobat/catroid/content/strategy/ShowFormulaEditorStrategy;

    .line 47
    return-void
.end method

.method public constructor <init>(II)V
    .locals 3
    .param p1, "note"    # I
    .param p2, "pausedBeats"    # I

    .line 50
    new-instance v0, Lorg/catrobat/catroid/formulaeditor/Formula;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/catrobat/catroid/formulaeditor/Formula;-><init>(Ljava/lang/Integer;)V

    new-instance v1, Lorg/catrobat/catroid/formulaeditor/Formula;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/catrobat/catroid/formulaeditor/Formula;-><init>(Ljava/lang/Integer;)V

    invoke-direct {p0, v0, v1}, Lorg/catrobat/catroid/content/bricks/PlayNoteForBeatsBrick;-><init>(Lorg/catrobat/catroid/formulaeditor/Formula;Lorg/catrobat/catroid/formulaeditor/Formula;)V

    .line 51
    return-void
.end method

.method public constructor <init>(Lorg/catrobat/catroid/formulaeditor/Formula;Lorg/catrobat/catroid/formulaeditor/Formula;)V
    .locals 1
    .param p1, "note"    # Lorg/catrobat/catroid/formulaeditor/Formula;
    .param p2, "beats"    # Lorg/catrobat/catroid/formulaeditor/Formula;

    .line 54
    invoke-direct {p0}, Lorg/catrobat/catroid/content/bricks/PlayNoteForBeatsBrick;-><init>()V

    .line 55
    sget-object v0, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->NOTE_TO_PLAY:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    invoke-virtual {p0, v0, p1}, Lorg/catrobat/catroid/content/bricks/PlayNoteForBeatsBrick;->setFormulaWithBrickField(Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;Lorg/catrobat/catroid/formulaeditor/Formula;)V

    .line 56
    sget-object v0, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->BEATS_TO_PLAY_NOTE:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    invoke-virtual {p0, v0, p2}, Lorg/catrobat/catroid/content/bricks/PlayNoteForBeatsBrick;->setFormulaWithBrickField(Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;Lorg/catrobat/catroid/formulaeditor/Formula;)V

    .line 57
    return-void
.end method

.method static synthetic access$100(Lorg/catrobat/catroid/content/bricks/PlayNoteForBeatsBrick;Landroid/view/View;)V
    .locals 0
    .param p0, "x0"    # Lorg/catrobat/catroid/content/bricks/PlayNoteForBeatsBrick;
    .param p1, "x1"    # Landroid/view/View;

    .line 38
    invoke-direct {p0, p1}, Lorg/catrobat/catroid/content/bricks/PlayNoteForBeatsBrick;->superShowFormulaEditor(Landroid/view/View;)V

    return-void
.end method

.method private areAllBrickFieldsNumbers()Z
    .locals 1

    .line 79
    sget-object v0, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->NOTE_TO_PLAY:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    invoke-virtual {p0, v0}, Lorg/catrobat/catroid/content/bricks/PlayNoteForBeatsBrick;->isBrickFieldANumber(Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->BEATS_TO_PLAY_NOTE:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    .line 80
    invoke-virtual {p0, v0}, Lorg/catrobat/catroid/content/bricks/PlayNoteForBeatsBrick;->isBrickFieldANumber(Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 79
    :goto_0
    return v0
.end method

.method private superShowFormulaEditor(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .line 75
    invoke-super {p0, p1}, Lorg/catrobat/catroid/content/bricks/FormulaBrick;->showFormulaEditorToEditFormula(Landroid/view/View;)V

    .line 76
    return-void
.end method


# virtual methods
.method public addActionToSequence(Lorg/catrobat/catroid/content/Sprite;Lorg/catrobat/catroid/content/actions/ScriptSequenceAction;)V
    .locals 3
    .param p1, "sprite"    # Lorg/catrobat/catroid/content/Sprite;
    .param p2, "sequence"    # Lorg/catrobat/catroid/content/actions/ScriptSequenceAction;

    .line 85
    invoke-virtual {p1}, Lorg/catrobat/catroid/content/Sprite;->getActionFactory()Lorg/catrobat/catroid/content/ActionFactory;

    move-result-object v0

    sget-object v1, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->NOTE_TO_PLAY:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    .line 87
    invoke-virtual {p0, v1}, Lorg/catrobat/catroid/content/bricks/PlayNoteForBeatsBrick;->getFormulaWithBrickField(Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;)Lorg/catrobat/catroid/formulaeditor/Formula;

    move-result-object v1

    sget-object v2, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->BEATS_TO_PLAY_NOTE:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    .line 88
    invoke-virtual {p0, v2}, Lorg/catrobat/catroid/content/bricks/PlayNoteForBeatsBrick;->getFormulaWithBrickField(Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;)Lorg/catrobat/catroid/formulaeditor/Formula;

    move-result-object v2

    .line 86
    invoke-virtual {v0, p1, p2, v1, v2}, Lorg/catrobat/catroid/content/ActionFactory;->createPlayNoteForBeatsAction(Lorg/catrobat/catroid/content/Sprite;Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;Lorg/catrobat/catroid/formulaeditor/Formula;Lorg/catrobat/catroid/formulaeditor/Formula;)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v0

    .line 85
    invoke-virtual {p2, v0}, Lorg/catrobat/catroid/content/actions/ScriptSequenceAction;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    .line 89
    return-void
.end method

.method public getViewResource()I
    .locals 1

    .line 61
    const v0, 0x7f0d00b7

    return v0
.end method

.method public showFormulaEditorToEditFormula(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .line 66
    invoke-direct {p0}, Lorg/catrobat/catroid/content/bricks/PlayNoteForBeatsBrick;->areAllBrickFieldsNumbers()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Lorg/catrobat/catroid/content/bricks/PlayNoteForBeatsBrick;->brickFieldToTextViewIdMap:Lcom/google/common/collect/BiMap;

    sget-object v2, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->NOTE_TO_PLAY:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    invoke-interface {v1, v2}, Lcom/google/common/collect/BiMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 67
    new-instance v0, Lorg/catrobat/catroid/content/bricks/PlayNoteForBeatsBrick$PlayNoteForBeatsBrickCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lorg/catrobat/catroid/content/bricks/PlayNoteForBeatsBrick$PlayNoteForBeatsBrickCallback;-><init>(Lorg/catrobat/catroid/content/bricks/PlayNoteForBeatsBrick;Landroid/view/View;Lorg/catrobat/catroid/content/bricks/PlayNoteForBeatsBrick$1;)V

    .line 68
    .local v0, "callback":Lorg/catrobat/catroid/content/strategy/ShowFormulaEditorStrategy$Callback;
    iget-object v1, p0, Lorg/catrobat/catroid/content/bricks/PlayNoteForBeatsBrick;->showFormulaEditorStrategy:Lorg/catrobat/catroid/content/strategy/ShowFormulaEditorStrategy;

    invoke-interface {v1, p1, v0}, Lorg/catrobat/catroid/content/strategy/ShowFormulaEditorStrategy;->showFormulaEditorToEditFormula(Landroid/view/View;Lorg/catrobat/catroid/content/strategy/ShowFormulaEditorStrategy$Callback;)V

    .line 69
    .end local v0    # "callback":Lorg/catrobat/catroid/content/strategy/ShowFormulaEditorStrategy$Callback;
    goto :goto_0

    .line 70
    :cond_0
    invoke-direct {p0, p1}, Lorg/catrobat/catroid/content/bricks/PlayNoteForBeatsBrick;->superShowFormulaEditor(Landroid/view/View;)V

    .line 72
    :goto_0
    return-void
.end method
