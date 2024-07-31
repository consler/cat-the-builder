.class public Lorg/catrobat/catroid/utils/PausableScheduledThreadPoolExecutor;
.super Ljava/util/concurrent/ScheduledThreadPoolExecutor;
.source "PausableScheduledThreadPoolExecutor.java"


# instance fields
.field private isPaused:Z

.field private pauseLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private unpaused:Ljava/util/concurrent/locks/Condition;


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "corePoolSize"    # I

    .line 38
    invoke-direct {p0, p1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(I)V

    .line 34
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lorg/catrobat/catroid/utils/PausableScheduledThreadPoolExecutor;->pauseLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 35
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Lorg/catrobat/catroid/utils/PausableScheduledThreadPoolExecutor;->unpaused:Ljava/util/concurrent/locks/Condition;

    .line 39
    return-void
.end method


# virtual methods
.method protected beforeExecute(Ljava/lang/Thread;Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "t"    # Ljava/lang/Thread;
    .param p2, "r"    # Ljava/lang/Runnable;

    .line 43
    invoke-super {p0, p1, p2}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->beforeExecute(Ljava/lang/Thread;Ljava/lang/Runnable;)V

    .line 44
    iget-object v0, p0, Lorg/catrobat/catroid/utils/PausableScheduledThreadPoolExecutor;->pauseLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 46
    :goto_0
    :try_start_0
    iget-boolean v0, p0, Lorg/catrobat/catroid/utils/PausableScheduledThreadPoolExecutor;->isPaused:Z

    if-eqz v0, :cond_0

    .line 47
    iget-object v0, p0, Lorg/catrobat/catroid/utils/PausableScheduledThreadPoolExecutor;->unpaused:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 52
    :cond_0
    :goto_1
    iget-object v0, p0, Lorg/catrobat/catroid/utils/PausableScheduledThreadPoolExecutor;->pauseLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 53
    goto :goto_2

    .line 52
    :catchall_0
    move-exception v0

    goto :goto_3

    .line 49
    :catch_0
    move-exception v0

    .line 50
    .local v0, "interruptedException":Ljava/lang/InterruptedException;
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v0    # "interruptedException":Ljava/lang/InterruptedException;
    goto :goto_1

    .line 54
    :goto_2
    return-void

    .line 52
    :goto_3
    iget-object v1, p0, Lorg/catrobat/catroid/utils/PausableScheduledThreadPoolExecutor;->pauseLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 53
    throw v0
.end method

.method public pause()V
    .locals 2

    .line 57
    iget-object v0, p0, Lorg/catrobat/catroid/utils/PausableScheduledThreadPoolExecutor;->pauseLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 59
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lorg/catrobat/catroid/utils/PausableScheduledThreadPoolExecutor;->isPaused:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    iget-object v0, p0, Lorg/catrobat/catroid/utils/PausableScheduledThreadPoolExecutor;->pauseLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 62
    nop

    .line 63
    return-void

    .line 61
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/catrobat/catroid/utils/PausableScheduledThreadPoolExecutor;->pauseLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 62
    throw v0
.end method

.method public resume()V
    .locals 2

    .line 66
    iget-object v0, p0, Lorg/catrobat/catroid/utils/PausableScheduledThreadPoolExecutor;->pauseLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 68
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lorg/catrobat/catroid/utils/PausableScheduledThreadPoolExecutor;->isPaused:Z

    .line 69
    iget-object v0, p0, Lorg/catrobat/catroid/utils/PausableScheduledThreadPoolExecutor;->unpaused:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    iget-object v0, p0, Lorg/catrobat/catroid/utils/PausableScheduledThreadPoolExecutor;->pauseLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 72
    nop

    .line 73
    return-void

    .line 71
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/catrobat/catroid/utils/PausableScheduledThreadPoolExecutor;->pauseLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 72
    throw v0
.end method
