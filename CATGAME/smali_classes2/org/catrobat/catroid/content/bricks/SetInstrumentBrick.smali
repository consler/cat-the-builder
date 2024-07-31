.class public Lorg/catrobat/catroid/content/bricks/SetInstrumentBrick;
.super Lorg/catrobat/catroid/content/bricks/BrickBaseType;
.source "SetInstrumentBrick.java"

# interfaces
.implements Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/catrobat/catroid/content/bricks/BrickBaseType;",
        "Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner$OnItemSelectedListener<",
        "Lorg/catrobat/catroid/content/bricks/brickspinner/PickableMusicalInstrument;",
        ">;"
    }
.end annotation


# instance fields
.field public instrumentSelection:Lorg/catrobat/catroid/content/bricks/brickspinner/PickableMusicalInstrument;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 41
    invoke-direct {p0}, Lorg/catrobat/catroid/content/bricks/BrickBaseType;-><init>()V

    .line 43
    invoke-static {}, Lorg/catrobat/catroid/content/bricks/brickspinner/PickableMusicalInstrument;->values()[Lorg/catrobat/catroid/content/bricks/brickspinner/PickableMusicalInstrument;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iput-object v0, p0, Lorg/catrobat/catroid/content/bricks/SetInstrumentBrick;->instrumentSelection:Lorg/catrobat/catroid/content/bricks/brickspinner/PickableMusicalInstrument;

    return-void
.end method


# virtual methods
.method public addActionToSequence(Lorg/catrobat/catroid/content/Sprite;Lorg/catrobat/catroid/content/actions/ScriptSequenceAction;)V
    .locals 2
    .param p1, "sprite"    # Lorg/catrobat/catroid/content/Sprite;
    .param p2, "sequence"    # Lorg/catrobat/catroid/content/actions/ScriptSequenceAction;

    .line 73
    invoke-virtual {p1}, Lorg/catrobat/catroid/content/Sprite;->getActionFactory()Lorg/catrobat/catroid/content/ActionFactory;

    move-result-object v0

    iget-object v1, p0, Lorg/catrobat/catroid/content/bricks/SetInstrumentBrick;->instrumentSelection:Lorg/catrobat/catroid/content/bricks/brickspinner/PickableMusicalInstrument;

    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/content/ActionFactory;->createSetInstrumentAction(Lorg/catrobat/catroid/content/bricks/brickspinner/PickableMusicalInstrument;)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/catrobat/catroid/content/actions/ScriptSequenceAction;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    .line 74
    return-void
.end method

.method protected getSpinnerId()I
    .locals 1

    .line 51
    const v0, 0x7f0a05a6

    return v0
.end method

.method public getView(Landroid/content/Context;)Landroid/view/View;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .line 56
    invoke-super {p0, p1}, Lorg/catrobat/catroid/content/bricks/BrickBaseType;->getView(Landroid/content/Context;)Landroid/view/View;

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 59
    .local v0, "items":Ljava/util/List;, "Ljava/util/List<Lorg/catrobat/catroid/common/Nameable;>;"
    invoke-static {}, Lorg/catrobat/catroid/content/bricks/brickspinner/PickableMusicalInstrument;->values()[Lorg/catrobat/catroid/content/bricks/brickspinner/PickableMusicalInstrument;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 60
    .local v4, "instrument":Lorg/catrobat/catroid/content/bricks/brickspinner/PickableMusicalInstrument;
    invoke-virtual {v4, p1}, Lorg/catrobat/catroid/content/bricks/brickspinner/PickableMusicalInstrument;->getString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/catrobat/catroid/content/bricks/brickspinner/PickableMusicalInstrument;->setName(Ljava/lang/String;)V

    .line 61
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 59
    .end local v4    # "instrument":Lorg/catrobat/catroid/content/bricks/brickspinner/PickableMusicalInstrument;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 64
    :cond_0
    new-instance v1, Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner;

    const v2, 0x7f0a05a6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lorg/catrobat/catroid/content/bricks/SetInstrumentBrick;->view:Landroid/view/View;

    invoke-direct {v1, v2, v3, v0}, Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner;-><init>(Ljava/lang/Integer;Landroid/view/View;Ljava/util/List;)V

    .line 65
    .local v1, "spinner":Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner;, "Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner<Lorg/catrobat/catroid/content/bricks/brickspinner/PickableMusicalInstrument;>;"
    iget-object v2, p0, Lorg/catrobat/catroid/content/bricks/SetInstrumentBrick;->instrumentSelection:Lorg/catrobat/catroid/content/bricks/brickspinner/PickableMusicalInstrument;

    invoke-virtual {v2}, Lorg/catrobat/catroid/content/bricks/brickspinner/PickableMusicalInstrument;->getValue()I

    move-result v2

    invoke-static {v2}, Lorg/catrobat/catroid/content/bricks/brickspinner/PickableMusicalInstrument;->getIndexByValue(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner;->setSelection(I)V

    .line 66
    invoke-virtual {v1, p0}, Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner;->setOnItemSelectedListener(Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner$OnItemSelectedListener;)V

    .line 68
    iget-object v2, p0, Lorg/catrobat/catroid/content/bricks/SetInstrumentBrick;->view:Landroid/view/View;

    return-object v2
.end method

.method public getViewResource()I
    .locals 1

    .line 47
    const v0, 0x7f0d00d4

    return v0
.end method

.method public onEditOptionSelected(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "spinnerId"    # Ljava/lang/Integer;

    .line 82
    return-void
.end method

.method public bridge synthetic onItemSelected(Ljava/lang/Integer;Ljava/lang/Object;)V
    .locals 0

    .line 41
    check-cast p2, Lorg/catrobat/catroid/content/bricks/brickspinner/PickableMusicalInstrument;

    invoke-virtual {p0, p1, p2}, Lorg/catrobat/catroid/content/bricks/SetInstrumentBrick;->onItemSelected(Ljava/lang/Integer;Lorg/catrobat/catroid/content/bricks/brickspinner/PickableMusicalInstrument;)V

    return-void
.end method

.method public onItemSelected(Ljava/lang/Integer;Lorg/catrobat/catroid/content/bricks/brickspinner/PickableMusicalInstrument;)V
    .locals 0
    .param p1, "spinnerId"    # Ljava/lang/Integer;
    .param p2, "item"    # Lorg/catrobat/catroid/content/bricks/brickspinner/PickableMusicalInstrument;

    .line 90
    if-eqz p2, :cond_0

    .line 91
    iput-object p2, p0, Lorg/catrobat/catroid/content/bricks/SetInstrumentBrick;->instrumentSelection:Lorg/catrobat/catroid/content/bricks/brickspinner/PickableMusicalInstrument;

    .line 93
    :cond_0
    return-void
.end method

.method public onNewOptionSelected(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "spinnerId"    # Ljava/lang/Integer;

    .line 78
    return-void
.end method

.method public onStringOptionSelected(Ljava/lang/Integer;Ljava/lang/String;)V
    .locals 0
    .param p1, "spinnerId"    # Ljava/lang/Integer;
    .param p2, "string"    # Ljava/lang/String;

    .line 86
    return-void
.end method
