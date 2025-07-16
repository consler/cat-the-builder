.class public abstract Lorg/apache/commons/collections4/bag/AbstractMapBag;
.super Ljava/lang/Object;
.source "AbstractMapBag.java"

# interfaces
.implements Lorg/apache/commons/collections4/Bag;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/collections4/bag/AbstractMapBag$MutableInteger;,
        Lorg/apache/commons/collections4/bag/AbstractMapBag$BagIterator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/apache/commons/collections4/Bag<",
        "TE;>;"
    }
.end annotation


# instance fields
.field private transient map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "TE;",
            "Lorg/apache/commons/collections4/bag/AbstractMapBag$MutableInteger;",
            ">;"
        }
    .end annotation
.end field

.field private transient modCount:I

.field private size:I

.field private transient uniqueSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected constructor <init>(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "TE;",
            "Lorg/apache/commons/collections4/bag/AbstractMapBag$MutableInteger;",
            ">;)V"
        }
    .end annotation

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput-object p1, p0, Lorg/apache/commons/collections4/bag/AbstractMapBag;->map:Ljava/util/Map;

    return-void
.end method

.method static synthetic access$000(Lorg/apache/commons/collections4/bag/AbstractMapBag;)Ljava/util/Map;
    .locals 0

    .line 45
    iget-object p0, p0, Lorg/apache/commons/collections4/bag/AbstractMapBag;->map:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$100(Lorg/apache/commons/collections4/bag/AbstractMapBag;)I
    .locals 0

    .line 45
    iget p0, p0, Lorg/apache/commons/collections4/bag/AbstractMapBag;->modCount:I

    return p0
.end method

.method static synthetic access$210(Lorg/apache/commons/collections4/bag/AbstractMapBag;)I
    .locals 2

    .line 45
    iget v0, p0, Lorg/apache/commons/collections4/bag/AbstractMapBag;->size:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lorg/apache/commons/collections4/bag/AbstractMapBag;->size:I

    return v0
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    const/4 v0, 0x1

    .line 252
    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/collections4/bag/AbstractMapBag;->add(Ljava/lang/Object;I)Z

    move-result p1

    return p1
.end method

.method public add(Ljava/lang/Object;I)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;I)Z"
        }
    .end annotation

    .line 264
    iget v0, p0, Lorg/apache/commons/collections4/bag/AbstractMapBag;->modCount:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/apache/commons/collections4/bag/AbstractMapBag;->modCount:I

    const/4 v0, 0x0

    if-lez p2, :cond_1

    .line 266
    iget-object v2, p0, Lorg/apache/commons/collections4/bag/AbstractMapBag;->map:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/collections4/bag/AbstractMapBag$MutableInteger;

    .line 267
    iget v3, p0, Lorg/apache/commons/collections4/bag/AbstractMapBag;->size:I

    add-int/2addr v3, p2

    iput v3, p0, Lorg/apache/commons/collections4/bag/AbstractMapBag;->size:I

    if-nez v2, :cond_0

    .line 269
    iget-object v0, p0, Lorg/apache/commons/collections4/bag/AbstractMapBag;->map:Ljava/util/Map;

    new-instance v2, Lorg/apache/commons/collections4/bag/AbstractMapBag$MutableInteger;

    invoke-direct {v2, p2}, Lorg/apache/commons/collections4/bag/AbstractMapBag$MutableInteger;-><init>(I)V

    invoke-interface {v0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return v1

    .line 272
    :cond_0
    iget p1, v2, Lorg/apache/commons/collections4/bag/AbstractMapBag$MutableInteger;->value:I

    add-int/2addr p1, p2

    iput p1, v2, Lorg/apache/commons/collections4/bag/AbstractMapBag$MutableInteger;->value:I

    :cond_1
    return v0
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TE;>;)Z"
        }
    .end annotation

    .line 287
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    :cond_0
    move v1, v0

    .line 288
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 289
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/apache/commons/collections4/bag/AbstractMapBag;->add(Ljava/lang/Object;)Z

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

    .line 301
    iget v0, p0, Lorg/apache/commons/collections4/bag/AbstractMapBag;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/commons/collections4/bag/AbstractMapBag;->modCount:I

    .line 302
    iget-object v0, p0, Lorg/apache/commons/collections4/bag/AbstractMapBag;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    const/4 v0, 0x0

    .line 303
    iput v0, p0, Lorg/apache/commons/collections4/bag/AbstractMapBag;->size:I

    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1

    .line 131
    iget-object v0, p0, Lorg/apache/commons/collections4/bag/AbstractMapBag;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 142
    instance-of v0, p1, Lorg/apache/commons/collections4/Bag;

    if-eqz v0, :cond_0

    .line 143
    check-cast p1, Lorg/apache/commons/collections4/Bag;

    invoke-virtual {p0, p1}, Lorg/apache/commons/collections4/bag/AbstractMapBag;->containsAll(Lorg/apache/commons/collections4/Bag;)Z

    move-result p1

    return p1

    .line 145
    :cond_0
    new-instance v0, Lorg/apache/commons/collections4/bag/HashBag;

    invoke-direct {v0, p1}, Lorg/apache/commons/collections4/bag/HashBag;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p0, v0}, Lorg/apache/commons/collections4/bag/AbstractMapBag;->containsAll(Lorg/apache/commons/collections4/Bag;)Z

    move-result p1

    return p1
.end method

.method containsAll(Lorg/apache/commons/collections4/Bag;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/Bag<",
            "*>;)Z"
        }
    .end annotation

    .line 156
    invoke-interface {p1}, Lorg/apache/commons/collections4/Bag;->uniqueSet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 157
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 158
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 159
    invoke-virtual {p0, v1}, Lorg/apache/commons/collections4/bag/AbstractMapBag;->getCount(Ljava/lang/Object;)I

    move-result v2

    invoke-interface {p1, v1}, Lorg/apache/commons/collections4/Bag;->getCount(Ljava/lang/Object;)I

    move-result v1

    if-ge v2, v1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method protected doReadObject(Ljava/util/Map;Ljava/io/ObjectInputStream;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "TE;",
            "Lorg/apache/commons/collections4/bag/AbstractMapBag$MutableInteger;",
            ">;",
            "Ljava/io/ObjectInputStream;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 539
    iput-object p1, p0, Lorg/apache/commons/collections4/bag/AbstractMapBag;->map:Ljava/util/Map;

    .line 540
    invoke-virtual {p2}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 543
    invoke-virtual {p2}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v2

    .line 544
    invoke-virtual {p2}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v3

    .line 545
    new-instance v4, Lorg/apache/commons/collections4/bag/AbstractMapBag$MutableInteger;

    invoke-direct {v4, v3}, Lorg/apache/commons/collections4/bag/AbstractMapBag$MutableInteger;-><init>(I)V

    invoke-interface {p1, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 546
    iget v2, p0, Lorg/apache/commons/collections4/bag/AbstractMapBag;->size:I

    add-int/2addr v2, v3

    iput v2, p0, Lorg/apache/commons/collections4/bag/AbstractMapBag;->size:I

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

    .line 522
    iget-object v0, p0, Lorg/apache/commons/collections4/bag/AbstractMapBag;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 523
    iget-object v0, p0, Lorg/apache/commons/collections4/bag/AbstractMapBag;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 524
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 525
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/collections4/bag/AbstractMapBag$MutableInteger;

    iget v1, v1, Lorg/apache/commons/collections4/bag/AbstractMapBag$MutableInteger;->value:I

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

    .line 563
    :cond_0
    instance-of v1, p1, Lorg/apache/commons/collections4/Bag;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 566
    :cond_1
    check-cast p1, Lorg/apache/commons/collections4/Bag;

    .line 567
    invoke-interface {p1}, Lorg/apache/commons/collections4/Bag;->size()I

    move-result v1

    invoke-virtual {p0}, Lorg/apache/commons/collections4/bag/AbstractMapBag;->size()I

    move-result v3

    if-eq v1, v3, :cond_2

    return v2

    .line 570
    :cond_2
    iget-object v1, p0, Lorg/apache/commons/collections4/bag/AbstractMapBag;->map:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 571
    invoke-interface {p1, v3}, Lorg/apache/commons/collections4/Bag;->getCount(Ljava/lang/Object;)I

    move-result v4

    invoke-virtual {p0, v3}, Lorg/apache/commons/collections4/bag/AbstractMapBag;->getCount(Ljava/lang/Object;)I

    move-result v3

    if-eq v4, v3, :cond_3

    return v2

    :cond_4
    return v0
.end method

.method public getCount(Ljava/lang/Object;)I
    .locals 1

    .line 114
    iget-object v0, p0, Lorg/apache/commons/collections4/bag/AbstractMapBag;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/commons/collections4/bag/AbstractMapBag$MutableInteger;

    if-eqz p1, :cond_0

    .line 116
    iget p1, p1, Lorg/apache/commons/collections4/bag/AbstractMapBag$MutableInteger;->value:I

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method protected getMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TE;",
            "Lorg/apache/commons/collections4/bag/AbstractMapBag$MutableInteger;",
            ">;"
        }
    .end annotation

    .line 81
    iget-object v0, p0, Lorg/apache/commons/collections4/bag/AbstractMapBag;->map:Ljava/util/Map;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .line 590
    iget-object v0, p0, Lorg/apache/commons/collections4/bag/AbstractMapBag;->map:Ljava/util/Map;

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

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 591
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    .line 592
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/collections4/bag/AbstractMapBag$MutableInteger;

    if-nez v4, :cond_0

    move v4, v1

    goto :goto_1

    .line 593
    :cond_0
    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    :goto_1
    iget v3, v3, Lorg/apache/commons/collections4/bag/AbstractMapBag$MutableInteger;->value:I

    xor-int/2addr v3, v4

    add-int/2addr v2, v3

    goto :goto_0

    :cond_1
    return v2
.end method

.method public isEmpty()Z
    .locals 1

    .line 102
    iget-object v0, p0, Lorg/apache/commons/collections4/bag/AbstractMapBag;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    .line 175
    new-instance v0, Lorg/apache/commons/collections4/bag/AbstractMapBag$BagIterator;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections4/bag/AbstractMapBag$BagIterator;-><init>(Lorg/apache/commons/collections4/bag/AbstractMapBag;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 3

    .line 314
    iget-object v0, p0, Lorg/apache/commons/collections4/bag/AbstractMapBag;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/collections4/bag/AbstractMapBag$MutableInteger;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 318
    :cond_0
    iget v1, p0, Lorg/apache/commons/collections4/bag/AbstractMapBag;->modCount:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, p0, Lorg/apache/commons/collections4/bag/AbstractMapBag;->modCount:I

    .line 319
    iget-object v1, p0, Lorg/apache/commons/collections4/bag/AbstractMapBag;->map:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 320
    iget p1, p0, Lorg/apache/commons/collections4/bag/AbstractMapBag;->size:I

    iget v0, v0, Lorg/apache/commons/collections4/bag/AbstractMapBag$MutableInteger;->value:I

    sub-int/2addr p1, v0

    iput p1, p0, Lorg/apache/commons/collections4/bag/AbstractMapBag;->size:I

    return v2
.end method

.method public remove(Ljava/lang/Object;I)Z
    .locals 3

    .line 333
    iget-object v0, p0, Lorg/apache/commons/collections4/bag/AbstractMapBag;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/collections4/bag/AbstractMapBag$MutableInteger;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    if-gtz p2, :cond_1

    return v1

    .line 340
    :cond_1
    iget v1, p0, Lorg/apache/commons/collections4/bag/AbstractMapBag;->modCount:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, p0, Lorg/apache/commons/collections4/bag/AbstractMapBag;->modCount:I

    .line 341
    iget v1, v0, Lorg/apache/commons/collections4/bag/AbstractMapBag$MutableInteger;->value:I

    if-ge p2, v1, :cond_2

    .line 342
    iget p1, v0, Lorg/apache/commons/collections4/bag/AbstractMapBag$MutableInteger;->value:I

    sub-int/2addr p1, p2

    iput p1, v0, Lorg/apache/commons/collections4/bag/AbstractMapBag$MutableInteger;->value:I

    .line 343
    iget p1, p0, Lorg/apache/commons/collections4/bag/AbstractMapBag;->size:I

    sub-int/2addr p1, p2

    iput p1, p0, Lorg/apache/commons/collections4/bag/AbstractMapBag;->size:I

    goto :goto_0

    .line 345
    :cond_2
    iget-object p2, p0, Lorg/apache/commons/collections4/bag/AbstractMapBag;->map:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 346
    iget p1, p0, Lorg/apache/commons/collections4/bag/AbstractMapBag;->size:I

    iget p2, v0, Lorg/apache/commons/collections4/bag/AbstractMapBag$MutableInteger;->value:I

    sub-int/2addr p1, p2

    iput p1, p0, Lorg/apache/commons/collections4/bag/AbstractMapBag;->size:I

    :goto_0
    return v2
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 362
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    move v1, v0

    .line 363
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 364
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3}, Lorg/apache/commons/collections4/bag/AbstractMapBag;->remove(Ljava/lang/Object;I)Z

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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 380
    instance-of v0, p1, Lorg/apache/commons/collections4/Bag;

    if-eqz v0, :cond_0

    .line 381
    check-cast p1, Lorg/apache/commons/collections4/Bag;

    invoke-virtual {p0, p1}, Lorg/apache/commons/collections4/bag/AbstractMapBag;->retainAll(Lorg/apache/commons/collections4/Bag;)Z

    move-result p1

    return p1

    .line 383
    :cond_0
    new-instance v0, Lorg/apache/commons/collections4/bag/HashBag;

    invoke-direct {v0, p1}, Lorg/apache/commons/collections4/bag/HashBag;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p0, v0}, Lorg/apache/commons/collections4/bag/AbstractMapBag;->retainAll(Lorg/apache/commons/collections4/Bag;)Z

    move-result p1

    return p1
.end method

.method retainAll(Lorg/apache/commons/collections4/Bag;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/Bag<",
            "*>;)Z"
        }
    .end annotation

    .line 396
    new-instance v0, Lorg/apache/commons/collections4/bag/HashBag;

    invoke-direct {v0}, Lorg/apache/commons/collections4/bag/HashBag;-><init>()V

    .line 397
    invoke-virtual {p0}, Lorg/apache/commons/collections4/bag/AbstractMapBag;->uniqueSet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 398
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 399
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 400
    invoke-virtual {p0, v2}, Lorg/apache/commons/collections4/bag/AbstractMapBag;->getCount(Ljava/lang/Object;)I

    move-result v3

    .line 401
    invoke-interface {p1, v2}, Lorg/apache/commons/collections4/Bag;->getCount(Ljava/lang/Object;)I

    move-result v4

    const/4 v5, 0x1

    if-gt v5, v4, :cond_0

    if-gt v4, v3, :cond_0

    sub-int/2addr v3, v4

    .line 403
    invoke-interface {v0, v2, v3}, Lorg/apache/commons/collections4/Bag;->add(Ljava/lang/Object;I)Z

    goto :goto_0

    .line 405
    :cond_0
    invoke-interface {v0, v2, v3}, Lorg/apache/commons/collections4/Bag;->add(Ljava/lang/Object;I)Z

    goto :goto_0

    .line 408
    :cond_1
    invoke-interface {v0}, Lorg/apache/commons/collections4/Bag;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    .line 409
    invoke-virtual {p0, v0}, Lorg/apache/commons/collections4/bag/AbstractMapBag;->removeAll(Ljava/util/Collection;)Z

    move-result p1

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    return p1
.end method

.method public size()I
    .locals 1

    .line 92
    iget v0, p0, Lorg/apache/commons/collections4/bag/AbstractMapBag;->size:I

    return v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 6

    .line 452
    invoke-virtual {p0}, Lorg/apache/commons/collections4/bag/AbstractMapBag;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/Object;

    .line 454
    iget-object v1, p0, Lorg/apache/commons/collections4/bag/AbstractMapBag;->map:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    .line 455
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 456
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 457
    invoke-virtual {p0, v3}, Lorg/apache/commons/collections4/bag/AbstractMapBag;->getCount(Ljava/lang/Object;)I

    move-result v4

    :goto_0
    if-lez v4, :cond_0

    add-int/lit8 v5, v2, 0x1

    .line 458
    aput-object v3, v0, v2

    add-int/lit8 v4, v4, -0x1

    move v2, v5

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .line 478
    invoke-virtual {p0}, Lorg/apache/commons/collections4/bag/AbstractMapBag;->size()I

    move-result v0

    .line 479
    array-length v1, p1

    if-ge v1, v0, :cond_0

    .line 481
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Object;

    check-cast p1, [Ljava/lang/Object;

    .line 486
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections4/bag/AbstractMapBag;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    .line 487
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 488
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 489
    invoke-virtual {p0, v2}, Lorg/apache/commons/collections4/bag/AbstractMapBag;->getCount(Ljava/lang/Object;)I

    move-result v3

    :goto_0
    if-lez v3, :cond_1

    add-int/lit8 v4, v1, 0x1

    .line 493
    aput-object v2, p1, v1

    add-int/lit8 v3, v3, -0x1

    move v1, v4

    goto :goto_0

    .line 496
    :cond_2
    :goto_1
    array-length v0, p1

    if-ge v1, v0, :cond_3

    add-int/lit8 v0, v1, 0x1

    const/4 v2, 0x0

    .line 497
    aput-object v2, p1, v1

    move v1, v0

    goto :goto_1

    :cond_3
    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 605
    invoke-virtual {p0}, Lorg/apache/commons/collections4/bag/AbstractMapBag;->size()I

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "[]"

    return-object v0

    .line 608
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 610
    invoke-virtual {p0}, Lorg/apache/commons/collections4/bag/AbstractMapBag;->uniqueSet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 611
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 612
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 613
    invoke-virtual {p0, v2}, Lorg/apache/commons/collections4/bag/AbstractMapBag;->getCount(Ljava/lang/Object;)I

    move-result v3

    .line 614
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v3, 0x3a

    .line 615
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 616
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 617
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x2c

    .line 618
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    const/16 v1, 0x5d

    .line 621
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 622
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public uniqueSet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TE;>;"
        }
    .end annotation

    .line 509
    iget-object v0, p0, Lorg/apache/commons/collections4/bag/AbstractMapBag;->uniqueSet:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 510
    iget-object v0, p0, Lorg/apache/commons/collections4/bag/AbstractMapBag;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/collections4/set/UnmodifiableSet;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/collections4/bag/AbstractMapBag;->uniqueSet:Ljava/util/Set;

    .line 512
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections4/bag/AbstractMapBag;->uniqueSet:Ljava/util/Set;

    return-object v0
.end method
