.class public Lorg/apache/commons/collections/bag/SynchronizedBag;
.super Lorg/apache/commons/collections/collection/SynchronizedCollection;
.source "SynchronizedBag.java"

# interfaces
.implements Lorg/apache/commons/collections/Bag;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/collections/bag/SynchronizedBag$SynchronizedBagSet;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x703288b00a6a8835L


# direct methods
.method protected constructor <init>(Lorg/apache/commons/collections/Bag;)V
    .locals 0

    .line 64
    invoke-direct {p0, p1}, Lorg/apache/commons/collections/collection/SynchronizedCollection;-><init>(Ljava/util/Collection;)V

    return-void
.end method

.method protected constructor <init>(Lorg/apache/commons/collections/Bag;Ljava/lang/Object;)V
    .locals 0

    .line 75
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/collections/collection/SynchronizedCollection;-><init>(Ljava/util/Collection;Ljava/lang/Object;)V

    return-void
.end method

.method public static decorate(Lorg/apache/commons/collections/Bag;)Lorg/apache/commons/collections/Bag;
    .locals 1

    .line 53
    new-instance v0, Lorg/apache/commons/collections/bag/SynchronizedBag;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections/bag/SynchronizedBag;-><init>(Lorg/apache/commons/collections/Bag;)V

    return-object v0
.end method


# virtual methods
.method public add(Ljava/lang/Object;I)Z
    .locals 2

    .line 89
    iget-object v0, p0, Lorg/apache/commons/collections/bag/SynchronizedBag;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 90
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/commons/collections/bag/SynchronizedBag;->getBag()Lorg/apache/commons/collections/Bag;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lorg/apache/commons/collections/Bag;->add(Ljava/lang/Object;I)Z

    move-result p1

    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    .line 91
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method protected getBag()Lorg/apache/commons/collections/Bag;
    .locals 1

    .line 84
    iget-object v0, p0, Lorg/apache/commons/collections/bag/SynchronizedBag;->collection:Ljava/util/Collection;

    check-cast v0, Lorg/apache/commons/collections/Bag;

    return-object v0
.end method

.method public getCount(Ljava/lang/Object;)I
    .locals 2

    .line 108
    iget-object v0, p0, Lorg/apache/commons/collections/bag/SynchronizedBag;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 109
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/commons/collections/bag/SynchronizedBag;->getBag()Lorg/apache/commons/collections/Bag;

    move-result-object v1

    invoke-interface {v1, p1}, Lorg/apache/commons/collections/Bag;->getCount(Ljava/lang/Object;)I

    move-result p1

    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    .line 110
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public remove(Ljava/lang/Object;I)Z
    .locals 2

    .line 95
    iget-object v0, p0, Lorg/apache/commons/collections/bag/SynchronizedBag;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 96
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/commons/collections/bag/SynchronizedBag;->getBag()Lorg/apache/commons/collections/Bag;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lorg/apache/commons/collections/Bag;->remove(Ljava/lang/Object;I)Z

    move-result p1

    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    .line 97
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public uniqueSet()Ljava/util/Set;
    .locals 4

    .line 101
    iget-object v0, p0, Lorg/apache/commons/collections/bag/SynchronizedBag;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 102
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/commons/collections/bag/SynchronizedBag;->getBag()Lorg/apache/commons/collections/Bag;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/commons/collections/Bag;->uniqueSet()Ljava/util/Set;

    move-result-object v1

    .line 103
    new-instance v2, Lorg/apache/commons/collections/bag/SynchronizedBag$SynchronizedBagSet;

    iget-object v3, p0, Lorg/apache/commons/collections/bag/SynchronizedBag;->lock:Ljava/lang/Object;

    invoke-direct {v2, p0, v1, v3}, Lorg/apache/commons/collections/bag/SynchronizedBag$SynchronizedBagSet;-><init>(Lorg/apache/commons/collections/bag/SynchronizedBag;Ljava/util/Set;Ljava/lang/Object;)V

    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception v1

    .line 104
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
