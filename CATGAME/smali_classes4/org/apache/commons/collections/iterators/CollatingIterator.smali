.class public Lorg/apache/commons/collections/iterators/CollatingIterator;
.super Ljava/lang/Object;
.source "CollatingIterator.java"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field private comparator:Ljava/util/Comparator;

.field private iterators:Ljava/util/ArrayList;

.field private lastReturned:I

.field private valueSet:Ljava/util/BitSet;

.field private values:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x2

    .line 68
    invoke-direct {p0, v0, v1}, Lorg/apache/commons/collections/iterators/CollatingIterator;-><init>(Ljava/util/Comparator;I)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Comparator;)V
    .locals 1

    const/4 v0, 0x2

    .line 79
    invoke-direct {p0, p1, v0}, Lorg/apache/commons/collections/iterators/CollatingIterator;-><init>(Ljava/util/Comparator;I)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Comparator;I)V
    .locals 1

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 46
    iput-object v0, p0, Lorg/apache/commons/collections/iterators/CollatingIterator;->comparator:Ljava/util/Comparator;

    .line 49
    iput-object v0, p0, Lorg/apache/commons/collections/iterators/CollatingIterator;->iterators:Ljava/util/ArrayList;

    .line 52
    iput-object v0, p0, Lorg/apache/commons/collections/iterators/CollatingIterator;->values:Ljava/util/ArrayList;

    .line 55
    iput-object v0, p0, Lorg/apache/commons/collections/iterators/CollatingIterator;->valueSet:Ljava/util/BitSet;

    const/4 v0, -0x1

    .line 58
    iput v0, p0, Lorg/apache/commons/collections/iterators/CollatingIterator;->lastReturned:I

    .line 93
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/apache/commons/collections/iterators/CollatingIterator;->iterators:Ljava/util/ArrayList;

    .line 94
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/iterators/CollatingIterator;->setComparator(Ljava/util/Comparator;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Comparator;Ljava/util/Collection;)V
    .locals 1

    .line 141
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/collections/iterators/CollatingIterator;-><init>(Ljava/util/Comparator;I)V

    .line 142
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 143
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Iterator;

    .line 144
    invoke-virtual {p0, p2}, Lorg/apache/commons/collections/iterators/CollatingIterator;->addIterator(Ljava/util/Iterator;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/util/Comparator;Ljava/util/Iterator;Ljava/util/Iterator;)V
    .locals 1

    const/4 v0, 0x2

    .line 108
    invoke-direct {p0, p1, v0}, Lorg/apache/commons/collections/iterators/CollatingIterator;-><init>(Ljava/util/Comparator;I)V

    .line 109
    invoke-virtual {p0, p2}, Lorg/apache/commons/collections/iterators/CollatingIterator;->addIterator(Ljava/util/Iterator;)V

    .line 110
    invoke-virtual {p0, p3}, Lorg/apache/commons/collections/iterators/CollatingIterator;->addIterator(Ljava/util/Iterator;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Comparator;[Ljava/util/Iterator;)V
    .locals 1

    .line 123
    array-length v0, p2

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/collections/iterators/CollatingIterator;-><init>(Ljava/util/Comparator;I)V

    const/4 p1, 0x0

    .line 124
    :goto_0
    array-length v0, p2

    if-ge p1, v0, :cond_0

    .line 125
    aget-object v0, p2, p1

    invoke-virtual {p0, v0}, Lorg/apache/commons/collections/iterators/CollatingIterator;->addIterator(Ljava/util/Iterator;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private anyHasNext(Ljava/util/ArrayList;)Z
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    .line 362
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 363
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Iterator;

    .line 364
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method private anyValueSet(Ljava/util/BitSet;)Z
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    .line 349
    :goto_0
    invoke-virtual {p1}, Ljava/util/BitSet;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 350
    invoke-virtual {p1, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method private checkNotStarted()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 310
    iget-object v0, p0, Lorg/apache/commons/collections/iterators/CollatingIterator;->values:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    return-void

    .line 311
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can\'t do that after next or hasNext has been called."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private clear(I)V
    .locals 2

    .line 299
    iget-object v0, p0, Lorg/apache/commons/collections/iterators/CollatingIterator;->values:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 300
    iget-object v0, p0, Lorg/apache/commons/collections/iterators/CollatingIterator;->valueSet:Ljava/util/BitSet;

    invoke-virtual {v0, p1}, Ljava/util/BitSet;->clear(I)V

    return-void
.end method

.method private least()I
    .locals 6

    const/4 v0, -0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    move v3, v0

    .line 324
    :goto_0
    iget-object v4, p0, Lorg/apache/commons/collections/iterators/CollatingIterator;->values:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_3

    .line 325
    iget-object v4, p0, Lorg/apache/commons/collections/iterators/CollatingIterator;->valueSet:Ljava/util/BitSet;

    invoke-virtual {v4, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 326
    invoke-direct {p0, v2}, Lorg/apache/commons/collections/iterators/CollatingIterator;->set(I)Z

    .line 328
    :cond_0
    iget-object v4, p0, Lorg/apache/commons/collections/iterators/CollatingIterator;->valueSet:Ljava/util/BitSet;

    invoke-virtual {v4, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v4

    if-eqz v4, :cond_2

    if-ne v3, v0, :cond_1

    .line 331
    iget-object v1, p0, Lorg/apache/commons/collections/iterators/CollatingIterator;->values:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move v3, v2

    goto :goto_1

    .line 333
    :cond_1
    iget-object v4, p0, Lorg/apache/commons/collections/iterators/CollatingIterator;->values:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 334
    iget-object v5, p0, Lorg/apache/commons/collections/iterators/CollatingIterator;->comparator:Ljava/util/Comparator;

    invoke-interface {v5, v4, v1}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v5

    if-gez v5, :cond_2

    move v3, v2

    move-object v1, v4

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return v3
.end method

.method private set(I)Z
    .locals 2

    .line 282
    iget-object v0, p0, Lorg/apache/commons/collections/iterators/CollatingIterator;->iterators:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Iterator;

    move-object v1, v0

    check-cast v1, Ljava/util/Iterator;

    .line 283
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 284
    iget-object v1, p0, Lorg/apache/commons/collections/iterators/CollatingIterator;->values:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, p1, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 285
    iget-object v0, p0, Lorg/apache/commons/collections/iterators/CollatingIterator;->valueSet:Ljava/util/BitSet;

    invoke-virtual {v0, p1}, Ljava/util/BitSet;->set(I)V

    const/4 p1, 0x1

    return p1

    .line 288
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections/iterators/CollatingIterator;->values:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 289
    iget-object v0, p0, Lorg/apache/commons/collections/iterators/CollatingIterator;->valueSet:Ljava/util/BitSet;

    invoke-virtual {v0, p1}, Ljava/util/BitSet;->clear(I)V

    const/4 p1, 0x0

    return p1
.end method

.method private start()V
    .locals 3

    .line 262
    iget-object v0, p0, Lorg/apache/commons/collections/iterators/CollatingIterator;->values:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 263
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/apache/commons/collections/iterators/CollatingIterator;->iterators:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/apache/commons/collections/iterators/CollatingIterator;->values:Ljava/util/ArrayList;

    .line 264
    new-instance v0, Ljava/util/BitSet;

    iget-object v1, p0, Lorg/apache/commons/collections/iterators/CollatingIterator;->iterators:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    iput-object v0, p0, Lorg/apache/commons/collections/iterators/CollatingIterator;->valueSet:Ljava/util/BitSet;

    const/4 v0, 0x0

    .line 265
    :goto_0
    iget-object v1, p0, Lorg/apache/commons/collections/iterators/CollatingIterator;->iterators:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 266
    iget-object v1, p0, Lorg/apache/commons/collections/iterators/CollatingIterator;->values:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 267
    iget-object v1, p0, Lorg/apache/commons/collections/iterators/CollatingIterator;->valueSet:Ljava/util/BitSet;

    invoke-virtual {v1, v0}, Ljava/util/BitSet;->clear(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public addIterator(Ljava/util/Iterator;)V
    .locals 1

    .line 158
    invoke-direct {p0}, Lorg/apache/commons/collections/iterators/CollatingIterator;->checkNotStarted()V

    if-eqz p1, :cond_0

    .line 162
    iget-object v0, p0, Lorg/apache/commons/collections/iterators/CollatingIterator;->iterators:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 160
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Iterator must not be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getComparator()Ljava/util/Comparator;
    .locals 1

    .line 195
    iget-object v0, p0, Lorg/apache/commons/collections/iterators/CollatingIterator;->comparator:Ljava/util/Comparator;

    return-object v0
.end method

.method public getIterators()Ljava/util/List;
    .locals 1

    .line 188
    iget-object v0, p0, Lorg/apache/commons/collections/iterators/CollatingIterator;->iterators:Ljava/util/ArrayList;

    invoke-static {v0}, Lorg/apache/commons/collections/list/UnmodifiableList;->decorate(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public hasNext()Z
    .locals 1

    .line 216
    invoke-direct {p0}, Lorg/apache/commons/collections/iterators/CollatingIterator;->start()V

    .line 217
    iget-object v0, p0, Lorg/apache/commons/collections/iterators/CollatingIterator;->valueSet:Ljava/util/BitSet;

    invoke-direct {p0, v0}, Lorg/apache/commons/collections/iterators/CollatingIterator;->anyValueSet(Ljava/util/BitSet;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/apache/commons/collections/iterators/CollatingIterator;->iterators:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lorg/apache/commons/collections/iterators/CollatingIterator;->anyHasNext(Ljava/util/ArrayList;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/NoSuchElementException;
        }
    .end annotation

    .line 227
    invoke-virtual {p0}, Lorg/apache/commons/collections/iterators/CollatingIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 230
    invoke-direct {p0}, Lorg/apache/commons/collections/iterators/CollatingIterator;->least()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 234
    iget-object v1, p0, Lorg/apache/commons/collections/iterators/CollatingIterator;->values:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 235
    invoke-direct {p0, v0}, Lorg/apache/commons/collections/iterators/CollatingIterator;->clear(I)V

    .line 236
    iput v0, p0, Lorg/apache/commons/collections/iterators/CollatingIterator;->lastReturned:I

    return-object v1

    .line 232
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 228
    :cond_1
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public remove()V
    .locals 2

    .line 249
    iget v0, p0, Lorg/apache/commons/collections/iterators/CollatingIterator;->lastReturned:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 252
    iget-object v1, p0, Lorg/apache/commons/collections/iterators/CollatingIterator;->iterators:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Iterator;

    move-object v1, v0

    check-cast v1, Ljava/util/Iterator;

    .line 253
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    return-void

    .line 250
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No value can be removed at present"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setComparator(Ljava/util/Comparator;)V
    .locals 0

    .line 204
    invoke-direct {p0}, Lorg/apache/commons/collections/iterators/CollatingIterator;->checkNotStarted()V

    .line 205
    iput-object p1, p0, Lorg/apache/commons/collections/iterators/CollatingIterator;->comparator:Ljava/util/Comparator;

    return-void
.end method

.method public setIterator(ILjava/util/Iterator;)V
    .locals 1

    .line 175
    invoke-direct {p0}, Lorg/apache/commons/collections/iterators/CollatingIterator;->checkNotStarted()V

    if-eqz p2, :cond_0

    .line 179
    iget-object v0, p0, Lorg/apache/commons/collections/iterators/CollatingIterator;->iterators:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 177
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Iterator must not be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
