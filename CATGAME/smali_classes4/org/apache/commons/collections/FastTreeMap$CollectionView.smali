.class abstract Lorg/apache/commons/collections/FastTreeMap$CollectionView;
.super Ljava/lang/Object;
.source "FastTreeMap.java"

# interfaces
.implements Ljava/util/Collection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections/FastTreeMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "CollectionView"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/collections/FastTreeMap$CollectionView$CollectionViewIterator;
    }
.end annotation


# instance fields
.field private final synthetic this$0:Lorg/apache/commons/collections/FastTreeMap;


# direct methods
.method public constructor <init>(Lorg/apache/commons/collections/FastTreeMap;)V
    .locals 0

    .line 573
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/collections/FastTreeMap$CollectionView;->this$0:Lorg/apache/commons/collections/FastTreeMap;

    .line 574
    return-void
.end method

.method static synthetic access$300(Lorg/apache/commons/collections/FastTreeMap$CollectionView;)Lorg/apache/commons/collections/FastTreeMap;
    .locals 1
    .param p0, "x0"    # Lorg/apache/commons/collections/FastTreeMap$CollectionView;

    .line 571
    iget-object v0, p0, Lorg/apache/commons/collections/FastTreeMap$CollectionView;->this$0:Lorg/apache/commons/collections/FastTreeMap;

    return-object v0
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .line 721
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 1
    .param p1, "c"    # Ljava/util/Collection;

    .line 725
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public clear()V
    .locals 3

    .line 581
    iget-object v0, p0, Lorg/apache/commons/collections/FastTreeMap$CollectionView;->this$0:Lorg/apache/commons/collections/FastTreeMap;

    iget-boolean v0, v0, Lorg/apache/commons/collections/FastTreeMap;->fast:Z

    if-eqz v0, :cond_0

    .line 582
    iget-object v0, p0, Lorg/apache/commons/collections/FastTreeMap$CollectionView;->this$0:Lorg/apache/commons/collections/FastTreeMap;

    monitor-enter v0

    .line 583
    :try_start_0
    iget-object v1, p0, Lorg/apache/commons/collections/FastTreeMap$CollectionView;->this$0:Lorg/apache/commons/collections/FastTreeMap;

    new-instance v2, Ljava/util/TreeMap;

    invoke-direct {v2}, Ljava/util/TreeMap;-><init>()V

    iput-object v2, v1, Lorg/apache/commons/collections/FastTreeMap;->map:Ljava/util/TreeMap;

    .line 584
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 586
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections/FastTreeMap$CollectionView;->this$0:Lorg/apache/commons/collections/FastTreeMap;

    iget-object v0, v0, Lorg/apache/commons/collections/FastTreeMap;->map:Ljava/util/TreeMap;

    monitor-enter v0

    .line 587
    :try_start_1
    iget-object v1, p0, Lorg/apache/commons/collections/FastTreeMap$CollectionView;->this$0:Lorg/apache/commons/collections/FastTreeMap;

    iget-object v1, v1, Lorg/apache/commons/collections/FastTreeMap;->map:Ljava/util/TreeMap;

    invoke-virtual {p0, v1}, Lorg/apache/commons/collections/FastTreeMap$CollectionView;->get(Ljava/util/Map;)Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->clear()V

    .line 588
    monitor-exit v0

    .line 590
    :goto_0
    return-void

    .line 588
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v1
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .line 659
    iget-object v0, p0, Lorg/apache/commons/collections/FastTreeMap$CollectionView;->this$0:Lorg/apache/commons/collections/FastTreeMap;

    iget-boolean v0, v0, Lorg/apache/commons/collections/FastTreeMap;->fast:Z

    if-eqz v0, :cond_0

    .line 660
    iget-object v0, p0, Lorg/apache/commons/collections/FastTreeMap$CollectionView;->this$0:Lorg/apache/commons/collections/FastTreeMap;

    iget-object v0, v0, Lorg/apache/commons/collections/FastTreeMap;->map:Ljava/util/TreeMap;

    invoke-virtual {p0, v0}, Lorg/apache/commons/collections/FastTreeMap$CollectionView;->get(Ljava/util/Map;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 662
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections/FastTreeMap$CollectionView;->this$0:Lorg/apache/commons/collections/FastTreeMap;

    iget-object v0, v0, Lorg/apache/commons/collections/FastTreeMap;->map:Ljava/util/TreeMap;

    monitor-enter v0

    .line 663
    :try_start_0
    iget-object v1, p0, Lorg/apache/commons/collections/FastTreeMap$CollectionView;->this$0:Lorg/apache/commons/collections/FastTreeMap;

    iget-object v1, v1, Lorg/apache/commons/collections/FastTreeMap;->map:Ljava/util/TreeMap;

    invoke-virtual {p0, v1}, Lorg/apache/commons/collections/FastTreeMap$CollectionView;->get(Ljava/util/Map;)Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 664
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 2
    .param p1, "o"    # Ljava/util/Collection;

    .line 669
    iget-object v0, p0, Lorg/apache/commons/collections/FastTreeMap$CollectionView;->this$0:Lorg/apache/commons/collections/FastTreeMap;

    iget-boolean v0, v0, Lorg/apache/commons/collections/FastTreeMap;->fast:Z

    if-eqz v0, :cond_0

    .line 670
    iget-object v0, p0, Lorg/apache/commons/collections/FastTreeMap$CollectionView;->this$0:Lorg/apache/commons/collections/FastTreeMap;

    iget-object v0, v0, Lorg/apache/commons/collections/FastTreeMap;->map:Ljava/util/TreeMap;

    invoke-virtual {p0, v0}, Lorg/apache/commons/collections/FastTreeMap$CollectionView;->get(Ljava/util/Map;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Collection;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    return v0

    .line 672
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections/FastTreeMap$CollectionView;->this$0:Lorg/apache/commons/collections/FastTreeMap;

    iget-object v0, v0, Lorg/apache/commons/collections/FastTreeMap;->map:Ljava/util/TreeMap;

    monitor-enter v0

    .line 673
    :try_start_0
    iget-object v1, p0, Lorg/apache/commons/collections/FastTreeMap$CollectionView;->this$0:Lorg/apache/commons/collections/FastTreeMap;

    iget-object v1, v1, Lorg/apache/commons/collections/FastTreeMap;->map:Ljava/util/TreeMap;

    invoke-virtual {p0, v1}, Lorg/apache/commons/collections/FastTreeMap$CollectionView;->get(Ljava/util/Map;)Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Collection;->containsAll(Ljava/util/Collection;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 674
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .line 700
    if-ne p1, p0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 701
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections/FastTreeMap$CollectionView;->this$0:Lorg/apache/commons/collections/FastTreeMap;

    iget-boolean v0, v0, Lorg/apache/commons/collections/FastTreeMap;->fast:Z

    if-eqz v0, :cond_1

    .line 702
    iget-object v0, p0, Lorg/apache/commons/collections/FastTreeMap$CollectionView;->this$0:Lorg/apache/commons/collections/FastTreeMap;

    iget-object v0, v0, Lorg/apache/commons/collections/FastTreeMap;->map:Ljava/util/TreeMap;

    invoke-virtual {p0, v0}, Lorg/apache/commons/collections/FastTreeMap$CollectionView;->get(Ljava/util/Map;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Collection;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 704
    :cond_1
    iget-object v0, p0, Lorg/apache/commons/collections/FastTreeMap$CollectionView;->this$0:Lorg/apache/commons/collections/FastTreeMap;

    iget-object v0, v0, Lorg/apache/commons/collections/FastTreeMap;->map:Ljava/util/TreeMap;

    monitor-enter v0

    .line 705
    :try_start_0
    iget-object v1, p0, Lorg/apache/commons/collections/FastTreeMap$CollectionView;->this$0:Lorg/apache/commons/collections/FastTreeMap;

    iget-object v1, v1, Lorg/apache/commons/collections/FastTreeMap;->map:Ljava/util/TreeMap;

    invoke-virtual {p0, v1}, Lorg/apache/commons/collections/FastTreeMap$CollectionView;->get(Ljava/util/Map;)Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Collection;->equals(Ljava/lang/Object;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 706
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected abstract get(Ljava/util/Map;)Ljava/util/Collection;
.end method

.method public hashCode()I
    .locals 2

    .line 711
    iget-object v0, p0, Lorg/apache/commons/collections/FastTreeMap$CollectionView;->this$0:Lorg/apache/commons/collections/FastTreeMap;

    iget-boolean v0, v0, Lorg/apache/commons/collections/FastTreeMap;->fast:Z

    if-eqz v0, :cond_0

    .line 712
    iget-object v0, p0, Lorg/apache/commons/collections/FastTreeMap$CollectionView;->this$0:Lorg/apache/commons/collections/FastTreeMap;

    iget-object v0, v0, Lorg/apache/commons/collections/FastTreeMap;->map:Ljava/util/TreeMap;

    invoke-virtual {p0, v0}, Lorg/apache/commons/collections/FastTreeMap$CollectionView;->get(Ljava/util/Map;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->hashCode()I

    move-result v0

    return v0

    .line 714
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections/FastTreeMap$CollectionView;->this$0:Lorg/apache/commons/collections/FastTreeMap;

    iget-object v0, v0, Lorg/apache/commons/collections/FastTreeMap;->map:Ljava/util/TreeMap;

    monitor-enter v0

    .line 715
    :try_start_0
    iget-object v1, p0, Lorg/apache/commons/collections/FastTreeMap$CollectionView;->this$0:Lorg/apache/commons/collections/FastTreeMap;

    iget-object v1, v1, Lorg/apache/commons/collections/FastTreeMap;->map:Ljava/util/TreeMap;

    invoke-virtual {p0, v1}, Lorg/apache/commons/collections/FastTreeMap$CollectionView;->get(Ljava/util/Map;)Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->hashCode()I

    move-result v1

    monitor-exit v0

    return v1

    .line 716
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isEmpty()Z
    .locals 2

    .line 649
    iget-object v0, p0, Lorg/apache/commons/collections/FastTreeMap$CollectionView;->this$0:Lorg/apache/commons/collections/FastTreeMap;

    iget-boolean v0, v0, Lorg/apache/commons/collections/FastTreeMap;->fast:Z

    if-eqz v0, :cond_0

    .line 650
    iget-object v0, p0, Lorg/apache/commons/collections/FastTreeMap$CollectionView;->this$0:Lorg/apache/commons/collections/FastTreeMap;

    iget-object v0, v0, Lorg/apache/commons/collections/FastTreeMap;->map:Ljava/util/TreeMap;

    invoke-virtual {p0, v0}, Lorg/apache/commons/collections/FastTreeMap$CollectionView;->get(Ljava/util/Map;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    return v0

    .line 652
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections/FastTreeMap$CollectionView;->this$0:Lorg/apache/commons/collections/FastTreeMap;

    iget-object v0, v0, Lorg/apache/commons/collections/FastTreeMap;->map:Ljava/util/TreeMap;

    monitor-enter v0

    .line 653
    :try_start_0
    iget-object v1, p0, Lorg/apache/commons/collections/FastTreeMap$CollectionView;->this$0:Lorg/apache/commons/collections/FastTreeMap;

    iget-object v1, v1, Lorg/apache/commons/collections/FastTreeMap;->map:Ljava/util/TreeMap;

    invoke-virtual {p0, v1}, Lorg/apache/commons/collections/FastTreeMap$CollectionView;->get(Ljava/util/Map;)Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    monitor-exit v0

    return v1

    .line 654
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1

    .line 729
    new-instance v0, Lorg/apache/commons/collections/FastTreeMap$CollectionView$CollectionViewIterator;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections/FastTreeMap$CollectionView$CollectionViewIterator;-><init>(Lorg/apache/commons/collections/FastTreeMap$CollectionView;)V

    return-object v0
.end method

.method protected abstract iteratorNext(Ljava/util/Map$Entry;)Ljava/lang/Object;
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .line 593
    iget-object v0, p0, Lorg/apache/commons/collections/FastTreeMap$CollectionView;->this$0:Lorg/apache/commons/collections/FastTreeMap;

    iget-boolean v0, v0, Lorg/apache/commons/collections/FastTreeMap;->fast:Z

    if-eqz v0, :cond_0

    .line 594
    iget-object v0, p0, Lorg/apache/commons/collections/FastTreeMap$CollectionView;->this$0:Lorg/apache/commons/collections/FastTreeMap;

    monitor-enter v0

    .line 595
    :try_start_0
    iget-object v1, p0, Lorg/apache/commons/collections/FastTreeMap$CollectionView;->this$0:Lorg/apache/commons/collections/FastTreeMap;

    iget-object v1, v1, Lorg/apache/commons/collections/FastTreeMap;->map:Ljava/util/TreeMap;

    invoke-virtual {v1}, Ljava/util/TreeMap;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/TreeMap;

    .line 596
    .local v1, "temp":Ljava/util/TreeMap;
    invoke-virtual {p0, v1}, Lorg/apache/commons/collections/FastTreeMap$CollectionView;->get(Ljava/util/Map;)Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    move-result v2

    .line 597
    .local v2, "r":Z
    iget-object v3, p0, Lorg/apache/commons/collections/FastTreeMap$CollectionView;->this$0:Lorg/apache/commons/collections/FastTreeMap;

    iput-object v1, v3, Lorg/apache/commons/collections/FastTreeMap;->map:Ljava/util/TreeMap;

    .line 598
    monitor-exit v0

    return v2

    .line 599
    .end local v1    # "temp":Ljava/util/TreeMap;
    .end local v2    # "r":Z
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 601
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections/FastTreeMap$CollectionView;->this$0:Lorg/apache/commons/collections/FastTreeMap;

    iget-object v0, v0, Lorg/apache/commons/collections/FastTreeMap;->map:Ljava/util/TreeMap;

    monitor-enter v0

    .line 602
    :try_start_1
    iget-object v1, p0, Lorg/apache/commons/collections/FastTreeMap$CollectionView;->this$0:Lorg/apache/commons/collections/FastTreeMap;

    iget-object v1, v1, Lorg/apache/commons/collections/FastTreeMap;->map:Ljava/util/TreeMap;

    invoke-virtual {p0, v1}, Lorg/apache/commons/collections/FastTreeMap$CollectionView;->get(Ljava/util/Map;)Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 603
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v1
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 4
    .param p1, "o"    # Ljava/util/Collection;

    .line 608
    iget-object v0, p0, Lorg/apache/commons/collections/FastTreeMap$CollectionView;->this$0:Lorg/apache/commons/collections/FastTreeMap;

    iget-boolean v0, v0, Lorg/apache/commons/collections/FastTreeMap;->fast:Z

    if-eqz v0, :cond_0

    .line 609
    iget-object v0, p0, Lorg/apache/commons/collections/FastTreeMap$CollectionView;->this$0:Lorg/apache/commons/collections/FastTreeMap;

    monitor-enter v0

    .line 610
    :try_start_0
    iget-object v1, p0, Lorg/apache/commons/collections/FastTreeMap$CollectionView;->this$0:Lorg/apache/commons/collections/FastTreeMap;

    iget-object v1, v1, Lorg/apache/commons/collections/FastTreeMap;->map:Ljava/util/TreeMap;

    invoke-virtual {v1}, Ljava/util/TreeMap;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/TreeMap;

    .line 611
    .local v1, "temp":Ljava/util/TreeMap;
    invoke-virtual {p0, v1}, Lorg/apache/commons/collections/FastTreeMap$CollectionView;->get(Ljava/util/Map;)Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/Collection;->removeAll(Ljava/util/Collection;)Z

    move-result v2

    .line 612
    .local v2, "r":Z
    iget-object v3, p0, Lorg/apache/commons/collections/FastTreeMap$CollectionView;->this$0:Lorg/apache/commons/collections/FastTreeMap;

    iput-object v1, v3, Lorg/apache/commons/collections/FastTreeMap;->map:Ljava/util/TreeMap;

    .line 613
    monitor-exit v0

    return v2

    .line 614
    .end local v1    # "temp":Ljava/util/TreeMap;
    .end local v2    # "r":Z
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 616
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections/FastTreeMap$CollectionView;->this$0:Lorg/apache/commons/collections/FastTreeMap;

    iget-object v0, v0, Lorg/apache/commons/collections/FastTreeMap;->map:Ljava/util/TreeMap;

    monitor-enter v0

    .line 617
    :try_start_1
    iget-object v1, p0, Lorg/apache/commons/collections/FastTreeMap$CollectionView;->this$0:Lorg/apache/commons/collections/FastTreeMap;

    iget-object v1, v1, Lorg/apache/commons/collections/FastTreeMap;->map:Ljava/util/TreeMap;

    invoke-virtual {p0, v1}, Lorg/apache/commons/collections/FastTreeMap$CollectionView;->get(Ljava/util/Map;)Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Collection;->removeAll(Ljava/util/Collection;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 618
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v1
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 4
    .param p1, "o"    # Ljava/util/Collection;

    .line 623
    iget-object v0, p0, Lorg/apache/commons/collections/FastTreeMap$CollectionView;->this$0:Lorg/apache/commons/collections/FastTreeMap;

    iget-boolean v0, v0, Lorg/apache/commons/collections/FastTreeMap;->fast:Z

    if-eqz v0, :cond_0

    .line 624
    iget-object v0, p0, Lorg/apache/commons/collections/FastTreeMap$CollectionView;->this$0:Lorg/apache/commons/collections/FastTreeMap;

    monitor-enter v0

    .line 625
    :try_start_0
    iget-object v1, p0, Lorg/apache/commons/collections/FastTreeMap$CollectionView;->this$0:Lorg/apache/commons/collections/FastTreeMap;

    iget-object v1, v1, Lorg/apache/commons/collections/FastTreeMap;->map:Ljava/util/TreeMap;

    invoke-virtual {v1}, Ljava/util/TreeMap;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/TreeMap;

    .line 626
    .local v1, "temp":Ljava/util/TreeMap;
    invoke-virtual {p0, v1}, Lorg/apache/commons/collections/FastTreeMap$CollectionView;->get(Ljava/util/Map;)Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/Collection;->retainAll(Ljava/util/Collection;)Z

    move-result v2

    .line 627
    .local v2, "r":Z
    iget-object v3, p0, Lorg/apache/commons/collections/FastTreeMap$CollectionView;->this$0:Lorg/apache/commons/collections/FastTreeMap;

    iput-object v1, v3, Lorg/apache/commons/collections/FastTreeMap;->map:Ljava/util/TreeMap;

    .line 628
    monitor-exit v0

    return v2

    .line 629
    .end local v1    # "temp":Ljava/util/TreeMap;
    .end local v2    # "r":Z
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 631
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections/FastTreeMap$CollectionView;->this$0:Lorg/apache/commons/collections/FastTreeMap;

    iget-object v0, v0, Lorg/apache/commons/collections/FastTreeMap;->map:Ljava/util/TreeMap;

    monitor-enter v0

    .line 632
    :try_start_1
    iget-object v1, p0, Lorg/apache/commons/collections/FastTreeMap$CollectionView;->this$0:Lorg/apache/commons/collections/FastTreeMap;

    iget-object v1, v1, Lorg/apache/commons/collections/FastTreeMap;->map:Ljava/util/TreeMap;

    invoke-virtual {p0, v1}, Lorg/apache/commons/collections/FastTreeMap$CollectionView;->get(Ljava/util/Map;)Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Collection;->retainAll(Ljava/util/Collection;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 633
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v1
.end method

.method public size()I
    .locals 2

    .line 638
    iget-object v0, p0, Lorg/apache/commons/collections/FastTreeMap$CollectionView;->this$0:Lorg/apache/commons/collections/FastTreeMap;

    iget-boolean v0, v0, Lorg/apache/commons/collections/FastTreeMap;->fast:Z

    if-eqz v0, :cond_0

    .line 639
    iget-object v0, p0, Lorg/apache/commons/collections/FastTreeMap$CollectionView;->this$0:Lorg/apache/commons/collections/FastTreeMap;

    iget-object v0, v0, Lorg/apache/commons/collections/FastTreeMap;->map:Ljava/util/TreeMap;

    invoke-virtual {p0, v0}, Lorg/apache/commons/collections/FastTreeMap$CollectionView;->get(Ljava/util/Map;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    return v0

    .line 641
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections/FastTreeMap$CollectionView;->this$0:Lorg/apache/commons/collections/FastTreeMap;

    iget-object v0, v0, Lorg/apache/commons/collections/FastTreeMap;->map:Ljava/util/TreeMap;

    monitor-enter v0

    .line 642
    :try_start_0
    iget-object v1, p0, Lorg/apache/commons/collections/FastTreeMap$CollectionView;->this$0:Lorg/apache/commons/collections/FastTreeMap;

    iget-object v1, v1, Lorg/apache/commons/collections/FastTreeMap;->map:Ljava/util/TreeMap;

    invoke-virtual {p0, v1}, Lorg/apache/commons/collections/FastTreeMap$CollectionView;->get(Ljava/util/Map;)Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    monitor-exit v0

    return v1

    .line 643
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 2

    .line 689
    iget-object v0, p0, Lorg/apache/commons/collections/FastTreeMap$CollectionView;->this$0:Lorg/apache/commons/collections/FastTreeMap;

    iget-boolean v0, v0, Lorg/apache/commons/collections/FastTreeMap;->fast:Z

    if-eqz v0, :cond_0

    .line 690
    iget-object v0, p0, Lorg/apache/commons/collections/FastTreeMap$CollectionView;->this$0:Lorg/apache/commons/collections/FastTreeMap;

    iget-object v0, v0, Lorg/apache/commons/collections/FastTreeMap;->map:Ljava/util/TreeMap;

    invoke-virtual {p0, v0}, Lorg/apache/commons/collections/FastTreeMap$CollectionView;->get(Ljava/util/Map;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 692
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections/FastTreeMap$CollectionView;->this$0:Lorg/apache/commons/collections/FastTreeMap;

    iget-object v0, v0, Lorg/apache/commons/collections/FastTreeMap;->map:Ljava/util/TreeMap;

    monitor-enter v0

    .line 693
    :try_start_0
    iget-object v1, p0, Lorg/apache/commons/collections/FastTreeMap$CollectionView;->this$0:Lorg/apache/commons/collections/FastTreeMap;

    iget-object v1, v1, Lorg/apache/commons/collections/FastTreeMap;->map:Ljava/util/TreeMap;

    invoke-virtual {p0, v1}, Lorg/apache/commons/collections/FastTreeMap$CollectionView;->get(Ljava/util/Map;)Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 694
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 2
    .param p1, "o"    # [Ljava/lang/Object;

    .line 679
    iget-object v0, p0, Lorg/apache/commons/collections/FastTreeMap$CollectionView;->this$0:Lorg/apache/commons/collections/FastTreeMap;

    iget-boolean v0, v0, Lorg/apache/commons/collections/FastTreeMap;->fast:Z

    if-eqz v0, :cond_0

    .line 680
    iget-object v0, p0, Lorg/apache/commons/collections/FastTreeMap$CollectionView;->this$0:Lorg/apache/commons/collections/FastTreeMap;

    iget-object v0, v0, Lorg/apache/commons/collections/FastTreeMap;->map:Ljava/util/TreeMap;

    invoke-virtual {p0, v0}, Lorg/apache/commons/collections/FastTreeMap$CollectionView;->get(Ljava/util/Map;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 682
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections/FastTreeMap$CollectionView;->this$0:Lorg/apache/commons/collections/FastTreeMap;

    iget-object v0, v0, Lorg/apache/commons/collections/FastTreeMap;->map:Ljava/util/TreeMap;

    monitor-enter v0

    .line 683
    :try_start_0
    iget-object v1, p0, Lorg/apache/commons/collections/FastTreeMap$CollectionView;->this$0:Lorg/apache/commons/collections/FastTreeMap;

    iget-object v1, v1, Lorg/apache/commons/collections/FastTreeMap;->map:Ljava/util/TreeMap;

    invoke-virtual {p0, v1}, Lorg/apache/commons/collections/FastTreeMap$CollectionView;->get(Ljava/util/Map;)Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 684
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
