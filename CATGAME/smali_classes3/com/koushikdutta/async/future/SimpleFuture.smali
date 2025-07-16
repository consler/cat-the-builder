.class public Lcom/koushikdutta/async/future/SimpleFuture;
.super Lcom/koushikdutta/async/future/SimpleCancellable;
.source "SimpleFuture.java"

# interfaces
.implements Lcom/koushikdutta/async/future/DependentFuture;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/koushikdutta/async/future/SimpleCancellable;",
        "Lcom/koushikdutta/async/future/DependentFuture<",
        "TT;>;"
    }
.end annotation


# instance fields
.field callback:Lcom/koushikdutta/async/future/FutureCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/koushikdutta/async/future/FutureCallback<",
            "TT;>;"
        }
    .end annotation
.end field

.field exception:Ljava/lang/Exception;

.field result:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field silent:Z

.field waiter:Lcom/koushikdutta/async/AsyncSemaphore;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/koushikdutta/async/future/SimpleCancellable;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Exception;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/koushikdutta/async/future/SimpleCancellable;-><init>()V

    .line 25
    invoke-virtual {p0, p1}, Lcom/koushikdutta/async/future/SimpleFuture;->setComplete(Ljava/lang/Exception;)Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 20
    invoke-direct {p0}, Lcom/koushikdutta/async/future/SimpleCancellable;-><init>()V

    .line 21
    invoke-virtual {p0, p1}, Lcom/koushikdutta/async/future/SimpleFuture;->setComplete(Ljava/lang/Object;)Z

    return-void
.end method

.method private cancelInternal(Z)Z
    .locals 1

    .line 34
    invoke-super {p0}, Lcom/koushikdutta/async/future/SimpleCancellable;->cancel()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 38
    :cond_0
    monitor-enter p0

    .line 39
    :try_start_0
    new-instance v0, Ljava/util/concurrent/CancellationException;

    invoke-direct {v0}, Ljava/util/concurrent/CancellationException;-><init>()V

    iput-object v0, p0, Lcom/koushikdutta/async/future/SimpleFuture;->exception:Ljava/lang/Exception;

    .line 40
    invoke-virtual {p0}, Lcom/koushikdutta/async/future/SimpleFuture;->releaseWaiterLocked()V

    .line 41
    invoke-direct {p0}, Lcom/koushikdutta/async/future/SimpleFuture;->handleCompleteLocked()Lcom/koushikdutta/async/future/FutureCallback;

    move-result-object v0

    .line 42
    iput-boolean p1, p0, Lcom/koushikdutta/async/future/SimpleFuture;->silent:Z

    .line 43
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    invoke-direct {p0, v0}, Lcom/koushikdutta/async/future/SimpleFuture;->handleCallbackUnlocked(Lcom/koushikdutta/async/future/FutureCallback;)V

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    .line 43
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private getResultOrThrow()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .line 70
    iget-object v0, p0, Lcom/koushikdutta/async/future/SimpleFuture;->exception:Ljava/lang/Exception;

    if-nez v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/koushikdutta/async/future/SimpleFuture;->result:Ljava/lang/Object;

    return-object v0

    .line 71
    :cond_0
    new-instance v0, Ljava/util/concurrent/ExecutionException;

    iget-object v1, p0, Lcom/koushikdutta/async/future/SimpleFuture;->exception:Ljava/lang/Exception;

    invoke-direct {v0, v1}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method private handleCallbackUnlocked(Lcom/koushikdutta/async/future/FutureCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/koushikdutta/async/future/FutureCallback<",
            "TT;>;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 106
    iget-boolean v0, p0, Lcom/koushikdutta/async/future/SimpleFuture;->silent:Z

    if-nez v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/koushikdutta/async/future/SimpleFuture;->exception:Ljava/lang/Exception;

    iget-object v1, p0, Lcom/koushikdutta/async/future/SimpleFuture;->result:Ljava/lang/Object;

    invoke-interface {p1, v0, v1}, Lcom/koushikdutta/async/future/FutureCallback;->onCompleted(Ljava/lang/Exception;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private handleCompleteLocked()Lcom/koushikdutta/async/future/FutureCallback;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/koushikdutta/async/future/FutureCallback<",
            "TT;>;"
        }
    .end annotation

    .line 99
    iget-object v0, p0, Lcom/koushikdutta/async/future/SimpleFuture;->callback:Lcom/koushikdutta/async/future/FutureCallback;

    const/4 v1, 0x0

    .line 101
    iput-object v1, p0, Lcom/koushikdutta/async/future/SimpleFuture;->callback:Lcom/koushikdutta/async/future/FutureCallback;

    return-object v0
.end method


# virtual methods
.method public cancel()Z
    .locals 1

    .line 54
    iget-boolean v0, p0, Lcom/koushikdutta/async/future/SimpleFuture;->silent:Z

    invoke-direct {p0, v0}, Lcom/koushikdutta/async/future/SimpleFuture;->cancelInternal(Z)Z

    move-result v0

    return v0
.end method

.method public cancel(Z)Z
    .locals 0

    .line 30
    invoke-virtual {p0}, Lcom/koushikdutta/async/future/SimpleFuture;->cancel()Z

    move-result p1

    return p1
.end method

.method public cancelSilently()Z
    .locals 1

    const/4 v0, 0x1

    .line 49
    invoke-direct {p0, v0}, Lcom/koushikdutta/async/future/SimpleFuture;->cancelInternal(Z)Z

    move-result v0

    return v0
.end method

.method ensureWaiterLocked()Lcom/koushikdutta/async/AsyncSemaphore;
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/koushikdutta/async/future/SimpleFuture;->waiter:Lcom/koushikdutta/async/AsyncSemaphore;

    if-nez v0, :cond_0

    .line 119
    new-instance v0, Lcom/koushikdutta/async/AsyncSemaphore;

    invoke-direct {v0}, Lcom/koushikdutta/async/AsyncSemaphore;-><init>()V

    iput-object v0, p0, Lcom/koushikdutta/async/future/SimpleFuture;->waiter:Lcom/koushikdutta/async/AsyncSemaphore;

    .line 120
    :cond_0
    iget-object v0, p0, Lcom/koushikdutta/async/future/SimpleFuture;->waiter:Lcom/koushikdutta/async/AsyncSemaphore;

    return-object v0
.end method

.method public get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .line 60
    monitor-enter p0

    .line 61
    :try_start_0
    invoke-virtual {p0}, Lcom/koushikdutta/async/future/SimpleFuture;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/koushikdutta/async/future/SimpleFuture;->isDone()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 63
    :cond_0
    invoke-virtual {p0}, Lcom/koushikdutta/async/future/SimpleFuture;->ensureWaiterLocked()Lcom/koushikdutta/async/AsyncSemaphore;

    move-result-object v0

    .line 64
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    invoke-virtual {v0}, Lcom/koushikdutta/async/AsyncSemaphore;->acquire()V

    .line 66
    invoke-direct {p0}, Lcom/koushikdutta/async/future/SimpleFuture;->getResultOrThrow()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 62
    :cond_1
    :goto_0
    :try_start_1
    invoke-direct {p0}, Lcom/koushikdutta/async/future/SimpleFuture;->getResultOrThrow()Ljava/lang/Object;

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 64
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .line 78
    monitor-enter p0

    .line 79
    :try_start_0
    invoke-virtual {p0}, Lcom/koushikdutta/async/future/SimpleFuture;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/koushikdutta/async/future/SimpleFuture;->isDone()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 81
    :cond_0
    invoke-virtual {p0}, Lcom/koushikdutta/async/future/SimpleFuture;->ensureWaiterLocked()Lcom/koushikdutta/async/AsyncSemaphore;

    move-result-object v0

    .line 82
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    invoke-virtual {v0, p1, p2, p3}, Lcom/koushikdutta/async/AsyncSemaphore;->tryAcquire(JLjava/util/concurrent/TimeUnit;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 85
    invoke-direct {p0}, Lcom/koushikdutta/async/future/SimpleFuture;->getResultOrThrow()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 84
    :cond_1
    new-instance p1, Ljava/util/concurrent/TimeoutException;

    invoke-direct {p1}, Ljava/util/concurrent/TimeoutException;-><init>()V

    throw p1

    .line 80
    :cond_2
    :goto_0
    :try_start_1
    invoke-direct {p0}, Lcom/koushikdutta/async/future/SimpleFuture;->getResultOrThrow()Ljava/lang/Object;

    move-result-object p1

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    .line 82
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public getCallback()Lcom/koushikdutta/async/future/FutureCallback;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/koushikdutta/async/future/FutureCallback<",
            "TT;>;"
        }
    .end annotation

    .line 162
    iget-object v0, p0, Lcom/koushikdutta/async/future/SimpleFuture;->callback:Lcom/koushikdutta/async/future/FutureCallback;

    return-object v0
.end method

.method public getCompletionCallback()Lcom/koushikdutta/async/future/FutureCallback;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/koushikdutta/async/future/FutureCallback<",
            "TT;>;"
        }
    .end annotation

    .line 146
    new-instance v0, Lcom/koushikdutta/async/future/SimpleFuture$1;

    invoke-direct {v0, p0}, Lcom/koushikdutta/async/future/SimpleFuture$1;-><init>(Lcom/koushikdutta/async/future/SimpleFuture;)V

    return-object v0
.end method

.method releaseWaiterLocked()V
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/koushikdutta/async/future/SimpleFuture;->waiter:Lcom/koushikdutta/async/AsyncSemaphore;

    if-eqz v0, :cond_0

    .line 112
    invoke-virtual {v0}, Lcom/koushikdutta/async/AsyncSemaphore;->release()V

    const/4 v0, 0x0

    .line 113
    iput-object v0, p0, Lcom/koushikdutta/async/future/SimpleFuture;->waiter:Lcom/koushikdutta/async/AsyncSemaphore;

    :cond_0
    return-void
.end method

.method public bridge synthetic reset()Lcom/koushikdutta/async/future/Cancellable;
    .locals 1

    .line 10
    invoke-virtual {p0}, Lcom/koushikdutta/async/future/SimpleFuture;->reset()Lcom/koushikdutta/async/future/SimpleFuture;

    move-result-object v0

    return-object v0
.end method

.method public reset()Lcom/koushikdutta/async/future/SimpleFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/koushikdutta/async/future/SimpleFuture<",
            "TT;>;"
        }
    .end annotation

    .line 198
    invoke-super {p0}, Lcom/koushikdutta/async/future/SimpleCancellable;->reset()Lcom/koushikdutta/async/future/Cancellable;

    const/4 v0, 0x0

    .line 200
    iput-object v0, p0, Lcom/koushikdutta/async/future/SimpleFuture;->result:Ljava/lang/Object;

    .line 201
    iput-object v0, p0, Lcom/koushikdutta/async/future/SimpleFuture;->exception:Ljava/lang/Exception;

    .line 202
    iput-object v0, p0, Lcom/koushikdutta/async/future/SimpleFuture;->waiter:Lcom/koushikdutta/async/AsyncSemaphore;

    .line 203
    iput-object v0, p0, Lcom/koushikdutta/async/future/SimpleFuture;->callback:Lcom/koushikdutta/async/future/FutureCallback;

    const/4 v0, 0x0

    .line 204
    iput-boolean v0, p0, Lcom/koushikdutta/async/future/SimpleFuture;->silent:Z

    return-object p0
.end method

.method public bridge synthetic setCallback(Lcom/koushikdutta/async/future/FutureCallback;)Lcom/koushikdutta/async/future/Future;
    .locals 0

    .line 10
    invoke-virtual {p0, p1}, Lcom/koushikdutta/async/future/SimpleFuture;->setCallback(Lcom/koushikdutta/async/future/FutureCallback;)Lcom/koushikdutta/async/future/SimpleFuture;

    move-result-object p1

    return-object p1
.end method

.method public setCallback(Lcom/koushikdutta/async/future/FutureCallback;)Lcom/koushikdutta/async/future/SimpleFuture;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/koushikdutta/async/future/FutureCallback<",
            "TT;>;)",
            "Lcom/koushikdutta/async/future/SimpleFuture<",
            "TT;>;"
        }
    .end annotation

    .line 168
    monitor-enter p0

    .line 169
    :try_start_0
    iput-object p1, p0, Lcom/koushikdutta/async/future/SimpleFuture;->callback:Lcom/koushikdutta/async/future/FutureCallback;

    .line 170
    invoke-virtual {p0}, Lcom/koushikdutta/async/future/SimpleFuture;->isDone()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/koushikdutta/async/future/SimpleFuture;->isCancelled()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    .line 171
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/koushikdutta/async/future/SimpleFuture;->handleCompleteLocked()Lcom/koushikdutta/async/future/FutureCallback;

    move-result-object p1

    .line 174
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 175
    invoke-direct {p0, p1}, Lcom/koushikdutta/async/future/SimpleFuture;->handleCallbackUnlocked(Lcom/koushikdutta/async/future/FutureCallback;)V

    return-object p0

    :catchall_0
    move-exception p1

    .line 174
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setComplete(Lcom/koushikdutta/async/future/Future;)Lcom/koushikdutta/async/future/SimpleFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/koushikdutta/async/future/Future<",
            "TT;>;)",
            "Lcom/koushikdutta/async/future/SimpleFuture<",
            "TT;>;"
        }
    .end annotation

    .line 155
    invoke-virtual {p0}, Lcom/koushikdutta/async/future/SimpleFuture;->getCompletionCallback()Lcom/koushikdutta/async/future/FutureCallback;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/koushikdutta/async/future/Future;->setCallback(Lcom/koushikdutta/async/future/FutureCallback;)Lcom/koushikdutta/async/future/Future;

    .line 156
    invoke-virtual {p0, p1}, Lcom/koushikdutta/async/future/SimpleFuture;->setParent(Lcom/koushikdutta/async/future/Cancellable;)Lcom/koushikdutta/async/future/SimpleFuture;

    return-object p0
.end method

.method public setComplete()Z
    .locals 1

    const/4 v0, 0x0

    .line 90
    invoke-virtual {p0, v0}, Lcom/koushikdutta/async/future/SimpleFuture;->setComplete(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public setComplete(Ljava/lang/Exception;)Z
    .locals 1

    const/4 v0, 0x0

    .line 124
    invoke-virtual {p0, p1, v0}, Lcom/koushikdutta/async/future/SimpleFuture;->setComplete(Ljava/lang/Exception;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public setComplete(Ljava/lang/Exception;Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Exception;",
            "TT;)Z"
        }
    .end annotation

    .line 133
    monitor-enter p0

    .line 134
    :try_start_0
    invoke-super {p0}, Lcom/koushikdutta/async/future/SimpleCancellable;->setComplete()Z

    move-result v0

    if-nez v0, :cond_0

    .line 135
    monitor-exit p0

    const/4 p1, 0x0

    return p1

    .line 136
    :cond_0
    iput-object p2, p0, Lcom/koushikdutta/async/future/SimpleFuture;->result:Ljava/lang/Object;

    .line 137
    iput-object p1, p0, Lcom/koushikdutta/async/future/SimpleFuture;->exception:Ljava/lang/Exception;

    .line 138
    invoke-virtual {p0}, Lcom/koushikdutta/async/future/SimpleFuture;->releaseWaiterLocked()V

    .line 139
    invoke-direct {p0}, Lcom/koushikdutta/async/future/SimpleFuture;->handleCompleteLocked()Lcom/koushikdutta/async/future/FutureCallback;

    move-result-object p1

    .line 140
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 141
    invoke-direct {p0, p1}, Lcom/koushikdutta/async/future/SimpleFuture;->handleCallbackUnlocked(Lcom/koushikdutta/async/future/FutureCallback;)V

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    .line 140
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setComplete(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    .line 128
    invoke-virtual {p0, v0, p1}, Lcom/koushikdutta/async/future/SimpleFuture;->setComplete(Ljava/lang/Exception;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic setParent(Lcom/koushikdutta/async/future/Cancellable;)Lcom/koushikdutta/async/future/DependentCancellable;
    .locals 0

    .line 10
    invoke-virtual {p0, p1}, Lcom/koushikdutta/async/future/SimpleFuture;->setParent(Lcom/koushikdutta/async/future/Cancellable;)Lcom/koushikdutta/async/future/SimpleFuture;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setParent(Lcom/koushikdutta/async/future/Cancellable;)Lcom/koushikdutta/async/future/SimpleCancellable;
    .locals 0

    .line 10
    invoke-virtual {p0, p1}, Lcom/koushikdutta/async/future/SimpleFuture;->setParent(Lcom/koushikdutta/async/future/Cancellable;)Lcom/koushikdutta/async/future/SimpleFuture;

    move-result-object p1

    return-object p1
.end method

.method public setParent(Lcom/koushikdutta/async/future/Cancellable;)Lcom/koushikdutta/async/future/SimpleFuture;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/koushikdutta/async/future/Cancellable;",
            ")",
            "Lcom/koushikdutta/async/future/SimpleFuture<",
            "TT;>;"
        }
    .end annotation

    .line 189
    invoke-super {p0, p1}, Lcom/koushikdutta/async/future/SimpleCancellable;->setParent(Lcom/koushikdutta/async/future/Cancellable;)Lcom/koushikdutta/async/future/SimpleCancellable;

    return-object p0
.end method

.method public final then(Lcom/koushikdutta/async/future/FutureCallback;)Lcom/koushikdutta/async/future/FutureCallback;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Lcom/koushikdutta/async/future/FutureCallback<",
            "TT;>;>(TC;)TC;"
        }
    .end annotation

    .line 181
    instance-of v0, p1, Lcom/koushikdutta/async/future/DependentCancellable;

    if-eqz v0, :cond_0

    .line 182
    move-object v0, p1

    check-cast v0, Lcom/koushikdutta/async/future/DependentCancellable;

    invoke-interface {v0, p0}, Lcom/koushikdutta/async/future/DependentCancellable;->setParent(Lcom/koushikdutta/async/future/Cancellable;)Lcom/koushikdutta/async/future/DependentCancellable;

    .line 183
    :cond_0
    invoke-virtual {p0, p1}, Lcom/koushikdutta/async/future/SimpleFuture;->setCallback(Lcom/koushikdutta/async/future/FutureCallback;)Lcom/koushikdutta/async/future/SimpleFuture;

    return-object p1
.end method

.method public tryGet()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 216
    iget-object v0, p0, Lcom/koushikdutta/async/future/SimpleFuture;->result:Ljava/lang/Object;

    return-object v0
.end method

.method public tryGetException()Ljava/lang/Exception;
    .locals 1

    .line 211
    iget-object v0, p0, Lcom/koushikdutta/async/future/SimpleFuture;->exception:Ljava/lang/Exception;

    return-object v0
.end method
