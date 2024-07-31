.class final Lio/reactivex/internal/operators/flowable/FlowableCombineLatest$CombineLatestCoordinator;
.super Lio/reactivex/internal/subscriptions/BasicIntQueueSubscription;
.source "FlowableCombineLatest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/FlowableCombineLatest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "CombineLatestCoordinator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/subscriptions/BasicIntQueueSubscription<",
        "TR;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x4687de9589e4abbdL


# instance fields
.field final actual:Lorg/reactivestreams/Subscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/reactivestreams/Subscriber<",
            "-TR;>;"
        }
    .end annotation
.end field

.field volatile cancelled:Z

.field final combiner:Lio/reactivex/functions/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/Function<",
            "-[",
            "Ljava/lang/Object;",
            "+TR;>;"
        }
    .end annotation
.end field

.field completedSources:I

.field final delayErrors:Z

.field volatile done:Z

.field final error:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field

.field final latest:[Ljava/lang/Object;

.field nonEmptySources:I

.field outputFused:Z

.field final queue:Lio/reactivex/internal/queue/SpscLinkedArrayQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/queue/SpscLinkedArrayQueue<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final requested:Ljava/util/concurrent/atomic/AtomicLong;

.field final subscribers:[Lio/reactivex/internal/operators/flowable/FlowableCombineLatest$CombineLatestInnerSubscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lio/reactivex/internal/operators/flowable/FlowableCombineLatest$CombineLatestInnerSubscriber<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lorg/reactivestreams/Subscriber;Lio/reactivex/functions/Function;IIZ)V
    .locals 3
    .param p3, "n"    # I
    .param p4, "bufferSize"    # I
    .param p5, "delayErrors"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/Subscriber<",
            "-TR;>;",
            "Lio/reactivex/functions/Function<",
            "-[",
            "Ljava/lang/Object;",
            "+TR;>;IIZ)V"
        }
    .end annotation

    .line 182
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableCombineLatest$CombineLatestCoordinator;, "Lio/reactivex/internal/operators/flowable/FlowableCombineLatest$CombineLatestCoordinator<TT;TR;>;"
    .local p1, "actual":Lorg/reactivestreams/Subscriber;, "Lorg/reactivestreams/Subscriber<-TR;>;"
    .local p2, "combiner":Lio/reactivex/functions/Function;, "Lio/reactivex/functions/Function<-[Ljava/lang/Object;+TR;>;"
    invoke-direct {p0}, Lio/reactivex/internal/subscriptions/BasicIntQueueSubscription;-><init>()V

    .line 183
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableCombineLatest$CombineLatestCoordinator;->actual:Lorg/reactivestreams/Subscriber;

    .line 184
    iput-object p2, p0, Lio/reactivex/internal/operators/flowable/FlowableCombineLatest$CombineLatestCoordinator;->combiner:Lio/reactivex/functions/Function;

    .line 186
    new-array v0, p3, [Lio/reactivex/internal/operators/flowable/FlowableCombineLatest$CombineLatestInnerSubscriber;

    .line 187
    .local v0, "a":[Lio/reactivex/internal/operators/flowable/FlowableCombineLatest$CombineLatestInnerSubscriber;, "[Lio/reactivex/internal/operators/flowable/FlowableCombineLatest$CombineLatestInnerSubscriber<TT;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p3, :cond_0

    .line 188
    new-instance v2, Lio/reactivex/internal/operators/flowable/FlowableCombineLatest$CombineLatestInnerSubscriber;

    invoke-direct {v2, p0, v1, p4}, Lio/reactivex/internal/operators/flowable/FlowableCombineLatest$CombineLatestInnerSubscriber;-><init>(Lio/reactivex/internal/operators/flowable/FlowableCombineLatest$CombineLatestCoordinator;II)V

    aput-object v2, v0, v1

    .line 187
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 190
    .end local v1    # "i":I
    :cond_0
    iput-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableCombineLatest$CombineLatestCoordinator;->subscribers:[Lio/reactivex/internal/operators/flowable/FlowableCombineLatest$CombineLatestInnerSubscriber;

    .line 191
    new-array v1, p3, [Ljava/lang/Object;

    iput-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowableCombineLatest$CombineLatestCoordinator;->latest:[Ljava/lang/Object;

    .line 192
    new-instance v1, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;

    invoke-direct {v1, p4}, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;-><init>(I)V

    iput-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowableCombineLatest$CombineLatestCoordinator;->queue:Lio/reactivex/internal/queue/SpscLinkedArrayQueue;

    .line 193
    new-instance v1, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowableCombineLatest$CombineLatestCoordinator;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    .line 194
    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowableCombineLatest$CombineLatestCoordinator;->error:Ljava/util/concurrent/atomic/AtomicReference;

    .line 195
    iput-boolean p5, p0, Lio/reactivex/internal/operators/flowable/FlowableCombineLatest$CombineLatestCoordinator;->delayErrors:Z

    .line 196
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .line 208
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableCombineLatest$CombineLatestCoordinator;, "Lio/reactivex/internal/operators/flowable/FlowableCombineLatest$CombineLatestCoordinator<TT;TR;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableCombineLatest$CombineLatestCoordinator;->cancelled:Z

    .line 209
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableCombineLatest$CombineLatestCoordinator;->cancelAll()V

    .line 210
    return-void
.end method

.method cancelAll()V
    .locals 4

    .line 453
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableCombineLatest$CombineLatestCoordinator;, "Lio/reactivex/internal/operators/flowable/FlowableCombineLatest$CombineLatestCoordinator<TT;TR;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableCombineLatest$CombineLatestCoordinator;->subscribers:[Lio/reactivex/internal/operators/flowable/FlowableCombineLatest$CombineLatestInnerSubscriber;

    .local v0, "arr$":[Lio/reactivex/internal/operators/flowable/FlowableCombineLatest$CombineLatestInnerSubscriber;
    array-length v1, v0

    .local v1, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 454
    .local v3, "inner":Lio/reactivex/internal/operators/flowable/FlowableCombineLatest$CombineLatestInnerSubscriber;, "Lio/reactivex/internal/operators/flowable/FlowableCombineLatest$CombineLatestInnerSubscriber<TT;>;"
    invoke-virtual {v3}, Lio/reactivex/internal/operators/flowable/FlowableCombineLatest$CombineLatestInnerSubscriber;->cancel()V

    .line 453
    .end local v3    # "inner":Lio/reactivex/internal/operators/flowable/FlowableCombineLatest$CombineLatestInnerSubscriber;, "Lio/reactivex/internal/operators/flowable/FlowableCombineLatest$CombineLatestInnerSubscriber<TT;>;"
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 456
    .end local v0    # "arr$":[Lio/reactivex/internal/operators/flowable/FlowableCombineLatest$CombineLatestInnerSubscriber;
    .end local v1    # "len$":I
    .end local v2    # "i$":I
    :cond_0
    return-void
.end method

.method checkTerminated(ZZLorg/reactivestreams/Subscriber;Lio/reactivex/internal/queue/SpscLinkedArrayQueue;)Z
    .locals 3
    .param p1, "d"    # Z
    .param p2, "empty"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Lorg/reactivestreams/Subscriber<",
            "*>;",
            "Lio/reactivex/internal/queue/SpscLinkedArrayQueue<",
            "*>;)Z"
        }
    .end annotation

    .line 413
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableCombineLatest$CombineLatestCoordinator;, "Lio/reactivex/internal/operators/flowable/FlowableCombineLatest$CombineLatestCoordinator<TT;TR;>;"
    .local p3, "a":Lorg/reactivestreams/Subscriber;, "Lorg/reactivestreams/Subscriber<*>;"
    .local p4, "q":Lio/reactivex/internal/queue/SpscLinkedArrayQueue;, "Lio/reactivex/internal/queue/SpscLinkedArrayQueue<*>;"
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableCombineLatest$CombineLatestCoordinator;->cancelled:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 414
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableCombineLatest$CombineLatestCoordinator;->cancelAll()V

    .line 415
    invoke-virtual {p4}, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;->clear()V

    .line 416
    return v1

    .line 419
    :cond_0
    if-eqz p1, :cond_4

    .line 420
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableCombineLatest$CombineLatestCoordinator;->delayErrors:Z

    if-eqz v0, :cond_2

    .line 421
    if-eqz p2, :cond_4

    .line 422
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableCombineLatest$CombineLatestCoordinator;->cancelAll()V

    .line 423
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableCombineLatest$CombineLatestCoordinator;->error:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0}, Lio/reactivex/internal/util/ExceptionHelper;->terminate(Ljava/util/concurrent/atomic/AtomicReference;)Ljava/lang/Throwable;

    move-result-object v0

    .line 425
    .local v0, "e":Ljava/lang/Throwable;
    if-eqz v0, :cond_1

    sget-object v2, Lio/reactivex/internal/util/ExceptionHelper;->TERMINATED:Ljava/lang/Throwable;

    if-eq v0, v2, :cond_1

    .line 426
    invoke-interface {p3, v0}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 428
    :cond_1
    invoke-interface {p3}, Lorg/reactivestreams/Subscriber;->onComplete()V

    .line 430
    :goto_0
    return v1

    .line 433
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_2
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableCombineLatest$CombineLatestCoordinator;->error:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0}, Lio/reactivex/internal/util/ExceptionHelper;->terminate(Ljava/util/concurrent/atomic/AtomicReference;)Ljava/lang/Throwable;

    move-result-object v0

    .line 435
    .restart local v0    # "e":Ljava/lang/Throwable;
    if-eqz v0, :cond_3

    sget-object v2, Lio/reactivex/internal/util/ExceptionHelper;->TERMINATED:Ljava/lang/Throwable;

    if-eq v0, v2, :cond_3

    .line 436
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableCombineLatest$CombineLatestCoordinator;->cancelAll()V

    .line 437
    invoke-virtual {p4}, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;->clear()V

    .line 438
    invoke-interface {p3, v0}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 439
    return v1

    .line 441
    :cond_3
    if-eqz p2, :cond_4

    .line 442
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableCombineLatest$CombineLatestCoordinator;->cancelAll()V

    .line 444
    invoke-interface {p3}, Lorg/reactivestreams/Subscriber;->onComplete()V

    .line 445
    return v1

    .line 449
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_4
    const/4 v0, 0x0

    return v0
.end method

.method public clear()V
    .locals 1

    .line 484
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableCombineLatest$CombineLatestCoordinator;, "Lio/reactivex/internal/operators/flowable/FlowableCombineLatest$CombineLatestCoordinator<TT;TR;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableCombineLatest$CombineLatestCoordinator;->queue:Lio/reactivex/internal/queue/SpscLinkedArrayQueue;

    invoke-virtual {v0}, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;->clear()V

    .line 485
    return-void
.end method

.method drain()V
    .locals 1

    .line 401
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableCombineLatest$CombineLatestCoordinator;, "Lio/reactivex/internal/operators/flowable/FlowableCombineLatest$CombineLatestCoordinator<TT;TR;>;"
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableCombineLatest$CombineLatestCoordinator;->getAndIncrement()I

    move-result v0

    if-eqz v0, :cond_0

    .line 402
    return-void

    .line 405
    :cond_0
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableCombineLatest$CombineLatestCoordinator;->outputFused:Z

    if-eqz v0, :cond_1

    .line 406
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableCombineLatest$CombineLatestCoordinator;->drainOutput()V

    goto :goto_0

    .line 408
    :cond_1
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableCombineLatest$CombineLatestCoordinator;->drainAsync()V

    .line 410
    :goto_0
    return-void
.end method

.method drainAsync()V
    .locals 14

    .line 334
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableCombineLatest$CombineLatestCoordinator;, "Lio/reactivex/internal/operators/flowable/FlowableCombineLatest$CombineLatestCoordinator<TT;TR;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableCombineLatest$CombineLatestCoordinator;->actual:Lorg/reactivestreams/Subscriber;

    .line 335
    .local v0, "a":Lorg/reactivestreams/Subscriber;, "Lorg/reactivestreams/Subscriber<-TR;>;"
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowableCombineLatest$CombineLatestCoordinator;->queue:Lio/reactivex/internal/queue/SpscLinkedArrayQueue;

    .line 337
    .local v1, "q":Lio/reactivex/internal/queue/SpscLinkedArrayQueue;, "Lio/reactivex/internal/queue/SpscLinkedArrayQueue<Ljava/lang/Object;>;"
    const/4 v2, 0x1

    .local v2, "missed":I
    const/4 v3, 0x0

    .line 341
    :goto_0
    iget-object v4, p0, Lio/reactivex/internal/operators/flowable/FlowableCombineLatest$CombineLatestCoordinator;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v4

    .line 342
    .local v4, "r":J
    const-wide/16 v6, 0x0

    .line 344
    .local v6, "e":J
    :goto_1
    cmp-long v8, v6, v4

    if-eqz v8, :cond_3

    .line 345
    iget-boolean v8, p0, Lio/reactivex/internal/operators/flowable/FlowableCombineLatest$CombineLatestCoordinator;->done:Z

    .line 347
    .local v8, "d":Z
    invoke-virtual {v1}, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;->poll()Ljava/lang/Object;

    move-result-object v9

    .line 349
    .local v9, "v":Ljava/lang/Object;
    if-nez v9, :cond_0

    const/4 v10, 0x1

    goto :goto_2

    :cond_0
    const/4 v10, 0x0

    .line 351
    .local v10, "empty":Z
    :goto_2
    invoke-virtual {p0, v8, v10, v0, v1}, Lio/reactivex/internal/operators/flowable/FlowableCombineLatest$CombineLatestCoordinator;->checkTerminated(ZZLorg/reactivestreams/Subscriber;Lio/reactivex/internal/queue/SpscLinkedArrayQueue;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 352
    return-void

    .line 355
    :cond_1
    if-eqz v10, :cond_2

    .line 356
    goto :goto_3

    .line 359
    :cond_2
    invoke-virtual {v1}, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;->poll()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Ljava/lang/Object;

    check-cast v11, [Ljava/lang/Object;

    .line 364
    .local v11, "va":[Ljava/lang/Object;, "[TT;"
    :try_start_0
    iget-object v12, p0, Lio/reactivex/internal/operators/flowable/FlowableCombineLatest$CombineLatestCoordinator;->combiner:Lio/reactivex/functions/Function;

    invoke-interface {v12, v11}, Lio/reactivex/functions/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    const-string v13, "The combiner returned a null value"

    invoke-static {v12, v13}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 374
    .local v3, "w":Ljava/lang/Object;, "TR;"
    nop

    .line 376
    invoke-interface {v0, v3}, Lorg/reactivestreams/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 378
    move-object v12, v9

    check-cast v12, Lio/reactivex/internal/operators/flowable/FlowableCombineLatest$CombineLatestInnerSubscriber;

    invoke-virtual {v12}, Lio/reactivex/internal/operators/flowable/FlowableCombineLatest$CombineLatestInnerSubscriber;->requestOne()V

    .line 380
    const-wide/16 v12, 0x1

    add-long/2addr v6, v12

    .line 381
    .end local v3    # "w":Ljava/lang/Object;, "TR;"
    .end local v8    # "d":Z
    .end local v9    # "v":Ljava/lang/Object;
    .end local v10    # "empty":Z
    .end local v11    # "va":[Ljava/lang/Object;, "[TT;"
    goto :goto_1

    .line 365
    .restart local v8    # "d":Z
    .restart local v9    # "v":Ljava/lang/Object;
    .restart local v10    # "empty":Z
    .restart local v11    # "va":[Ljava/lang/Object;, "[TT;"
    :catchall_0
    move-exception v12

    .line 366
    .restart local v3    # "w":Ljava/lang/Object;, "TR;"
    .local v12, "ex":Ljava/lang/Throwable;
    invoke-static {v12}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 368
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableCombineLatest$CombineLatestCoordinator;->cancelAll()V

    .line 369
    iget-object v13, p0, Lio/reactivex/internal/operators/flowable/FlowableCombineLatest$CombineLatestCoordinator;->error:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v13, v12}, Lio/reactivex/internal/util/ExceptionHelper;->addThrowable(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Throwable;)Z

    .line 370
    iget-object v13, p0, Lio/reactivex/internal/operators/flowable/FlowableCombineLatest$CombineLatestCoordinator;->error:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v13}, Lio/reactivex/internal/util/ExceptionHelper;->terminate(Ljava/util/concurrent/atomic/AtomicReference;)Ljava/lang/Throwable;

    move-result-object v12

    .line 372
    invoke-interface {v0, v12}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 373
    return-void

    .line 383
    .end local v3    # "w":Ljava/lang/Object;, "TR;"
    .end local v8    # "d":Z
    .end local v9    # "v":Ljava/lang/Object;
    .end local v10    # "empty":Z
    .end local v11    # "va":[Ljava/lang/Object;, "[TT;"
    .end local v12    # "ex":Ljava/lang/Throwable;
    :cond_3
    :goto_3
    cmp-long v8, v6, v4

    if-nez v8, :cond_4

    .line 384
    iget-boolean v8, p0, Lio/reactivex/internal/operators/flowable/FlowableCombineLatest$CombineLatestCoordinator;->done:Z

    invoke-virtual {v1}, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;->isEmpty()Z

    move-result v9

    invoke-virtual {p0, v8, v9, v0, v1}, Lio/reactivex/internal/operators/flowable/FlowableCombineLatest$CombineLatestCoordinator;->checkTerminated(ZZLorg/reactivestreams/Subscriber;Lio/reactivex/internal/queue/SpscLinkedArrayQueue;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 385
    return-void

    .line 389
    :cond_4
    const-wide/16 v8, 0x0

    cmp-long v8, v6, v8

    if-eqz v8, :cond_5

    const-wide v8, 0x7fffffffffffffffL

    cmp-long v8, v4, v8

    if-eqz v8, :cond_5

    .line 390
    iget-object v8, p0, Lio/reactivex/internal/operators/flowable/FlowableCombineLatest$CombineLatestCoordinator;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    neg-long v9, v6

    invoke-virtual {v8, v9, v10}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    .line 393
    :cond_5
    neg-int v8, v2

    invoke-virtual {p0, v8}, Lio/reactivex/internal/operators/flowable/FlowableCombineLatest$CombineLatestCoordinator;->addAndGet(I)I

    move-result v2

    .line 394
    if-nez v2, :cond_6

    .line 395
    nop

    .line 398
    .end local v4    # "r":J
    .end local v6    # "e":J
    return-void

    .line 397
    :cond_6
    goto/16 :goto_0
.end method

.method drainOutput()V
    .locals 7

    .line 292
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableCombineLatest$CombineLatestCoordinator;, "Lio/reactivex/internal/operators/flowable/FlowableCombineLatest$CombineLatestCoordinator<TT;TR;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableCombineLatest$CombineLatestCoordinator;->actual:Lorg/reactivestreams/Subscriber;

    .line 293
    .local v0, "a":Lorg/reactivestreams/Subscriber;, "Lorg/reactivestreams/Subscriber<-TR;>;"
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowableCombineLatest$CombineLatestCoordinator;->queue:Lio/reactivex/internal/queue/SpscLinkedArrayQueue;

    .line 295
    .local v1, "q":Lio/reactivex/internal/queue/SpscLinkedArrayQueue;, "Lio/reactivex/internal/queue/SpscLinkedArrayQueue<Ljava/lang/Object;>;"
    const/4 v2, 0x1

    .line 299
    .local v2, "missed":I
    :goto_0
    iget-boolean v3, p0, Lio/reactivex/internal/operators/flowable/FlowableCombineLatest$CombineLatestCoordinator;->cancelled:Z

    if-eqz v3, :cond_0

    .line 300
    invoke-virtual {v1}, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;->clear()V

    .line 301
    return-void

    .line 304
    :cond_0
    iget-object v3, p0, Lio/reactivex/internal/operators/flowable/FlowableCombineLatest$CombineLatestCoordinator;->error:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Throwable;

    .line 305
    .local v3, "ex":Ljava/lang/Throwable;
    if-eqz v3, :cond_1

    .line 306
    invoke-virtual {v1}, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;->clear()V

    .line 308
    invoke-interface {v0, v3}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 309
    return-void

    .line 312
    :cond_1
    iget-boolean v4, p0, Lio/reactivex/internal/operators/flowable/FlowableCombineLatest$CombineLatestCoordinator;->done:Z

    .line 314
    .local v4, "d":Z
    invoke-virtual {v1}, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;->isEmpty()Z

    move-result v5

    .line 316
    .local v5, "empty":Z
    if-nez v5, :cond_2

    .line 317
    const/4 v6, 0x0

    invoke-interface {v0, v6}, Lorg/reactivestreams/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 320
    :cond_2
    if-eqz v4, :cond_3

    if-eqz v5, :cond_3

    .line 321
    invoke-interface {v0}, Lorg/reactivestreams/Subscriber;->onComplete()V

    .line 322
    return-void

    .line 325
    :cond_3
    neg-int v6, v2

    invoke-virtual {p0, v6}, Lio/reactivex/internal/operators/flowable/FlowableCombineLatest$CombineLatestCoordinator;->addAndGet(I)I

    move-result v2

    .line 326
    if-nez v2, :cond_4

    .line 327
    nop

    .line 330
    .end local v3    # "ex":Ljava/lang/Throwable;
    .end local v4    # "d":Z
    .end local v5    # "empty":Z
    return-void

    .line 329
    :cond_4
    goto :goto_0
.end method

.method innerComplete(I)V
    .locals 4
    .param p1, "index"    # I

    .line 257
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableCombineLatest$CombineLatestCoordinator;, "Lio/reactivex/internal/operators/flowable/FlowableCombineLatest$CombineLatestCoordinator<TT;TR;>;"
    monitor-enter p0

    .line 258
    :try_start_0
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableCombineLatest$CombineLatestCoordinator;->latest:[Ljava/lang/Object;

    .line 260
    .local v0, "os":[Ljava/lang/Object;
    aget-object v1, v0, p1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 261
    iget v1, p0, Lio/reactivex/internal/operators/flowable/FlowableCombineLatest$CombineLatestCoordinator;->completedSources:I

    add-int/2addr v1, v2

    .line 263
    .local v1, "localCompletedSources":I
    array-length v3, v0

    if-ne v1, v3, :cond_0

    .line 264
    iput-boolean v2, p0, Lio/reactivex/internal/operators/flowable/FlowableCombineLatest$CombineLatestCoordinator;->done:Z

    .line 269
    .end local v1    # "localCompletedSources":I
    goto :goto_0

    .line 266
    .restart local v1    # "localCompletedSources":I
    :cond_0
    iput v1, p0, Lio/reactivex/internal/operators/flowable/FlowableCombineLatest$CombineLatestCoordinator;->completedSources:I

    .line 267
    monitor-exit p0

    return-void

    .line 270
    .end local v1    # "localCompletedSources":I
    :cond_1
    iput-boolean v2, p0, Lio/reactivex/internal/operators/flowable/FlowableCombineLatest$CombineLatestCoordinator;->done:Z

    .line 272
    .end local v0    # "os":[Ljava/lang/Object;
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 273
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableCombineLatest$CombineLatestCoordinator;->drain()V

    .line 274
    return-void

    .line 272
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method innerError(ILjava/lang/Throwable;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "e"    # Ljava/lang/Throwable;

    .line 278
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableCombineLatest$CombineLatestCoordinator;, "Lio/reactivex/internal/operators/flowable/FlowableCombineLatest$CombineLatestCoordinator<TT;TR;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableCombineLatest$CombineLatestCoordinator;->error:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0, p2}, Lio/reactivex/internal/util/ExceptionHelper;->addThrowable(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 279
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableCombineLatest$CombineLatestCoordinator;->delayErrors:Z

    if-nez v0, :cond_0

    .line 280
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableCombineLatest$CombineLatestCoordinator;->cancelAll()V

    .line 281
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableCombineLatest$CombineLatestCoordinator;->done:Z

    .line 282
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableCombineLatest$CombineLatestCoordinator;->drain()V

    goto :goto_0

    .line 284
    :cond_0
    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/flowable/FlowableCombineLatest$CombineLatestCoordinator;->innerComplete(I)V

    goto :goto_0

    .line 287
    :cond_1
    invoke-static {p2}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    .line 289
    :goto_0
    return-void
.end method

.method innerValue(ILjava/lang/Object;)V
    .locals 6
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)V"
        }
    .end annotation

    .line 227
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableCombineLatest$CombineLatestCoordinator;, "Lio/reactivex/internal/operators/flowable/FlowableCombineLatest$CombineLatestCoordinator<TT;TR;>;"
    .local p2, "value":Ljava/lang/Object;, "TT;"
    monitor-enter p0

    .line 228
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowableCombineLatest$CombineLatestCoordinator;->latest:[Ljava/lang/Object;

    .line 230
    .local v1, "os":[Ljava/lang/Object;
    iget v2, p0, Lio/reactivex/internal/operators/flowable/FlowableCombineLatest$CombineLatestCoordinator;->nonEmptySources:I

    .line 232
    .local v2, "localNonEmptySources":I
    aget-object v3, v1, p1

    if-nez v3, :cond_0

    .line 233
    add-int/lit8 v2, v2, 0x1

    .line 234
    iput v2, p0, Lio/reactivex/internal/operators/flowable/FlowableCombineLatest$CombineLatestCoordinator;->nonEmptySources:I

    .line 237
    :cond_0
    aput-object p2, v1, p1

    .line 239
    array-length v3, v1

    if-ne v3, v2, :cond_1

    .line 241
    iget-object v3, p0, Lio/reactivex/internal/operators/flowable/FlowableCombineLatest$CombineLatestCoordinator;->queue:Lio/reactivex/internal/queue/SpscLinkedArrayQueue;

    iget-object v4, p0, Lio/reactivex/internal/operators/flowable/FlowableCombineLatest$CombineLatestCoordinator;->subscribers:[Lio/reactivex/internal/operators/flowable/FlowableCombineLatest$CombineLatestInnerSubscriber;

    aget-object v4, v4, p1

    invoke-virtual {v1}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;->offer(Ljava/lang/Object;Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 243
    const/4 v0, 0x0

    .local v0, "replenishInsteadOfDrain":Z
    goto :goto_0

    .line 245
    .end local v0    # "replenishInsteadOfDrain":Z
    :cond_1
    const/4 v0, 0x1

    .line 247
    .end local v1    # "os":[Ljava/lang/Object;
    .end local v2    # "localNonEmptySources":I
    .restart local v0    # "replenishInsteadOfDrain":Z
    :goto_0
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 249
    if-eqz v0, :cond_2

    .line 250
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowableCombineLatest$CombineLatestCoordinator;->subscribers:[Lio/reactivex/internal/operators/flowable/FlowableCombineLatest$CombineLatestInnerSubscriber;

    aget-object v1, v1, p1

    invoke-virtual {v1}, Lio/reactivex/internal/operators/flowable/FlowableCombineLatest$CombineLatestInnerSubscriber;->requestOne()V

    goto :goto_1

    .line 252
    :cond_2
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableCombineLatest$CombineLatestCoordinator;->drain()V

    .line 254
    :goto_1
    return-void

    .line 247
    .end local v0    # "replenishInsteadOfDrain":Z
    :catchall_0
    move-exception v1

    .restart local v0    # "replenishInsteadOfDrain":Z
    :goto_2
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1

    :catchall_1
    move-exception v1

    goto :goto_2
.end method

.method public isEmpty()Z
    .locals 1

    .line 489
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableCombineLatest$CombineLatestCoordinator;, "Lio/reactivex/internal/operators/flowable/FlowableCombineLatest$CombineLatestCoordinator<TT;TR;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableCombineLatest$CombineLatestCoordinator;->queue:Lio/reactivex/internal/queue/SpscLinkedArrayQueue;

    invoke-virtual {v0}, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public poll()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 472
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableCombineLatest$CombineLatestCoordinator;, "Lio/reactivex/internal/operators/flowable/FlowableCombineLatest$CombineLatestCoordinator<TT;TR;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableCombineLatest$CombineLatestCoordinator;->queue:Lio/reactivex/internal/queue/SpscLinkedArrayQueue;

    invoke-virtual {v0}, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    .line 473
    .local v0, "e":Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 474
    const/4 v1, 0x0

    return-object v1

    .line 476
    :cond_0
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowableCombineLatest$CombineLatestCoordinator;->queue:Lio/reactivex/internal/queue/SpscLinkedArrayQueue;

    invoke-virtual {v1}, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    .line 477
    .local v1, "a":[Ljava/lang/Object;, "[TT;"
    iget-object v2, p0, Lio/reactivex/internal/operators/flowable/FlowableCombineLatest$CombineLatestCoordinator;->combiner:Lio/reactivex/functions/Function;

    invoke-interface {v2, v1}, Lio/reactivex/functions/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 478
    .local v2, "r":Ljava/lang/Object;, "TR;"
    move-object v3, v0

    check-cast v3, Lio/reactivex/internal/operators/flowable/FlowableCombineLatest$CombineLatestInnerSubscriber;

    invoke-virtual {v3}, Lio/reactivex/internal/operators/flowable/FlowableCombineLatest$CombineLatestInnerSubscriber;->requestOne()V

    .line 479
    return-object v2
.end method

.method public request(J)V
    .locals 1
    .param p1, "n"    # J

    .line 200
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableCombineLatest$CombineLatestCoordinator;, "Lio/reactivex/internal/operators/flowable/FlowableCombineLatest$CombineLatestCoordinator<TT;TR;>;"
    invoke-static {p1, p2}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->validate(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 201
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableCombineLatest$CombineLatestCoordinator;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {v0, p1, p2}, Lio/reactivex/internal/util/BackpressureHelper;->add(Ljava/util/concurrent/atomic/AtomicLong;J)J

    .line 202
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableCombineLatest$CombineLatestCoordinator;->drain()V

    .line 204
    :cond_0
    return-void
.end method

.method public requestFusion(I)I
    .locals 2
    .param p1, "requestedMode"    # I

    .line 460
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableCombineLatest$CombineLatestCoordinator;, "Lio/reactivex/internal/operators/flowable/FlowableCombineLatest$CombineLatestCoordinator<TT;TR;>;"
    and-int/lit8 v0, p1, 0x4

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 461
    return v1

    .line 463
    :cond_0
    and-int/lit8 v0, p1, 0x2

    .line 464
    .local v0, "m":I
    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    iput-boolean v1, p0, Lio/reactivex/internal/operators/flowable/FlowableCombineLatest$CombineLatestCoordinator;->outputFused:Z

    .line 465
    return v0
.end method

.method subscribe([Lorg/reactivestreams/Publisher;I)V
    .locals 4
    .param p2, "n"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lorg/reactivestreams/Publisher<",
            "+TT;>;I)V"
        }
    .end annotation

    .line 213
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableCombineLatest$CombineLatestCoordinator;, "Lio/reactivex/internal/operators/flowable/FlowableCombineLatest$CombineLatestCoordinator<TT;TR;>;"
    .local p1, "sources":[Lorg/reactivestreams/Publisher;, "[Lorg/reactivestreams/Publisher<+TT;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableCombineLatest$CombineLatestCoordinator;->subscribers:[Lio/reactivex/internal/operators/flowable/FlowableCombineLatest$CombineLatestInnerSubscriber;

    .line 215
    .local v0, "a":[Lio/reactivex/internal/operators/flowable/FlowableCombineLatest$CombineLatestInnerSubscriber;, "[Lio/reactivex/internal/operators/flowable/FlowableCombineLatest$CombineLatestInnerSubscriber<TT;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p2, :cond_2

    .line 216
    iget-boolean v2, p0, Lio/reactivex/internal/operators/flowable/FlowableCombineLatest$CombineLatestCoordinator;->done:Z

    if-nez v2, :cond_1

    iget-boolean v2, p0, Lio/reactivex/internal/operators/flowable/FlowableCombineLatest$CombineLatestCoordinator;->cancelled:Z

    if-eqz v2, :cond_0

    goto :goto_1

    .line 219
    :cond_0
    aget-object v2, p1, v1

    aget-object v3, v0, v1

    invoke-interface {v2, v3}, Lorg/reactivestreams/Publisher;->subscribe(Lorg/reactivestreams/Subscriber;)V

    .line 215
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 217
    :cond_1
    :goto_1
    return-void

    .line 221
    .end local v1    # "i":I
    :cond_2
    return-void
.end method
