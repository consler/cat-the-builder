.class final Lio/reactivex/internal/operators/flowable/FlowableCache$ReplaySubscription;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "FlowableCache.java"

# interfaces
.implements Lorg/reactivestreams/Subscription;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/FlowableCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ReplaySubscription"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "Lorg/reactivestreams/Subscription;"
    }
.end annotation


# static fields
.field private static final CANCELLED:J = -0x1L

.field private static final serialVersionUID:J = -0x237e491daced6e1dL


# instance fields
.field final child:Lorg/reactivestreams/Subscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/reactivestreams/Subscriber<",
            "-TT;>;"
        }
    .end annotation
.end field

.field currentBuffer:[Ljava/lang/Object;

.field currentIndexInBuffer:I

.field index:I

.field final requested:Ljava/util/concurrent/atomic/AtomicLong;

.field final state:Lio/reactivex/internal/operators/flowable/FlowableCache$CacheState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/operators/flowable/FlowableCache$CacheState<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lorg/reactivestreams/Subscriber;Lio/reactivex/internal/operators/flowable/FlowableCache$CacheState;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/Subscriber<",
            "-TT;>;",
            "Lio/reactivex/internal/operators/flowable/FlowableCache$CacheState<",
            "TT;>;)V"
        }
    .end annotation

    .line 268
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableCache$ReplaySubscription;, "Lio/reactivex/internal/operators/flowable/FlowableCache$ReplaySubscription<TT;>;"
    .local p1, "child":Lorg/reactivestreams/Subscriber;, "Lorg/reactivestreams/Subscriber<-TT;>;"
    .local p2, "state":Lio/reactivex/internal/operators/flowable/FlowableCache$CacheState;, "Lio/reactivex/internal/operators/flowable/FlowableCache$CacheState<TT;>;"
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 269
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableCache$ReplaySubscription;->child:Lorg/reactivestreams/Subscriber;

    .line 270
    iput-object p2, p0, Lio/reactivex/internal/operators/flowable/FlowableCache$ReplaySubscription;->state:Lio/reactivex/internal/operators/flowable/FlowableCache$CacheState;

    .line 271
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableCache$ReplaySubscription;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    .line 272
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 5

    .line 292
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableCache$ReplaySubscription;, "Lio/reactivex/internal/operators/flowable/FlowableCache$ReplaySubscription<TT;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableCache$ReplaySubscription;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->getAndSet(J)J

    move-result-wide v3

    cmp-long v0, v3, v1

    if-eqz v0, :cond_0

    .line 293
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableCache$ReplaySubscription;->state:Lio/reactivex/internal/operators/flowable/FlowableCache$CacheState;

    invoke-virtual {v0, p0}, Lio/reactivex/internal/operators/flowable/FlowableCache$CacheState;->removeChild(Lio/reactivex/internal/operators/flowable/FlowableCache$ReplaySubscription;)V

    .line 295
    :cond_0
    return-void
.end method

.method public replay()V
    .locals 18

    .line 301
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableCache$ReplaySubscription;, "Lio/reactivex/internal/operators/flowable/FlowableCache$ReplaySubscription<TT;>;"
    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Lio/reactivex/internal/operators/flowable/FlowableCache$ReplaySubscription;->getAndIncrement()I

    move-result v1

    if-eqz v1, :cond_0

    .line 302
    return-void

    .line 305
    :cond_0
    const/4 v1, 0x1

    .line 306
    .local v1, "missed":I
    iget-object v2, v0, Lio/reactivex/internal/operators/flowable/FlowableCache$ReplaySubscription;->child:Lorg/reactivestreams/Subscriber;

    .line 307
    .local v2, "child":Lorg/reactivestreams/Subscriber;, "Lorg/reactivestreams/Subscriber<-TT;>;"
    iget-object v3, v0, Lio/reactivex/internal/operators/flowable/FlowableCache$ReplaySubscription;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    .line 311
    .local v3, "rq":Ljava/util/concurrent/atomic/AtomicLong;
    :goto_0
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v4

    .line 313
    .local v4, "r":J
    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    if-gez v8, :cond_1

    .line 314
    return-void

    .line 319
    :cond_1
    iget-object v8, v0, Lio/reactivex/internal/operators/flowable/FlowableCache$ReplaySubscription;->state:Lio/reactivex/internal/operators/flowable/FlowableCache$CacheState;

    invoke-virtual {v8}, Lio/reactivex/internal/operators/flowable/FlowableCache$CacheState;->size()I

    move-result v8

    .line 320
    .local v8, "s":I
    if-eqz v8, :cond_b

    .line 321
    iget-object v9, v0, Lio/reactivex/internal/operators/flowable/FlowableCache$ReplaySubscription;->currentBuffer:[Ljava/lang/Object;

    .line 324
    .local v9, "b":[Ljava/lang/Object;
    if-nez v9, :cond_2

    .line 325
    iget-object v10, v0, Lio/reactivex/internal/operators/flowable/FlowableCache$ReplaySubscription;->state:Lio/reactivex/internal/operators/flowable/FlowableCache$CacheState;

    invoke-virtual {v10}, Lio/reactivex/internal/operators/flowable/FlowableCache$CacheState;->head()[Ljava/lang/Object;

    move-result-object v9

    .line 326
    iput-object v9, v0, Lio/reactivex/internal/operators/flowable/FlowableCache$ReplaySubscription;->currentBuffer:[Ljava/lang/Object;

    .line 328
    :cond_2
    array-length v10, v9

    add-int/lit8 v10, v10, -0x1

    .line 329
    .local v10, "n":I
    iget v11, v0, Lio/reactivex/internal/operators/flowable/FlowableCache$ReplaySubscription;->index:I

    .line 330
    .local v11, "j":I
    iget v12, v0, Lio/reactivex/internal/operators/flowable/FlowableCache$ReplaySubscription;->currentIndexInBuffer:I

    .line 331
    .local v12, "k":I
    const/4 v13, 0x0

    .line 333
    .local v13, "valuesProduced":I
    :goto_1
    const-wide/16 v14, -0x1

    if-ge v11, v8, :cond_6

    cmp-long v16, v4, v6

    if-lez v16, :cond_6

    .line 334
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v16

    cmp-long v14, v16, v14

    if-nez v14, :cond_3

    .line 335
    return-void

    .line 337
    :cond_3
    if-ne v12, v10, :cond_4

    .line 338
    aget-object v14, v9, v10

    check-cast v14, [Ljava/lang/Object;

    move-object v9, v14

    check-cast v9, [Ljava/lang/Object;

    .line 339
    const/4 v12, 0x0

    .line 341
    :cond_4
    aget-object v14, v9, v12

    .line 343
    .local v14, "o":Ljava/lang/Object;
    invoke-static {v14, v2}, Lio/reactivex/internal/util/NotificationLite;->accept(Ljava/lang/Object;Lorg/reactivestreams/Subscriber;)Z

    move-result v15

    if-eqz v15, :cond_5

    .line 344
    return-void

    .line 347
    :cond_5
    add-int/lit8 v12, v12, 0x1

    .line 348
    add-int/lit8 v11, v11, 0x1

    .line 349
    const-wide/16 v15, 0x1

    sub-long/2addr v4, v15

    .line 350
    nop

    .end local v14    # "o":Ljava/lang/Object;
    add-int/lit8 v13, v13, 0x1

    .line 351
    goto :goto_1

    .line 353
    :cond_6
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v16

    cmp-long v14, v16, v14

    if-nez v14, :cond_7

    .line 354
    return-void

    .line 357
    :cond_7
    cmp-long v6, v4, v6

    if-nez v6, :cond_9

    .line 358
    aget-object v6, v9, v12

    .line 359
    .local v6, "o":Ljava/lang/Object;
    invoke-static {v6}, Lio/reactivex/internal/util/NotificationLite;->isComplete(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 360
    invoke-interface {v2}, Lorg/reactivestreams/Subscriber;->onComplete()V

    .line 361
    return-void

    .line 363
    :cond_8
    invoke-static {v6}, Lio/reactivex/internal/util/NotificationLite;->isError(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 364
    invoke-static {v6}, Lio/reactivex/internal/util/NotificationLite;->getError(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v7

    invoke-interface {v2, v7}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 365
    return-void

    .line 369
    .end local v6    # "o":Ljava/lang/Object;
    :cond_9
    if-eqz v13, :cond_a

    .line 370
    int-to-long v6, v13

    invoke-static {v3, v6, v7}, Lio/reactivex/internal/util/BackpressureHelper;->producedCancel(Ljava/util/concurrent/atomic/AtomicLong;J)J

    .line 373
    :cond_a
    iput v11, v0, Lio/reactivex/internal/operators/flowable/FlowableCache$ReplaySubscription;->index:I

    .line 374
    iput v12, v0, Lio/reactivex/internal/operators/flowable/FlowableCache$ReplaySubscription;->currentIndexInBuffer:I

    .line 375
    iput-object v9, v0, Lio/reactivex/internal/operators/flowable/FlowableCache$ReplaySubscription;->currentBuffer:[Ljava/lang/Object;

    .line 378
    .end local v9    # "b":[Ljava/lang/Object;
    .end local v10    # "n":I
    .end local v11    # "j":I
    .end local v12    # "k":I
    .end local v13    # "valuesProduced":I
    :cond_b
    neg-int v6, v1

    invoke-virtual {v0, v6}, Lio/reactivex/internal/operators/flowable/FlowableCache$ReplaySubscription;->addAndGet(I)I

    move-result v1

    .line 379
    if-nez v1, :cond_c

    .line 380
    nop

    .line 383
    .end local v4    # "r":J
    .end local v8    # "s":I
    return-void

    .line 382
    :cond_c
    goto/16 :goto_0
.end method

.method public request(J)V
    .locals 5
    .param p1, "n"    # J

    .line 275
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableCache$ReplaySubscription;, "Lio/reactivex/internal/operators/flowable/FlowableCache$ReplaySubscription<TT;>;"
    invoke-static {p1, p2}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->validate(J)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 277
    :goto_0
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableCache$ReplaySubscription;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    .line 278
    .local v0, "r":J
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 279
    return-void

    .line 281
    :cond_0
    invoke-static {v0, v1, p1, p2}, Lio/reactivex/internal/util/BackpressureHelper;->addCap(JJ)J

    move-result-wide v2

    .line 282
    .local v2, "u":J
    iget-object v4, p0, Lio/reactivex/internal/operators/flowable/FlowableCache$ReplaySubscription;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v4, v0, v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 283
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableCache$ReplaySubscription;->replay()V

    .line 284
    return-void

    .line 286
    .end local v0    # "r":J
    .end local v2    # "u":J
    :cond_1
    goto :goto_0

    .line 288
    :cond_2
    return-void
.end method
