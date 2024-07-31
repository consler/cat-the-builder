.class public Lorg/apache/commons/collections4/queue/SynchronizedQueue;
.super Lorg/apache/commons/collections4/collection/SynchronizedCollection;
.source "SynchronizedQueue.java"

# interfaces
.implements Ljava/util/Queue;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/commons/collections4/collection/SynchronizedCollection<",
        "TE;>;",
        "Ljava/util/Queue<",
        "TE;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method protected constructor <init>(Ljava/util/Queue;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Queue<",
            "TE;>;)V"
        }
    .end annotation

    .line 63
    .local p0, "this":Lorg/apache/commons/collections4/queue/SynchronizedQueue;, "Lorg/apache/commons/collections4/queue/SynchronizedQueue<TE;>;"
    .local p1, "queue":Ljava/util/Queue;, "Ljava/util/Queue<TE;>;"
    invoke-direct {p0, p1}, Lorg/apache/commons/collections4/collection/SynchronizedCollection;-><init>(Ljava/util/Collection;)V

    .line 64
    return-void
.end method

.method protected constructor <init>(Ljava/util/Queue;Ljava/lang/Object;)V
    .locals 0
    .param p2, "lock"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Queue<",
            "TE;>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 77
    .local p0, "this":Lorg/apache/commons/collections4/queue/SynchronizedQueue;, "Lorg/apache/commons/collections4/queue/SynchronizedQueue<TE;>;"
    .local p1, "queue":Ljava/util/Queue;, "Ljava/util/Queue<TE;>;"
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/collections4/collection/SynchronizedCollection;-><init>(Ljava/util/Collection;Ljava/lang/Object;)V

    .line 78
    return-void
.end method

.method public static synchronizedQueue(Ljava/util/Queue;)Lorg/apache/commons/collections4/queue/SynchronizedQueue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Queue<",
            "TE;>;)",
            "Lorg/apache/commons/collections4/queue/SynchronizedQueue<",
            "TE;>;"
        }
    .end annotation

    .line 50
    .local p0, "queue":Ljava/util/Queue;, "Ljava/util/Queue<TE;>;"
    new-instance v0, Lorg/apache/commons/collections4/queue/SynchronizedQueue;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections4/queue/SynchronizedQueue;-><init>(Ljava/util/Queue;)V

    return-object v0
.end method


# virtual methods
.method protected bridge synthetic decorated()Ljava/util/Collection;
    .locals 1

    .line 33
    .local p0, "this":Lorg/apache/commons/collections4/queue/SynchronizedQueue;, "Lorg/apache/commons/collections4/queue/SynchronizedQueue<TE;>;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/queue/SynchronizedQueue;->decorated()Ljava/util/Queue;

    move-result-object v0

    return-object v0
.end method

.method protected decorated()Ljava/util/Queue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Queue<",
            "TE;>;"
        }
    .end annotation

    .line 87
    .local p0, "this":Lorg/apache/commons/collections4/queue/SynchronizedQueue;, "Lorg/apache/commons/collections4/queue/SynchronizedQueue<TE;>;"
    invoke-super {p0}, Lorg/apache/commons/collections4/collection/SynchronizedCollection;->decorated()Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/util/Queue;

    return-object v0
.end method

.method public element()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 92
    .local p0, "this":Lorg/apache/commons/collections4/queue/SynchronizedQueue;, "Lorg/apache/commons/collections4/queue/SynchronizedQueue<TE;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/queue/SynchronizedQueue;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 93
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/commons/collections4/queue/SynchronizedQueue;->decorated()Ljava/util/Queue;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Queue;->element()Ljava/lang/Object;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 94
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "object"    # Ljava/lang/Object;

    .line 99
    .local p0, "this":Lorg/apache/commons/collections4/queue/SynchronizedQueue;, "Lorg/apache/commons/collections4/queue/SynchronizedQueue<TE;>;"
    if-ne p1, p0, :cond_0

    .line 100
    const/4 v0, 0x1

    return v0

    .line 102
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections4/queue/SynchronizedQueue;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 103
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/commons/collections4/queue/SynchronizedQueue;->decorated()Ljava/util/Queue;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 104
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public hashCode()I
    .locals 2

    .line 111
    .local p0, "this":Lorg/apache/commons/collections4/queue/SynchronizedQueue;, "Lorg/apache/commons/collections4/queue/SynchronizedQueue<TE;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/queue/SynchronizedQueue;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 112
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/commons/collections4/queue/SynchronizedQueue;->decorated()Ljava/util/Queue;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    monitor-exit v0

    return v1

    .line 113
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public offer(Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 118
    .local p0, "this":Lorg/apache/commons/collections4/queue/SynchronizedQueue;, "Lorg/apache/commons/collections4/queue/SynchronizedQueue<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Lorg/apache/commons/collections4/queue/SynchronizedQueue;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 119
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/commons/collections4/queue/SynchronizedQueue;->decorated()Ljava/util/Queue;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 120
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public peek()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 125
    .local p0, "this":Lorg/apache/commons/collections4/queue/SynchronizedQueue;, "Lorg/apache/commons/collections4/queue/SynchronizedQueue<TE;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/queue/SynchronizedQueue;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 126
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/commons/collections4/queue/SynchronizedQueue;->decorated()Ljava/util/Queue;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 127
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public poll()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 132
    .local p0, "this":Lorg/apache/commons/collections4/queue/SynchronizedQueue;, "Lorg/apache/commons/collections4/queue/SynchronizedQueue<TE;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/queue/SynchronizedQueue;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 133
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/commons/collections4/queue/SynchronizedQueue;->decorated()Ljava/util/Queue;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 134
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public remove()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 139
    .local p0, "this":Lorg/apache/commons/collections4/queue/SynchronizedQueue;, "Lorg/apache/commons/collections4/queue/SynchronizedQueue<TE;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/queue/SynchronizedQueue;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 140
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/commons/collections4/queue/SynchronizedQueue;->decorated()Ljava/util/Queue;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 141
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
