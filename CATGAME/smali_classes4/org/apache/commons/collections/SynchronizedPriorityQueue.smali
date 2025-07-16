.class public final Lorg/apache/commons/collections/SynchronizedPriorityQueue;
.super Ljava/lang/Object;
.source "SynchronizedPriorityQueue.java"

# interfaces
.implements Lorg/apache/commons/collections/PriorityQueue;


# instance fields
.field protected final m_priorityQueue:Lorg/apache/commons/collections/PriorityQueue;


# direct methods
.method public constructor <init>(Lorg/apache/commons/collections/PriorityQueue;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lorg/apache/commons/collections/SynchronizedPriorityQueue;->m_priorityQueue:Lorg/apache/commons/collections/PriorityQueue;

    return-void
.end method


# virtual methods
.method public declared-synchronized clear()V
    .locals 1

    monitor-enter p0

    .line 53
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/collections/SynchronizedPriorityQueue;->m_priorityQueue:Lorg/apache/commons/collections/PriorityQueue;

    invoke-interface {v0}, Lorg/apache/commons/collections/PriorityQueue;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized insert(Ljava/lang/Object;)V
    .locals 1

    monitor-enter p0

    .line 71
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/collections/SynchronizedPriorityQueue;->m_priorityQueue:Lorg/apache/commons/collections/PriorityQueue;

    invoke-interface {v0, p1}, Lorg/apache/commons/collections/PriorityQueue;->insert(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized isEmpty()Z
    .locals 1

    monitor-enter p0

    .line 62
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/collections/SynchronizedPriorityQueue;->m_priorityQueue:Lorg/apache/commons/collections/PriorityQueue;

    invoke-interface {v0}, Lorg/apache/commons/collections/PriorityQueue;->isEmpty()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized peek()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/NoSuchElementException;
        }
    .end annotation

    monitor-enter p0

    .line 81
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/collections/SynchronizedPriorityQueue;->m_priorityQueue:Lorg/apache/commons/collections/PriorityQueue;

    invoke-interface {v0}, Lorg/apache/commons/collections/PriorityQueue;->peek()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized pop()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/NoSuchElementException;
        }
    .end annotation

    monitor-enter p0

    .line 91
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/collections/SynchronizedPriorityQueue;->m_priorityQueue:Lorg/apache/commons/collections/PriorityQueue;

    invoke-interface {v0}, Lorg/apache/commons/collections/PriorityQueue;->pop()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized toString()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    .line 100
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/collections/SynchronizedPriorityQueue;->m_priorityQueue:Lorg/apache/commons/collections/PriorityQueue;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
