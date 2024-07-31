.class public abstract Lorg/apache/commons/collections/DefaultMapBag;
.super Ljava/lang/Object;
.source "DefaultMapBag.java"

# interfaces
.implements Lorg/apache/commons/collections/Bag;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/collections/DefaultMapBag$BagIterator;
    }
.end annotation


# instance fields
.field private _map:Ljava/util/Map;

.field private _mods:I

.field private _total:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/collections/DefaultMapBag;->_map:Ljava/util/Map;

    .line 50
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/collections/DefaultMapBag;->_total:I

    .line 51
    iput v0, p0, Lorg/apache/commons/collections/DefaultMapBag;->_mods:I

    .line 59
    return-void
.end method

.method protected constructor <init>(Ljava/util/Map;)V
    .locals 1
    .param p1, "map"    # Ljava/util/Map;

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/collections/DefaultMapBag;->_map:Ljava/util/Map;

    .line 50
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/collections/DefaultMapBag;->_total:I

    .line 51
    iput v0, p0, Lorg/apache/commons/collections/DefaultMapBag;->_mods:I

    .line 68
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/DefaultMapBag;->setMap(Ljava/util/Map;)V

    .line 69
    return-void
.end method

.method static synthetic access$000(Lorg/apache/commons/collections/DefaultMapBag;)I
    .locals 1
    .param p0, "x0"    # Lorg/apache/commons/collections/DefaultMapBag;

    .line 48
    invoke-direct {p0}, Lorg/apache/commons/collections/DefaultMapBag;->modCount()I

    move-result v0

    return v0
.end method

.method private extractList()Ljava/util/List;
    .locals 4

    .line 412
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 413
    .local v0, "result":Ljava/util/List;
    invoke-virtual {p0}, Lorg/apache/commons/collections/DefaultMapBag;->uniqueSet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 414
    .local v1, "i":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 415
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 416
    .local v2, "current":Ljava/lang/Object;
    invoke-virtual {p0, v2}, Lorg/apache/commons/collections/DefaultMapBag;->getCount(Ljava/lang/Object;)I

    move-result v3

    .local v3, "index":I
    :goto_1
    if-lez v3, :cond_0

    .line 417
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 416
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 419
    .end local v2    # "current":Ljava/lang/Object;
    .end local v3    # "index":I
    :cond_0
    goto :goto_0

    .line 420
    :cond_1
    return-object v0
.end method

.method private modCount()I
    .locals 1

    .line 429
    iget v0, p0, Lorg/apache/commons/collections/DefaultMapBag;->_mods:I

    return v0
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;

    .line 79
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/collections/DefaultMapBag;->add(Ljava/lang/Object;I)Z

    move-result v0

    return v0
.end method

.method public add(Ljava/lang/Object;I)Z
    .locals 5
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "nCopies"    # I

    .line 90
    iget v0, p0, Lorg/apache/commons/collections/DefaultMapBag;->_mods:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/apache/commons/collections/DefaultMapBag;->_mods:I

    .line 91
    const/4 v0, 0x0

    if-lez p2, :cond_1

    .line 92
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/DefaultMapBag;->getCount(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v2, p2

    .line 93
    .local v2, "count":I
    iget-object v3, p0, Lorg/apache/commons/collections/DefaultMapBag;->_map:Ljava/util/Map;

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v3, p1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    iget v3, p0, Lorg/apache/commons/collections/DefaultMapBag;->_total:I

    add-int/2addr v3, p2

    iput v3, p0, Lorg/apache/commons/collections/DefaultMapBag;->_total:I

    .line 95
    if-ne v2, p2, :cond_0

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    return v1

    .line 97
    .end local v2    # "count":I
    :cond_1
    return v0
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 4
    .param p1, "coll"    # Ljava/util/Collection;

    .line 108
    const/4 v0, 0x0

    .line 109
    .local v0, "changed":Z
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 110
    .local v1, "i":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 111
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/apache/commons/collections/DefaultMapBag;->add(Ljava/lang/Object;)Z

    move-result v2

    .line 112
    .local v2, "added":Z
    if-nez v0, :cond_1

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    goto :goto_2

    :cond_1
    :goto_1
    const/4 v3, 0x1

    :goto_2
    move v0, v3

    .line 113
    .end local v2    # "added":Z
    goto :goto_0

    .line 114
    :cond_2
    return v0
.end method

.method protected calcTotalSize()I
    .locals 1

    .line 383
    invoke-direct {p0}, Lorg/apache/commons/collections/DefaultMapBag;->extractList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lorg/apache/commons/collections/DefaultMapBag;->_total:I

    .line 384
    return v0
.end method

.method public clear()V
    .locals 1

    .line 121
    iget v0, p0, Lorg/apache/commons/collections/DefaultMapBag;->_mods:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/commons/collections/DefaultMapBag;->_mods:I

    .line 122
    iget-object v0, p0, Lorg/apache/commons/collections/DefaultMapBag;->_map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 123
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/collections/DefaultMapBag;->_total:I

    .line 124
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;

    .line 134
    iget-object v0, p0, Lorg/apache/commons/collections/DefaultMapBag;->_map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 1
    .param p1, "coll"    # Ljava/util/Collection;

    .line 144
    new-instance v0, Lorg/apache/commons/collections/HashBag;

    invoke-direct {v0, p1}, Lorg/apache/commons/collections/HashBag;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p0, v0}, Lorg/apache/commons/collections/DefaultMapBag;->containsAll(Lorg/apache/commons/collections/Bag;)Z

    move-result v0

    return v0
.end method

.method public containsAll(Lorg/apache/commons/collections/Bag;)Z
    .locals 7
    .param p1, "other"    # Lorg/apache/commons/collections/Bag;

    .line 155
    const/4 v0, 0x1

    .line 156
    .local v0, "result":Z
    invoke-interface {p1}, Lorg/apache/commons/collections/Bag;->uniqueSet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 157
    .local v1, "i":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 158
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 159
    .local v2, "current":Ljava/lang/Object;
    invoke-virtual {p0, v2}, Lorg/apache/commons/collections/DefaultMapBag;->getCount(Ljava/lang/Object;)I

    move-result v3

    invoke-interface {p1, v2}, Lorg/apache/commons/collections/Bag;->getCount(Ljava/lang/Object;)I

    move-result v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-lt v3, v4, :cond_0

    move v3, v5

    goto :goto_1

    :cond_0
    move v3, v6

    .line 160
    .local v3, "contains":Z
    :goto_1
    if-eqz v0, :cond_1

    if-eqz v3, :cond_1

    goto :goto_2

    :cond_1
    move v5, v6

    :goto_2
    move v0, v5

    .line 161
    .end local v2    # "current":Ljava/lang/Object;
    .end local v3    # "contains":Z
    goto :goto_0

    .line 162
    :cond_2
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "object"    # Ljava/lang/Object;

    .line 174
    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    .line 175
    return v0

    .line 177
    :cond_0
    instance-of v1, p1, Lorg/apache/commons/collections/Bag;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 178
    return v2

    .line 180
    :cond_1
    move-object v1, p1

    check-cast v1, Lorg/apache/commons/collections/Bag;

    .line 181
    .local v1, "other":Lorg/apache/commons/collections/Bag;
    invoke-interface {v1}, Lorg/apache/commons/collections/Bag;->size()I

    move-result v3

    invoke-virtual {p0}, Lorg/apache/commons/collections/DefaultMapBag;->size()I

    move-result v4

    if-eq v3, v4, :cond_2

    .line 182
    return v2

    .line 184
    :cond_2
    iget-object v3, p0, Lorg/apache/commons/collections/DefaultMapBag;->_map:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "it":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 185
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 186
    .local v4, "element":Ljava/lang/Object;
    invoke-interface {v1, v4}, Lorg/apache/commons/collections/Bag;->getCount(Ljava/lang/Object;)I

    move-result v5

    invoke-virtual {p0, v4}, Lorg/apache/commons/collections/DefaultMapBag;->getCount(Ljava/lang/Object;)I

    move-result v6

    if-eq v5, v6, :cond_3

    .line 187
    return v2

    .line 189
    .end local v4    # "element":Ljava/lang/Object;
    :cond_3
    goto :goto_0

    .line 190
    .end local v3    # "it":Ljava/util/Iterator;
    :cond_4
    return v0
.end method

.method public getCount(Ljava/lang/Object;)I
    .locals 2
    .param p1, "object"    # Ljava/lang/Object;

    .line 350
    const/4 v0, 0x0

    .line 351
    .local v0, "result":I
    iget-object v1, p0, Lorg/apache/commons/collections/DefaultMapBag;->_map:Ljava/util/Map;

    invoke-static {v1, p1}, Lorg/apache/commons/collections/MapUtils;->getInteger(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v1

    .line 352
    .local v1, "count":Ljava/lang/Integer;
    if-eqz v1, :cond_0

    .line 353
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 355
    :cond_0
    return v0
.end method

.method protected getMap()Ljava/util/Map;
    .locals 1

    .line 405
    iget-object v0, p0, Lorg/apache/commons/collections/DefaultMapBag;->_map:Ljava/util/Map;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 199
    iget-object v0, p0, Lorg/apache/commons/collections/DefaultMapBag;->_map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->hashCode()I

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 208
    iget-object v0, p0, Lorg/apache/commons/collections/DefaultMapBag;->_map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2

    .line 212
    new-instance v0, Lorg/apache/commons/collections/DefaultMapBag$BagIterator;

    invoke-direct {p0}, Lorg/apache/commons/collections/DefaultMapBag;->extractList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/apache/commons/collections/DefaultMapBag$BagIterator;-><init>(Lorg/apache/commons/collections/DefaultMapBag;Ljava/util/Iterator;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;

    .line 251
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/DefaultMapBag;->getCount(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/collections/DefaultMapBag;->remove(Ljava/lang/Object;I)Z

    move-result v0

    return v0
.end method

.method public remove(Ljava/lang/Object;I)Z
    .locals 5
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "nCopies"    # I

    .line 255
    iget v0, p0, Lorg/apache/commons/collections/DefaultMapBag;->_mods:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/apache/commons/collections/DefaultMapBag;->_mods:I

    .line 256
    const/4 v0, 0x0

    .line 257
    .local v0, "result":Z
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/DefaultMapBag;->getCount(Ljava/lang/Object;)I

    move-result v2

    .line 258
    .local v2, "count":I
    if-gtz p2, :cond_0

    .line 259
    const/4 v0, 0x0

    goto :goto_1

    .line 260
    :cond_0
    if-le v2, p2, :cond_1

    .line 261
    iget-object v1, p0, Lorg/apache/commons/collections/DefaultMapBag;->_map:Ljava/util/Map;

    new-instance v3, Ljava/lang/Integer;

    sub-int v4, v2, p2

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v1, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    const/4 v0, 0x1

    .line 263
    iget v1, p0, Lorg/apache/commons/collections/DefaultMapBag;->_total:I

    sub-int/2addr v1, p2

    iput v1, p0, Lorg/apache/commons/collections/DefaultMapBag;->_total:I

    goto :goto_1

    .line 266
    :cond_1
    iget-object v3, p0, Lorg/apache/commons/collections/DefaultMapBag;->_map:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    move v0, v1

    .line 267
    iget v1, p0, Lorg/apache/commons/collections/DefaultMapBag;->_total:I

    sub-int/2addr v1, v2

    iput v1, p0, Lorg/apache/commons/collections/DefaultMapBag;->_total:I

    .line 269
    :goto_1
    return v0
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 4
    .param p1, "coll"    # Ljava/util/Collection;

    .line 273
    const/4 v0, 0x0

    .line 274
    .local v0, "result":Z
    if-eqz p1, :cond_2

    .line 275
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 276
    .local v1, "i":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 277
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3}, Lorg/apache/commons/collections/DefaultMapBag;->remove(Ljava/lang/Object;I)Z

    move-result v2

    .line 278
    .local v2, "changed":Z
    if-nez v0, :cond_1

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    :cond_1
    :goto_1
    move v0, v3

    .line 279
    .end local v2    # "changed":Z
    goto :goto_0

    .line 281
    .end local v1    # "i":Ljava/util/Iterator;
    :cond_2
    return v0
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 1
    .param p1, "coll"    # Ljava/util/Collection;

    .line 292
    new-instance v0, Lorg/apache/commons/collections/HashBag;

    invoke-direct {v0, p1}, Lorg/apache/commons/collections/HashBag;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p0, v0}, Lorg/apache/commons/collections/DefaultMapBag;->retainAll(Lorg/apache/commons/collections/Bag;)Z

    move-result v0

    return v0
.end method

.method public retainAll(Lorg/apache/commons/collections/Bag;)Z
    .locals 7
    .param p1, "other"    # Lorg/apache/commons/collections/Bag;

    .line 304
    const/4 v0, 0x0

    .line 305
    .local v0, "result":Z
    new-instance v1, Lorg/apache/commons/collections/HashBag;

    invoke-direct {v1}, Lorg/apache/commons/collections/HashBag;-><init>()V

    .line 306
    .local v1, "excess":Lorg/apache/commons/collections/Bag;
    invoke-virtual {p0}, Lorg/apache/commons/collections/DefaultMapBag;->uniqueSet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 307
    .local v2, "i":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 308
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 309
    .local v3, "current":Ljava/lang/Object;
    invoke-virtual {p0, v3}, Lorg/apache/commons/collections/DefaultMapBag;->getCount(Ljava/lang/Object;)I

    move-result v4

    .line 310
    .local v4, "myCount":I
    invoke-interface {p1, v3}, Lorg/apache/commons/collections/Bag;->getCount(Ljava/lang/Object;)I

    move-result v5

    .line 311
    .local v5, "otherCount":I
    const/4 v6, 0x1

    if-gt v6, v5, :cond_0

    if-gt v5, v4, :cond_0

    .line 312
    sub-int v6, v4, v5

    invoke-interface {v1, v3, v6}, Lorg/apache/commons/collections/Bag;->add(Ljava/lang/Object;I)Z

    goto :goto_1

    .line 314
    :cond_0
    invoke-interface {v1, v3, v4}, Lorg/apache/commons/collections/Bag;->add(Ljava/lang/Object;I)Z

    .line 316
    .end local v3    # "current":Ljava/lang/Object;
    .end local v4    # "myCount":I
    .end local v5    # "otherCount":I
    :goto_1
    goto :goto_0

    .line 317
    :cond_1
    invoke-interface {v1}, Lorg/apache/commons/collections/Bag;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 318
    invoke-virtual {p0, v1}, Lorg/apache/commons/collections/DefaultMapBag;->removeAll(Ljava/util/Collection;)Z

    move-result v0

    .line 320
    :cond_2
    return v0
.end method

.method protected setMap(Ljava/util/Map;)V
    .locals 2
    .param p1, "map"    # Ljava/util/Map;

    .line 393
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 396
    iput-object p1, p0, Lorg/apache/commons/collections/DefaultMapBag;->_map:Ljava/util/Map;

    .line 397
    return-void

    .line 394
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The map must be non-null and empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public size()I
    .locals 1

    .line 373
    iget v0, p0, Lorg/apache/commons/collections/DefaultMapBag;->_total:I

    return v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 1

    .line 329
    invoke-direct {p0}, Lorg/apache/commons/collections/DefaultMapBag;->extractList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 1
    .param p1, "array"    # [Ljava/lang/Object;

    .line 339
    invoke-direct {p0}, Lorg/apache/commons/collections/DefaultMapBag;->extractList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 438
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 439
    .local v0, "buf":Ljava/lang/StringBuffer;
    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 440
    invoke-virtual {p0}, Lorg/apache/commons/collections/DefaultMapBag;->uniqueSet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 441
    .local v1, "i":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 442
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 443
    .local v2, "current":Ljava/lang/Object;
    invoke-virtual {p0, v2}, Lorg/apache/commons/collections/DefaultMapBag;->getCount(Ljava/lang/Object;)I

    move-result v3

    .line 444
    .local v3, "count":I
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 445
    const-string v4, ":"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 446
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 447
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 448
    const-string v4, ","

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 450
    .end local v2    # "current":Ljava/lang/Object;
    .end local v3    # "count":I
    :cond_0
    goto :goto_0

    .line 451
    :cond_1
    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 452
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public uniqueSet()Ljava/util/Set;
    .locals 1

    .line 364
    iget-object v0, p0, Lorg/apache/commons/collections/DefaultMapBag;->_map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/collections/set/UnmodifiableSet;->decorate(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
