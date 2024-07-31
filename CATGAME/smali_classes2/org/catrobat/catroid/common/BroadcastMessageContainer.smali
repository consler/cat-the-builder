.class public Lorg/catrobat/catroid/common/BroadcastMessageContainer;
.super Ljava/lang/Object;
.source "BroadcastMessageContainer.java"


# instance fields
.field private final broadcastMessages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/catrobat/catroid/common/BroadcastMessageContainer;->broadcastMessages:Ljava/util/List;

    .line 38
    return-void
.end method


# virtual methods
.method public addBroadcastMessage(Ljava/lang/String;)Z
    .locals 1
    .param p1, "messageToAdd"    # Ljava/lang/String;

    .line 47
    if-eqz p1, :cond_0

    .line 48
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/catrobat/catroid/common/BroadcastMessageContainer;->broadcastMessages:Ljava/util/List;

    .line 49
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/catrobat/catroid/common/BroadcastMessageContainer;->broadcastMessages:Ljava/util/List;

    .line 50
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 47
    :goto_0
    return v0
.end method

.method public getBroadcastMessages()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 61
    iget-object v0, p0, Lorg/catrobat/catroid/common/BroadcastMessageContainer;->broadcastMessages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 62
    invoke-virtual {p0}, Lorg/catrobat/catroid/common/BroadcastMessageContainer;->update()V

    .line 64
    :cond_0
    iget-object v0, p0, Lorg/catrobat/catroid/common/BroadcastMessageContainer;->broadcastMessages:Ljava/util/List;

    return-object v0
.end method

.method public removeBroadcastMessage(Ljava/lang/String;)Z
    .locals 1
    .param p1, "messageToRemove"    # Ljava/lang/String;

    .line 54
    if-eqz p1, :cond_0

    .line 55
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/catrobat/catroid/common/BroadcastMessageContainer;->broadcastMessages:Ljava/util/List;

    .line 56
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/catrobat/catroid/common/BroadcastMessageContainer;->broadcastMessages:Ljava/util/List;

    .line 57
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 54
    :goto_0
    return v0
.end method

.method public update()V
    .locals 2

    .line 41
    invoke-static {}, Lorg/catrobat/catroid/ProjectManager;->getInstance()Lorg/catrobat/catroid/ProjectManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/catrobat/catroid/ProjectManager;->getCurrentlyEditedScene()Lorg/catrobat/catroid/content/Scene;

    move-result-object v0

    invoke-virtual {v0}, Lorg/catrobat/catroid/content/Scene;->getBroadcastMessagesInUse()Ljava/util/Set;

    move-result-object v0

    .line 42
    .local v0, "usedMessages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v1, p0, Lorg/catrobat/catroid/common/BroadcastMessageContainer;->broadcastMessages:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 43
    iget-object v1, p0, Lorg/catrobat/catroid/common/BroadcastMessageContainer;->broadcastMessages:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 44
    return-void
.end method
