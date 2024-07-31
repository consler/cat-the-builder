.class public Lorg/catrobat/catroid/content/bricks/WhenBackgroundChangesBrick;
.super Lorg/catrobat/catroid/content/bricks/BrickBaseType;
.source "WhenBackgroundChangesBrick.java"

# interfaces
.implements Lorg/catrobat/catroid/content/bricks/ScriptBrick;
.implements Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner$OnItemSelectedListener;
.implements Lorg/catrobat/catroid/ui/recyclerview/dialog/dialoginterface/NewItemInterface;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/catrobat/catroid/content/bricks/BrickBaseType;",
        "Lorg/catrobat/catroid/content/bricks/ScriptBrick;",
        "Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner$OnItemSelectedListener<",
        "Lorg/catrobat/catroid/common/LookData;",
        ">;",
        "Lorg/catrobat/catroid/ui/recyclerview/dialog/dialoginterface/NewItemInterface<",
        "Lorg/catrobat/catroid/common/LookData;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private script:Lorg/catrobat/catroid/content/WhenBackgroundChangesScript;

.field private transient spinner:Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner<",
            "Lorg/catrobat/catroid/common/LookData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 60
    new-instance v0, Lorg/catrobat/catroid/content/WhenBackgroundChangesScript;

    invoke-direct {v0}, Lorg/catrobat/catroid/content/WhenBackgroundChangesScript;-><init>()V

    invoke-direct {p0, v0}, Lorg/catrobat/catroid/content/bricks/WhenBackgroundChangesBrick;-><init>(Lorg/catrobat/catroid/content/WhenBackgroundChangesScript;)V

    .line 61
    return-void
.end method

.method public constructor <init>(Lorg/catrobat/catroid/content/WhenBackgroundChangesScript;)V
    .locals 1
    .param p1, "script"    # Lorg/catrobat/catroid/content/WhenBackgroundChangesScript;

    .line 63
    invoke-direct {p0}, Lorg/catrobat/catroid/content/bricks/BrickBaseType;-><init>()V

    .line 64
    invoke-virtual {p1, p0}, Lorg/catrobat/catroid/content/WhenBackgroundChangesScript;->setScriptBrick(Lorg/catrobat/catroid/content/bricks/ScriptBrick;)V

    .line 65
    invoke-virtual {p1}, Lorg/catrobat/catroid/content/WhenBackgroundChangesScript;->isCommentedOut()Z

    move-result v0

    iput-boolean v0, p0, Lorg/catrobat/catroid/content/bricks/WhenBackgroundChangesBrick;->commentedOut:Z

    .line 66
    iput-object p1, p0, Lorg/catrobat/catroid/content/bricks/WhenBackgroundChangesBrick;->script:Lorg/catrobat/catroid/content/WhenBackgroundChangesScript;

    .line 67
    return-void
.end method


# virtual methods
.method public addActionToSequence(Lorg/catrobat/catroid/content/Sprite;Lorg/catrobat/catroid/content/actions/ScriptSequenceAction;)V
    .locals 2
    .param p1, "sprite"    # Lorg/catrobat/catroid/content/Sprite;
    .param p2, "sequence"    # Lorg/catrobat/catroid/content/actions/ScriptSequenceAction;

    .line 148
    invoke-virtual {p1}, Lorg/catrobat/catroid/content/Sprite;->getActionFactory()Lorg/catrobat/catroid/content/ActionFactory;

    move-result-object v0

    invoke-virtual {p0}, Lorg/catrobat/catroid/content/bricks/WhenBackgroundChangesBrick;->getLook()Lorg/catrobat/catroid/common/LookData;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lorg/catrobat/catroid/content/ActionFactory;->createSetLookAction(Lorg/catrobat/catroid/content/Sprite;Lorg/catrobat/catroid/common/LookData;)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/catrobat/catroid/content/actions/ScriptSequenceAction;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    .line 149
    return-void
.end method

.method public bridge synthetic addItem(Ljava/lang/Object;)V
    .locals 0

    .line 49
    check-cast p1, Lorg/catrobat/catroid/common/LookData;

    invoke-virtual {p0, p1}, Lorg/catrobat/catroid/content/bricks/WhenBackgroundChangesBrick;->addItem(Lorg/catrobat/catroid/common/LookData;)V

    return-void
.end method

.method public addItem(Lorg/catrobat/catroid/common/LookData;)V
    .locals 1
    .param p1, "item"    # Lorg/catrobat/catroid/common/LookData;

    .line 153
    iget-object v0, p0, Lorg/catrobat/catroid/content/bricks/WhenBackgroundChangesBrick;->spinner:Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner;

    invoke-virtual {v0, p1}, Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner;->add(Lorg/catrobat/catroid/common/Nameable;)V

    .line 154
    iget-object v0, p0, Lorg/catrobat/catroid/content/bricks/WhenBackgroundChangesBrick;->spinner:Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner;

    invoke-virtual {v0, p1}, Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner;->setSelection(Lorg/catrobat/catroid/common/Nameable;)V

    .line 155
    return-void
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 49
    invoke-virtual {p0}, Lorg/catrobat/catroid/content/bricks/WhenBackgroundChangesBrick;->clone()Lorg/catrobat/catroid/content/bricks/Brick;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/catrobat/catroid/content/bricks/Brick;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 79
    invoke-super {p0}, Lorg/catrobat/catroid/content/bricks/BrickBaseType;->clone()Lorg/catrobat/catroid/content/bricks/Brick;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/content/bricks/WhenBackgroundChangesBrick;

    .line 80
    .local v0, "clone":Lorg/catrobat/catroid/content/bricks/WhenBackgroundChangesBrick;
    iget-object v1, p0, Lorg/catrobat/catroid/content/bricks/WhenBackgroundChangesBrick;->script:Lorg/catrobat/catroid/content/WhenBackgroundChangesScript;

    invoke-virtual {v1}, Lorg/catrobat/catroid/content/WhenBackgroundChangesScript;->clone()Lorg/catrobat/catroid/content/Script;

    move-result-object v1

    check-cast v1, Lorg/catrobat/catroid/content/WhenBackgroundChangesScript;

    iput-object v1, v0, Lorg/catrobat/catroid/content/bricks/WhenBackgroundChangesBrick;->script:Lorg/catrobat/catroid/content/WhenBackgroundChangesScript;

    .line 81
    invoke-virtual {v1, v0}, Lorg/catrobat/catroid/content/WhenBackgroundChangesScript;->setScriptBrick(Lorg/catrobat/catroid/content/bricks/ScriptBrick;)V

    .line 82
    const/4 v1, 0x0

    iput-object v1, v0, Lorg/catrobat/catroid/content/bricks/WhenBackgroundChangesBrick;->spinner:Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner;

    .line 83
    return-object v0
.end method

.method public getDragAndDropTargetList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/catrobat/catroid/content/bricks/Brick;",
            ">;"
        }
    .end annotation

    .line 159
    invoke-virtual {p0}, Lorg/catrobat/catroid/content/bricks/WhenBackgroundChangesBrick;->getScript()Lorg/catrobat/catroid/content/Script;

    move-result-object v0

    invoke-virtual {v0}, Lorg/catrobat/catroid/content/Script;->getBrickList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getLook()Lorg/catrobat/catroid/common/LookData;
    .locals 1

    .line 70
    iget-object v0, p0, Lorg/catrobat/catroid/content/bricks/WhenBackgroundChangesBrick;->script:Lorg/catrobat/catroid/content/WhenBackgroundChangesScript;

    invoke-virtual {v0}, Lorg/catrobat/catroid/content/WhenBackgroundChangesScript;->getLook()Lorg/catrobat/catroid/common/LookData;

    move-result-object v0

    return-object v0
.end method

.method public getPositionInDragAndDropTargetList()I
    .locals 1

    .line 164
    const/4 v0, -0x1

    return v0
.end method

.method public getPositionInScript()I
    .locals 1

    .line 93
    const/4 v0, -0x1

    return v0
.end method

.method public getScript()Lorg/catrobat/catroid/content/Script;
    .locals 1

    .line 88
    iget-object v0, p0, Lorg/catrobat/catroid/content/bricks/WhenBackgroundChangesBrick;->script:Lorg/catrobat/catroid/content/WhenBackgroundChangesScript;

    return-object v0
.end method

.method public getView(Landroid/content/Context;)Landroid/view/View;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .line 103
    invoke-super {p0, p1}, Lorg/catrobat/catroid/content/bricks/BrickBaseType;->getView(Landroid/content/Context;)Landroid/view/View;

    .line 105
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 106
    .local v0, "items":Ljava/util/List;, "Ljava/util/List<Lorg/catrobat/catroid/common/Nameable;>;"
    new-instance v1, Lorg/catrobat/catroid/content/bricks/brickspinner/NewOption;

    const v2, 0x7f1205aa

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/catrobat/catroid/content/bricks/brickspinner/NewOption;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 107
    invoke-static {}, Lorg/catrobat/catroid/ProjectManager;->getInstance()Lorg/catrobat/catroid/ProjectManager;

    move-result-object v1

    invoke-virtual {v1}, Lorg/catrobat/catroid/ProjectManager;->getCurrentlyEditedScene()Lorg/catrobat/catroid/content/Scene;

    move-result-object v1

    invoke-virtual {v1}, Lorg/catrobat/catroid/content/Scene;->getBackgroundSprite()Lorg/catrobat/catroid/content/Sprite;

    move-result-object v1

    invoke-virtual {v1}, Lorg/catrobat/catroid/content/Sprite;->getLookList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 108
    new-instance v1, Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner;

    const v2, 0x7f0a02b4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lorg/catrobat/catroid/content/bricks/WhenBackgroundChangesBrick;->view:Landroid/view/View;

    invoke-direct {v1, v2, v3, v0}, Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner;-><init>(Ljava/lang/Integer;Landroid/view/View;Ljava/util/List;)V

    iput-object v1, p0, Lorg/catrobat/catroid/content/bricks/WhenBackgroundChangesBrick;->spinner:Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner;

    .line 109
    invoke-virtual {v1, p0}, Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner;->setOnItemSelectedListener(Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner$OnItemSelectedListener;)V

    .line 110
    iget-object v1, p0, Lorg/catrobat/catroid/content/bricks/WhenBackgroundChangesBrick;->spinner:Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner;

    invoke-virtual {p0}, Lorg/catrobat/catroid/content/bricks/WhenBackgroundChangesBrick;->getLook()Lorg/catrobat/catroid/common/LookData;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner;->setSelection(Lorg/catrobat/catroid/common/Nameable;)V

    .line 112
    iget-object v1, p0, Lorg/catrobat/catroid/content/bricks/WhenBackgroundChangesBrick;->view:Landroid/view/View;

    return-object v1
.end method

.method public getViewResource()I
    .locals 1

    .line 98
    const v0, 0x7f0d0105

    return v0
.end method

.method public onEditOptionSelected(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "spinnerId"    # Ljava/lang/Integer;

    .line 129
    return-void
.end method

.method public bridge synthetic onItemSelected(Ljava/lang/Integer;Ljava/lang/Object;)V
    .locals 0

    .line 49
    check-cast p2, Lorg/catrobat/catroid/common/LookData;

    invoke-virtual {p0, p1, p2}, Lorg/catrobat/catroid/content/bricks/WhenBackgroundChangesBrick;->onItemSelected(Ljava/lang/Integer;Lorg/catrobat/catroid/common/LookData;)V

    return-void
.end method

.method public onItemSelected(Ljava/lang/Integer;Lorg/catrobat/catroid/common/LookData;)V
    .locals 0
    .param p1, "spinnerId"    # Ljava/lang/Integer;
    .param p2, "item"    # Lorg/catrobat/catroid/common/LookData;

    .line 137
    invoke-virtual {p0, p2}, Lorg/catrobat/catroid/content/bricks/WhenBackgroundChangesBrick;->setLook(Lorg/catrobat/catroid/common/LookData;)V

    .line 138
    return-void
.end method

.method public onNewOptionSelected(Ljava/lang/Integer;)V
    .locals 3
    .param p1, "spinnerId"    # Ljava/lang/Integer;

    .line 117
    iget-object v0, p0, Lorg/catrobat/catroid/content/bricks/WhenBackgroundChangesBrick;->view:Landroid/view/View;

    invoke-static {v0}, Lorg/catrobat/catroid/ui/UiUtils;->getActivityFromView(Landroid/view/View;)Landroidx/appcompat/app/AppCompatActivity;

    move-result-object v0

    .line 118
    .local v0, "activity":Landroidx/appcompat/app/AppCompatActivity;
    instance-of v1, v0, Lorg/catrobat/catroid/ui/SpriteActivity;

    if-nez v1, :cond_0

    .line 119
    return-void

    .line 121
    :cond_0
    move-object v1, v0

    check-cast v1, Lorg/catrobat/catroid/ui/SpriteActivity;

    .line 122
    invoke-static {}, Lorg/catrobat/catroid/ProjectManager;->getInstance()Lorg/catrobat/catroid/ProjectManager;

    move-result-object v2

    invoke-virtual {v2}, Lorg/catrobat/catroid/ProjectManager;->getCurrentlyEditedScene()Lorg/catrobat/catroid/content/Scene;

    move-result-object v2

    invoke-virtual {v2}, Lorg/catrobat/catroid/content/Scene;->getBackgroundSprite()Lorg/catrobat/catroid/content/Sprite;

    move-result-object v2

    .line 121
    invoke-virtual {v1, v2}, Lorg/catrobat/catroid/ui/SpriteActivity;->setCurrentSprite(Lorg/catrobat/catroid/content/Sprite;)V

    .line 123
    move-object v1, v0

    check-cast v1, Lorg/catrobat/catroid/ui/SpriteActivity;

    invoke-virtual {v1, p0}, Lorg/catrobat/catroid/ui/SpriteActivity;->registerOnNewLookListener(Lorg/catrobat/catroid/ui/recyclerview/dialog/dialoginterface/NewItemInterface;)V

    .line 124
    move-object v1, v0

    check-cast v1, Lorg/catrobat/catroid/ui/SpriteActivity;

    invoke-virtual {v1}, Lorg/catrobat/catroid/ui/SpriteActivity;->handleAddBackgroundButton()V

    .line 125
    return-void
.end method

.method public onStringOptionSelected(Ljava/lang/Integer;Ljava/lang/String;)V
    .locals 0
    .param p1, "spinnerId"    # Ljava/lang/Integer;
    .param p2, "string"    # Ljava/lang/String;

    .line 133
    return-void
.end method

.method public setCommentedOut(Z)V
    .locals 1
    .param p1, "commentedOut"    # Z

    .line 142
    invoke-super {p0, p1}, Lorg/catrobat/catroid/content/bricks/BrickBaseType;->setCommentedOut(Z)V

    .line 143
    invoke-virtual {p0}, Lorg/catrobat/catroid/content/bricks/WhenBackgroundChangesBrick;->getScript()Lorg/catrobat/catroid/content/Script;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/catrobat/catroid/content/Script;->setCommentedOut(Z)V

    .line 144
    return-void
.end method

.method public setLook(Lorg/catrobat/catroid/common/LookData;)V
    .locals 1
    .param p1, "look"    # Lorg/catrobat/catroid/common/LookData;

    .line 74
    iget-object v0, p0, Lorg/catrobat/catroid/content/bricks/WhenBackgroundChangesBrick;->script:Lorg/catrobat/catroid/content/WhenBackgroundChangesScript;

    invoke-virtual {v0, p1}, Lorg/catrobat/catroid/content/WhenBackgroundChangesScript;->setLook(Lorg/catrobat/catroid/common/LookData;)V

    .line 75
    return-void
.end method
