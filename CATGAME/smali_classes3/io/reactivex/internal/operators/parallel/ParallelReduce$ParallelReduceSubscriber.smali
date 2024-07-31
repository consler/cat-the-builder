.class final Lio/reactivex/internal/operators/parallel/ParallelReduce$ParallelReduceSubscriber;
.super Lio/reactivex/internal/subscribers/DeferredScalarSubscriber;
.source "ParallelReduce.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/parallel/ParallelReduce;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ParallelReduceSubscriber"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/subscribers/DeferredScalarSubscriber<",
        "TT;TR;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x71ce22a1fe47cbf8L


# instance fields
.field accumulator:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TR;"
        }
    .end annotation
.end field

.field done:Z

.field final reducer:Lio/reactivex/functions/BiFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/BiFunction<",
            "TR;-TT;TR;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lorg/reactivestreams/Subscriber;Ljava/lang/Object;Lio/reactivex/functions/BiFunction;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/Subscriber<",
            "-TR;>;TR;",
            "Lio/reactivex/functions/BiFunction<",
            "TR;-TT;TR;>;)V"
        }
    .end annotation

    .line 99
    .local p0, "this":Lio/reactivex/internal/operators/parallel/ParallelReduce$ParallelReduceSubscriber;, "Lio/reactivex/internal/operators/parallel/ParallelReduce$ParallelReduceSubscriber<TT;TR;>;"
    .local p1, "subscriber":Lorg/reactivestreams/Subscriber;, "Lorg/reactivestreams/Subscriber<-TR;>;"
    .local p2, "initialValue":Ljava/lang/Object;, "TR;"
    .local p3, "reducer":Lio/reactivex/functions/BiFunction;, "Lio/reactivex/functions/BiFunction<TR;-TT;TR;>;"
    invoke-direct {p0, p1}, Lio/reactivex/internal/subscribers/DeferredScalarSubscriber;-><init>(Lorg/reactivestreams/Subscriber;)V

    .line 100
    iput-object p2, p0, Lio/reactivex/internal/operators/parallel/ParallelReduce$ParallelReduceSubscriber;->accumulator:Ljava/lang/Object;

    .line 101
    iput-object p3, p0, Lio/reactivex/internal/operators/parallel/ParallelReduce$ParallelReduceSubscriber;->reducer:Lio/reactivex/functions/BiFunction;

    .line 102
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .line 157
    .local p0, "this":Lio/reactivex/internal/operators/parallel/ParallelReduce$ParallelReduceSubscriber;, "Lio/reactivex/internal/operators/parallel/ParallelReduce$ParallelReduceSubscriber<TT;TR;>;"
    invoke-super {p0}, Lio/reactivex/internal/subscribers/DeferredScalarSubscriber;->cancel()V

    .line 158
    iget-object v0, p0, Lio/reactivex/internal/operators/parallel/ParallelReduce$ParallelReduceSubscriber;->s:Lorg/reactivestreams/Subscription;

    invoke-interface {v0}, Lorg/reactivestreams/Subscription;->cancel()V

    .line 159
    return-void
.end method

.method public onComplete()V
    .locals 2

    .line 146
    .local p0, "this":Lio/reactivex/internal/operators/parallel/ParallelReduce$ParallelReduceSubscriber;, "Lio/reactivex/internal/operators/parallel/ParallelReduce$ParallelReduceSubscriber<TT;TR;>;"
    iget-boolean v0, p0, Lio/reactivex/internal/operators/parallel/ParallelReduce$ParallelReduceSubscriber;->done:Z

    if-nez v0, :cond_0

    .line 147
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/internal/operators/parallel/ParallelReduce$ParallelReduceSubscriber;->done:Z

    .line 149
    iget-object v0, p0, Lio/reactivex/internal/operators/parallel/ParallelReduce$ParallelReduceSubscriber;->accumulator:Ljava/lang/Object;

    .line 150
    .local v0, "a":Ljava/lang/Object;, "TR;"
    const/4 v1, 0x0

    iput-object v1, p0, Lio/reactivex/internal/operators/parallel/ParallelReduce$ParallelReduceSubscriber;->accumulator:Ljava/lang/Object;

    .line 151
    invoke-virtual {p0, v0}, Lio/reactivex/internal/operators/parallel/ParallelReduce$ParallelReduceSubscriber;->complete(Ljava/lang/Object;)V

    .line 153
    .end local v0    # "a":Ljava/lang/Object;, "TR;"
    :cond_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "t"    # Ljava/lang/Throwable;

    .line 135
    .local p0, "this":Lio/reactivex/internal/operators/parallel/ParallelReduce$ParallelReduceSubscriber;, "Lio/reactivex/internal/operators/parallel/ParallelReduce$ParallelReduceSubscriber<TT;TR;>;"
    iget-boolean v0, p0, Lio/reactivex/internal/operators/parallel/ParallelReduce$ParallelReduceSubscriber;->done:Z

    if-eqz v0, :cond_0

    .line 136
    invoke-static {p1}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    .line 137
    return-void

    .line 139
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/internal/operators/parallel/ParallelReduce$ParallelReduceSubscriber;->done:Z

    .line 140
    const/4 v0, 0x0

    iput-object v0, p0, Lio/reactivex/internal/operators/parallel/ParallelReduce$ParallelReduceSubscriber;->accumulator:Ljava/lang/Object;

    .line 141
    iget-object v0, p0, Lio/reactivex/internal/operators/parallel/ParallelReduce$ParallelReduceSubscriber;->actual:Lorg/reactivestreams/Subscriber;

    invoke-interface {v0, p1}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 142
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 117
    .local p0, "this":Lio/reactivex/internal/operators/parallel/ParallelReduce$ParallelReduceSubscriber;, "Lio/reactivex/internal/operators/parallel/ParallelReduce$ParallelReduceSubscriber<TT;TR;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-boolean v0, p0, Lio/reactivex/internal/operators/parallel/ParallelReduce$ParallelReduceSubscriber;->done:Z

    if-nez v0, :cond_0

    .line 121
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lio/reactivex/internal/operators/parallel/ParallelReduce$ParallelReduceSubscriber;->reducer:Lio/reactivex/functions/BiFunction;

    iget-object v2, p0, Lio/reactivex/internal/operators/parallel/ParallelReduce$ParallelReduceSubscriber;->accumulator:Ljava/lang/Object;

    invoke-interface {v1, v2, p1}, Lio/reactivex/functions/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "The reducer returned a null value"

    invoke-static {v1, v2}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 127
    .local v0, "v":Ljava/lang/Object;, "TR;"
    nop

    .line 129
    iput-object v0, p0, Lio/reactivex/internal/operators/parallel/ParallelReduce$ParallelReduceSubscriber;->accumulator:Ljava/lang/Object;

    goto :goto_0

    .line 122
    .end local v0    # "v":Ljava/lang/Object;, "TR;"
    :catchall_0
    move-exception v1

    .line 123
    .restart local v0    # "v":Ljava/lang/Object;, "TR;"
    .local v1, "ex":Ljava/lang/Throwable;
    invoke-static {v1}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 124
    invoke-virtual {p0}, Lio/reactivex/internal/operators/parallel/ParallelReduce$ParallelReduceSubscriber;->cancel()V

    .line 125
    invoke-virtual {p0, v1}, Lio/reactivex/internal/operators/parallel/ParallelReduce$ParallelReduceSubscriber;->onError(Ljava/lang/Throwable;)V

    .line 126
    return-void

    .line 131
    .end local v0    # "v":Ljava/lang/Object;, "TR;"
    .end local v1    # "ex":Ljava/lang/Throwable;
    :cond_0
    :goto_0
    return-void
.end method

.method public onSubscribe(Lorg/reactivestreams/Subscription;)V
    .locals 2
    .param p1, "s"    # Lorg/reactivestreams/Subscription;

    .line 106
    .local p0, "this":Lio/reactivex/internal/operators/parallel/ParallelReduce$ParallelReduceSubscriber;, "Lio/reactivex/internal/operators/parallel/ParallelReduce$ParallelReduceSubscriber<TT;TR;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/parallel/ParallelReduce$ParallelReduceSubscriber;->s:Lorg/reactivestreams/Subscription;

    invoke-static {v0, p1}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->validate(Lorg/reactivestreams/Subscription;Lorg/reactivestreams/Subscription;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 107
    iput-object p1, p0, Lio/reactivex/internal/operators/parallel/ParallelReduce$ParallelReduceSubscriber;->s:Lorg/reactivestreams/Subscription;

    .line 109
    iget-object v0, p0, Lio/reactivex/internal/operators/parallel/ParallelReduce$ParallelReduceSubscriber;->actual:Lorg/reactivestreams/Subscriber;

    invoke-interface {v0, p0}, Lorg/reactivestreams/Subscriber;->onSubscribe(Lorg/reactivestreams/Subscription;)V

    .line 111
    const-wide v0, 0x7fffffffffffffffL

    invoke-interface {p1, v0, v1}, Lorg/reactivestreams/Subscription;->request(J)V

    .line 113
    :cond_0
    return-void
.end method
