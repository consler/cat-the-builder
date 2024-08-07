.class final Lio/reactivex/internal/operators/flowable/FlowableRepeatWhen$WhenReceiver;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "FlowableRepeatWhen.java"

# interfaces
.implements Lio/reactivex/FlowableSubscriber;
.implements Lorg/reactivestreams/Subscription;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/FlowableRepeatWhen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "WhenReceiver"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "Lio/reactivex/FlowableSubscriber<",
        "Ljava/lang/Object;",
        ">;",
        "Lorg/reactivestreams/Subscription;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x273e43a975384721L


# instance fields
.field final requested:Ljava/util/concurrent/atomic/AtomicLong;

.field final source:Lorg/reactivestreams/Publisher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/reactivestreams/Publisher<",
            "TT;>;"
        }
    .end annotation
.end field

.field subscriber:Lio/reactivex/internal/operators/flowable/FlowableRepeatWhen$WhenSourceSubscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/operators/flowable/FlowableRepeatWhen$WhenSourceSubscriber<",
            "TT;TU;>;"
        }
    .end annotation
.end field

.field final subscription:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lorg/reactivestreams/Subscription;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lorg/reactivestreams/Publisher;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/Publisher<",
            "TT;>;)V"
        }
    .end annotation

    .line 82
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableRepeatWhen$WhenReceiver;, "Lio/reactivex/internal/operators/flowable/FlowableRepeatWhen$WhenReceiver<TT;TU;>;"
    .local p1, "source":Lorg/reactivestreams/Publisher;, "Lorg/reactivestreams/Publisher<TT;>;"
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 83
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableRepeatWhen$WhenReceiver;->source:Lorg/reactivestreams/Publisher;

    .line 84
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableRepeatWhen$WhenReceiver;->subscription:Ljava/util/concurrent/atomic/AtomicReference;

    .line 85
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableRepeatWhen$WhenReceiver;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    .line 86
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .line 129
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableRepeatWhen$WhenReceiver;, "Lio/reactivex/internal/operators/flowable/FlowableRepeatWhen$WhenReceiver<TT;TU;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableRepeatWhen$WhenReceiver;->subscription:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->cancel(Ljava/util/concurrent/atomic/AtomicReference;)Z

    .line 130
    return-void
.end method

.method public onComplete()V
    .locals 1

    .line 118
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableRepeatWhen$WhenReceiver;, "Lio/reactivex/internal/operators/flowable/FlowableRepeatWhen$WhenReceiver<TT;TU;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableRepeatWhen$WhenReceiver;->subscriber:Lio/reactivex/internal/operators/flowable/FlowableRepeatWhen$WhenSourceSubscriber;

    invoke-virtual {v0}, Lio/reactivex/internal/operators/flowable/FlowableRepeatWhen$WhenSourceSubscriber;->cancel()V

    .line 119
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableRepeatWhen$WhenReceiver;->subscriber:Lio/reactivex/internal/operators/flowable/FlowableRepeatWhen$WhenSourceSubscriber;

    iget-object v0, v0, Lio/reactivex/internal/operators/flowable/FlowableRepeatWhen$WhenSourceSubscriber;->actual:Lorg/reactivestreams/Subscriber;

    invoke-interface {v0}, Lorg/reactivestreams/Subscriber;->onComplete()V

    .line 120
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "t"    # Ljava/lang/Throwable;

    .line 112
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableRepeatWhen$WhenReceiver;, "Lio/reactivex/internal/operators/flowable/FlowableRepeatWhen$WhenReceiver<TT;TU;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableRepeatWhen$WhenReceiver;->subscriber:Lio/reactivex/internal/operators/flowable/FlowableRepeatWhen$WhenSourceSubscriber;

    invoke-virtual {v0}, Lio/reactivex/internal/operators/flowable/FlowableRepeatWhen$WhenSourceSubscriber;->cancel()V

    .line 113
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableRepeatWhen$WhenReceiver;->subscriber:Lio/reactivex/internal/operators/flowable/FlowableRepeatWhen$WhenSourceSubscriber;

    iget-object v0, v0, Lio/reactivex/internal/operators/flowable/FlowableRepeatWhen$WhenSourceSubscriber;->actual:Lorg/reactivestreams/Subscriber;

    invoke-interface {v0, p1}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 114
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 2
    .param p1, "t"    # Ljava/lang/Object;

    .line 95
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableRepeatWhen$WhenReceiver;, "Lio/reactivex/internal/operators/flowable/FlowableRepeatWhen$WhenReceiver<TT;TU;>;"
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableRepeatWhen$WhenReceiver;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_2

    .line 97
    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableRepeatWhen$WhenReceiver;->subscription:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/reactivestreams/Subscription;

    invoke-static {v0}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->isCancelled(Lorg/reactivestreams/Subscription;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 98
    return-void

    .line 101
    :cond_1
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableRepeatWhen$WhenReceiver;->source:Lorg/reactivestreams/Publisher;

    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowableRepeatWhen$WhenReceiver;->subscriber:Lio/reactivex/internal/operators/flowable/FlowableRepeatWhen$WhenSourceSubscriber;

    invoke-interface {v0, v1}, Lorg/reactivestreams/Publisher;->subscribe(Lorg/reactivestreams/Subscriber;)V

    .line 103
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableRepeatWhen$WhenReceiver;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_0

    .line 108
    :cond_2
    return-void
.end method

.method public onSubscribe(Lorg/reactivestreams/Subscription;)V
    .locals 2
    .param p1, "s"    # Lorg/reactivestreams/Subscription;

    .line 90
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableRepeatWhen$WhenReceiver;, "Lio/reactivex/internal/operators/flowable/FlowableRepeatWhen$WhenReceiver<TT;TU;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableRepeatWhen$WhenReceiver;->subscription:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowableRepeatWhen$WhenReceiver;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {v0, v1, p1}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->deferredSetOnce(Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/atomic/AtomicLong;Lorg/reactivestreams/Subscription;)Z

    .line 91
    return-void
.end method

.method public request(J)V
    .locals 2
    .param p1, "n"    # J

    .line 124
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableRepeatWhen$WhenReceiver;, "Lio/reactivex/internal/operators/flowable/FlowableRepeatWhen$WhenReceiver<TT;TU;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableRepeatWhen$WhenReceiver;->subscription:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowableRepeatWhen$WhenReceiver;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {v0, v1, p1, p2}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->deferredRequest(Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/atomic/AtomicLong;J)V

    .line 125
    return-void
.end method
