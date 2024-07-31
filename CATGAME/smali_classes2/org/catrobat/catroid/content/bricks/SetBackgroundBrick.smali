.class public Lorg/catrobat/catroid/content/bricks/SetBackgroundBrick;
.super Lorg/catrobat/catroid/content/bricks/BrickBaseType;
.source "SetBackgroundBrick.java"

# interfaces
.implements Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner$OnItemSelectedListener;
.implements Lorg/catrobat/catroid/ui/recyclerview/dialog/dialoginterface/NewItemInterface;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/catrobat/catroid/content/bricks/BrickBaseType;",
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
.field protected look:Lorg/catrobat/catroid/common/LookData;

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
    .locals 0

    .line 64
    invoke-direct {p0}, Lorg/catrobat/catroid/content/bricks/BrickBaseType;-><init>()V

    .line 65
    return-void
.end method


# virtual methods
.method public addActionToSequence(Lorg/catrobat/catroid/content/Sprite;Lorg/catrobat/catroid/content/actions/ScriptSequenceAction;)V
    .locals 3
    .param p1, "sprite"    # Lorg/catrobat/catroid/content/Sprite;
    .param p2, "sequence"    # Lorg/catrobat/catroid/content/actions/ScriptSequenceAction;

    .line 94
    invoke-virtual {p1}, Lorg/catrobat/catroid/content/Sprite;->getActionFactory()Lorg/catrobat/catroid/content/ActionFactory;

    move-result-object v0

    iget-object v1, p0, Lorg/catrobat/catroid/content/bricks/SetBackgroundBrick;->look:Lorg/catrobat/catroid/common/LookData;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/catrobat/catroid/content/ActionFactory;->createSetBackgroundAction(Lorg/catrobat/catroid/common/LookData;Z)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/catrobat/catroid/content/actions/ScriptSequenceAction;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    .line 95
    return-void
.end method

.method public bridge synthetic addItem(Ljava/lang/Object;)V
    .locals 0

    .line 47
    check-cast p1, Lorg/catrobat/catroid/common/LookData;

    invoke-virtual {p0, p1}, Lorg/catrobat/catroid/content/bricks/SetBackgroundBrick;->addItem(Lorg/catrobat/catroid/common/LookData;)V

    return-void
.end method

.method public addItem(Lorg/catrobat/catroid/common/LookData;)V
    .locals 1
    .param p1, "item"    # Lorg/catrobat/catroid/common/LookData;

    .line 113
    iget-object v0, p0, Lorg/catrobat/catroid/content/bricks/SetBackgroundBrick;->spinner:Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner;

    invoke-virtual {v0, p1}, Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner;->add(Lorg/catrobat/catroid/common/Nameable;)V

    .line 114
    iget-object v0, p0, Lorg/catrobat/catroid/content/bricks/SetBackgroundBrick;->spinner:Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner;

    invoke-virtual {v0, p1}, Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner;->setSelection(Lorg/catrobat/catroid/common/Nameable;)V

    .line 115
    return-void
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 47
    invoke-virtual {p0}, Lorg/catrobat/catroid/content/bricks/SetBackgroundBrick;->clone()Lorg/catrobat/catroid/content/bricks/Brick;

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

    .line 69
    invoke-super {p0}, Lorg/catrobat/catroid/content/bricks/BrickBaseType;->clone()Lorg/catrobat/catroid/content/bricks/Brick;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/content/bricks/SetBackgroundBrick;

    .line 70
    .local v0, "clone":Lorg/catrobat/catroid/content/bricks/SetBackgroundBrick;
    const/4 v1, 0x0

    iput-object v1, v0, Lorg/catrobat/catroid/content/bricks/SetBackgroundBrick;->spinner:Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner;

    .line 71
    return-object v0
.end method

.method public getLook()Lorg/catrobat/catroid/common/LookData;
    .locals 1

    .line 57
    iget-object v0, p0, Lorg/catrobat/catroid/content/bricks/SetBackgroundBrick;->look:Lorg/catrobat/catroid/common/LookData;

    return-object v0
.end method

.method public getView(Landroid/content/Context;)Landroid/view/View;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .line 81
    invoke-super {p0, p1}, Lorg/catrobat/catroid/content/bricks/BrickBaseType;->getView(Landroid/content/Context;)Landroid/view/View;

    .line 82
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 83
    .local v0, "items":Ljava/util/List;, "Ljava/util/List<Lorg/catrobat/catroid/common/Nameable;>;"
    new-instance v1, Lorg/catrobat/catroid/content/bricks/brickspinner/NewOption;

    const v2, 0x7f1205aa

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/catrobat/catroid/content/bricks/brickspinner/NewOption;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 84
    invoke-static {}, Lorg/catrobat/catroid/ProjectManager;->getInstance()Lorg/catrobat/catroid/ProjectManager;

    move-result-object v1

    invoke-virtual {v1}, Lorg/catrobat/catroid/ProjectManager;->getCurrentlyPlayingScene()Lorg/catrobat/catroid/content/Scene;

    move-result-object v1

    invoke-virtual {v1}, Lorg/catrobat/catroid/content/Scene;->getBackgroundSprite()Lorg/catrobat/catroid/content/Sprite;

    move-result-object v1

    invoke-virtual {v1}, Lorg/catrobat/catroid/content/Sprite;->getLookList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 85
    new-instance v1, Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner;

    const v2, 0x7f0a01f0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lorg/catrobat/catroid/content/bricks/SetBackgroundBrick;->view:Landroid/view/View;

    invoke-direct {v1, v2, v3, v0}, Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner;-><init>(Ljava/lang/Integer;Landroid/view/View;Ljava/util/List;)V

    iput-object v1, p0, Lorg/catrobat/catroid/content/bricks/SetBackgroundBrick;->spinner:Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner;

    .line 86
    invoke-virtual {v1, p0}, Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner;->setOnItemSelectedListener(Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner$OnItemSelectedListener;)V

    .line 87
    iget-object v1, p0, Lorg/catrobat/catroid/content/bricks/SetBackgroundBrick;->spinner:Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner;

    iget-object v2, p0, Lorg/catrobat/catroid/content/bricks/SetBackgroundBrick;->look:Lorg/catrobat/catroid/common/LookData;

    invoke-virtual {v1, v2}, Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner;->setSelection(Lorg/catrobat/catroid/common/Nameable;)V

    .line 89
    iget-object v1, p0, Lorg/catrobat/catroid/content/bricks/SetBackgroundBrick;->view:Landroid/view/View;

    return-object v1
.end method

.method public getViewResource()I
    .locals 1

    .line 76
    const v0, 0x7f0d00ce

    return v0
.end method

.method public onEditOptionSelected(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "spinnerId"    # Ljava/lang/Integer;

    .line 109
    return-void
.end method

.method public bridge synthetic onItemSelected(Ljava/lang/Integer;Ljava/lang/Object;)V
    .locals 0

    .line 47
    check-cast p2, Lorg/catrobat/catroid/common/LookData;

    invoke-virtual {p0, p1, p2}, Lorg/catrobat/catroid/content/bricks/SetBackgroundBrick;->onItemSelected(Ljava/lang/Integer;Lorg/catrobat/catroid/common/LookData;)V

    return-void
.end method

.method public onItemSelected(Ljava/lang/Integer;Lorg/catrobat/catroid/common/LookData;)V
    .locals 0
    .param p1, "spinnerId"    # Ljava/lang/Integer;
    .param p2, "item"    # Lorg/catrobat/catroid/common/LookData;

    .line 123
    iput-object p2, p0, Lorg/catrobat/catroid/content/bricks/SetBackgroundBrick;->look:Lorg/catrobat/catroid/common/LookData;

    .line 124
    return-void
.end method

.method public onNewOptionSelected(Ljava/lang/Integer;)V
    .locals 2
    .param p1, "spinnerId"    # Ljava/lang/Integer;

    .line 99
    iget-object v0, p0, Lorg/catrobat/catroid/content/bricks/SetBackgroundBrick;->view:Landroid/view/View;

    invoke-static {v0}, Lorg/catrobat/catroid/ui/UiUtils;->getActivityFromView(Landroid/view/View;)Landroidx/appcompat/app/AppCompatActivity;

    move-result-object v0

    .line 100
    .local v0, "activity":Landroidx/appcompat/app/AppCompatActivity;
    instance-of v1, v0, Lorg/catrobat/catroid/ui/SpriteActivity;

    if-nez v1, :cond_0

    .line 101
    return-void

    .line 103
    :cond_0
    move-object v1, v0

    check-cast v1, Lorg/catrobat/catroid/ui/SpriteActivity;

    invoke-virtual {v1, p0}, Lorg/catrobat/catroid/ui/SpriteActivity;->registerOnNewLookListener(Lorg/catrobat/catroid/ui/recyclerview/dialog/dialoginterface/NewItemInterface;)V

    .line 104
    move-object v1, v0

    check-cast v1, Lorg/catrobat/catroid/ui/SpriteActivity;

    invoke-virtual {v1}, Lorg/catrobat/catroid/ui/SpriteActivity;->handleAddBackgroundButton()V

    .line 105
    return-void
.end method

.method public onStringOptionSelected(Ljava/lang/Integer;Ljava/lang/String;)V
    .locals 0
    .param p1, "spinnerId"    # Ljava/lang/Integer;
    .param p2, "string"    # Ljava/lang/String;

    .line 119
    return-void
.end method

.method public setLook(Lorg/catrobat/catroid/common/LookData;)V
    .locals 0
    .param p1, "look"    # Lorg/catrobat/catroid/common/LookData;

    .line 61
    iput-object p1, p0, Lorg/catrobat/catroid/content/bricks/SetBackgroundBrick;->look:Lorg/catrobat/catroid/common/LookData;

    .line 62
    return-void
.end method
