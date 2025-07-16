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

    const/4 v0, 0x0

    .line 49
    iput-object v0, p0, Lorg/apache/commons/collections/DefaultMapBag;->_map:Ljava/util/Map;

    const/4 v0, 0x0

    .line 50
    iput v0, p0, Lorg/apache/commons/collections/DefaultMapBag;->_total:I

    .line 51
    iput v0, p0, Lorg/apache/commons/collections/DefaultMapBag;->_mods:I

    return-void
.end method

.method protected constructor <init>(Ljava/util/Map;)V
    .locals 1

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 49
    iput-object v0, p0, Lorg/apache/commons/collections/DefaultMapBag;->_map:Ljava/util/Map;

    const/4 v0, 0x0

    .line 50
    iput v0, p0, Lorg/apache/commons/collections/DefaultMapBag;->_total:I

    .line 51
    iput v0, p0, Lorg/apache/commons/collections/DefaultMapBag;->_mods:I

    .line 68
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/DefaultMapBag;->setMap(Ljava/util/Map;)V

    return-void
.end method

.method static synthetic access$000(Lorg/apache/commons/collections/DefaultMapBag;)I
    .locals 0

    .line 48
    invoke-direct {p0}, Lorg/apache/commons/collections/DefaultMapBag;->modCount()I

    move-result p0

    return p0
.end method

.method private extractList()Ljava/util/List;
    .locals 4

    .line 412
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 413
    invoke-virtual {p0}, Lorg/apache/commons/collections/DefaultMapBag;->uniqueSet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 414
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 415
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 416
    invoke-virtual {p0, v2}, Lorg/apache/commons/collections/DefaultMapBag;->getCount(Ljava/lang/Object;)I

    move-result v3

    :goto_0
    if-lez v3, :cond_0

    .line 417
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, -0x1

    goto :goto_0

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

    const/4 v0, 0x1

    .line 79
    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/collections/DefaultMapBag;->add(Ljava/lang/Object;I)Z

    move-result p1

    return p1
.end method

.method public add(Ljava/lang/Object;I)Z
    .locals 5

    .line 90
    iget v0, p0, Lorg/apache/commons/collections/DefaultMapBag;->_mods:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/apache/commons/collections/DefaultMapBag;->_mods:I

    const/4 v0, 0x0

    if-lez p2, :cond_1

    .line 92
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/DefaultMapBag;->getCount(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v2, p2

    .line 93
    iget-object v3, p0, Lorg/apache/commons/collections/DefaultMapBag;->_map:Ljava/util/Map;

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v3, p1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    iget p1, p0, Lorg/apache/commons/collections/DefaultMapBag;->_total:I

    add-int/2addr p1, p2

    iput p1, p0, Lorg/apache/commons/collections/DefaultMapBag;->_total:I

    if-ne v2, p2, :cond_0

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    return v1

    :cond_1
    return v0
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 3

    .line 109
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    :cond_0
    move v1, v0

    .line 110
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 111
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/apache/commons/collections/DefaultMapBag;->add(Ljava/lang/Object;)Z

    move-result v2

    if-nez v1, :cond_1

    if-eqz v2, :cond_0

    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method protected calcTotalSize()I
    .locals 1

    .line 383
    invoke-direct {p0}, Lorg/apache/commons/collections/DefaultMapBag;->extractList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lorg/apache/commons/collections/DefaultMapBag;->_total:I

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

    const/4 v0, 0x0

    .line 123
    iput v0, p0, Lorg/apache/commons/collections/DefaultMapBag;->_total:I

    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1

    .line 134
    iget-object v0, p0, Lorg/apache/commons/collections/DefaultMapBag;->_map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 1

    .line 144
    new-instance v0, Lorg/apache/commons/collections/HashBag;

    invoke-direct {v0, p1}, Lorg/apache/commons/collections/HashBag;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p0, v0}, Lorg/apache/commons/collections/DefaultMapBag;->containsAll(Lorg/apache/commons/collections/Bag;)Z

    move-result p1

    return p1
.end method

.method public containsAll(Lorg/apache/commons/collections/Bag;)Z
    .locals 6

    .line 156
    invoke-interface {p1}, Lorg/apache/commons/collections/Bag;->uniqueSet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x1

    :goto_0
    move v2, v1

    .line 157
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 158
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 159
    invoke-virtual {p0, v3}, Lorg/apache/commons/collections/DefaultMapBag;->getCount(Ljava/lang/Object;)I

    move-result v4

    invoke-interface {p1, v3}, Lorg/apache/commons/collections/Bag;->getCount(Ljava/lang/Object;)I

    move-result v3

    const/4 v5, 0x0

    if-lt v4, v3, :cond_0

    move v3, v1

    goto :goto_2

    :cond_0
    move v3, v5

    :goto_2
    if-eqz v2, :cond_1

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    move v2, v5

    goto :goto_1

    :cond_2
    return v2
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 177
    :cond_0
    instance-of v1, p1, Lorg/apache/commons/collections/Bag;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 180
    :cond_1
    check-cast p1, Lorg/apache/commons/collections/Bag;

    .line 181
    invoke-interface {p1}, Lorg/apache/commons/collections/Bag;->size()I

    move-result v1

    invoke-virtual {p0}, Lorg/apache/commons/collections/DefaultMapBag;->size()I

    move-result v3

    if-eq v1, v3, :cond_2

    return v2

    .line 184
    :cond_2
    iget-object v1, p0, Lorg/apache/commons/collections/DefaultMapBag;->_map:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 185
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 186
    invoke-interface {p1, v3}, Lorg/apache/commons/collections/Bag;->getCount(Ljava/lang/Object;)I

    move-result v4

    invoke-virtual {p0, v3}, Lorg/apache/commons/collections/DefaultMapBag;->getCount(Ljava/lang/Object;)I

    move-result v3

    if-eq v4, v3, :cond_3

    return v2

    :cond_4
    return v0
.end method

.method public getCount(Ljava/lang/Object;)I
    .locals 1

    .line 351
    iget-object v0, p0, Lorg/apache/commons/collections/DefaultMapBag;->_map:Ljava/util/Map;

    invoke-static {v0, p1}, Lorg/apache/commons/collections/MapUtils;->getInteger(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 353
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
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

    .line 251
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/DefaultMapBag;->getCount(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/collections/DefaultMapBag;->remove(Ljava/lang/Object;I)Z

    move-result p1

    return p1
.end method

.method public remove(Ljava/lang/Object;I)Z
    .locals 4

    .line 255
    iget v0, p0, Lorg/apache/commons/collections/DefaultMapBag;->_mods:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/apache/commons/collections/DefaultMapBag;->_mods:I

    .line 257
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/DefaultMapBag;->getCount(Ljava/lang/Object;)I

    move-result v0

    const/4 v2, 0x0

    if-gtz p2, :cond_0

    move v1, v2

    goto :goto_1

    :cond_0
    if-le v0, p2, :cond_1

    .line 261
    iget-object v2, p0, Lorg/apache/commons/collections/DefaultMapBag;->_map:Ljava/util/Map;

    new-instance v3, Ljava/lang/Integer;

    sub-int/2addr v0, p2

    invoke-direct {v3, v0}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v2, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    iget p1, p0, Lorg/apache/commons/collections/DefaultMapBag;->_total:I

    sub-int/2addr p1, p2

    iput p1, p0, Lorg/apache/commons/collections/DefaultMapBag;->_total:I

    goto :goto_1

    .line 266
    :cond_1
    iget-object p2, p0, Lorg/apache/commons/collections/DefaultMapBag;->_map:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    move v1, v2

    .line 267
    :goto_0
    iget p1, p0, Lorg/apache/commons/collections/DefaultMapBag;->_total:I

    sub-int/2addr p1, v0

    iput p1, p0, Lorg/apache/commons/collections/DefaultMapBag;->_total:I

    :goto_1
    return v1
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 275
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    move v1, v0

    .line 276
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 277
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3}, Lorg/apache/commons/collections/DefaultMapBag;->remove(Ljava/lang/Object;I)Z

    move-result v2

    if-nez v1, :cond_1

    if-eqz v2, :cond_0

    :cond_1
    move v1, v3

    goto :goto_0

    :cond_2
    move v0, v1

    :cond_3
    return v0
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 1

    .line 292
    new-instance v0, Lorg/apache/commons/collections/HashBag;

    invoke-direct {v0, p1}, Lorg/apache/commons/collections/HashBag;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p0, v0}, Lorg/apache/commons/collections/DefaultMapBag;->retainAll(Lorg/apache/commons/collections/Bag;)Z

    move-result p1

    return p1
.end method

.method public retainAll(Lorg/apache/commons/collections/Bag;)Z
    .locals 6

    .line 305
    new-instance v0, Lorg/apache/commons/collections/HashBag;

    invoke-direct {v0}, Lorg/apache/commons/collections/HashBag;-><init>()V

    .line 306
    invoke-virtual {p0}, Lorg/apache/commons/collections/DefaultMapBag;->uniqueSet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 307
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 308
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 309
    invoke-virtual {p0, v2}, Lorg/apache/commons/collections/DefaultMapBag;->getCount(Ljava/lang/Object;)I

    move-result v3

    .line 310
    invoke-interface {p1, v2}, Lorg/apache/commons/collections/Bag;->getCount(Ljava/lang/Object;)I

    move-result v4

    const/4 v5, 0x1

    if-gt v5, v4, :cond_0

    if-gt v4, v3, :cond_0

    sub-int/2addr v3, v4

    .line 312
    invoke-interface {v0, v2, v3}, Lorg/apache/commons/collections/Bag;->add(Ljava/lang/Object;I)Z

    goto :goto_0

    .line 314
    :cond_0
    invoke-interface {v0, v2, v3}, Lorg/apache/commons/collections/Bag;->add(Ljava/lang/Object;I)Z

    goto :goto_0

    .line 317
    :cond_1
    invoke-interface {v0}, Lorg/apache/commons/collections/Bag;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    .line 318
    invoke-virtual {p0, v0}, Lorg/apache/commons/collections/DefaultMapBag;->removeAll(Ljava/util/Collection;)Z

    move-result p1

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    return p1
.end method

.method protected setMap(Ljava/util/Map;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 393
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 396
    iput-object p1, p0, Lorg/apache/commons/collections/DefaultMapBag;->_map:Ljava/util/Map;

    return-void

    .line 394
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "The map must be non-null and empty"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
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

    .line 339
    invoke-direct {p0}, Lorg/apache/commons/collections/DefaultMapBag;->extractList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 438
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 440
    invoke-virtual {p0}, Lorg/apache/commons/collections/DefaultMapBag;->uniqueSet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 441
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 442
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 443
    invoke-virtual {p0, v2}, Lorg/apache/commons/collections/DefaultMapBag;->getCount(Ljava/lang/Object;)I

    move-result v3

    .line 444
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v3, ":"

    .line 445
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 446
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 447
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, ","

    .line 448
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_1
    const-string v1, "]"

    .line 451
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 452
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
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
