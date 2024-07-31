.class final Lio/reactivex/internal/operators/observable/ObservableBufferTimed$BufferExactBoundedObserver;
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
    name = "BufferExactBoundedObserver"
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

.field consumerIndex:J

.field final maxSize:I

.field producerIndex:J

.field final restartTimerOnMaxSize:Z

.field s:Lio/reactivex/disposables/Disposable;

.field timer:Lio/reactivex/disposables/Disposable;

.field final timespan:J

.field final unit:Ljava/util/concurrent/TimeUnit;

.field final w:Lio/reactivex/Scheduler$Worker;


# direct methods
.method constructor <init>(Lio/reactivex/Observer;Ljava/util/concurrent/Callable;JLjava/util/concurrent/TimeUnit;IZLio/reactivex/Scheduler$Worker;)V
    .locals 1
    .param p3, "timespan"    # J
    .param p5, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p6, "maxSize"    # I
    .param p7, "restartOnMaxSize"    # Z
    .param p8, "w"    # Lio/reactivex/Scheduler$Worker;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observer<",
            "-TU;>;",
            "Ljava/util/concurrent/Callable<",
            "TU;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            "IZ",
            "Lio/reactivex/Scheduler$Worker;",
            ")V"
        }
    .end annotation

    .line 413
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableBufferTimed$BufferExactBoundedObserver;, "Lio/reactivex/internal/operators/observable/ObservableBufferTimed$BufferExactBoundedObserver<TT;TU;>;"
    .local p1, "actual":Lio/reactivex/Observer;, "Lio/reactivex/Observer<-TU;>;"
    .local p2, "bufferSupplier":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TU;>;"
    new-instance v0, Lio/reactivex/internal/queue/MpscLinkedQueue;

    invoke-direct {v0}, Lio/reactivex/internal/queue/MpscLinkedQueue;-><init>()V

    invoke-direct {p0, p1, v0}, Lio/reactivex/internal/observers/QueueDrainObserver;-><init>(Lio/reactivex/Observer;Lio/reactivex/internal/fuseable/SimplePlainQueue;)V

    .line 414
    iput-object p2, p0, Lio/reactivex/internal/operators/observable/ObservableBufferTimed$BufferExactBoundedObserver;->bufferSupplier:Ljava/util/concurrent/Callable;

    .line 415
    iput-wide p3, p0, Lio/reactivex/internal/operators/observable/ObservableBufferTimed$BufferExactBoundedObserver;->timespan:J

    .line 416
    iput-object p5, p0, Lio/reactivex/internal/operators/observable/ObservableBufferTimed$BufferExactBoundedObserver;->unit:Ljava/util/concurrent/TimeUnit;

    .line 417
    iput p6, p0, Lio/reactivex/internal/operators/observable/ObservableBufferTimed$BufferExactBoundedObserver;->maxSize:I

    .line 418
    iput-boolean p7, p0, Lio/reactivex/internal/operators/observable/ObservableBufferTimed$BufferExactBoundedObserver;->restartTimerOnMaxSize:Z

    .line 419
    iput-object p8, p0, Lio/reactivex/internal/operators/observable/ObservableBufferTimed$BufferExactBoundedObserver;->w:Lio/reactivex/Scheduler$Worker;

    .line 420
    return-void
.end method


# virtual methods
.method public bridge synthetic accept(Lio/reactivex/Observer;Ljava/lang/Object;)V
    .locals 1
    .param p1, "x0"    # Lio/reactivex/Observer;
    .param p2, "x1"    # Ljava/lang/Object;

    .line 389
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableBufferTimed$BufferExactBoundedObserver;, "Lio/reactivex/internal/operators/observable/ObservableBufferTimed$BufferExactBoundedObserver<TT;TU;>;"
    move-object v0, p2

    check-cast v0, Ljava/util/Collection;

    invoke-virtual {p0, p1, v0}, Lio/reactivex/internal/operators/observable/ObservableBufferTimed$BufferExactBoundedObserver;->accept(Lio/reactivex/Observer;Ljava/util/Collection;)V

    return-void
.end method

.method public accept(Lio/reactivex/Observer;Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observer<",
            "-TU;>;TU;)V"
        }
    .end annotation

    .line 523
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableBufferTimed$BufferExactBoundedObserver;, "Lio/reactivex/internal/operators/observable/ObservableBufferTimed$BufferExactBoundedObserver<TT;TU;>;"
    .local p1, "a":Lio/reactivex/Observer;, "Lio/reactivex/Observer<-TU;>;"
    .local p2, "v":Ljava/util/Collection;, "TU;"
    invoke-interface {p1, p2}, Lio/reactivex/Observer;->onNext(Ljava/lang/Object;)V

    .line 524
    return-void
.end method

.method public dispose()V
    .locals 1

    .line 529
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableBufferTimed$BufferExactBoundedObserver;, "Lio/reactivex/internal/operators/observable/ObservableBufferTimed$BufferExactBoundedObserver<TT;TU;>;"
    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableBufferTimed$BufferExactBoundedObserver;->cancelled:Z

    if-nez v0, :cond_0

    .line 530
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableBufferTimed$BufferExactBoundedObserver;->cancelled:Z

    .line 531
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableBufferTimed$BufferExactBoundedObserver;->s:Lio/reactivex/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 532
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableBufferTimed$BufferExactBoundedObserver;->w:Lio/reactivex/Scheduler$Worker;

    invoke-virtual {v0}, Lio/reactivex/Scheduler$Worker;->dispose()V

    .line 533
    monitor-enter p0

    .line 534
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableBufferTimed$BufferExactBoundedObserver;->buffer:Ljava/util/Collection;

    .line 535
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 537
    :cond_0
    :goto_0
    return-void
.end method

.method public isDisposed()Z
    .locals 1

    .line 541
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableBufferTimed$BufferExactBoundedObserver;, "Lio/reactivex/internal/operators/observable/ObservableBufferTimed$BufferExactBoundedObserver<TT;TU;>;"
    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableBufferTimed$BufferExactBoundedObserver;->cancelled:Z

    return v0
.end method

.method public onComplete()V
    .locals 5

    .line 506
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableBufferTimed$BufferExactBoundedObserver;, "Lio/reactivex/internal/operators/observable/ObservableBufferTimed$BufferExactBoundedObserver<TT;TU;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableBufferTimed$BufferExactBoundedObserver;->w:Lio/reactivex/Scheduler$Worker;

    invoke-virtual {v0}, Lio/reactivex/Scheduler$Worker;->dispose()V

    .line 509
    monitor-enter p0

    .line 510
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableBufferTimed$BufferExactBoundedObserver;->buffer:Ljava/util/Collection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 511
    .local v1, "b":Ljava/util/Collection;, "TU;"
    :try_start_1
    iput-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableBufferTimed$BufferExactBoundedObserver;->buffer:Ljava/util/Collection;

    .line 512
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 514
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableBufferTimed$BufferExactBoundedObserver;->queue:Lio/reactivex/internal/fuseable/SimplePlainQueue;

    invoke-interface {v0, v1}, Lio/reactivex/internal/fuseable/SimplePlainQueue;->offer(Ljava/lang/Object;)Z

    .line 515
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableBufferTimed$BufferExactBoundedObserver;->done:Z

    .line 516
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableBufferTimed$BufferExactBoundedObserver;->enter()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 517
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableBufferTimed$BufferExactBoundedObserver;->queue:Lio/reactivex/internal/fuseable/SimplePlainQueue;

    iget-object v2, p0, Lio/reactivex/internal/operators/observable/ObservableBufferTimed$BufferExactBoundedObserver;->actual:Lio/reactivex/Observer;

    const/4 v3, 0x0

    invoke-static {v0, v2, v3, p0, p0}, Lio/reactivex/internal/util/QueueDrainHelper;->drainLoop(Lio/reactivex/internal/fuseable/SimplePlainQueue;Lio/reactivex/Observer;ZLio/reactivex/disposables/Disposable;Lio/reactivex/internal/util/ObservableQueueDrain;)V

    .line 519
    :cond_0
    return-void

    .line 512
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

    .line 497
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableBufferTimed$BufferExactBoundedObserver;, "Lio/reactivex/internal/operators/observable/ObservableBufferTimed$BufferExactBoundedObserver<TT;TU;>;"
    monitor-enter p0

    .line 498
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableBufferTimed$BufferExactBoundedObserver;->buffer:Ljava/util/Collection;

    .line 499
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 500
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableBufferTimed$BufferExactBoundedObserver;->actual:Lio/reactivex/Observer;

    invoke-interface {v0, p1}, Lio/reactivex/Observer;->onError(Ljava/lang/Throwable;)V

    .line 501
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableBufferTimed$BufferExactBoundedObserver;->w:Lio/reactivex/Scheduler$Worker;

    invoke-virtual {v0}, Lio/reactivex/Scheduler$Worker;->dispose()V

    .line 502
    return-void

    .line 499
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 450
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableBufferTimed$BufferExactBoundedObserver;, "Lio/reactivex/internal/operators/observable/ObservableBufferTimed$BufferExactBoundedObserver<TT;TU;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    monitor-enter p0

    .line 451
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableBufferTimed$BufferExactBoundedObserver;->buffer:Ljava/util/Collection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 452
    .local v1, "b":Ljava/util/Collection;, "TU;"
    if-nez v1, :cond_0

    .line 453
    :try_start_1
    monitor-exit p0

    return-void

    .line 456
    :cond_0
    invoke-interface {v1, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 458
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v2

    iget v3, p0, Lio/reactivex/internal/operators/observable/ObservableBufferTimed$BufferExactBoundedObserver;->maxSize:I

    if-ge v2, v3, :cond_1

    .line 459
    monitor-exit p0

    return-void

    .line 461
    :cond_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    .line 463
    iget-boolean v2, p0, Lio/reactivex/internal/operators/observable/ObservableBufferTimed$BufferExactBoundedObserver;->restartTimerOnMaxSize:Z

    const-wide/16 v3, 0x1

    if-eqz v2, :cond_2

    .line 464
    iput-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableBufferTimed$BufferExactBoundedObserver;->buffer:Ljava/util/Collection;

    .line 465
    iget-wide v5, p0, Lio/reactivex/internal/operators/observable/ObservableBufferTimed$BufferExactBoundedObserver;->producerIndex:J

    add-long/2addr v5, v3

    iput-wide v5, p0, Lio/reactivex/internal/operators/observable/ObservableBufferTimed$BufferExactBoundedObserver;->producerIndex:J

    .line 467
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableBufferTimed$BufferExactBoundedObserver;->timer:Lio/reactivex/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 470
    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p0, v1, v0, p0}, Lio/reactivex/internal/operators/observable/ObservableBufferTimed$BufferExactBoundedObserver;->fastPathOrderedEmit(Ljava/lang/Object;ZLio/reactivex/disposables/Disposable;)V

    .line 473
    :try_start_2
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableBufferTimed$BufferExactBoundedObserver;->bufferSupplier:Ljava/util/concurrent/Callable;

    invoke-interface {v0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v0

    const-string v2, "The buffer supplied is null"

    invoke-static {v0, v2}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 479
    .end local v1    # "b":Ljava/util/Collection;, "TU;"
    .local v0, "b":Ljava/util/Collection;, "TU;"
    nop

    .line 481
    iget-boolean v1, p0, Lio/reactivex/internal/operators/observable/ObservableBufferTimed$BufferExactBoundedObserver;->restartTimerOnMaxSize:Z

    if-eqz v1, :cond_3

    .line 482
    monitor-enter p0

    .line 483
    :try_start_3
    iput-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableBufferTimed$BufferExactBoundedObserver;->buffer:Ljava/util/Collection;

    .line 484
    iget-wide v1, p0, Lio/reactivex/internal/operators/observable/ObservableBufferTimed$BufferExactBoundedObserver;->consumerIndex:J

    add-long/2addr v1, v3

    iput-wide v1, p0, Lio/reactivex/internal/operators/observable/ObservableBufferTimed$BufferExactBoundedObserver;->consumerIndex:J

    .line 485
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 487
    iget-object v3, p0, Lio/reactivex/internal/operators/observable/ObservableBufferTimed$BufferExactBoundedObserver;->w:Lio/reactivex/Scheduler$Worker;

    iget-wide v7, p0, Lio/reactivex/internal/operators/observable/ObservableBufferTimed$BufferExactBoundedObserver;->timespan:J

    iget-object v9, p0, Lio/reactivex/internal/operators/observable/ObservableBufferTimed$BufferExactBoundedObserver;->unit:Ljava/util/concurrent/TimeUnit;

    move-object v4, p0

    move-wide v5, v7

    invoke-virtual/range {v3 .. v9}, Lio/reactivex/Scheduler$Worker;->schedulePeriodically(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Lio/reactivex/disposables/Disposable;

    move-result-object v1

    iput-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableBufferTimed$BufferExactBoundedObserver;->timer:Lio/reactivex/disposables/Disposable;

    goto :goto_0

    .line 485
    :catchall_0
    move-exception v1

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v1

    .line 489
    :cond_3
    monitor-enter p0

    .line 490
    :try_start_5
    iput-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableBufferTimed$BufferExactBoundedObserver;->buffer:Ljava/util/Collection;

    .line 491
    monitor-exit p0

    .line 493
    :goto_0
    return-void

    .line 491
    :catchall_1
    move-exception v1

    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v1

    .line 474
    .end local v0    # "b":Ljava/util/Collection;, "TU;"
    .restart local v1    # "b":Ljava/util/Collection;, "TU;"
    :catchall_2
    move-exception v0

    .line 475
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {v0}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 476
    iget-object v2, p0, Lio/reactivex/internal/operators/observable/ObservableBufferTimed$BufferExactBoundedObserver;->actual:Lio/reactivex/Observer;

    invoke-interface {v2, v0}, Lio/reactivex/Observer;->onError(Ljava/lang/Throwable;)V

    .line 477
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableBufferTimed$BufferExactBoundedObserver;->dispose()V

    .line 478
    return-void

    .line 461
    .end local v0    # "e":Ljava/lang/Throwable;
    .end local v1    # "b":Ljava/util/Collection;, "TU;"
    :catchall_3
    move-exception v1

    move-object v10, v1

    move-object v1, v0

    move-object v0, v10

    .restart local v1    # "b":Ljava/util/Collection;, "TU;"
    :goto_1
    :try_start_6
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    throw v0

    :catchall_4
    move-exception v0

    goto :goto_1
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .locals 9
    .param p1, "s"    # Lio/reactivex/disposables/Disposable;

    .line 424
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableBufferTimed$BufferExactBoundedObserver;, "Lio/reactivex/internal/operators/observable/ObservableBufferTimed$BufferExactBoundedObserver<TT;TU;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableBufferTimed$BufferExactBoundedObserver;->s:Lio/reactivex/disposables/Disposable;

    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->validate(Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/Disposable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 425
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableBufferTimed$BufferExactBoundedObserver;->s:Lio/reactivex/disposables/Disposable;

    .line 430
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableBufferTimed$BufferExactBoundedObserver;->bufferSupplier:Ljava/util/concurrent/Callable;

    invoke-interface {v1}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "The buffer supplied is null"

    invoke-static {v1, v2}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v1

    .line 437
    .local v0, "b":Ljava/util/Collection;, "TU;"
    nop

    .line 439
    iput-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableBufferTimed$BufferExactBoundedObserver;->buffer:Ljava/util/Collection;

    .line 441
    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableBufferTimed$BufferExactBoundedObserver;->actual:Lio/reactivex/Observer;

    invoke-interface {v1, p0}, Lio/reactivex/Observer;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    .line 443
    iget-object v2, p0, Lio/reactivex/internal/operators/observable/ObservableBufferTimed$BufferExactBoundedObserver;->w:Lio/reactivex/Scheduler$Worker;

    iget-wide v6, p0, Lio/reactivex/internal/operators/observable/ObservableBufferTimed$BufferExactBoundedObserver;->timespan:J

    iget-object v8, p0, Lio/reactivex/internal/operators/observable/ObservableBufferTimed$BufferExactBoundedObserver;->unit:Ljava/util/concurrent/TimeUnit;

    move-object v3, p0

    move-wide v4, v6

    invoke-virtual/range {v2 .. v8}, Lio/reactivex/Scheduler$Worker;->schedulePeriodically(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Lio/reactivex/disposables/Disposable;

    move-result-object v1

    iput-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableBufferTimed$BufferExactBoundedObserver;->timer:Lio/reactivex/disposables/Disposable;

    goto :goto_0

    .line 431
    .end local v0    # "b":Ljava/util/Collection;, "TU;"
    :catchall_0
    move-exception v1

    .line 432
    .restart local v0    # "b":Ljava/util/Collection;, "TU;"
    .local v1, "e":Ljava/lang/Throwable;
    invoke-static {v1}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 433
    invoke-interface {p1}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 434
    iget-object v2, p0, Lio/reactivex/internal/operators/observable/ObservableBufferTimed$BufferExactBoundedObserver;->actual:Lio/reactivex/Observer;

    invoke-static {v1, v2}, Lio/reactivex/internal/disposables/EmptyDisposable;->error(Ljava/lang/Throwable;Lio/reactivex/Observer;)V

    .line 435
    iget-object v2, p0, Lio/reactivex/internal/operators/observable/ObservableBufferTimed$BufferExactBoundedObserver;->w:Lio/reactivex/Scheduler$Worker;

    invoke-virtual {v2}, Lio/reactivex/Scheduler$Worker;->dispose()V

    .line 436
    return-void

    .line 445
    .end local v0    # "b":Ljava/util/Collection;, "TU;"
    .end local v1    # "e":Ljava/lang/Throwable;
    :cond_0
    :goto_0
    return-void
.end method

.method public run()V
    .locals 6

    .line 549
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableBufferTimed$BufferExactBoundedObserver;, "Lio/reactivex/internal/operators/observable/ObservableBufferTimed$BufferExactBoundedObserver<TT;TU;>;"
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableBufferTimed$BufferExactBoundedObserver;->bufferSupplier:Ljava/util/concurrent/Callable;

    invoke-interface {v1}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "The bufferSupplier returned a null buffer"

    invoke-static {v1, v2}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 555
    .local v1, "next":Ljava/util/Collection;, "TU;"
    nop

    .line 559
    monitor-enter p0

    .line 560
    :try_start_1
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableBufferTimed$BufferExactBoundedObserver;->buffer:Ljava/util/Collection;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 561
    .local v0, "current":Ljava/util/Collection;, "TU;"
    if-eqz v0, :cond_1

    :try_start_2
    iget-wide v2, p0, Lio/reactivex/internal/operators/observable/ObservableBufferTimed$BufferExactBoundedObserver;->producerIndex:J

    iget-wide v4, p0, Lio/reactivex/internal/operators/observable/ObservableBufferTimed$BufferExactBoundedObserver;->consumerIndex:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    goto :goto_0

    .line 564
    :cond_0
    iput-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableBufferTimed$BufferExactBoundedObserver;->buffer:Ljava/util/Collection;

    .line 565
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 567
    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, p0}, Lio/reactivex/internal/operators/observable/ObservableBufferTimed$BufferExactBoundedObserver;->fastPathOrderedEmit(Ljava/lang/Object;ZLio/reactivex/disposables/Disposable;)V

    .line 568
    return-void

    .line 562
    :cond_1
    :goto_0
    :try_start_3
    monitor-exit p0

    return-void

    .line 565
    .end local v0    # "current":Ljava/util/Collection;, "TU;"
    :catchall_0
    move-exception v2

    .restart local v0    # "current":Ljava/util/Collection;, "TU;"
    :goto_1
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v2

    :catchall_1
    move-exception v2

    goto :goto_1

    .line 550
    .end local v0    # "current":Ljava/util/Collection;, "TU;"
    .end local v1    # "next":Ljava/util/Collection;, "TU;"
    :catchall_2
    move-exception v1

    .line 551
    .local v0, "next":Ljava/util/Collection;, "TU;"
    .local v1, "e":Ljava/lang/Throwable;
    invoke-static {v1}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 552
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableBufferTimed$BufferExactBoundedObserver;->dispose()V

    .line 553
    iget-object v2, p0, Lio/reactivex/internal/operators/observable/ObservableBufferTimed$BufferExactBoundedObserver;->actual:Lio/reactivex/Observer;

    invoke-interface {v2, v1}, Lio/reactivex/Observer;->onError(Ljava/lang/Throwable;)V

    .line 554
    return-void
.end method
