.class public Lorg/catrobat/catroid/content/bricks/WhenNfcBrick;
.super Lorg/catrobat/catroid/content/bricks/ScriptBrickBaseType;
.source "WhenNfcBrick.java"

# interfaces
.implements Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/catrobat/catroid/content/bricks/ScriptBrickBaseType;",
        "Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner$OnItemSelectedListener<",
        "Lorg/catrobat/catroid/common/NfcTagData;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private script:Lorg/catrobat/catroid/content/WhenNfcScript;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 55
    new-instance v0, Lorg/catrobat/catroid/content/WhenNfcScript;

    invoke-direct {v0}, Lorg/catrobat/catroid/content/WhenNfcScript;-><init>()V

    invoke-direct {p0, v0}, Lorg/catrobat/catroid/content/bricks/WhenNfcBrick;-><init>(Lorg/catrobat/catroid/content/WhenNfcScript;)V

    .line 56
    return-void
.end method

.method public constructor <init>(Lorg/catrobat/catroid/content/WhenNfcScript;)V
    .locals 1
    .param p1, "script"    # Lorg/catrobat/catroid/content/WhenNfcScript;

    .line 58
    invoke-direct {p0}, Lorg/catrobat/catroid/content/bricks/ScriptBrickBaseType;-><init>()V

    .line 59
    invoke-virtual {p1, p0}, Lorg/catrobat/catroid/content/WhenNfcScript;->setScriptBrick(Lorg/catrobat/catroid/content/bricks/ScriptBrick;)V

    .line 60
    invoke-virtual {p1}, Lorg/catrobat/catroid/content/WhenNfcScript;->isCommentedOut()Z

    move-result v0

    iput-boolean v0, p0, Lorg/catrobat/catroid/content/bricks/WhenNfcBrick;->commentedOut:Z

    .line 61
    iput-object p1, p0, Lorg/catrobat/catroid/content/bricks/WhenNfcBrick;->script:Lorg/catrobat/catroid/content/WhenNfcScript;

    .line 62
    return-void
.end method


# virtual methods
.method public addActionToSequence(Lorg/catrobat/catroid/content/Sprite;Lorg/catrobat/catroid/content/actions/ScriptSequenceAction;)V
    .locals 0
    .param p1, "sprite"    # Lorg/catrobat/catroid/content/Sprite;
    .param p2, "sequence"    # Lorg/catrobat/catroid/content/actions/ScriptSequenceAction;

    .line 132
    return-void
.end method

.method public addRequiredResources(Lorg/catrobat/catroid/content/bricks/Brick$ResourcesSet;)V
    .locals 1
    .param p1, "requiredResourcesSet"    # Lorg/catrobat/catroid/content/bricks/Brick$ResourcesSet;

    .line 127
    const/16 v0, 0x10

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/catrobat/catroid/content/bricks/Brick$ResourcesSet;->add(Ljava/lang/Integer;)Z

    .line 128
    return-void
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 48
    invoke-virtual {p0}, Lorg/catrobat/catroid/content/bricks/WhenNfcBrick;->clone()Lorg/catrobat/catroid/content/bricks/Brick;

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

    .line 66
    invoke-super {p0}, Lorg/catrobat/catroid/content/bricks/ScriptBrickBaseType;->clone()Lorg/catrobat/catroid/content/bricks/Brick;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/content/bricks/WhenNfcBrick;

    .line 67
    .local v0, "clone":Lorg/catrobat/catroid/content/bricks/WhenNfcBrick;
    iget-object v1, p0, Lorg/catrobat/catroid/content/bricks/WhenNfcBrick;->script:Lorg/catrobat/catroid/content/WhenNfcScript;

    invoke-virtual {v1}, Lorg/catrobat/catroid/content/WhenNfcScript;->clone()Lorg/catrobat/catroid/content/Script;

    move-result-object v1

    check-cast v1, Lorg/catrobat/catroid/content/WhenNfcScript;

    iput-object v1, v0, Lorg/catrobat/catroid/content/bricks/WhenNfcBrick;->script:Lorg/catrobat/catroid/content/WhenNfcScript;

    .line 68
    invoke-virtual {v1, v0}, Lorg/catrobat/catroid/content/WhenNfcScript;->setScriptBrick(Lorg/catrobat/catroid/content/bricks/ScriptBrick;)V

    .line 69
    return-object v0
.end method

.method public getScript()Lorg/catrobat/catroid/content/Script;
    .locals 1

    .line 74
    iget-object v0, p0, Lorg/catrobat/catroid/content/bricks/WhenNfcBrick;->script:Lorg/catrobat/catroid/content/WhenNfcScript;

    return-object v0
.end method

.method public getView(Landroid/content/Context;)Landroid/view/View;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .line 84
    invoke-super {p0, p1}, Lorg/catrobat/catroid/content/bricks/ScriptBrickBaseType;->getView(Landroid/content/Context;)Landroid/view/View;

    .line 85
    invoke-static {}, Lorg/catrobat/catroid/ProjectManager;->getInstance()Lorg/catrobat/catroid/ProjectManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/catrobat/catroid/ProjectManager;->getCurrentSprite()Lorg/catrobat/catroid/content/Sprite;

    move-result-object v0

    .line 87
    .local v0, "currentSprite":Lorg/catrobat/catroid/content/Sprite;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 88
    .local v1, "items":Ljava/util/List;, "Ljava/util/List<Lorg/catrobat/catroid/common/Nameable;>;"
    new-instance v2, Lorg/catrobat/catroid/content/bricks/brickspinner/NewOption;

    const v3, 0x7f12018e

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/catrobat/catroid/content/bricks/brickspinner/NewOption;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 89
    new-instance v2, Lorg/catrobat/catroid/content/bricks/brickspinner/StringOption;

    const v3, 0x7f12018d

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/catrobat/catroid/content/bricks/brickspinner/StringOption;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 90
    invoke-virtual {v0}, Lorg/catrobat/catroid/content/Sprite;->getNfcTagList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 91
    new-instance v2, Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner;

    const v3, 0x7f0a02c2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Lorg/catrobat/catroid/content/bricks/WhenNfcBrick;->view:Landroid/view/View;

    invoke-direct {v2, v3, v4, v1}, Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner;-><init>(Ljava/lang/Integer;Landroid/view/View;Ljava/util/List;)V

    .line 92
    .local v2, "spinner":Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner;, "Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner<Lorg/catrobat/catroid/common/NfcTagData;>;"
    invoke-virtual {v2, p0}, Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner;->setOnItemSelectedListener(Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner$OnItemSelectedListener;)V

    .line 93
    iget-object v3, p0, Lorg/catrobat/catroid/content/bricks/WhenNfcBrick;->script:Lorg/catrobat/catroid/content/WhenNfcScript;

    invoke-virtual {v3}, Lorg/catrobat/catroid/content/WhenNfcScript;->getNfcTag()Lorg/catrobat/catroid/common/NfcTagData;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner;->setSelection(Lorg/catrobat/catroid/common/Nameable;)V

    .line 95
    iget-object v3, p0, Lorg/catrobat/catroid/content/bricks/WhenNfcBrick;->view:Landroid/view/View;

    return-object v3
.end method

.method public getViewResource()I
    .locals 1

    .line 79
    const v0, 0x7f0d010a

    return v0
.end method

.method public onEditOptionSelected(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "spinnerId"    # Ljava/lang/Integer;

    .line 111
    return-void
.end method

.method public bridge synthetic onItemSelected(Ljava/lang/Integer;Ljava/lang/Object;)V
    .locals 0

    .line 48
    check-cast p2, Lorg/catrobat/catroid/common/NfcTagData;

    invoke-virtual {p0, p1, p2}, Lorg/catrobat/catroid/content/bricks/WhenNfcBrick;->onItemSelected(Ljava/lang/Integer;Lorg/catrobat/catroid/common/NfcTagData;)V

    return-void
.end method

.method public onItemSelected(Ljava/lang/Integer;Lorg/catrobat/catroid/common/NfcTagData;)V
    .locals 2
    .param p1, "spinnerId"    # Ljava/lang/Integer;
    .param p2, "item"    # Lorg/catrobat/catroid/common/NfcTagData;

    .line 121
    iget-object v0, p0, Lorg/catrobat/catroid/content/bricks/WhenNfcBrick;->script:Lorg/catrobat/catroid/content/WhenNfcScript;

    invoke-virtual {v0, p2}, Lorg/catrobat/catroid/content/WhenNfcScript;->setNfcTag(Lorg/catrobat/catroid/common/NfcTagData;)V

    .line 122
    iget-object v0, p0, Lorg/catrobat/catroid/content/bricks/WhenNfcBrick;->script:Lorg/catrobat/catroid/content/WhenNfcScript;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/content/WhenNfcScript;->setMatchAll(Z)V

    .line 123
    return-void
.end method

.method public onNewOptionSelected(Ljava/lang/Integer;)V
    .locals 3
    .param p1, "spinnerId"    # Ljava/lang/Integer;

    .line 100
    iget-object v0, p0, Lorg/catrobat/catroid/content/bricks/WhenNfcBrick;->view:Landroid/view/View;

    if-nez v0, :cond_0

    .line 101
    return-void

    .line 103
    :cond_0
    iget-object v0, p0, Lorg/catrobat/catroid/content/bricks/WhenNfcBrick;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 104
    .local v0, "context":Landroid/content/Context;
    if-eqz v0, :cond_1

    .line 105
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lorg/catrobat/catroid/ui/NfcTagsActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 107
    :cond_1
    return-void
.end method

.method public onStringOptionSelected(Ljava/lang/Integer;Ljava/lang/String;)V
    .locals 2
    .param p1, "spinnerId"    # Ljava/lang/Integer;
    .param p2, "string"    # Ljava/lang/String;

    .line 115
    iget-object v0, p0, Lorg/catrobat/catroid/content/bricks/WhenNfcBrick;->script:Lorg/catrobat/catroid/content/WhenNfcScript;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/content/WhenNfcScript;->setMatchAll(Z)V

    .line 116
    iget-object v0, p0, Lorg/catrobat/catroid/content/bricks/WhenNfcBrick;->script:Lorg/catrobat/catroid/content/WhenNfcScript;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/content/WhenNfcScript;->setNfcTag(Lorg/catrobat/catroid/common/NfcTagData;)V

    .line 117
    return-void
.end method
