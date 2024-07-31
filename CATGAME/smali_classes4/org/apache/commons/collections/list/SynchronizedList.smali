.class public Lorg/apache/commons/collections/list/SynchronizedList;
.super Lorg/apache/commons/collections/collection/SynchronizedCollection;
.source "SynchronizedList.java"

# interfaces
.implements Ljava/util/List;


# static fields
.field private static final serialVersionUID:J = -0x137b6ce6c91fbbadL


# direct methods
.method protected constructor <init>(Ljava/util/List;)V
    .locals 0
    .param p1, "list"    # Ljava/util/List;

    .line 61
    invoke-direct {p0, p1}, Lorg/apache/commons/collections/collection/SynchronizedCollection;-><init>(Ljava/util/Collection;)V

    .line 62
    return-void
.end method

.method protected constructor <init>(Ljava/util/List;Ljava/lang/Object;)V
    .locals 0
    .param p1, "list"    # Ljava/util/List;
    .param p2, "lock"    # Ljava/lang/Object;

    .line 72
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/collections/collection/SynchronizedCollection;-><init>(Ljava/util/Collection;Ljava/lang/Object;)V

    .line 73
    return-void
.end method

.method public static decorate(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .param p0, "list"    # Ljava/util/List;

    .line 50
    new-instance v0, Lorg/apache/commons/collections/list/SynchronizedList;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections/list/SynchronizedList;-><init>(Ljava/util/List;)V

    return-object v0
.end method


# virtual methods
.method public add(ILjava/lang/Object;)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "object"    # Ljava/lang/Object;

    .line 86
    iget-object v0, p0, Lorg/apache/commons/collections/list/SynchronizedList;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 87
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/commons/collections/list/SynchronizedList;->getList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 88
    monitor-exit v0

    .line 89
    return-void

    .line 88
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public addAll(ILjava/util/Collection;)Z
    .locals 2
    .param p1, "index"    # I
    .param p2, "coll"    # Ljava/util/Collection;

    .line 92
    iget-object v0, p0, Lorg/apache/commons/collections/list/SynchronizedList;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 93
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/commons/collections/list/SynchronizedList;->getList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 94
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public get(I)Ljava/lang/Object;
    .locals 2
    .param p1, "index"    # I

    .line 98
    iget-object v0, p0, Lorg/apache/commons/collections/list/SynchronizedList;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 99
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/commons/collections/list/SynchronizedList;->getList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 100
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected getList()Ljava/util/List;
    .locals 1

    .line 81
    iget-object v0, p0, Lorg/apache/commons/collections/list/SynchronizedList;->collection:Ljava/util/Collection;

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 2
    .param p1, "object"    # Ljava/lang/Object;

    .line 104
    iget-object v0, p0, Lorg/apache/commons/collections/list/SynchronizedList;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 105
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/commons/collections/list/SynchronizedList;->getList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    monitor-exit v0

    return v1

    .line 106
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .locals 2
    .param p1, "object"    # Ljava/lang/Object;

    .line 110
    iget-object v0, p0, Lorg/apache/commons/collections/list/SynchronizedList;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 111
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/commons/collections/list/SynchronizedList;->getList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->lastIndexOf(Ljava/lang/Object;)I

    move-result v1

    monitor-exit v0

    return v1

    .line 112
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public listIterator()Ljava/util/ListIterator;
    .locals 1

    .line 126
    invoke-virtual {p0}, Lorg/apache/commons/collections/list/SynchronizedList;->getList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    return-object v0
.end method

.method public listIterator(I)Ljava/util/ListIterator;
    .locals 1
    .param p1, "index"    # I

    .line 140
    invoke-virtual {p0}, Lorg/apache/commons/collections/list/SynchronizedList;->getList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    return-object v0
.end method

.method public remove(I)Ljava/lang/Object;
    .locals 2
    .param p1, "index"    # I

    .line 144
    iget-object v0, p0, Lorg/apache/commons/collections/list/SynchronizedList;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 145
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/commons/collections/list/SynchronizedList;->getList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 146
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "index"    # I
    .param p2, "object"    # Ljava/lang/Object;

    .line 150
    iget-object v0, p0, Lorg/apache/commons/collections/list/SynchronizedList;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 151
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/commons/collections/list/SynchronizedList;->getList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 152
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public subList(II)Ljava/util/List;
    .locals 4
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I

    .line 156
    iget-object v0, p0, Lorg/apache/commons/collections/list/SynchronizedList;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 157
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/commons/collections/list/SynchronizedList;->getList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v1

    .line 160
    .local v1, "list":Ljava/util/List;
    new-instance v2, Lorg/apache/commons/collections/list/SynchronizedList;

    iget-object v3, p0, Lorg/apache/commons/collections/list/SynchronizedList;->lock:Ljava/lang/Object;

    invoke-direct {v2, v1, v3}, Lorg/apache/commons/collections/list/SynchronizedList;-><init>(Ljava/util/List;Ljava/lang/Object;)V

    monitor-exit v0

    return-object v2

    .line 161
    .end local v1    # "list":Ljava/util/List;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
