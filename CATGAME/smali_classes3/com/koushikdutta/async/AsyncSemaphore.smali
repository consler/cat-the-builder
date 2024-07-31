.class public Lcom/koushikdutta/async/AsyncSemaphore;
.super Ljava/lang/Object;
.source "AsyncSemaphore.java"


# instance fields
.field semaphore:Ljava/util/concurrent/Semaphore;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    new-instance v0, Ljava/util/concurrent/Semaphore;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v0, p0, Lcom/koushikdutta/async/AsyncSemaphore;->semaphore:Ljava/util/concurrent/Semaphore;

    return-void
.end method


# virtual methods
.method public acquire()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 11
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {v0}, Lcom/koushikdutta/async/ThreadQueue;->getOrCreateThreadQueue(Ljava/lang/Thread;)Lcom/koushikdutta/async/ThreadQueue;

    move-result-object v0

    .line 12
    .local v0, "threadQueue":Lcom/koushikdutta/async/ThreadQueue;
    iget-object v1, v0, Lcom/koushikdutta/async/ThreadQueue;->waiter:Lcom/koushikdutta/async/AsyncSemaphore;

    .line 13
    .local v1, "last":Lcom/koushikdutta/async/AsyncSemaphore;
    iput-object p0, v0, Lcom/koushikdutta/async/ThreadQueue;->waiter:Lcom/koushikdutta/async/AsyncSemaphore;

    .line 14
    iget-object v2, v0, Lcom/koushikdutta/async/ThreadQueue;->queueSemaphore:Ljava/util/concurrent/Semaphore;

    .line 16
    .local v2, "queueSemaphore":Ljava/util/concurrent/Semaphore;
    :try_start_0
    iget-object v3, p0, Lcom/koushikdutta/async/AsyncSemaphore;->semaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v3}, Ljava/util/concurrent/Semaphore;->tryAcquire()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_0

    .line 36
    iput-object v1, v0, Lcom/koushikdutta/async/ThreadQueue;->waiter:Lcom/koushikdutta/async/AsyncSemaphore;

    .line 17
    return-void

    .line 22
    :cond_0
    :goto_0
    :try_start_1
    invoke-virtual {v0}, Lcom/koushikdutta/async/ThreadQueue;->remove()Ljava/lang/Runnable;

    move-result-object v3

    .line 23
    .local v3, "run":Ljava/lang/Runnable;
    if-nez v3, :cond_2

    .line 24
    nop

    .line 29
    .end local v3    # "run":Ljava/lang/Runnable;
    const/4 v3, 0x1

    invoke-virtual {v2}, Ljava/util/concurrent/Semaphore;->availablePermits()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 30
    .local v3, "permits":I
    invoke-virtual {v2, v3}, Ljava/util/concurrent/Semaphore;->acquire(I)V

    .line 31
    iget-object v4, p0, Lcom/koushikdutta/async/AsyncSemaphore;->semaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v4}, Ljava/util/concurrent/Semaphore;->tryAcquire()Z

    move-result v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v4, :cond_1

    .line 32
    nop

    .line 36
    .end local v3    # "permits":I
    iput-object v1, v0, Lcom/koushikdutta/async/ThreadQueue;->waiter:Lcom/koushikdutta/async/AsyncSemaphore;

    .line 37
    nop

    .line 38
    return-void

    .line 33
    :cond_1
    goto :goto_0

    .line 26
    .local v3, "run":Ljava/lang/Runnable;
    :cond_2
    :try_start_2
    invoke-interface {v3}, Ljava/lang/Runnable;->run()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 27
    .end local v3    # "run":Ljava/lang/Runnable;
    goto :goto_0

    .line 36
    :catchall_0
    move-exception v3

    iput-object v1, v0, Lcom/koushikdutta/async/ThreadQueue;->waiter:Lcom/koushikdutta/async/AsyncSemaphore;

    throw v3
.end method

.method public release()V
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/koushikdutta/async/AsyncSemaphore;->semaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 78
    invoke-static {p0}, Lcom/koushikdutta/async/ThreadQueue;->release(Lcom/koushikdutta/async/AsyncSemaphore;)V

    .line 79
    return-void
.end method

.method public tryAcquire(JLjava/util/concurrent/TimeUnit;)Z
    .locals 17
    .param p1, "timeout"    # J
    .param p3, "timeunit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 41
    move-object/from16 v1, p0

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    move-wide/from16 v2, p1

    move-object/from16 v4, p3

    invoke-virtual {v0, v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v5

    .line 42
    .local v5, "timeoutMs":J
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {v0}, Lcom/koushikdutta/async/ThreadQueue;->getOrCreateThreadQueue(Ljava/lang/Thread;)Lcom/koushikdutta/async/ThreadQueue;

    move-result-object v7

    .line 43
    .local v7, "threadQueue":Lcom/koushikdutta/async/ThreadQueue;
    iget-object v8, v7, Lcom/koushikdutta/async/ThreadQueue;->waiter:Lcom/koushikdutta/async/AsyncSemaphore;

    .line 44
    .local v8, "last":Lcom/koushikdutta/async/AsyncSemaphore;
    iput-object v1, v7, Lcom/koushikdutta/async/ThreadQueue;->waiter:Lcom/koushikdutta/async/AsyncSemaphore;

    .line 45
    iget-object v9, v7, Lcom/koushikdutta/async/ThreadQueue;->queueSemaphore:Ljava/util/concurrent/Semaphore;

    .line 48
    .local v9, "queueSemaphore":Ljava/util/concurrent/Semaphore;
    :try_start_0
    iget-object v0, v1, Lcom/koushikdutta/async/AsyncSemaphore;->semaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->tryAcquire()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v10, 0x1

    if-eqz v0, :cond_0

    .line 49
    nop

    .line 72
    iput-object v8, v7, Lcom/koushikdutta/async/ThreadQueue;->waiter:Lcom/koushikdutta/async/AsyncSemaphore;

    .line 49
    return v10

    .line 51
    :cond_0
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    .line 55
    .local v11, "start":J
    :cond_1
    :goto_0
    invoke-virtual {v7}, Lcom/koushikdutta/async/ThreadQueue;->remove()Ljava/lang/Runnable;

    move-result-object v0

    .line 56
    .local v0, "run":Ljava/lang/Runnable;
    if-nez v0, :cond_4

    .line 57
    nop

    .line 62
    .end local v0    # "run":Ljava/lang/Runnable;
    invoke-virtual {v9}, Ljava/util/concurrent/Semaphore;->availablePermits()I

    move-result v0

    invoke-static {v10, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 63
    .local v0, "permits":I
    sget-object v13, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v9, v0, v5, v6, v13}, Ljava/util/concurrent/Semaphore;->tryAcquire(IJLjava/util/concurrent/TimeUnit;)Z

    move-result v13
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v14, 0x0

    if-nez v13, :cond_2

    .line 64
    nop

    .line 72
    iput-object v8, v7, Lcom/koushikdutta/async/ThreadQueue;->waiter:Lcom/koushikdutta/async/AsyncSemaphore;

    .line 64
    return v14

    .line 65
    :cond_2
    :try_start_2
    iget-object v13, v1, Lcom/koushikdutta/async/AsyncSemaphore;->semaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v13}, Ljava/util/concurrent/Semaphore;->tryAcquire()Z

    move-result v13
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v13, :cond_3

    .line 66
    nop

    .line 72
    iput-object v8, v7, Lcom/koushikdutta/async/ThreadQueue;->waiter:Lcom/koushikdutta/async/AsyncSemaphore;

    .line 66
    return v10

    .line 68
    .end local v0    # "permits":I
    :cond_3
    :try_start_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v15
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    sub-long/2addr v15, v11

    cmp-long v0, v15, v5

    if-ltz v0, :cond_1

    .line 69
    nop

    .line 72
    iput-object v8, v7, Lcom/koushikdutta/async/ThreadQueue;->waiter:Lcom/koushikdutta/async/AsyncSemaphore;

    .line 69
    return v14

    .line 59
    .local v0, "run":Ljava/lang/Runnable;
    :cond_4
    :try_start_4
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 60
    .end local v0    # "run":Ljava/lang/Runnable;
    goto :goto_0

    .line 72
    .end local v11    # "start":J
    :catchall_0
    move-exception v0

    iput-object v8, v7, Lcom/koushikdutta/async/ThreadQueue;->waiter:Lcom/koushikdutta/async/AsyncSemaphore;

    throw v0
.end method
