.class final Lio/reactivex/internal/operators/flowable/FlowableRepeat$RepeatSubscriber;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "FlowableRepeat.java"

# interfaces
.implements Lio/reactivex/FlowableSubscriber;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/FlowableRepeat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "RepeatSubscriber"
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
.field private static final serialVersionUID:J = -0x628271a96862fff0L


# instance fields
.field final actual:Lorg/reactivestreams/Subscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/reactivestreams/Subscriber<",
            "-TT;>;"
        }
    .end annotation
.end field

.field remaining:J

.field final sa:Lio/reactivex/internal/subscriptions/SubscriptionArbiter;

.field final source:Lorg/reactivestreams/Publisher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/reactivestreams/Publisher<",
            "+TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lorg/reactivestreams/Subscriber;JLio/reactivex/internal/subscriptions/SubscriptionArbiter;Lorg/reactivestreams/Publisher;)V
    .locals 0
    .param p2, "count"    # J
    .param p4, "sa"    # Lio/reactivex/internal/subscriptions/SubscriptionArbiter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/Subscriber<",
            "-TT;>;J",
            "Lio/reactivex/internal/subscriptions/SubscriptionArbiter;",
            "Lorg/reactivestreams/Publisher<",
            "+TT;>;)V"
        }
    .end annotation

    .line 48
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableRepeat$RepeatSubscriber;, "Lio/reactivex/internal/operators/flowable/FlowableRepeat$RepeatSubscriber<TT;>;"
    .local p1, "actual":Lorg/reactivestreams/Subscriber;, "Lorg/reactivestreams/Subscriber<-TT;>;"
    .local p5, "source":Lorg/reactivestreams/Publisher;, "Lorg/reactivestreams/Publisher<+TT;>;"
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 49
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableRepeat$RepeatSubscriber;->actual:Lorg/reactivestreams/Subscriber;

    .line 50
    iput-object p4, p0, Lio/reactivex/internal/operators/flowable/FlowableRepeat$RepeatSubscriber;->sa:Lio/reactivex/internal/subscriptions/SubscriptionArbiter;

    .line 51
    iput-object p5, p0, Lio/reactivex/internal/operators/flowable/FlowableRepeat$RepeatSubscriber;->source:Lorg/reactivestreams/Publisher;

    .line 52
    iput-wide p2, p0, Lio/reactivex/internal/operators/flowable/FlowableRepeat$RepeatSubscriber;->remaining:J

    .line 53
    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 4

    .line 72
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableRepeat$RepeatSubscriber;, "Lio/reactivex/internal/operators/flowable/FlowableRepeat$RepeatSubscriber<TT;>;"
    iget-wide v0, p0, Lio/reactivex/internal/operators/flowable/FlowableRepeat$RepeatSubscriber;->remaining:J

    .line 73
    .local v0, "r":J
    const-wide v2, 0x7fffffffffffffffL

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 74
    const-wide/16 v2, 0x1

    sub-long v2, v0, v2

    iput-wide v2, p0, Lio/reactivex/internal/operators/flowable/FlowableRepeat$RepeatSubscriber;->remaining:J

    .line 76
    :cond_0
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_1

    .line 77
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableRepeat$RepeatSubscriber;->subscribeNext()V

    goto :goto_0

    .line 79
    :cond_1
    iget-object v2, p0, Lio/reactivex/internal/operators/flowable/FlowableRepeat$RepeatSubscriber;->actual:Lorg/reactivestreams/Subscriber;

    invoke-interface {v2}, Lorg/reactivestreams/Subscriber;->onComplete()V

    .line 81
    :goto_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "t"    # Ljava/lang/Throwable;

    .line 67
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableRepeat$RepeatSubscriber;, "Lio/reactivex/internal/operators/flowable/FlowableRepeat$RepeatSubscriber<TT;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableRepeat$RepeatSubscriber;->actual:Lorg/reactivestreams/Subscriber;

    invoke-interface {v0, p1}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 68
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 62
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableRepeat$RepeatSubscriber;, "Lio/reactivex/internal/operators/flowable/FlowableRepeat$RepeatSubscriber<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableRepeat$RepeatSubscriber;->actual:Lorg/reactivestreams/Subscriber;

    invoke-interface {v0, p1}, Lorg/reactivestreams/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 63
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableRepeat$RepeatSubscriber;->sa:Lio/reactivex/internal/subscriptions/SubscriptionArbiter;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Lio/reactivex/internal/subscriptions/SubscriptionArbiter;->produced(J)V

    .line 64
    return-void
.end method

.method public onSubscribe(Lorg/reactivestreams/Subscription;)V
    .locals 1
    .param p1, "s"    # Lorg/reactivestreams/Subscription;

    .line 57
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableRepeat$RepeatSubscriber;, "Lio/reactivex/internal/operators/flowable/FlowableRepeat$RepeatSubscriber<TT;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableRepeat$RepeatSubscriber;->sa:Lio/reactivex/internal/subscriptions/SubscriptionArbiter;

    invoke-virtual {v0, p1}, Lio/reactivex/internal/subscriptions/SubscriptionArbiter;->setSubscription(Lorg/reactivestreams/Subscription;)V

    .line 58
    return-void
.end method

.method subscribeNext()V
    .locals 2

    .line 87
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableRepeat$RepeatSubscriber;, "Lio/reactivex/internal/operators/flowable/FlowableRepeat$RepeatSubscriber<TT;>;"
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableRepeat$RepeatSubscriber;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_2

    .line 88
    const/4 v0, 0x1

    .line 90
    .local v0, "missed":I
    :cond_0
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowableRepeat$RepeatSubscriber;->sa:Lio/reactivex/internal/subscriptions/SubscriptionArbiter;

    invoke-virtual {v1}, Lio/reactivex/internal/subscriptions/SubscriptionArbiter;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 91
    return-void

    .line 93
    :cond_1
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowableRepeat$RepeatSubscriber;->source:Lorg/reactivestreams/Publisher;

    invoke-interface {v1, p0}, Lorg/reactivestreams/Publisher;->subscribe(Lorg/reactivestreams/Subscriber;)V

    .line 95
    neg-int v1, v0

    invoke-virtual {p0, v1}, Lio/reactivex/internal/operators/flowable/FlowableRepeat$RepeatSubscriber;->addAndGet(I)I

    move-result v0

    .line 96
    if-nez v0, :cond_0

    .line 101
    .end local v0    # "missed":I
    :cond_2
    return-void
.end method
