.class public Lorg/apache/commons/collections4/iterators/CollatingIterator;
.super Ljava/lang/Object;
.source "CollatingIterator.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TE;>;"
    }
.end annotation


# instance fields
.field private comparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "-TE;>;"
        }
    .end annotation
.end field

.field private iterators:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/Iterator<",
            "+TE;>;>;"
        }
    .end annotation
.end field

.field private lastReturned:I

.field private valueSet:Ljava/util/BitSet;

.field private values:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x2

    .line 70
    invoke-direct {p0, v0, v1}, Lorg/apache/commons/collections4/iterators/CollatingIterator;-><init>(Ljava/util/Comparator;I)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Comparator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "-TE;>;)V"
        }
    .end annotation

    const/4 v0, 0x2

    .line 82
    invoke-direct {p0, p1, v0}, Lorg/apache/commons/collections4/iterators/CollatingIterator;-><init>(Ljava/util/Comparator;I)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Comparator;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "-TE;>;I)V"
        }
    .end annotation

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 43
    iput-object v0, p0, Lorg/apache/commons/collections4/iterators/CollatingIterator;->comparator:Ljava/util/Comparator;

    .line 46
    iput-object v0, p0, Lorg/apache/commons/collections4/iterators/CollatingIterator;->iterators:Ljava/util/List;

    .line 49
    iput-object v0, p0, Lorg/apache/commons/collections4/iterators/CollatingIterator;->values:Ljava/util/List;

    .line 52
    iput-object v0, p0, Lorg/apache/commons/collections4/iterators/CollatingIterator;->valueSet:Ljava/util/BitSet;

    const/4 v0, -0x1

    .line 58
    iput v0, p0, Lorg/apache/commons/collections4/iterators/CollatingIterator;->lastReturned:I

    .line 97
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/apache/commons/collections4/iterators/CollatingIterator;->iterators:Ljava/util/List;

    .line 98
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections4/iterators/CollatingIterator;->setComparator(Ljava/util/Comparator;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Comparator;Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "-TE;>;",
            "Ljava/util/Collection<",
            "Ljava/util/Iterator<",
            "+TE;>;>;)V"
        }
    .end annotation

    .line 149
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/collections4/iterators/CollatingIterator;-><init>(Ljava/util/Comparator;I)V

    .line 150
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Iterator;

    .line 151
    invoke-virtual {p0, p2}, Lorg/apache/commons/collections4/iterators/CollatingIterator;->addIterator(Ljava/util/Iterator;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/util/Comparator;Ljava/util/Iterator;Ljava/util/Iterator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "-TE;>;",
            "Ljava/util/Iterator<",
            "+TE;>;",
            "Ljava/util/Iterator<",
            "+TE;>;)V"
        }
    .end annotation

    const/4 v0, 0x2

    .line 114
    invoke-direct {p0, p1, v0}, Lorg/apache/commons/collections4/iterators/CollatingIterator;-><init>(Ljava/util/Comparator;I)V

    .line 115
    invoke-virtual {p0, p2}, Lorg/apache/commons/collections4/iterators/CollatingIterator;->addIterator(Ljava/util/Iterator;)V

    .line 116
    invoke-virtual {p0, p3}, Lorg/apache/commons/collections4/iterators/CollatingIterator;->addIterator(Ljava/util/Iterator;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Comparator;[Ljava/util/Iterator;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "-TE;>;[",
            "Ljava/util/Iterator<",
            "+TE;>;)V"
        }
    .end annotation

    .line 130
    array-length v0, p2

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/collections4/iterators/CollatingIterator;-><init>(Ljava/util/Comparator;I)V

    .line 131
    array-length p1, p2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    aget-object v1, p2, v0

    .line 132
    invoke-virtual {p0, v1}, Lorg/apache/commons/collections4/iterators/CollatingIterator;->addIterator(Ljava/util/Iterator;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private anyHasNext(Ljava/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/Iterator<",
            "+TE;>;>;)Z"
        }
    .end annotation

    .line 391
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Iterator;

    .line 392
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private anyValueSet(Ljava/util/BitSet;)Z
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    .line 378
    :goto_0
    invoke-virtual {p1}, Ljava/util/BitSet;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 379
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

    .line 336
    iget-object v0, p0, Lorg/apache/commons/collections4/iterators/CollatingIterator;->values:Ljava/util/List;

    if-nez v0, :cond_0

    return-void

    .line 337
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can\'t do that after next or hasNext has been called."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private clear(I)V
    .locals 2

    .line 325
    iget-object v0, p0, Lorg/apache/commons/collections4/iterators/CollatingIterator;->values:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 326
    iget-object v0, p0, Lorg/apache/commons/collections4/iterators/CollatingIterator;->valueSet:Ljava/util/BitSet;

    invoke-virtual {v0, p1}, Ljava/util/BitSet;->clear(I)V

    return-void
.end method

.method private least()I
    .locals 6

    const/4 v0, -0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    move v3, v0

    .line 350
    :goto_0
    iget-object v4, p0, Lorg/apache/commons/collections4/iterators/CollatingIterator;->values:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_4

    .line 351
    iget-object v4, p0, Lorg/apache/commons/collections4/iterators/CollatingIterator;->valueSet:Ljava/util/BitSet;

    invoke-virtual {v4, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 352
    invoke-direct {p0, v2}, Lorg/apache/commons/collections4/iterators/CollatingIterator;->set(I)Z

    .line 354
    :cond_0
    iget-object v4, p0, Lorg/apache/commons/collections4/iterators/CollatingIterator;->valueSet:Ljava/util/BitSet;

    invoke-virtual {v4, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v4

    if-eqz v4, :cond_3

    if-ne v3, v0, :cond_1

    .line 357
    iget-object v1, p0, Lorg/apache/commons/collections4/iterators/CollatingIterator;->values:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move v3, v2

    goto :goto_1

    .line 359
    :cond_1
    iget-object v4, p0, Lorg/apache/commons/collections4/iterators/CollatingIterator;->values:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 360
    iget-object v5, p0, Lorg/apache/commons/collections4/iterators/CollatingIterator;->comparator:Ljava/util/Comparator;

    if-eqz v5, :cond_2

    .line 363
    invoke-interface {v5, v4, v1}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v5

    if-gez v5, :cond_3

    move v3, v2

    move-object v1, v4

    goto :goto_1

    .line 361
    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "You must invoke setComparator() to set a comparator first."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    return v3
.end method

.method private set(I)Z
    .locals 2

    .line 309
    iget-object v0, p0, Lorg/apache/commons/collections4/iterators/CollatingIterator;->iterators:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Iterator;

    .line 310
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 311
    iget-object v1, p0, Lorg/apache/commons/collections4/iterators/CollatingIterator;->values:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, p1, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 312
    iget-object v0, p0, Lorg/apache/commons/collections4/iterators/CollatingIterator;->valueSet:Ljava/util/BitSet;

    invoke-virtual {v0, p1}, Ljava/util/BitSet;->set(I)V

    const/4 p1, 0x1

    return p1

    .line 315
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections4/iterators/CollatingIterator;->values:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 316
    iget-object v0, p0, Lorg/apache/commons/collections4/iterators/CollatingIterator;->valueSet:Ljava/util/BitSet;

    invoke-virtual {v0, p1}, Ljava/util/BitSet;->clear(I)V

    const/4 p1, 0x0

    return p1
.end method

.method private start()V
    .locals 3

    .line 290
    iget-object v0, p0, Lorg/apache/commons/collections4/iterators/CollatingIterator;->values:Ljava/util/List;

    if-nez v0, :cond_0

    .line 291
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/apache/commons/collections4/iterators/CollatingIterator;->iterators:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/apache/commons/collections4/iterators/CollatingIterator;->values:Ljava/util/List;

    .line 292
    new-instance v0, Ljava/util/BitSet;

    iget-object v1, p0, Lorg/apache/commons/collections4/iterators/CollatingIterator;->iterators:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    iput-object v0, p0, Lorg/apache/commons/collections4/iterators/CollatingIterator;->valueSet:Ljava/util/BitSet;

    const/4 v0, 0x0

    .line 293
    :goto_0
    iget-object v1, p0, Lorg/apache/commons/collections4/iterators/CollatingIterator;->iterators:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 294
    iget-object v1, p0, Lorg/apache/commons/collections4/iterators/CollatingIterator;->values:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 295
    iget-object v1, p0, Lorg/apache/commons/collections4/iterators/CollatingIterator;->valueSet:Ljava/util/BitSet;

    invoke-virtual {v1, v0}, Ljava/util/BitSet;->clear(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public addIterator(Ljava/util/Iterator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "+TE;>;)V"
        }
    .end annotation

    .line 165
    invoke-direct {p0}, Lorg/apache/commons/collections4/iterators/CollatingIterator;->checkNotStarted()V

    if-eqz p1, :cond_0

    .line 169
    iget-object v0, p0, Lorg/apache/commons/collections4/iterators/CollatingIterator;->iterators:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 167
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Iterator must not be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getComparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "-TE;>;"
        }
    .end annotation

    .line 204
    iget-object v0, p0, Lorg/apache/commons/collections4/iterators/CollatingIterator;->comparator:Ljava/util/Comparator;

    return-object v0
.end method

.method public getIteratorIndex()I
    .locals 2

    .line 277
    iget v0, p0, Lorg/apache/commons/collections4/iterators/CollatingIterator;->lastReturned:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 278
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No value has been returned yet"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getIterators()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/util/Iterator<",
            "+TE;>;>;"
        }
    .end annotation

    .line 195
    iget-object v0, p0, Lorg/apache/commons/collections4/iterators/CollatingIterator;->iterators:Ljava/util/List;

    invoke-static {v0}, Lorg/apache/commons/collections4/list/UnmodifiableList;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public hasNext()Z
    .locals 1

    .line 231
    invoke-direct {p0}, Lorg/apache/commons/collections4/iterators/CollatingIterator;->start()V

    .line 232
    iget-object v0, p0, Lorg/apache/commons/collections4/iterators/CollatingIterator;->valueSet:Ljava/util/BitSet;

    invoke-direct {p0, v0}, Lorg/apache/commons/collections4/iterators/CollatingIterator;->anyValueSet(Ljava/util/BitSet;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/apache/commons/collections4/iterators/CollatingIterator;->iterators:Ljava/util/List;

    invoke-direct {p0, v0}, Lorg/apache/commons/collections4/iterators/CollatingIterator;->anyHasNext(Ljava/util/List;)Z

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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/NoSuchElementException;
        }
    .end annotation

    .line 243
    invoke-virtual {p0}, Lorg/apache/commons/collections4/iterators/CollatingIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 246
    invoke-direct {p0}, Lorg/apache/commons/collections4/iterators/CollatingIterator;->least()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 250
    iget-object v1, p0, Lorg/apache/commons/collections4/iterators/CollatingIterator;->values:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 251
    invoke-direct {p0, v0}, Lorg/apache/commons/collections4/iterators/CollatingIterator;->clear(I)V

    .line 252
    iput v0, p0, Lorg/apache/commons/collections4/iterators/CollatingIterator;->lastReturned:I

    return-object v1

    .line 248
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 244
    :cond_1
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public remove()V
    .locals 2

    .line 264
    iget v0, p0, Lorg/apache/commons/collections4/iterators/CollatingIterator;->lastReturned:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 267
    iget-object v1, p0, Lorg/apache/commons/collections4/iterators/CollatingIterator;->iterators:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    return-void

    .line 265
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No value can be removed at present"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setComparator(Ljava/util/Comparator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "-TE;>;)V"
        }
    .end annotation

    .line 218
    invoke-direct {p0}, Lorg/apache/commons/collections4/iterators/CollatingIterator;->checkNotStarted()V

    .line 219
    iput-object p1, p0, Lorg/apache/commons/collections4/iterators/CollatingIterator;->comparator:Ljava/util/Comparator;

    return-void
.end method

.method public setIterator(ILjava/util/Iterator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Iterator<",
            "+TE;>;)V"
        }
    .end annotation

    .line 182
    invoke-direct {p0}, Lorg/apache/commons/collections4/iterators/CollatingIterator;->checkNotStarted()V

    if-eqz p2, :cond_0

    .line 186
    iget-object v0, p0, Lorg/apache/commons/collections4/iterators/CollatingIterator;->iterators:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 184
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Iterator must not be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
