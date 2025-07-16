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
    .locals 0
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
    invoke-direct {p0}, Lio/reactivex/internal/subscriptions/FullArbiterPad2;-><init>()V

    .line 49
    iput-object p1, p0, Lio/reactivex/internal/subscriptions/FullArbiter;->actual:Lorg/reactivestreams/Subscriber;

    .line 50
    iput-object p2, p0, Lio/reactivex/internal/subscriptions/FullArbiter;->resource:Lio/reactivex/disposables/Disposable;

    .line 51
    new-instance p1, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;

    invoke-direct {p1, p3}, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;-><init>(I)V

    iput-object p1, p0, Lio/reactivex/internal/subscriptions/FullArbiter;->queue:Lio/reactivex/internal/queue/SpscLinkedArrayQueue;

    .line 52
    sget-object p1, Lio/reactivex/internal/subscriptions/FullArbiter;->INITIAL:Lorg/reactivestreams/Subscription;

    iput-object p1, p0, Lio/reactivex/internal/subscriptions/FullArbiter;->s:Lorg/reactivestreams/Subscription;

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .line 66
    iget-boolean v0, p0, Lio/reactivex/internal/subscriptions/FullArbiter;->cancelled:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 67
    iput-boolean v0, p0, Lio/reactivex/internal/subscriptions/FullArbiter;->cancelled:Z

    .line 68
    invoke-virtual {p0}, Lio/reactivex/internal/subscriptions/FullArbiter;->dispose()V

    :cond_0
    return-void
.end method

.method dispose()V
    .locals 2

    .line 73
    iget-object v0, p0, Lio/reactivex/internal/subscriptions/FullArbiter;->resource:Lio/reactivex/disposables/Disposable;

    const/4 v1, 0x0

    .line 74
    iput-object v1, p0, Lio/reactivex/internal/subscriptions/FullArbiter;->resource:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_0

    .line 76
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    :cond_0
    return-void
.end method

.method drain()V
    .locals 11

    .line 119
    iget-object v0, p0, Lio/reactivex/internal/subscriptions/FullArbiter;->wip:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 125
    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/subscriptions/FullArbiter;->queue:Lio/reactivex/internal/queue/SpscLinkedArrayQueue;

    .line 126
    iget-object v1, p0, Lio/reactivex/internal/subscriptions/FullArbiter;->actual:Lorg/reactivestreams/Subscriber;

    const/4 v2, 0x1

    move v3, v2

    .line 132
    :cond_1
    :goto_0
    invoke-virtual {v0}, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;->poll()Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_2

    .line 186
    iget-object v4, p0, Lio/reactivex/internal/subscriptions/FullArbiter;->wip:Ljava/util/concurrent/atomic/AtomicInteger;

    neg-int v3, v3

    invoke-virtual {v4, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v3

    if-nez v3, :cond_1

    return-void

    .line 136
    :cond_2
    invoke-virtual {v0}, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;->poll()Ljava/lang/Object;

    move-result-object v5

    .line 138
    sget-object v6, Lio/reactivex/internal/subscriptions/FullArbiter;->REQUEST:Ljava/lang/Object;

    const-wide/16 v7, 0x0

    if-ne v4, v6, :cond_3

    .line 139
    iget-object v4, p0, Lio/reactivex/internal/subscriptions/FullArbiter;->missedRequested:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v4, v7, v8}, Ljava/util/concurrent/atomic/AtomicLong;->getAndSet(J)J

    move-result-wide v4

    cmp-long v6, v4, v7

    if-eqz v6, :cond_1

    .line 141
    iget-wide v6, p0, Lio/reactivex/internal/subscriptions/FullArbiter;->requested:J

    invoke-static {v6, v7, v4, v5}, Lio/reactivex/internal/util/BackpressureHelper;->addCap(JJ)J

    move-result-wide v6

    iput-wide v6, p0, Lio/reactivex/internal/subscriptions/FullArbiter;->requested:J

    .line 142
    iget-object v6, p0, Lio/reactivex/internal/subscriptions/FullArbiter;->s:Lorg/reactivestreams/Subscription;

    invoke-interface {v6, v4, v5}, Lorg/reactivestreams/Subscription;->request(J)V

    goto :goto_0

    .line 145
    :cond_3
    iget-object v6, p0, Lio/reactivex/internal/subscriptions/FullArbiter;->s:Lorg/reactivestreams/Subscription;

    if-ne v4, v6, :cond_1

    .line 146
    invoke-static {v5}, Lio/reactivex/internal/util/NotificationLite;->isSubscription(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 147
    invoke-static {v5}, Lio/reactivex/internal/util/NotificationLite;->getSubscription(Ljava/lang/Object;)Lorg/reactivestreams/Subscription;

    move-result-object v4

    .line 148
    iget-boolean v5, p0, Lio/reactivex/internal/subscriptions/FullArbiter;->cancelled:Z

    if-nez v5, :cond_4

    .line 149
    iput-object v4, p0, Lio/reactivex/internal/subscriptions/FullArbiter;->s:Lorg/reactivestreams/Subscription;

    .line 150
    iget-wide v5, p0, Lio/reactivex/internal/subscriptions/FullArbiter;->requested:J

    cmp-long v7, v5, v7

    if-eqz v7, :cond_1

    .line 152
    invoke-interface {v4, v5, v6}, Lorg/reactivestreams/Subscription;->request(J)V

    goto :goto_0

    .line 155
    :cond_4
    invoke-interface {v4}, Lorg/reactivestreams/Subscription;->cancel()V

    goto :goto_0

    .line 157
    :cond_5
    invoke-static {v5}, Lio/reactivex/internal/util/NotificationLite;->isError(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 158
    invoke-virtual {v0}, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;->clear()V

    .line 159
    invoke-virtual {p0}, Lio/reactivex/internal/subscriptions/FullArbiter;->dispose()V

    .line 161
    invoke-static {v5}, Lio/reactivex/internal/util/NotificationLite;->getError(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v4

    .line 162
    iget-boolean v5, p0, Lio/reactivex/internal/subscriptions/FullArbiter;->cancelled:Z

    if-nez v5, :cond_6

    .line 163
    iput-boolean v2, p0, Lio/reactivex/internal/subscriptions/FullArbiter;->cancelled:Z

    .line 164
    invoke-interface {v1, v4}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 166
    :cond_6
    invoke-static {v4}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 168
    :cond_7
    invoke-static {v5}, Lio/reactivex/internal/util/NotificationLite;->isComplete(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 169
    invoke-virtual {v0}, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;->clear()V

    .line 170
    invoke-virtual {p0}, Lio/reactivex/internal/subscriptions/FullArbiter;->dispose()V

    .line 172
    iget-boolean v4, p0, Lio/reactivex/internal/subscriptions/FullArbiter;->cancelled:Z

    if-nez v4, :cond_1

    .line 173
    iput-boolean v2, p0, Lio/reactivex/internal/subscriptions/FullArbiter;->cancelled:Z

    .line 174
    invoke-interface {v1}, Lorg/reactivestreams/Subscriber;->onComplete()V

    goto/16 :goto_0

    .line 177
    :cond_8
    iget-wide v9, p0, Lio/reactivex/internal/subscriptions/FullArbiter;->requested:J

    cmp-long v4, v9, v7

    if-eqz v4, :cond_1

    .line 179
    invoke-static {v5}, Lio/reactivex/internal/util/NotificationLite;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v1, v4}, Lorg/reactivestreams/Subscriber;->onNext(Ljava/lang/Object;)V

    const-wide/16 v4, 0x1

    sub-long/2addr v9, v4

    .line 180
    iput-wide v9, p0, Lio/reactivex/internal/subscriptions/FullArbiter;->requested:J

    goto/16 :goto_0
.end method

.method public onComplete(Lorg/reactivestreams/Subscription;)V
    .locals 2

    .line 114
    iget-object v0, p0, Lio/reactivex/internal/subscriptions/FullArbiter;->queue:Lio/reactivex/internal/queue/SpscLinkedArrayQueue;

    invoke-static {}, Lio/reactivex/internal/util/NotificationLite;->complete()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;->offer(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 115
    invoke-virtual {p0}, Lio/reactivex/internal/subscriptions/FullArbiter;->drain()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;Lorg/reactivestreams/Subscription;)V
    .locals 1

    .line 105
    iget-boolean v0, p0, Lio/reactivex/internal/subscriptions/FullArbiter;->cancelled:Z

    if-eqz v0, :cond_0

    .line 106
    invoke-static {p1}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 109
    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/subscriptions/FullArbiter;->queue:Lio/reactivex/internal/queue/SpscLinkedArrayQueue;

    invoke-static {p1}, Lio/reactivex/internal/util/NotificationLite;->error(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p2, p1}, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;->offer(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 110
    invoke-virtual {p0}, Lio/reactivex/internal/subscriptions/FullArbiter;->drain()V

    return-void
.end method

.method public onNext(Ljava/lang/Object;Lorg/reactivestreams/Subscription;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lorg/reactivestreams/Subscription;",
            ")Z"
        }
    .end annotation

    .line 95
    iget-boolean v0, p0, Lio/reactivex/internal/subscriptions/FullArbiter;->cancelled:Z

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 99
    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/subscriptions/FullArbiter;->queue:Lio/reactivex/internal/queue/SpscLinkedArrayQueue;

    invoke-static {p1}, Lio/reactivex/internal/util/NotificationLite;->next(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p2, p1}, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;->offer(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 100
    invoke-virtual {p0}, Lio/reactivex/internal/subscriptions/FullArbiter;->drain()V

    const/4 p1, 0x1

    return p1
.end method

.method public request(J)V
    .locals 1

    .line 57
    invoke-static {p1, p2}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->validate(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lio/reactivex/internal/subscriptions/FullArbiter;->missedRequested:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {v0, p1, p2}, Lio/reactivex/internal/util/BackpressureHelper;->add(Ljava/util/concurrent/atomic/AtomicLong;J)J

    .line 59
    iget-object p1, p0, Lio/reactivex/internal/subscriptions/FullArbiter;->queue:Lio/reactivex/internal/queue/SpscLinkedArrayQueue;

    sget-object p2, Lio/reactivex/internal/subscriptions/FullArbiter;->REQUEST:Ljava/lang/Object;

    invoke-virtual {p1, p2, p2}, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;->offer(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 60
    invoke-virtual {p0}, Lio/reactivex/internal/subscriptions/FullArbiter;->drain()V

    :cond_0
    return-void
.end method

.method public setSubscription(Lorg/reactivestreams/Subscription;)Z
    .locals 2

    .line 81
    iget-boolean v0, p0, Lio/reactivex/internal/subscriptions/FullArbiter;->cancelled:Z

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 83
    invoke-interface {p1}, Lorg/reactivestreams/Subscription;->cancel()V

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    const-string v0, "s is null"

    .line 88
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 89
    iget-object v0, p0, Lio/reactivex/internal/subscriptions/FullArbiter;->queue:Lio/reactivex/internal/queue/SpscLinkedArrayQueue;

    iget-object v1, p0, Lio/reactivex/internal/subscriptions/FullArbiter;->s:Lorg/reactivestreams/Subscription;

    invoke-static {p1}, Lio/reactivex/internal/util/NotificationLite;->subscription(Lorg/reactivestreams/Subscription;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;->offer(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 90
    invoke-virtual {p0}, Lio/reactivex/internal/subscriptions/FullArbiter;->drain()V

    const/4 p1, 0x1

    return p1
.end method
