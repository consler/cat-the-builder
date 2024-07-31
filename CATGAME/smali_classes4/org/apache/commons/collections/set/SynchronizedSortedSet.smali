.class public Lorg/apache/commons/collections/set/SynchronizedSortedSet;
.super Lorg/apache/commons/collections/collection/SynchronizedCollection;
.source "SynchronizedSortedSet.java"

# interfaces
.implements Ljava/util/SortedSet;


# static fields
.field private static final serialVersionUID:J = 0x2684d9e84375c60fL


# direct methods
.method protected constructor <init>(Ljava/util/SortedSet;)V
    .locals 0
    .param p1, "set"    # Ljava/util/SortedSet;

    .line 60
    invoke-direct {p0, p1}, Lorg/apache/commons/collections/collection/SynchronizedCollection;-><init>(Ljava/util/Collection;)V

    .line 61
    return-void
.end method

.method protected constructor <init>(Ljava/util/SortedSet;Ljava/lang/Object;)V
    .locals 0
    .param p1, "set"    # Ljava/util/SortedSet;
    .param p2, "lock"    # Ljava/lang/Object;

    .line 71
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/collections/collection/SynchronizedCollection;-><init>(Ljava/util/Collection;Ljava/lang/Object;)V

    .line 72
    return-void
.end method

.method public static decorate(Ljava/util/SortedSet;)Ljava/util/SortedSet;
    .locals 1
    .param p0, "set"    # Ljava/util/SortedSet;

    .line 49
    new-instance v0, Lorg/apache/commons/collections/set/SynchronizedSortedSet;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections/set/SynchronizedSortedSet;-><init>(Ljava/util/SortedSet;)V

    return-object v0
.end method


# virtual methods
.method public comparator()Ljava/util/Comparator;
    .locals 2

    .line 124
    iget-object v0, p0, Lorg/apache/commons/collections/set/SynchronizedSortedSet;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 125
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/commons/collections/set/SynchronizedSortedSet;->getSortedSet()Ljava/util/SortedSet;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/SortedSet;->comparator()Ljava/util/Comparator;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 126
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public first()Ljava/lang/Object;
    .locals 2

    .line 112
    iget-object v0, p0, Lorg/apache/commons/collections/set/SynchronizedSortedSet;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 113
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/commons/collections/set/SynchronizedSortedSet;->getSortedSet()Ljava/util/SortedSet;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/SortedSet;->first()Ljava/lang/Object;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 114
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected getSortedSet()Ljava/util/SortedSet;
    .locals 1

    .line 80
    iget-object v0, p0, Lorg/apache/commons/collections/set/SynchronizedSortedSet;->collection:Ljava/util/Collection;

    check-cast v0, Ljava/util/SortedSet;

    return-object v0
.end method

.method public headSet(Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 4
    .param p1, "toElement"    # Ljava/lang/Object;

    .line 94
    iget-object v0, p0, Lorg/apache/commons/collections/set/SynchronizedSortedSet;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 95
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/commons/collections/set/SynchronizedSortedSet;->getSortedSet()Ljava/util/SortedSet;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/SortedSet;->headSet(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v1

    .line 98
    .local v1, "set":Ljava/util/SortedSet;
    new-instance v2, Lorg/apache/commons/collections/set/SynchronizedSortedSet;

    iget-object v3, p0, Lorg/apache/commons/collections/set/SynchronizedSortedSet;->lock:Ljava/lang/Object;

    invoke-direct {v2, v1, v3}, Lorg/apache/commons/collections/set/SynchronizedSortedSet;-><init>(Ljava/util/SortedSet;Ljava/lang/Object;)V

    monitor-exit v0

    return-object v2

    .line 99
    .end local v1    # "set":Ljava/util/SortedSet;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public last()Ljava/lang/Object;
    .locals 2

    .line 118
    iget-object v0, p0, Lorg/apache/commons/collections/set/SynchronizedSortedSet;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 119
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/commons/collections/set/SynchronizedSortedSet;->getSortedSet()Ljava/util/SortedSet;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/SortedSet;->last()Ljava/lang/Object;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 120
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public subSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 4
    .param p1, "fromElement"    # Ljava/lang/Object;
    .param p2, "toElement"    # Ljava/lang/Object;

    .line 85
    iget-object v0, p0, Lorg/apache/commons/collections/set/SynchronizedSortedSet;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 86
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/commons/collections/set/SynchronizedSortedSet;->getSortedSet()Ljava/util/SortedSet;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Ljava/util/SortedSet;->subSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v1

    .line 89
    .local v1, "set":Ljava/util/SortedSet;
    new-instance v2, Lorg/apache/commons/collections/set/SynchronizedSortedSet;

    iget-object v3, p0, Lorg/apache/commons/collections/set/SynchronizedSortedSet;->lock:Ljava/lang/Object;

    invoke-direct {v2, v1, v3}, Lorg/apache/commons/collections/set/SynchronizedSortedSet;-><init>(Ljava/util/SortedSet;Ljava/lang/Object;)V

    monitor-exit v0

    return-object v2

    .line 90
    .end local v1    # "set":Ljava/util/SortedSet;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public tailSet(Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 4
    .param p1, "fromElement"    # Ljava/lang/Object;

    .line 103
    iget-object v0, p0, Lorg/apache/commons/collections/set/SynchronizedSortedSet;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 104
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/commons/collections/set/SynchronizedSortedSet;->getSortedSet()Ljava/util/SortedSet;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/SortedSet;->tailSet(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v1

    .line 107
    .local v1, "set":Ljava/util/SortedSet;
    new-instance v2, Lorg/apache/commons/collections/set/SynchronizedSortedSet;

    iget-object v3, p0, Lorg/apache/commons/collections/set/SynchronizedSortedSet;->lock:Ljava/lang/Object;

    invoke-direct {v2, v1, v3}, Lorg/apache/commons/collections/set/SynchronizedSortedSet;-><init>(Ljava/util/SortedSet;Ljava/lang/Object;)V

    monitor-exit v0

    return-object v2

    .line 108
    .end local v1    # "set":Ljava/util/SortedSet;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
