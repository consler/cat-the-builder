.class final Lio/reactivex/internal/operators/flowable/FlowableFilter$FilterSubscriber;
.super Lio/reactivex/internal/subscribers/BasicFuseableSubscriber;
.source "FlowableFilter.java"

# interfaces
.implements Lio/reactivex/internal/fuseable/ConditionalSubscriber;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/FlowableFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "FilterSubscriber"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/subscribers/BasicFuseableSubscriber<",
        "TT;TT;>;",
        "Lio/reactivex/internal/fuseable/ConditionalSubscriber<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final filter:Lio/reactivex/functions/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/Predicate<",
            "-TT;>;"
        }
    .end annotation
.end field


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

    .line 46
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableFilter$FilterSubscriber;, "Lio/reactivex/internal/operators/flowable/FlowableFilter$FilterSubscriber<TT;>;"
    .local p1, "actual":Lorg/reactivestreams/Subscriber;, "Lorg/reactivestreams/Subscriber<-TT;>;"
    .local p2, "filter":Lio/reactivex/functions/Predicate;, "Lio/reactivex/functions/Predicate<-TT;>;"
    invoke-direct {p0, p1}, Lio/reactivex/internal/subscribers/BasicFuseableSubscriber;-><init>(Lorg/reactivestreams/Subscriber;)V

    .line 47
    iput-object p2, p0, Lio/reactivex/internal/operators/flowable/FlowableFilter$FilterSubscriber;->filter:Lio/reactivex/functions/Predicate;

    .line 48
    return-void
.end method


# virtual methods
.method public onNext(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 52
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableFilter$FilterSubscriber;, "Lio/reactivex/internal/operators/flowable/FlowableFilter$FilterSubscriber<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/flowable/FlowableFilter$FilterSubscriber;->tryOnNext(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 53
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableFilter$FilterSubscriber;->s:Lorg/reactivestreams/Subscription;

    const-wide/16 v1, 0x1

    invoke-interface {v0, v1, v2}, Lorg/reactivestreams/Subscription;->request(J)V

    .line 55
    :cond_0
    return-void
.end method

.method public poll()Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 87
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableFilter$FilterSubscriber;, "Lio/reactivex/internal/operators/flowable/FlowableFilter$FilterSubscriber<TT;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableFilter$FilterSubscriber;->qs:Lio/reactivex/internal/fuseable/QueueSubscription;

    .line 88
    .local v0, "qs":Lio/reactivex/internal/fuseable/QueueSubscription;, "Lio/reactivex/internal/fuseable/QueueSubscription<TT;>;"
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowableFilter$FilterSubscriber;->filter:Lio/reactivex/functions/Predicate;

    .line 91
    .local v1, "f":Lio/reactivex/functions/Predicate;, "Lio/reactivex/functions/Predicate<-TT;>;"
    :goto_0
    invoke-interface {v0}, Lio/reactivex/internal/fuseable/QueueSubscription;->poll()Ljava/lang/Object;

    move-result-object v2

    .line 92
    .local v2, "t":Ljava/lang/Object;, "TT;"
    if-nez v2, :cond_0

    .line 93
    const/4 v3, 0x0

    return-object v3

    .line 96
    :cond_0
    invoke-interface {v1, v2}, Lio/reactivex/functions/Predicate;->test(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 97
    return-object v2

    .line 100
    :cond_1
    iget v3, p0, Lio/reactivex/internal/operators/flowable/FlowableFilter$FilterSubscriber;->sourceMode:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    .line 101
    const-wide/16 v3, 0x1

    invoke-interface {v0, v3, v4}, Lio/reactivex/internal/fuseable/QueueSubscription;->request(J)V

    .line 103
    .end local v2    # "t":Ljava/lang/Object;, "TT;"
    :cond_2
    goto :goto_0
.end method

.method public requestFusion(I)I
    .locals 1
    .param p1, "mode"    # I

    .line 81
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableFilter$FilterSubscriber;, "Lio/reactivex/internal/operators/flowable/FlowableFilter$FilterSubscriber<TT;>;"
    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/flowable/FlowableFilter$FilterSubscriber;->transitiveBoundaryFusion(I)I

    move-result v0

    return v0
.end method

.method public tryOnNext(Ljava/lang/Object;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 59
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableFilter$FilterSubscriber;, "Lio/reactivex/internal/operators/flowable/FlowableFilter$FilterSubscriber<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableFilter$FilterSubscriber;->done:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 60
    return v1

    .line 62
    :cond_0
    iget v0, p0, Lio/reactivex/internal/operators/flowable/FlowableFilter$FilterSubscriber;->sourceMode:I

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 63
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableFilter$FilterSubscriber;->actual:Lorg/reactivestreams/Subscriber;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/reactivestreams/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 64
    return v2

    .line 68
    :cond_1
    :try_start_0
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableFilter$FilterSubscriber;->filter:Lio/reactivex/functions/Predicate;

    invoke-interface {v0, p1}, Lio/reactivex/functions/Predicate;->test(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    .local v0, "b":Z
    nop

    .line 73
    if-eqz v0, :cond_2

    .line 74
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowableFilter$FilterSubscriber;->actual:Lorg/reactivestreams/Subscriber;

    invoke-interface {v1, p1}, Lorg/reactivestreams/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 76
    :cond_2
    return v0

    .line 69
    .end local v0    # "b":Z
    :catchall_0
    move-exception v0

    .line 70
    .local v0, "e":Ljava/lang/Throwable;
    .local v1, "b":Z
    invoke-virtual {p0, v0}, Lio/reactivex/internal/operators/flowable/FlowableFilter$FilterSubscriber;->fail(Ljava/lang/Throwable;)V

    .line 71
    return v2
.end method
