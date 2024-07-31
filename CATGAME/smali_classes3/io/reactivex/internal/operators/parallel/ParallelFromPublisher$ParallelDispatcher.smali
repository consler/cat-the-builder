.class final Lio/reactivex/internal/operators/parallel/ParallelFromPublisher$ParallelDispatcher;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "ParallelFromPublisher.java"

# interfaces
.implements Lio/reactivex/FlowableSubscriber;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/parallel/ParallelFromPublisher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ParallelDispatcher"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/parallel/ParallelFromPublisher$ParallelDispatcher$RailSubscription;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "Lio/reactivex/FlowableSubscriber<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x3e0ae1f3a0d08e59L


# instance fields
.field volatile cancelled:Z

.field volatile done:Z

.field final emissions:[J

.field error:Ljava/lang/Throwable;

.field index:I

.field final limit:I

.field final prefetch:I

.field produced:I

.field queue:Lio/reactivex/internal/fuseable/SimpleQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/fuseable/SimpleQueue<",
            "TT;>;"
        }
    .end annotation
.end field

.field final requests:Ljava/util/concurrent/atomic/AtomicLongArray;

.field s:Lorg/reactivestreams/Subscription;

.field sourceMode:I

.field final subscriberCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field final subscribers:[Lorg/reactivestreams/Subscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lorg/reactivestreams/Subscriber<",
            "-TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>([Lorg/reactivestreams/Subscriber;I)V
    .locals 5
    .param p2, "prefetch"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lorg/reactivestreams/Subscriber<",
            "-TT;>;I)V"
        }
    .end annotation

    .line 100
    .local p0, "this":Lio/reactivex/internal/operators/parallel/ParallelFromPublisher$ParallelDispatcher;, "Lio/reactivex/internal/operators/parallel/ParallelFromPublisher$ParallelDispatcher<TT;>;"
    .local p1, "subscribers":[Lorg/reactivestreams/Subscriber;, "[Lorg/reactivestreams/Subscriber<-TT;>;"
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 94
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lio/reactivex/internal/operators/parallel/ParallelFromPublisher$ParallelDispatcher;->subscriberCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 101
    iput-object p1, p0, Lio/reactivex/internal/operators/parallel/ParallelFromPublisher$ParallelDispatcher;->subscribers:[Lorg/reactivestreams/Subscriber;

    .line 102
    iput p2, p0, Lio/reactivex/internal/operators/parallel/ParallelFromPublisher$ParallelDispatcher;->prefetch:I

    .line 103
    shr-int/lit8 v0, p2, 0x2

    sub-int v0, p2, v0

    iput v0, p0, Lio/reactivex/internal/operators/parallel/ParallelFromPublisher$ParallelDispatcher;->limit:I

    .line 104
    array-length v0, p1

    .line 105
    .local v0, "m":I
    new-instance v1, Ljava/util/concurrent/atomic/AtomicLongArray;

    add-int v2, v0, v0

    add-int/lit8 v2, v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicLongArray;-><init>(I)V

    iput-object v1, p0, Lio/reactivex/internal/operators/parallel/ParallelFromPublisher$ParallelDispatcher;->requests:Ljava/util/concurrent/atomic/AtomicLongArray;

    .line 106
    add-int v2, v0, v0

    int-to-long v3, v0

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/concurrent/atomic/AtomicLongArray;->lazySet(IJ)V

    .line 107
    new-array v1, v0, [J

    iput-object v1, p0, Lio/reactivex/internal/operators/parallel/ParallelFromPublisher$ParallelDispatcher;->emissions:[J

    .line 108
    return-void
.end method


# virtual methods
.method cancel(I)V
    .locals 4
    .param p1, "m"    # I

    .line 229
    .local p0, "this":Lio/reactivex/internal/operators/parallel/ParallelFromPublisher$ParallelDispatcher;, "Lio/reactivex/internal/operators/parallel/ParallelFromPublisher$ParallelDispatcher<TT;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/parallel/ParallelFromPublisher$ParallelDispatcher;->requests:Ljava/util/concurrent/atomic/AtomicLongArray;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicLongArray;->decrementAndGet(I)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 230
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/internal/operators/parallel/ParallelFromPublisher$ParallelDispatcher;->cancelled:Z

    .line 231
    iget-object v0, p0, Lio/reactivex/internal/operators/parallel/ParallelFromPublisher$ParallelDispatcher;->s:Lorg/reactivestreams/Subscription;

    invoke-interface {v0}, Lorg/reactivestreams/Subscription;->cancel()V

    .line 233
    invoke-virtual {p0}, Lio/reactivex/internal/operators/parallel/ParallelFromPublisher$ParallelDispatcher;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_0

    .line 234
    iget-object v0, p0, Lio/reactivex/internal/operators/parallel/ParallelFromPublisher$ParallelDispatcher;->queue:Lio/reactivex/internal/fuseable/SimpleQueue;

    invoke-interface {v0}, Lio/reactivex/internal/fuseable/SimpleQueue;->clear()V

    .line 237
    :cond_0
    return-void
.end method

.method drain()V
    .locals 2

    .line 430
    .local p0, "this":Lio/reactivex/internal/operators/parallel/ParallelFromPublisher$ParallelDispatcher;, "Lio/reactivex/internal/operators/parallel/ParallelFromPublisher$ParallelDispatcher<TT;>;"
    invoke-virtual {p0}, Lio/reactivex/internal/operators/parallel/ParallelFromPublisher$ParallelDispatcher;->getAndIncrement()I

    move-result v0

    if-eqz v0, :cond_0

    .line 431
    return-void

    .line 434
    :cond_0
    iget v0, p0, Lio/reactivex/internal/operators/parallel/ParallelFromPublisher$ParallelDispatcher;->sourceMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 435
    invoke-virtual {p0}, Lio/reactivex/internal/operators/parallel/ParallelFromPublisher$ParallelDispatcher;->drainSync()V

    goto :goto_0

    .line 437
    :cond_1
    invoke-virtual {p0}, Lio/reactivex/internal/operators/parallel/ParallelFromPublisher$ParallelDispatcher;->drainAsync()V

    .line 439
    :goto_0
    return-void
.end method

.method drainAsync()V
    .locals 23

    .line 240
    .local p0, "this":Lio/reactivex/internal/operators/parallel/ParallelFromPublisher$ParallelDispatcher;, "Lio/reactivex/internal/operators/parallel/ParallelFromPublisher$ParallelDispatcher<TT;>;"
    move-object/from16 v1, p0

    const/4 v0, 0x1

    .line 242
    .local v0, "missed":I
    iget-object v2, v1, Lio/reactivex/internal/operators/parallel/ParallelFromPublisher$ParallelDispatcher;->queue:Lio/reactivex/internal/fuseable/SimpleQueue;

    .line 243
    .local v2, "q":Lio/reactivex/internal/fuseable/SimpleQueue;, "Lio/reactivex/internal/fuseable/SimpleQueue<TT;>;"
    iget-object v3, v1, Lio/reactivex/internal/operators/parallel/ParallelFromPublisher$ParallelDispatcher;->subscribers:[Lorg/reactivestreams/Subscriber;

    .line 244
    .local v3, "a":[Lorg/reactivestreams/Subscriber;, "[Lorg/reactivestreams/Subscriber<-TT;>;"
    iget-object v4, v1, Lio/reactivex/internal/operators/parallel/ParallelFromPublisher$ParallelDispatcher;->requests:Ljava/util/concurrent/atomic/AtomicLongArray;

    .line 245
    .local v4, "r":Ljava/util/concurrent/atomic/AtomicLongArray;
    iget-object v5, v1, Lio/reactivex/internal/operators/parallel/ParallelFromPublisher$ParallelDispatcher;->emissions:[J

    .line 246
    .local v5, "e":[J
    array-length v6, v5

    .line 247
    .local v6, "n":I
    iget v7, v1, Lio/reactivex/internal/operators/parallel/ParallelFromPublisher$ParallelDispatcher;->index:I

    .line 248
    .local v7, "idx":I
    iget v8, v1, Lio/reactivex/internal/operators/parallel/ParallelFromPublisher$ParallelDispatcher;->produced:I

    .local v8, "consumed":I
    const/4 v9, 0x0

    move/from16 v22, v7

    move v7, v0

    move/from16 v0, v22

    .line 252
    .local v0, "idx":I
    .local v7, "missed":I
    :goto_0
    const/4 v10, 0x0

    move v11, v10

    move-object v10, v9

    move v9, v8

    move v8, v0

    .line 255
    .end local v0    # "idx":I
    .local v8, "idx":I
    .local v9, "consumed":I
    .local v11, "notReady":I
    :goto_1
    iget-boolean v0, v1, Lio/reactivex/internal/operators/parallel/ParallelFromPublisher$ParallelDispatcher;->cancelled:Z

    if-eqz v0, :cond_0

    .line 256
    invoke-interface {v2}, Lio/reactivex/internal/fuseable/SimpleQueue;->clear()V

    .line 257
    return-void

    .line 260
    :cond_0
    iget-boolean v12, v1, Lio/reactivex/internal/operators/parallel/ParallelFromPublisher$ParallelDispatcher;->done:Z

    .line 261
    .local v12, "d":Z
    if-eqz v12, :cond_2

    .line 262
    iget-object v0, v1, Lio/reactivex/internal/operators/parallel/ParallelFromPublisher$ParallelDispatcher;->error:Ljava/lang/Throwable;

    .line 263
    .local v0, "ex":Ljava/lang/Throwable;
    if-eqz v0, :cond_2

    .line 264
    invoke-interface {v2}, Lio/reactivex/internal/fuseable/SimpleQueue;->clear()V

    .line 265
    move-object v10, v3

    .local v10, "arr$":[Lorg/reactivestreams/Subscriber;
    array-length v13, v10

    .local v13, "len$":I
    const/4 v14, 0x0

    .local v14, "i$":I
    :goto_2
    if-ge v14, v13, :cond_1

    aget-object v15, v10, v14

    .line 266
    .local v15, "s":Lorg/reactivestreams/Subscriber;, "Lorg/reactivestreams/Subscriber<-TT;>;"
    invoke-interface {v15, v0}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 265
    .end local v15    # "s":Lorg/reactivestreams/Subscriber;, "Lorg/reactivestreams/Subscriber<-TT;>;"
    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    .line 268
    .end local v10    # "arr$":[Lorg/reactivestreams/Subscriber;
    .end local v13    # "len$":I
    .end local v14    # "i$":I
    :cond_1
    return-void

    .line 272
    .end local v0    # "ex":Ljava/lang/Throwable;
    :cond_2
    invoke-interface {v2}, Lio/reactivex/internal/fuseable/SimpleQueue;->isEmpty()Z

    move-result v13

    .line 274
    .local v13, "empty":Z
    if-eqz v12, :cond_4

    if-eqz v13, :cond_4

    .line 275
    move-object v0, v3

    .local v0, "arr$":[Lorg/reactivestreams/Subscriber;
    array-length v10, v0

    .local v10, "len$":I
    const/4 v14, 0x0

    .restart local v14    # "i$":I
    :goto_3
    if-ge v14, v10, :cond_3

    aget-object v15, v0, v14

    .line 276
    .restart local v15    # "s":Lorg/reactivestreams/Subscriber;, "Lorg/reactivestreams/Subscriber<-TT;>;"
    invoke-interface {v15}, Lorg/reactivestreams/Subscriber;->onComplete()V

    .line 275
    .end local v15    # "s":Lorg/reactivestreams/Subscriber;, "Lorg/reactivestreams/Subscriber<-TT;>;"
    add-int/lit8 v14, v14, 0x1

    goto :goto_3

    .line 278
    .end local v0    # "arr$":[Lorg/reactivestreams/Subscriber;
    .end local v10    # "len$":I
    .end local v14    # "i$":I
    :cond_3
    return-void

    .line 281
    :cond_4
    if-eqz v13, :cond_5

    .line 282
    move-object/from16 v18, v2

    move-object/from16 v19, v4

    move-object/from16 v20, v5

    move v0, v8

    move v8, v9

    move-object v9, v10

    goto/16 :goto_7

    .line 285
    :cond_5
    invoke-virtual {v4, v8}, Ljava/util/concurrent/atomic/AtomicLongArray;->get(I)J

    move-result-wide v14

    .line 286
    .local v14, "requestAtIndex":J
    aget-wide v16, v5, v8

    .line 287
    .local v16, "emissionAtIndex":J
    cmp-long v0, v14, v16

    if-eqz v0, :cond_9

    add-int v0, v6, v8

    invoke-virtual {v4, v0}, Ljava/util/concurrent/atomic/AtomicLongArray;->get(I)J

    move-result-wide v18

    const-wide/16 v20, 0x0

    cmp-long v0, v18, v20

    if-nez v0, :cond_9

    .line 292
    :try_start_0
    invoke-interface {v2}, Lio/reactivex/internal/fuseable/SimpleQueue;->poll()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 300
    .local v0, "v":Ljava/lang/Object;, "TT;"
    nop

    .line 302
    if-nez v0, :cond_6

    .line 303
    move-object/from16 v18, v2

    move-object/from16 v19, v4

    move-object/from16 v20, v5

    move/from16 v22, v9

    move-object v9, v0

    move v0, v8

    move/from16 v8, v22

    goto/16 :goto_7

    .line 306
    :cond_6
    aget-object v10, v3, v8

    invoke-interface {v10, v0}, Lorg/reactivestreams/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 308
    const-wide/16 v18, 0x1

    add-long v18, v16, v18

    aput-wide v18, v5, v8

    .line 310
    add-int/lit8 v9, v9, 0x1

    move v10, v9

    .line 311
    .local v10, "c":I
    move-object/from16 v18, v0

    .end local v0    # "v":Ljava/lang/Object;, "TT;"
    .local v18, "v":Ljava/lang/Object;, "TT;"
    iget v0, v1, Lio/reactivex/internal/operators/parallel/ParallelFromPublisher$ParallelDispatcher;->limit:I

    if-ne v10, v0, :cond_7

    .line 312
    const/4 v9, 0x0

    .line 313
    iget-object v0, v1, Lio/reactivex/internal/operators/parallel/ParallelFromPublisher$ParallelDispatcher;->s:Lorg/reactivestreams/Subscription;

    move-object/from16 v19, v4

    move-object/from16 v20, v5

    .end local v4    # "r":Ljava/util/concurrent/atomic/AtomicLongArray;
    .end local v5    # "e":[J
    .local v19, "r":Ljava/util/concurrent/atomic/AtomicLongArray;
    .local v20, "e":[J
    int-to-long v4, v10

    invoke-interface {v0, v4, v5}, Lorg/reactivestreams/Subscription;->request(J)V

    goto :goto_4

    .line 311
    .end local v19    # "r":Ljava/util/concurrent/atomic/AtomicLongArray;
    .end local v20    # "e":[J
    .restart local v4    # "r":Ljava/util/concurrent/atomic/AtomicLongArray;
    .restart local v5    # "e":[J
    :cond_7
    move-object/from16 v19, v4

    move-object/from16 v20, v5

    .line 315
    .end local v4    # "r":Ljava/util/concurrent/atomic/AtomicLongArray;
    .end local v5    # "e":[J
    .restart local v19    # "r":Ljava/util/concurrent/atomic/AtomicLongArray;
    .restart local v20    # "e":[J
    :goto_4
    const/4 v0, 0x0

    .line 316
    .end local v10    # "c":I
    .end local v11    # "notReady":I
    .end local v18    # "v":Ljava/lang/Object;, "TT;"
    .local v0, "notReady":I
    move v11, v0

    move-object/from16 v10, v18

    move-object/from16 v18, v2

    goto :goto_6

    .line 293
    .end local v0    # "notReady":I
    .end local v19    # "r":Ljava/util/concurrent/atomic/AtomicLongArray;
    .end local v20    # "e":[J
    .restart local v4    # "r":Ljava/util/concurrent/atomic/AtomicLongArray;
    .restart local v5    # "e":[J
    .restart local v11    # "notReady":I
    :catchall_0
    move-exception v0

    move-object/from16 v19, v4

    move-object/from16 v20, v5

    move-object v4, v0

    .end local v4    # "r":Ljava/util/concurrent/atomic/AtomicLongArray;
    .end local v5    # "e":[J
    .restart local v19    # "r":Ljava/util/concurrent/atomic/AtomicLongArray;
    .restart local v20    # "e":[J
    move-object v0, v10

    .line 294
    .local v0, "v":Ljava/lang/Object;, "TT;"
    .local v4, "ex":Ljava/lang/Throwable;
    invoke-static {v4}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 295
    iget-object v5, v1, Lio/reactivex/internal/operators/parallel/ParallelFromPublisher$ParallelDispatcher;->s:Lorg/reactivestreams/Subscription;

    invoke-interface {v5}, Lorg/reactivestreams/Subscription;->cancel()V

    .line 296
    move-object v5, v3

    .local v5, "arr$":[Lorg/reactivestreams/Subscriber;
    array-length v10, v5

    .local v10, "len$":I
    const/16 v18, 0x0

    move-object/from16 v21, v0

    move/from16 v0, v18

    .local v0, "i$":I
    .local v21, "v":Ljava/lang/Object;, "TT;"
    :goto_5
    if-ge v0, v10, :cond_8

    move-object/from16 v18, v2

    .end local v2    # "q":Lio/reactivex/internal/fuseable/SimpleQueue;, "Lio/reactivex/internal/fuseable/SimpleQueue<TT;>;"
    .local v18, "q":Lio/reactivex/internal/fuseable/SimpleQueue;, "Lio/reactivex/internal/fuseable/SimpleQueue<TT;>;"
    aget-object v2, v5, v0

    .line 297
    .local v2, "s":Lorg/reactivestreams/Subscriber;, "Lorg/reactivestreams/Subscriber<-TT;>;"
    invoke-interface {v2, v4}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 296
    .end local v2    # "s":Lorg/reactivestreams/Subscriber;, "Lorg/reactivestreams/Subscriber<-TT;>;"
    add-int/lit8 v0, v0, 0x1

    move-object/from16 v2, v18

    goto :goto_5

    .line 299
    .end local v0    # "i$":I
    .end local v5    # "arr$":[Lorg/reactivestreams/Subscriber;
    .end local v10    # "len$":I
    .end local v18    # "q":Lio/reactivex/internal/fuseable/SimpleQueue;, "Lio/reactivex/internal/fuseable/SimpleQueue<TT;>;"
    .local v2, "q":Lio/reactivex/internal/fuseable/SimpleQueue;, "Lio/reactivex/internal/fuseable/SimpleQueue<TT;>;"
    :cond_8
    return-void

    .line 287
    .end local v19    # "r":Ljava/util/concurrent/atomic/AtomicLongArray;
    .end local v20    # "e":[J
    .end local v21    # "v":Ljava/lang/Object;, "TT;"
    .local v4, "r":Ljava/util/concurrent/atomic/AtomicLongArray;
    .local v5, "e":[J
    :cond_9
    move-object/from16 v18, v2

    move-object/from16 v19, v4

    move-object/from16 v20, v5

    .line 317
    .end local v2    # "q":Lio/reactivex/internal/fuseable/SimpleQueue;, "Lio/reactivex/internal/fuseable/SimpleQueue<TT;>;"
    .end local v4    # "r":Ljava/util/concurrent/atomic/AtomicLongArray;
    .end local v5    # "e":[J
    .restart local v18    # "q":Lio/reactivex/internal/fuseable/SimpleQueue;, "Lio/reactivex/internal/fuseable/SimpleQueue<TT;>;"
    .restart local v19    # "r":Ljava/util/concurrent/atomic/AtomicLongArray;
    .restart local v20    # "e":[J
    add-int/lit8 v11, v11, 0x1

    .line 320
    :goto_6
    add-int/lit8 v8, v8, 0x1

    .line 321
    if-ne v8, v6, :cond_a

    .line 322
    const/4 v0, 0x0

    move v8, v0

    .line 325
    :cond_a
    if-ne v11, v6, :cond_d

    .line 326
    move v0, v8

    move v8, v9

    move-object v9, v10

    .line 330
    .end local v9    # "consumed":I
    .end local v12    # "d":Z
    .end local v13    # "empty":Z
    .end local v14    # "requestAtIndex":J
    .end local v16    # "emissionAtIndex":J
    .local v0, "idx":I
    .local v8, "consumed":I
    :goto_7
    invoke-virtual/range {p0 .. p0}, Lio/reactivex/internal/operators/parallel/ParallelFromPublisher$ParallelDispatcher;->get()I

    move-result v2

    .line 331
    .local v2, "w":I
    if-ne v2, v7, :cond_c

    .line 332
    iput v0, v1, Lio/reactivex/internal/operators/parallel/ParallelFromPublisher$ParallelDispatcher;->index:I

    .line 333
    iput v8, v1, Lio/reactivex/internal/operators/parallel/ParallelFromPublisher$ParallelDispatcher;->produced:I

    .line 334
    neg-int v4, v7

    invoke-virtual {v1, v4}, Lio/reactivex/internal/operators/parallel/ParallelFromPublisher$ParallelDispatcher;->addAndGet(I)I

    move-result v4

    .line 335
    .end local v7    # "missed":I
    .local v4, "missed":I
    if-nez v4, :cond_b

    .line 336
    nop

    .line 342
    .end local v2    # "w":I
    .end local v11    # "notReady":I
    return-void

    .line 335
    .restart local v2    # "w":I
    .restart local v11    # "notReady":I
    :cond_b
    move v7, v4

    goto :goto_8

    .line 339
    .end local v4    # "missed":I
    .restart local v7    # "missed":I
    :cond_c
    move v4, v2

    move v7, v4

    .line 341
    .end local v2    # "w":I
    .end local v11    # "notReady":I
    :goto_8
    move-object/from16 v2, v18

    move-object/from16 v4, v19

    move-object/from16 v5, v20

    goto/16 :goto_0

    .line 328
    .end local v0    # "idx":I
    .local v8, "idx":I
    .restart local v9    # "consumed":I
    .restart local v11    # "notReady":I
    :cond_d
    move-object/from16 v2, v18

    move-object/from16 v4, v19

    move-object/from16 v5, v20

    goto/16 :goto_1
.end method

.method drainSync()V
    .locals 22

    .line 345
    .local p0, "this":Lio/reactivex/internal/operators/parallel/ParallelFromPublisher$ParallelDispatcher;, "Lio/reactivex/internal/operators/parallel/ParallelFromPublisher$ParallelDispatcher<TT;>;"
    move-object/from16 v1, p0

    const/4 v0, 0x1

    .line 347
    .local v0, "missed":I
    iget-object v2, v1, Lio/reactivex/internal/operators/parallel/ParallelFromPublisher$ParallelDispatcher;->queue:Lio/reactivex/internal/fuseable/SimpleQueue;

    .line 348
    .local v2, "q":Lio/reactivex/internal/fuseable/SimpleQueue;, "Lio/reactivex/internal/fuseable/SimpleQueue<TT;>;"
    iget-object v3, v1, Lio/reactivex/internal/operators/parallel/ParallelFromPublisher$ParallelDispatcher;->subscribers:[Lorg/reactivestreams/Subscriber;

    .line 349
    .local v3, "a":[Lorg/reactivestreams/Subscriber;, "[Lorg/reactivestreams/Subscriber<-TT;>;"
    iget-object v4, v1, Lio/reactivex/internal/operators/parallel/ParallelFromPublisher$ParallelDispatcher;->requests:Ljava/util/concurrent/atomic/AtomicLongArray;

    .line 350
    .local v4, "r":Ljava/util/concurrent/atomic/AtomicLongArray;
    iget-object v5, v1, Lio/reactivex/internal/operators/parallel/ParallelFromPublisher$ParallelDispatcher;->emissions:[J

    .line 351
    .local v5, "e":[J
    array-length v6, v5

    .line 352
    .local v6, "n":I
    iget v7, v1, Lio/reactivex/internal/operators/parallel/ParallelFromPublisher$ParallelDispatcher;->index:I

    .local v7, "idx":I
    const/4 v8, 0x0

    move/from16 v21, v7

    move v7, v0

    move/from16 v0, v21

    .line 356
    .local v0, "idx":I
    .local v7, "missed":I
    :goto_0
    const/4 v9, 0x0

    move v10, v9

    move-object v9, v8

    move v8, v0

    .line 359
    .end local v0    # "idx":I
    .local v8, "idx":I
    .local v10, "notReady":I
    :goto_1
    iget-boolean v0, v1, Lio/reactivex/internal/operators/parallel/ParallelFromPublisher$ParallelDispatcher;->cancelled:Z

    if-eqz v0, :cond_0

    .line 360
    invoke-interface {v2}, Lio/reactivex/internal/fuseable/SimpleQueue;->clear()V

    .line 361
    return-void

    .line 364
    :cond_0
    invoke-interface {v2}, Lio/reactivex/internal/fuseable/SimpleQueue;->isEmpty()Z

    move-result v11

    .line 366
    .local v11, "empty":Z
    if-eqz v11, :cond_2

    .line 367
    move-object v0, v3

    .local v0, "arr$":[Lorg/reactivestreams/Subscriber;
    array-length v9, v0

    .local v9, "len$":I
    const/4 v12, 0x0

    .local v12, "i$":I
    :goto_2
    if-ge v12, v9, :cond_1

    aget-object v13, v0, v12

    .line 368
    .local v13, "s":Lorg/reactivestreams/Subscriber;, "Lorg/reactivestreams/Subscriber<-TT;>;"
    invoke-interface {v13}, Lorg/reactivestreams/Subscriber;->onComplete()V

    .line 367
    .end local v13    # "s":Lorg/reactivestreams/Subscriber;, "Lorg/reactivestreams/Subscriber<-TT;>;"
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 370
    .end local v0    # "arr$":[Lorg/reactivestreams/Subscriber;
    .end local v9    # "len$":I
    .end local v12    # "i$":I
    :cond_1
    return-void

    .line 373
    :cond_2
    invoke-virtual {v4, v8}, Ljava/util/concurrent/atomic/AtomicLongArray;->get(I)J

    move-result-wide v12

    .line 374
    .local v12, "requestAtIndex":J
    aget-wide v14, v5, v8

    .line 375
    .local v14, "emissionAtIndex":J
    cmp-long v0, v12, v14

    if-eqz v0, :cond_6

    add-int v0, v6, v8

    invoke-virtual {v4, v0}, Ljava/util/concurrent/atomic/AtomicLongArray;->get(I)J

    move-result-wide v16

    const-wide/16 v18, 0x0

    cmp-long v0, v16, v18

    if-nez v0, :cond_6

    .line 380
    :try_start_0
    invoke-interface {v2}, Lio/reactivex/internal/fuseable/SimpleQueue;->poll()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 388
    .local v0, "v":Ljava/lang/Object;, "TT;"
    nop

    .line 390
    if-nez v0, :cond_4

    .line 391
    move-object v9, v3

    move-object/from16 v16, v2

    .end local v2    # "q":Lio/reactivex/internal/fuseable/SimpleQueue;, "Lio/reactivex/internal/fuseable/SimpleQueue<TT;>;"
    .local v9, "arr$":[Lorg/reactivestreams/Subscriber;
    .local v16, "q":Lio/reactivex/internal/fuseable/SimpleQueue;, "Lio/reactivex/internal/fuseable/SimpleQueue<TT;>;"
    array-length v2, v9

    .local v2, "len$":I
    const/16 v17, 0x0

    move-object/from16 v18, v4

    move/from16 v4, v17

    .local v4, "i$":I
    .local v18, "r":Ljava/util/concurrent/atomic/AtomicLongArray;
    :goto_3
    if-ge v4, v2, :cond_3

    aget-object v17, v9, v4

    .line 392
    .local v17, "s":Lorg/reactivestreams/Subscriber;, "Lorg/reactivestreams/Subscriber<-TT;>;"
    invoke-interface/range {v17 .. v17}, Lorg/reactivestreams/Subscriber;->onComplete()V

    .line 391
    .end local v17    # "s":Lorg/reactivestreams/Subscriber;, "Lorg/reactivestreams/Subscriber<-TT;>;"
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 394
    .end local v2    # "len$":I
    .end local v4    # "i$":I
    .end local v9    # "arr$":[Lorg/reactivestreams/Subscriber;
    :cond_3
    return-void

    .line 397
    .end local v16    # "q":Lio/reactivex/internal/fuseable/SimpleQueue;, "Lio/reactivex/internal/fuseable/SimpleQueue<TT;>;"
    .end local v18    # "r":Ljava/util/concurrent/atomic/AtomicLongArray;
    .local v2, "q":Lio/reactivex/internal/fuseable/SimpleQueue;, "Lio/reactivex/internal/fuseable/SimpleQueue<TT;>;"
    .local v4, "r":Ljava/util/concurrent/atomic/AtomicLongArray;
    :cond_4
    move-object/from16 v16, v2

    move-object/from16 v18, v4

    .end local v2    # "q":Lio/reactivex/internal/fuseable/SimpleQueue;, "Lio/reactivex/internal/fuseable/SimpleQueue<TT;>;"
    .end local v4    # "r":Ljava/util/concurrent/atomic/AtomicLongArray;
    .restart local v16    # "q":Lio/reactivex/internal/fuseable/SimpleQueue;, "Lio/reactivex/internal/fuseable/SimpleQueue<TT;>;"
    .restart local v18    # "r":Ljava/util/concurrent/atomic/AtomicLongArray;
    aget-object v2, v3, v8

    invoke-interface {v2, v0}, Lorg/reactivestreams/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 399
    const-wide/16 v19, 0x1

    add-long v19, v14, v19

    aput-wide v19, v5, v8

    .line 401
    const/4 v2, 0x0

    .line 402
    .end local v0    # "v":Ljava/lang/Object;, "TT;"
    .end local v10    # "notReady":I
    .local v2, "notReady":I
    move-object v9, v0

    move v10, v2

    move-object/from16 v17, v3

    goto :goto_5

    .line 381
    .end local v16    # "q":Lio/reactivex/internal/fuseable/SimpleQueue;, "Lio/reactivex/internal/fuseable/SimpleQueue<TT;>;"
    .end local v18    # "r":Ljava/util/concurrent/atomic/AtomicLongArray;
    .local v2, "q":Lio/reactivex/internal/fuseable/SimpleQueue;, "Lio/reactivex/internal/fuseable/SimpleQueue<TT;>;"
    .restart local v4    # "r":Ljava/util/concurrent/atomic/AtomicLongArray;
    .restart local v10    # "notReady":I
    :catchall_0
    move-exception v0

    move-object/from16 v16, v2

    move-object/from16 v18, v4

    move-object v2, v0

    .end local v2    # "q":Lio/reactivex/internal/fuseable/SimpleQueue;, "Lio/reactivex/internal/fuseable/SimpleQueue<TT;>;"
    .end local v4    # "r":Ljava/util/concurrent/atomic/AtomicLongArray;
    .restart local v16    # "q":Lio/reactivex/internal/fuseable/SimpleQueue;, "Lio/reactivex/internal/fuseable/SimpleQueue<TT;>;"
    .restart local v18    # "r":Ljava/util/concurrent/atomic/AtomicLongArray;
    move-object v0, v9

    .line 382
    .restart local v0    # "v":Ljava/lang/Object;, "TT;"
    .local v2, "ex":Ljava/lang/Throwable;
    invoke-static {v2}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 383
    iget-object v4, v1, Lio/reactivex/internal/operators/parallel/ParallelFromPublisher$ParallelDispatcher;->s:Lorg/reactivestreams/Subscription;

    invoke-interface {v4}, Lorg/reactivestreams/Subscription;->cancel()V

    .line 384
    move-object v4, v3

    .local v4, "arr$":[Lorg/reactivestreams/Subscriber;
    array-length v9, v4

    .local v9, "len$":I
    const/16 v17, 0x0

    move-object/from16 v19, v0

    move/from16 v0, v17

    .local v0, "i$":I
    .local v19, "v":Ljava/lang/Object;, "TT;"
    :goto_4
    if-ge v0, v9, :cond_5

    move-object/from16 v17, v3

    .end local v3    # "a":[Lorg/reactivestreams/Subscriber;, "[Lorg/reactivestreams/Subscriber<-TT;>;"
    .local v17, "a":[Lorg/reactivestreams/Subscriber;, "[Lorg/reactivestreams/Subscriber<-TT;>;"
    aget-object v3, v4, v0

    .line 385
    .local v3, "s":Lorg/reactivestreams/Subscriber;, "Lorg/reactivestreams/Subscriber<-TT;>;"
    invoke-interface {v3, v2}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 384
    .end local v3    # "s":Lorg/reactivestreams/Subscriber;, "Lorg/reactivestreams/Subscriber<-TT;>;"
    add-int/lit8 v0, v0, 0x1

    move-object/from16 v3, v17

    goto :goto_4

    .line 387
    .end local v0    # "i$":I
    .end local v4    # "arr$":[Lorg/reactivestreams/Subscriber;
    .end local v9    # "len$":I
    .end local v17    # "a":[Lorg/reactivestreams/Subscriber;, "[Lorg/reactivestreams/Subscriber<-TT;>;"
    .local v3, "a":[Lorg/reactivestreams/Subscriber;, "[Lorg/reactivestreams/Subscriber<-TT;>;"
    :cond_5
    return-void

    .line 375
    .end local v16    # "q":Lio/reactivex/internal/fuseable/SimpleQueue;, "Lio/reactivex/internal/fuseable/SimpleQueue<TT;>;"
    .end local v18    # "r":Ljava/util/concurrent/atomic/AtomicLongArray;
    .end local v19    # "v":Ljava/lang/Object;, "TT;"
    .local v2, "q":Lio/reactivex/internal/fuseable/SimpleQueue;, "Lio/reactivex/internal/fuseable/SimpleQueue<TT;>;"
    .local v4, "r":Ljava/util/concurrent/atomic/AtomicLongArray;
    :cond_6
    move-object/from16 v16, v2

    move-object/from16 v17, v3

    move-object/from16 v18, v4

    .line 403
    .end local v2    # "q":Lio/reactivex/internal/fuseable/SimpleQueue;, "Lio/reactivex/internal/fuseable/SimpleQueue<TT;>;"
    .end local v3    # "a":[Lorg/reactivestreams/Subscriber;, "[Lorg/reactivestreams/Subscriber<-TT;>;"
    .end local v4    # "r":Ljava/util/concurrent/atomic/AtomicLongArray;
    .restart local v16    # "q":Lio/reactivex/internal/fuseable/SimpleQueue;, "Lio/reactivex/internal/fuseable/SimpleQueue<TT;>;"
    .restart local v17    # "a":[Lorg/reactivestreams/Subscriber;, "[Lorg/reactivestreams/Subscriber<-TT;>;"
    .restart local v18    # "r":Ljava/util/concurrent/atomic/AtomicLongArray;
    add-int/lit8 v10, v10, 0x1

    .line 406
    :goto_5
    add-int/lit8 v8, v8, 0x1

    .line 407
    if-ne v8, v6, :cond_7

    .line 408
    const/4 v0, 0x0

    move v8, v0

    .line 411
    :cond_7
    if-ne v10, v6, :cond_a

    .line 412
    nop

    .line 416
    .end local v11    # "empty":Z
    .end local v12    # "requestAtIndex":J
    .end local v14    # "emissionAtIndex":J
    invoke-virtual/range {p0 .. p0}, Lio/reactivex/internal/operators/parallel/ParallelFromPublisher$ParallelDispatcher;->get()I

    move-result v0

    .line 417
    .local v0, "w":I
    if-ne v0, v7, :cond_9

    .line 418
    iput v8, v1, Lio/reactivex/internal/operators/parallel/ParallelFromPublisher$ParallelDispatcher;->index:I

    .line 419
    neg-int v2, v7

    invoke-virtual {v1, v2}, Lio/reactivex/internal/operators/parallel/ParallelFromPublisher$ParallelDispatcher;->addAndGet(I)I

    move-result v2

    .line 420
    .end local v7    # "missed":I
    .local v2, "missed":I
    if-nez v2, :cond_8

    .line 421
    nop

    .line 427
    .end local v0    # "w":I
    .end local v10    # "notReady":I
    return-void

    .line 420
    .restart local v0    # "w":I
    .restart local v10    # "notReady":I
    :cond_8
    move v7, v2

    goto :goto_6

    .line 424
    .end local v2    # "missed":I
    .restart local v7    # "missed":I
    :cond_9
    move v2, v0

    move v7, v2

    .line 426
    .end local v0    # "w":I
    .end local v10    # "notReady":I
    :goto_6
    move v0, v8

    move-object v8, v9

    move-object/from16 v2, v16

    move-object/from16 v3, v17

    move-object/from16 v4, v18

    goto/16 :goto_0

    .line 414
    .restart local v10    # "notReady":I
    :cond_a
    move-object/from16 v2, v16

    move-object/from16 v3, v17

    move-object/from16 v4, v18

    goto/16 :goto_1
.end method

.method public onComplete()V
    .locals 1

    .line 224
    .local p0, "this":Lio/reactivex/internal/operators/parallel/ParallelFromPublisher$ParallelDispatcher;, "Lio/reactivex/internal/operators/parallel/ParallelFromPublisher$ParallelDispatcher<TT;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/internal/operators/parallel/ParallelFromPublisher$ParallelDispatcher;->done:Z

    .line 225
    invoke-virtual {p0}, Lio/reactivex/internal/operators/parallel/ParallelFromPublisher$ParallelDispatcher;->drain()V

    .line 226
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "t"    # Ljava/lang/Throwable;

    .line 217
    .local p0, "this":Lio/reactivex/internal/operators/parallel/ParallelFromPublisher$ParallelDispatcher;, "Lio/reactivex/internal/operators/parallel/ParallelFromPublisher$ParallelDispatcher<TT;>;"
    iput-object p1, p0, Lio/reactivex/internal/operators/parallel/ParallelFromPublisher$ParallelDispatcher;->error:Ljava/lang/Throwable;

    .line 218
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/internal/operators/parallel/ParallelFromPublisher$ParallelDispatcher;->done:Z

    .line 219
    invoke-virtual {p0}, Lio/reactivex/internal/operators/parallel/ParallelFromPublisher$ParallelDispatcher;->drain()V

    .line 220
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 205
    .local p0, "this":Lio/reactivex/internal/operators/parallel/ParallelFromPublisher$ParallelDispatcher;, "Lio/reactivex/internal/operators/parallel/ParallelFromPublisher$ParallelDispatcher<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget v0, p0, Lio/reactivex/internal/operators/parallel/ParallelFromPublisher$ParallelDispatcher;->sourceMode:I

    if-nez v0, :cond_0

    .line 206
    iget-object v0, p0, Lio/reactivex/internal/operators/parallel/ParallelFromPublisher$ParallelDispatcher;->queue:Lio/reactivex/internal/fuseable/SimpleQueue;

    invoke-interface {v0, p1}, Lio/reactivex/internal/fuseable/SimpleQueue;->offer(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 207
    iget-object v0, p0, Lio/reactivex/internal/operators/parallel/ParallelFromPublisher$ParallelDispatcher;->s:Lorg/reactivestreams/Subscription;

    invoke-interface {v0}, Lorg/reactivestreams/Subscription;->cancel()V

    .line 208
    new-instance v0, Lio/reactivex/exceptions/MissingBackpressureException;

    const-string v1, "Queue is full?"

    invoke-direct {v0, v1}, Lio/reactivex/exceptions/MissingBackpressureException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lio/reactivex/internal/operators/parallel/ParallelFromPublisher$ParallelDispatcher;->onError(Ljava/lang/Throwable;)V

    .line 209
    return-void

    .line 212
    :cond_0
    invoke-virtual {p0}, Lio/reactivex/internal/operators/parallel/ParallelFromPublisher$ParallelDispatcher;->drain()V

    .line 213
    return-void
.end method

.method public onSubscribe(Lorg/reactivestreams/Subscription;)V
    .locals 4
    .param p1, "s"    # Lorg/reactivestreams/Subscription;

    .line 112
    .local p0, "this":Lio/reactivex/internal/operators/parallel/ParallelFromPublisher$ParallelDispatcher;, "Lio/reactivex/internal/operators/parallel/ParallelFromPublisher$ParallelDispatcher<TT;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/parallel/ParallelFromPublisher$ParallelDispatcher;->s:Lorg/reactivestreams/Subscription;

    invoke-static {v0, p1}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->validate(Lorg/reactivestreams/Subscription;Lorg/reactivestreams/Subscription;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 113
    iput-object p1, p0, Lio/reactivex/internal/operators/parallel/ParallelFromPublisher$ParallelDispatcher;->s:Lorg/reactivestreams/Subscription;

    .line 115
    instance-of v0, p1, Lio/reactivex/internal/fuseable/QueueSubscription;

    if-eqz v0, :cond_1

    .line 117
    move-object v0, p1

    check-cast v0, Lio/reactivex/internal/fuseable/QueueSubscription;

    .line 119
    .local v0, "qs":Lio/reactivex/internal/fuseable/QueueSubscription;, "Lio/reactivex/internal/fuseable/QueueSubscription<TT;>;"
    const/4 v1, 0x3

    invoke-interface {v0, v1}, Lio/reactivex/internal/fuseable/QueueSubscription;->requestFusion(I)I

    move-result v1

    .line 121
    .local v1, "m":I
    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 122
    iput v1, p0, Lio/reactivex/internal/operators/parallel/ParallelFromPublisher$ParallelDispatcher;->sourceMode:I

    .line 123
    iput-object v0, p0, Lio/reactivex/internal/operators/parallel/ParallelFromPublisher$ParallelDispatcher;->queue:Lio/reactivex/internal/fuseable/SimpleQueue;

    .line 124
    iput-boolean v2, p0, Lio/reactivex/internal/operators/parallel/ParallelFromPublisher$ParallelDispatcher;->done:Z

    .line 125
    invoke-virtual {p0}, Lio/reactivex/internal/operators/parallel/ParallelFromPublisher$ParallelDispatcher;->setupSubscribers()V

    .line 126
    invoke-virtual {p0}, Lio/reactivex/internal/operators/parallel/ParallelFromPublisher$ParallelDispatcher;->drain()V

    .line 127
    return-void

    .line 129
    :cond_0
    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 130
    iput v1, p0, Lio/reactivex/internal/operators/parallel/ParallelFromPublisher$ParallelDispatcher;->sourceMode:I

    .line 131
    iput-object v0, p0, Lio/reactivex/internal/operators/parallel/ParallelFromPublisher$ParallelDispatcher;->queue:Lio/reactivex/internal/fuseable/SimpleQueue;

    .line 133
    invoke-virtual {p0}, Lio/reactivex/internal/operators/parallel/ParallelFromPublisher$ParallelDispatcher;->setupSubscribers()V

    .line 135
    iget v2, p0, Lio/reactivex/internal/operators/parallel/ParallelFromPublisher$ParallelDispatcher;->prefetch:I

    int-to-long v2, v2

    invoke-interface {p1, v2, v3}, Lorg/reactivestreams/Subscription;->request(J)V

    .line 137
    return-void

    .line 141
    .end local v0    # "qs":Lio/reactivex/internal/fuseable/QueueSubscription;, "Lio/reactivex/internal/fuseable/QueueSubscription<TT;>;"
    .end local v1    # "m":I
    :cond_1
    new-instance v0, Lio/reactivex/internal/queue/SpscArrayQueue;

    iget v1, p0, Lio/reactivex/internal/operators/parallel/ParallelFromPublisher$ParallelDispatcher;->prefetch:I

    invoke-direct {v0, v1}, Lio/reactivex/internal/queue/SpscArrayQueue;-><init>(I)V

    iput-object v0, p0, Lio/reactivex/internal/operators/parallel/ParallelFromPublisher$ParallelDispatcher;->queue:Lio/reactivex/internal/fuseable/SimpleQueue;

    .line 143
    invoke-virtual {p0}, Lio/reactivex/internal/operators/parallel/ParallelFromPublisher$ParallelDispatcher;->setupSubscribers()V

    .line 145
    iget v0, p0, Lio/reactivex/internal/operators/parallel/ParallelFromPublisher$ParallelDispatcher;->prefetch:I

    int-to-long v0, v0

    invoke-interface {p1, v0, v1}, Lorg/reactivestreams/Subscription;->request(J)V

    .line 147
    :cond_2
    return-void
.end method

.method setupSubscribers()V
    .locals 5

    .line 150
    .local p0, "this":Lio/reactivex/internal/operators/parallel/ParallelFromPublisher$ParallelDispatcher;, "Lio/reactivex/internal/operators/parallel/ParallelFromPublisher$ParallelDispatcher<TT;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/parallel/ParallelFromPublisher$ParallelDispatcher;->subscribers:[Lorg/reactivestreams/Subscriber;

    .line 151
    .local v0, "subs":[Lorg/reactivestreams/Subscriber;, "[Lorg/reactivestreams/Subscriber<-TT;>;"
    array-length v1, v0

    .line 153
    .local v1, "m":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 154
    iget-boolean v3, p0, Lio/reactivex/internal/operators/parallel/ParallelFromPublisher$ParallelDispatcher;->cancelled:Z

    if-eqz v3, :cond_0

    .line 155
    return-void

    .line 158
    :cond_0
    iget-object v3, p0, Lio/reactivex/internal/operators/parallel/ParallelFromPublisher$ParallelDispatcher;->subscriberCount:Ljava/util/concurrent/atomic/AtomicInteger;

    add-int/lit8 v4, v2, 0x1

    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicInteger;->lazySet(I)V

    .line 160
    aget-object v3, v0, v2

    new-instance v4, Lio/reactivex/internal/operators/parallel/ParallelFromPublisher$ParallelDispatcher$RailSubscription;

    invoke-direct {v4, p0, v2, v1}, Lio/reactivex/internal/operators/parallel/ParallelFromPublisher$ParallelDispatcher$RailSubscription;-><init>(Lio/reactivex/internal/operators/parallel/ParallelFromPublisher$ParallelDispatcher;II)V

    invoke-interface {v3, v4}, Lorg/reactivestreams/Subscriber;->onSubscribe(Lorg/reactivestreams/Subscription;)V

    .line 153
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 162
    .end local v2    # "i":I
    :cond_1
    return-void
.end method
