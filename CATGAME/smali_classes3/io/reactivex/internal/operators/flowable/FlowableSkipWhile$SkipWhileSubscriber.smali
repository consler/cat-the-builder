.class final Lio/reactivex/internal/operators/flowable/FlowableSkipWhile$SkipWhileSubscriber;
.super Ljava/lang/Object;
.source "FlowableSkipWhile.java"

# interfaces
.implements Lio/reactivex/FlowableSubscriber;
.implements Lorg/reactivestreams/Subscription;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/FlowableSkipWhile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "SkipWhileSubscriber"
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

.field notSkipping:Z

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

    .line 40
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableSkipWhile$SkipWhileSubscriber;, "Lio/reactivex/internal/operators/flowable/FlowableSkipWhile$SkipWhileSubscriber<TT;>;"
    .local p1, "actual":Lorg/reactivestreams/Subscriber;, "Lorg/reactivestreams/Subscriber<-TT;>;"
    .local p2, "predicate":Lio/reactivex/functions/Predicate;, "Lio/reactivex/functions/Predicate<-TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableSkipWhile$SkipWhileSubscriber;->actual:Lorg/reactivestreams/Subscriber;

    .line 42
    iput-object p2, p0, Lio/reactivex/internal/operators/flowable/FlowableSkipWhile$SkipWhileSubscriber;->predicate:Lio/reactivex/functions/Predicate;

    .line 43
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .line 93
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableSkipWhile$SkipWhileSubscriber;, "Lio/reactivex/internal/operators/flowable/FlowableSkipWhile$SkipWhileSubscriber<TT;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableSkipWhile$SkipWhileSubscriber;->s:Lorg/reactivestreams/Subscription;

    invoke-interface {v0}, Lorg/reactivestreams/Subscription;->cancel()V

    .line 94
    return-void
.end method

.method public onComplete()V
    .locals 1

    .line 83
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableSkipWhile$SkipWhileSubscriber;, "Lio/reactivex/internal/operators/flowable/FlowableSkipWhile$SkipWhileSubscriber<TT;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableSkipWhile$SkipWhileSubscriber;->actual:Lorg/reactivestreams/Subscriber;

    invoke-interface {v0}, Lorg/reactivestreams/Subscriber;->onComplete()V

    .line 84
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "t"    # Ljava/lang/Throwable;

    .line 78
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableSkipWhile$SkipWhileSubscriber;, "Lio/reactivex/internal/operators/flowable/FlowableSkipWhile$SkipWhileSubscriber<TT;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableSkipWhile$SkipWhileSubscriber;->actual:Lorg/reactivestreams/Subscriber;

    invoke-interface {v0, p1}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 79
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 55
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableSkipWhile$SkipWhileSubscriber;, "Lio/reactivex/internal/operators/flowable/FlowableSkipWhile$SkipWhileSubscriber<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableSkipWhile$SkipWhileSubscriber;->notSkipping:Z

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableSkipWhile$SkipWhileSubscriber;->actual:Lorg/reactivestreams/Subscriber;

    invoke-interface {v0, p1}, Lorg/reactivestreams/Subscriber;->onNext(Ljava/lang/Object;)V

    goto :goto_0

    .line 60
    :cond_0
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowableSkipWhile$SkipWhileSubscriber;->predicate:Lio/reactivex/functions/Predicate;

    invoke-interface {v1, p1}, Lio/reactivex/functions/Predicate;->test(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    .local v0, "b":Z
    nop

    .line 67
    if-eqz v0, :cond_1

    .line 68
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowableSkipWhile$SkipWhileSubscriber;->s:Lorg/reactivestreams/Subscription;

    const-wide/16 v2, 0x1

    invoke-interface {v1, v2, v3}, Lorg/reactivestreams/Subscription;->request(J)V

    goto :goto_0

    .line 70
    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lio/reactivex/internal/operators/flowable/FlowableSkipWhile$SkipWhileSubscriber;->notSkipping:Z

    .line 71
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowableSkipWhile$SkipWhileSubscriber;->actual:Lorg/reactivestreams/Subscriber;

    invoke-interface {v1, p1}, Lorg/reactivestreams/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 74
    .end local v0    # "b":Z
    :goto_0
    return-void

    .line 61
    :catchall_0
    move-exception v1

    .line 62
    .restart local v0    # "b":Z
    .local v1, "e":Ljava/lang/Throwable;
    invoke-static {v1}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 63
    iget-object v2, p0, Lio/reactivex/internal/operators/flowable/FlowableSkipWhile$SkipWhileSubscriber;->s:Lorg/reactivestreams/Subscription;

    invoke-interface {v2}, Lorg/reactivestreams/Subscription;->cancel()V

    .line 64
    iget-object v2, p0, Lio/reactivex/internal/operators/flowable/FlowableSkipWhile$SkipWhileSubscriber;->actual:Lorg/reactivestreams/Subscriber;

    invoke-interface {v2, v1}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 65
    return-void
.end method

.method public onSubscribe(Lorg/reactivestreams/Subscription;)V
    .locals 1
    .param p1, "s"    # Lorg/reactivestreams/Subscription;

    .line 47
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableSkipWhile$SkipWhileSubscriber;, "Lio/reactivex/internal/operators/flowable/FlowableSkipWhile$SkipWhileSubscriber<TT;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableSkipWhile$SkipWhileSubscriber;->s:Lorg/reactivestreams/Subscription;

    invoke-static {v0, p1}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->validate(Lorg/reactivestreams/Subscription;Lorg/reactivestreams/Subscription;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 48
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableSkipWhile$SkipWhileSubscriber;->s:Lorg/reactivestreams/Subscription;

    .line 49
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableSkipWhile$SkipWhileSubscriber;->actual:Lorg/reactivestreams/Subscriber;

    invoke-interface {v0, p0}, Lorg/reactivestreams/Subscriber;->onSubscribe(Lorg/reactivestreams/Subscription;)V

    .line 51
    :cond_0
    return-void
.end method

.method public request(J)V
    .locals 1
    .param p1, "n"    # J

    .line 88
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableSkipWhile$SkipWhileSubscriber;, "Lio/reactivex/internal/operators/flowable/FlowableSkipWhile$SkipWhileSubscriber<TT;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableSkipWhile$SkipWhileSubscriber;->s:Lorg/reactivestreams/Subscription;

    invoke-interface {v0, p1, p2}, Lorg/reactivestreams/Subscription;->request(J)V

    .line 89
    return-void
.end method
