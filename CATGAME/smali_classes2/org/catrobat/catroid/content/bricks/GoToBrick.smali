.class public Lorg/catrobat/catroid/content/bricks/GoToBrick;
.super Lorg/catrobat/catroid/content/bricks/BrickBaseType;
.source "GoToBrick.java"

# interfaces
.implements Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/catrobat/catroid/content/bricks/BrickBaseType;",
        "Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner$OnItemSelectedListener<",
        "Lorg/catrobat/catroid/content/Sprite;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private destinationSprite:Lorg/catrobat/catroid/content/Sprite;

.field private spinnerSelection:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 50
    invoke-direct {p0}, Lorg/catrobat/catroid/content/bricks/BrickBaseType;-><init>()V

    .line 51
    return-void
.end method

.method public constructor <init>(Lorg/catrobat/catroid/content/Sprite;)V
    .locals 0
    .param p1, "destinationSprite"    # Lorg/catrobat/catroid/content/Sprite;

    .line 53
    invoke-direct {p0}, Lorg/catrobat/catroid/content/bricks/BrickBaseType;-><init>()V

    .line 54
    iput-object p1, p0, Lorg/catrobat/catroid/content/bricks/GoToBrick;->destinationSprite:Lorg/catrobat/catroid/content/Sprite;

    .line 55
    return-void
.end method


# virtual methods
.method public addActionToSequence(Lorg/catrobat/catroid/content/Sprite;Lorg/catrobat/catroid/content/actions/ScriptSequenceAction;)V
    .locals 3
    .param p1, "sprite"    # Lorg/catrobat/catroid/content/Sprite;
    .param p2, "sequence"    # Lorg/catrobat/catroid/content/actions/ScriptSequenceAction;

    .line 116
    invoke-virtual {p1}, Lorg/catrobat/catroid/content/Sprite;->getActionFactory()Lorg/catrobat/catroid/content/ActionFactory;

    move-result-object v0

    iget-object v1, p0, Lorg/catrobat/catroid/content/bricks/GoToBrick;->destinationSprite:Lorg/catrobat/catroid/content/Sprite;

    iget v2, p0, Lorg/catrobat/catroid/content/bricks/GoToBrick;->spinnerSelection:I

    invoke-virtual {v0, p1, v1, v2}, Lorg/catrobat/catroid/content/ActionFactory;->createGoToAction(Lorg/catrobat/catroid/content/Sprite;Lorg/catrobat/catroid/content/Sprite;I)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/catrobat/catroid/content/actions/ScriptSequenceAction;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    .line 117
    return-void
.end method

.method public getView(Landroid/content/Context;)Landroid/view/View;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .line 64
    invoke-super {p0, p1}, Lorg/catrobat/catroid/content/bricks/BrickBaseType;->getView(Landroid/content/Context;)Landroid/view/View;

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 67
    .local v0, "items":Ljava/util/List;, "Ljava/util/List<Lorg/catrobat/catroid/common/Nameable;>;"
    new-instance v1, Lorg/catrobat/catroid/content/bricks/brickspinner/StringOption;

    const v2, 0x7f1200c9

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/catrobat/catroid/content/bricks/brickspinner/StringOption;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 68
    new-instance v1, Lorg/catrobat/catroid/content/bricks/brickspinner/StringOption;

    const v2, 0x7f1200c8

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/catrobat/catroid/content/bricks/brickspinner/StringOption;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 69
    invoke-static {}, Lorg/catrobat/catroid/ProjectManager;->getInstance()Lorg/catrobat/catroid/ProjectManager;

    move-result-object v1

    invoke-virtual {v1}, Lorg/catrobat/catroid/ProjectManager;->getCurrentlyEditedScene()Lorg/catrobat/catroid/content/Scene;

    move-result-object v1

    invoke-virtual {v1}, Lorg/catrobat/catroid/content/Scene;->getSpriteList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 70
    invoke-static {}, Lorg/catrobat/catroid/ProjectManager;->getInstance()Lorg/catrobat/catroid/ProjectManager;

    move-result-object v1

    invoke-virtual {v1}, Lorg/catrobat/catroid/ProjectManager;->getCurrentlyEditedScene()Lorg/catrobat/catroid/content/Scene;

    move-result-object v1

    invoke-virtual {v1}, Lorg/catrobat/catroid/content/Scene;->getBackgroundSprite()Lorg/catrobat/catroid/content/Sprite;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 71
    invoke-static {}, Lorg/catrobat/catroid/ProjectManager;->getInstance()Lorg/catrobat/catroid/ProjectManager;

    move-result-object v1

    invoke-virtual {v1}, Lorg/catrobat/catroid/ProjectManager;->getCurrentSprite()Lorg/catrobat/catroid/content/Sprite;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 73
    new-instance v1, Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner;

    const v2, 0x7f0a0134

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lorg/catrobat/catroid/content/bricks/GoToBrick;->view:Landroid/view/View;

    invoke-direct {v1, v2, v3, v0}, Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner;-><init>(Ljava/lang/Integer;Landroid/view/View;Ljava/util/List;)V

    .line 74
    .local v1, "spinner":Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner;, "Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner<Lorg/catrobat/catroid/content/Sprite;>;"
    invoke-virtual {v1, p0}, Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner;->setOnItemSelectedListener(Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner$OnItemSelectedListener;)V

    .line 75
    iget v2, p0, Lorg/catrobat/catroid/content/bricks/GoToBrick;->spinnerSelection:I

    const/16 v3, 0x50

    if-ne v2, v3, :cond_0

    .line 76
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner;->setSelection(I)V

    .line 78
    :cond_0
    iget v2, p0, Lorg/catrobat/catroid/content/bricks/GoToBrick;->spinnerSelection:I

    const/16 v3, 0x51

    if-ne v2, v3, :cond_1

    .line 79
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner;->setSelection(I)V

    .line 81
    :cond_1
    iget v2, p0, Lorg/catrobat/catroid/content/bricks/GoToBrick;->spinnerSelection:I

    const/16 v3, 0x52

    if-ne v2, v3, :cond_2

    .line 82
    iget-object v2, p0, Lorg/catrobat/catroid/content/bricks/GoToBrick;->destinationSprite:Lorg/catrobat/catroid/content/Sprite;

    invoke-virtual {v1, v2}, Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner;->setSelection(Lorg/catrobat/catroid/common/Nameable;)V

    .line 84
    :cond_2
    iget-object v2, p0, Lorg/catrobat/catroid/content/bricks/GoToBrick;->view:Landroid/view/View;

    return-object v2
.end method

.method public getViewResource()I
    .locals 1

    .line 59
    const v0, 0x7f0d0082

    return v0
.end method

.method public onEditOptionSelected(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "spinnerId"    # Ljava/lang/Integer;

    .line 93
    return-void
.end method

.method public bridge synthetic onItemSelected(Ljava/lang/Integer;Ljava/lang/Object;)V
    .locals 0

    .line 43
    check-cast p2, Lorg/catrobat/catroid/content/Sprite;

    invoke-virtual {p0, p1, p2}, Lorg/catrobat/catroid/content/bricks/GoToBrick;->onItemSelected(Ljava/lang/Integer;Lorg/catrobat/catroid/content/Sprite;)V

    return-void
.end method

.method public onItemSelected(Ljava/lang/Integer;Lorg/catrobat/catroid/content/Sprite;)V
    .locals 1
    .param p1, "spinnerId"    # Ljava/lang/Integer;
    .param p2, "item"    # Lorg/catrobat/catroid/content/Sprite;

    .line 110
    const/16 v0, 0x52

    iput v0, p0, Lorg/catrobat/catroid/content/bricks/GoToBrick;->spinnerSelection:I

    .line 111
    iput-object p2, p0, Lorg/catrobat/catroid/content/bricks/GoToBrick;->destinationSprite:Lorg/catrobat/catroid/content/Sprite;

    .line 112
    return-void
.end method

.method public onNewOptionSelected(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "spinnerId"    # Ljava/lang/Integer;

    .line 89
    return-void
.end method

.method public onStringOptionSelected(Ljava/lang/Integer;Ljava/lang/String;)V
    .locals 2
    .param p1, "spinnerId"    # Ljava/lang/Integer;
    .param p2, "string"    # Ljava/lang/String;

    .line 97
    iget-object v0, p0, Lorg/catrobat/catroid/content/bricks/GoToBrick;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 99
    .local v0, "context":Landroid/content/Context;
    const v1, 0x7f1200c9

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 100
    const/16 v1, 0x50

    iput v1, p0, Lorg/catrobat/catroid/content/bricks/GoToBrick;->spinnerSelection:I

    .line 103
    :cond_0
    const v1, 0x7f1200c8

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 104
    const/16 v1, 0x51

    iput v1, p0, Lorg/catrobat/catroid/content/bricks/GoToBrick;->spinnerSelection:I

    .line 106
    :cond_1
    return-void
.end method
