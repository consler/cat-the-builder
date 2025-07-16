.class abstract Lorg/apache/commons/collections/FastHashMap$CollectionView;
.super Ljava/lang/Object;
.source "FastHashMap.java"

# interfaces
.implements Ljava/util/Collection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections/FastHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "CollectionView"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/collections/FastHashMap$CollectionView$CollectionViewIterator;
    }
.end annotation


# instance fields
.field private final synthetic this$0:Lorg/apache/commons/collections/FastHashMap;


# direct methods
.method public constructor <init>(Lorg/apache/commons/collections/FastHashMap;)V
    .locals 0

    .line 465
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/collections/FastHashMap$CollectionView;->this$0:Lorg/apache/commons/collections/FastHashMap;

    return-void
.end method

.method static synthetic access$300(Lorg/apache/commons/collections/FastHashMap$CollectionView;)Lorg/apache/commons/collections/FastHashMap;
    .locals 0

    .line 463
    iget-object p0, p0, Lorg/apache/commons/collections/FastHashMap$CollectionView;->this$0:Lorg/apache/commons/collections/FastHashMap;

    return-object p0
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 0

    .line 613
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 0

    .line 617
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public clear()V
    .locals 3

    .line 473
    iget-object v0, p0, Lorg/apache/commons/collections/FastHashMap$CollectionView;->this$0:Lorg/apache/commons/collections/FastHashMap;

    iget-boolean v0, v0, Lorg/apache/commons/collections/FastHashMap;->fast:Z

    if-eqz v0, :cond_0

    .line 474
    iget-object v0, p0, Lorg/apache/commons/collections/FastHashMap$CollectionView;->this$0:Lorg/apache/commons/collections/FastHashMap;

    monitor-enter v0

    .line 475
    :try_start_0
    iget-object v1, p0, Lorg/apache/commons/collections/FastHashMap$CollectionView;->this$0:Lorg/apache/commons/collections/FastHashMap;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, v1, Lorg/apache/commons/collections/FastHashMap;->map:Ljava/util/HashMap;

    .line 476
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 478
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections/FastHashMap$CollectionView;->this$0:Lorg/apache/commons/collections/FastHashMap;

    iget-object v0, v0, Lorg/apache/commons/collections/FastHashMap;->map:Ljava/util/HashMap;

    monitor-enter v0

    .line 479
    :try_start_1
    iget-object v1, p0, Lorg/apache/commons/collections/FastHashMap$CollectionView;->this$0:Lorg/apache/commons/collections/FastHashMap;

    iget-object v1, v1, Lorg/apache/commons/collections/FastHashMap;->map:Ljava/util/HashMap;

    invoke-virtual {p0, v1}, Lorg/apache/commons/collections/FastHashMap$CollectionView;->get(Ljava/util/Map;)Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->clear()V

    .line 480
    monitor-exit v0

    :goto_0
    return-void

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v1
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 2

    .line 551
    iget-object v0, p0, Lorg/apache/commons/collections/FastHashMap$CollectionView;->this$0:Lorg/apache/commons/collections/FastHashMap;

    iget-boolean v0, v0, Lorg/apache/commons/collections/FastHashMap;->fast:Z

    if-eqz v0, :cond_0

    .line 552
    iget-object v0, p0, Lorg/apache/commons/collections/FastHashMap$CollectionView;->this$0:Lorg/apache/commons/collections/FastHashMap;

    iget-object v0, v0, Lorg/apache/commons/collections/FastHashMap;->map:Ljava/util/HashMap;

    invoke-virtual {p0, v0}, Lorg/apache/commons/collections/FastHashMap$CollectionView;->get(Ljava/util/Map;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 554
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections/FastHashMap$CollectionView;->this$0:Lorg/apache/commons/collections/FastHashMap;

    iget-object v0, v0, Lorg/apache/commons/collections/FastHashMap;->map:Ljava/util/HashMap;

    monitor-enter v0

    .line 555
    :try_start_0
    iget-object v1, p0, Lorg/apache/commons/collections/FastHashMap$CollectionView;->this$0:Lorg/apache/commons/collections/FastHashMap;

    iget-object v1, v1, Lorg/apache/commons/collections/FastHashMap;->map:Ljava/util/HashMap;

    invoke-virtual {p0, v1}, Lorg/apache/commons/collections/FastHashMap$CollectionView;->get(Ljava/util/Map;)Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result p1

    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    .line 556
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 2

    .line 561
    iget-object v0, p0, Lorg/apache/commons/collections/FastHashMap$CollectionView;->this$0:Lorg/apache/commons/collections/FastHashMap;

    iget-boolean v0, v0, Lorg/apache/commons/collections/FastHashMap;->fast:Z

    if-eqz v0, :cond_0

    .line 562
    iget-object v0, p0, Lorg/apache/commons/collections/FastHashMap$CollectionView;->this$0:Lorg/apache/commons/collections/FastHashMap;

    iget-object v0, v0, Lorg/apache/commons/collections/FastHashMap;->map:Ljava/util/HashMap;

    invoke-virtual {p0, v0}, Lorg/apache/commons/collections/FastHashMap$CollectionView;->get(Ljava/util/Map;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Collection;->containsAll(Ljava/util/Collection;)Z

    move-result p1

    return p1

    .line 564
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections/FastHashMap$CollectionView;->this$0:Lorg/apache/commons/collections/FastHashMap;

    iget-object v0, v0, Lorg/apache/commons/collections/FastHashMap;->map:Ljava/util/HashMap;

    monitor-enter v0

    .line 565
    :try_start_0
    iget-object v1, p0, Lorg/apache/commons/collections/FastHashMap$CollectionView;->this$0:Lorg/apache/commons/collections/FastHashMap;

    iget-object v1, v1, Lorg/apache/commons/collections/FastHashMap;->map:Ljava/util/HashMap;

    invoke-virtual {p0, v1}, Lorg/apache/commons/collections/FastHashMap$CollectionView;->get(Ljava/util/Map;)Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Collection;->containsAll(Ljava/util/Collection;)Z

    move-result p1

    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    .line 566
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p1, p0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 593
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections/FastHashMap$CollectionView;->this$0:Lorg/apache/commons/collections/FastHashMap;

    iget-boolean v0, v0, Lorg/apache/commons/collections/FastHashMap;->fast:Z

    if-eqz v0, :cond_1

    .line 594
    iget-object v0, p0, Lorg/apache/commons/collections/FastHashMap$CollectionView;->this$0:Lorg/apache/commons/collections/FastHashMap;

    iget-object v0, v0, Lorg/apache/commons/collections/FastHashMap;->map:Ljava/util/HashMap;

    invoke-virtual {p0, v0}, Lorg/apache/commons/collections/FastHashMap$CollectionView;->get(Ljava/util/Map;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Collection;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 596
    :cond_1
    iget-object v0, p0, Lorg/apache/commons/collections/FastHashMap$CollectionView;->this$0:Lorg/apache/commons/collections/FastHashMap;

    iget-object v0, v0, Lorg/apache/commons/collections/FastHashMap;->map:Ljava/util/HashMap;

    monitor-enter v0

    .line 597
    :try_start_0
    iget-object v1, p0, Lorg/apache/commons/collections/FastHashMap$CollectionView;->this$0:Lorg/apache/commons/collections/FastHashMap;

    iget-object v1, v1, Lorg/apache/commons/collections/FastHashMap;->map:Ljava/util/HashMap;

    invoke-virtual {p0, v1}, Lorg/apache/commons/collections/FastHashMap$CollectionView;->get(Ljava/util/Map;)Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Collection;->equals(Ljava/lang/Object;)Z

    move-result p1

    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    .line 598
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method protected abstract get(Ljava/util/Map;)Ljava/util/Collection;
.end method

.method public hashCode()I
    .locals 2

    .line 603
    iget-object v0, p0, Lorg/apache/commons/collections/FastHashMap$CollectionView;->this$0:Lorg/apache/commons/collections/FastHashMap;

    iget-boolean v0, v0, Lorg/apache/commons/collections/FastHashMap;->fast:Z

    if-eqz v0, :cond_0

    .line 604
    iget-object v0, p0, Lorg/apache/commons/collections/FastHashMap$CollectionView;->this$0:Lorg/apache/commons/collections/FastHashMap;

    iget-object v0, v0, Lorg/apache/commons/collections/FastHashMap;->map:Ljava/util/HashMap;

    invoke-virtual {p0, v0}, Lorg/apache/commons/collections/FastHashMap$CollectionView;->get(Ljava/util/Map;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->hashCode()I

    move-result v0

    return v0

    .line 606
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections/FastHashMap$CollectionView;->this$0:Lorg/apache/commons/collections/FastHashMap;

    iget-object v0, v0, Lorg/apache/commons/collections/FastHashMap;->map:Ljava/util/HashMap;

    monitor-enter v0

    .line 607
    :try_start_0
    iget-object v1, p0, Lorg/apache/commons/collections/FastHashMap$CollectionView;->this$0:Lorg/apache/commons/collections/FastHashMap;

    iget-object v1, v1, Lorg/apache/commons/collections/FastHashMap;->map:Ljava/util/HashMap;

    invoke-virtual {p0, v1}, Lorg/apache/commons/collections/FastHashMap$CollectionView;->get(Ljava/util/Map;)Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->hashCode()I

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 608
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isEmpty()Z
    .locals 2

    .line 541
    iget-object v0, p0, Lorg/apache/commons/collections/FastHashMap$CollectionView;->this$0:Lorg/apache/commons/collections/FastHashMap;

    iget-boolean v0, v0, Lorg/apache/commons/collections/FastHashMap;->fast:Z

    if-eqz v0, :cond_0

    .line 542
    iget-object v0, p0, Lorg/apache/commons/collections/FastHashMap$CollectionView;->this$0:Lorg/apache/commons/collections/FastHashMap;

    iget-object v0, v0, Lorg/apache/commons/collections/FastHashMap;->map:Ljava/util/HashMap;

    invoke-virtual {p0, v0}, Lorg/apache/commons/collections/FastHashMap$CollectionView;->get(Ljava/util/Map;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    return v0

    .line 544
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections/FastHashMap$CollectionView;->this$0:Lorg/apache/commons/collections/FastHashMap;

    iget-object v0, v0, Lorg/apache/commons/collections/FastHashMap;->map:Ljava/util/HashMap;

    monitor-enter v0

    .line 545
    :try_start_0
    iget-object v1, p0, Lorg/apache/commons/collections/FastHashMap$CollectionView;->this$0:Lorg/apache/commons/collections/FastHashMap;

    iget-object v1, v1, Lorg/apache/commons/collections/FastHashMap;->map:Ljava/util/HashMap;

    invoke-virtual {p0, v1}, Lorg/apache/commons/collections/FastHashMap$CollectionView;->get(Ljava/util/Map;)Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 546
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1

    .line 621
    new-instance v0, Lorg/apache/commons/collections/FastHashMap$CollectionView$CollectionViewIterator;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections/FastHashMap$CollectionView$CollectionViewIterator;-><init>(Lorg/apache/commons/collections/FastHashMap$CollectionView;)V

    return-object v0
.end method

.method protected abstract iteratorNext(Ljava/util/Map$Entry;)Ljava/lang/Object;
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 3

    .line 485
    iget-object v0, p0, Lorg/apache/commons/collections/FastHashMap$CollectionView;->this$0:Lorg/apache/commons/collections/FastHashMap;

    iget-boolean v0, v0, Lorg/apache/commons/collections/FastHashMap;->fast:Z

    if-eqz v0, :cond_0

    .line 486
    iget-object v0, p0, Lorg/apache/commons/collections/FastHashMap$CollectionView;->this$0:Lorg/apache/commons/collections/FastHashMap;

    monitor-enter v0

    .line 487
    :try_start_0
    iget-object v1, p0, Lorg/apache/commons/collections/FastHashMap$CollectionView;->this$0:Lorg/apache/commons/collections/FastHashMap;

    iget-object v1, v1, Lorg/apache/commons/collections/FastHashMap;->map:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 488
    invoke-virtual {p0, v1}, Lorg/apache/commons/collections/FastHashMap$CollectionView;->get(Ljava/util/Map;)Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    move-result p1

    .line 489
    iget-object v2, p0, Lorg/apache/commons/collections/FastHashMap$CollectionView;->this$0:Lorg/apache/commons/collections/FastHashMap;

    iput-object v1, v2, Lorg/apache/commons/collections/FastHashMap;->map:Ljava/util/HashMap;

    .line 490
    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    .line 491
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 493
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections/FastHashMap$CollectionView;->this$0:Lorg/apache/commons/collections/FastHashMap;

    iget-object v0, v0, Lorg/apache/commons/collections/FastHashMap;->map:Ljava/util/HashMap;

    monitor-enter v0

    .line 494
    :try_start_1
    iget-object v1, p0, Lorg/apache/commons/collections/FastHashMap$CollectionView;->this$0:Lorg/apache/commons/collections/FastHashMap;

    iget-object v1, v1, Lorg/apache/commons/collections/FastHashMap;->map:Ljava/util/HashMap;

    invoke-virtual {p0, v1}, Lorg/apache/commons/collections/FastHashMap$CollectionView;->get(Ljava/util/Map;)Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    move-result p1

    monitor-exit v0

    return p1

    :catchall_1
    move-exception p1

    .line 495
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p1
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 3

    .line 500
    iget-object v0, p0, Lorg/apache/commons/collections/FastHashMap$CollectionView;->this$0:Lorg/apache/commons/collections/FastHashMap;

    iget-boolean v0, v0, Lorg/apache/commons/collections/FastHashMap;->fast:Z

    if-eqz v0, :cond_0

    .line 501
    iget-object v0, p0, Lorg/apache/commons/collections/FastHashMap$CollectionView;->this$0:Lorg/apache/commons/collections/FastHashMap;

    monitor-enter v0

    .line 502
    :try_start_0
    iget-object v1, p0, Lorg/apache/commons/collections/FastHashMap$CollectionView;->this$0:Lorg/apache/commons/collections/FastHashMap;

    iget-object v1, v1, Lorg/apache/commons/collections/FastHashMap;->map:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 503
    invoke-virtual {p0, v1}, Lorg/apache/commons/collections/FastHashMap$CollectionView;->get(Ljava/util/Map;)Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/Collection;->removeAll(Ljava/util/Collection;)Z

    move-result p1

    .line 504
    iget-object v2, p0, Lorg/apache/commons/collections/FastHashMap$CollectionView;->this$0:Lorg/apache/commons/collections/FastHashMap;

    iput-object v1, v2, Lorg/apache/commons/collections/FastHashMap;->map:Ljava/util/HashMap;

    .line 505
    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    .line 506
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 508
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections/FastHashMap$CollectionView;->this$0:Lorg/apache/commons/collections/FastHashMap;

    iget-object v0, v0, Lorg/apache/commons/collections/FastHashMap;->map:Ljava/util/HashMap;

    monitor-enter v0

    .line 509
    :try_start_1
    iget-object v1, p0, Lorg/apache/commons/collections/FastHashMap$CollectionView;->this$0:Lorg/apache/commons/collections/FastHashMap;

    iget-object v1, v1, Lorg/apache/commons/collections/FastHashMap;->map:Ljava/util/HashMap;

    invoke-virtual {p0, v1}, Lorg/apache/commons/collections/FastHashMap$CollectionView;->get(Ljava/util/Map;)Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Collection;->removeAll(Ljava/util/Collection;)Z

    move-result p1

    monitor-exit v0

    return p1

    :catchall_1
    move-exception p1

    .line 510
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p1
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 3

    .line 515
    iget-object v0, p0, Lorg/apache/commons/collections/FastHashMap$CollectionView;->this$0:Lorg/apache/commons/collections/FastHashMap;

    iget-boolean v0, v0, Lorg/apache/commons/collections/FastHashMap;->fast:Z

    if-eqz v0, :cond_0

    .line 516
    iget-object v0, p0, Lorg/apache/commons/collections/FastHashMap$CollectionView;->this$0:Lorg/apache/commons/collections/FastHashMap;

    monitor-enter v0

    .line 517
    :try_start_0
    iget-object v1, p0, Lorg/apache/commons/collections/FastHashMap$CollectionView;->this$0:Lorg/apache/commons/collections/FastHashMap;

    iget-object v1, v1, Lorg/apache/commons/collections/FastHashMap;->map:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 518
    invoke-virtual {p0, v1}, Lorg/apache/commons/collections/FastHashMap$CollectionView;->get(Ljava/util/Map;)Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/Collection;->retainAll(Ljava/util/Collection;)Z

    move-result p1

    .line 519
    iget-object v2, p0, Lorg/apache/commons/collections/FastHashMap$CollectionView;->this$0:Lorg/apache/commons/collections/FastHashMap;

    iput-object v1, v2, Lorg/apache/commons/collections/FastHashMap;->map:Ljava/util/HashMap;

    .line 520
    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    .line 521
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 523
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections/FastHashMap$CollectionView;->this$0:Lorg/apache/commons/collections/FastHashMap;

    iget-object v0, v0, Lorg/apache/commons/collections/FastHashMap;->map:Ljava/util/HashMap;

    monitor-enter v0

    .line 524
    :try_start_1
    iget-object v1, p0, Lorg/apache/commons/collections/FastHashMap$CollectionView;->this$0:Lorg/apache/commons/collections/FastHashMap;

    iget-object v1, v1, Lorg/apache/commons/collections/FastHashMap;->map:Ljava/util/HashMap;

    invoke-virtual {p0, v1}, Lorg/apache/commons/collections/FastHashMap$CollectionView;->get(Ljava/util/Map;)Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Collection;->retainAll(Ljava/util/Collection;)Z

    move-result p1

    monitor-exit v0

    return p1

    :catchall_1
    move-exception p1

    .line 525
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p1
.end method

.method public size()I
    .locals 2

    .line 530
    iget-object v0, p0, Lorg/apache/commons/collections/FastHashMap$CollectionView;->this$0:Lorg/apache/commons/collections/FastHashMap;

    iget-boolean v0, v0, Lorg/apache/commons/collections/FastHashMap;->fast:Z

    if-eqz v0, :cond_0

    .line 531
    iget-object v0, p0, Lorg/apache/commons/collections/FastHashMap$CollectionView;->this$0:Lorg/apache/commons/collections/FastHashMap;

    iget-object v0, v0, Lorg/apache/commons/collections/FastHashMap;->map:Ljava/util/HashMap;

    invoke-virtual {p0, v0}, Lorg/apache/commons/collections/FastHashMap$CollectionView;->get(Ljava/util/Map;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    return v0

    .line 533
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections/FastHashMap$CollectionView;->this$0:Lorg/apache/commons/collections/FastHashMap;

    iget-object v0, v0, Lorg/apache/commons/collections/FastHashMap;->map:Ljava/util/HashMap;

    monitor-enter v0

    .line 534
    :try_start_0
    iget-object v1, p0, Lorg/apache/commons/collections/FastHashMap$CollectionView;->this$0:Lorg/apache/commons/collections/FastHashMap;

    iget-object v1, v1, Lorg/apache/commons/collections/FastHashMap;->map:Ljava/util/HashMap;

    invoke-virtual {p0, v1}, Lorg/apache/commons/collections/FastHashMap$CollectionView;->get(Ljava/util/Map;)Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 535
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 2

    .line 581
    iget-object v0, p0, Lorg/apache/commons/collections/FastHashMap$CollectionView;->this$0:Lorg/apache/commons/collections/FastHashMap;

    iget-boolean v0, v0, Lorg/apache/commons/collections/FastHashMap;->fast:Z

    if-eqz v0, :cond_0

    .line 582
    iget-object v0, p0, Lorg/apache/commons/collections/FastHashMap$CollectionView;->this$0:Lorg/apache/commons/collections/FastHashMap;

    iget-object v0, v0, Lorg/apache/commons/collections/FastHashMap;->map:Ljava/util/HashMap;

    invoke-virtual {p0, v0}, Lorg/apache/commons/collections/FastHashMap$CollectionView;->get(Ljava/util/Map;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 584
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections/FastHashMap$CollectionView;->this$0:Lorg/apache/commons/collections/FastHashMap;

    iget-object v0, v0, Lorg/apache/commons/collections/FastHashMap;->map:Ljava/util/HashMap;

    monitor-enter v0

    .line 585
    :try_start_0
    iget-object v1, p0, Lorg/apache/commons/collections/FastHashMap$CollectionView;->this$0:Lorg/apache/commons/collections/FastHashMap;

    iget-object v1, v1, Lorg/apache/commons/collections/FastHashMap;->map:Ljava/util/HashMap;

    invoke-virtual {p0, v1}, Lorg/apache/commons/collections/FastHashMap$CollectionView;->get(Ljava/util/Map;)Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 586
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 2

    .line 571
    iget-object v0, p0, Lorg/apache/commons/collections/FastHashMap$CollectionView;->this$0:Lorg/apache/commons/collections/FastHashMap;

    iget-boolean v0, v0, Lorg/apache/commons/collections/FastHashMap;->fast:Z

    if-eqz v0, :cond_0

    .line 572
    iget-object v0, p0, Lorg/apache/commons/collections/FastHashMap$CollectionView;->this$0:Lorg/apache/commons/collections/FastHashMap;

    iget-object v0, v0, Lorg/apache/commons/collections/FastHashMap;->map:Ljava/util/HashMap;

    invoke-virtual {p0, v0}, Lorg/apache/commons/collections/FastHashMap$CollectionView;->get(Ljava/util/Map;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 574
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections/FastHashMap$CollectionView;->this$0:Lorg/apache/commons/collections/FastHashMap;

    iget-object v0, v0, Lorg/apache/commons/collections/FastHashMap;->map:Ljava/util/HashMap;

    monitor-enter v0

    .line 575
    :try_start_0
    iget-object v1, p0, Lorg/apache/commons/collections/FastHashMap$CollectionView;->this$0:Lorg/apache/commons/collections/FastHashMap;

    iget-object v1, v1, Lorg/apache/commons/collections/FastHashMap;->map:Ljava/util/HashMap;

    invoke-virtual {p0, v1}, Lorg/apache/commons/collections/FastHashMap$CollectionView;->get(Ljava/util/Map;)Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 576
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
