.class public final Lio/reactivex/internal/operators/flowable/FlowableFromFuture;
.super Lio/reactivex/Flowable;
.source "FlowableFromFuture.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/Flowable<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final future:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "+TT;>;"
        }
    .end annotation
.end field

.field final timeout:J

.field final unit:Ljava/util/concurrent/TimeUnit;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Future;JLjava/util/concurrent/TimeUnit;)V
    .locals 0
    .param p2, "timeout"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Future<",
            "+TT;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")V"
        }
    .end annotation

    .line 29
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableFromFuture;, "Lio/reactivex/internal/operators/flowable/FlowableFromFuture<TT;>;"
    .local p1, "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<+TT;>;"
    invoke-direct {p0}, Lio/reactivex/Flowable;-><init>()V

    .line 30
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableFromFuture;->future:Ljava/util/concurrent/Future;

    .line 31
    iput-wide p2, p0, Lio/reactivex/internal/operators/flowable/FlowableFromFuture;->timeout:J

    .line 32
    iput-object p4, p0, Lio/reactivex/internal/operators/flowable/FlowableFromFuture;->unit:Ljava/util/concurrent/TimeUnit;

    .line 33
    return-void
.end method


# virtual methods
.method public subscribeActual(Lorg/reactivestreams/Subscriber;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/Subscriber<",
            "-TT;>;)V"
        }
    .end annotation

    .line 37
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableFromFuture;, "Lio/reactivex/internal/operators/flowable/FlowableFromFuture<TT;>;"
    .local p1, "s":Lorg/reactivestreams/Subscriber;, "Lorg/reactivestreams/Subscriber<-TT;>;"
    new-instance v0, Lio/reactivex/internal/subscriptions/DeferredScalarSubscription;

    invoke-direct {v0, p1}, Lio/reactivex/internal/subscriptions/DeferredScalarSubscription;-><init>(Lorg/reactivestreams/Subscriber;)V

    .line 38
    .local v0, "deferred":Lio/reactivex/internal/subscriptions/DeferredScalarSubscription;, "Lio/reactivex/internal/subscriptions/DeferredScalarSubscription<TT;>;"
    invoke-interface {p1, v0}, Lorg/reactivestreams/Subscriber;->onSubscribe(Lorg/reactivestreams/Subscription;)V

    .line 42
    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lio/reactivex/internal/operators/flowable/FlowableFromFuture;->unit:Ljava/util/concurrent/TimeUnit;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lio/reactivex/internal/operators/flowable/FlowableFromFuture;->future:Ljava/util/concurrent/Future;

    iget-wide v3, p0, Lio/reactivex/internal/operators/flowable/FlowableFromFuture;->timeout:J

    iget-object v5, p0, Lio/reactivex/internal/operators/flowable/FlowableFromFuture;->unit:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v2, v3, v4, v5}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lio/reactivex/internal/operators/flowable/FlowableFromFuture;->future:Ljava/util/concurrent/Future;

    invoke-interface {v2}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    .local v1, "v":Ljava/lang/Object;, "TT;"
    :goto_0
    nop

    .line 50
    if-nez v1, :cond_1

    .line 51
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "The future returned null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v2}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 53
    :cond_1
    invoke-virtual {v0, v1}, Lio/reactivex/internal/subscriptions/DeferredScalarSubscription;->complete(Ljava/lang/Object;)V

    .line 55
    :goto_1
    return-void

    .line 43
    .end local v1    # "v":Ljava/lang/Object;, "TT;"
    :catchall_0
    move-exception v2

    .line 44
    .restart local v1    # "v":Ljava/lang/Object;, "TT;"
    .local v2, "ex":Ljava/lang/Throwable;
    invoke-static {v2}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 45
    invoke-virtual {v0}, Lio/reactivex/internal/subscriptions/DeferredScalarSubscription;->isCancelled()Z

    move-result v3

    if-nez v3, :cond_2

    .line 46
    invoke-interface {p1, v2}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 48
    :cond_2
    return-void
.end method
