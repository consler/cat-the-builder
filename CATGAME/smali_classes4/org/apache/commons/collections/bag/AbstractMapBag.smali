.class public abstract Lorg/apache/commons/collections/bag/AbstractMapBag;
.super Ljava/lang/Object;
.source "AbstractMapBag.java"

# interfaces
.implements Lorg/apache/commons/collections/Bag;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/collections/bag/AbstractMapBag$MutableInteger;,
        Lorg/apache/commons/collections/bag/AbstractMapBag$BagIterator;
    }
.end annotation


# instance fields
.field private transient map:Ljava/util/Map;

.field private transient modCount:I

.field private size:I

.field private transient uniqueSet:Ljava/util/Set;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    return-void
.end method

.method protected constructor <init>(Ljava/util/Map;)V
    .locals 0
    .param p1, "map"    # Ljava/util/Map;

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput-object p1, p0, Lorg/apache/commons/collections/bag/AbstractMapBag;->map:Ljava/util/Map;

    .line 77
    return-void
.end method

.method static synthetic access$000(Lorg/apache/commons/collections/bag/AbstractMapBag;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lorg/apache/commons/collections/bag/AbstractMapBag;

    .line 49
    iget-object v0, p0, Lorg/apache/commons/collections/bag/AbstractMapBag;->map:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$100(Lorg/apache/commons/collections/bag/AbstractMapBag;)I
    .locals 1
    .param p0, "x0"    # Lorg/apache/commons/collections/bag/AbstractMapBag;

    .line 49
    iget v0, p0, Lorg/apache/commons/collections/bag/AbstractMapBag;->modCount:I

    return v0
.end method

.method static synthetic access$210(Lorg/apache/commons/collections/bag/AbstractMapBag;)I
    .locals 2
    .param p0, "x0"    # Lorg/apache/commons/collections/bag/AbstractMapBag;

    .line 49
    iget v0, p0, Lorg/apache/commons/collections/bag/AbstractMapBag;->size:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lorg/apache/commons/collections/bag/AbstractMapBag;->size:I

    return v0
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;

    .line 244
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/collections/bag/AbstractMapBag;->add(Ljava/lang/Object;I)Z

    move-result v0

    return v0
.end method

.method public add(Ljava/lang/Object;I)Z
    .locals 4
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "nCopies"    # I

    .line 255
    iget v0, p0, Lorg/apache/commons/collections/bag/AbstractMapBag;->modCount:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/apache/commons/collections/bag/AbstractMapBag;->modCount:I

    .line 256
    const/4 v0, 0x0

    if-lez p2, :cond_1

    .line 257
    iget-object v2, p0, Lorg/apache/commons/collections/bag/AbstractMapBag;->map:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/collections/bag/AbstractMapBag$MutableInteger;

    .line 258
    .local v2, "mut":Lorg/apache/commons/collections/bag/AbstractMapBag$MutableInteger;
    iget v3, p0, Lorg/apache/commons/collections/bag/AbstractMapBag;->size:I

    add-int/2addr v3, p2

    iput v3, p0, Lorg/apache/commons/collections/bag/AbstractMapBag;->size:I

    .line 259
    if-nez v2, :cond_0

    .line 260
    iget-object v0, p0, Lorg/apache/commons/collections/bag/AbstractMapBag;->map:Ljava/util/Map;

    new-instance v3, Lorg/apache/commons/collections/bag/AbstractMapBag$MutableInteger;

    invoke-direct {v3, p2}, Lorg/apache/commons/collections/bag/AbstractMapBag$MutableInteger;-><init>(I)V

    invoke-interface {v0, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    return v1

    .line 263
    :cond_0
    iget v1, v2, Lorg/apache/commons/collections/bag/AbstractMapBag$MutableInteger;->value:I

    add-int/2addr v1, p2

    iput v1, v2, Lorg/apache/commons/collections/bag/AbstractMapBag$MutableInteger;->value:I

    .line 264
    return v0

    .line 267
    .end local v2    # "mut":Lorg/apache/commons/collections/bag/AbstractMapBag$MutableInteger;
    :cond_1
    return v0
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 4
    .param p1, "coll"    # Ljava/util/Collection;

    .line 278
    const/4 v0, 0x0

    .line 279
    .local v0, "changed":Z
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 280
    .local v1, "i":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 281
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/apache/commons/collections/bag/AbstractMapBag;->add(Ljava/lang/Object;)Z

    move-result v2

    .line 282
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

    .line 283
    .end local v2    # "added":Z
    goto :goto_0

    .line 284
    :cond_2
    return v0
.end method

.method public clear()V
    .locals 1

    .line 292
    iget v0, p0, Lorg/apache/commons/collections/bag/AbstractMapBag;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/commons/collections/bag/AbstractMapBag;->modCount:I

    .line 293
    iget-object v0, p0, Lorg/apache/commons/collections/bag/AbstractMapBag;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 294
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/collections/bag/AbstractMapBag;->size:I

    .line 295
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;

    .line 132
    iget-object v0, p0, Lorg/apache/commons/collections/bag/AbstractMapBag;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 1
    .param p1, "coll"    # Ljava/util/Collection;

    .line 142
    instance-of v0, p1, Lorg/apache/commons/collections/Bag;

    if-eqz v0, :cond_0

    .line 143
    move-object v0, p1

    check-cast v0, Lorg/apache/commons/collections/Bag;

    invoke-virtual {p0, v0}, Lorg/apache/commons/collections/bag/AbstractMapBag;->containsAll(Lorg/apache/commons/collections/Bag;)Z

    move-result v0

    return v0

    .line 145
    :cond_0
    new-instance v0, Lorg/apache/commons/collections/bag/HashBag;

    invoke-direct {v0, p1}, Lorg/apache/commons/collections/bag/HashBag;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p0, v0}, Lorg/apache/commons/collections/bag/AbstractMapBag;->containsAll(Lorg/apache/commons/collections/Bag;)Z

    move-result v0

    return v0
.end method

.method containsAll(Lorg/apache/commons/collections/Bag;)Z
    .locals 7
    .param p1, "other"    # Lorg/apache/commons/collections/Bag;

    .line 156
    const/4 v0, 0x1

    .line 157
    .local v0, "result":Z
    invoke-interface {p1}, Lorg/apache/commons/collections/Bag;->uniqueSet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 158
    .local v1, "it":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 159
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 160
    .local v2, "current":Ljava/lang/Object;
    invoke-virtual {p0, v2}, Lorg/apache/commons/collections/bag/AbstractMapBag;->getCount(Ljava/lang/Object;)I

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

    .line 161
    .local v3, "contains":Z
    :goto_1
    if-eqz v0, :cond_1

    if-eqz v3, :cond_1

    goto :goto_2

    :cond_1
    move v5, v6

    :goto_2
    move v0, v5

    .line 162
    .end local v2    # "current":Ljava/lang/Object;
    .end local v3    # "contains":Z
    goto :goto_0

    .line 163
    :cond_2
    return v0
.end method

.method protected doReadObject(Ljava/util/Map;Ljava/io/ObjectInputStream;)V
    .locals 5
    .param p1, "map"    # Ljava/util/Map;
    .param p2, "in"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 508
    iput-object p1, p0, Lorg/apache/commons/collections/bag/AbstractMapBag;->map:Ljava/util/Map;

    .line 509
    invoke-virtual {p2}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    .line 510
    .local v0, "entrySize":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 511
    invoke-virtual {p2}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v2

    .line 512
    .local v2, "obj":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v3

    .line 513
    .local v3, "count":I
    new-instance v4, Lorg/apache/commons/collections/bag/AbstractMapBag$MutableInteger;

    invoke-direct {v4, v3}, Lorg/apache/commons/collections/bag/AbstractMapBag$MutableInteger;-><init>(I)V

    invoke-interface {p1, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 514
    iget v4, p0, Lorg/apache/commons/collections/bag/AbstractMapBag;->size:I

    add-int/2addr v4, v3

    iput v4, p0, Lorg/apache/commons/collections/bag/AbstractMapBag;->size:I

    .line 510
    .end local v2    # "obj":Ljava/lang/Object;
    .end local v3    # "count":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 516
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected doWriteObject(Ljava/io/ObjectOutputStream;)V
    .locals 3
    .param p1, "out"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 492
    iget-object v0, p0, Lorg/apache/commons/collections/bag/AbstractMapBag;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 493
    iget-object v0, p0, Lorg/apache/commons/collections/bag/AbstractMapBag;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "it":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 494
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 495
    .local v1, "entry":Ljava/util/Map$Entry;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 496
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/collections/bag/AbstractMapBag$MutableInteger;

    iget v2, v2, Lorg/apache/commons/collections/bag/AbstractMapBag$MutableInteger;->value:I

    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 497
    .end local v1    # "entry":Ljava/util/Map$Entry;
    goto :goto_0

    .line 498
    .end local v0    # "it":Ljava/util/Iterator;
    :cond_0
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "object"    # Ljava/lang/Object;

    .line 528
    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    .line 529
    return v0

    .line 531
    :cond_0
    instance-of v1, p1, Lorg/apache/commons/collections/Bag;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 532
    return v2

    .line 534
    :cond_1
    move-object v1, p1

    check-cast v1, Lorg/apache/commons/collections/Bag;

    .line 535
    .local v1, "other":Lorg/apache/commons/collections/Bag;
    invoke-interface {v1}, Lorg/apache/commons/collections/Bag;->size()I

    move-result v3

    invoke-virtual {p0}, Lorg/apache/commons/collections/bag/AbstractMapBag;->size()I

    move-result v4

    if-eq v3, v4, :cond_2

    .line 536
    return v2

    .line 538
    :cond_2
    iget-object v3, p0, Lorg/apache/commons/collections/bag/AbstractMapBag;->map:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "it":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 539
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 540
    .local v4, "element":Ljava/lang/Object;
    invoke-interface {v1, v4}, Lorg/apache/commons/collections/Bag;->getCount(Ljava/lang/Object;)I

    move-result v5

    invoke-virtual {p0, v4}, Lorg/apache/commons/collections/bag/AbstractMapBag;->getCount(Ljava/lang/Object;)I

    move-result v6

    if-eq v5, v6, :cond_3

    .line 541
    return v2

    .line 543
    .end local v4    # "element":Ljava/lang/Object;
    :cond_3
    goto :goto_0

    .line 544
    .end local v3    # "it":Ljava/util/Iterator;
    :cond_4
    return v0
.end method

.method public getCount(Ljava/lang/Object;)I
    .locals 2
    .param p1, "object"    # Ljava/lang/Object;

    .line 116
    iget-object v0, p0, Lorg/apache/commons/collections/bag/AbstractMapBag;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/collections/bag/AbstractMapBag$MutableInteger;

    .line 117
    .local v0, "count":Lorg/apache/commons/collections/bag/AbstractMapBag$MutableInteger;
    if-eqz v0, :cond_0

    .line 118
    iget v1, v0, Lorg/apache/commons/collections/bag/AbstractMapBag$MutableInteger;->value:I

    return v1

    .line 120
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method protected getMap()Ljava/util/Map;
    .locals 1

    .line 86
    iget-object v0, p0, Lorg/apache/commons/collections/bag/AbstractMapBag;->map:Ljava/util/Map;

    return-object v0
.end method

.method public hashCode()I
    .locals 7

    .line 557
    const/4 v0, 0x0

    .line 558
    .local v0, "total":I
    iget-object v1, p0, Lorg/apache/commons/collections/bag/AbstractMapBag;->map:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "it":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 559
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 560
    .local v2, "entry":Ljava/util/Map$Entry;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    .line 561
    .local v3, "element":Ljava/lang/Object;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/collections/bag/AbstractMapBag$MutableInteger;

    .line 562
    .local v4, "count":Lorg/apache/commons/collections/bag/AbstractMapBag$MutableInteger;
    if-nez v3, :cond_0

    const/4 v5, 0x0

    goto :goto_1

    :cond_0
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v5

    :goto_1
    iget v6, v4, Lorg/apache/commons/collections/bag/AbstractMapBag$MutableInteger;->value:I

    xor-int/2addr v5, v6

    add-int/2addr v0, v5

    .line 563
    .end local v2    # "entry":Ljava/util/Map$Entry;
    .end local v3    # "element":Ljava/lang/Object;
    .end local v4    # "count":Lorg/apache/commons/collections/bag/AbstractMapBag$MutableInteger;
    goto :goto_0

    .line 564
    .end local v1    # "it":Ljava/util/Iterator;
    :cond_1
    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 105
    iget-object v0, p0, Lorg/apache/commons/collections/bag/AbstractMapBag;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1

    .line 174
    new-instance v0, Lorg/apache/commons/collections/bag/AbstractMapBag$BagIterator;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections/bag/AbstractMapBag$BagIterator;-><init>(Lorg/apache/commons/collections/bag/AbstractMapBag;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "object"    # Ljava/lang/Object;

    .line 304
    iget-object v0, p0, Lorg/apache/commons/collections/bag/AbstractMapBag;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/collections/bag/AbstractMapBag$MutableInteger;

    .line 305
    .local v0, "mut":Lorg/apache/commons/collections/bag/AbstractMapBag$MutableInteger;
    if-nez v0, :cond_0

    .line 306
    const/4 v1, 0x0

    return v1

    .line 308
    :cond_0
    iget v1, p0, Lorg/apache/commons/collections/bag/AbstractMapBag;->modCount:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, p0, Lorg/apache/commons/collections/bag/AbstractMapBag;->modCount:I

    .line 309
    iget-object v1, p0, Lorg/apache/commons/collections/bag/AbstractMapBag;->map:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 310
    iget v1, p0, Lorg/apache/commons/collections/bag/AbstractMapBag;->size:I

    iget v3, v0, Lorg/apache/commons/collections/bag/AbstractMapBag$MutableInteger;->value:I

    sub-int/2addr v1, v3

    iput v1, p0, Lorg/apache/commons/collections/bag/AbstractMapBag;->size:I

    .line 311
    return v2
.end method

.method public remove(Ljava/lang/Object;I)Z
    .locals 4
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "nCopies"    # I

    .line 322
    iget-object v0, p0, Lorg/apache/commons/collections/bag/AbstractMapBag;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/collections/bag/AbstractMapBag$MutableInteger;

    .line 323
    .local v0, "mut":Lorg/apache/commons/collections/bag/AbstractMapBag$MutableInteger;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 324
    return v1

    .line 326
    :cond_0
    if-gtz p2, :cond_1

    .line 327
    return v1

    .line 329
    :cond_1
    iget v1, p0, Lorg/apache/commons/collections/bag/AbstractMapBag;->modCount:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, p0, Lorg/apache/commons/collections/bag/AbstractMapBag;->modCount:I

    .line 330
    iget v1, v0, Lorg/apache/commons/collections/bag/AbstractMapBag$MutableInteger;->value:I

    if-ge p2, v1, :cond_2

    .line 331
    iget v1, v0, Lorg/apache/commons/collections/bag/AbstractMapBag$MutableInteger;->value:I

    sub-int/2addr v1, p2

    iput v1, v0, Lorg/apache/commons/collections/bag/AbstractMapBag$MutableInteger;->value:I

    .line 332
    iget v1, p0, Lorg/apache/commons/collections/bag/AbstractMapBag;->size:I

    sub-int/2addr v1, p2

    iput v1, p0, Lorg/apache/commons/collections/bag/AbstractMapBag;->size:I

    goto :goto_0

    .line 334
    :cond_2
    iget-object v1, p0, Lorg/apache/commons/collections/bag/AbstractMapBag;->map:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 335
    iget v1, p0, Lorg/apache/commons/collections/bag/AbstractMapBag;->size:I

    iget v3, v0, Lorg/apache/commons/collections/bag/AbstractMapBag$MutableInteger;->value:I

    sub-int/2addr v1, v3

    iput v1, p0, Lorg/apache/commons/collections/bag/AbstractMapBag;->size:I

    .line 337
    :goto_0
    return v2
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 4
    .param p1, "coll"    # Ljava/util/Collection;

    .line 347
    const/4 v0, 0x0

    .line 348
    .local v0, "result":Z
    if-eqz p1, :cond_2

    .line 349
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 350
    .local v1, "i":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 351
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3}, Lorg/apache/commons/collections/bag/AbstractMapBag;->remove(Ljava/lang/Object;I)Z

    move-result v2

    .line 352
    .local v2, "changed":Z
    if-nez v0, :cond_1

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    :cond_1
    :goto_1
    move v0, v3

    .line 353
    .end local v2    # "changed":Z
    goto :goto_0

    .line 355
    .end local v1    # "i":Ljava/util/Iterator;
    :cond_2
    return v0
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 1
    .param p1, "coll"    # Ljava/util/Collection;

    .line 366
    instance-of v0, p1, Lorg/apache/commons/collections/Bag;

    if-eqz v0, :cond_0

    .line 367
    move-object v0, p1

    check-cast v0, Lorg/apache/commons/collections/Bag;

    invoke-virtual {p0, v0}, Lorg/apache/commons/collections/bag/AbstractMapBag;->retainAll(Lorg/apache/commons/collections/Bag;)Z

    move-result v0

    return v0

    .line 369
    :cond_0
    new-instance v0, Lorg/apache/commons/collections/bag/HashBag;

    invoke-direct {v0, p1}, Lorg/apache/commons/collections/bag/HashBag;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p0, v0}, Lorg/apache/commons/collections/bag/AbstractMapBag;->retainAll(Lorg/apache/commons/collections/Bag;)Z

    move-result v0

    return v0
.end method

.method retainAll(Lorg/apache/commons/collections/Bag;)Z
    .locals 7
    .param p1, "other"    # Lorg/apache/commons/collections/Bag;

    .line 381
    const/4 v0, 0x0

    .line 382
    .local v0, "result":Z
    new-instance v1, Lorg/apache/commons/collections/bag/HashBag;

    invoke-direct {v1}, Lorg/apache/commons/collections/bag/HashBag;-><init>()V

    .line 383
    .local v1, "excess":Lorg/apache/commons/collections/Bag;
    invoke-virtual {p0}, Lorg/apache/commons/collections/bag/AbstractMapBag;->uniqueSet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 384
    .local v2, "i":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 385
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 386
    .local v3, "current":Ljava/lang/Object;
    invoke-virtual {p0, v3}, Lorg/apache/commons/collections/bag/AbstractMapBag;->getCount(Ljava/lang/Object;)I

    move-result v4

    .line 387
    .local v4, "myCount":I
    invoke-interface {p1, v3}, Lorg/apache/commons/collections/Bag;->getCount(Ljava/lang/Object;)I

    move-result v5

    .line 388
    .local v5, "otherCount":I
    const/4 v6, 0x1

    if-gt v6, v5, :cond_0

    if-gt v5, v4, :cond_0

    .line 389
    sub-int v6, v4, v5

    invoke-interface {v1, v3, v6}, Lorg/apache/commons/collections/Bag;->add(Ljava/lang/Object;I)Z

    goto :goto_1

    .line 391
    :cond_0
    invoke-interface {v1, v3, v4}, Lorg/apache/commons/collections/Bag;->add(Ljava/lang/Object;I)Z

    .line 393
    .end local v3    # "current":Ljava/lang/Object;
    .end local v4    # "myCount":I
    .end local v5    # "otherCount":I
    :goto_1
    goto :goto_0

    .line 394
    :cond_1
    invoke-interface {v1}, Lorg/apache/commons/collections/Bag;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 395
    invoke-virtual {p0, v1}, Lorg/apache/commons/collections/bag/AbstractMapBag;->removeAll(Ljava/util/Collection;)Z

    move-result v0

    .line 397
    :cond_2
    return v0
.end method

.method public size()I
    .locals 1

    .line 96
    iget v0, p0, Lorg/apache/commons/collections/bag/AbstractMapBag;->size:I

    return v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 6

    .line 435
    invoke-virtual {p0}, Lorg/apache/commons/collections/bag/AbstractMapBag;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/Object;

    .line 436
    .local v0, "result":[Ljava/lang/Object;
    const/4 v1, 0x0

    .line 437
    .local v1, "i":I
    iget-object v2, p0, Lorg/apache/commons/collections/bag/AbstractMapBag;->map:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 438
    .local v2, "it":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 439
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 440
    .local v3, "current":Ljava/lang/Object;
    invoke-virtual {p0, v3}, Lorg/apache/commons/collections/bag/AbstractMapBag;->getCount(Ljava/lang/Object;)I

    move-result v4

    .local v4, "index":I
    :goto_1
    if-lez v4, :cond_0

    .line 441
    add-int/lit8 v5, v1, 0x1

    .end local v1    # "i":I
    .local v5, "i":I
    aput-object v3, v0, v1

    .line 440
    add-int/lit8 v4, v4, -0x1

    move v1, v5

    goto :goto_1

    .line 443
    .end local v3    # "current":Ljava/lang/Object;
    .end local v4    # "index":I
    .end local v5    # "i":I
    .restart local v1    # "i":I
    :cond_0
    goto :goto_0

    .line 444
    :cond_1
    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 6
    .param p1, "array"    # [Ljava/lang/Object;

    .line 454
    invoke-virtual {p0}, Lorg/apache/commons/collections/bag/AbstractMapBag;->size()I

    move-result v0

    .line 455
    .local v0, "size":I
    array-length v1, p1

    if-ge v1, v0, :cond_0

    .line 456
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    move-object p1, v1

    check-cast p1, [Ljava/lang/Object;

    .line 459
    :cond_0
    const/4 v1, 0x0

    .line 460
    .local v1, "i":I
    iget-object v2, p0, Lorg/apache/commons/collections/bag/AbstractMapBag;->map:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 461
    .local v2, "it":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 462
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 463
    .local v3, "current":Ljava/lang/Object;
    invoke-virtual {p0, v3}, Lorg/apache/commons/collections/bag/AbstractMapBag;->getCount(Ljava/lang/Object;)I

    move-result v4

    .local v4, "index":I
    :goto_1
    if-lez v4, :cond_1

    .line 464
    add-int/lit8 v5, v1, 0x1

    .end local v1    # "i":I
    .local v5, "i":I
    aput-object v3, p1, v1

    .line 463
    add-int/lit8 v4, v4, -0x1

    move v1, v5

    goto :goto_1

    .line 466
    .end local v3    # "current":Ljava/lang/Object;
    .end local v4    # "index":I
    .end local v5    # "i":I
    .restart local v1    # "i":I
    :cond_1
    goto :goto_0

    .line 467
    :cond_2
    array-length v3, p1

    if-le v3, v0, :cond_3

    .line 468
    const/4 v3, 0x0

    aput-object v3, p1, v0

    .line 470
    :cond_3
    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 573
    invoke-virtual {p0}, Lorg/apache/commons/collections/bag/AbstractMapBag;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 574
    const-string v0, "[]"

    return-object v0

    .line 576
    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 577
    .local v0, "buf":Ljava/lang/StringBuffer;
    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 578
    invoke-virtual {p0}, Lorg/apache/commons/collections/bag/AbstractMapBag;->uniqueSet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 579
    .local v1, "it":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 580
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 581
    .local v2, "current":Ljava/lang/Object;
    invoke-virtual {p0, v2}, Lorg/apache/commons/collections/bag/AbstractMapBag;->getCount(Ljava/lang/Object;)I

    move-result v3

    .line 582
    .local v3, "count":I
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 583
    const/16 v4, 0x3a

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 584
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 585
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 586
    const/16 v4, 0x2c

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 588
    .end local v2    # "current":Ljava/lang/Object;
    .end local v3    # "count":I
    :cond_1
    goto :goto_0

    .line 589
    :cond_2
    const/16 v2, 0x5d

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 590
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public uniqueSet()Ljava/util/Set;
    .locals 1

    .line 479
    iget-object v0, p0, Lorg/apache/commons/collections/bag/AbstractMapBag;->uniqueSet:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 480
    iget-object v0, p0, Lorg/apache/commons/collections/bag/AbstractMapBag;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/collections/set/UnmodifiableSet;->decorate(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/collections/bag/AbstractMapBag;->uniqueSet:Ljava/util/Set;

    .line 482
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections/bag/AbstractMapBag;->uniqueSet:Ljava/util/Set;

    return-object v0
.end method
