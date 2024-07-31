.class public Lorg/catrobat/catroid/content/bricks/PlayDrumForBeatsBrick;
.super Lorg/catrobat/catroid/content/bricks/FormulaBrick;
.source "PlayDrumForBeatsBrick.java"

# interfaces
.implements Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/catrobat/catroid/content/bricks/FormulaBrick;",
        "Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner$OnItemSelectedListener<",
        "Lorg/catrobat/catroid/content/bricks/brickspinner/PickableDrum;",
        ">;"
    }
.end annotation


# instance fields
.field private drumSelection:Lorg/catrobat/catroid/content/bricks/brickspinner/PickableDrum;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 54
    invoke-direct {p0}, Lorg/catrobat/catroid/content/bricks/FormulaBrick;-><init>()V

    .line 43
    invoke-static {}, Lorg/catrobat/catroid/content/bricks/brickspinner/PickableDrum;->values()[Lorg/catrobat/catroid/content/bricks/brickspinner/PickableDrum;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iput-object v0, p0, Lorg/catrobat/catroid/content/bricks/PlayDrumForBeatsBrick;->drumSelection:Lorg/catrobat/catroid/content/bricks/brickspinner/PickableDrum;

    .line 55
    sget-object v0, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->PLAY_DRUM:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    const v1, 0x7f0a01a9

    invoke-virtual {p0, v0, v1}, Lorg/catrobat/catroid/content/bricks/PlayDrumForBeatsBrick;->addAllowedBrickField(Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;I)V

    .line 56
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .param p1, "value"    # I

    .line 59
    new-instance v0, Lorg/catrobat/catroid/formulaeditor/Formula;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/catrobat/catroid/formulaeditor/Formula;-><init>(Ljava/lang/Integer;)V

    invoke-direct {p0, v0}, Lorg/catrobat/catroid/content/bricks/PlayDrumForBeatsBrick;-><init>(Lorg/catrobat/catroid/formulaeditor/Formula;)V

    .line 60
    return-void
.end method

.method private constructor <init>(Lorg/catrobat/catroid/formulaeditor/Formula;)V
    .locals 1
    .param p1, "formula"    # Lorg/catrobat/catroid/formulaeditor/Formula;

    .line 63
    invoke-direct {p0}, Lorg/catrobat/catroid/content/bricks/PlayDrumForBeatsBrick;-><init>()V

    .line 64
    sget-object v0, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->PLAY_DRUM:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    invoke-virtual {p0, v0, p1}, Lorg/catrobat/catroid/content/bricks/PlayDrumForBeatsBrick;->setFormulaWithBrickField(Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;Lorg/catrobat/catroid/formulaeditor/Formula;)V

    .line 65
    return-void
.end method


# virtual methods
.method public addActionToSequence(Lorg/catrobat/catroid/content/Sprite;Lorg/catrobat/catroid/content/actions/ScriptSequenceAction;)V
    .locals 3
    .param p1, "sprite"    # Lorg/catrobat/catroid/content/Sprite;
    .param p2, "sequence"    # Lorg/catrobat/catroid/content/actions/ScriptSequenceAction;

    .line 86
    invoke-virtual {p1}, Lorg/catrobat/catroid/content/Sprite;->getActionFactory()Lorg/catrobat/catroid/content/ActionFactory;

    move-result-object v0

    sget-object v1, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->PLAY_DRUM:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    .line 87
    invoke-virtual {p0, v1}, Lorg/catrobat/catroid/content/bricks/PlayDrumForBeatsBrick;->getFormulaWithBrickField(Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;)Lorg/catrobat/catroid/formulaeditor/Formula;

    move-result-object v1

    iget-object v2, p0, Lorg/catrobat/catroid/content/bricks/PlayDrumForBeatsBrick;->drumSelection:Lorg/catrobat/catroid/content/bricks/brickspinner/PickableDrum;

    .line 86
    invoke-virtual {v0, p1, p2, v1, v2}, Lorg/catrobat/catroid/content/ActionFactory;->createPlayDrumForBeatsAction(Lorg/catrobat/catroid/content/Sprite;Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;Lorg/catrobat/catroid/formulaeditor/Formula;Lorg/catrobat/catroid/content/bricks/brickspinner/PickableDrum;)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/catrobat/catroid/content/actions/ScriptSequenceAction;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    .line 88
    return-void
.end method

.method protected getSpinnerId()I
    .locals 1

    .line 51
    const v0, 0x7f0a04aa

    return v0
.end method

.method public getView(Landroid/content/Context;)Landroid/view/View;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .line 69
    invoke-super {p0, p1}, Lorg/catrobat/catroid/content/bricks/FormulaBrick;->getView(Landroid/content/Context;)Landroid/view/View;

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 72
    .local v0, "items":Ljava/util/List;, "Ljava/util/List<Lorg/catrobat/catroid/common/Nameable;>;"
    invoke-static {}, Lorg/catrobat/catroid/content/bricks/brickspinner/PickableDrum;->values()[Lorg/catrobat/catroid/content/bricks/brickspinner/PickableDrum;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 73
    .local v4, "drum":Lorg/catrobat/catroid/content/bricks/brickspinner/PickableDrum;
    invoke-virtual {v4, p1}, Lorg/catrobat/catroid/content/bricks/brickspinner/PickableDrum;->getString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/catrobat/catroid/content/bricks/brickspinner/PickableDrum;->setName(Ljava/lang/String;)V

    .line 74
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 72
    .end local v4    # "drum":Lorg/catrobat/catroid/content/bricks/brickspinner/PickableDrum;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 77
    :cond_0
    new-instance v1, Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner;

    const v2, 0x7f0a04aa

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lorg/catrobat/catroid/content/bricks/PlayDrumForBeatsBrick;->view:Landroid/view/View;

    invoke-direct {v1, v2, v3, v0}, Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner;-><init>(Ljava/lang/Integer;Landroid/view/View;Ljava/util/List;)V

    .line 78
    .local v1, "spinner":Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner;, "Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner<Lorg/catrobat/catroid/content/bricks/brickspinner/PickableDrum;>;"
    iget-object v2, p0, Lorg/catrobat/catroid/content/bricks/PlayDrumForBeatsBrick;->drumSelection:Lorg/catrobat/catroid/content/bricks/brickspinner/PickableDrum;

    invoke-virtual {v2}, Lorg/catrobat/catroid/content/bricks/brickspinner/PickableDrum;->getValue()I

    move-result v2

    invoke-static {v2}, Lorg/catrobat/catroid/content/bricks/brickspinner/PickableDrum;->getIndexByValue(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner;->setSelection(I)V

    .line 79
    invoke-virtual {v1, p0}, Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner;->setOnItemSelectedListener(Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner$OnItemSelectedListener;)V

    .line 81
    iget-object v2, p0, Lorg/catrobat/catroid/content/bricks/PlayDrumForBeatsBrick;->view:Landroid/view/View;

    return-object v2
.end method

.method public getViewResource()I
    .locals 1

    .line 47
    const v0, 0x7f0d00b6

    return v0
.end method

.method public onEditOptionSelected(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "spinnerId"    # Ljava/lang/Integer;

    .line 96
    return-void
.end method

.method public bridge synthetic onItemSelected(Ljava/lang/Integer;Ljava/lang/Object;)V
    .locals 0

    .line 41
    check-cast p2, Lorg/catrobat/catroid/content/bricks/brickspinner/PickableDrum;

    invoke-virtual {p0, p1, p2}, Lorg/catrobat/catroid/content/bricks/PlayDrumForBeatsBrick;->onItemSelected(Ljava/lang/Integer;Lorg/catrobat/catroid/content/bricks/brickspinner/PickableDrum;)V

    return-void
.end method

.method public onItemSelected(Ljava/lang/Integer;Lorg/catrobat/catroid/content/bricks/brickspinner/PickableDrum;)V
    .locals 0
    .param p1, "spinnerId"    # Ljava/lang/Integer;
    .param p2, "item"    # Lorg/catrobat/catroid/content/bricks/brickspinner/PickableDrum;

    .line 104
    if-eqz p2, :cond_0

    .line 105
    iput-object p2, p0, Lorg/catrobat/catroid/content/bricks/PlayDrumForBeatsBrick;->drumSelection:Lorg/catrobat/catroid/content/bricks/brickspinner/PickableDrum;

    .line 107
    :cond_0
    return-void
.end method

.method public onNewOptionSelected(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "spinnerId"    # Ljava/lang/Integer;

    .line 92
    return-void
.end method

.method public onStringOptionSelected(Ljava/lang/Integer;Ljava/lang/String;)V
    .locals 0
    .param p1, "spinnerId"    # Ljava/lang/Integer;
    .param p2, "string"    # Ljava/lang/String;

    .line 100
    return-void
.end method
