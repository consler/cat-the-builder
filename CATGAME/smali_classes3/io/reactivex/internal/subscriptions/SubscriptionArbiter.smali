.class public Lio/reactivex/internal/subscriptions/SubscriptionArbiter;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "SubscriptionArbiter.java"

# interfaces
.implements Lorg/reactivestreams/Subscription;


# static fields
.field private static final serialVersionUID:J = -0x1e62bfbf4b5b12feL


# instance fields
.field actual:Lorg/reactivestreams/Subscription;

.field volatile cancelled:Z

.field final missedProduced:Ljava/util/concurrent/atomic/AtomicLong;

.field final missedRequested:Ljava/util/concurrent/atomic/AtomicLong;

.field final missedSubscription:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lorg/reactivestreams/Subscription;",
            ">;"
        }
    .end annotation
.end field

.field requested:J

.field protected unbounded:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 62
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 63
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lio/reactivex/internal/subscriptions/SubscriptionArbiter;->missedSubscription:Ljava/util/concurrent/atomic/AtomicReference;

    .line 64
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lio/reactivex/internal/subscriptions/SubscriptionArbiter;->missedRequested:Ljava/util/concurrent/atomic/AtomicLong;

    .line 65
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lio/reactivex/internal/subscriptions/SubscriptionArbiter;->missedProduced:Ljava/util/concurrent/atomic/AtomicLong;

    .line 66
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .line 176
    iget-boolean v0, p0, Lio/reactivex/internal/subscriptions/SubscriptionArbiter;->cancelled:Z

    if-nez v0, :cond_0

    .line 177
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/internal/subscriptions/SubscriptionArbiter;->cancelled:Z

    .line 179
    invoke-virtual {p0}, Lio/reactivex/internal/subscriptions/SubscriptionArbiter;->drain()V

    .line 181
    :cond_0
    return-void
.end method

.method final drain()V
    .locals 1

    .line 184
    invoke-virtual {p0}, Lio/reactivex/internal/subscriptions/SubscriptionArbiter;->getAndIncrement()I

    move-result v0

    if-eqz v0, :cond_0

    .line 185
    return-void

    .line 187
    :cond_0
    invoke-virtual {p0}, Lio/reactivex/internal/subscriptions/SubscriptionArbiter;->drainLoop()V

    .line 188
    return-void
.end method

.method final drainLoop()V
    .locals 20

    .line 191
    move-object/from16 v0, p0

    const/4 v1, 0x1

    .line 193
    .local v1, "missed":I
    const-wide/16 v2, 0x0

    .line 194
    .local v2, "requestAmount":J
    const/4 v4, 0x0

    .line 198
    .local v4, "requestTarget":Lorg/reactivestreams/Subscription;
    :goto_0
    iget-object v5, v0, Lio/reactivex/internal/subscriptions/SubscriptionArbiter;->missedSubscription:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/reactivestreams/Subscription;

    .line 200
    .local v5, "ms":Lorg/reactivestreams/Subscription;
    const/4 v6, 0x0

    if-eqz v5, :cond_0

    .line 201
    iget-object v7, v0, Lio/reactivex/internal/subscriptions/SubscriptionArbiter;->missedSubscription:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v7, v6}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v5, v7

    check-cast v5, Lorg/reactivestreams/Subscription;

    .line 204
    :cond_0
    iget-object v7, v0, Lio/reactivex/internal/subscriptions/SubscriptionArbiter;->missedRequested:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v7

    .line 205
    .local v7, "mr":J
    const-wide/16 v9, 0x0

    cmp-long v11, v7, v9

    if-eqz v11, :cond_1

    .line 206
    iget-object v11, v0, Lio/reactivex/internal/subscriptions/SubscriptionArbiter;->missedRequested:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v11, v9, v10}, Ljava/util/concurrent/atomic/AtomicLong;->getAndSet(J)J

    move-result-wide v7

    .line 209
    :cond_1
    iget-object v11, v0, Lio/reactivex/internal/subscriptions/SubscriptionArbiter;->missedProduced:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v11}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v11

    .line 210
    .local v11, "mp":J
    cmp-long v13, v11, v9

    if-eqz v13, :cond_2

    .line 211
    iget-object v13, v0, Lio/reactivex/internal/subscriptions/SubscriptionArbiter;->missedProduced:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v13, v9, v10}, Ljava/util/concurrent/atomic/AtomicLong;->getAndSet(J)J

    move-result-wide v11

    .line 214
    :cond_2
    iget-object v13, v0, Lio/reactivex/internal/subscriptions/SubscriptionArbiter;->actual:Lorg/reactivestreams/Subscription;

    .line 216
    .local v13, "a":Lorg/reactivestreams/Subscription;
    iget-boolean v14, v0, Lio/reactivex/internal/subscriptions/SubscriptionArbiter;->cancelled:Z

    if-eqz v14, :cond_4

    .line 217
    if-eqz v13, :cond_3

    .line 218
    invoke-interface {v13}, Lorg/reactivestreams/Subscription;->cancel()V

    .line 219
    iput-object v6, v0, Lio/reactivex/internal/subscriptions/SubscriptionArbiter;->actual:Lorg/reactivestreams/Subscription;

    .line 221
    :cond_3
    if-eqz v5, :cond_a

    .line 222
    invoke-interface {v5}, Lorg/reactivestreams/Subscription;->cancel()V

    goto :goto_2

    .line 225
    :cond_4
    iget-wide v14, v0, Lio/reactivex/internal/subscriptions/SubscriptionArbiter;->requested:J

    .line 226
    .local v14, "r":J
    const-wide v16, 0x7fffffffffffffffL

    cmp-long v6, v14, v16

    if-eqz v6, :cond_7

    .line 227
    invoke-static {v14, v15, v7, v8}, Lio/reactivex/internal/util/BackpressureHelper;->addCap(JJ)J

    move-result-wide v18

    .line 229
    .local v18, "u":J
    cmp-long v6, v18, v16

    if-eqz v6, :cond_6

    .line 230
    sub-long v16, v18, v11

    .line 231
    .local v16, "v":J
    cmp-long v6, v16, v9

    if-gez v6, :cond_5

    .line 232
    invoke-static/range {v16 .. v17}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->reportMoreProduced(J)V

    .line 233
    const-wide/16 v16, 0x0

    .line 235
    :cond_5
    move-wide/from16 v14, v16

    .line 236
    .end local v16    # "v":J
    goto :goto_1

    .line 237
    :cond_6
    move-wide/from16 v14, v18

    .line 239
    :goto_1
    iput-wide v14, v0, Lio/reactivex/internal/subscriptions/SubscriptionArbiter;->requested:J

    .line 242
    .end local v18    # "u":J
    :cond_7
    if-eqz v5, :cond_9

    .line 243
    if-eqz v13, :cond_8

    .line 244
    invoke-interface {v13}, Lorg/reactivestreams/Subscription;->cancel()V

    .line 246
    :cond_8
    iput-object v5, v0, Lio/reactivex/internal/subscriptions/SubscriptionArbiter;->actual:Lorg/reactivestreams/Subscription;

    .line 247
    cmp-long v6, v14, v9

    if-eqz v6, :cond_a

    .line 248
    invoke-static {v2, v3, v14, v15}, Lio/reactivex/internal/util/BackpressureHelper;->addCap(JJ)J

    move-result-wide v2

    .line 249
    move-object v4, v5

    goto :goto_2

    .line 251
    :cond_9
    if-eqz v13, :cond_a

    cmp-long v6, v7, v9

    if-eqz v6, :cond_a

    .line 252
    invoke-static {v2, v3, v7, v8}, Lio/reactivex/internal/util/BackpressureHelper;->addCap(JJ)J

    move-result-wide v2

    .line 253
    move-object v4, v13

    .line 257
    .end local v14    # "r":J
    :cond_a
    :goto_2
    neg-int v6, v1

    invoke-virtual {v0, v6}, Lio/reactivex/internal/subscriptions/SubscriptionArbiter;->addAndGet(I)I

    move-result v1

    .line 258
    if-nez v1, :cond_c

    .line 259
    cmp-long v6, v2, v9

    if-eqz v6, :cond_b

    .line 260
    invoke-interface {v4, v2, v3}, Lorg/reactivestreams/Subscription;->request(J)V

    .line 262
    :cond_b
    return-void

    .line 264
    .end local v5    # "ms":Lorg/reactivestreams/Subscription;
    .end local v7    # "mr":J
    .end local v11    # "mp":J
    .end local v13    # "a":Lorg/reactivestreams/Subscription;
    :cond_c
    goto/16 :goto_0
.end method

.method public final isCancelled()Z
    .locals 1

    .line 280
    iget-boolean v0, p0, Lio/reactivex/internal/subscriptions/SubscriptionArbiter;->cancelled:Z

    return v0
.end method

.method public final isUnbounded()Z
    .locals 1

    .line 272
    iget-boolean v0, p0, Lio/reactivex/internal/subscriptions/SubscriptionArbiter;->unbounded:Z

    return v0
.end method

.method public final produced(J)V
    .locals 6
    .param p1, "n"    # J

    .line 145
    iget-boolean v0, p0, Lio/reactivex/internal/subscriptions/SubscriptionArbiter;->unbounded:Z

    if-eqz v0, :cond_0

    .line 146
    return-void

    .line 148
    :cond_0
    invoke-virtual {p0}, Lio/reactivex/internal/subscriptions/SubscriptionArbiter;->get()I

    move-result v0

    if-nez v0, :cond_4

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lio/reactivex/internal/subscriptions/SubscriptionArbiter;->compareAndSet(II)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 149
    iget-wide v0, p0, Lio/reactivex/internal/subscriptions/SubscriptionArbiter;->requested:J

    .line 151
    .local v0, "r":J
    const-wide v2, 0x7fffffffffffffffL

    cmp-long v2, v0, v2

    if-eqz v2, :cond_2

    .line 152
    sub-long v2, v0, p1

    .line 153
    .local v2, "u":J
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-gez v4, :cond_1

    .line 154
    invoke-static {v2, v3}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->reportMoreProduced(J)V

    .line 155
    const-wide/16 v2, 0x0

    .line 157
    :cond_1
    iput-wide v2, p0, Lio/reactivex/internal/subscriptions/SubscriptionArbiter;->requested:J

    .line 160
    .end local v2    # "u":J
    :cond_2
    invoke-virtual {p0}, Lio/reactivex/internal/subscriptions/SubscriptionArbiter;->decrementAndGet()I

    move-result v2

    if-nez v2, :cond_3

    .line 161
    return-void

    .line 164
    :cond_3
    invoke-virtual {p0}, Lio/reactivex/internal/subscriptions/SubscriptionArbiter;->drainLoop()V

    .line 166
    return-void

    .line 169
    .end local v0    # "r":J
    :cond_4
    iget-object v0, p0, Lio/reactivex/internal/subscriptions/SubscriptionArbiter;->missedProduced:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {v0, p1, p2}, Lio/reactivex/internal/util/BackpressureHelper;->add(Ljava/util/concurrent/atomic/AtomicLong;J)J

    .line 171
    invoke-virtual {p0}, Lio/reactivex/internal/subscriptions/SubscriptionArbiter;->drain()V

    .line 172
    return-void
.end method

.method public final request(J)V
    .locals 6
    .param p1, "n"    # J

    .line 111
    invoke-static {p1, p2}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->validate(J)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 112
    iget-boolean v0, p0, Lio/reactivex/internal/subscriptions/SubscriptionArbiter;->unbounded:Z

    if-eqz v0, :cond_0

    .line 113
    return-void

    .line 115
    :cond_0
    invoke-virtual {p0}, Lio/reactivex/internal/subscriptions/SubscriptionArbiter;->get()I

    move-result v0

    if-nez v0, :cond_4

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lio/reactivex/internal/subscriptions/SubscriptionArbiter;->compareAndSet(II)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 116
    iget-wide v2, p0, Lio/reactivex/internal/subscriptions/SubscriptionArbiter;->requested:J

    .line 118
    .local v2, "r":J
    const-wide v4, 0x7fffffffffffffffL

    cmp-long v0, v2, v4

    if-eqz v0, :cond_1

    .line 119
    invoke-static {v2, v3, p1, p2}, Lio/reactivex/internal/util/BackpressureHelper;->addCap(JJ)J

    move-result-wide v2

    .line 120
    iput-wide v2, p0, Lio/reactivex/internal/subscriptions/SubscriptionArbiter;->requested:J

    .line 121
    cmp-long v0, v2, v4

    if-nez v0, :cond_1

    .line 122
    iput-boolean v1, p0, Lio/reactivex/internal/subscriptions/SubscriptionArbiter;->unbounded:Z

    .line 125
    :cond_1
    iget-object v0, p0, Lio/reactivex/internal/subscriptions/SubscriptionArbiter;->actual:Lorg/reactivestreams/Subscription;

    .line 127
    .local v0, "a":Lorg/reactivestreams/Subscription;
    invoke-virtual {p0}, Lio/reactivex/internal/subscriptions/SubscriptionArbiter;->decrementAndGet()I

    move-result v1

    if-eqz v1, :cond_2

    .line 128
    invoke-virtual {p0}, Lio/reactivex/internal/subscriptions/SubscriptionArbiter;->drainLoop()V

    .line 131
    :cond_2
    if-eqz v0, :cond_3

    .line 132
    invoke-interface {v0, p1, p2}, Lorg/reactivestreams/Subscription;->request(J)V

    .line 135
    :cond_3
    return-void

    .line 138
    .end local v0    # "a":Lorg/reactivestreams/Subscription;
    .end local v2    # "r":J
    :cond_4
    iget-object v0, p0, Lio/reactivex/internal/subscriptions/SubscriptionArbiter;->missedRequested:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {v0, p1, p2}, Lio/reactivex/internal/util/BackpressureHelper;->add(Ljava/util/concurrent/atomic/AtomicLong;J)J

    .line 140
    invoke-virtual {p0}, Lio/reactivex/internal/subscriptions/SubscriptionArbiter;->drain()V

    .line 142
    :cond_5
    return-void
.end method

.method public final setSubscription(Lorg/reactivestreams/Subscription;)V
    .locals 5
    .param p1, "s"    # Lorg/reactivestreams/Subscription;

    .line 73
    iget-boolean v0, p0, Lio/reactivex/internal/subscriptions/SubscriptionArbiter;->cancelled:Z

    if-eqz v0, :cond_0

    .line 74
    invoke-interface {p1}, Lorg/reactivestreams/Subscription;->cancel()V

    .line 75
    return-void

    .line 78
    :cond_0
    const-string v0, "s is null"

    invoke-static {p1, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 80
    invoke-virtual {p0}, Lio/reactivex/internal/subscriptions/SubscriptionArbiter;->get()I

    move-result v0

    if-nez v0, :cond_4

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lio/reactivex/internal/subscriptions/SubscriptionArbiter;->compareAndSet(II)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 81
    iget-object v0, p0, Lio/reactivex/internal/subscriptions/SubscriptionArbiter;->actual:Lorg/reactivestreams/Subscription;

    .line 83
    .local v0, "a":Lorg/reactivestreams/Subscription;
    if-eqz v0, :cond_1

    .line 84
    invoke-interface {v0}, Lorg/reactivestreams/Subscription;->cancel()V

    .line 87
    :cond_1
    iput-object p1, p0, Lio/reactivex/internal/subscriptions/SubscriptionArbiter;->actual:Lorg/reactivestreams/Subscription;

    .line 89
    iget-wide v1, p0, Lio/reactivex/internal/subscriptions/SubscriptionArbiter;->requested:J

    .line 91
    .local v1, "r":J
    invoke-virtual {p0}, Lio/reactivex/internal/subscriptions/SubscriptionArbiter;->decrementAndGet()I

    move-result v3

    if-eqz v3, :cond_2

    .line 92
    invoke-virtual {p0}, Lio/reactivex/internal/subscriptions/SubscriptionArbiter;->drainLoop()V

    .line 95
    :cond_2
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-eqz v3, :cond_3

    .line 96
    invoke-interface {p1, v1, v2}, Lorg/reactivestreams/Subscription;->request(J)V

    .line 99
    :cond_3
    return-void

    .line 102
    .end local v0    # "a":Lorg/reactivestreams/Subscription;
    .end local v1    # "r":J
    :cond_4
    iget-object v0, p0, Lio/reactivex/internal/subscriptions/SubscriptionArbiter;->missedSubscription:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/reactivestreams/Subscription;

    .line 103
    .restart local v0    # "a":Lorg/reactivestreams/Subscription;
    if-eqz v0, :cond_5

    .line 104
    invoke-interface {v0}, Lorg/reactivestreams/Subscription;->cancel()V

    .line 106
    :cond_5
    invoke-virtual {p0}, Lio/reactivex/internal/subscriptions/SubscriptionArbiter;->drain()V

    .line 107
    return-void
.end method
