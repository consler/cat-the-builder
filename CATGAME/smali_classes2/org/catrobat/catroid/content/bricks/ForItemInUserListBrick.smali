.class public Lorg/catrobat/catroid/content/bricks/ForItemInUserListBrick;
.super Lorg/catrobat/catroid/content/bricks/UserDataBrick;
.source "ForItemInUserListBrick.java"

# interfaces
.implements Lorg/catrobat/catroid/content/bricks/CompositeBrick;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/catrobat/catroid/content/bricks/ForItemInUserListBrick$EndBrick;
    }
.end annotation


# instance fields
.field private transient endBrick:Lorg/catrobat/catroid/content/bricks/ForItemInUserListBrick$EndBrick;

.field private loopBricks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/catrobat/catroid/content/bricks/Brick;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 46
    invoke-direct {p0}, Lorg/catrobat/catroid/content/bricks/UserDataBrick;-><init>()V

    .line 43
    new-instance v0, Lorg/catrobat/catroid/content/bricks/ForItemInUserListBrick$EndBrick;

    invoke-direct {v0, p0}, Lorg/catrobat/catroid/content/bricks/ForItemInUserListBrick$EndBrick;-><init>(Lorg/catrobat/catroid/content/bricks/ForItemInUserListBrick;)V

    iput-object v0, p0, Lorg/catrobat/catroid/content/bricks/ForItemInUserListBrick;->endBrick:Lorg/catrobat/catroid/content/bricks/ForItemInUserListBrick$EndBrick;

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/catrobat/catroid/content/bricks/ForItemInUserListBrick;->loopBricks:Ljava/util/List;

    .line 47
    sget-object v0, Lorg/catrobat/catroid/content/bricks/Brick$BrickData;->FOR_ITEM_IN_USERLIST_LIST:Lorg/catrobat/catroid/content/bricks/Brick$BrickData;

    const v1, 0x7f0a038f

    invoke-virtual {p0, v0, v1}, Lorg/catrobat/catroid/content/bricks/ForItemInUserListBrick;->addAllowedBrickData(Lorg/catrobat/catroid/content/bricks/Brick$BrickData;I)V

    .line 48
    sget-object v0, Lorg/catrobat/catroid/content/bricks/Brick$BrickData;->FOR_ITEM_IN_USERLIST_VARIABLE:Lorg/catrobat/catroid/content/bricks/Brick$BrickData;

    const v1, 0x7f0a0390

    invoke-virtual {p0, v0, v1}, Lorg/catrobat/catroid/content/bricks/ForItemInUserListBrick;->addAllowedBrickData(Lorg/catrobat/catroid/content/bricks/Brick$BrickData;I)V

    .line 49
    return-void
.end method


# virtual methods
.method public addActionToSequence(Lorg/catrobat/catroid/content/Sprite;Lorg/catrobat/catroid/content/actions/ScriptSequenceAction;)V
    .locals 7
    .param p1, "sprite"    # Lorg/catrobat/catroid/content/Sprite;
    .param p2, "sequence"    # Lorg/catrobat/catroid/content/actions/ScriptSequenceAction;

    .line 144
    sget-object v0, Lorg/catrobat/catroid/content/bricks/Brick$BrickData;->FOR_ITEM_IN_USERLIST_VARIABLE:Lorg/catrobat/catroid/content/bricks/Brick$BrickData;

    invoke-virtual {p0, v0}, Lorg/catrobat/catroid/content/bricks/ForItemInUserListBrick;->getUserVariableWithBrickData(Lorg/catrobat/catroid/content/bricks/Brick$BrickData;)Lorg/catrobat/catroid/formulaeditor/UserVariable;

    move-result-object v0

    .line 145
    .local v0, "userVariable":Lorg/catrobat/catroid/formulaeditor/UserVariable;
    sget-object v1, Lorg/catrobat/catroid/content/bricks/Brick$BrickData;->FOR_ITEM_IN_USERLIST_LIST:Lorg/catrobat/catroid/content/bricks/Brick$BrickData;

    invoke-virtual {p0, v1}, Lorg/catrobat/catroid/content/bricks/ForItemInUserListBrick;->getUserListWithBrickData(Lorg/catrobat/catroid/content/bricks/Brick$BrickData;)Lorg/catrobat/catroid/formulaeditor/UserList;

    move-result-object v1

    .line 146
    .local v1, "userList":Lorg/catrobat/catroid/formulaeditor/UserList;
    invoke-virtual {p2}, Lorg/catrobat/catroid/content/actions/ScriptSequenceAction;->getScript()Lorg/catrobat/catroid/content/Script;

    move-result-object v2

    invoke-static {p0, v2}, Lorg/catrobat/catroid/utils/LoopUtil;->checkLoopBrickForLoopDelay(Lorg/catrobat/catroid/content/bricks/CompositeBrick;Lorg/catrobat/catroid/content/Script;)Z

    move-result v2

    .line 148
    .local v2, "isLoopDelay":Z
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/catrobat/catroid/formulaeditor/UserVariable;->getName()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    .line 149
    :cond_0
    new-instance v3, Lorg/catrobat/catroid/formulaeditor/UserVariable;

    .line 150
    invoke-static {}, Lorg/catrobat/catroid/CatroidApplication;->getAppContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f1205bf

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "NoVariableSet"

    invoke-direct {v3, v5, v4}, Lorg/catrobat/catroid/formulaeditor/UserVariable;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    move-object v0, v3

    .line 151
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lorg/catrobat/catroid/formulaeditor/UserVariable;->setDummy(Z)V

    .line 154
    :cond_1
    nop

    .line 155
    invoke-virtual {p2}, Lorg/catrobat/catroid/content/actions/ScriptSequenceAction;->getScript()Lorg/catrobat/catroid/content/Script;

    move-result-object v3

    invoke-static {v3}, Lorg/catrobat/catroid/content/ActionFactory;->createScriptSequenceAction(Lorg/catrobat/catroid/content/Script;)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v3

    check-cast v3, Lorg/catrobat/catroid/content/actions/ScriptSequenceAction;

    .line 157
    .local v3, "repeatSequence":Lorg/catrobat/catroid/content/actions/ScriptSequenceAction;
    iget-object v4, p0, Lorg/catrobat/catroid/content/bricks/ForItemInUserListBrick;->loopBricks:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/catrobat/catroid/content/bricks/Brick;

    .line 158
    .local v5, "brick":Lorg/catrobat/catroid/content/bricks/Brick;
    invoke-interface {v5}, Lorg/catrobat/catroid/content/bricks/Brick;->isCommentedOut()Z

    move-result v6

    if-nez v6, :cond_2

    .line 159
    invoke-interface {v5, p1, v3}, Lorg/catrobat/catroid/content/bricks/Brick;->addActionToSequence(Lorg/catrobat/catroid/content/Sprite;Lorg/catrobat/catroid/content/actions/ScriptSequenceAction;)V

    .line 161
    .end local v5    # "brick":Lorg/catrobat/catroid/content/bricks/Brick;
    :cond_2
    goto :goto_0

    .line 163
    :cond_3
    invoke-virtual {p1}, Lorg/catrobat/catroid/content/Sprite;->getActionFactory()Lorg/catrobat/catroid/content/ActionFactory;

    move-result-object v4

    .line 164
    invoke-virtual {v4, v1, v0, v3, v2}, Lorg/catrobat/catroid/content/ActionFactory;->createForItemInUserListAction(Lorg/catrobat/catroid/formulaeditor/UserList;Lorg/catrobat/catroid/formulaeditor/UserVariable;Lcom/badlogic/gdx/scenes/scene2d/Action;Z)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v4

    .line 166
    .local v4, "action":Lcom/badlogic/gdx/scenes/scene2d/Action;
    invoke-virtual {p2, v4}, Lorg/catrobat/catroid/content/actions/ScriptSequenceAction;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    .line 167
    return-void
.end method

.method public addBrick(Lorg/catrobat/catroid/content/bricks/Brick;)Z
    .locals 1
    .param p1, "brick"    # Lorg/catrobat/catroid/content/bricks/Brick;

    .line 72
    iget-object v0, p0, Lorg/catrobat/catroid/content/bricks/ForItemInUserListBrick;->loopBricks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
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

    .line 109
    .local p1, "bricks":Ljava/util/List;, "Ljava/util/List<Lorg/catrobat/catroid/content/bricks/Brick;>;"
    invoke-super {p0, p1}, Lorg/catrobat/catroid/content/bricks/UserDataBrick;->addToFlatList(Ljava/util/List;)V

    .line 110
    iget-object v0, p0, Lorg/catrobat/catroid/content/bricks/ForItemInUserListBrick;->loopBricks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/catrobat/catroid/content/bricks/Brick;

    .line 111
    .local v1, "brick":Lorg/catrobat/catroid/content/bricks/Brick;
    invoke-interface {v1, p1}, Lorg/catrobat/catroid/content/bricks/Brick;->addToFlatList(Ljava/util/List;)V

    .line 112
    .end local v1    # "brick":Lorg/catrobat/catroid/content/bricks/Brick;
    goto :goto_0

    .line 113
    :cond_0
    iget-object v0, p0, Lorg/catrobat/catroid/content/bricks/ForItemInUserListBrick;->endBrick:Lorg/catrobat/catroid/content/bricks/ForItemInUserListBrick$EndBrick;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 114
    return-void
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 41
    invoke-virtual {p0}, Lorg/catrobat/catroid/content/bricks/ForItemInUserListBrick;->clone()Lorg/catrobat/catroid/content/bricks/Brick;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/catrobat/catroid/content/bricks/Brick;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 85
    invoke-super {p0}, Lorg/catrobat/catroid/content/bricks/UserDataBrick;->clone()Lorg/catrobat/catroid/content/bricks/Brick;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/content/bricks/ForItemInUserListBrick;

    .line 86
    .local v0, "clone":Lorg/catrobat/catroid/content/bricks/ForItemInUserListBrick;
    new-instance v1, Lorg/catrobat/catroid/content/bricks/ForItemInUserListBrick$EndBrick;

    invoke-direct {v1, v0}, Lorg/catrobat/catroid/content/bricks/ForItemInUserListBrick$EndBrick;-><init>(Lorg/catrobat/catroid/content/bricks/ForItemInUserListBrick;)V

    iput-object v1, v0, Lorg/catrobat/catroid/content/bricks/ForItemInUserListBrick;->endBrick:Lorg/catrobat/catroid/content/bricks/ForItemInUserListBrick$EndBrick;

    .line 87
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lorg/catrobat/catroid/content/bricks/ForItemInUserListBrick;->loopBricks:Ljava/util/List;

    .line 88
    iget-object v1, p0, Lorg/catrobat/catroid/content/bricks/ForItemInUserListBrick;->loopBricks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/catrobat/catroid/content/bricks/Brick;

    .line 89
    .local v2, "brick":Lorg/catrobat/catroid/content/bricks/Brick;
    invoke-interface {v2}, Lorg/catrobat/catroid/content/bricks/Brick;->clone()Lorg/catrobat/catroid/content/bricks/Brick;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/catrobat/catroid/content/bricks/ForItemInUserListBrick;->addBrick(Lorg/catrobat/catroid/content/bricks/Brick;)Z

    .line 90
    .end local v2    # "brick":Lorg/catrobat/catroid/content/bricks/Brick;
    goto :goto_0

    .line 91
    :cond_0
    return-object v0
.end method

.method public consistsOfMultipleParts()Z
    .locals 1

    .line 96
    const/4 v0, 0x1

    return v0
.end method

.method public getAllParts()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/catrobat/catroid/content/bricks/Brick;",
            ">;"
        }
    .end annotation

    .line 101
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 102
    .local v0, "bricks":Ljava/util/List;, "Ljava/util/List<Lorg/catrobat/catroid/content/bricks/Brick;>;"
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 103
    iget-object v1, p0, Lorg/catrobat/catroid/content/bricks/ForItemInUserListBrick;->endBrick:Lorg/catrobat/catroid/content/bricks/ForItemInUserListBrick$EndBrick;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 104
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

    .line 126
    iget-object v0, p0, Lorg/catrobat/catroid/content/bricks/ForItemInUserListBrick;->loopBricks:Ljava/util/List;

    return-object v0
.end method

.method public getNestedBricks()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/catrobat/catroid/content/bricks/Brick;",
            ">;"
        }
    .end annotation

    .line 63
    iget-object v0, p0, Lorg/catrobat/catroid/content/bricks/ForItemInUserListBrick;->loopBricks:Ljava/util/List;

    return-object v0
.end method

.method public getSecondaryNestedBricks()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/catrobat/catroid/content/bricks/Brick;",
            ">;"
        }
    .end annotation

    .line 68
    const/4 v0, 0x0

    return-object v0
.end method

.method public getViewResource()I
    .locals 1

    .line 53
    const v0, 0x7f0d007d

    return v0
.end method

.method public hasSecondaryList()Z
    .locals 1

    .line 58
    const/4 v0, 0x0

    return v0
.end method

.method public removeChild(Lorg/catrobat/catroid/content/bricks/Brick;)Z
    .locals 4
    .param p1, "brick"    # Lorg/catrobat/catroid/content/bricks/Brick;

    .line 131
    iget-object v0, p0, Lorg/catrobat/catroid/content/bricks/ForItemInUserListBrick;->loopBricks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 132
    return v1

    .line 134
    :cond_0
    iget-object v0, p0, Lorg/catrobat/catroid/content/bricks/ForItemInUserListBrick;->loopBricks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/catrobat/catroid/content/bricks/Brick;

    .line 135
    .local v2, "childBrick":Lorg/catrobat/catroid/content/bricks/Brick;
    invoke-interface {v2, p1}, Lorg/catrobat/catroid/content/bricks/Brick;->removeChild(Lorg/catrobat/catroid/content/bricks/Brick;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 136
    return v1

    .line 138
    .end local v2    # "childBrick":Lorg/catrobat/catroid/content/bricks/Brick;
    :cond_1
    goto :goto_0

    .line 139
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public setCommentedOut(Z)V
    .locals 2
    .param p1, "commentedOut"    # Z

    .line 77
    invoke-super {p0, p1}, Lorg/catrobat/catroid/content/bricks/UserDataBrick;->setCommentedOut(Z)V

    .line 78
    iget-object v0, p0, Lorg/catrobat/catroid/content/bricks/ForItemInUserListBrick;->loopBricks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/catrobat/catroid/content/bricks/Brick;

    .line 79
    .local v1, "brick":Lorg/catrobat/catroid/content/bricks/Brick;
    invoke-interface {v1, p1}, Lorg/catrobat/catroid/content/bricks/Brick;->setCommentedOut(Z)V

    .line 80
    .end local v1    # "brick":Lorg/catrobat/catroid/content/bricks/Brick;
    goto :goto_0

    .line 81
    :cond_0
    return-void
.end method

.method public setParent(Lorg/catrobat/catroid/content/bricks/Brick;)V
    .locals 2
    .param p1, "parent"    # Lorg/catrobat/catroid/content/bricks/Brick;

    .line 118
    invoke-super {p0, p1}, Lorg/catrobat/catroid/content/bricks/UserDataBrick;->setParent(Lorg/catrobat/catroid/content/bricks/Brick;)V

    .line 119
    iget-object v0, p0, Lorg/catrobat/catroid/content/bricks/ForItemInUserListBrick;->loopBricks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/catrobat/catroid/content/bricks/Brick;

    .line 120
    .local v1, "brick":Lorg/catrobat/catroid/content/bricks/Brick;
    invoke-interface {v1, p0}, Lorg/catrobat/catroid/content/bricks/Brick;->setParent(Lorg/catrobat/catroid/content/bricks/Brick;)V

    .line 121
    .end local v1    # "brick":Lorg/catrobat/catroid/content/bricks/Brick;
    goto :goto_0

    .line 122
    :cond_0
    return-void
.end method
