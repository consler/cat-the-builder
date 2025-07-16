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

    return-void
.end method

.method protected constructor <init>(Ljava/util/Map;)V
    .locals 0

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput-object p1, p0, Lorg/apache/commons/collections/bag/AbstractMapBag;->map:Ljava/util/Map;

    return-void
.end method

.method static synthetic access$000(Lorg/apache/commons/collections/bag/AbstractMapBag;)Ljava/util/Map;
    .locals 0

    .line 49
    iget-object p0, p0, Lorg/apache/commons/collections/bag/AbstractMapBag;->map:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$100(Lorg/apache/commons/collections/bag/AbstractMapBag;)I
    .locals 0

    .line 49
    iget p0, p0, Lorg/apache/commons/collections/bag/AbstractMapBag;->modCount:I

    return p0
.end method

.method static synthetic access$210(Lorg/apache/commons/collections/bag/AbstractMapBag;)I
    .locals 2

    .line 49
    iget v0, p0, Lorg/apache/commons/collections/bag/AbstractMapBag;->size:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lorg/apache/commons/collections/bag/AbstractMapBag;->size:I

    return v0
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 1

    const/4 v0, 0x1

    .line 244
    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/collections/bag/AbstractMapBag;->add(Ljava/lang/Object;I)Z

    move-result p1

    return p1
.end method

.method public add(Ljava/lang/Object;I)Z
    .locals 4

    .line 255
    iget v0, p0, Lorg/apache/commons/collections/bag/AbstractMapBag;->modCount:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/apache/commons/collections/bag/AbstractMapBag;->modCount:I

    const/4 v0, 0x0

    if-lez p2, :cond_1

    .line 257
    iget-object v2, p0, Lorg/apache/commons/collections/bag/AbstractMapBag;->map:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/collections/bag/AbstractMapBag$MutableInteger;

    .line 258
    iget v3, p0, Lorg/apache/commons/collections/bag/AbstractMapBag;->size:I

    add-int/2addr v3, p2

    iput v3, p0, Lorg/apache/commons/collections/bag/AbstractMapBag;->size:I

    if-nez v2, :cond_0

    .line 260
    iget-object v0, p0, Lorg/apache/commons/collections/bag/AbstractMapBag;->map:Ljava/util/Map;

    new-instance v2, Lorg/apache/commons/collections/bag/AbstractMapBag$MutableInteger;

    invoke-direct {v2, p2}, Lorg/apache/commons/collections/bag/AbstractMapBag$MutableInteger;-><init>(I)V

    invoke-interface {v0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return v1

    .line 263
    :cond_0
    iget p1, v2, Lorg/apache/commons/collections/bag/AbstractMapBag$MutableInteger;->value:I

    add-int/2addr p1, p2

    iput p1, v2, Lorg/apache/commons/collections/bag/AbstractMapBag$MutableInteger;->value:I

    :cond_1
    return v0
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 3

    .line 279
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    :cond_0
    move v1, v0

    .line 280
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 281
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/apache/commons/collections/bag/AbstractMapBag;->add(Ljava/lang/Object;)Z

    move-result v2

    if-nez v1, :cond_1

    if-eqz v2, :cond_0

    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    return v1
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

    const/4 v0, 0x0

    .line 294
    iput v0, p0, Lorg/apache/commons/collections/bag/AbstractMapBag;->size:I

    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1

    .line 132
    iget-object v0, p0, Lorg/apache/commons/collections/bag/AbstractMapBag;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 1

    .line 142
    instance-of v0, p1, Lorg/apache/commons/collections/Bag;

    if-eqz v0, :cond_0

    .line 143
    check-cast p1, Lorg/apache/commons/collections/Bag;

    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/bag/AbstractMapBag;->containsAll(Lorg/apache/commons/collections/Bag;)Z

    move-result p1

    return p1

    .line 145
    :cond_0
    new-instance v0, Lorg/apache/commons/collections/bag/HashBag;

    invoke-direct {v0, p1}, Lorg/apache/commons/collections/bag/HashBag;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p0, v0}, Lorg/apache/commons/collections/bag/AbstractMapBag;->containsAll(Lorg/apache/commons/collections/Bag;)Z

    move-result p1

    return p1
.end method

.method containsAll(Lorg/apache/commons/collections/Bag;)Z
    .locals 6

    .line 157
    invoke-interface {p1}, Lorg/apache/commons/collections/Bag;->uniqueSet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x1

    :goto_0
    move v2, v1

    .line 158
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 159
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 160
    invoke-virtual {p0, v3}, Lorg/apache/commons/collections/bag/AbstractMapBag;->getCount(Ljava/lang/Object;)I

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

.method protected doReadObject(Ljava/util/Map;Ljava/io/ObjectInputStream;)V
    .locals 5
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

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 511
    invoke-virtual {p2}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v2

    .line 512
    invoke-virtual {p2}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v3

    .line 513
    new-instance v4, Lorg/apache/commons/collections/bag/AbstractMapBag$MutableInteger;

    invoke-direct {v4, v3}, Lorg/apache/commons/collections/bag/AbstractMapBag$MutableInteger;-><init>(I)V

    invoke-interface {p1, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 514
    iget v2, p0, Lorg/apache/commons/collections/bag/AbstractMapBag;->size:I

    add-int/2addr v2, v3

    iput v2, p0, Lorg/apache/commons/collections/bag/AbstractMapBag;->size:I

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected doWriteObject(Ljava/io/ObjectOutputStream;)V
    .locals 3
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

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 494
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 495
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 496
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/collections/bag/AbstractMapBag$MutableInteger;

    iget v1, v1, Lorg/apache/commons/collections/bag/AbstractMapBag$MutableInteger;->value:I

    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 531
    :cond_0
    instance-of v1, p1, Lorg/apache/commons/collections/Bag;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 534
    :cond_1
    check-cast p1, Lorg/apache/commons/collections/Bag;

    .line 535
    invoke-interface {p1}, Lorg/apache/commons/collections/Bag;->size()I

    move-result v1

    invoke-virtual {p0}, Lorg/apache/commons/collections/bag/AbstractMapBag;->size()I

    move-result v3

    if-eq v1, v3, :cond_2

    return v2

    .line 538
    :cond_2
    iget-object v1, p0, Lorg/apache/commons/collections/bag/AbstractMapBag;->map:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 539
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 540
    invoke-interface {p1, v3}, Lorg/apache/commons/collections/Bag;->getCount(Ljava/lang/Object;)I

    move-result v4

    invoke-virtual {p0, v3}, Lorg/apache/commons/collections/bag/AbstractMapBag;->getCount(Ljava/lang/Object;)I

    move-result v3

    if-eq v4, v3, :cond_3

    return v2

    :cond_4
    return v0
.end method

.method public getCount(Ljava/lang/Object;)I
    .locals 1

    .line 116
    iget-object v0, p0, Lorg/apache/commons/collections/bag/AbstractMapBag;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/commons/collections/bag/AbstractMapBag$MutableInteger;

    if-eqz p1, :cond_0

    .line 118
    iget p1, p1, Lorg/apache/commons/collections/bag/AbstractMapBag$MutableInteger;->value:I

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method protected getMap()Ljava/util/Map;
    .locals 1

    .line 86
    iget-object v0, p0, Lorg/apache/commons/collections/bag/AbstractMapBag;->map:Ljava/util/Map;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .line 558
    iget-object v0, p0, Lorg/apache/commons/collections/bag/AbstractMapBag;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 559
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 560
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    .line 561
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/collections/bag/AbstractMapBag$MutableInteger;

    if-nez v4, :cond_0

    move v4, v1

    goto :goto_1

    .line 562
    :cond_0
    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    :goto_1
    iget v3, v3, Lorg/apache/commons/collections/bag/AbstractMapBag$MutableInteger;->value:I

    xor-int/2addr v3, v4

    add-int/2addr v2, v3

    goto :goto_0

    :cond_1
    return v2
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
    .locals 3

    .line 304
    iget-object v0, p0, Lorg/apache/commons/collections/bag/AbstractMapBag;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/collections/bag/AbstractMapBag$MutableInteger;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

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
    iget p1, p0, Lorg/apache/commons/collections/bag/AbstractMapBag;->size:I

    iget v0, v0, Lorg/apache/commons/collections/bag/AbstractMapBag$MutableInteger;->value:I

    sub-int/2addr p1, v0

    iput p1, p0, Lorg/apache/commons/collections/bag/AbstractMapBag;->size:I

    return v2
.end method

.method public remove(Ljava/lang/Object;I)Z
    .locals 3

    .line 322
    iget-object v0, p0, Lorg/apache/commons/collections/bag/AbstractMapBag;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/collections/bag/AbstractMapBag$MutableInteger;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    if-gtz p2, :cond_1

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
    iget p1, v0, Lorg/apache/commons/collections/bag/AbstractMapBag$MutableInteger;->value:I

    sub-int/2addr p1, p2

    iput p1, v0, Lorg/apache/commons/collections/bag/AbstractMapBag$MutableInteger;->value:I

    .line 332
    iget p1, p0, Lorg/apache/commons/collections/bag/AbstractMapBag;->size:I

    sub-int/2addr p1, p2

    iput p1, p0, Lorg/apache/commons/collections/bag/AbstractMapBag;->size:I

    goto :goto_0

    .line 334
    :cond_2
    iget-object p2, p0, Lorg/apache/commons/collections/bag/AbstractMapBag;->map:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 335
    iget p1, p0, Lorg/apache/commons/collections/bag/AbstractMapBag;->size:I

    iget p2, v0, Lorg/apache/commons/collections/bag/AbstractMapBag$MutableInteger;->value:I

    sub-int/2addr p1, p2

    iput p1, p0, Lorg/apache/commons/collections/bag/AbstractMapBag;->size:I

    :goto_0
    return v2
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 349
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    move v1, v0

    .line 350
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 351
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3}, Lorg/apache/commons/collections/bag/AbstractMapBag;->remove(Ljava/lang/Object;I)Z

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

    .line 366
    instance-of v0, p1, Lorg/apache/commons/collections/Bag;

    if-eqz v0, :cond_0

    .line 367
    check-cast p1, Lorg/apache/commons/collections/Bag;

    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/bag/AbstractMapBag;->retainAll(Lorg/apache/commons/collections/Bag;)Z

    move-result p1

    return p1

    .line 369
    :cond_0
    new-instance v0, Lorg/apache/commons/collections/bag/HashBag;

    invoke-direct {v0, p1}, Lorg/apache/commons/collections/bag/HashBag;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p0, v0}, Lorg/apache/commons/collections/bag/AbstractMapBag;->retainAll(Lorg/apache/commons/collections/Bag;)Z

    move-result p1

    return p1
.end method

.method retainAll(Lorg/apache/commons/collections/Bag;)Z
    .locals 6

    .line 382
    new-instance v0, Lorg/apache/commons/collections/bag/HashBag;

    invoke-direct {v0}, Lorg/apache/commons/collections/bag/HashBag;-><init>()V

    .line 383
    invoke-virtual {p0}, Lorg/apache/commons/collections/bag/AbstractMapBag;->uniqueSet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 384
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 385
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 386
    invoke-virtual {p0, v2}, Lorg/apache/commons/collections/bag/AbstractMapBag;->getCount(Ljava/lang/Object;)I

    move-result v3

    .line 387
    invoke-interface {p1, v2}, Lorg/apache/commons/collections/Bag;->getCount(Ljava/lang/Object;)I

    move-result v4

    const/4 v5, 0x1

    if-gt v5, v4, :cond_0

    if-gt v4, v3, :cond_0

    sub-int/2addr v3, v4

    .line 389
    invoke-interface {v0, v2, v3}, Lorg/apache/commons/collections/Bag;->add(Ljava/lang/Object;I)Z

    goto :goto_0

    .line 391
    :cond_0
    invoke-interface {v0, v2, v3}, Lorg/apache/commons/collections/Bag;->add(Ljava/lang/Object;I)Z

    goto :goto_0

    .line 394
    :cond_1
    invoke-interface {v0}, Lorg/apache/commons/collections/Bag;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    .line 395
    invoke-virtual {p0, v0}, Lorg/apache/commons/collections/bag/AbstractMapBag;->removeAll(Ljava/util/Collection;)Z

    move-result p1

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    return p1
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

    .line 437
    iget-object v1, p0, Lorg/apache/commons/collections/bag/AbstractMapBag;->map:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    .line 438
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 439
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 440
    invoke-virtual {p0, v3}, Lorg/apache/commons/collections/bag/AbstractMapBag;->getCount(Ljava/lang/Object;)I

    move-result v4

    :goto_0
    if-lez v4, :cond_0

    add-int/lit8 v5, v2, 0x1

    .line 441
    aput-object v3, v0, v2

    add-int/lit8 v4, v4, -0x1

    move v2, v5

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 6

    .line 454
    invoke-virtual {p0}, Lorg/apache/commons/collections/bag/AbstractMapBag;->size()I

    move-result v0

    .line 455
    array-length v1, p1

    if-ge v1, v0, :cond_0

    .line 456
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Object;

    check-cast p1, [Ljava/lang/Object;

    .line 460
    :cond_0
    iget-object v1, p0, Lorg/apache/commons/collections/bag/AbstractMapBag;->map:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    .line 461
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 462
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 463
    invoke-virtual {p0, v3}, Lorg/apache/commons/collections/bag/AbstractMapBag;->getCount(Ljava/lang/Object;)I

    move-result v4

    :goto_0
    if-lez v4, :cond_1

    add-int/lit8 v5, v2, 0x1

    .line 464
    aput-object v3, p1, v2

    add-int/lit8 v4, v4, -0x1

    move v2, v5

    goto :goto_0

    .line 467
    :cond_2
    array-length v1, p1

    if-le v1, v0, :cond_3

    const/4 v1, 0x0

    .line 468
    aput-object v1, p1, v0

    :cond_3
    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 573
    invoke-virtual {p0}, Lorg/apache/commons/collections/bag/AbstractMapBag;->size()I

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "[]"

    return-object v0

    .line 576
    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 578
    invoke-virtual {p0}, Lorg/apache/commons/collections/bag/AbstractMapBag;->uniqueSet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 579
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 580
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 581
    invoke-virtual {p0, v2}, Lorg/apache/commons/collections/bag/AbstractMapBag;->getCount(Ljava/lang/Object;)I

    move-result v3

    .line 582
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const/16 v3, 0x3a

    .line 583
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 584
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 585
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x2c

    .line 586
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_2
    const/16 v1, 0x5d

    .line 589
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 590
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
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
