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

    .line 70
    .local p0, "this":Lorg/apache/commons/collections4/iterators/CollatingIterator;, "Lorg/apache/commons/collections4/iterators/CollatingIterator<TE;>;"
    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/collections4/iterators/CollatingIterator;-><init>(Ljava/util/Comparator;I)V

    .line 71
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

    .line 82
    .local p0, "this":Lorg/apache/commons/collections4/iterators/CollatingIterator;, "Lorg/apache/commons/collections4/iterators/CollatingIterator<TE;>;"
    .local p1, "comp":Ljava/util/Comparator;, "Ljava/util/Comparator<-TE;>;"
    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/collections4/iterators/CollatingIterator;-><init>(Ljava/util/Comparator;I)V

    .line 83
    return-void
.end method

.method public constructor <init>(Ljava/util/Comparator;I)V
    .locals 1
    .param p2, "initIterCapacity"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "-TE;>;I)V"
        }
    .end annotation

    .line 96
    .local p0, "this":Lorg/apache/commons/collections4/iterators/CollatingIterator;, "Lorg/apache/commons/collections4/iterators/CollatingIterator<TE;>;"
    .local p1, "comp":Ljava/util/Comparator;, "Ljava/util/Comparator<-TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/collections4/iterators/CollatingIterator;->comparator:Ljava/util/Comparator;

    .line 46
    iput-object v0, p0, Lorg/apache/commons/collections4/iterators/CollatingIterator;->iterators:Ljava/util/List;

    .line 49
    iput-object v0, p0, Lorg/apache/commons/collections4/iterators/CollatingIterator;->values:Ljava/util/List;

    .line 52
    iput-object v0, p0, Lorg/apache/commons/collections4/iterators/CollatingIterator;->valueSet:Ljava/util/BitSet;

    .line 58
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/commons/collections4/iterators/CollatingIterator;->lastReturned:I

    .line 97
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/apache/commons/collections4/iterators/CollatingIterator;->iterators:Ljava/util/List;

    .line 98
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections4/iterators/CollatingIterator;->setComparator(Ljava/util/Comparator;)V

    .line 99
    return-void
.end method

.method public constructor <init>(Ljava/util/Comparator;Ljava/util/Collection;)V
    .locals 2
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
    .local p0, "this":Lorg/apache/commons/collections4/iterators/CollatingIterator;, "Lorg/apache/commons/collections4/iterators/CollatingIterator<TE;>;"
    .local p1, "comp":Ljava/util/Comparator;, "Ljava/util/Comparator<-TE;>;"
    .local p2, "iterators":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/Iterator<+TE;>;>;"
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/collections4/iterators/CollatingIterator;-><init>(Ljava/util/Comparator;I)V

    .line 150
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Iterator;

    .line 151
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<+TE;>;"
    invoke-virtual {p0, v1}, Lorg/apache/commons/collections4/iterators/CollatingIterator;->addIterator(Ljava/util/Iterator;)V

    .line 152
    .end local v1    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<+TE;>;"
    goto :goto_0

    .line 153
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

    .line 114
    .local p0, "this":Lorg/apache/commons/collections4/iterators/CollatingIterator;, "Lorg/apache/commons/collections4/iterators/CollatingIterator<TE;>;"
    .local p1, "comp":Ljava/util/Comparator;, "Ljava/util/Comparator<-TE;>;"
    .local p2, "a":Ljava/util/Iterator;, "Ljava/util/Iterator<+TE;>;"
    .local p3, "b":Ljava/util/Iterator;, "Ljava/util/Iterator<+TE;>;"
    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/collections4/iterators/CollatingIterator;-><init>(Ljava/util/Comparator;I)V

    .line 115
    invoke-virtual {p0, p2}, Lorg/apache/commons/collections4/iterators/CollatingIterator;->addIterator(Ljava/util/Iterator;)V

    .line 116
    invoke-virtual {p0, p3}, Lorg/apache/commons/collections4/iterators/CollatingIterator;->addIterator(Ljava/util/Iterator;)V

    .line 117
    return-void
.end method

.method public constructor <init>(Ljava/util/Comparator;[Ljava/util/Iterator;)V
    .locals 3
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
    .local p0, "this":Lorg/apache/commons/collections4/iterators/CollatingIterator;, "Lorg/apache/commons/collections4/iterators/CollatingIterator<TE;>;"
    .local p1, "comp":Ljava/util/Comparator;, "Ljava/util/Comparator<-TE;>;"
    .local p2, "iterators":[Ljava/util/Iterator;, "[Ljava/util/Iterator<+TE;>;"
    array-length v0, p2

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/collections4/iterators/CollatingIterator;-><init>(Ljava/util/Comparator;I)V

    .line 131
    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p2, v1

    .line 132
    .local v2, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<+TE;>;"
    invoke-virtual {p0, v2}, Lorg/apache/commons/collections4/iterators/CollatingIterator;->addIterator(Ljava/util/Iterator;)V

    .line 131
    .end local v2    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<+TE;>;"
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 134
    :cond_0
    return-void
.end method

.method private anyHasNext(Ljava/util/List;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/Iterator<",
            "+TE;>;>;)Z"
        }
    .end annotation

    .line 391
    .local p0, "this":Lorg/apache/commons/collections4/iterators/CollatingIterator;, "Lorg/apache/commons/collections4/iterators/CollatingIterator<TE;>;"
    .local p1, "iters":Ljava/util/List;, "Ljava/util/List<Ljava/util/Iterator<+TE;>;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Iterator;

    .line 392
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<+TE;>;"
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 393
    const/4 v0, 0x1

    return v0

    .line 395
    .end local v1    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<+TE;>;"
    :cond_0
    goto :goto_0

    .line 396
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private anyValueSet(Ljava/util/BitSet;)Z
    .locals 2
    .param p1, "set"    # Ljava/util/BitSet;

    .line 378
    .local p0, "this":Lorg/apache/commons/collections4/iterators/CollatingIterator;, "Lorg/apache/commons/collections4/iterators/CollatingIterator<TE;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/util/BitSet;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 379
    invoke-virtual {p1, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 380
    const/4 v1, 0x1

    return v1

    .line 378
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 383
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

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
    .local p0, "this":Lorg/apache/commons/collections4/iterators/CollatingIterator;, "Lorg/apache/commons/collections4/iterators/CollatingIterator<TE;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/iterators/CollatingIterator;->values:Ljava/util/List;

    if-nez v0, :cond_0

    .line 339
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
    .param p1, "i"    # I

    .line 325
    .local p0, "this":Lorg/apache/commons/collections4/iterators/CollatingIterator;, "Lorg/apache/commons/collections4/iterators/CollatingIterator<TE;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/iterators/CollatingIterator;->values:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 326
    iget-object v0, p0, Lorg/apache/commons/collections4/iterators/CollatingIterator;->valueSet:Ljava/util/BitSet;

    invoke-virtual {v0, p1}, Ljava/util/BitSet;->clear(I)V

    .line 327
    return-void
.end method

.method private least()I
    .locals 6

    .line 348
    .local p0, "this":Lorg/apache/commons/collections4/iterators/CollatingIterator;, "Lorg/apache/commons/collections4/iterators/CollatingIterator<TE;>;"
    const/4 v0, -0x1

    .line 349
    .local v0, "leastIndex":I
    const/4 v1, 0x0

    .line 350
    .local v1, "leastObject":Ljava/lang/Object;, "TE;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lorg/apache/commons/collections4/iterators/CollatingIterator;->values:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 351
    iget-object v3, p0, Lorg/apache/commons/collections4/iterators/CollatingIterator;->valueSet:Ljava/util/BitSet;

    invoke-virtual {v3, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 352
    invoke-direct {p0, v2}, Lorg/apache/commons/collections4/iterators/CollatingIterator;->set(I)Z

    .line 354
    :cond_0
    iget-object v3, p0, Lorg/apache/commons/collections4/iterators/CollatingIterator;->valueSet:Ljava/util/BitSet;

    invoke-virtual {v3, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 355
    const/4 v3, -0x1

    if-ne v0, v3, :cond_1

    .line 356
    move v0, v2

    .line 357
    iget-object v3, p0, Lorg/apache/commons/collections4/iterators/CollatingIterator;->values:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    goto :goto_1

    .line 359
    :cond_1
    iget-object v3, p0, Lorg/apache/commons/collections4/iterators/CollatingIterator;->values:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 360
    .local v3, "curObject":Ljava/lang/Object;, "TE;"
    iget-object v4, p0, Lorg/apache/commons/collections4/iterators/CollatingIterator;->comparator:Ljava/util/Comparator;

    if-eqz v4, :cond_2

    .line 363
    invoke-interface {v4, v3, v1}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v4

    if-gez v4, :cond_3

    .line 364
    move-object v1, v3

    .line 365
    move v0, v2

    goto :goto_1

    .line 361
    :cond_2
    new-instance v4, Ljava/lang/NullPointerException;

    const-string v5, "You must invoke setComparator() to set a comparator first."

    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 350
    .end local v3    # "curObject":Ljava/lang/Object;, "TE;"
    :cond_3
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 370
    .end local v2    # "i":I
    :cond_4
    return v0
.end method

.method private set(I)Z
    .locals 3
    .param p1, "i"    # I

    .line 309
    .local p0, "this":Lorg/apache/commons/collections4/iterators/CollatingIterator;, "Lorg/apache/commons/collections4/iterators/CollatingIterator<TE;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/iterators/CollatingIterator;->iterators:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Iterator;

    .line 310
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<+TE;>;"
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 311
    iget-object v1, p0, Lorg/apache/commons/collections4/iterators/CollatingIterator;->values:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 312
    iget-object v1, p0, Lorg/apache/commons/collections4/iterators/CollatingIterator;->valueSet:Ljava/util/BitSet;

    invoke-virtual {v1, p1}, Ljava/util/BitSet;->set(I)V

    .line 313
    const/4 v1, 0x1

    return v1

    .line 315
    :cond_0
    iget-object v1, p0, Lorg/apache/commons/collections4/iterators/CollatingIterator;->values:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, p1, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 316
    iget-object v1, p0, Lorg/apache/commons/collections4/iterators/CollatingIterator;->valueSet:Ljava/util/BitSet;

    invoke-virtual {v1, p1}, Ljava/util/BitSet;->clear(I)V

    .line 317
    const/4 v1, 0x0

    return v1
.end method

.method private start()V
    .locals 3

    .line 290
    .local p0, "this":Lorg/apache/commons/collections4/iterators/CollatingIterator;, "Lorg/apache/commons/collections4/iterators/CollatingIterator<TE;>;"
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

    .line 293
    const/4 v0, 0x0

    .local v0, "i":I
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

    .line 293
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 298
    .end local v0    # "i":I
    :cond_0
    return-void
.end method


# virtual methods
.method public addIterator(Ljava/util/Iterator;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "+TE;>;)V"
        }
    .end annotation

    .line 165
    .local p0, "this":Lorg/apache/commons/collections4/iterators/CollatingIterator;, "Lorg/apache/commons/collections4/iterators/CollatingIterator<TE;>;"
    .local p1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<+TE;>;"
    invoke-direct {p0}, Lorg/apache/commons/collections4/iterators/CollatingIterator;->checkNotStarted()V

    .line 166
    if-eqz p1, :cond_0

    .line 169
    iget-object v0, p0, Lorg/apache/commons/collections4/iterators/CollatingIterator;->iterators:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 170
    return-void

    .line 167
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Iterator must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
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
    .local p0, "this":Lorg/apache/commons/collections4/iterators/CollatingIterator;, "Lorg/apache/commons/collections4/iterators/CollatingIterator<TE;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/iterators/CollatingIterator;->comparator:Ljava/util/Comparator;

    return-object v0
.end method

.method public getIteratorIndex()I
    .locals 2

    .line 277
    .local p0, "this":Lorg/apache/commons/collections4/iterators/CollatingIterator;, "Lorg/apache/commons/collections4/iterators/CollatingIterator<TE;>;"
    iget v0, p0, Lorg/apache/commons/collections4/iterators/CollatingIterator;->lastReturned:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 281
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
    .local p0, "this":Lorg/apache/commons/collections4/iterators/CollatingIterator;, "Lorg/apache/commons/collections4/iterators/CollatingIterator<TE;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/iterators/CollatingIterator;->iterators:Ljava/util/List;

    invoke-static {v0}, Lorg/apache/commons/collections4/list/UnmodifiableList;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public hasNext()Z
    .locals 1

    .line 231
    .local p0, "this":Lorg/apache/commons/collections4/iterators/CollatingIterator;, "Lorg/apache/commons/collections4/iterators/CollatingIterator<TE;>;"
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
    .local p0, "this":Lorg/apache/commons/collections4/iterators/CollatingIterator;, "Lorg/apache/commons/collections4/iterators/CollatingIterator<TE;>;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/iterators/CollatingIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 246
    invoke-direct {p0}, Lorg/apache/commons/collections4/iterators/CollatingIterator;->least()I

    move-result v0

    .line 247
    .local v0, "leastIndex":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 250
    iget-object v1, p0, Lorg/apache/commons/collections4/iterators/CollatingIterator;->values:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 251
    .local v1, "val":Ljava/lang/Object;, "TE;"
    invoke-direct {p0, v0}, Lorg/apache/commons/collections4/iterators/CollatingIterator;->clear(I)V

    .line 252
    iput v0, p0, Lorg/apache/commons/collections4/iterators/CollatingIterator;->lastReturned:I

    .line 253
    return-object v1

    .line 248
    .end local v1    # "val":Ljava/lang/Object;, "TE;"
    :cond_0
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1

    .line 244
    .end local v0    # "leastIndex":I
    :cond_1
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public remove()V
    .locals 2

    .line 264
    .local p0, "this":Lorg/apache/commons/collections4/iterators/CollatingIterator;, "Lorg/apache/commons/collections4/iterators/CollatingIterator<TE;>;"
    iget v0, p0, Lorg/apache/commons/collections4/iterators/CollatingIterator;->lastReturned:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 267
    iget-object v1, p0, Lorg/apache/commons/collections4/iterators/CollatingIterator;->iterators:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 268
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
    .local p0, "this":Lorg/apache/commons/collections4/iterators/CollatingIterator;, "Lorg/apache/commons/collections4/iterators/CollatingIterator<TE;>;"
    .local p1, "comp":Ljava/util/Comparator;, "Ljava/util/Comparator<-TE;>;"
    invoke-direct {p0}, Lorg/apache/commons/collections4/iterators/CollatingIterator;->checkNotStarted()V

    .line 219
    iput-object p1, p0, Lorg/apache/commons/collections4/iterators/CollatingIterator;->comparator:Ljava/util/Comparator;

    .line 220
    return-void
.end method

.method public setIterator(ILjava/util/Iterator;)V
    .locals 2
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Iterator<",
            "+TE;>;)V"
        }
    .end annotation

    .line 182
    .local p0, "this":Lorg/apache/commons/collections4/iterators/CollatingIterator;, "Lorg/apache/commons/collections4/iterators/CollatingIterator<TE;>;"
    .local p2, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<+TE;>;"
    invoke-direct {p0}, Lorg/apache/commons/collections4/iterators/CollatingIterator;->checkNotStarted()V

    .line 183
    if-eqz p2, :cond_0

    .line 186
    iget-object v0, p0, Lorg/apache/commons/collections4/iterators/CollatingIterator;->iterators:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 187
    return-void

    .line 184
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Iterator must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
