.class final Lio/reactivex/internal/operators/parallel/ParallelRunOn$RunOnSubscriber;
.super Lio/reactivex/internal/operators/parallel/ParallelRunOn$BaseRunOnSubscriber;
.source "ParallelRunOn.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/parallel/ParallelRunOn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "RunOnSubscriber"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/operators/parallel/ParallelRunOn$BaseRunOnSubscriber<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0xeeb976b788f368aL


# instance fields
.field final actual:Lorg/reactivestreams/Subscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/reactivestreams/Subscriber<",
            "-TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lorg/reactivestreams/Subscriber;ILio/reactivex/internal/queue/SpscArrayQueue;Lio/reactivex/Scheduler$Worker;)V
    .locals 0
    .param p2, "prefetch"    # I
    .param p4, "worker"    # Lio/reactivex/Scheduler$Worker;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/Subscriber<",
            "-TT;>;I",
            "Lio/reactivex/internal/queue/SpscArrayQueue<",
            "TT;>;",
            "Lio/reactivex/Scheduler$Worker;",
            ")V"
        }
    .end annotation

    .line 184
    .local p0, "this":Lio/reactivex/internal/operators/parallel/ParallelRunOn$RunOnSubscriber;, "Lio/reactivex/internal/operators/parallel/ParallelRunOn$RunOnSubscriber<TT;>;"
    .local p1, "actual":Lorg/reactivestreams/Subscriber;, "Lorg/reactivestreams/Subscriber<-TT;>;"
    .local p3, "queue":Lio/reactivex/internal/queue/SpscArrayQueue;, "Lio/reactivex/internal/queue/SpscArrayQueue<TT;>;"
    invoke-direct {p0, p2, p3, p4}, Lio/reactivex/internal/operators/parallel/ParallelRunOn$BaseRunOnSubscriber;-><init>(ILio/reactivex/internal/queue/SpscArrayQueue;Lio/reactivex/Scheduler$Worker;)V

    .line 185
    iput-object p1, p0, Lio/reactivex/internal/operators/parallel/ParallelRunOn$RunOnSubscriber;->actual:Lorg/reactivestreams/Subscriber;

    .line 186
    return-void
.end method


# virtual methods
.method public onSubscribe(Lorg/reactivestreams/Subscription;)V
    .locals 2
    .param p1, "s"    # Lorg/reactivestreams/Subscription;

    .line 190
    .local p0, "this":Lio/reactivex/internal/operators/parallel/ParallelRunOn$RunOnSubscriber;, "Lio/reactivex/internal/operators/parallel/ParallelRunOn$RunOnSubscriber<TT;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/parallel/ParallelRunOn$RunOnSubscriber;->s:Lorg/reactivestreams/Subscription;

    invoke-static {v0, p1}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->validate(Lorg/reactivestreams/Subscription;Lorg/reactivestreams/Subscription;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 191
    iput-object p1, p0, Lio/reactivex/internal/operators/parallel/ParallelRunOn$RunOnSubscriber;->s:Lorg/reactivestreams/Subscription;

    .line 193
    iget-object v0, p0, Lio/reactivex/internal/operators/parallel/ParallelRunOn$RunOnSubscriber;->actual:Lorg/reactivestreams/Subscriber;

    invoke-interface {v0, p0}, Lorg/reactivestreams/Subscriber;->onSubscribe(Lorg/reactivestreams/Subscription;)V

    .line 195
    iget v0, p0, Lio/reactivex/internal/operators/parallel/ParallelRunOn$RunOnSubscriber;->prefetch:I

    int-to-long v0, v0

    invoke-interface {p1, v0, v1}, Lorg/reactivestreams/Subscription;->request(J)V

    .line 197
    :cond_0
    return-void
.end method

.method public run()V
    .locals 17

    .line 201
    .local p0, "this":Lio/reactivex/internal/operators/parallel/ParallelRunOn$RunOnSubscriber;, "Lio/reactivex/internal/operators/parallel/ParallelRunOn$RunOnSubscriber<TT;>;"
    move-object/from16 v0, p0

    const/4 v1, 0x1

    .line 202
    .local v1, "missed":I
    iget v2, v0, Lio/reactivex/internal/operators/parallel/ParallelRunOn$RunOnSubscriber;->consumed:I

    .line 203
    .local v2, "c":I
    iget-object v3, v0, Lio/reactivex/internal/operators/parallel/ParallelRunOn$RunOnSubscriber;->queue:Lio/reactivex/internal/queue/SpscArrayQueue;

    .line 204
    .local v3, "q":Lio/reactivex/internal/queue/SpscArrayQueue;, "Lio/reactivex/internal/queue/SpscArrayQueue<TT;>;"
    iget-object v4, v0, Lio/reactivex/internal/operators/parallel/ParallelRunOn$RunOnSubscriber;->actual:Lorg/reactivestreams/Subscriber;

    .line 205
    .local v4, "a":Lorg/reactivestreams/Subscriber;, "Lorg/reactivestreams/Subscriber<-TT;>;"
    iget v5, v0, Lio/reactivex/internal/operators/parallel/ParallelRunOn$RunOnSubscriber;->limit:I

    .line 209
    .local v5, "lim":I
    :goto_0
    iget-object v6, v0, Lio/reactivex/internal/operators/parallel/ParallelRunOn$RunOnSubscriber;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v6

    .line 210
    .local v6, "r":J
    const-wide/16 v8, 0x0

    .line 212
    .local v8, "e":J
    :goto_1
    cmp-long v10, v8, v6

    if-eqz v10, :cond_6

    .line 213
    iget-boolean v10, v0, Lio/reactivex/internal/operators/parallel/ParallelRunOn$RunOnSubscriber;->cancelled:Z

    if-eqz v10, :cond_0

    .line 214
    invoke-virtual {v3}, Lio/reactivex/internal/queue/SpscArrayQueue;->clear()V

    .line 215
    return-void

    .line 218
    :cond_0
    iget-boolean v10, v0, Lio/reactivex/internal/operators/parallel/ParallelRunOn$RunOnSubscriber;->done:Z

    .line 220
    .local v10, "d":Z
    if-eqz v10, :cond_1

    .line 221
    iget-object v11, v0, Lio/reactivex/internal/operators/parallel/ParallelRunOn$RunOnSubscriber;->error:Ljava/lang/Throwable;

    .line 222
    .local v11, "ex":Ljava/lang/Throwable;
    if-eqz v11, :cond_1

    .line 223
    invoke-virtual {v3}, Lio/reactivex/internal/queue/SpscArrayQueue;->clear()V

    .line 225
    invoke-interface {v4, v11}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 227
    iget-object v12, v0, Lio/reactivex/internal/operators/parallel/ParallelRunOn$RunOnSubscriber;->worker:Lio/reactivex/Scheduler$Worker;

    invoke-virtual {v12}, Lio/reactivex/Scheduler$Worker;->dispose()V

    .line 228
    return-void

    .line 232
    .end local v11    # "ex":Ljava/lang/Throwable;
    :cond_1
    invoke-virtual {v3}, Lio/reactivex/internal/queue/SpscArrayQueue;->poll()Ljava/lang/Object;

    move-result-object v11

    .line 234
    .local v11, "v":Ljava/lang/Object;, "TT;"
    if-nez v11, :cond_2

    const/4 v12, 0x1

    goto :goto_2

    :cond_2
    const/4 v12, 0x0

    .line 236
    .local v12, "empty":Z
    :goto_2
    if-eqz v10, :cond_3

    if-eqz v12, :cond_3

    .line 237
    invoke-interface {v4}, Lorg/reactivestreams/Subscriber;->onComplete()V

    .line 239
    iget-object v13, v0, Lio/reactivex/internal/operators/parallel/ParallelRunOn$RunOnSubscriber;->worker:Lio/reactivex/Scheduler$Worker;

    invoke-virtual {v13}, Lio/reactivex/Scheduler$Worker;->dispose()V

    .line 240
    return-void

    .line 243
    :cond_3
    if-eqz v12, :cond_4

    .line 244
    goto :goto_4

    .line 247
    :cond_4
    invoke-interface {v4, v11}, Lorg/reactivestreams/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 249
    const-wide/16 v13, 0x1

    add-long/2addr v8, v13

    .line 251
    add-int/lit8 v2, v2, 0x1

    move v13, v2

    .line 252
    .local v13, "p":I
    if-ne v13, v5, :cond_5

    .line 253
    const/4 v2, 0x0

    .line 254
    iget-object v14, v0, Lio/reactivex/internal/operators/parallel/ParallelRunOn$RunOnSubscriber;->s:Lorg/reactivestreams/Subscription;

    move-wide v15, v8

    .end local v8    # "e":J
    .local v15, "e":J
    int-to-long v8, v13

    invoke-interface {v14, v8, v9}, Lorg/reactivestreams/Subscription;->request(J)V

    goto :goto_3

    .line 252
    .end local v15    # "e":J
    .restart local v8    # "e":J
    :cond_5
    move-wide v15, v8

    .line 256
    .end local v8    # "e":J
    .end local v10    # "d":Z
    .end local v11    # "v":Ljava/lang/Object;, "TT;"
    .end local v12    # "empty":Z
    .end local v13    # "p":I
    .restart local v15    # "e":J
    :goto_3
    move-wide v8, v15

    goto :goto_1

    .line 258
    .end local v15    # "e":J
    .restart local v8    # "e":J
    :cond_6
    :goto_4
    cmp-long v10, v8, v6

    if-nez v10, :cond_9

    .line 259
    iget-boolean v10, v0, Lio/reactivex/internal/operators/parallel/ParallelRunOn$RunOnSubscriber;->cancelled:Z

    if-eqz v10, :cond_7

    .line 260
    invoke-virtual {v3}, Lio/reactivex/internal/queue/SpscArrayQueue;->clear()V

    .line 261
    return-void

    .line 264
    :cond_7
    iget-boolean v10, v0, Lio/reactivex/internal/operators/parallel/ParallelRunOn$RunOnSubscriber;->done:Z

    if-eqz v10, :cond_9

    .line 265
    iget-object v10, v0, Lio/reactivex/internal/operators/parallel/ParallelRunOn$RunOnSubscriber;->error:Ljava/lang/Throwable;

    .line 266
    .local v10, "ex":Ljava/lang/Throwable;
    if-eqz v10, :cond_8

    .line 267
    invoke-virtual {v3}, Lio/reactivex/internal/queue/SpscArrayQueue;->clear()V

    .line 269
    invoke-interface {v4, v10}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 271
    iget-object v11, v0, Lio/reactivex/internal/operators/parallel/ParallelRunOn$RunOnSubscriber;->worker:Lio/reactivex/Scheduler$Worker;

    invoke-virtual {v11}, Lio/reactivex/Scheduler$Worker;->dispose()V

    .line 272
    return-void

    .line 274
    :cond_8
    invoke-virtual {v3}, Lio/reactivex/internal/queue/SpscArrayQueue;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_9

    .line 275
    invoke-interface {v4}, Lorg/reactivestreams/Subscriber;->onComplete()V

    .line 277
    iget-object v11, v0, Lio/reactivex/internal/operators/parallel/ParallelRunOn$RunOnSubscriber;->worker:Lio/reactivex/Scheduler$Worker;

    invoke-virtual {v11}, Lio/reactivex/Scheduler$Worker;->dispose()V

    .line 278
    return-void

    .line 283
    .end local v10    # "ex":Ljava/lang/Throwable;
    :cond_9
    const-wide/16 v10, 0x0

    cmp-long v10, v8, v10

    if-eqz v10, :cond_a

    const-wide v10, 0x7fffffffffffffffL

    cmp-long v10, v6, v10

    if-eqz v10, :cond_a

    .line 284
    iget-object v10, v0, Lio/reactivex/internal/operators/parallel/ParallelRunOn$RunOnSubscriber;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    neg-long v11, v8

    invoke-virtual {v10, v11, v12}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    .line 287
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lio/reactivex/internal/operators/parallel/ParallelRunOn$RunOnSubscriber;->get()I

    move-result v10

    .line 288
    .local v10, "w":I
    if-ne v10, v1, :cond_b

    .line 289
    iput v2, v0, Lio/reactivex/internal/operators/parallel/ParallelRunOn$RunOnSubscriber;->consumed:I

    .line 290
    neg-int v11, v1

    invoke-virtual {v0, v11}, Lio/reactivex/internal/operators/parallel/ParallelRunOn$RunOnSubscriber;->addAndGet(I)I

    move-result v1

    .line 291
    if-nez v1, :cond_c

    .line 292
    nop

    .line 298
    .end local v6    # "r":J
    .end local v8    # "e":J
    .end local v10    # "w":I
    return-void

    .line 295
    .restart local v6    # "r":J
    .restart local v8    # "e":J
    .restart local v10    # "w":I
    :cond_b
    move v1, v10

    .line 297
    .end local v6    # "r":J
    .end local v8    # "e":J
    .end local v10    # "w":I
    :cond_c
    goto/16 :goto_0
.end method
