.class final Lio/reactivex/internal/operators/flowable/FlowableFromIterable$IteratorConditionalSubscription;
.super Lio/reactivex/internal/operators/flowable/FlowableFromIterable$BaseRangeSubscription;
.source "FlowableFromIterable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/FlowableFromIterable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "IteratorConditionalSubscription"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/operators/flowable/FlowableFromIterable$BaseRangeSubscription<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x53954cbe186540ffL


# instance fields
.field final actual:Lio/reactivex/internal/fuseable/ConditionalSubscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/fuseable/ConditionalSubscriber<",
            "-TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/reactivex/internal/fuseable/ConditionalSubscriber;Ljava/util/Iterator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/fuseable/ConditionalSubscriber<",
            "-TT;>;",
            "Ljava/util/Iterator<",
            "+TT;>;)V"
        }
    .end annotation

    .line 288
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableFromIterable$IteratorConditionalSubscription;, "Lio/reactivex/internal/operators/flowable/FlowableFromIterable$IteratorConditionalSubscription<TT;>;"
    .local p1, "actual":Lio/reactivex/internal/fuseable/ConditionalSubscriber;, "Lio/reactivex/internal/fuseable/ConditionalSubscriber<-TT;>;"
    .local p2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<+TT;>;"
    invoke-direct {p0, p2}, Lio/reactivex/internal/operators/flowable/FlowableFromIterable$BaseRangeSubscription;-><init>(Ljava/util/Iterator;)V

    .line 289
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableFromIterable$IteratorConditionalSubscription;->actual:Lio/reactivex/internal/fuseable/ConditionalSubscriber;

    .line 290
    return-void
.end method


# virtual methods
.method fastPath()V
    .locals 5

    .line 294
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableFromIterable$IteratorConditionalSubscription;, "Lio/reactivex/internal/operators/flowable/FlowableFromIterable$IteratorConditionalSubscription<TT;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableFromIterable$IteratorConditionalSubscription;->it:Ljava/util/Iterator;

    .line 295
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<+TT;>;"
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowableFromIterable$IteratorConditionalSubscription;->actual:Lio/reactivex/internal/fuseable/ConditionalSubscriber;

    .local v1, "a":Lio/reactivex/internal/fuseable/ConditionalSubscriber;, "Lio/reactivex/internal/fuseable/ConditionalSubscriber<-TT;>;"
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 297
    :goto_0
    iget-boolean v4, p0, Lio/reactivex/internal/operators/flowable/FlowableFromIterable$IteratorConditionalSubscription;->cancelled:Z

    if-eqz v4, :cond_0

    .line 298
    return-void

    .line 304
    :cond_0
    :try_start_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 309
    .local v3, "t":Ljava/lang/Object;, "TT;"
    nop

    .line 311
    iget-boolean v4, p0, Lio/reactivex/internal/operators/flowable/FlowableFromIterable$IteratorConditionalSubscription;->cancelled:Z

    if-eqz v4, :cond_1

    .line 312
    return-void

    .line 315
    :cond_1
    if-nez v3, :cond_2

    .line 316
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v4, "Iterator.next() returned a null value"

    invoke-direct {v2, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Lio/reactivex/internal/fuseable/ConditionalSubscriber;->onError(Ljava/lang/Throwable;)V

    .line 317
    return-void

    .line 319
    :cond_2
    invoke-interface {v1, v3}, Lio/reactivex/internal/fuseable/ConditionalSubscriber;->tryOnNext(Ljava/lang/Object;)Z

    .line 322
    iget-boolean v4, p0, Lio/reactivex/internal/operators/flowable/FlowableFromIterable$IteratorConditionalSubscription;->cancelled:Z

    if-eqz v4, :cond_3

    .line 323
    return-void

    .line 329
    :cond_3
    :try_start_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 334
    .local v2, "b":Z
    nop

    .line 336
    if-nez v2, :cond_5

    .line 337
    iget-boolean v4, p0, Lio/reactivex/internal/operators/flowable/FlowableFromIterable$IteratorConditionalSubscription;->cancelled:Z

    if-nez v4, :cond_4

    .line 338
    invoke-interface {v1}, Lio/reactivex/internal/fuseable/ConditionalSubscriber;->onComplete()V

    .line 340
    :cond_4
    return-void

    .line 342
    .end local v2    # "b":Z
    .end local v3    # "t":Ljava/lang/Object;, "TT;"
    :cond_5
    goto :goto_0

    .line 330
    .restart local v3    # "t":Ljava/lang/Object;, "TT;"
    :catchall_0
    move-exception v4

    .line 331
    .restart local v2    # "b":Z
    .local v4, "ex":Ljava/lang/Throwable;
    invoke-static {v4}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 332
    invoke-interface {v1, v4}, Lio/reactivex/internal/fuseable/ConditionalSubscriber;->onError(Ljava/lang/Throwable;)V

    .line 333
    return-void

    .line 305
    .end local v2    # "b":Z
    .end local v3    # "t":Ljava/lang/Object;, "TT;"
    .end local v4    # "ex":Ljava/lang/Throwable;
    :catchall_1
    move-exception v2

    .line 306
    .local v2, "ex":Ljava/lang/Throwable;
    .restart local v3    # "t":Ljava/lang/Object;, "TT;"
    invoke-static {v2}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 307
    invoke-interface {v1, v2}, Lio/reactivex/internal/fuseable/ConditionalSubscriber;->onError(Ljava/lang/Throwable;)V

    .line 308
    return-void
.end method

.method slowPath(J)V
    .locals 9
    .param p1, "r"    # J

    .line 347
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableFromIterable$IteratorConditionalSubscription;, "Lio/reactivex/internal/operators/flowable/FlowableFromIterable$IteratorConditionalSubscription<TT;>;"
    const-wide/16 v0, 0x0

    .line 348
    .local v0, "e":J
    iget-object v2, p0, Lio/reactivex/internal/operators/flowable/FlowableFromIterable$IteratorConditionalSubscription;->it:Ljava/util/Iterator;

    .line 349
    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<+TT;>;"
    iget-object v3, p0, Lio/reactivex/internal/operators/flowable/FlowableFromIterable$IteratorConditionalSubscription;->actual:Lio/reactivex/internal/fuseable/ConditionalSubscriber;

    .local v3, "a":Lio/reactivex/internal/fuseable/ConditionalSubscriber;, "Lio/reactivex/internal/fuseable/ConditionalSubscriber<-TT;>;"
    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 353
    :goto_0
    cmp-long v6, v0, p1

    if-eqz v6, :cond_7

    .line 355
    iget-boolean v6, p0, Lio/reactivex/internal/operators/flowable/FlowableFromIterable$IteratorConditionalSubscription;->cancelled:Z

    if-eqz v6, :cond_0

    .line 356
    return-void

    .line 362
    :cond_0
    :try_start_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 367
    .local v5, "t":Ljava/lang/Object;, "TT;"
    nop

    .line 369
    iget-boolean v6, p0, Lio/reactivex/internal/operators/flowable/FlowableFromIterable$IteratorConditionalSubscription;->cancelled:Z

    if-eqz v6, :cond_1

    .line 370
    return-void

    .line 374
    :cond_1
    if-nez v5, :cond_2

    .line 375
    new-instance v4, Ljava/lang/NullPointerException;

    const-string v6, "Iterator.next() returned a null value"

    invoke-direct {v4, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-interface {v3, v4}, Lio/reactivex/internal/fuseable/ConditionalSubscriber;->onError(Ljava/lang/Throwable;)V

    .line 376
    return-void

    .line 378
    :cond_2
    invoke-interface {v3, v5}, Lio/reactivex/internal/fuseable/ConditionalSubscriber;->tryOnNext(Ljava/lang/Object;)Z

    move-result v6

    .line 381
    .local v6, "b":Z
    iget-boolean v7, p0, Lio/reactivex/internal/operators/flowable/FlowableFromIterable$IteratorConditionalSubscription;->cancelled:Z

    if-eqz v7, :cond_3

    .line 382
    return-void

    .line 388
    :cond_3
    :try_start_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 393
    .local v4, "hasNext":Z
    nop

    .line 395
    if-nez v4, :cond_5

    .line 396
    iget-boolean v7, p0, Lio/reactivex/internal/operators/flowable/FlowableFromIterable$IteratorConditionalSubscription;->cancelled:Z

    if-nez v7, :cond_4

    .line 397
    invoke-interface {v3}, Lio/reactivex/internal/fuseable/ConditionalSubscriber;->onComplete()V

    .line 399
    :cond_4
    return-void

    .line 402
    :cond_5
    if-eqz v6, :cond_6

    .line 403
    const-wide/16 v7, 0x1

    add-long/2addr v0, v7

    .line 405
    .end local v4    # "hasNext":Z
    .end local v5    # "t":Ljava/lang/Object;, "TT;"
    .end local v6    # "b":Z
    :cond_6
    goto :goto_0

    .line 389
    .restart local v6    # "b":Z
    :catchall_0
    move-exception v7

    .line 390
    .restart local v4    # "hasNext":Z
    .local v7, "ex":Ljava/lang/Throwable;
    invoke-static {v7}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 391
    invoke-interface {v3, v7}, Lio/reactivex/internal/fuseable/ConditionalSubscriber;->onError(Ljava/lang/Throwable;)V

    .line 392
    return-void

    .line 363
    .end local v4    # "hasNext":Z
    .end local v6    # "b":Z
    .end local v7    # "ex":Ljava/lang/Throwable;
    :catchall_1
    move-exception v4

    .line 364
    .local v4, "ex":Ljava/lang/Throwable;
    .restart local v5    # "t":Ljava/lang/Object;, "TT;"
    invoke-static {v4}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 365
    invoke-interface {v3, v4}, Lio/reactivex/internal/fuseable/ConditionalSubscriber;->onError(Ljava/lang/Throwable;)V

    .line 366
    return-void

    .line 407
    .end local v4    # "ex":Ljava/lang/Throwable;
    .end local v5    # "t":Ljava/lang/Object;, "TT;"
    :cond_7
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableFromIterable$IteratorConditionalSubscription;->get()J

    move-result-wide p1

    .line 408
    cmp-long v6, v0, p1

    if-nez v6, :cond_9

    .line 409
    neg-long v6, v0

    invoke-virtual {p0, v6, v7}, Lio/reactivex/internal/operators/flowable/FlowableFromIterable$IteratorConditionalSubscription;->addAndGet(J)J

    move-result-wide p1

    .line 410
    const-wide/16 v6, 0x0

    cmp-long v6, p1, v6

    if-nez v6, :cond_8

    .line 411
    return-void

    .line 413
    :cond_8
    const-wide/16 v0, 0x0

    goto :goto_0

    .line 408
    :cond_9
    goto :goto_0
.end method
