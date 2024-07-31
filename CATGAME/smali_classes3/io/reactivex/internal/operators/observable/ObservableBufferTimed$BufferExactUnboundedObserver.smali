.class final Lio/reactivex/internal/operators/observable/ObservableBufferTimed$BufferExactUnboundedObserver;
.super Lio/reactivex/internal/observers/QueueDrainObserver;
.source "ObservableBufferTimed.java"

# interfaces
.implements Ljava/lang/Runnable;
.implements Lio/reactivex/disposables/Disposable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/observable/ObservableBufferTimed;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "BufferExactUnboundedObserver"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U::",
        "Ljava/util/Collection<",
        "-TT;>;>",
        "Lio/reactivex/internal/observers/QueueDrainObserver<",
        "TT;TU;TU;>;",
        "Ljava/lang/Runnable;",
        "Lio/reactivex/disposables/Disposable;"
    }
.end annotation


# instance fields
.field buffer:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TU;"
        }
    .end annotation
.end field

.field final bufferSupplier:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable<",
            "TU;>;"
        }
    .end annotation
.end field

.field s:Lio/reactivex/disposables/Disposable;

.field final scheduler:Lio/reactivex/Scheduler;

.field final timer:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lio/reactivex/disposables/Disposable;",
            ">;"
        }
    .end annotation
.end field

.field final timespan:J

.field final unit:Ljava/util/concurrent/TimeUnit;


# direct methods
.method constructor <init>(Lio/reactivex/Observer;Ljava/util/concurrent/Callable;JLjava/util/concurrent/TimeUnit;Lio/reactivex/Scheduler;)V
    .locals 1
    .param p3, "timespan"    # J
    .param p5, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p6, "scheduler"    # Lio/reactivex/Scheduler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observer<",
            "-TU;>;",
            "Ljava/util/concurrent/Callable<",
            "TU;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/Scheduler;",
            ")V"
        }
    .end annotation

    .line 97
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableBufferTimed$BufferExactUnboundedObserver;, "Lio/reactivex/internal/operators/observable/ObservableBufferTimed$BufferExactUnboundedObserver<TT;TU;>;"
    .local p1, "actual":Lio/reactivex/Observer;, "Lio/reactivex/Observer<-TU;>;"
    .local p2, "bufferSupplier":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TU;>;"
    new-instance v0, Lio/reactivex/internal/queue/MpscLinkedQueue;

    invoke-direct {v0}, Lio/reactivex/internal/queue/MpscLinkedQueue;-><init>()V

    invoke-direct {p0, p1, v0}, Lio/reactivex/internal/observers/QueueDrainObserver;-><init>(Lio/reactivex/Observer;Lio/reactivex/internal/fuseable/SimplePlainQueue;)V

    .line 92
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableBufferTimed$BufferExactUnboundedObserver;->timer:Ljava/util/concurrent/atomic/AtomicReference;

    .line 98
    iput-object p2, p0, Lio/reactivex/internal/operators/observable/ObservableBufferTimed$BufferExactUnboundedObserver;->bufferSupplier:Ljava/util/concurrent/Callable;

    .line 99
    iput-wide p3, p0, Lio/reactivex/internal/operators/observable/ObservableBufferTimed$BufferExactUnboundedObserver;->timespan:J

    .line 100
    iput-object p5, p0, Lio/reactivex/internal/operators/observable/ObservableBufferTimed$BufferExactUnboundedObserver;->unit:Ljava/util/concurrent/TimeUnit;

    .line 101
    iput-object p6, p0, Lio/reactivex/internal/operators/observable/ObservableBufferTimed$BufferExactUnboundedObserver;->scheduler:Lio/reactivex/Scheduler;

    .line 102
    return-void
.end method


# virtual methods
.method public bridge synthetic accept(Lio/reactivex/Observer;Ljava/lang/Object;)V
    .locals 1
    .param p1, "x0"    # Lio/reactivex/Observer;
    .param p2, "x1"    # Ljava/lang/Object;

    .line 81
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableBufferTimed$BufferExactUnboundedObserver;, "Lio/reactivex/internal/operators/observable/ObservableBufferTimed$BufferExactUnboundedObserver<TT;TU;>;"
    move-object v0, p2

    check-cast v0, Ljava/util/Collection;

    invoke-virtual {p0, p1, v0}, Lio/reactivex/internal/operators/observable/ObservableBufferTimed$BufferExactUnboundedObserver;->accept(Lio/reactivex/Observer;Ljava/util/Collection;)V

    return-void
.end method

.method public accept(Lio/reactivex/Observer;Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observer<",
            "-TU;>;TU;)V"
        }
    .end annotation

    .line 213
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableBufferTimed$BufferExactUnboundedObserver;, "Lio/reactivex/internal/operators/observable/ObservableBufferTimed$BufferExactUnboundedObserver<TT;TU;>;"
    .local p1, "a":Lio/reactivex/Observer;, "Lio/reactivex/Observer<-TU;>;"
    .local p2, "v":Ljava/util/Collection;, "TU;"
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableBufferTimed$BufferExactUnboundedObserver;->actual:Lio/reactivex/Observer;

    invoke-interface {v0, p2}, Lio/reactivex/Observer;->onNext(Ljava/lang/Object;)V

    .line 214
    return-void
.end method

.method public dispose()V
    .locals 1

    .line 172
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableBufferTimed$BufferExactUnboundedObserver;, "Lio/reactivex/internal/operators/observable/ObservableBufferTimed$BufferExactUnboundedObserver<TT;TU;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableBufferTimed$BufferExactUnboundedObserver;->timer:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0}, Lio/reactivex/internal/disposables/DisposableHelper;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)Z

    .line 173
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableBufferTimed$BufferExactUnboundedObserver;->s:Lio/reactivex/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 174
    return-void
.end method

.method public isDisposed()Z
    .locals 2

    .line 178
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableBufferTimed$BufferExactUnboundedObserver;, "Lio/reactivex/internal/operators/observable/ObservableBufferTimed$BufferExactUnboundedObserver<TT;TU;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableBufferTimed$BufferExactUnboundedObserver;->timer:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lio/reactivex/internal/disposables/DisposableHelper;->DISPOSED:Lio/reactivex/internal/disposables/DisposableHelper;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onComplete()V
    .locals 5

    .line 156
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableBufferTimed$BufferExactUnboundedObserver;, "Lio/reactivex/internal/operators/observable/ObservableBufferTimed$BufferExactUnboundedObserver<TT;TU;>;"
    monitor-enter p0

    .line 157
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableBufferTimed$BufferExactUnboundedObserver;->buffer:Ljava/util/Collection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 158
    .local v1, "b":Ljava/util/Collection;, "TU;"
    :try_start_1
    iput-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableBufferTimed$BufferExactUnboundedObserver;->buffer:Ljava/util/Collection;

    .line 159
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 160
    if-eqz v1, :cond_0

    .line 161
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableBufferTimed$BufferExactUnboundedObserver;->queue:Lio/reactivex/internal/fuseable/SimplePlainQueue;

    invoke-interface {v0, v1}, Lio/reactivex/internal/fuseable/SimplePlainQueue;->offer(Ljava/lang/Object;)Z

    .line 162
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableBufferTimed$BufferExactUnboundedObserver;->done:Z

    .line 163
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableBufferTimed$BufferExactUnboundedObserver;->enter()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableBufferTimed$BufferExactUnboundedObserver;->queue:Lio/reactivex/internal/fuseable/SimplePlainQueue;

    iget-object v2, p0, Lio/reactivex/internal/operators/observable/ObservableBufferTimed$BufferExactUnboundedObserver;->actual:Lio/reactivex/Observer;

    const/4 v3, 0x0

    invoke-static {v0, v2, v3, p0, p0}, Lio/reactivex/internal/util/QueueDrainHelper;->drainLoop(Lio/reactivex/internal/fuseable/SimplePlainQueue;Lio/reactivex/Observer;ZLio/reactivex/disposables/Disposable;Lio/reactivex/internal/util/ObservableQueueDrain;)V

    .line 167
    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableBufferTimed$BufferExactUnboundedObserver;->timer:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0}, Lio/reactivex/internal/disposables/DisposableHelper;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)Z

    .line 168
    return-void

    .line 159
    :catchall_0
    move-exception v0

    goto :goto_0

    .end local v1    # "b":Ljava/util/Collection;, "TU;"
    :catchall_1
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    .restart local v1    # "b":Ljava/util/Collection;, "TU;"
    :goto_0
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "t"    # Ljava/lang/Throwable;

    .line 146
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableBufferTimed$BufferExactUnboundedObserver;, "Lio/reactivex/internal/operators/observable/ObservableBufferTimed$BufferExactUnboundedObserver<TT;TU;>;"
    monitor-enter p0

    .line 147
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableBufferTimed$BufferExactUnboundedObserver;->buffer:Ljava/util/Collection;

    .line 148
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 149
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableBufferTimed$BufferExactUnboundedObserver;->actual:Lio/reactivex/Observer;

    invoke-interface {v0, p1}, Lio/reactivex/Observer;->onError(Ljava/lang/Throwable;)V

    .line 150
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableBufferTimed$BufferExactUnboundedObserver;->timer:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0}, Lio/reactivex/internal/disposables/DisposableHelper;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)Z

    .line 151
    return-void

    .line 148
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 135
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableBufferTimed$BufferExactUnboundedObserver;, "Lio/reactivex/internal/operators/observable/ObservableBufferTimed$BufferExactUnboundedObserver<TT;TU;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    monitor-enter p0

    .line 136
    :try_start_0
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableBufferTimed$BufferExactUnboundedObserver;->buffer:Ljava/util/Collection;

    .line 137
    .local v0, "b":Ljava/util/Collection;, "TU;"
    if-nez v0, :cond_0

    .line 138
    monitor-exit p0

    return-void

    .line 140
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 141
    nop

    .end local v0    # "b":Ljava/util/Collection;, "TU;"
    monitor-exit p0

    .line 142
    return-void

    .line 141
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .locals 10
    .param p1, "s"    # Lio/reactivex/disposables/Disposable;

    .line 106
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableBufferTimed$BufferExactUnboundedObserver;, "Lio/reactivex/internal/operators/observable/ObservableBufferTimed$BufferExactUnboundedObserver<TT;TU;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableBufferTimed$BufferExactUnboundedObserver;->s:Lio/reactivex/disposables/Disposable;

    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->validate(Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/Disposable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 107
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableBufferTimed$BufferExactUnboundedObserver;->s:Lio/reactivex/disposables/Disposable;

    .line 112
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableBufferTimed$BufferExactUnboundedObserver;->bufferSupplier:Ljava/util/concurrent/Callable;

    invoke-interface {v1}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "The buffer supplied is null"

    invoke-static {v1, v2}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 118
    .local v1, "b":Ljava/util/Collection;, "TU;"
    nop

    .line 120
    iput-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableBufferTimed$BufferExactUnboundedObserver;->buffer:Ljava/util/Collection;

    .line 122
    iget-object v2, p0, Lio/reactivex/internal/operators/observable/ObservableBufferTimed$BufferExactUnboundedObserver;->actual:Lio/reactivex/Observer;

    invoke-interface {v2, p0}, Lio/reactivex/Observer;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    .line 124
    iget-boolean v2, p0, Lio/reactivex/internal/operators/observable/ObservableBufferTimed$BufferExactUnboundedObserver;->cancelled:Z

    if-nez v2, :cond_0

    .line 125
    iget-object v3, p0, Lio/reactivex/internal/operators/observable/ObservableBufferTimed$BufferExactUnboundedObserver;->scheduler:Lio/reactivex/Scheduler;

    iget-wide v7, p0, Lio/reactivex/internal/operators/observable/ObservableBufferTimed$BufferExactUnboundedObserver;->timespan:J

    iget-object v9, p0, Lio/reactivex/internal/operators/observable/ObservableBufferTimed$BufferExactUnboundedObserver;->unit:Ljava/util/concurrent/TimeUnit;

    move-object v4, p0

    move-wide v5, v7

    invoke-virtual/range {v3 .. v9}, Lio/reactivex/Scheduler;->schedulePeriodicallyDirect(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Lio/reactivex/disposables/Disposable;

    move-result-object v2

    .line 126
    .local v2, "d":Lio/reactivex/disposables/Disposable;
    iget-object v3, p0, Lio/reactivex/internal/operators/observable/ObservableBufferTimed$BufferExactUnboundedObserver;->timer:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3, v0, v2}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 127
    invoke-interface {v2}, Lio/reactivex/disposables/Disposable;->dispose()V

    goto :goto_0

    .line 113
    .end local v1    # "b":Ljava/util/Collection;, "TU;"
    .end local v2    # "d":Lio/reactivex/disposables/Disposable;
    :catchall_0
    move-exception v1

    .line 114
    .local v0, "b":Ljava/util/Collection;, "TU;"
    .local v1, "e":Ljava/lang/Throwable;
    invoke-static {v1}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 115
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableBufferTimed$BufferExactUnboundedObserver;->dispose()V

    .line 116
    iget-object v2, p0, Lio/reactivex/internal/operators/observable/ObservableBufferTimed$BufferExactUnboundedObserver;->actual:Lio/reactivex/Observer;

    invoke-static {v1, v2}, Lio/reactivex/internal/disposables/EmptyDisposable;->error(Ljava/lang/Throwable;Lio/reactivex/Observer;)V

    .line 117
    return-void

    .line 131
    .end local v0    # "b":Ljava/util/Collection;, "TU;"
    .end local v1    # "e":Ljava/lang/Throwable;
    :cond_0
    :goto_0
    return-void
.end method

.method public run()V
    .locals 3

    .line 186
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableBufferTimed$BufferExactUnboundedObserver;, "Lio/reactivex/internal/operators/observable/ObservableBufferTimed$BufferExactUnboundedObserver<TT;TU;>;"
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableBufferTimed$BufferExactUnboundedObserver;->bufferSupplier:Ljava/util/concurrent/Callable;

    invoke-interface {v1}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "The bufferSupplier returned a null buffer"

    invoke-static {v1, v2}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 192
    .local v1, "next":Ljava/util/Collection;, "TU;"
    nop

    .line 196
    monitor-enter p0

    .line 197
    :try_start_1
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableBufferTimed$BufferExactUnboundedObserver;->buffer:Ljava/util/Collection;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 198
    .local v0, "current":Ljava/util/Collection;, "TU;"
    if-eqz v0, :cond_0

    .line 199
    :try_start_2
    iput-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableBufferTimed$BufferExactUnboundedObserver;->buffer:Ljava/util/Collection;

    .line 201
    :cond_0
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 203
    if-nez v0, :cond_1

    .line 204
    iget-object v2, p0, Lio/reactivex/internal/operators/observable/ObservableBufferTimed$BufferExactUnboundedObserver;->timer:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v2}, Lio/reactivex/internal/disposables/DisposableHelper;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)Z

    .line 205
    return-void

    .line 208
    :cond_1
    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, p0}, Lio/reactivex/internal/operators/observable/ObservableBufferTimed$BufferExactUnboundedObserver;->fastPathEmit(Ljava/lang/Object;ZLio/reactivex/disposables/Disposable;)V

    .line 209
    return-void

    .line 201
    .end local v0    # "current":Ljava/util/Collection;, "TU;"
    :catchall_0
    move-exception v2

    .restart local v0    # "current":Ljava/util/Collection;, "TU;"
    :goto_0
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v2

    :catchall_1
    move-exception v2

    goto :goto_0

    .line 187
    .end local v0    # "current":Ljava/util/Collection;, "TU;"
    .end local v1    # "next":Ljava/util/Collection;, "TU;"
    :catchall_2
    move-exception v1

    .line 188
    .local v0, "next":Ljava/util/Collection;, "TU;"
    .local v1, "e":Ljava/lang/Throwable;
    invoke-static {v1}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 189
    iget-object v2, p0, Lio/reactivex/internal/operators/observable/ObservableBufferTimed$BufferExactUnboundedObserver;->actual:Lio/reactivex/Observer;

    invoke-interface {v2, v1}, Lio/reactivex/Observer;->onError(Ljava/lang/Throwable;)V

    .line 190
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableBufferTimed$BufferExactUnboundedObserver;->dispose()V

    .line 191
    return-void
.end method
