.class public abstract Lorg/catrobat/catroid/content/Script;
.super Ljava/lang/Object;
.source "Script.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field protected brickList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/catrobat/catroid/content/bricks/Brick;",
            ">;"
        }
    .end annotation
.end field

.field protected commentedOut:Z

.field protected posX:F
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAsAttribute;
    .end annotation
.end field

.field protected posY:F
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAsAttribute;
    .end annotation
.end field

.field protected transient scriptBrick:Lorg/catrobat/catroid/content/bricks/ScriptBrick;

.field protected scriptId:Ljava/util/UUID;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/catrobat/catroid/content/Script;->brickList:Ljava/util/List;

    .line 47
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/catrobat/catroid/content/Script;->commentedOut:Z

    .line 54
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    iput-object v0, p0, Lorg/catrobat/catroid/content/Script;->scriptId:Ljava/util/UUID;

    return-void
.end method


# virtual methods
.method public addBrick(ILorg/catrobat/catroid/content/bricks/Brick;)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "brick"    # Lorg/catrobat/catroid/content/bricks/Brick;

    .line 143
    iget-object v0, p0, Lorg/catrobat/catroid/content/Script;->brickList:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 144
    return-void
.end method

.method public addBrick(Lorg/catrobat/catroid/content/bricks/Brick;)Z
    .locals 1
    .param p1, "brick"    # Lorg/catrobat/catroid/content/bricks/Brick;

    .line 139
    iget-object v0, p0, Lorg/catrobat/catroid/content/Script;->brickList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public addRequiredResources(Lorg/catrobat/catroid/content/bricks/Brick$ResourcesSet;)V
    .locals 3
    .param p1, "resourcesSet"    # Lorg/catrobat/catroid/content/bricks/Brick$ResourcesSet;

    .line 186
    iget-object v0, p0, Lorg/catrobat/catroid/content/Script;->brickList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/catrobat/catroid/content/bricks/Brick;

    .line 187
    .local v1, "brick":Lorg/catrobat/catroid/content/bricks/Brick;
    invoke-interface {v1}, Lorg/catrobat/catroid/content/bricks/Brick;->isCommentedOut()Z

    move-result v2

    if-nez v2, :cond_0

    .line 188
    invoke-interface {v1, p1}, Lorg/catrobat/catroid/content/bricks/Brick;->addRequiredResources(Lorg/catrobat/catroid/content/bricks/Brick$ResourcesSet;)V

    .line 190
    .end local v1    # "brick":Lorg/catrobat/catroid/content/bricks/Brick;
    :cond_0
    goto :goto_0

    .line 191
    :cond_1
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

    .line 147
    .local p1, "bricks":Ljava/util/List;, "Ljava/util/List<Lorg/catrobat/catroid/content/bricks/Brick;>;"
    invoke-virtual {p0}, Lorg/catrobat/catroid/content/Script;->getScriptBrick()Lorg/catrobat/catroid/content/bricks/ScriptBrick;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 148
    iget-object v0, p0, Lorg/catrobat/catroid/content/Script;->brickList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/catrobat/catroid/content/bricks/Brick;

    .line 149
    .local v1, "brick":Lorg/catrobat/catroid/content/bricks/Brick;
    invoke-interface {v1, p1}, Lorg/catrobat/catroid/content/bricks/Brick;->addToFlatList(Ljava/util/List;)V

    .line 150
    .end local v1    # "brick":Lorg/catrobat/catroid/content/bricks/Brick;
    goto :goto_0

    .line 151
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

    .line 42
    invoke-virtual {p0}, Lorg/catrobat/catroid/content/Script;->clone()Lorg/catrobat/catroid/content/Script;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/catrobat/catroid/content/Script;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 66
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/content/Script;

    .line 67
    .local v0, "clone":Lorg/catrobat/catroid/content/Script;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lorg/catrobat/catroid/content/Script;->brickList:Ljava/util/List;

    .line 69
    iget-object v1, p0, Lorg/catrobat/catroid/content/Script;->brickList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/catrobat/catroid/content/bricks/Brick;

    .line 70
    .local v2, "brick":Lorg/catrobat/catroid/content/bricks/Brick;
    iget-object v3, v0, Lorg/catrobat/catroid/content/Script;->brickList:Ljava/util/List;

    invoke-interface {v2}, Lorg/catrobat/catroid/content/bricks/Brick;->clone()Lorg/catrobat/catroid/content/bricks/Brick;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 71
    .end local v2    # "brick":Lorg/catrobat/catroid/content/bricks/Brick;
    goto :goto_0

    .line 73
    :cond_0
    iget-boolean v1, p0, Lorg/catrobat/catroid/content/Script;->commentedOut:Z

    iput-boolean v1, v0, Lorg/catrobat/catroid/content/Script;->commentedOut:Z

    .line 74
    const/4 v1, 0x0

    iput-object v1, v0, Lorg/catrobat/catroid/content/Script;->scriptBrick:Lorg/catrobat/catroid/content/bricks/ScriptBrick;

    .line 75
    iget v1, p0, Lorg/catrobat/catroid/content/Script;->posX:F

    iput v1, v0, Lorg/catrobat/catroid/content/Script;->posX:F

    .line 76
    iget v1, p0, Lorg/catrobat/catroid/content/Script;->posY:F

    iput v1, v0, Lorg/catrobat/catroid/content/Script;->posY:F

    .line 77
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    iput-object v1, v0, Lorg/catrobat/catroid/content/Script;->scriptId:Ljava/util/UUID;

    .line 78
    return-object v0
.end method

.method public abstract createEventId(Lorg/catrobat/catroid/content/Sprite;)Lorg/catrobat/catroid/content/eventids/EventId;
.end method

.method public deselectElements(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/catrobat/catroid/formulaeditor/UserData<",
            "*>;>;)V"
        }
    .end annotation

    .line 214
    .local p1, "elements":Ljava/util/List;, "Ljava/util/List<Lorg/catrobat/catroid/formulaeditor/UserData<*>;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 215
    .local v0, "flatList":Ljava/util/List;, "Ljava/util/List<Lorg/catrobat/catroid/content/bricks/Brick;>;"
    invoke-virtual {p0, v0}, Lorg/catrobat/catroid/content/Script;->addToFlatList(Ljava/util/List;)V

    .line 216
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/catrobat/catroid/content/bricks/Brick;

    .line 217
    .local v2, "brick":Lorg/catrobat/catroid/content/bricks/Brick;
    instance-of v3, v2, Lorg/catrobat/catroid/content/bricks/ListSelectorBrick;

    if-eqz v3, :cond_0

    .line 218
    move-object v3, v2

    check-cast v3, Lorg/catrobat/catroid/content/bricks/ListSelectorBrick;

    invoke-virtual {v3, p1}, Lorg/catrobat/catroid/content/bricks/ListSelectorBrick;->deselectElements(Ljava/util/List;)V

    .line 220
    .end local v2    # "brick":Lorg/catrobat/catroid/content/bricks/Brick;
    :cond_0
    goto :goto_0

    .line 221
    :cond_1
    return-void
.end method

.method public findBricksInScript(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/UUID;",
            ">;)",
            "Ljava/util/List<",
            "Lorg/catrobat/catroid/content/bricks/Brick;",
            ">;"
        }
    .end annotation

    .line 224
    .local p1, "brickIds":Ljava/util/List;, "Ljava/util/List<Ljava/util/UUID;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 226
    .local v0, "bricks":Ljava/util/List;, "Ljava/util/List<Lorg/catrobat/catroid/content/bricks/Brick;>;"
    iget-object v1, p0, Lorg/catrobat/catroid/content/Script;->brickList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/catrobat/catroid/content/bricks/Brick;

    .line 227
    .local v2, "brick":Lorg/catrobat/catroid/content/bricks/Brick;
    invoke-interface {v2}, Lorg/catrobat/catroid/content/bricks/Brick;->getBrickID()Ljava/util/UUID;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 228
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 229
    :cond_0
    instance-of v3, v2, Lorg/catrobat/catroid/content/bricks/CompositeBrick;

    if-eqz v3, :cond_1

    .line 230
    invoke-interface {v2, p1}, Lorg/catrobat/catroid/content/bricks/Brick;->findBricksInNestedBricks(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    .line 231
    .local v3, "tmpBricks":Ljava/util/List;, "Ljava/util/List<Lorg/catrobat/catroid/content/bricks/Brick;>;"
    if-eqz v3, :cond_1

    .line 232
    return-object v3

    .line 236
    .end local v3    # "tmpBricks":Ljava/util/List;, "Ljava/util/List<Lorg/catrobat/catroid/content/bricks/Brick;>;"
    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ne v3, v4, :cond_2

    .line 237
    return-object v0

    .line 239
    .end local v2    # "brick":Lorg/catrobat/catroid/content/bricks/Brick;
    :cond_2
    goto :goto_0

    .line 241
    :cond_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_4

    .line 242
    return-object v0

    .line 244
    :cond_4
    const/4 v1, 0x0

    return-object v1
.end method

.method public getBrick(I)Lorg/catrobat/catroid/content/bricks/Brick;
    .locals 1
    .param p1, "index"    # I

    .line 154
    iget-object v0, p0, Lorg/catrobat/catroid/content/Script;->brickList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/content/bricks/Brick;

    return-object v0
.end method

.method public getBrickList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/catrobat/catroid/content/bricks/Brick;",
            ">;"
        }
    .end annotation

    .line 59
    iget-object v0, p0, Lorg/catrobat/catroid/content/Script;->brickList:Ljava/util/List;

    return-object v0
.end method

.method public getPosX()F
    .locals 1

    .line 82
    iget v0, p0, Lorg/catrobat/catroid/content/Script;->posX:F

    return v0
.end method

.method public getPosY()F
    .locals 1

    .line 90
    iget v0, p0, Lorg/catrobat/catroid/content/Script;->posY:F

    return v0
.end method

.method public abstract getScriptBrick()Lorg/catrobat/catroid/content/bricks/ScriptBrick;
.end method

.method public getScriptId()Ljava/util/UUID;
    .locals 1

    .line 98
    iget-object v0, p0, Lorg/catrobat/catroid/content/Script;->scriptId:Ljava/util/UUID;

    return-object v0
.end method

.method public insertBrickAfter(Ljava/util/UUID;ILjava/util/List;)Z
    .locals 7
    .param p1, "parentId"    # Ljava/util/UUID;
    .param p2, "subStackIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/UUID;",
            "I",
            "Ljava/util/List<",
            "Lorg/catrobat/catroid/content/bricks/Brick;",
            ">;)Z"
        }
    .end annotation

    .line 261
    .local p3, "bricksToAdd":Ljava/util/List;, "Ljava/util/List<Lorg/catrobat/catroid/content/bricks/Brick;>;"
    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, -0x1

    if-ne p2, v2, :cond_4

    .line 262
    iget-object v2, p0, Lorg/catrobat/catroid/content/Script;->scriptId:Ljava/util/UUID;

    invoke-virtual {v2, p1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {p0}, Lorg/catrobat/catroid/content/Script;->getScriptBrick()Lorg/catrobat/catroid/content/bricks/ScriptBrick;

    move-result-object v2

    invoke-interface {v2}, Lorg/catrobat/catroid/content/bricks/ScriptBrick;->getBrickID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_2

    .line 267
    :cond_0
    const/4 v2, 0x0

    .line 268
    .local v2, "found":Z
    const/4 v3, 0x0

    .line 269
    .local v3, "index":I
    iget-object v4, p0, Lorg/catrobat/catroid/content/Script;->brickList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/catrobat/catroid/content/bricks/Brick;

    .line 270
    .local v5, "brick":Lorg/catrobat/catroid/content/bricks/Brick;
    add-int/lit8 v3, v3, 0x1

    .line 271
    invoke-interface {v5}, Lorg/catrobat/catroid/content/bricks/Brick;->getBrickID()Ljava/util/UUID;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 272
    const/4 v2, 0x1

    .line 273
    goto :goto_1

    .line 275
    .end local v5    # "brick":Lorg/catrobat/catroid/content/bricks/Brick;
    :cond_1
    goto :goto_0

    .line 276
    :cond_2
    :goto_1
    if-eqz v2, :cond_4

    .line 277
    iget-object v0, p0, Lorg/catrobat/catroid/content/Script;->brickList:Ljava/util/List;

    invoke-interface {v0, v3, p3}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    .line 278
    return v1

    .line 263
    .end local v2    # "found":Z
    .end local v3    # "index":I
    :cond_3
    :goto_2
    iget-object v2, p0, Lorg/catrobat/catroid/content/Script;->brickList:Ljava/util/List;

    invoke-interface {v2, v0, p3}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    .line 264
    return v1

    .line 282
    :cond_4
    iget-object v2, p0, Lorg/catrobat/catroid/content/Script;->brickList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/catrobat/catroid/content/bricks/Brick;

    .line 283
    .local v3, "brick":Lorg/catrobat/catroid/content/bricks/Brick;
    invoke-interface {v3, p1, p2, p3}, Lorg/catrobat/catroid/content/bricks/Brick;->addBrickInNestedBrick(Ljava/util/UUID;ILjava/util/List;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 284
    return v1

    .line 286
    .end local v3    # "brick":Lorg/catrobat/catroid/content/bricks/Brick;
    :cond_5
    goto :goto_3

    .line 287
    :cond_6
    return v0
.end method

.method public isCommentedOut()Z
    .locals 1

    .line 102
    iget-boolean v0, p0, Lorg/catrobat/catroid/content/Script;->commentedOut:Z

    return v0
.end method

.method public removeAllOccurrencesOfUserDefinedBrick(Ljava/util/List;Lorg/catrobat/catroid/content/bricks/UserDefinedBrick;)V
    .locals 4
    .param p2, "userDefinedBrick"    # Lorg/catrobat/catroid/content/bricks/UserDefinedBrick;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/catrobat/catroid/content/bricks/Brick;",
            ">;",
            "Lorg/catrobat/catroid/content/bricks/UserDefinedBrick;",
            ")V"
        }
    .end annotation

    .line 170
    .local p1, "brickList":Ljava/util/List;, "Ljava/util/List<Lorg/catrobat/catroid/content/bricks/Brick;>;"
    const/4 v0, 0x0

    .local v0, "brickIndex":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 171
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/catrobat/catroid/content/bricks/Brick;

    .line 172
    .local v1, "currentBrick":Lorg/catrobat/catroid/content/bricks/Brick;
    instance-of v2, v1, Lorg/catrobat/catroid/content/bricks/CompositeBrick;

    if-eqz v2, :cond_0

    .line 173
    move-object v2, v1

    check-cast v2, Lorg/catrobat/catroid/content/bricks/CompositeBrick;

    .line 174
    .local v2, "currentCompositeBrick":Lorg/catrobat/catroid/content/bricks/CompositeBrick;
    invoke-interface {v2}, Lorg/catrobat/catroid/content/bricks/CompositeBrick;->getNestedBricks()Ljava/util/List;

    move-result-object v3

    invoke-virtual {p0, v3, p2}, Lorg/catrobat/catroid/content/Script;->removeAllOccurrencesOfUserDefinedBrick(Ljava/util/List;Lorg/catrobat/catroid/content/bricks/UserDefinedBrick;)V

    .line 175
    invoke-interface {v2}, Lorg/catrobat/catroid/content/bricks/CompositeBrick;->hasSecondaryList()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 176
    invoke-interface {v2}, Lorg/catrobat/catroid/content/bricks/CompositeBrick;->getSecondaryNestedBricks()Ljava/util/List;

    move-result-object v3

    invoke-virtual {p0, v3, p2}, Lorg/catrobat/catroid/content/Script;->removeAllOccurrencesOfUserDefinedBrick(Ljava/util/List;Lorg/catrobat/catroid/content/bricks/UserDefinedBrick;)V

    .line 179
    .end local v2    # "currentCompositeBrick":Lorg/catrobat/catroid/content/bricks/CompositeBrick;
    :cond_0
    instance-of v2, v1, Lorg/catrobat/catroid/content/bricks/UserDefinedBrick;

    if-eqz v2, :cond_1

    invoke-virtual {p2, v1}, Lorg/catrobat/catroid/content/bricks/UserDefinedBrick;->isUserDefinedBrickDataEqual(Lorg/catrobat/catroid/content/bricks/Brick;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 180
    add-int/lit8 v2, v0, -0x1

    .end local v0    # "brickIndex":I
    .local v2, "brickIndex":I
    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move v0, v2

    .line 170
    .end local v1    # "currentBrick":Lorg/catrobat/catroid/content/bricks/Brick;
    .end local v2    # "brickIndex":I
    .restart local v0    # "brickIndex":I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 183
    .end local v0    # "brickIndex":I
    :cond_2
    return-void
.end method

.method public removeBrick(Lorg/catrobat/catroid/content/bricks/Brick;)Z
    .locals 4
    .param p1, "brick"    # Lorg/catrobat/catroid/content/bricks/Brick;

    .line 158
    iget-object v0, p0, Lorg/catrobat/catroid/content/Script;->brickList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 159
    return v1

    .line 161
    :cond_0
    iget-object v0, p0, Lorg/catrobat/catroid/content/Script;->brickList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/catrobat/catroid/content/bricks/Brick;

    .line 162
    .local v2, "brickInList":Lorg/catrobat/catroid/content/bricks/Brick;
    invoke-interface {v2, p1}, Lorg/catrobat/catroid/content/bricks/Brick;->removeChild(Lorg/catrobat/catroid/content/bricks/Brick;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 163
    return v1

    .line 165
    .end local v2    # "brickInList":Lorg/catrobat/catroid/content/bricks/Brick;
    :cond_1
    goto :goto_0

    .line 166
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public removeBricksFromScript(Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/UUID;",
            ">;)",
            "Ljava/util/List<",
            "Lorg/catrobat/catroid/content/bricks/Brick;",
            ">;"
        }
    .end annotation

    .line 248
    .local p1, "brickIds":Ljava/util/List;, "Ljava/util/List<Ljava/util/UUID;>;"
    invoke-virtual {p0, p1}, Lorg/catrobat/catroid/content/Script;->findBricksInScript(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 250
    .local v0, "bricks":Ljava/util/List;, "Ljava/util/List<Lorg/catrobat/catroid/content/bricks/Brick;>;"
    if-eqz v0, :cond_0

    .line 251
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/catrobat/catroid/content/bricks/Brick;

    .line 252
    .local v2, "brick":Lorg/catrobat/catroid/content/bricks/Brick;
    invoke-virtual {p0, v2}, Lorg/catrobat/catroid/content/Script;->removeBrick(Lorg/catrobat/catroid/content/bricks/Brick;)Z

    .line 253
    .end local v2    # "brick":Lorg/catrobat/catroid/content/bricks/Brick;
    goto :goto_0

    .line 256
    :cond_0
    return-object v0
.end method

.method public run(Lorg/catrobat/catroid/content/Sprite;Lorg/catrobat/catroid/content/actions/ScriptSequenceAction;)V
    .locals 3
    .param p1, "sprite"    # Lorg/catrobat/catroid/content/Sprite;
    .param p2, "sequence"    # Lorg/catrobat/catroid/content/actions/ScriptSequenceAction;

    .line 127
    iget-boolean v0, p0, Lorg/catrobat/catroid/content/Script;->commentedOut:Z

    if-eqz v0, :cond_0

    .line 128
    return-void

    .line 131
    :cond_0
    iget-object v0, p0, Lorg/catrobat/catroid/content/Script;->brickList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/catrobat/catroid/content/bricks/Brick;

    .line 132
    .local v1, "brick":Lorg/catrobat/catroid/content/bricks/Brick;
    invoke-interface {v1}, Lorg/catrobat/catroid/content/bricks/Brick;->isCommentedOut()Z

    move-result v2

    if-nez v2, :cond_1

    .line 133
    invoke-interface {v1, p1, p2}, Lorg/catrobat/catroid/content/bricks/Brick;->addActionToSequence(Lorg/catrobat/catroid/content/Sprite;Lorg/catrobat/catroid/content/actions/ScriptSequenceAction;)V

    .line 135
    .end local v1    # "brick":Lorg/catrobat/catroid/content/bricks/Brick;
    :cond_1
    goto :goto_0

    .line 136
    :cond_2
    return-void
.end method

.method public setCommentedOut(Z)V
    .locals 2
    .param p1, "commentedOut"    # Z

    .line 106
    iput-boolean p1, p0, Lorg/catrobat/catroid/content/Script;->commentedOut:Z

    .line 107
    iget-object v0, p0, Lorg/catrobat/catroid/content/Script;->brickList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/catrobat/catroid/content/bricks/Brick;

    .line 108
    .local v1, "brick":Lorg/catrobat/catroid/content/bricks/Brick;
    invoke-interface {v1, p1}, Lorg/catrobat/catroid/content/bricks/Brick;->setCommentedOut(Z)V

    .line 109
    .end local v1    # "brick":Lorg/catrobat/catroid/content/bricks/Brick;
    goto :goto_0

    .line 110
    :cond_0
    return-void
.end method

.method public setParents()V
    .locals 3

    .line 113
    invoke-virtual {p0}, Lorg/catrobat/catroid/content/Script;->getScriptBrick()Lorg/catrobat/catroid/content/bricks/ScriptBrick;

    move-result-object v0

    .line 114
    .local v0, "scriptBrick":Lorg/catrobat/catroid/content/bricks/ScriptBrick;
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/catrobat/catroid/content/bricks/ScriptBrick;->setParent(Lorg/catrobat/catroid/content/bricks/Brick;)V

    .line 115
    invoke-virtual {p0}, Lorg/catrobat/catroid/content/Script;->getBrickList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/catrobat/catroid/content/bricks/Brick;

    .line 116
    .local v2, "brick":Lorg/catrobat/catroid/content/bricks/Brick;
    invoke-interface {v2, v0}, Lorg/catrobat/catroid/content/bricks/Brick;->setParent(Lorg/catrobat/catroid/content/bricks/Brick;)V

    .line 117
    .end local v2    # "brick":Lorg/catrobat/catroid/content/bricks/Brick;
    goto :goto_0

    .line 118
    :cond_0
    return-void
.end method

.method public setPosX(F)V
    .locals 0
    .param p1, "posX"    # F

    .line 86
    iput p1, p0, Lorg/catrobat/catroid/content/Script;->posX:F

    .line 87
    return-void
.end method

.method public setPosY(F)V
    .locals 0
    .param p1, "posY"    # F

    .line 94
    iput p1, p0, Lorg/catrobat/catroid/content/Script;->posY:F

    .line 95
    return-void
.end method

.method public setScriptBrick(Lorg/catrobat/catroid/content/bricks/ScriptBrick;)V
    .locals 0
    .param p1, "scriptBrick"    # Lorg/catrobat/catroid/content/bricks/ScriptBrick;

    .line 123
    iput-object p1, p0, Lorg/catrobat/catroid/content/Script;->scriptBrick:Lorg/catrobat/catroid/content/bricks/ScriptBrick;

    .line 124
    return-void
.end method

.method public updateUserDataReferences(Ljava/lang/String;Ljava/lang/String;Lorg/catrobat/catroid/formulaeditor/UserData;)V
    .locals 5
    .param p1, "oldName"    # Ljava/lang/String;
    .param p2, "newName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lorg/catrobat/catroid/formulaeditor/UserData<",
            "*>;)V"
        }
    .end annotation

    .line 194
    .local p3, "item":Lorg/catrobat/catroid/formulaeditor/UserData;, "Lorg/catrobat/catroid/formulaeditor/UserData<*>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 195
    .local v0, "flatList":Ljava/util/List;, "Ljava/util/List<Lorg/catrobat/catroid/content/bricks/Brick;>;"
    invoke-virtual {p0, v0}, Lorg/catrobat/catroid/content/Script;->addToFlatList(Ljava/util/List;)V

    .line 196
    const/4 v1, 0x0

    .line 198
    .local v1, "containedInListSelector":Z
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/catrobat/catroid/content/bricks/Brick;

    .line 199
    .local v3, "brick":Lorg/catrobat/catroid/content/bricks/Brick;
    instance-of v4, v3, Lorg/catrobat/catroid/content/bricks/ListSelectorBrick;

    if-eqz v4, :cond_0

    .line 200
    const/4 v1, 0x1

    .line 201
    goto :goto_1

    .line 203
    .end local v3    # "brick":Lorg/catrobat/catroid/content/bricks/Brick;
    :cond_0
    goto :goto_0

    .line 205
    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/catrobat/catroid/content/bricks/Brick;

    .line 206
    .restart local v3    # "brick":Lorg/catrobat/catroid/content/bricks/Brick;
    instance-of v4, v3, Lorg/catrobat/catroid/content/bricks/FormulaBrick;

    if-eqz v4, :cond_2

    .line 207
    move-object v4, v3

    check-cast v4, Lorg/catrobat/catroid/content/bricks/FormulaBrick;

    invoke-virtual {v4, p1, p2, p3, v1}, Lorg/catrobat/catroid/content/bricks/FormulaBrick;->updateUserDataReference(Ljava/lang/String;Ljava/lang/String;Lorg/catrobat/catroid/formulaeditor/UserData;Z)V

    .line 210
    .end local v3    # "brick":Lorg/catrobat/catroid/content/bricks/Brick;
    :cond_2
    goto :goto_2

    .line 211
    :cond_3
    return-void
.end method
