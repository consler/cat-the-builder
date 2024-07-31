.class public abstract Lorg/catrobat/catroid/content/bricks/BrickBaseType;
.super Ljava/lang/Object;
.source "BrickBaseType.java"

# interfaces
.implements Lorg/catrobat/catroid/content/bricks/Brick;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field protected brickId:Ljava/util/UUID;

.field private transient checkbox:Landroid/widget/CheckBox;

.field protected commentedOut:Z

.field protected transient parent:Lorg/catrobat/catroid/content/bricks/Brick;

.field public transient view:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    iput-object v0, p0, Lorg/catrobat/catroid/content/bricks/BrickBaseType;->brickId:Ljava/util/UUID;

    return-void
.end method

.method private disableSpinners(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .line 113
    instance-of v0, p1, Landroid/widget/Spinner;

    if-eqz v0, :cond_0

    .line 114
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 115
    invoke-virtual {p1, v0}, Landroid/view/View;->setClickable(Z)V

    .line 116
    invoke-virtual {p1, v0}, Landroid/view/View;->setFocusable(Z)V

    .line 118
    :cond_0
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 119
    move-object v0, p1

    check-cast v0, Landroid/view/ViewGroup;

    .line 120
    .local v0, "parent":Landroid/view/ViewGroup;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 121
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/catrobat/catroid/content/bricks/BrickBaseType;->disableSpinners(Landroid/view/View;)V

    .line 120
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 124
    .end local v0    # "parent":Landroid/view/ViewGroup;
    .end local v1    # "i":I
    :cond_1
    return-void
.end method


# virtual methods
.method public addBrickInNestedBrick(Ljava/util/UUID;ILjava/util/List;)Z
    .locals 8
    .param p1, "parentBrickId"    # Ljava/util/UUID;
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

    .line 260
    .local p3, "bricksToAdd":Ljava/util/List;, "Ljava/util/List<Lorg/catrobat/catroid/content/bricks/Brick;>;"
    instance-of v0, p0, Lorg/catrobat/catroid/content/bricks/CompositeBrick;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 261
    return v1

    .line 264
    :cond_0
    move-object v0, p0

    check-cast v0, Lorg/catrobat/catroid/content/bricks/CompositeBrick;

    .line 266
    .local v0, "compositeBrick":Lorg/catrobat/catroid/content/bricks/CompositeBrick;
    invoke-virtual {p0}, Lorg/catrobat/catroid/content/bricks/BrickBaseType;->getBrickID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    .line 267
    if-nez p2, :cond_1

    .line 268
    invoke-interface {v0}, Lorg/catrobat/catroid/content/bricks/CompositeBrick;->getNestedBricks()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1, p3}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    .line 269
    return v3

    .line 270
    :cond_1
    if-ne p2, v3, :cond_2

    invoke-interface {v0}, Lorg/catrobat/catroid/content/bricks/CompositeBrick;->hasSecondaryList()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 271
    invoke-interface {v0}, Lorg/catrobat/catroid/content/bricks/CompositeBrick;->getSecondaryNestedBricks()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1, p3}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    .line 272
    return v3

    .line 276
    :cond_2
    const/4 v2, 0x0

    .line 278
    .local v2, "index":I
    invoke-interface {v0}, Lorg/catrobat/catroid/content/bricks/CompositeBrick;->getNestedBricks()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v6, -0x1

    if-eqz v5, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/catrobat/catroid/content/bricks/Brick;

    .line 279
    .local v5, "brick":Lorg/catrobat/catroid/content/bricks/Brick;
    add-int/lit8 v2, v2, 0x1

    .line 280
    if-ne p2, v6, :cond_3

    .line 281
    invoke-interface {v5}, Lorg/catrobat/catroid/content/bricks/Brick;->getBrickID()Ljava/util/UUID;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 282
    invoke-interface {v0}, Lorg/catrobat/catroid/content/bricks/CompositeBrick;->getNestedBricks()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v2, p3}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    goto :goto_1

    .line 283
    :cond_3
    instance-of v6, v5, Lorg/catrobat/catroid/content/bricks/CompositeBrick;

    if-eqz v6, :cond_4

    .line 284
    invoke-interface {v5, p1, p2, p3}, Lorg/catrobat/catroid/content/bricks/Brick;->addBrickInNestedBrick(Ljava/util/UUID;ILjava/util/List;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 285
    return v3

    .line 287
    .end local v5    # "brick":Lorg/catrobat/catroid/content/bricks/Brick;
    :cond_4
    :goto_1
    goto :goto_0

    .line 289
    :cond_5
    invoke-interface {v0}, Lorg/catrobat/catroid/content/bricks/CompositeBrick;->hasSecondaryList()Z

    move-result v4

    if-nez v4, :cond_6

    .line 290
    return v1

    .line 293
    :cond_6
    const/4 v2, 0x0

    .line 294
    invoke-interface {v0}, Lorg/catrobat/catroid/content/bricks/CompositeBrick;->getSecondaryNestedBricks()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/catrobat/catroid/content/bricks/Brick;

    .line 295
    .restart local v5    # "brick":Lorg/catrobat/catroid/content/bricks/Brick;
    add-int/lit8 v2, v2, 0x1

    .line 296
    if-ne p2, v6, :cond_7

    .line 297
    invoke-interface {v5}, Lorg/catrobat/catroid/content/bricks/Brick;->getBrickID()Ljava/util/UUID;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 298
    invoke-interface {v0}, Lorg/catrobat/catroid/content/bricks/CompositeBrick;->getSecondaryNestedBricks()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v2, p3}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    .line 299
    return v3

    .line 300
    :cond_7
    instance-of v7, v5, Lorg/catrobat/catroid/content/bricks/CompositeBrick;

    if-eqz v7, :cond_8

    .line 301
    invoke-interface {v5, p1, p2, p3}, Lorg/catrobat/catroid/content/bricks/Brick;->addBrickInNestedBrick(Ljava/util/UUID;ILjava/util/List;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 302
    return v3

    .line 304
    .end local v5    # "brick":Lorg/catrobat/catroid/content/bricks/Brick;
    :cond_8
    goto :goto_2

    .line 305
    :cond_9
    return v1
.end method

.method public addRequiredResources(Lorg/catrobat/catroid/content/bricks/Brick$ResourcesSet;)V
    .locals 0
    .param p1, "requiredResourcesSet"    # Lorg/catrobat/catroid/content/bricks/Brick$ResourcesSet;

    .line 88
    return-void
.end method

.method public addToFlatList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/catrobat/catroid/content/bricks/Brick;",
            ">;)V"
        }
    .end annotation

    .line 138
    .local p1, "bricks":Ljava/util/List;, "Ljava/util/List<Lorg/catrobat/catroid/content/bricks/Brick;>;"
    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 139
    return-void
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 46
    invoke-virtual {p0}, Lorg/catrobat/catroid/content/bricks/BrickBaseType;->clone()Lorg/catrobat/catroid/content/bricks/Brick;

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

    .line 77
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/content/bricks/BrickBaseType;

    .line 78
    .local v0, "clone":Lorg/catrobat/catroid/content/bricks/BrickBaseType;
    const/4 v1, 0x0

    iput-object v1, v0, Lorg/catrobat/catroid/content/bricks/BrickBaseType;->view:Landroid/view/View;

    .line 79
    iput-object v1, v0, Lorg/catrobat/catroid/content/bricks/BrickBaseType;->checkbox:Landroid/widget/CheckBox;

    .line 80
    iput-object v1, v0, Lorg/catrobat/catroid/content/bricks/BrickBaseType;->parent:Lorg/catrobat/catroid/content/bricks/Brick;

    .line 81
    iget-boolean v1, p0, Lorg/catrobat/catroid/content/bricks/BrickBaseType;->commentedOut:Z

    iput-boolean v1, v0, Lorg/catrobat/catroid/content/bricks/BrickBaseType;->commentedOut:Z

    .line 82
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    iput-object v1, v0, Lorg/catrobat/catroid/content/bricks/BrickBaseType;->brickId:Ljava/util/UUID;

    .line 83
    return-object v0
.end method

.method public consistsOfMultipleParts()Z
    .locals 1

    .line 128
    const/4 v0, 0x0

    return v0
.end method

.method public disableSpinners()V
    .locals 1

    .line 109
    iget-object v0, p0, Lorg/catrobat/catroid/content/bricks/BrickBaseType;->view:Landroid/view/View;

    invoke-direct {p0, v0}, Lorg/catrobat/catroid/content/bricks/BrickBaseType;->disableSpinners(Landroid/view/View;)V

    .line 110
    return-void
.end method

.method public findBricksInNestedBricks(Ljava/util/List;)Ljava/util/List;
    .locals 7
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

    .line 213
    .local p1, "brickIds":Ljava/util/List;, "Ljava/util/List<Ljava/util/UUID;>;"
    instance-of v0, p0, Lorg/catrobat/catroid/content/bricks/CompositeBrick;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 214
    return-object v1

    .line 217
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 218
    .local v0, "foundBricks":Ljava/util/List;, "Ljava/util/List<Lorg/catrobat/catroid/content/bricks/Brick;>;"
    move-object v2, p0

    check-cast v2, Lorg/catrobat/catroid/content/bricks/CompositeBrick;

    .line 220
    .local v2, "compositeBrick":Lorg/catrobat/catroid/content/bricks/CompositeBrick;
    invoke-interface {v2}, Lorg/catrobat/catroid/content/bricks/CompositeBrick;->getNestedBricks()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/catrobat/catroid/content/bricks/Brick;

    .line 221
    .local v4, "brick":Lorg/catrobat/catroid/content/bricks/Brick;
    invoke-interface {v4}, Lorg/catrobat/catroid/content/bricks/Brick;->getBrickID()Ljava/util/UUID;

    move-result-object v5

    invoke-interface {p1, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 222
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 223
    :cond_1
    instance-of v5, v4, Lorg/catrobat/catroid/content/bricks/CompositeBrick;

    if-eqz v5, :cond_2

    .line 224
    invoke-interface {v4, p1}, Lorg/catrobat/catroid/content/bricks/Brick;->findBricksInNestedBricks(Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    .line 225
    .local v5, "tmpBricks":Ljava/util/List;, "Ljava/util/List<Lorg/catrobat/catroid/content/bricks/Brick;>;"
    if-eqz v5, :cond_2

    .line 226
    return-object v5

    .line 230
    .end local v5    # "tmpBricks":Ljava/util/List;, "Ljava/util/List<Lorg/catrobat/catroid/content/bricks/Brick;>;"
    :cond_2
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    if-ne v5, v6, :cond_3

    .line 231
    goto :goto_2

    .line 233
    .end local v4    # "brick":Lorg/catrobat/catroid/content/bricks/Brick;
    :cond_3
    goto :goto_0

    .line 235
    :cond_4
    :goto_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_8

    invoke-interface {v2}, Lorg/catrobat/catroid/content/bricks/CompositeBrick;->hasSecondaryList()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 236
    invoke-interface {v2}, Lorg/catrobat/catroid/content/bricks/CompositeBrick;->getSecondaryNestedBricks()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/catrobat/catroid/content/bricks/Brick;

    .line 237
    .restart local v4    # "brick":Lorg/catrobat/catroid/content/bricks/Brick;
    invoke-interface {v4}, Lorg/catrobat/catroid/content/bricks/Brick;->getBrickID()Ljava/util/UUID;

    move-result-object v5

    invoke-interface {p1, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 238
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 239
    :cond_5
    instance-of v5, v4, Lorg/catrobat/catroid/content/bricks/CompositeBrick;

    if-eqz v5, :cond_6

    .line 240
    invoke-interface {v4, p1}, Lorg/catrobat/catroid/content/bricks/Brick;->findBricksInNestedBricks(Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    .line 241
    .restart local v5    # "tmpBricks":Ljava/util/List;, "Ljava/util/List<Lorg/catrobat/catroid/content/bricks/Brick;>;"
    if-eqz v5, :cond_6

    .line 242
    return-object v5

    .line 246
    .end local v5    # "tmpBricks":Ljava/util/List;, "Ljava/util/List<Lorg/catrobat/catroid/content/bricks/Brick;>;"
    :cond_6
    :goto_4
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    if-ne v5, v6, :cond_7

    .line 247
    goto :goto_5

    .line 249
    .end local v4    # "brick":Lorg/catrobat/catroid/content/bricks/Brick;
    :cond_7
    goto :goto_3

    .line 252
    :cond_8
    :goto_5
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_9

    .line 253
    return-object v0

    .line 255
    :cond_9
    return-object v1
.end method

.method public getAllParts()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/catrobat/catroid/content/bricks/Brick;",
            ">;"
        }
    .end annotation

    .line 133
    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getBrickID()Ljava/util/UUID;
    .locals 1

    .line 208
    iget-object v0, p0, Lorg/catrobat/catroid/content/bricks/BrickBaseType;->brickId:Ljava/util/UUID;

    return-object v0
.end method

.method public getCheckBox()Landroid/widget/CheckBox;
    .locals 1

    .line 72
    iget-object v0, p0, Lorg/catrobat/catroid/content/bricks/BrickBaseType;->checkbox:Landroid/widget/CheckBox;

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

    .line 166
    invoke-virtual {p0}, Lorg/catrobat/catroid/content/bricks/BrickBaseType;->getParent()Lorg/catrobat/catroid/content/bricks/Brick;

    move-result-object v0

    invoke-interface {v0}, Lorg/catrobat/catroid/content/bricks/Brick;->getDragAndDropTargetList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getHelpUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "category"    # Ljava/lang/String;

    .line 192
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://wiki.catrobat.org/bin/view/Documentation/BrickDocumentation/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getParent()Lorg/catrobat/catroid/content/bricks/Brick;
    .locals 1

    .line 156
    iget-object v0, p0, Lorg/catrobat/catroid/content/bricks/BrickBaseType;->parent:Lorg/catrobat/catroid/content/bricks/Brick;

    return-object v0
.end method

.method public getPositionInDragAndDropTargetList()I
    .locals 1

    .line 171
    invoke-virtual {p0}, Lorg/catrobat/catroid/content/bricks/BrickBaseType;->getDragAndDropTargetList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public getPositionInScript()I
    .locals 1

    .line 148
    invoke-virtual {p0}, Lorg/catrobat/catroid/content/bricks/BrickBaseType;->getParent()Lorg/catrobat/catroid/content/bricks/Brick;

    move-result-object v0

    instance-of v0, v0, Lorg/catrobat/catroid/content/bricks/ScriptBrick;

    if-eqz v0, :cond_0

    .line 149
    invoke-virtual {p0}, Lorg/catrobat/catroid/content/bricks/BrickBaseType;->getScript()Lorg/catrobat/catroid/content/Script;

    move-result-object v0

    invoke-virtual {v0}, Lorg/catrobat/catroid/content/Script;->getBrickList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0

    .line 151
    :cond_0
    invoke-virtual {p0}, Lorg/catrobat/catroid/content/bricks/BrickBaseType;->getParent()Lorg/catrobat/catroid/content/bricks/Brick;

    move-result-object v0

    invoke-interface {v0}, Lorg/catrobat/catroid/content/bricks/Brick;->getPositionInScript()I

    move-result v0

    return v0
.end method

.method protected getPositionInformation()Ljava/lang/String;
    .locals 4

    .line 196
    const/4 v0, -0x1

    .line 197
    .local v0, "position":I
    const-string v1, "unknown"

    .line 198
    .local v1, "scriptName":Ljava/lang/String;
    invoke-virtual {p0}, Lorg/catrobat/catroid/content/bricks/BrickBaseType;->getParent()Lorg/catrobat/catroid/content/bricks/Brick;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 199
    invoke-virtual {p0}, Lorg/catrobat/catroid/content/bricks/BrickBaseType;->getPositionInScript()I

    move-result v0

    .line 200
    invoke-virtual {p0}, Lorg/catrobat/catroid/content/bricks/BrickBaseType;->getScript()Lorg/catrobat/catroid/content/Script;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    .line 202
    :cond_0
    add-int/lit8 v0, v0, 0x2

    .line 203
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Brick at position "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "\nin \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public getPrototypeView(Landroid/content/Context;)Landroid/view/View;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 103
    invoke-virtual {p0, p1}, Lorg/catrobat/catroid/content/bricks/BrickBaseType;->getView(Landroid/content/Context;)Landroid/view/View;

    move-result-object v0

    .line 104
    .local v0, "view":Landroid/view/View;
    invoke-direct {p0, v0}, Lorg/catrobat/catroid/content/bricks/BrickBaseType;->disableSpinners(Landroid/view/View;)V

    .line 105
    return-object v0
.end method

.method public getScript()Lorg/catrobat/catroid/content/Script;
    .locals 1

    .line 143
    invoke-virtual {p0}, Lorg/catrobat/catroid/content/bricks/BrickBaseType;->getParent()Lorg/catrobat/catroid/content/bricks/Brick;

    move-result-object v0

    invoke-interface {v0}, Lorg/catrobat/catroid/content/bricks/Brick;->getScript()Lorg/catrobat/catroid/content/Script;

    move-result-object v0

    return-object v0
.end method

.method public getView(Landroid/content/Context;)Landroid/view/View;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .line 96
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {p0}, Lorg/catrobat/catroid/content/bricks/BrickBaseType;->getViewResource()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lorg/catrobat/catroid/content/bricks/BrickBaseType;->view:Landroid/view/View;

    .line 97
    const v1, 0x7f0a00a9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lorg/catrobat/catroid/content/bricks/BrickBaseType;->checkbox:Landroid/widget/CheckBox;

    .line 98
    iget-object v0, p0, Lorg/catrobat/catroid/content/bricks/BrickBaseType;->view:Landroid/view/View;

    return-object v0
.end method

.method public abstract getViewResource()I
.end method

.method public hasHelpPage()Z
    .locals 1

    .line 180
    const/4 v0, 0x1

    return v0
.end method

.method public isCommentedOut()Z
    .locals 1

    .line 61
    iget-boolean v0, p0, Lorg/catrobat/catroid/content/bricks/BrickBaseType;->commentedOut:Z

    return v0
.end method

.method notifyDataSetChanged(Landroidx/appcompat/app/AppCompatActivity;)V
    .locals 2
    .param p1, "activity"    # Landroidx/appcompat/app/AppCompatActivity;

    .line 184
    nop

    .line 185
    invoke-virtual {p1}, Landroidx/appcompat/app/AppCompatActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    sget-object v1, Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment;

    .line 186
    .local v0, "parentFragment":Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment;
    if-eqz v0, :cond_0

    .line 187
    invoke-virtual {v0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment;->notifyDataSetChanged()V

    .line 189
    :cond_0
    return-void
.end method

.method public removeChild(Lorg/catrobat/catroid/content/bricks/Brick;)Z
    .locals 1
    .param p1, "brick"    # Lorg/catrobat/catroid/content/bricks/Brick;

    .line 176
    const/4 v0, 0x0

    return v0
.end method

.method public setCommentedOut(Z)V
    .locals 0
    .param p1, "commentedOut"    # Z

    .line 66
    iput-boolean p1, p0, Lorg/catrobat/catroid/content/bricks/BrickBaseType;->commentedOut:Z

    .line 67
    return-void
.end method

.method public setParent(Lorg/catrobat/catroid/content/bricks/Brick;)V
    .locals 0
    .param p1, "parent"    # Lorg/catrobat/catroid/content/bricks/Brick;

    .line 161
    iput-object p1, p0, Lorg/catrobat/catroid/content/bricks/BrickBaseType;->parent:Lorg/catrobat/catroid/content/bricks/Brick;

    .line 162
    return-void
.end method
