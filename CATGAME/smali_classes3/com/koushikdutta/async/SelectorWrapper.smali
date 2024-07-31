.class public Lcom/koushikdutta/async/SelectorWrapper;
.super Ljava/lang/Object;
.source "SelectorWrapper.java"


# instance fields
.field isWaking:Z

.field private selector:Ljava/nio/channels/Selector;

.field semaphore:Ljava/util/concurrent/Semaphore;


# direct methods
.method public constructor <init>(Ljava/nio/channels/Selector;)V
    .locals 2
    .param p1, "selector"    # Ljava/nio/channels/Selector;

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Ljava/util/concurrent/Semaphore;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v0, p0, Lcom/koushikdutta/async/SelectorWrapper;->semaphore:Ljava/util/concurrent/Semaphore;

    .line 22
    iput-object p1, p0, Lcom/koushikdutta/async/SelectorWrapper;->selector:Ljava/nio/channels/Selector;

    .line 23
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 52
    iget-object v0, p0, Lcom/koushikdutta/async/SelectorWrapper;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v0}, Ljava/nio/channels/Selector;->close()V

    .line 53
    return-void
.end method

.method public getSelector()Ljava/nio/channels/Selector;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/koushikdutta/async/SelectorWrapper;->selector:Ljava/nio/channels/Selector;

    return-object v0
.end method

.method public isOpen()Z
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/koushikdutta/async/SelectorWrapper;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v0}, Ljava/nio/channels/Selector;->isOpen()Z

    move-result v0

    return v0
.end method

.method public keys()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/nio/channels/SelectionKey;",
            ">;"
        }
    .end annotation

    .line 44
    iget-object v0, p0, Lcom/koushikdutta/async/SelectorWrapper;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v0}, Ljava/nio/channels/Selector;->keys()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public select()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 30
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/koushikdutta/async/SelectorWrapper;->select(J)V

    .line 31
    return-void
.end method

.method public select(J)V
    .locals 3
    .param p1, "timeout"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 35
    const v0, 0x7fffffff

    :try_start_0
    iget-object v1, p0, Lcom/koushikdutta/async/SelectorWrapper;->semaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->drainPermits()I

    .line 36
    iget-object v1, p0, Lcom/koushikdutta/async/SelectorWrapper;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v1, p1, p2}, Ljava/nio/channels/Selector;->select(J)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    iget-object v1, p0, Lcom/koushikdutta/async/SelectorWrapper;->semaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/Semaphore;->release(I)V

    .line 40
    nop

    .line 41
    return-void

    .line 39
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/koushikdutta/async/SelectorWrapper;->semaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/Semaphore;->release(I)V

    throw v1
.end method

.method public selectNow()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 26
    iget-object v0, p0, Lcom/koushikdutta/async/SelectorWrapper;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v0}, Ljava/nio/channels/Selector;->selectNow()I

    move-result v0

    return v0
.end method

.method public selectedKeys()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/nio/channels/SelectionKey;",
            ">;"
        }
    .end annotation

    .line 48
    iget-object v0, p0, Lcom/koushikdutta/async/SelectorWrapper;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v0}, Ljava/nio/channels/Selector;->selectedKeys()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public wakeupOnce()V
    .locals 7

    .line 61
    iget-object v0, p0, Lcom/koushikdutta/async/SelectorWrapper;->semaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->tryAcquire()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    .line 62
    .local v0, "selecting":Z
    iget-object v2, p0, Lcom/koushikdutta/async/SelectorWrapper;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v2}, Ljava/nio/channels/Selector;->wakeup()Ljava/nio/channels/Selector;

    .line 64
    if-eqz v0, :cond_0

    .line 65
    return-void

    .line 68
    :cond_0
    monitor-enter p0

    .line 70
    :try_start_0
    iget-boolean v2, p0, Lcom/koushikdutta/async/SelectorWrapper;->isWaking:Z

    if-eqz v2, :cond_1

    .line 72
    monitor-exit p0

    return-void

    .line 74
    :cond_1
    iput-boolean v1, p0, Lcom/koushikdutta/async/SelectorWrapper;->isWaking:Z

    .line 75
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 80
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/16 v2, 0x64

    const/4 v3, 0x0

    if-ge v1, v2, :cond_3

    .line 82
    :try_start_1
    iget-object v2, p0, Lcom/koushikdutta/async/SelectorWrapper;->semaphore:Ljava/util/concurrent/Semaphore;

    const-wide/16 v4, 0xa

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v4, v5, v6}, Ljava/util/concurrent/Semaphore;->tryAcquire(JLjava/util/concurrent/TimeUnit;)Z

    move-result v2
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v2, :cond_2

    .line 93
    monitor-enter p0

    .line 94
    :try_start_2
    iput-boolean v3, p0, Lcom/koushikdutta/async/SelectorWrapper;->isWaking:Z

    .line 95
    monitor-exit p0

    .line 84
    return-void

    .line 95
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 88
    :cond_2
    goto :goto_1

    .line 93
    .end local v1    # "i":I
    :catchall_1
    move-exception v1

    goto :goto_2

    .line 87
    .restart local v1    # "i":I
    :catch_0
    move-exception v2

    .line 89
    :goto_1
    :try_start_3
    iget-object v2, p0, Lcom/koushikdutta/async/SelectorWrapper;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v2}, Ljava/nio/channels/Selector;->wakeup()Ljava/nio/channels/Selector;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 80
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 93
    .end local v1    # "i":I
    :goto_2
    monitor-enter p0

    .line 94
    :try_start_4
    iput-boolean v3, p0, Lcom/koushikdutta/async/SelectorWrapper;->isWaking:Z

    .line 95
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v1

    :catchall_2
    move-exception v1

    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v1

    .line 93
    :cond_3
    monitor-enter p0

    .line 94
    :try_start_6
    iput-boolean v3, p0, Lcom/koushikdutta/async/SelectorWrapper;->isWaking:Z

    .line 95
    monitor-exit p0

    .line 96
    nop

    .line 97
    return-void

    .line 95
    :catchall_3
    move-exception v1

    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    throw v1

    .line 75
    :catchall_4
    move-exception v1

    :try_start_7
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    throw v1
.end method
