.class final Lio/reactivex/internal/operators/flowable/FlowableTimeout$TimeoutSubscriber;
.super Ljava/lang/Object;
.source "FlowableTimeout.java"

# interfaces
.implements Lio/reactivex/FlowableSubscriber;
.implements Lorg/reactivestreams/Subscription;
.implements Lio/reactivex/internal/operators/flowable/FlowableTimeout$OnTimeout;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/FlowableTimeout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "TimeoutSubscriber"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/FlowableSubscriber<",
        "TT;>;",
        "Lorg/reactivestreams/Subscription;",
        "Lio/reactivex/internal/operators/flowable/FlowableTimeout$OnTimeout;"
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

.field volatile cancelled:Z

.field final firstTimeoutIndicator:Lorg/reactivestreams/Publisher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/reactivestreams/Publisher<",
            "TU;>;"
        }
    .end annotation
.end field

.field volatile index:J

.field final itemTimeoutIndicator:Lio/reactivex/functions/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/Function<",
            "-TT;+",
            "Lorg/reactivestreams/Publisher<",
            "TV;>;>;"
        }
    .end annotation
.end field

.field s:Lorg/reactivestreams/Subscription;

.field final timeout:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lio/reactivex/disposables/Disposable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lorg/reactivestreams/Subscriber;Lorg/reactivestreams/Publisher;Lio/reactivex/functions/Function;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/Subscriber<",
            "-TT;>;",
            "Lorg/reactivestreams/Publisher<",
            "TU;>;",
            "Lio/reactivex/functions/Function<",
            "-TT;+",
            "Lorg/reactivestreams/Publisher<",
            "TV;>;>;)V"
        }
    .end annotation

    .line 75
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableTimeout$TimeoutSubscriber;, "Lio/reactivex/internal/operators/flowable/FlowableTimeout$TimeoutSubscriber<TT;TU;TV;>;"
    .local p1, "actual":Lorg/reactivestreams/Subscriber;, "Lorg/reactivestreams/Subscriber<-TT;>;"
    .local p2, "firstTimeoutIndicator":Lorg/reactivestreams/Publisher;, "Lorg/reactivestreams/Publisher<TU;>;"
    .local p3, "itemTimeoutIndicator":Lio/reactivex/functions/Function;, "Lio/reactivex/functions/Function<-TT;+Lorg/reactivestreams/Publisher<TV;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableTimeout$TimeoutSubscriber;->timeout:Ljava/util/concurrent/atomic/AtomicReference;

    .line 76
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableTimeout$TimeoutSubscriber;->actual:Lorg/reactivestreams/Subscriber;

    .line 77
    iput-object p2, p0, Lio/reactivex/internal/operators/flowable/FlowableTimeout$TimeoutSubscriber;->firstTimeoutIndicator:Lorg/reactivestreams/Publisher;

    .line 78
    iput-object p3, p0, Lio/reactivex/internal/operators/flowable/FlowableTimeout$TimeoutSubscriber;->itemTimeoutIndicator:Lio/reactivex/functions/Function;

    .line 79
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .line 157
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableTimeout$TimeoutSubscriber;, "Lio/reactivex/internal/operators/flowable/FlowableTimeout$TimeoutSubscriber<TT;TU;TV;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableTimeout$TimeoutSubscriber;->cancelled:Z

    .line 158
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableTimeout$TimeoutSubscriber;->s:Lorg/reactivestreams/Subscription;

    invoke-interface {v0}, Lorg/reactivestreams/Subscription;->cancel()V

    .line 159
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableTimeout$TimeoutSubscriber;->timeout:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0}, Lio/reactivex/internal/disposables/DisposableHelper;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)Z

    .line 160
    return-void
.end method

.method public onComplete()V
    .locals 1

    .line 146
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableTimeout$TimeoutSubscriber;, "Lio/reactivex/internal/operators/flowable/FlowableTimeout$TimeoutSubscriber<TT;TU;TV;>;"
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableTimeout$TimeoutSubscriber;->cancel()V

    .line 147
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableTimeout$TimeoutSubscriber;->actual:Lorg/reactivestreams/Subscriber;

    invoke-interface {v0}, Lorg/reactivestreams/Subscriber;->onComplete()V

    .line 148
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "t"    # Ljava/lang/Throwable;

    .line 140
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableTimeout$TimeoutSubscriber;, "Lio/reactivex/internal/operators/flowable/FlowableTimeout$TimeoutSubscriber<TT;TU;TV;>;"
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableTimeout$TimeoutSubscriber;->cancel()V

    .line 141
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableTimeout$TimeoutSubscriber;->actual:Lorg/reactivestreams/Subscriber;

    invoke-interface {v0, p1}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 142
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 110
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableTimeout$TimeoutSubscriber;, "Lio/reactivex/internal/operators/flowable/FlowableTimeout$TimeoutSubscriber<TT;TU;TV;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-wide v0, p0, Lio/reactivex/internal/operators/flowable/FlowableTimeout$TimeoutSubscriber;->index:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    .line 111
    .local v0, "idx":J
    iput-wide v0, p0, Lio/reactivex/internal/operators/flowable/FlowableTimeout$TimeoutSubscriber;->index:J

    .line 113
    iget-object v2, p0, Lio/reactivex/internal/operators/flowable/FlowableTimeout$TimeoutSubscriber;->actual:Lorg/reactivestreams/Subscriber;

    invoke-interface {v2, p1}, Lorg/reactivestreams/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 115
    iget-object v2, p0, Lio/reactivex/internal/operators/flowable/FlowableTimeout$TimeoutSubscriber;->timeout:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/reactivex/disposables/Disposable;

    .line 116
    .local v2, "d":Lio/reactivex/disposables/Disposable;
    if-eqz v2, :cond_0

    .line 117
    invoke-interface {v2}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 123
    :cond_0
    const/4 v3, 0x0

    :try_start_0
    iget-object v4, p0, Lio/reactivex/internal/operators/flowable/FlowableTimeout$TimeoutSubscriber;->itemTimeoutIndicator:Lio/reactivex/functions/Function;

    invoke-interface {v4, p1}, Lio/reactivex/functions/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    const-string v5, "The publisher returned is null"

    invoke-static {v4, v5}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/reactivestreams/Publisher;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v3, v4

    .line 129
    .local v3, "p":Lorg/reactivestreams/Publisher;, "Lorg/reactivestreams/Publisher<TV;>;"
    nop

    .line 131
    new-instance v4, Lio/reactivex/internal/operators/flowable/FlowableTimeout$TimeoutInnerSubscriber;

    invoke-direct {v4, p0, v0, v1}, Lio/reactivex/internal/operators/flowable/FlowableTimeout$TimeoutInnerSubscriber;-><init>(Lio/reactivex/internal/operators/flowable/FlowableTimeout$OnTimeout;J)V

    .line 133
    .local v4, "tis":Lio/reactivex/internal/operators/flowable/FlowableTimeout$TimeoutInnerSubscriber;, "Lio/reactivex/internal/operators/flowable/FlowableTimeout$TimeoutInnerSubscriber<TT;TU;TV;>;"
    iget-object v5, p0, Lio/reactivex/internal/operators/flowable/FlowableTimeout$TimeoutSubscriber;->timeout:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v5, v2, v4}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 134
    invoke-interface {v3, v4}, Lorg/reactivestreams/Publisher;->subscribe(Lorg/reactivestreams/Subscriber;)V

    .line 136
    :cond_1
    return-void

    .line 124
    .end local v3    # "p":Lorg/reactivestreams/Publisher;, "Lorg/reactivestreams/Publisher<TV;>;"
    .end local v4    # "tis":Lio/reactivex/internal/operators/flowable/FlowableTimeout$TimeoutInnerSubscriber;, "Lio/reactivex/internal/operators/flowable/FlowableTimeout$TimeoutInnerSubscriber<TT;TU;TV;>;"
    :catchall_0
    move-exception v4

    .line 125
    .restart local v3    # "p":Lorg/reactivestreams/Publisher;, "Lorg/reactivestreams/Publisher<TV;>;"
    .local v4, "e":Ljava/lang/Throwable;
    invoke-static {v4}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 126
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableTimeout$TimeoutSubscriber;->cancel()V

    .line 127
    iget-object v5, p0, Lio/reactivex/internal/operators/flowable/FlowableTimeout$TimeoutSubscriber;->actual:Lorg/reactivestreams/Subscriber;

    invoke-interface {v5, v4}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 128
    return-void
.end method

.method public onSubscribe(Lorg/reactivestreams/Subscription;)V
    .locals 5
    .param p1, "s"    # Lorg/reactivestreams/Subscription;

    .line 83
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableTimeout$TimeoutSubscriber;, "Lio/reactivex/internal/operators/flowable/FlowableTimeout$TimeoutSubscriber<TT;TU;TV;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableTimeout$TimeoutSubscriber;->s:Lorg/reactivestreams/Subscription;

    invoke-static {v0, p1}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->validate(Lorg/reactivestreams/Subscription;Lorg/reactivestreams/Subscription;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 84
    return-void

    .line 86
    :cond_0
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableTimeout$TimeoutSubscriber;->s:Lorg/reactivestreams/Subscription;

    .line 88
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableTimeout$TimeoutSubscriber;->cancelled:Z

    if-eqz v0, :cond_1

    .line 89
    return-void

    .line 92
    :cond_1
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableTimeout$TimeoutSubscriber;->actual:Lorg/reactivestreams/Subscriber;

    .line 94
    .local v0, "a":Lorg/reactivestreams/Subscriber;, "Lorg/reactivestreams/Subscriber<-TT;>;"
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowableTimeout$TimeoutSubscriber;->firstTimeoutIndicator:Lorg/reactivestreams/Publisher;

    .line 96
    .local v1, "p":Lorg/reactivestreams/Publisher;, "Lorg/reactivestreams/Publisher<TU;>;"
    if-eqz v1, :cond_3

    .line 97
    new-instance v2, Lio/reactivex/internal/operators/flowable/FlowableTimeout$TimeoutInnerSubscriber;

    const-wide/16 v3, 0x0

    invoke-direct {v2, p0, v3, v4}, Lio/reactivex/internal/operators/flowable/FlowableTimeout$TimeoutInnerSubscriber;-><init>(Lio/reactivex/internal/operators/flowable/FlowableTimeout$OnTimeout;J)V

    .line 99
    .local v2, "tis":Lio/reactivex/internal/operators/flowable/FlowableTimeout$TimeoutInnerSubscriber;, "Lio/reactivex/internal/operators/flowable/FlowableTimeout$TimeoutInnerSubscriber<TT;TU;TV;>;"
    iget-object v3, p0, Lio/reactivex/internal/operators/flowable/FlowableTimeout$TimeoutSubscriber;->timeout:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v2}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 100
    invoke-interface {v0, p0}, Lorg/reactivestreams/Subscriber;->onSubscribe(Lorg/reactivestreams/Subscription;)V

    .line 101
    invoke-interface {v1, v2}, Lorg/reactivestreams/Publisher;->subscribe(Lorg/reactivestreams/Subscriber;)V

    .line 103
    .end local v2    # "tis":Lio/reactivex/internal/operators/flowable/FlowableTimeout$TimeoutInnerSubscriber;, "Lio/reactivex/internal/operators/flowable/FlowableTimeout$TimeoutInnerSubscriber<TT;TU;TV;>;"
    :cond_2
    goto :goto_0

    .line 104
    :cond_3
    invoke-interface {v0, p0}, Lorg/reactivestreams/Subscriber;->onSubscribe(Lorg/reactivestreams/Subscription;)V

    .line 106
    :goto_0
    return-void
.end method

.method public request(J)V
    .locals 1
    .param p1, "n"    # J

    .line 152
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableTimeout$TimeoutSubscriber;, "Lio/reactivex/internal/operators/flowable/FlowableTimeout$TimeoutSubscriber<TT;TU;TV;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableTimeout$TimeoutSubscriber;->s:Lorg/reactivestreams/Subscription;

    invoke-interface {v0, p1, p2}, Lorg/reactivestreams/Subscription;->request(J)V

    .line 153
    return-void
.end method

.method public timeout(J)V
    .locals 2
    .param p1, "idx"    # J

    .line 164
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableTimeout$TimeoutSubscriber;, "Lio/reactivex/internal/operators/flowable/FlowableTimeout$TimeoutSubscriber<TT;TU;TV;>;"
    iget-wide v0, p0, Lio/reactivex/internal/operators/flowable/FlowableTimeout$TimeoutSubscriber;->index:J

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 165
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableTimeout$TimeoutSubscriber;->cancel()V

    .line 166
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableTimeout$TimeoutSubscriber;->actual:Lorg/reactivestreams/Subscriber;

    new-instance v1, Ljava/util/concurrent/TimeoutException;

    invoke-direct {v1}, Ljava/util/concurrent/TimeoutException;-><init>()V

    invoke-interface {v0, v1}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 168
    :cond_0
    return-void
.end method
