.class public Lorg/catrobat/catroid/content/bricks/BroadcastReceiverBrick;
.super Lorg/catrobat/catroid/content/bricks/BroadcastMessageBrick;
.source "BroadcastReceiverBrick.java"

# interfaces
.implements Lorg/catrobat/catroid/content/bricks/ScriptBrick;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private broadcastScript:Lorg/catrobat/catroid/content/BroadcastScript;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 39
    invoke-direct {p0}, Lorg/catrobat/catroid/content/bricks/BroadcastMessageBrick;-><init>()V

    .line 40
    new-instance v0, Lorg/catrobat/catroid/content/BroadcastScript;

    invoke-direct {v0}, Lorg/catrobat/catroid/content/BroadcastScript;-><init>()V

    iput-object v0, p0, Lorg/catrobat/catroid/content/bricks/BroadcastReceiverBrick;->broadcastScript:Lorg/catrobat/catroid/content/BroadcastScript;

    .line 41
    return-void
.end method

.method public constructor <init>(Lorg/catrobat/catroid/content/BroadcastScript;)V
    .locals 1
    .param p1, "broadcastScript"    # Lorg/catrobat/catroid/content/BroadcastScript;

    .line 43
    invoke-direct {p0}, Lorg/catrobat/catroid/content/bricks/BroadcastMessageBrick;-><init>()V

    .line 44
    invoke-virtual {p1, p0}, Lorg/catrobat/catroid/content/BroadcastScript;->setScriptBrick(Lorg/catrobat/catroid/content/bricks/ScriptBrick;)V

    .line 45
    invoke-virtual {p1}, Lorg/catrobat/catroid/content/BroadcastScript;->isCommentedOut()Z

    move-result v0

    iput-boolean v0, p0, Lorg/catrobat/catroid/content/bricks/BroadcastReceiverBrick;->commentedOut:Z

    .line 46
    iput-object p1, p0, Lorg/catrobat/catroid/content/bricks/BroadcastReceiverBrick;->broadcastScript:Lorg/catrobat/catroid/content/BroadcastScript;

    .line 47
    return-void
.end method


# virtual methods
.method public addActionToSequence(Lorg/catrobat/catroid/content/Sprite;Lorg/catrobat/catroid/content/actions/ScriptSequenceAction;)V
    .locals 0
    .param p1, "sprite"    # Lorg/catrobat/catroid/content/Sprite;
    .param p2, "sequence"    # Lorg/catrobat/catroid/content/actions/ScriptSequenceAction;

    .line 108
    return-void
.end method

.method public addToFlatList(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/catrobat/catroid/content/bricks/Brick;",
            ">;)V"
        }
    .end annotation

    .line 84
    .local p1, "bricks":Ljava/util/List;, "Ljava/util/List<Lorg/catrobat/catroid/content/bricks/Brick;>;"
    invoke-super {p0, p1}, Lorg/catrobat/catroid/content/bricks/BroadcastMessageBrick;->addToFlatList(Ljava/util/List;)V

    .line 85
    invoke-virtual {p0}, Lorg/catrobat/catroid/content/bricks/BroadcastReceiverBrick;->getScript()Lorg/catrobat/catroid/content/Script;

    move-result-object v0

    invoke-virtual {v0}, Lorg/catrobat/catroid/content/Script;->getBrickList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/catrobat/catroid/content/bricks/Brick;

    .line 86
    .local v1, "brick":Lorg/catrobat/catroid/content/bricks/Brick;
    invoke-interface {v1, p1}, Lorg/catrobat/catroid/content/bricks/Brick;->addToFlatList(Ljava/util/List;)V

    .line 87
    .end local v1    # "brick":Lorg/catrobat/catroid/content/bricks/Brick;
    goto :goto_0

    .line 88
    :cond_0
    return-void
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 33
    invoke-virtual {p0}, Lorg/catrobat/catroid/content/bricks/BroadcastReceiverBrick;->clone()Lorg/catrobat/catroid/content/bricks/Brick;

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

    .line 71
    invoke-super {p0}, Lorg/catrobat/catroid/content/bricks/BroadcastMessageBrick;->clone()Lorg/catrobat/catroid/content/bricks/Brick;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/content/bricks/BroadcastReceiverBrick;

    .line 72
    .local v0, "clone":Lorg/catrobat/catroid/content/bricks/BroadcastReceiverBrick;
    iget-object v1, p0, Lorg/catrobat/catroid/content/bricks/BroadcastReceiverBrick;->broadcastScript:Lorg/catrobat/catroid/content/BroadcastScript;

    invoke-virtual {v1}, Lorg/catrobat/catroid/content/BroadcastScript;->clone()Lorg/catrobat/catroid/content/Script;

    move-result-object v1

    check-cast v1, Lorg/catrobat/catroid/content/BroadcastScript;

    iput-object v1, v0, Lorg/catrobat/catroid/content/bricks/BroadcastReceiverBrick;->broadcastScript:Lorg/catrobat/catroid/content/BroadcastScript;

    .line 73
    invoke-virtual {v1, v0}, Lorg/catrobat/catroid/content/BroadcastScript;->setScriptBrick(Lorg/catrobat/catroid/content/bricks/ScriptBrick;)V

    .line 74
    return-object v0
.end method

.method public getBroadcastMessage()Ljava/lang/String;
    .locals 1

    .line 51
    iget-object v0, p0, Lorg/catrobat/catroid/content/bricks/BroadcastReceiverBrick;->broadcastScript:Lorg/catrobat/catroid/content/BroadcastScript;

    invoke-virtual {v0}, Lorg/catrobat/catroid/content/BroadcastScript;->getBroadcastMessage()Ljava/lang/String;

    move-result-object v0

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

    .line 92
    invoke-virtual {p0}, Lorg/catrobat/catroid/content/bricks/BroadcastReceiverBrick;->getScript()Lorg/catrobat/catroid/content/Script;

    move-result-object v0

    invoke-virtual {v0}, Lorg/catrobat/catroid/content/Script;->getBrickList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getPositionInDragAndDropTargetList()I
    .locals 1

    .line 97
    const/4 v0, -0x1

    return v0
.end method

.method public getPositionInScript()I
    .locals 1

    .line 66
    const/4 v0, -0x1

    return v0
.end method

.method public getScript()Lorg/catrobat/catroid/content/Script;
    .locals 1

    .line 61
    iget-object v0, p0, Lorg/catrobat/catroid/content/bricks/BroadcastReceiverBrick;->broadcastScript:Lorg/catrobat/catroid/content/BroadcastScript;

    return-object v0
.end method

.method public getViewResource()I
    .locals 1

    .line 79
    const v0, 0x7f0d003d

    return v0
.end method

.method public setBroadcastMessage(Ljava/lang/String;)V
    .locals 1
    .param p1, "broadcastMessage"    # Ljava/lang/String;

    .line 56
    iget-object v0, p0, Lorg/catrobat/catroid/content/bricks/BroadcastReceiverBrick;->broadcastScript:Lorg/catrobat/catroid/content/BroadcastScript;

    invoke-virtual {v0, p1}, Lorg/catrobat/catroid/content/BroadcastScript;->setBroadcastMessage(Ljava/lang/String;)V

    .line 57
    return-void
.end method

.method public setCommentedOut(Z)V
    .locals 1
    .param p1, "commentedOut"    # Z

    .line 102
    invoke-super {p0, p1}, Lorg/catrobat/catroid/content/bricks/BroadcastMessageBrick;->setCommentedOut(Z)V

    .line 103
    invoke-virtual {p0}, Lorg/catrobat/catroid/content/bricks/BroadcastReceiverBrick;->getScript()Lorg/catrobat/catroid/content/Script;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/catrobat/catroid/content/Script;->setCommentedOut(Z)V

    .line 104
    return-void
.end method
