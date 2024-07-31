.class public final Lio/reactivex/internal/subscriptions/FullArbiter;
.super Lio/reactivex/internal/subscriptions/FullArbiterPad2;
.source "FullArbiter.java"

# interfaces
.implements Lorg/reactivestreams/Subscription;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/subscriptions/FullArbiter$InitialSubscription;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/subscriptions/FullArbiterPad2;",
        "Lorg/reactivestreams/Subscription;"
    }
.end annotation


# static fields
.field static final INITIAL:Lorg/reactivestreams/Subscription;

.field static final REQUEST:Ljava/lang/Object;


# instance fields
.field final actual:Lorg/reactivestreams/Subscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/reactivestreams/Subscriber<",
            "-TT;>;"
        }
    .end annotation
.end field

.field volatile cancelled:Z

.field final queue:Lio/reactivex/internal/queue/SpscLinkedArrayQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/queue/SpscLinkedArrayQueue<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field requested:J

.field resource:Lio/reactivex/disposables/Disposable;

.field volatile s:Lorg/reactivestreams/Subscription;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 39
    new-instance v0, Lio/reactivex/internal/subscriptions/FullArbiter$InitialSubscription;

    invoke-direct {v0}, Lio/reactivex/internal/subscriptions/FullArbiter$InitialSubscription;-><init>()V

    sput-object v0, Lio/reactivex/internal/subscriptions/FullArbiter;->INITIAL:Lorg/reactivestreams/Subscription;

    .line 46
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lio/reactivex/internal/subscriptions/FullArbiter;->REQUEST:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lorg/reactivestreams/Subscriber;Lio/reactivex/disposables/Disposable;I)V
    .locals 1
    .param p2, "resource"    # Lio/reactivex/disposables/Disposable;
    .param p3, "capacity"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/Subscriber<",
            "-TT;>;",
            "Lio/reactivex/disposables/Disposable;",
            "I)V"
        }
    .end annotation

    .line 48
    .local p0, "this":Lio/reactivex/internal/subscriptions/FullArbiter;, "Lio/reactivex/internal/subscriptions/FullArbiter<TT;>;"
    .local p1, "actual":Lorg/reactivestreams/Subscriber;, "Lorg/reactivestreams/Subscriber<-TT;>;"
    invoke-direct {p0}, Lio/reactivex/internal/subscriptions/FullArbiterPad2;-><init>()V

    .line 49
    iput-object p1, p0, Lio/reactivex/internal/subscriptions/FullArbiter;->actual:Lorg/reactivestreams/Subscriber;

    .line 50
    iput-object p2, p0, Lio/reactivex/internal/subscriptions/FullArbiter;->resource:Lio/reactivex/disposables/Disposable;

    .line 51
    new-instance v0, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;

    invoke-direct {v0, p3}, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;-><init>(I)V

    iput-object v0, p0, Lio/reactivex/internal/subscriptions/FullArbiter;->queue:Lio/reactivex/internal/queue/SpscLinkedArrayQueue;

    .line 52
    sget-object v0, Lio/reactivex/internal/subscriptions/FullArbiter;->INITIAL:Lorg/reactivestreams/Subscription;

    iput-object v0, p0, Lio/reactivex/internal/subscriptions/FullArbiter;->s:Lorg/reactivestreams/Subscription;

    .line 53
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .line 66
    .local p0, "this":Lio/reactivex/internal/subscriptions/FullArbiter;, "Lio/reactivex/internal/subscriptions/FullArbiter<TT;>;"
    iget-boolean v0, p0, Lio/reactivex/internal/subscriptions/FullArbiter;->cancelled:Z

    if-nez v0, :cond_0

    .line 67
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/internal/subscriptions/FullArbiter;->cancelled:Z

    .line 68
    invoke-virtual {p0}, Lio/reactivex/internal/subscriptions/FullArbiter;->dispose()V

    .line 70
    :cond_0
    return-void
.end method

.method dispose()V
    .locals 2

    .line 73
    .local p0, "this":Lio/reactivex/internal/subscriptions/FullArbiter;, "Lio/reactivex/internal/subscriptions/FullArbiter<TT;>;"
    iget-object v0, p0, Lio/reactivex/internal/subscriptions/FullArbiter;->resource:Lio/reactivex/disposables/Disposable;

    .line 74
    .local v0, "d":Lio/reactivex/disposables/Disposable;
    const/4 v1, 0x0

    iput-object v1, p0, Lio/reactivex/internal/subscriptions/FullArbiter;->resource:Lio/reactivex/disposables/Disposable;

    .line 75
    if-eqz v0, :cond_0

    .line 76
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 78
    :cond_0
    return-void
.end method

.method drain()V
    .locals 10

    .line 119
    .local p0, "this":Lio/reactivex/internal/subscriptions/FullArbiter;, "Lio/reactivex/internal/subscriptions/FullArbiter<TT;>;"
    iget-object v0, p0, Lio/reactivex/internal/subscriptions/FullArbiter;->wip:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-eqz v0, :cond_0

    .line 120
    return-void

    .line 123
    :cond_0
    const/4 v0, 0x1

    .line 125
    .local v0, "missed":I
    iget-object v1, p0, Lio/reactivex/internal/subscriptions/FullArbiter;->queue:Lio/reactivex/internal/queue/SpscLinkedArrayQueue;

    .line 126
    .local v1, "q":Lio/reactivex/internal/queue/SpscLinkedArrayQueue;, "Lio/reactivex/internal/queue/SpscLinkedArrayQueue<Ljava/lang/Object;>;"
    iget-object v2, p0, Lio/reactivex/internal/subscriptions/FullArbiter;->actual:Lorg/reactivestreams/Subscriber;

    .line 132
    .local v2, "a":Lorg/reactivestreams/Subscriber;, "Lorg/reactivestreams/Subscriber<-TT;>;"
    :cond_1
    :goto_0
    invoke-virtual {v1}, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;->poll()Ljava/lang/Object;

    move-result-object v3

    .line 133
    .local v3, "o":Ljava/lang/Object;
    if-nez v3, :cond_2

    .line 134
    nop

    .line 186
    .end local v3    # "o":Ljava/lang/Object;
    iget-object v3, p0, Lio/reactivex/internal/subscriptions/FullArbiter;->wip:Ljava/util/concurrent/atomic/AtomicInteger;

    neg-int v4, v0

    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v0

    .line 187
    if-nez v0, :cond_1

    .line 188
    nop

    .line 191
    return-void

    .line 136
    .restart local v3    # "o":Ljava/lang/Object;
    :cond_2
    invoke-virtual {v1}, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;->poll()Ljava/lang/Object;

    move-result-object v4

    .line 138
    .local v4, "v":Ljava/lang/Object;
    sget-object v5, Lio/reactivex/internal/subscriptions/FullArbiter;->REQUEST:Ljava/lang/Object;

    const-wide/16 v6, 0x0

    if-ne v3, v5, :cond_4

    .line 139
    iget-object v5, p0, Lio/reactivex/internal/subscriptions/FullArbiter;->missedRequested:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v5, v6, v7}, Ljava/util/concurrent/atomic/AtomicLong;->getAndSet(J)J

    move-result-wide v8

    .line 140
    .local v8, "mr":J
    cmp-long v5, v8, v6

    if-eqz v5, :cond_3

    .line 141
    iget-wide v5, p0, Lio/reactivex/internal/subscriptions/FullArbiter;->requested:J

    invoke-static {v5, v6, v8, v9}, Lio/reactivex/internal/util/BackpressureHelper;->addCap(JJ)J

    move-result-wide v5

    iput-wide v5, p0, Lio/reactivex/internal/subscriptions/FullArbiter;->requested:J

    .line 142
    iget-object v5, p0, Lio/reactivex/internal/subscriptions/FullArbiter;->s:Lorg/reactivestreams/Subscription;

    invoke-interface {v5, v8, v9}, Lorg/reactivestreams/Subscription;->request(J)V

    .line 144
    .end local v8    # "mr":J
    :cond_3
    goto/16 :goto_3

    .line 145
    :cond_4
    iget-object v5, p0, Lio/reactivex/internal/subscriptions/FullArbiter;->s:Lorg/reactivestreams/Subscription;

    if-ne v3, v5, :cond_b

    .line 146
    invoke-static {v4}, Lio/reactivex/internal/util/NotificationLite;->isSubscription(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 147
    invoke-static {v4}, Lio/reactivex/internal/util/NotificationLite;->getSubscription(Ljava/lang/Object;)Lorg/reactivestreams/Subscription;

    move-result-object v5

    .line 148
    .local v5, "next":Lorg/reactivestreams/Subscription;
    iget-boolean v8, p0, Lio/reactivex/internal/subscriptions/FullArbiter;->cancelled:Z

    if-nez v8, :cond_6

    .line 149
    iput-object v5, p0, Lio/reactivex/internal/subscriptions/FullArbiter;->s:Lorg/reactivestreams/Subscription;

    .line 150
    iget-wide v8, p0, Lio/reactivex/internal/subscriptions/FullArbiter;->requested:J

    .line 151
    .local v8, "r":J
    cmp-long v6, v8, v6

    if-eqz v6, :cond_5

    .line 152
    invoke-interface {v5, v8, v9}, Lorg/reactivestreams/Subscription;->request(J)V

    .line 154
    .end local v8    # "r":J
    :cond_5
    goto :goto_1

    .line 155
    :cond_6
    invoke-interface {v5}, Lorg/reactivestreams/Subscription;->cancel()V

    .line 157
    .end local v5    # "next":Lorg/reactivestreams/Subscription;
    :goto_1
    goto :goto_3

    :cond_7
    invoke-static {v4}, Lio/reactivex/internal/util/NotificationLite;->isError(Ljava/lang/Object;)Z

    move-result v5

    const/4 v8, 0x1

    if-eqz v5, :cond_9

    .line 158
    invoke-virtual {v1}, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;->clear()V

    .line 159
    invoke-virtual {p0}, Lio/reactivex/internal/subscriptions/FullArbiter;->dispose()V

    .line 161
    invoke-static {v4}, Lio/reactivex/internal/util/NotificationLite;->getError(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v5

    .line 162
    .local v5, "ex":Ljava/lang/Throwable;
    iget-boolean v6, p0, Lio/reactivex/internal/subscriptions/FullArbiter;->cancelled:Z

    if-nez v6, :cond_8

    .line 163
    iput-boolean v8, p0, Lio/reactivex/internal/subscriptions/FullArbiter;->cancelled:Z

    .line 164
    invoke-interface {v2, v5}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_2

    .line 166
    :cond_8
    invoke-static {v5}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    .line 168
    .end local v5    # "ex":Ljava/lang/Throwable;
    :goto_2
    goto :goto_3

    :cond_9
    invoke-static {v4}, Lio/reactivex/internal/util/NotificationLite;->isComplete(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 169
    invoke-virtual {v1}, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;->clear()V

    .line 170
    invoke-virtual {p0}, Lio/reactivex/internal/subscriptions/FullArbiter;->dispose()V

    .line 172
    iget-boolean v5, p0, Lio/reactivex/internal/subscriptions/FullArbiter;->cancelled:Z

    if-nez v5, :cond_b

    .line 173
    iput-boolean v8, p0, Lio/reactivex/internal/subscriptions/FullArbiter;->cancelled:Z

    .line 174
    invoke-interface {v2}, Lorg/reactivestreams/Subscriber;->onComplete()V

    goto :goto_3

    .line 177
    :cond_a
    iget-wide v8, p0, Lio/reactivex/internal/subscriptions/FullArbiter;->requested:J

    .line 178
    .restart local v8    # "r":J
    cmp-long v5, v8, v6

    if-eqz v5, :cond_b

    .line 179
    invoke-static {v4}, Lio/reactivex/internal/util/NotificationLite;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v2, v5}, Lorg/reactivestreams/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 180
    const-wide/16 v5, 0x1

    sub-long v5, v8, v5

    iput-wide v5, p0, Lio/reactivex/internal/subscriptions/FullArbiter;->requested:J

    .line 184
    .end local v3    # "o":Ljava/lang/Object;
    .end local v4    # "v":Ljava/lang/Object;
    .end local v8    # "r":J
    :cond_b
    :goto_3
    goto/16 :goto_0
.end method

.method public onComplete(Lorg/reactivestreams/Subscription;)V
    .locals 2
    .param p1, "s"    # Lorg/reactivestreams/Subscription;

    .line 114
    .local p0, "this":Lio/reactivex/internal/subscriptions/FullArbiter;, "Lio/reactivex/internal/subscriptions/FullArbiter<TT;>;"
    iget-object v0, p0, Lio/reactivex/internal/subscriptions/FullArbiter;->queue:Lio/reactivex/internal/queue/SpscLinkedArrayQueue;

    invoke-static {}, Lio/reactivex/internal/util/NotificationLite;->complete()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;->offer(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 115
    invoke-virtual {p0}, Lio/reactivex/internal/subscriptions/FullArbiter;->drain()V

    .line 116
    return-void
.end method

.method public onError(Ljava/lang/Throwable;Lorg/reactivestreams/Subscription;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/Throwable;
    .param p2, "s"    # Lorg/reactivestreams/Subscription;

    .line 105
    .local p0, "this":Lio/reactivex/internal/subscriptions/FullArbiter;, "Lio/reactivex/internal/subscriptions/FullArbiter<TT;>;"
    iget-boolean v0, p0, Lio/reactivex/internal/subscriptions/FullArbiter;->cancelled:Z

    if-eqz v0, :cond_0

    .line 106
    invoke-static {p1}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    .line 107
    return-void

    .line 109
    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/subscriptions/FullArbiter;->queue:Lio/reactivex/internal/queue/SpscLinkedArrayQueue;

    invoke-static {p1}, Lio/reactivex/internal/util/NotificationLite;->error(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;->offer(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 110
    invoke-virtual {p0}, Lio/reactivex/internal/subscriptions/FullArbiter;->drain()V

    .line 111
    return-void
.end method

.method public onNext(Ljava/lang/Object;Lorg/reactivestreams/Subscription;)Z
    .locals 2
    .param p2, "s"    # Lorg/reactivestreams/Subscription;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lorg/reactivestreams/Subscription;",
            ")Z"
        }
    .end annotation

    .line 95
    .local p0, "this":Lio/reactivex/internal/subscriptions/FullArbiter;, "Lio/reactivex/internal/subscriptions/FullArbiter<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    iget-boolean v0, p0, Lio/reactivex/internal/subscriptions/FullArbiter;->cancelled:Z

    if-eqz v0, :cond_0

    .line 96
    const/4 v0, 0x0

    return v0

    .line 99
    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/subscriptions/FullArbiter;->queue:Lio/reactivex/internal/queue/SpscLinkedArrayQueue;

    invoke-static {p1}, Lio/reactivex/internal/util/NotificationLite;->next(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;->offer(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 100
    invoke-virtual {p0}, Lio/reactivex/internal/subscriptions/FullArbiter;->drain()V

    .line 101
    const/4 v0, 0x1

    return v0
.end method

.method public request(J)V
    .locals 2
    .param p1, "n"    # J

    .line 57
    .local p0, "this":Lio/reactivex/internal/subscriptions/FullArbiter;, "Lio/reactivex/internal/subscriptions/FullArbiter<TT;>;"
    invoke-static {p1, p2}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->validate(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lio/reactivex/internal/subscriptions/FullArbiter;->missedRequested:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {v0, p1, p2}, Lio/reactivex/internal/util/BackpressureHelper;->add(Ljava/util/concurrent/atomic/AtomicLong;J)J

    .line 59
    iget-object v0, p0, Lio/reactivex/internal/subscriptions/FullArbiter;->queue:Lio/reactivex/internal/queue/SpscLinkedArrayQueue;

    sget-object v1, Lio/reactivex/internal/subscriptions/FullArbiter;->REQUEST:Ljava/lang/Object;

    invoke-virtual {v0, v1, v1}, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;->offer(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 60
    invoke-virtual {p0}, Lio/reactivex/internal/subscriptions/FullArbiter;->drain()V

    .line 62
    :cond_0
    return-void
.end method

.method public setSubscription(Lorg/reactivestreams/Subscription;)Z
    .locals 3
    .param p1, "s"    # Lorg/reactivestreams/Subscription;

    .line 81
    .local p0, "this":Lio/reactivex/internal/subscriptions/FullArbiter;, "Lio/reactivex/internal/subscriptions/FullArbiter<TT;>;"
    iget-boolean v0, p0, Lio/reactivex/internal/subscriptions/FullArbiter;->cancelled:Z

    if-eqz v0, :cond_1

    .line 82
    if-eqz p1, :cond_0

    .line 83
    invoke-interface {p1}, Lorg/reactivestreams/Subscription;->cancel()V

    .line 85
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 88
    :cond_1
    const-string v0, "s is null"

    invoke-static {p1, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 89
    iget-object v0, p0, Lio/reactivex/internal/subscriptions/FullArbiter;->queue:Lio/reactivex/internal/queue/SpscLinkedArrayQueue;

    iget-object v1, p0, Lio/reactivex/internal/subscriptions/FullArbiter;->s:Lorg/reactivestreams/Subscription;

    invoke-static {p1}, Lio/reactivex/internal/util/NotificationLite;->subscription(Lorg/reactivestreams/Subscription;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;->offer(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 90
    invoke-virtual {p0}, Lio/reactivex/internal/subscriptions/FullArbiter;->drain()V

    .line 91
    const/4 v0, 0x1

    return v0
.end method
