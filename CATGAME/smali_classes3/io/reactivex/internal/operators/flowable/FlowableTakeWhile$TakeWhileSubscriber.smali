.class final Lio/reactivex/internal/operators/flowable/FlowableTakeWhile$TakeWhileSubscriber;
.super Ljava/lang/Object;
.source "FlowableTakeWhile.java"

# interfaces
.implements Lio/reactivex/FlowableSubscriber;
.implements Lorg/reactivestreams/Subscription;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/FlowableTakeWhile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "TakeWhileSubscriber"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
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
            "-TT;>;"
        }
    .end annotation
.end field

.field done:Z

.field final predicate:Lio/reactivex/functions/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/Predicate<",
            "-TT;>;"
        }
    .end annotation
.end field

.field s:Lorg/reactivestreams/Subscription;


# direct methods
.method constructor <init>(Lorg/reactivestreams/Subscriber;Lio/reactivex/functions/Predicate;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/Subscriber<",
            "-TT;>;",
            "Lio/reactivex/functions/Predicate<",
            "-TT;>;)V"
        }
    .end annotation

    .line 44
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableTakeWhile$TakeWhileSubscriber;, "Lio/reactivex/internal/operators/flowable/FlowableTakeWhile$TakeWhileSubscriber<TT;>;"
    .local p1, "actual":Lorg/reactivestreams/Subscriber;, "Lorg/reactivestreams/Subscriber<-TT;>;"
    .local p2, "predicate":Lio/reactivex/functions/Predicate;, "Lio/reactivex/functions/Predicate<-TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableTakeWhile$TakeWhileSubscriber;->actual:Lorg/reactivestreams/Subscriber;

    .line 46
    iput-object p2, p0, Lio/reactivex/internal/operators/flowable/FlowableTakeWhile$TakeWhileSubscriber;->predicate:Lio/reactivex/functions/Predicate;

    .line 47
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .line 108
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableTakeWhile$TakeWhileSubscriber;, "Lio/reactivex/internal/operators/flowable/FlowableTakeWhile$TakeWhileSubscriber<TT;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableTakeWhile$TakeWhileSubscriber;->s:Lorg/reactivestreams/Subscription;

    invoke-interface {v0}, Lorg/reactivestreams/Subscription;->cancel()V

    .line 109
    return-void
.end method

.method public onComplete()V
    .locals 1

    .line 94
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableTakeWhile$TakeWhileSubscriber;, "Lio/reactivex/internal/operators/flowable/FlowableTakeWhile$TakeWhileSubscriber<TT;>;"
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableTakeWhile$TakeWhileSubscriber;->done:Z

    if-eqz v0, :cond_0

    .line 95
    return-void

    .line 97
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableTakeWhile$TakeWhileSubscriber;->done:Z

    .line 98
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableTakeWhile$TakeWhileSubscriber;->actual:Lorg/reactivestreams/Subscriber;

    invoke-interface {v0}, Lorg/reactivestreams/Subscriber;->onComplete()V

    .line 99
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "t"    # Ljava/lang/Throwable;

    .line 84
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableTakeWhile$TakeWhileSubscriber;, "Lio/reactivex/internal/operators/flowable/FlowableTakeWhile$TakeWhileSubscriber<TT;>;"
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableTakeWhile$TakeWhileSubscriber;->done:Z

    if-eqz v0, :cond_0

    .line 85
    invoke-static {p1}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    .line 86
    return-void

    .line 88
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableTakeWhile$TakeWhileSubscriber;->done:Z

    .line 89
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableTakeWhile$TakeWhileSubscriber;->actual:Lorg/reactivestreams/Subscriber;

    invoke-interface {v0, p1}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 90
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 59
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableTakeWhile$TakeWhileSubscriber;, "Lio/reactivex/internal/operators/flowable/FlowableTakeWhile$TakeWhileSubscriber<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableTakeWhile$TakeWhileSubscriber;->done:Z

    if-eqz v0, :cond_0

    .line 60
    return-void

    .line 64
    :cond_0
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowableTakeWhile$TakeWhileSubscriber;->predicate:Lio/reactivex/functions/Predicate;

    invoke-interface {v1, p1}, Lio/reactivex/functions/Predicate;->test(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    .local v0, "b":Z
    nop

    .line 72
    if-nez v0, :cond_1

    .line 73
    const/4 v1, 0x1

    iput-boolean v1, p0, Lio/reactivex/internal/operators/flowable/FlowableTakeWhile$TakeWhileSubscriber;->done:Z

    .line 74
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowableTakeWhile$TakeWhileSubscriber;->s:Lorg/reactivestreams/Subscription;

    invoke-interface {v1}, Lorg/reactivestreams/Subscription;->cancel()V

    .line 75
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowableTakeWhile$TakeWhileSubscriber;->actual:Lorg/reactivestreams/Subscriber;

    invoke-interface {v1}, Lorg/reactivestreams/Subscriber;->onComplete()V

    .line 76
    return-void

    .line 79
    :cond_1
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowableTakeWhile$TakeWhileSubscriber;->actual:Lorg/reactivestreams/Subscriber;

    invoke-interface {v1, p1}, Lorg/reactivestreams/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 80
    return-void

    .line 65
    .end local v0    # "b":Z
    :catchall_0
    move-exception v1

    .line 66
    .restart local v0    # "b":Z
    .local v1, "e":Ljava/lang/Throwable;
    invoke-static {v1}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 67
    iget-object v2, p0, Lio/reactivex/internal/operators/flowable/FlowableTakeWhile$TakeWhileSubscriber;->s:Lorg/reactivestreams/Subscription;

    invoke-interface {v2}, Lorg/reactivestreams/Subscription;->cancel()V

    .line 68
    invoke-virtual {p0, v1}, Lio/reactivex/internal/operators/flowable/FlowableTakeWhile$TakeWhileSubscriber;->onError(Ljava/lang/Throwable;)V

    .line 69
    return-void
.end method

.method public onSubscribe(Lorg/reactivestreams/Subscription;)V
    .locals 1
    .param p1, "s"    # Lorg/reactivestreams/Subscription;

    .line 51
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableTakeWhile$TakeWhileSubscriber;, "Lio/reactivex/internal/operators/flowable/FlowableTakeWhile$TakeWhileSubscriber<TT;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableTakeWhile$TakeWhileSubscriber;->s:Lorg/reactivestreams/Subscription;

    invoke-static {v0, p1}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->validate(Lorg/reactivestreams/Subscription;Lorg/reactivestreams/Subscription;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableTakeWhile$TakeWhileSubscriber;->s:Lorg/reactivestreams/Subscription;

    .line 53
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableTakeWhile$TakeWhileSubscriber;->actual:Lorg/reactivestreams/Subscriber;

    invoke-interface {v0, p0}, Lorg/reactivestreams/Subscriber;->onSubscribe(Lorg/reactivestreams/Subscription;)V

    .line 55
    :cond_0
    return-void
.end method

.method public request(J)V
    .locals 1
    .param p1, "n"    # J

    .line 103
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableTakeWhile$TakeWhileSubscriber;, "Lio/reactivex/internal/operators/flowable/FlowableTakeWhile$TakeWhileSubscriber<TT;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableTakeWhile$TakeWhileSubscriber;->s:Lorg/reactivestreams/Subscription;

    invoke-interface {v0, p1, p2}, Lorg/reactivestreams/Subscription;->request(J)V

    .line 104
    return-void
.end method
