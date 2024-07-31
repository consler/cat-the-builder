.class Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap$WrappedCollection;
.super Ljava/lang/Object;
.source "AbstractMultiValuedMap.java"

# interfaces
.implements Ljava/util/Collection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WrappedCollection"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Collection<",
        "TV;>;"
    }
.end annotation


# instance fields
.field protected final key:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap;


# direct methods
.method public constructor <init>(Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap;Ljava/lang/Object;)V
    .locals 0
    .param p1, "this$0"    # Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)V"
        }
    .end annotation

    .line 409
    .local p0, "this":Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap$WrappedCollection;, "Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap<TK;TV;>.WrappedCollection;"
    .local p2, "key":Ljava/lang/Object;, "TK;"
    iput-object p1, p0, Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap$WrappedCollection;->this$0:Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 410
    iput-object p2, p0, Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap$WrappedCollection;->key:Ljava/lang/Object;

    .line 411
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)Z"
        }
    .end annotation

    .line 419
    .local p0, "this":Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap$WrappedCollection;, "Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap<TK;TV;>.WrappedCollection;"
    .local p1, "value":Ljava/lang/Object;, "TV;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap$WrappedCollection;->getMapping()Ljava/util/Collection;

    move-result-object v0

    .line 420
    .local v0, "coll":Ljava/util/Collection;, "Ljava/util/Collection<TV;>;"
    if-nez v0, :cond_0

    .line 421
    iget-object v1, p0, Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap$WrappedCollection;->this$0:Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap;

    invoke-virtual {v1}, Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap;->createCollection()Ljava/util/Collection;

    move-result-object v0

    .line 422
    iget-object v1, p0, Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap$WrappedCollection;->this$0:Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap;

    invoke-static {v1}, Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap;->access$300(Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap;)Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap$WrappedCollection;->key:Ljava/lang/Object;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 424
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TV;>;)Z"
        }
    .end annotation

    .line 429
    .local p0, "this":Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap$WrappedCollection;, "Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap<TK;TV;>.WrappedCollection;"
    .local p1, "other":Ljava/util/Collection;, "Ljava/util/Collection<+TV;>;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap$WrappedCollection;->getMapping()Ljava/util/Collection;

    move-result-object v0

    .line 430
    .local v0, "coll":Ljava/util/Collection;, "Ljava/util/Collection<TV;>;"
    if-nez v0, :cond_0

    .line 431
    iget-object v1, p0, Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap$WrappedCollection;->this$0:Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap;

    invoke-virtual {v1}, Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap;->createCollection()Ljava/util/Collection;

    move-result-object v0

    .line 432
    iget-object v1, p0, Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap$WrappedCollection;->this$0:Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap;

    invoke-static {v1}, Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap;->access$300(Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap;)Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap$WrappedCollection;->key:Ljava/lang/Object;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 434
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    move-result v1

    return v1
.end method

.method public clear()V
    .locals 3

    .line 439
    .local p0, "this":Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap$WrappedCollection;, "Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap<TK;TV;>.WrappedCollection;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap$WrappedCollection;->getMapping()Ljava/util/Collection;

    move-result-object v0

    .line 440
    .local v0, "coll":Ljava/util/Collection;, "Ljava/util/Collection<TV;>;"
    if-eqz v0, :cond_0

    .line 441
    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    .line 442
    iget-object v1, p0, Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap$WrappedCollection;->this$0:Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap;

    iget-object v2, p0, Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap$WrappedCollection;->key:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap;->remove(Ljava/lang/Object;)Ljava/util/Collection;

    .line 444
    :cond_0
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "obj"    # Ljava/lang/Object;

    .line 463
    .local p0, "this":Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap$WrappedCollection;, "Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap<TK;TV;>.WrappedCollection;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap$WrappedCollection;->getMapping()Ljava/util/Collection;

    move-result-object v0

    .line 464
    .local v0, "coll":Ljava/util/Collection;, "Ljava/util/Collection<TV;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 469
    .local p0, "this":Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap$WrappedCollection;, "Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap<TK;TV;>.WrappedCollection;"
    .local p1, "other":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap$WrappedCollection;->getMapping()Ljava/util/Collection;

    move-result-object v0

    .line 470
    .local v0, "coll":Ljava/util/Collection;, "Ljava/util/Collection<TV;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Ljava/util/Collection;->containsAll(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method protected getMapping()Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    .line 414
    .local p0, "this":Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap$WrappedCollection;, "Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap<TK;TV;>.WrappedCollection;"
    iget-object v0, p0, Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap$WrappedCollection;->this$0:Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap;

    invoke-virtual {v0}, Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap;->getMap()Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap$WrappedCollection;->key:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    return-object v0
.end method

.method public isEmpty()Z
    .locals 2

    .line 475
    .local p0, "this":Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap$WrappedCollection;, "Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap<TK;TV;>.WrappedCollection;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap$WrappedCollection;->getMapping()Ljava/util/Collection;

    move-result-object v0

    .line 476
    .local v0, "coll":Ljava/util/Collection;, "Ljava/util/Collection<TV;>;"
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    return v1
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TV;>;"
        }
    .end annotation

    .line 448
    .local p0, "this":Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap$WrappedCollection;, "Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap<TK;TV;>.WrappedCollection;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap$WrappedCollection;->getMapping()Ljava/util/Collection;

    move-result-object v0

    .line 449
    .local v0, "coll":Ljava/util/Collection;, "Ljava/util/Collection<TV;>;"
    if-nez v0, :cond_0

    .line 450
    sget-object v1, Lorg/apache/commons/collections4/IteratorUtils;->EMPTY_ITERATOR:Lorg/apache/commons/collections4/ResettableIterator;

    return-object v1

    .line 452
    :cond_0
    new-instance v1, Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap$ValuesIterator;

    iget-object v2, p0, Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap$WrappedCollection;->this$0:Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap;

    iget-object v3, p0, Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap$WrappedCollection;->key:Ljava/lang/Object;

    invoke-direct {v1, v2, v3}, Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap$ValuesIterator;-><init>(Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap;Ljava/lang/Object;)V

    return-object v1
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "item"    # Ljava/lang/Object;

    .line 481
    .local p0, "this":Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap$WrappedCollection;, "Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap<TK;TV;>.WrappedCollection;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap$WrappedCollection;->getMapping()Ljava/util/Collection;

    move-result-object v0

    .line 482
    .local v0, "coll":Ljava/util/Collection;, "Ljava/util/Collection<TV;>;"
    if-nez v0, :cond_0

    .line 483
    const/4 v1, 0x0

    return v1

    .line 486
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    move-result v1

    .line 487
    .local v1, "result":Z
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 488
    iget-object v2, p0, Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap$WrappedCollection;->this$0:Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap;

    iget-object v3, p0, Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap$WrappedCollection;->key:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap;->remove(Ljava/lang/Object;)Ljava/util/Collection;

    .line 490
    :cond_1
    return v1
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

    .line 495
    .local p0, "this":Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap$WrappedCollection;, "Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap<TK;TV;>.WrappedCollection;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap$WrappedCollection;->getMapping()Ljava/util/Collection;

    move-result-object v0

    .line 496
    .local v0, "coll":Ljava/util/Collection;, "Ljava/util/Collection<TV;>;"
    if-nez v0, :cond_0

    .line 497
    const/4 v1, 0x0

    return v1

    .line 500
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/Collection;->removeAll(Ljava/util/Collection;)Z

    move-result v1

    .line 501
    .local v1, "result":Z
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 502
    iget-object v2, p0, Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap$WrappedCollection;->this$0:Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap;

    iget-object v3, p0, Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap$WrappedCollection;->key:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap;->remove(Ljava/lang/Object;)Ljava/util/Collection;

    .line 504
    :cond_1
    return v1
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

    .line 509
    .local p0, "this":Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap$WrappedCollection;, "Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap<TK;TV;>.WrappedCollection;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap$WrappedCollection;->getMapping()Ljava/util/Collection;

    move-result-object v0

    .line 510
    .local v0, "coll":Ljava/util/Collection;, "Ljava/util/Collection<TV;>;"
    if-nez v0, :cond_0

    .line 511
    const/4 v1, 0x0

    return v1

    .line 514
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/Collection;->retainAll(Ljava/util/Collection;)Z

    move-result v1

    .line 515
    .local v1, "result":Z
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 516
    iget-object v2, p0, Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap$WrappedCollection;->this$0:Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap;

    iget-object v3, p0, Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap$WrappedCollection;->key:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap;->remove(Ljava/lang/Object;)Ljava/util/Collection;

    .line 518
    :cond_1
    return v1
.end method

.method public size()I
    .locals 2

    .line 457
    .local p0, "this":Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap$WrappedCollection;, "Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap<TK;TV;>.WrappedCollection;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap$WrappedCollection;->getMapping()Ljava/util/Collection;

    move-result-object v0

    .line 458
    .local v0, "coll":Ljava/util/Collection;, "Ljava/util/Collection<TV;>;"
    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v1

    :goto_0
    return v1
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 2

    .line 523
    .local p0, "this":Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap$WrappedCollection;, "Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap<TK;TV;>.WrappedCollection;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap$WrappedCollection;->getMapping()Ljava/util/Collection;

    move-result-object v0

    .line 524
    .local v0, "coll":Ljava/util/Collection;, "Ljava/util/Collection<TV;>;"
    if-nez v0, :cond_0

    .line 525
    sget-object v1, Lorg/apache/commons/collections4/CollectionUtils;->EMPTY_COLLECTION:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 527
    :cond_0
    invoke-interface {v0}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .line 533
    .local p0, "this":Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap$WrappedCollection;, "Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap<TK;TV;>.WrappedCollection;"
    .local p1, "a":[Ljava/lang/Object;, "[TT;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap$WrappedCollection;->getMapping()Ljava/util/Collection;

    move-result-object v0

    .line 534
    .local v0, "coll":Ljava/util/Collection;, "Ljava/util/Collection<TV;>;"
    if-nez v0, :cond_0

    .line 535
    sget-object v1, Lorg/apache/commons/collections4/CollectionUtils;->EMPTY_COLLECTION:Ljava/util/Collection;

    invoke-interface {v1, p1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    return-object v1

    .line 537
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 542
    .local p0, "this":Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap$WrappedCollection;, "Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap<TK;TV;>.WrappedCollection;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap$WrappedCollection;->getMapping()Ljava/util/Collection;

    move-result-object v0

    .line 543
    .local v0, "coll":Ljava/util/Collection;, "Ljava/util/Collection<TV;>;"
    if-nez v0, :cond_0

    .line 544
    sget-object v1, Lorg/apache/commons/collections4/CollectionUtils;->EMPTY_COLLECTION:Ljava/util/Collection;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 546
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
