.class final Lio/reactivex/internal/operators/flowable/FlowableIgnoreElements$IgnoreElementsSubscriber;
.super Ljava/lang/Object;
.source "FlowableIgnoreElements.java"

# interfaces
.implements Lio/reactivex/FlowableSubscriber;
.implements Lio/reactivex/internal/fuseable/QueueSubscription;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/FlowableIgnoreElements;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "IgnoreElementsSubscriber"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/FlowableSubscriber<",
        "TT;>;",
        "Lio/reactivex/internal/fuseable/QueueSubscription<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final actual:Lorg/reactivestreams/Subscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/reactivestreams/Subscriber<",
            "-TT;>;"
        }
    .end annotation
.end field

.field s:Lorg/reactivestreams/Subscription;


# direct methods
.method constructor <init>(Lorg/reactivestreams/Subscriber;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/Subscriber<",
            "-TT;>;)V"
        }
    .end annotation

    .line 39
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableIgnoreElements$IgnoreElementsSubscriber;, "Lio/reactivex/internal/operators/flowable/FlowableIgnoreElements$IgnoreElementsSubscriber<TT;>;"
    .local p1, "actual":Lorg/reactivestreams/Subscriber;, "Lorg/reactivestreams/Subscriber<-TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableIgnoreElements$IgnoreElementsSubscriber;->actual:Lorg/reactivestreams/Subscriber;

    .line 41
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .line 100
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableIgnoreElements$IgnoreElementsSubscriber;, "Lio/reactivex/internal/operators/flowable/FlowableIgnoreElements$IgnoreElementsSubscriber<TT;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableIgnoreElements$IgnoreElementsSubscriber;->s:Lorg/reactivestreams/Subscription;

    invoke-interface {v0}, Lorg/reactivestreams/Subscription;->cancel()V

    .line 101
    return-void
.end method

.method public clear()V
    .locals 0

    .line 91
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableIgnoreElements$IgnoreElementsSubscriber;, "Lio/reactivex/internal/operators/flowable/FlowableIgnoreElements$IgnoreElementsSubscriber<TT;>;"
    return-void
.end method

.method public isEmpty()Z
    .locals 1

    .line 85
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableIgnoreElements$IgnoreElementsSubscriber;, "Lio/reactivex/internal/operators/flowable/FlowableIgnoreElements$IgnoreElementsSubscriber<TT;>;"
    const/4 v0, 0x1

    return v0
.end method

.method public offer(Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 69
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableIgnoreElements$IgnoreElementsSubscriber;, "Lio/reactivex/internal/operators/flowable/FlowableIgnoreElements$IgnoreElementsSubscriber<TT;>;"
    .local p1, "e":Ljava/lang/Object;, "TT;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Should not be called!"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public offer(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)Z"
        }
    .end annotation

    .line 74
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableIgnoreElements$IgnoreElementsSubscriber;, "Lio/reactivex/internal/operators/flowable/FlowableIgnoreElements$IgnoreElementsSubscriber<TT;>;"
    .local p1, "v1":Ljava/lang/Object;, "TT;"
    .local p2, "v2":Ljava/lang/Object;, "TT;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Should not be called!"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onComplete()V
    .locals 1

    .line 64
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableIgnoreElements$IgnoreElementsSubscriber;, "Lio/reactivex/internal/operators/flowable/FlowableIgnoreElements$IgnoreElementsSubscriber<TT;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableIgnoreElements$IgnoreElementsSubscriber;->actual:Lorg/reactivestreams/Subscriber;

    invoke-interface {v0}, Lorg/reactivestreams/Subscriber;->onComplete()V

    .line 65
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "t"    # Ljava/lang/Throwable;

    .line 59
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableIgnoreElements$IgnoreElementsSubscriber;, "Lio/reactivex/internal/operators/flowable/FlowableIgnoreElements$IgnoreElementsSubscriber<TT;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableIgnoreElements$IgnoreElementsSubscriber;->actual:Lorg/reactivestreams/Subscriber;

    invoke-interface {v0, p1}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 60
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 55
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableIgnoreElements$IgnoreElementsSubscriber;, "Lio/reactivex/internal/operators/flowable/FlowableIgnoreElements$IgnoreElementsSubscriber<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    return-void
.end method

.method public onSubscribe(Lorg/reactivestreams/Subscription;)V
    .locals 2
    .param p1, "s"    # Lorg/reactivestreams/Subscription;

    .line 45
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableIgnoreElements$IgnoreElementsSubscriber;, "Lio/reactivex/internal/operators/flowable/FlowableIgnoreElements$IgnoreElementsSubscriber<TT;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableIgnoreElements$IgnoreElementsSubscriber;->s:Lorg/reactivestreams/Subscription;

    invoke-static {v0, p1}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->validate(Lorg/reactivestreams/Subscription;Lorg/reactivestreams/Subscription;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 46
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableIgnoreElements$IgnoreElementsSubscriber;->s:Lorg/reactivestreams/Subscription;

    .line 47
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableIgnoreElements$IgnoreElementsSubscriber;->actual:Lorg/reactivestreams/Subscriber;

    invoke-interface {v0, p0}, Lorg/reactivestreams/Subscriber;->onSubscribe(Lorg/reactivestreams/Subscription;)V

    .line 48
    const-wide v0, 0x7fffffffffffffffL

    invoke-interface {p1, v0, v1}, Lorg/reactivestreams/Subscription;->request(J)V

    .line 50
    :cond_0
    return-void
.end method

.method public poll()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 80
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableIgnoreElements$IgnoreElementsSubscriber;, "Lio/reactivex/internal/operators/flowable/FlowableIgnoreElements$IgnoreElementsSubscriber<TT;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public request(J)V
    .locals 0
    .param p1, "n"    # J

    .line 96
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableIgnoreElements$IgnoreElementsSubscriber;, "Lio/reactivex/internal/operators/flowable/FlowableIgnoreElements$IgnoreElementsSubscriber<TT;>;"
    return-void
.end method

.method public requestFusion(I)I
    .locals 1
    .param p1, "mode"    # I

    .line 105
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableIgnoreElements$IgnoreElementsSubscriber;, "Lio/reactivex/internal/operators/flowable/FlowableIgnoreElements$IgnoreElementsSubscriber<TT;>;"
    and-int/lit8 v0, p1, 0x2

    return v0
.end method
