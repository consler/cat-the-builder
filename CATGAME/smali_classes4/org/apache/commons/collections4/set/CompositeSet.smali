.class public Lorg/apache/commons/collections4/set/CompositeSet;
.super Ljava/lang/Object;
.source "CompositeSet.java"

# interfaces
.implements Ljava/util/Set;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/collections4/set/CompositeSet$SetMutator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Set<",
        "TE;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x47f511720dacfd3cL


# instance fields
.field private final all:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/Set<",
            "TE;>;>;"
        }
    .end annotation
.end field

.field private mutator:Lorg/apache/commons/collections4/set/CompositeSet$SetMutator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/collections4/set/CompositeSet$SetMutator<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 68
    .local p0, "this":Lorg/apache/commons/collections4/set/CompositeSet;, "Lorg/apache/commons/collections4/set/CompositeSet<TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/collections4/set/CompositeSet;->all:Ljava/util/List;

    .line 69
    return-void
.end method

.method public constructor <init>(Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "TE;>;)V"
        }
    .end annotation

    .line 77
    .local p0, "this":Lorg/apache/commons/collections4/set/CompositeSet;, "Lorg/apache/commons/collections4/set/CompositeSet<TE;>;"
    .local p1, "set":Ljava/util/Set;, "Ljava/util/Set<TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/collections4/set/CompositeSet;->all:Ljava/util/List;

    .line 78
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections4/set/CompositeSet;->addComposited(Ljava/util/Set;)V

    .line 79
    return-void
.end method

.method public varargs constructor <init>([Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/util/Set<",
            "TE;>;)V"
        }
    .end annotation

    .line 87
    .local p0, "this":Lorg/apache/commons/collections4/set/CompositeSet;, "Lorg/apache/commons/collections4/set/CompositeSet<TE;>;"
    .local p1, "sets":[Ljava/util/Set;, "[Ljava/util/Set<TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/collections4/set/CompositeSet;->all:Ljava/util/List;

    .line 88
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections4/set/CompositeSet;->addComposited([Ljava/util/Set;)V

    .line 89
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 224
    .local p0, "this":Lorg/apache/commons/collections4/set/CompositeSet;, "Lorg/apache/commons/collections4/set/CompositeSet<TE;>;"
    .local p1, "obj":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Lorg/apache/commons/collections4/set/CompositeSet;->mutator:Lorg/apache/commons/collections4/set/CompositeSet$SetMutator;

    if-eqz v0, :cond_0

    .line 228
    iget-object v1, p0, Lorg/apache/commons/collections4/set/CompositeSet;->all:Ljava/util/List;

    invoke-interface {v0, p0, v1, p1}, Lorg/apache/commons/collections4/set/CompositeSet$SetMutator;->add(Lorg/apache/commons/collections4/set/CompositeSet;Ljava/util/List;Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 225
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "add() is not supported on CompositeSet without a SetMutator strategy"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TE;>;)Z"
        }
    .end annotation

    .line 283
    .local p0, "this":Lorg/apache/commons/collections4/set/CompositeSet;, "Lorg/apache/commons/collections4/set/CompositeSet<TE;>;"
    .local p1, "coll":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/set/CompositeSet;->mutator:Lorg/apache/commons/collections4/set/CompositeSet$SetMutator;

    if-eqz v0, :cond_0

    .line 287
    iget-object v1, p0, Lorg/apache/commons/collections4/set/CompositeSet;->all:Ljava/util/List;

    invoke-interface {v0, p0, v1, p1}, Lorg/apache/commons/collections4/set/CompositeSet$SetMutator;->addAll(Lorg/apache/commons/collections4/set/CompositeSet;Ljava/util/List;Ljava/util/Collection;)Z

    move-result v0

    return v0

    .line 284
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "addAll() is not supported on CompositeSet without a SetMutator strategy"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public declared-synchronized addComposited(Ljava/util/Set;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "TE;>;)V"
        }
    .end annotation

    .local p0, "this":Lorg/apache/commons/collections4/set/CompositeSet;, "Lorg/apache/commons/collections4/set/CompositeSet<TE;>;"
    .local p1, "set":Ljava/util/Set;, "Ljava/util/Set<TE;>;"
    monitor-enter p0

    .line 379
    if-eqz p1, :cond_4

    .line 380
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/commons/collections4/set/CompositeSet;->getSets()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    .line 381
    .local v1, "existingSet":Ljava/util/Set;, "Ljava/util/Set<TE;>;"
    invoke-static {v1, p1}, Lorg/apache/commons/collections4/CollectionUtils;->intersection(Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljava/util/Collection;

    move-result-object v2

    .line 382
    .local v2, "intersects":Ljava/util/Collection;, "Ljava/util/Collection<TE;>;"
    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v3

    if-lez v3, :cond_2

    .line 383
    iget-object v3, p0, Lorg/apache/commons/collections4/set/CompositeSet;->mutator:Lorg/apache/commons/collections4/set/CompositeSet$SetMutator;

    if-eqz v3, :cond_1

    .line 387
    invoke-virtual {p0}, Lorg/apache/commons/collections4/set/CompositeSet;->getMutator()Lorg/apache/commons/collections4/set/CompositeSet$SetMutator;

    move-result-object v3

    invoke-interface {v3, p0, v1, p1, v2}, Lorg/apache/commons/collections4/set/CompositeSet$SetMutator;->resolveCollision(Lorg/apache/commons/collections4/set/CompositeSet;Ljava/util/Set;Ljava/util/Set;Ljava/util/Collection;)V

    .line 388
    invoke-static {v1, p1}, Lorg/apache/commons/collections4/CollectionUtils;->intersection(Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->size()I

    move-result v3

    if-gtz v3, :cond_0

    goto :goto_1

    .line 389
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v3, "Attempt to add illegal entry unresolved by SetMutator.resolveCollision()"

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 384
    .end local p0    # "this":Lorg/apache/commons/collections4/set/CompositeSet;, "Lorg/apache/commons/collections4/set/CompositeSet<TE;>;"
    :cond_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v3, "Collision adding composited set with no SetMutator set"

    invoke-direct {v0, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 393
    .end local v1    # "existingSet":Ljava/util/Set;, "Ljava/util/Set<TE;>;"
    .end local v2    # "intersects":Ljava/util/Collection;, "Ljava/util/Collection<TE;>;"
    :cond_2
    :goto_1
    goto :goto_0

    .line 394
    :cond_3
    iget-object v0, p0, Lorg/apache/commons/collections4/set/CompositeSet;->all:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 378
    .end local p1    # "set":Ljava/util/Set;, "Ljava/util/Set<TE;>;"
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    .line 396
    .restart local p1    # "set":Ljava/util/Set;, "Ljava/util/Set<TE;>;"
    :cond_4
    :goto_2
    monitor-exit p0

    return-void
.end method

.method public addComposited(Ljava/util/Set;Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "TE;>;",
            "Ljava/util/Set<",
            "TE;>;)V"
        }
    .end annotation

    .line 405
    .local p0, "this":Lorg/apache/commons/collections4/set/CompositeSet;, "Lorg/apache/commons/collections4/set/CompositeSet<TE;>;"
    .local p1, "set1":Ljava/util/Set;, "Ljava/util/Set<TE;>;"
    .local p2, "set2":Ljava/util/Set;, "Ljava/util/Set<TE;>;"
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections4/set/CompositeSet;->addComposited(Ljava/util/Set;)V

    .line 406
    invoke-virtual {p0, p2}, Lorg/apache/commons/collections4/set/CompositeSet;->addComposited(Ljava/util/Set;)V

    .line 407
    return-void
.end method

.method public varargs addComposited([Ljava/util/Set;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/util/Set<",
            "TE;>;)V"
        }
    .end annotation

    .line 415
    .local p0, "this":Lorg/apache/commons/collections4/set/CompositeSet;, "Lorg/apache/commons/collections4/set/CompositeSet<TE;>;"
    .local p1, "sets":[Ljava/util/Set;, "[Ljava/util/Set<TE;>;"
    if-eqz p1, :cond_0

    .line 416
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 417
    .local v2, "set":Ljava/util/Set;, "Ljava/util/Set<TE;>;"
    invoke-virtual {p0, v2}, Lorg/apache/commons/collections4/set/CompositeSet;->addComposited(Ljava/util/Set;)V

    .line 416
    .end local v2    # "set":Ljava/util/Set;, "Ljava/util/Set<TE;>;"
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 420
    :cond_0
    return-void
.end method

.method public clear()V
    .locals 2

    .line 354
    .local p0, "this":Lorg/apache/commons/collections4/set/CompositeSet;, "Lorg/apache/commons/collections4/set/CompositeSet<TE;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/set/CompositeSet;->all:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    .line 355
    .local v1, "coll":Ljava/util/Collection;, "Ljava/util/Collection<TE;>;"
    invoke-interface {v1}, Ljava/util/Collection;->clear()V

    .line 356
    .end local v1    # "coll":Ljava/util/Collection;, "Ljava/util/Collection<TE;>;"
    goto :goto_0

    .line 357
    :cond_0
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    .line 135
    .local p0, "this":Lorg/apache/commons/collections4/set/CompositeSet;, "Lorg/apache/commons/collections4/set/CompositeSet<TE;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/set/CompositeSet;->all:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    .line 136
    .local v1, "item":Ljava/util/Set;, "Ljava/util/Set<TE;>;"
    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 137
    const/4 v0, 0x1

    return v0

    .line 139
    .end local v1    # "item":Ljava/util/Set;, "Ljava/util/Set<TE;>;"
    :cond_0
    goto :goto_0

    .line 140
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 259
    .local p0, "this":Lorg/apache/commons/collections4/set/CompositeSet;, "Lorg/apache/commons/collections4/set/CompositeSet<TE;>;"
    .local p1, "coll":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 260
    return v0

    .line 262
    :cond_0
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 263
    .local v2, "item":Ljava/lang/Object;
    invoke-virtual {p0, v2}, Lorg/apache/commons/collections4/set/CompositeSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 264
    return v0

    .line 266
    .end local v2    # "item":Ljava/lang/Object;
    :cond_1
    goto :goto_0

    .line 267
    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .line 465
    .local p0, "this":Lorg/apache/commons/collections4/set/CompositeSet;, "Lorg/apache/commons/collections4/set/CompositeSet<TE;>;"
    instance-of v0, p1, Ljava/util/Set;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 466
    move-object v0, p1

    check-cast v0, Ljava/util/Set;

    .line 467
    .local v0, "set":Ljava/util/Set;, "Ljava/util/Set<*>;"
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v2

    invoke-virtual {p0}, Lorg/apache/commons/collections4/set/CompositeSet;->size()I

    move-result v3

    if-ne v2, v3, :cond_0

    invoke-interface {v0, p0}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    .line 469
    .end local v0    # "set":Ljava/util/Set;, "Ljava/util/Set<*>;"
    :cond_1
    return v1
.end method

.method protected getMutator()Lorg/apache/commons/collections4/set/CompositeSet$SetMutator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/collections4/set/CompositeSet$SetMutator<",
            "TE;>;"
        }
    .end annotation

    .line 456
    .local p0, "this":Lorg/apache/commons/collections4/set/CompositeSet;, "Lorg/apache/commons/collections4/set/CompositeSet<TE;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/set/CompositeSet;->mutator:Lorg/apache/commons/collections4/set/CompositeSet$SetMutator;

    return-object v0
.end method

.method public getSets()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/util/Set<",
            "TE;>;>;"
        }
    .end annotation

    .line 448
    .local p0, "this":Lorg/apache/commons/collections4/set/CompositeSet;, "Lorg/apache/commons/collections4/set/CompositeSet<TE;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/set/CompositeSet;->all:Ljava/util/List;

    invoke-static {v0}, Lorg/apache/commons/collections4/list/UnmodifiableList;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .line 478
    .local p0, "this":Lorg/apache/commons/collections4/set/CompositeSet;, "Lorg/apache/commons/collections4/set/CompositeSet<TE;>;"
    const/4 v0, 0x0

    .line 479
    .local v0, "code":I
    invoke-virtual {p0}, Lorg/apache/commons/collections4/set/CompositeSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 480
    .local v2, "e":Ljava/lang/Object;, "TE;"
    if-nez v2, :cond_0

    const/4 v3, 0x0

    goto :goto_1

    :cond_0
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v0, v3

    .line 481
    .end local v2    # "e":Ljava/lang/Object;, "TE;"
    goto :goto_0

    .line 482
    :cond_1
    return v0
.end method

.method public isEmpty()Z
    .locals 3

    .line 117
    .local p0, "this":Lorg/apache/commons/collections4/set/CompositeSet;, "Lorg/apache/commons/collections4/set/CompositeSet<TE;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/set/CompositeSet;->all:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    .line 118
    .local v1, "item":Ljava/util/Set;, "Ljava/util/Set<TE;>;"
    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 119
    const/4 v0, 0x0

    return v0

    .line 121
    .end local v1    # "item":Ljava/util/Set;, "Ljava/util/Set<TE;>;"
    :cond_0
    goto :goto_0

    .line 122
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    .line 155
    .local p0, "this":Lorg/apache/commons/collections4/set/CompositeSet;, "Lorg/apache/commons/collections4/set/CompositeSet<TE;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/set/CompositeSet;->all:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 156
    invoke-static {}, Lorg/apache/commons/collections4/iterators/EmptyIterator;->emptyIterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0

    .line 158
    :cond_0
    new-instance v0, Lorg/apache/commons/collections4/iterators/IteratorChain;

    invoke-direct {v0}, Lorg/apache/commons/collections4/iterators/IteratorChain;-><init>()V

    .line 159
    .local v0, "chain":Lorg/apache/commons/collections4/iterators/IteratorChain;, "Lorg/apache/commons/collections4/iterators/IteratorChain<TE;>;"
    iget-object v1, p0, Lorg/apache/commons/collections4/set/CompositeSet;->all:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    .line 160
    .local v2, "item":Ljava/util/Set;, "Ljava/util/Set<TE;>;"
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/apache/commons/collections4/iterators/IteratorChain;->addIterator(Ljava/util/Iterator;)V

    .line 161
    .end local v2    # "item":Ljava/util/Set;, "Ljava/util/Set<TE;>;"
    goto :goto_0

    .line 162
    :cond_1
    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    .line 240
    .local p0, "this":Lorg/apache/commons/collections4/set/CompositeSet;, "Lorg/apache/commons/collections4/set/CompositeSet<TE;>;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/set/CompositeSet;->getSets()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    .line 241
    .local v1, "set":Ljava/util/Set;, "Ljava/util/Set<TE;>;"
    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 242
    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 244
    .end local v1    # "set":Ljava/util/Set;, "Ljava/util/Set<TE;>;"
    :cond_0
    goto :goto_0

    .line 245
    :cond_1
    const/4 v0, 0x0

    return v0
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

    .line 316
    .local p0, "this":Lorg/apache/commons/collections4/set/CompositeSet;, "Lorg/apache/commons/collections4/set/CompositeSet<TE;>;"
    .local p1, "coll":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-static {p1}, Lorg/apache/commons/collections4/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 317
    const/4 v0, 0x0

    return v0

    .line 319
    :cond_0
    const/4 v0, 0x0

    .line 320
    .local v0, "changed":Z
    iget-object v1, p0, Lorg/apache/commons/collections4/set/CompositeSet;->all:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    .line 321
    .local v2, "item":Ljava/util/Collection;, "Ljava/util/Collection<TE;>;"
    invoke-interface {v2, p1}, Ljava/util/Collection;->removeAll(Ljava/util/Collection;)Z

    move-result v3

    or-int/2addr v0, v3

    .line 322
    .end local v2    # "item":Ljava/util/Collection;, "Ljava/util/Collection<TE;>;"
    goto :goto_0

    .line 323
    :cond_1
    return v0
.end method

.method public removeComposited(Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "TE;>;)V"
        }
    .end annotation

    .line 428
    .local p0, "this":Lorg/apache/commons/collections4/set/CompositeSet;, "Lorg/apache/commons/collections4/set/CompositeSet<TE;>;"
    .local p1, "set":Ljava/util/Set;, "Ljava/util/Set<TE;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/set/CompositeSet;->all:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 429
    return-void
.end method

.method public removeIf(Ljava/util/function/Predicate;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "-TE;>;)Z"
        }
    .end annotation

    .line 295
    .local p0, "this":Lorg/apache/commons/collections4/set/CompositeSet;, "Lorg/apache/commons/collections4/set/CompositeSet<TE;>;"
    .local p1, "filter":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<-TE;>;"
    invoke-static {p1}, L$r8$backportedMethods$utility$Objects$1$isNull;->isNull(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 296
    const/4 v0, 0x0

    return v0

    .line 298
    :cond_0
    const/4 v0, 0x0

    .line 299
    .local v0, "changed":Z
    iget-object v1, p0, Lorg/apache/commons/collections4/set/CompositeSet;->all:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    .line 300
    .local v2, "item":Ljava/util/Collection;, "Ljava/util/Collection<TE;>;"
    invoke-interface {v2, p1}, Ljava/util/Collection;->removeIf(Ljava/util/function/Predicate;)Z

    move-result v3

    or-int/2addr v0, v3

    .line 301
    .end local v2    # "item":Ljava/util/Collection;, "Ljava/util/Collection<TE;>;"
    goto :goto_0

    .line 302
    :cond_1
    return v0
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 338
    .local p0, "this":Lorg/apache/commons/collections4/set/CompositeSet;, "Lorg/apache/commons/collections4/set/CompositeSet<TE;>;"
    .local p1, "coll":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    const/4 v0, 0x0

    .line 339
    .local v0, "changed":Z
    iget-object v1, p0, Lorg/apache/commons/collections4/set/CompositeSet;->all:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    .line 340
    .local v2, "item":Ljava/util/Collection;, "Ljava/util/Collection<TE;>;"
    invoke-interface {v2, p1}, Ljava/util/Collection;->retainAll(Ljava/util/Collection;)Z

    move-result v3

    or-int/2addr v0, v3

    .line 341
    .end local v2    # "item":Ljava/util/Collection;, "Ljava/util/Collection<TE;>;"
    goto :goto_0

    .line 342
    :cond_0
    return v0
.end method

.method public setMutator(Lorg/apache/commons/collections4/set/CompositeSet$SetMutator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/set/CompositeSet$SetMutator<",
            "TE;>;)V"
        }
    .end annotation

    .line 366
    .local p0, "this":Lorg/apache/commons/collections4/set/CompositeSet;, "Lorg/apache/commons/collections4/set/CompositeSet<TE;>;"
    .local p1, "mutator":Lorg/apache/commons/collections4/set/CompositeSet$SetMutator;, "Lorg/apache/commons/collections4/set/CompositeSet$SetMutator<TE;>;"
    iput-object p1, p0, Lorg/apache/commons/collections4/set/CompositeSet;->mutator:Lorg/apache/commons/collections4/set/CompositeSet$SetMutator;

    .line 367
    return-void
.end method

.method public size()I
    .locals 4

    .line 101
    .local p0, "this":Lorg/apache/commons/collections4/set/CompositeSet;, "Lorg/apache/commons/collections4/set/CompositeSet<TE;>;"
    const/4 v0, 0x0

    .line 102
    .local v0, "size":I
    iget-object v1, p0, Lorg/apache/commons/collections4/set/CompositeSet;->all:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    .line 103
    .local v2, "item":Ljava/util/Set;, "Ljava/util/Set<TE;>;"
    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v3

    add-int/2addr v0, v3

    .line 104
    .end local v2    # "item":Ljava/util/Set;, "Ljava/util/Set<TE;>;"
    goto :goto_0

    .line 105
    :cond_0
    return v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 4

    .line 172
    .local p0, "this":Lorg/apache/commons/collections4/set/CompositeSet;, "Lorg/apache/commons/collections4/set/CompositeSet<TE;>;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/set/CompositeSet;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/Object;

    .line 173
    .local v0, "result":[Ljava/lang/Object;
    const/4 v1, 0x0

    .line 174
    .local v1, "i":I
    invoke-virtual {p0}, Lorg/apache/commons/collections4/set/CompositeSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<TE;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 175
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v0, v1

    .line 174
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 177
    .end local v2    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<TE;>;"
    :cond_0
    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .line 191
    .local p0, "this":Lorg/apache/commons/collections4/set/CompositeSet;, "Lorg/apache/commons/collections4/set/CompositeSet<TE;>;"
    .local p1, "array":[Ljava/lang/Object;, "[TT;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/set/CompositeSet;->size()I

    move-result v0

    .line 192
    .local v0, "size":I
    const/4 v1, 0x0

    .line 193
    .local v1, "result":[Ljava/lang/Object;
    array-length v2, p1

    if-lt v2, v0, :cond_0

    .line 194
    move-object v1, p1

    goto :goto_0

    .line 196
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Object;

    move-object v1, v2

    check-cast v1, [Ljava/lang/Object;

    .line 199
    :goto_0
    const/4 v2, 0x0

    .line 200
    .local v2, "offset":I
    iget-object v3, p0, Lorg/apache/commons/collections4/set/CompositeSet;->all:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Collection;

    .line 201
    .local v4, "item":Ljava/util/Collection;, "Ljava/util/Collection<TE;>;"
    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 202
    .local v6, "e":Ljava/lang/Object;, "TE;"
    add-int/lit8 v7, v2, 0x1

    .end local v2    # "offset":I
    .local v7, "offset":I
    aput-object v6, v1, v2

    .line 203
    .end local v6    # "e":Ljava/lang/Object;, "TE;"
    move v2, v7

    goto :goto_2

    .line 204
    .end local v4    # "item":Ljava/util/Collection;, "Ljava/util/Collection<TE;>;"
    .end local v7    # "offset":I
    .restart local v2    # "offset":I
    :cond_1
    goto :goto_1

    .line 205
    :cond_2
    array-length v3, v1

    if-le v3, v0, :cond_3

    .line 206
    const/4 v3, 0x0

    aput-object v3, v1, v0

    .line 208
    :cond_3
    move-object v3, v1

    check-cast v3, [Ljava/lang/Object;

    return-object v3
.end method

.method public toSet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TE;>;"
        }
    .end annotation

    .line 439
    .local p0, "this":Lorg/apache/commons/collections4/set/CompositeSet;, "Lorg/apache/commons/collections4/set/CompositeSet<TE;>;"
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, p0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method
