.class final Lio/reactivex/internal/operators/parallel/ParallelMap$ParallelMapSubscriber;
.super Ljava/lang/Object;
.source "ParallelMap.java"

# interfaces
.implements Lio/reactivex/FlowableSubscriber;
.implements Lorg/reactivestreams/Subscription;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/parallel/ParallelMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ParallelMapSubscriber"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/FlowableSubscriber<",
        "TT;>;",
        "Lorg/reactivestreams/Subscription;"
    }
.end annotation


# instance fields
.field final actual:Lorg/reactivestreams/Subscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/reactivestreams/Subscriber<",
            "-TR;>;"
        }
    .end annotation
.end field

.field done:Z

.field final mapper:Lio/reactivex/functions/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/Function<",
            "-TT;+TR;>;"
        }
    .end annotation
.end field

.field s:Lorg/reactivestreams/Subscription;


# direct methods
.method constructor <init>(Lorg/reactivestreams/Subscriber;Lio/reactivex/functions/Function;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/Subscriber<",
            "-TR;>;",
            "Lio/reactivex/functions/Function<",
            "-TT;+TR;>;)V"
        }
    .end annotation

    .line 81
    .local p0, "this":Lio/reactivex/internal/operators/parallel/ParallelMap$ParallelMapSubscriber;, "Lio/reactivex/internal/operators/parallel/ParallelMap$ParallelMapSubscriber<TT;TR;>;"
    .local p1, "actual":Lorg/reactivestreams/Subscriber;, "Lorg/reactivestreams/Subscriber<-TR;>;"
    .local p2, "mapper":Lio/reactivex/functions/Function;, "Lio/reactivex/functions/Function<-TT;+TR;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput-object p1, p0, Lio/reactivex/internal/operators/parallel/ParallelMap$ParallelMapSubscriber;->actual:Lorg/reactivestreams/Subscriber;

    .line 83
    iput-object p2, p0, Lio/reactivex/internal/operators/parallel/ParallelMap$ParallelMapSubscriber;->mapper:Lio/reactivex/functions/Function;

    .line 84
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .line 93
    .local p0, "this":Lio/reactivex/internal/operators/parallel/ParallelMap$ParallelMapSubscriber;, "Lio/reactivex/internal/operators/parallel/ParallelMap$ParallelMapSubscriber<TT;TR;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/parallel/ParallelMap$ParallelMapSubscriber;->s:Lorg/reactivestreams/Subscription;

    invoke-interface {v0}, Lorg/reactivestreams/Subscription;->cancel()V

    .line 94
    return-void
.end method

.method public onComplete()V
    .locals 1

    .line 136
    .local p0, "this":Lio/reactivex/internal/operators/parallel/ParallelMap$ParallelMapSubscriber;, "Lio/reactivex/internal/operators/parallel/ParallelMap$ParallelMapSubscriber<TT;TR;>;"
    iget-boolean v0, p0, Lio/reactivex/internal/operators/parallel/ParallelMap$ParallelMapSubscriber;->done:Z

    if-eqz v0, :cond_0

    .line 137
    return-void

    .line 139
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/internal/operators/parallel/ParallelMap$ParallelMapSubscriber;->done:Z

    .line 140
    iget-object v0, p0, Lio/reactivex/internal/operators/parallel/ParallelMap$ParallelMapSubscriber;->actual:Lorg/reactivestreams/Subscriber;

    invoke-interface {v0}, Lorg/reactivestreams/Subscriber;->onComplete()V

    .line 141
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "t"    # Ljava/lang/Throwable;

    .line 126
    .local p0, "this":Lio/reactivex/internal/operators/parallel/ParallelMap$ParallelMapSubscriber;, "Lio/reactivex/internal/operators/parallel/ParallelMap$ParallelMapSubscriber<TT;TR;>;"
    iget-boolean v0, p0, Lio/reactivex/internal/operators/parallel/ParallelMap$ParallelMapSubscriber;->done:Z

    if-eqz v0, :cond_0

    .line 127
    invoke-static {p1}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    .line 128
    return-void

    .line 130
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/internal/operators/parallel/ParallelMap$ParallelMapSubscriber;->done:Z

    .line 131
    iget-object v0, p0, Lio/reactivex/internal/operators/parallel/ParallelMap$ParallelMapSubscriber;->actual:Lorg/reactivestreams/Subscriber;

    invoke-interface {v0, p1}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 132
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 107
    .local p0, "this":Lio/reactivex/internal/operators/parallel/ParallelMap$ParallelMapSubscriber;, "Lio/reactivex/internal/operators/parallel/ParallelMap$ParallelMapSubscriber<TT;TR;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-boolean v0, p0, Lio/reactivex/internal/operators/parallel/ParallelMap$ParallelMapSubscriber;->done:Z

    if-eqz v0, :cond_0

    .line 108
    return-void

    .line 113
    :cond_0
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lio/reactivex/internal/operators/parallel/ParallelMap$ParallelMapSubscriber;->mapper:Lio/reactivex/functions/Function;

    invoke-interface {v1, p1}, Lio/reactivex/functions/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "The mapper returned a null value"

    invoke-static {v1, v2}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 119
    .local v0, "v":Ljava/lang/Object;, "TR;"
    nop

    .line 121
    iget-object v1, p0, Lio/reactivex/internal/operators/parallel/ParallelMap$ParallelMapSubscriber;->actual:Lorg/reactivestreams/Subscriber;

    invoke-interface {v1, v0}, Lorg/reactivestreams/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 122
    return-void

    .line 114
    .end local v0    # "v":Ljava/lang/Object;, "TR;"
    :catchall_0
    move-exception v1

    .line 115
    .restart local v0    # "v":Ljava/lang/Object;, "TR;"
    .local v1, "ex":Ljava/lang/Throwable;
    invoke-static {v1}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 116
    invoke-virtual {p0}, Lio/reactivex/internal/operators/parallel/ParallelMap$ParallelMapSubscriber;->cancel()V

    .line 117
    invoke-virtual {p0, v1}, Lio/reactivex/internal/operators/parallel/ParallelMap$ParallelMapSubscriber;->onError(Ljava/lang/Throwable;)V

    .line 118
    return-void
.end method

.method public onSubscribe(Lorg/reactivestreams/Subscription;)V
    .locals 1
    .param p1, "s"    # Lorg/reactivestreams/Subscription;

    .line 98
    .local p0, "this":Lio/reactivex/internal/operators/parallel/ParallelMap$ParallelMapSubscriber;, "Lio/reactivex/internal/operators/parallel/ParallelMap$ParallelMapSubscriber<TT;TR;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/parallel/ParallelMap$ParallelMapSubscriber;->s:Lorg/reactivestreams/Subscription;

    invoke-static {v0, p1}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->validate(Lorg/reactivestreams/Subscription;Lorg/reactivestreams/Subscription;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 99
    iput-object p1, p0, Lio/reactivex/internal/operators/parallel/ParallelMap$ParallelMapSubscriber;->s:Lorg/reactivestreams/Subscription;

    .line 101
    iget-object v0, p0, Lio/reactivex/internal/operators/parallel/ParallelMap$ParallelMapSubscriber;->actual:Lorg/reactivestreams/Subscriber;

    invoke-interface {v0, p0}, Lorg/reactivestreams/Subscriber;->onSubscribe(Lorg/reactivestreams/Subscription;)V

    .line 103
    :cond_0
    return-void
.end method

.method public request(J)V
    .locals 1
    .param p1, "n"    # J

    .line 88
    .local p0, "this":Lio/reactivex/internal/operators/parallel/ParallelMap$ParallelMapSubscriber;, "Lio/reactivex/internal/operators/parallel/ParallelMap$ParallelMapSubscriber<TT;TR;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/parallel/ParallelMap$ParallelMapSubscriber;->s:Lorg/reactivestreams/Subscription;

    invoke-interface {v0, p1, p2}, Lorg/reactivestreams/Subscription;->request(J)V

    .line 89
    return-void
.end method
