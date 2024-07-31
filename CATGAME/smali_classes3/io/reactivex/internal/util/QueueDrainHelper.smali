.class public final Lio/reactivex/internal/util/QueueDrainHelper;
.super Ljava/lang/Object;
.source "QueueDrainHelper.java"


# static fields
.field static final COMPLETED_MASK:J = -0x8000000000000000L

.field static final REQUESTED_MASK:J = 0x7fffffffffffffffL


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No instances!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static checkTerminated(ZZLio/reactivex/Observer;ZLio/reactivex/internal/fuseable/SimpleQueue;Lio/reactivex/disposables/Disposable;Lio/reactivex/internal/util/ObservableQueueDrain;)Z
    .locals 2
    .param p0, "d"    # Z
    .param p1, "empty"    # Z
    .param p3, "delayError"    # Z
    .param p5, "disposable"    # Lio/reactivex/disposables/Disposable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "U:",
            "Ljava/lang/Object;",
            ">(ZZ",
            "Lio/reactivex/Observer<",
            "*>;Z",
            "Lio/reactivex/internal/fuseable/SimpleQueue<",
            "*>;",
            "Lio/reactivex/disposables/Disposable;",
            "Lio/reactivex/internal/util/ObservableQueueDrain<",
            "TT;TU;>;)Z"
        }
    .end annotation

    .line 162
    .local p2, "s":Lio/reactivex/Observer;, "Lio/reactivex/Observer<*>;"
    .local p4, "q":Lio/reactivex/internal/fuseable/SimpleQueue;, "Lio/reactivex/internal/fuseable/SimpleQueue<*>;"
    .local p6, "qd":Lio/reactivex/internal/util/ObservableQueueDrain;, "Lio/reactivex/internal/util/ObservableQueueDrain<TT;TU;>;"
    invoke-interface {p6}, Lio/reactivex/internal/util/ObservableQueueDrain;->cancelled()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 163
    invoke-interface {p4}, Lio/reactivex/internal/fuseable/SimpleQueue;->clear()V

    .line 164
    invoke-interface {p5}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 165
    return v1

    .line 168
    :cond_0
    if-eqz p0, :cond_4

    .line 169
    if-eqz p3, :cond_2

    .line 170
    if-eqz p1, :cond_4

    .line 171
    invoke-interface {p5}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 172
    invoke-interface {p6}, Lio/reactivex/internal/util/ObservableQueueDrain;->error()Ljava/lang/Throwable;

    move-result-object v0

    .line 173
    .local v0, "err":Ljava/lang/Throwable;
    if-eqz v0, :cond_1

    .line 174
    invoke-interface {p2, v0}, Lio/reactivex/Observer;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 176
    :cond_1
    invoke-interface {p2}, Lio/reactivex/Observer;->onComplete()V

    .line 178
    :goto_0
    return v1

    .line 181
    .end local v0    # "err":Ljava/lang/Throwable;
    :cond_2
    invoke-interface {p6}, Lio/reactivex/internal/util/ObservableQueueDrain;->error()Ljava/lang/Throwable;

    move-result-object v0

    .line 182
    .restart local v0    # "err":Ljava/lang/Throwable;
    if-eqz v0, :cond_3

    .line 183
    invoke-interface {p4}, Lio/reactivex/internal/fuseable/SimpleQueue;->clear()V

    .line 184
    invoke-interface {p5}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 185
    invoke-interface {p2, v0}, Lio/reactivex/Observer;->onError(Ljava/lang/Throwable;)V

    .line 186
    return v1

    .line 188
    :cond_3
    if-eqz p1, :cond_4

    .line 189
    invoke-interface {p5}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 190
    invoke-interface {p2}, Lio/reactivex/Observer;->onComplete()V

    .line 191
    return v1

    .line 196
    .end local v0    # "err":Ljava/lang/Throwable;
    :cond_4
    const/4 v0, 0x0

    return v0
.end method

.method public static checkTerminated(ZZLorg/reactivestreams/Subscriber;ZLio/reactivex/internal/fuseable/SimpleQueue;Lio/reactivex/internal/util/QueueDrain;)Z
    .locals 2
    .param p0, "d"    # Z
    .param p1, "empty"    # Z
    .param p3, "delayError"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "U:",
            "Ljava/lang/Object;",
            ">(ZZ",
            "Lorg/reactivestreams/Subscriber<",
            "*>;Z",
            "Lio/reactivex/internal/fuseable/SimpleQueue<",
            "*>;",
            "Lio/reactivex/internal/util/QueueDrain<",
            "TT;TU;>;)Z"
        }
    .end annotation

    .line 95
    .local p2, "s":Lorg/reactivestreams/Subscriber;, "Lorg/reactivestreams/Subscriber<*>;"
    .local p4, "q":Lio/reactivex/internal/fuseable/SimpleQueue;, "Lio/reactivex/internal/fuseable/SimpleQueue<*>;"
    .local p5, "qd":Lio/reactivex/internal/util/QueueDrain;, "Lio/reactivex/internal/util/QueueDrain<TT;TU;>;"
    invoke-interface {p5}, Lio/reactivex/internal/util/QueueDrain;->cancelled()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 96
    invoke-interface {p4}, Lio/reactivex/internal/fuseable/SimpleQueue;->clear()V

    .line 97
    return v1

    .line 100
    :cond_0
    if-eqz p0, :cond_4

    .line 101
    if-eqz p3, :cond_2

    .line 102
    if-eqz p1, :cond_4

    .line 103
    invoke-interface {p5}, Lio/reactivex/internal/util/QueueDrain;->error()Ljava/lang/Throwable;

    move-result-object v0

    .line 104
    .local v0, "err":Ljava/lang/Throwable;
    if-eqz v0, :cond_1

    .line 105
    invoke-interface {p2, v0}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 107
    :cond_1
    invoke-interface {p2}, Lorg/reactivestreams/Subscriber;->onComplete()V

    .line 109
    :goto_0
    return v1

    .line 112
    .end local v0    # "err":Ljava/lang/Throwable;
    :cond_2
    invoke-interface {p5}, Lio/reactivex/internal/util/QueueDrain;->error()Ljava/lang/Throwable;

    move-result-object v0

    .line 113
    .restart local v0    # "err":Ljava/lang/Throwable;
    if-eqz v0, :cond_3

    .line 114
    invoke-interface {p4}, Lio/reactivex/internal/fuseable/SimpleQueue;->clear()V

    .line 115
    invoke-interface {p2, v0}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 116
    return v1

    .line 118
    :cond_3
    if-eqz p1, :cond_4

    .line 119
    invoke-interface {p2}, Lorg/reactivestreams/Subscriber;->onComplete()V

    .line 120
    return v1

    .line 125
    .end local v0    # "err":Ljava/lang/Throwable;
    :cond_4
    const/4 v0, 0x0

    return v0
.end method

.method public static createQueue(I)Lio/reactivex/internal/fuseable/SimpleQueue;
    .locals 2
    .param p0, "capacityHint"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I)",
            "Lio/reactivex/internal/fuseable/SimpleQueue<",
            "TT;>;"
        }
    .end annotation

    .line 208
    if-gez p0, :cond_0

    .line 209
    new-instance v0, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;

    neg-int v1, p0

    invoke-direct {v0, v1}, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;-><init>(I)V

    return-object v0

    .line 211
    :cond_0
    new-instance v0, Lio/reactivex/internal/queue/SpscArrayQueue;

    invoke-direct {v0, p0}, Lio/reactivex/internal/queue/SpscArrayQueue;-><init>(I)V

    return-object v0
.end method

.method public static drainLoop(Lio/reactivex/internal/fuseable/SimplePlainQueue;Lio/reactivex/Observer;ZLio/reactivex/disposables/Disposable;Lio/reactivex/internal/util/ObservableQueueDrain;)V
    .locals 11
    .param p2, "delayError"    # Z
    .param p3, "dispose"    # Lio/reactivex/disposables/Disposable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "U:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/internal/fuseable/SimplePlainQueue<",
            "TT;>;",
            "Lio/reactivex/Observer<",
            "-TU;>;Z",
            "Lio/reactivex/disposables/Disposable;",
            "Lio/reactivex/internal/util/ObservableQueueDrain<",
            "TT;TU;>;)V"
        }
    .end annotation

    .line 130
    .local p0, "q":Lio/reactivex/internal/fuseable/SimplePlainQueue;, "Lio/reactivex/internal/fuseable/SimplePlainQueue<TT;>;"
    .local p1, "a":Lio/reactivex/Observer;, "Lio/reactivex/Observer<-TU;>;"
    .local p4, "qd":Lio/reactivex/internal/util/ObservableQueueDrain;, "Lio/reactivex/internal/util/ObservableQueueDrain<TT;TU;>;"
    const/4 v0, 0x1

    .line 133
    .local v0, "missed":I
    :cond_0
    invoke-interface {p4}, Lio/reactivex/internal/util/ObservableQueueDrain;->done()Z

    move-result v1

    invoke-interface {p0}, Lio/reactivex/internal/fuseable/SimplePlainQueue;->isEmpty()Z

    move-result v2

    move-object v3, p1

    move v4, p2

    move-object v5, p0

    move-object v6, p3

    move-object v7, p4

    invoke-static/range {v1 .. v7}, Lio/reactivex/internal/util/QueueDrainHelper;->checkTerminated(ZZLio/reactivex/Observer;ZLio/reactivex/internal/fuseable/SimpleQueue;Lio/reactivex/disposables/Disposable;Lio/reactivex/internal/util/ObservableQueueDrain;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 134
    return-void

    .line 138
    :cond_1
    :goto_0
    invoke-interface {p4}, Lio/reactivex/internal/util/ObservableQueueDrain;->done()Z

    move-result v1

    .line 139
    .local v1, "d":Z
    invoke-interface {p0}, Lio/reactivex/internal/fuseable/SimplePlainQueue;->poll()Ljava/lang/Object;

    move-result-object v9

    .line 140
    .local v9, "v":Ljava/lang/Object;, "TT;"
    if-nez v9, :cond_2

    const/4 v2, 0x1

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    move v10, v2

    .line 142
    .local v10, "empty":Z
    move v2, v1

    move v3, v10

    move-object v4, p1

    move v5, p2

    move-object v6, p0

    move-object v7, p3

    move-object v8, p4

    invoke-static/range {v2 .. v8}, Lio/reactivex/internal/util/QueueDrainHelper;->checkTerminated(ZZLio/reactivex/Observer;ZLio/reactivex/internal/fuseable/SimpleQueue;Lio/reactivex/disposables/Disposable;Lio/reactivex/internal/util/ObservableQueueDrain;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 143
    return-void

    .line 146
    :cond_3
    if-eqz v10, :cond_4

    .line 147
    nop

    .line 153
    .end local v1    # "d":Z
    .end local v9    # "v":Ljava/lang/Object;, "TT;"
    .end local v10    # "empty":Z
    neg-int v1, v0

    invoke-interface {p4, v1}, Lio/reactivex/internal/util/ObservableQueueDrain;->leave(I)I

    move-result v0

    .line 154
    if-nez v0, :cond_0

    .line 155
    nop

    .line 158
    return-void

    .line 150
    .restart local v1    # "d":Z
    .restart local v9    # "v":Ljava/lang/Object;, "TT;"
    .restart local v10    # "empty":Z
    :cond_4
    invoke-interface {p4, p1, v9}, Lio/reactivex/internal/util/ObservableQueueDrain;->accept(Lio/reactivex/Observer;Ljava/lang/Object;)V

    .line 151
    .end local v1    # "d":Z
    .end local v9    # "v":Ljava/lang/Object;, "TT;"
    .end local v10    # "empty":Z
    goto :goto_0
.end method

.method public static drainMaxLoop(Lio/reactivex/internal/fuseable/SimplePlainQueue;Lorg/reactivestreams/Subscriber;ZLio/reactivex/disposables/Disposable;Lio/reactivex/internal/util/QueueDrain;)V
    .locals 10
    .param p2, "delayError"    # Z
    .param p3, "dispose"    # Lio/reactivex/disposables/Disposable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "U:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/internal/fuseable/SimplePlainQueue<",
            "TT;>;",
            "Lorg/reactivestreams/Subscriber<",
            "-TU;>;Z",
            "Lio/reactivex/disposables/Disposable;",
            "Lio/reactivex/internal/util/QueueDrain<",
            "TT;TU;>;)V"
        }
    .end annotation

    .line 48
    .local p0, "q":Lio/reactivex/internal/fuseable/SimplePlainQueue;, "Lio/reactivex/internal/fuseable/SimplePlainQueue<TT;>;"
    .local p1, "a":Lorg/reactivestreams/Subscriber;, "Lorg/reactivestreams/Subscriber<-TU;>;"
    .local p4, "qd":Lio/reactivex/internal/util/QueueDrain;, "Lio/reactivex/internal/util/QueueDrain<TT;TU;>;"
    const/4 v0, 0x1

    .line 52
    .local v0, "missed":I
    :cond_0
    :goto_0
    invoke-interface {p4}, Lio/reactivex/internal/util/QueueDrain;->done()Z

    move-result v7

    .line 54
    .local v7, "d":Z
    invoke-interface {p0}, Lio/reactivex/internal/fuseable/SimplePlainQueue;->poll()Ljava/lang/Object;

    move-result-object v8

    .line 56
    .local v8, "v":Ljava/lang/Object;, "TT;"
    if-nez v8, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    move v9, v1

    .line 58
    .local v9, "empty":Z
    move v1, v7

    move v2, v9

    move-object v3, p1

    move v4, p2

    move-object v5, p0

    move-object v6, p4

    invoke-static/range {v1 .. v6}, Lio/reactivex/internal/util/QueueDrainHelper;->checkTerminated(ZZLorg/reactivestreams/Subscriber;ZLio/reactivex/internal/fuseable/SimpleQueue;Lio/reactivex/internal/util/QueueDrain;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 59
    if-eqz p3, :cond_2

    .line 60
    invoke-interface {p3}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 62
    :cond_2
    return-void

    .line 65
    :cond_3
    if-eqz v9, :cond_4

    .line 66
    nop

    .line 86
    .end local v7    # "d":Z
    .end local v8    # "v":Ljava/lang/Object;, "TT;"
    .end local v9    # "empty":Z
    neg-int v1, v0

    invoke-interface {p4, v1}, Lio/reactivex/internal/util/QueueDrain;->leave(I)I

    move-result v0

    .line 87
    if-nez v0, :cond_0

    .line 88
    nop

    .line 91
    return-void

    .line 69
    .restart local v7    # "d":Z
    .restart local v8    # "v":Ljava/lang/Object;, "TT;"
    .restart local v9    # "empty":Z
    :cond_4
    invoke-interface {p4}, Lio/reactivex/internal/util/QueueDrain;->requested()J

    move-result-wide v1

    .line 70
    .local v1, "r":J
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-eqz v3, :cond_6

    .line 71
    invoke-interface {p4, p1, v8}, Lio/reactivex/internal/util/QueueDrain;->accept(Lorg/reactivestreams/Subscriber;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 72
    const-wide v3, 0x7fffffffffffffffL

    cmp-long v3, v1, v3

    if-eqz v3, :cond_5

    .line 73
    const-wide/16 v3, 0x1

    invoke-interface {p4, v3, v4}, Lio/reactivex/internal/util/QueueDrain;->produced(J)J

    .line 84
    .end local v1    # "r":J
    .end local v7    # "d":Z
    .end local v8    # "v":Ljava/lang/Object;, "TT;"
    .end local v9    # "empty":Z
    :cond_5
    goto :goto_0

    .line 77
    .restart local v1    # "r":J
    .restart local v7    # "d":Z
    .restart local v8    # "v":Ljava/lang/Object;, "TT;"
    .restart local v9    # "empty":Z
    :cond_6
    invoke-interface {p0}, Lio/reactivex/internal/fuseable/SimplePlainQueue;->clear()V

    .line 78
    if-eqz p3, :cond_7

    .line 79
    invoke-interface {p3}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 81
    :cond_7
    new-instance v3, Lio/reactivex/exceptions/MissingBackpressureException;

    const-string v4, "Could not emit value due to lack of requests."

    invoke-direct {v3, v4}, Lio/reactivex/exceptions/MissingBackpressureException;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v3}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 82
    return-void
.end method

.method static isCancelled(Lio/reactivex/functions/BooleanSupplier;)Z
    .locals 2
    .param p0, "cancelled"    # Lio/reactivex/functions/BooleanSupplier;

    .line 277
    :try_start_0
    invoke-interface {p0}, Lio/reactivex/functions/BooleanSupplier;->getAsBoolean()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    .line 278
    :catchall_0
    move-exception v0

    .line 279
    .local v0, "ex":Ljava/lang/Throwable;
    invoke-static {v0}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 280
    const/4 v1, 0x1

    return v1
.end method

.method public static postComplete(Lorg/reactivestreams/Subscriber;Ljava/util/Queue;Ljava/util/concurrent/atomic/AtomicLong;Lio/reactivex/functions/BooleanSupplier;)V
    .locals 14
    .param p2, "state"    # Ljava/util/concurrent/atomic/AtomicLong;
    .param p3, "isCancelled"    # Lio/reactivex/functions/BooleanSupplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/reactivestreams/Subscriber<",
            "-TT;>;",
            "Ljava/util/Queue<",
            "TT;>;",
            "Ljava/util/concurrent/atomic/AtomicLong;",
            "Lio/reactivex/functions/BooleanSupplier;",
            ")V"
        }
    .end annotation

    .line 394
    .local p0, "actual":Lorg/reactivestreams/Subscriber;, "Lorg/reactivestreams/Subscriber<-TT;>;"
    .local p1, "queue":Ljava/util/Queue;, "Ljava/util/Queue<TT;>;"
    invoke-interface {p1}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 395
    invoke-interface {p0}, Lorg/reactivestreams/Subscriber;->onComplete()V

    .line 396
    return-void

    .line 399
    :cond_0
    invoke-virtual/range {p2 .. p2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v1

    move-object v3, p0

    move-object v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    invoke-static/range {v1 .. v6}, Lio/reactivex/internal/util/QueueDrainHelper;->postCompleteDrain(JLorg/reactivestreams/Subscriber;Ljava/util/Queue;Ljava/util/concurrent/atomic/AtomicLong;Lio/reactivex/functions/BooleanSupplier;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 400
    return-void

    .line 404
    :cond_1
    :goto_0
    invoke-virtual/range {p2 .. p2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    .line 406
    .local v0, "r":J
    const-wide/high16 v2, -0x8000000000000000L

    and-long v4, v0, v2

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_2

    .line 407
    return-void

    .line 410
    :cond_2
    or-long/2addr v2, v0

    .line 412
    .local v2, "u":J
    move-object/from16 v4, p2

    invoke-virtual {v4, v0, v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 414
    cmp-long v5, v0, v6

    if-eqz v5, :cond_3

    .line 415
    move-wide v8, v2

    move-object v10, p0

    move-object v11, p1

    move-object/from16 v12, p2

    move-object/from16 v13, p3

    invoke-static/range {v8 .. v13}, Lio/reactivex/internal/util/QueueDrainHelper;->postCompleteDrain(JLorg/reactivestreams/Subscriber;Ljava/util/Queue;Ljava/util/concurrent/atomic/AtomicLong;Lio/reactivex/functions/BooleanSupplier;)Z

    .line 418
    :cond_3
    return-void

    .line 420
    .end local v0    # "r":J
    .end local v2    # "u":J
    :cond_4
    goto :goto_0
.end method

.method static postCompleteDrain(JLorg/reactivestreams/Subscriber;Ljava/util/Queue;Ljava/util/concurrent/atomic/AtomicLong;Lio/reactivex/functions/BooleanSupplier;)Z
    .locals 8
    .param p0, "n"    # J
    .param p4, "state"    # Ljava/util/concurrent/atomic/AtomicLong;
    .param p5, "isCancelled"    # Lio/reactivex/functions/BooleanSupplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(J",
            "Lorg/reactivestreams/Subscriber<",
            "-TT;>;",
            "Ljava/util/Queue<",
            "TT;>;",
            "Ljava/util/concurrent/atomic/AtomicLong;",
            "Lio/reactivex/functions/BooleanSupplier;",
            ")Z"
        }
    .end annotation

    .line 320
    .local p2, "actual":Lorg/reactivestreams/Subscriber;, "Lorg/reactivestreams/Subscriber<-TT;>;"
    .local p3, "queue":Ljava/util/Queue;, "Ljava/util/Queue<TT;>;"
    const-wide/high16 v0, -0x8000000000000000L

    and-long v2, p0, v0

    .line 324
    .local v2, "e":J
    :goto_0
    cmp-long v4, v2, p0

    const/4 v5, 0x1

    if-eqz v4, :cond_2

    .line 325
    invoke-static {p5}, Lio/reactivex/internal/util/QueueDrainHelper;->isCancelled(Lio/reactivex/functions/BooleanSupplier;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 326
    return v5

    .line 329
    :cond_0
    invoke-interface {p3}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v4

    .line 331
    .local v4, "t":Ljava/lang/Object;, "TT;"
    if-nez v4, :cond_1

    .line 332
    invoke-interface {p2}, Lorg/reactivestreams/Subscriber;->onComplete()V

    .line 333
    return v5

    .line 336
    :cond_1
    invoke-interface {p2, v4}, Lorg/reactivestreams/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 337
    const-wide/16 v5, 0x1

    add-long/2addr v2, v5

    .line 338
    .end local v4    # "t":Ljava/lang/Object;, "TT;"
    goto :goto_0

    .line 340
    :cond_2
    invoke-static {p5}, Lio/reactivex/internal/util/QueueDrainHelper;->isCancelled(Lio/reactivex/functions/BooleanSupplier;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 341
    return v5

    .line 344
    :cond_3
    invoke-interface {p3}, Ljava/util/Queue;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 345
    invoke-interface {p2}, Lorg/reactivestreams/Subscriber;->onComplete()V

    .line 346
    return v5

    .line 349
    :cond_4
    invoke-virtual {p4}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide p0

    .line 351
    cmp-long v4, p0, v2

    if-nez v4, :cond_6

    .line 353
    const-wide v4, 0x7fffffffffffffffL

    and-long v6, v2, v4

    neg-long v6, v6

    invoke-virtual {p4, v6, v7}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    move-result-wide p0

    .line 355
    and-long/2addr v4, p0

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_5

    .line 356
    const/4 v0, 0x0

    return v0

    .line 359
    :cond_5
    and-long v2, p0, v0

    goto :goto_0

    .line 351
    :cond_6
    goto :goto_0
.end method

.method public static postCompleteRequest(JLorg/reactivestreams/Subscriber;Ljava/util/Queue;Ljava/util/concurrent/atomic/AtomicLong;Lio/reactivex/functions/BooleanSupplier;)Z
    .locals 16
    .param p0, "n"    # J
    .param p4, "state"    # Ljava/util/concurrent/atomic/AtomicLong;
    .param p5, "isCancelled"    # Lio/reactivex/functions/BooleanSupplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(J",
            "Lorg/reactivestreams/Subscriber<",
            "-TT;>;",
            "Ljava/util/Queue<",
            "TT;>;",
            "Ljava/util/concurrent/atomic/AtomicLong;",
            "Lio/reactivex/functions/BooleanSupplier;",
            ")Z"
        }
    .end annotation

    .local p2, "actual":Lorg/reactivestreams/Subscriber;, "Lorg/reactivestreams/Subscriber<-TT;>;"
    .local p3, "queue":Ljava/util/Queue;, "Ljava/util/Queue<TT;>;"
    move-wide/from16 v0, p0

    .line 252
    :goto_0
    invoke-virtual/range {p4 .. p4}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    .line 255
    .local v2, "r":J
    const-wide v4, 0x7fffffffffffffffL

    and-long/2addr v4, v2

    .line 258
    .local v4, "r0":J
    const-wide/high16 v6, -0x8000000000000000L

    and-long v8, v2, v6

    invoke-static {v4, v5, v0, v1}, Lio/reactivex/internal/util/BackpressureHelper;->addCap(JJ)J

    move-result-wide v10

    or-long/2addr v8, v10

    .line 260
    .local v8, "u":J
    move-object/from16 v15, p4

    invoke-virtual {v15, v2, v3, v8, v9}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 262
    cmp-long v10, v2, v6

    if-nez v10, :cond_0

    .line 264
    or-long v10, v0, v6

    move-object/from16 v12, p2

    move-object/from16 v13, p3

    move-object/from16 v14, p4

    move-object/from16 v15, p5

    invoke-static/range {v10 .. v15}, Lio/reactivex/internal/util/QueueDrainHelper;->postCompleteDrain(JLorg/reactivestreams/Subscriber;Ljava/util/Queue;Ljava/util/concurrent/atomic/AtomicLong;Lio/reactivex/functions/BooleanSupplier;)Z

    .line 266
    const/4 v6, 0x1

    return v6

    .line 269
    :cond_0
    const/4 v6, 0x0

    return v6

    .line 271
    .end local v2    # "r":J
    .end local v4    # "r0":J
    .end local v8    # "u":J
    :cond_1
    goto :goto_0
.end method

.method public static request(Lorg/reactivestreams/Subscription;I)V
    .locals 2
    .param p0, "s"    # Lorg/reactivestreams/Subscription;
    .param p1, "prefetch"    # I

    .line 221
    if-gez p1, :cond_0

    const-wide v0, 0x7fffffffffffffffL

    goto :goto_0

    :cond_0
    int-to-long v0, p1

    :goto_0
    invoke-interface {p0, v0, v1}, Lorg/reactivestreams/Subscription;->request(J)V

    .line 222
    return-void
.end method
