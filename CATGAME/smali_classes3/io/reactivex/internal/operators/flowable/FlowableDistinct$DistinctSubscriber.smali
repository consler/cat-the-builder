.class final Lio/reactivex/internal/operators/flowable/FlowableDistinct$DistinctSubscriber;
.super Lio/reactivex/internal/subscribers/BasicFuseableSubscriber;
.source "FlowableDistinct.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/FlowableDistinct;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "DistinctSubscriber"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "K:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/subscribers/BasicFuseableSubscriber<",
        "TT;TT;>;"
    }
.end annotation


# instance fields
.field final collection:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "-TK;>;"
        }
    .end annotation
.end field

.field final keySelector:Lio/reactivex/functions/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/Function<",
            "-TT;TK;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lorg/reactivestreams/Subscriber;Lio/reactivex/functions/Function;Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/Subscriber<",
            "-TT;>;",
            "Lio/reactivex/functions/Function<",
            "-TT;TK;>;",
            "Ljava/util/Collection<",
            "-TK;>;)V"
        }
    .end annotation

    .line 65
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableDistinct$DistinctSubscriber;, "Lio/reactivex/internal/operators/flowable/FlowableDistinct$DistinctSubscriber<TT;TK;>;"
    .local p1, "actual":Lorg/reactivestreams/Subscriber;, "Lorg/reactivestreams/Subscriber<-TT;>;"
    .local p2, "keySelector":Lio/reactivex/functions/Function;, "Lio/reactivex/functions/Function<-TT;TK;>;"
    .local p3, "collection":Ljava/util/Collection;, "Ljava/util/Collection<-TK;>;"
    invoke-direct {p0, p1}, Lio/reactivex/internal/subscribers/BasicFuseableSubscriber;-><init>(Lorg/reactivestreams/Subscriber;)V

    .line 66
    iput-object p2, p0, Lio/reactivex/internal/operators/flowable/FlowableDistinct$DistinctSubscriber;->keySelector:Lio/reactivex/functions/Function;

    .line 67
    iput-object p3, p0, Lio/reactivex/internal/operators/flowable/FlowableDistinct$DistinctSubscriber;->collection:Ljava/util/Collection;

    .line 68
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 140
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableDistinct$DistinctSubscriber;, "Lio/reactivex/internal/operators/flowable/FlowableDistinct$DistinctSubscriber<TT;TK;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableDistinct$DistinctSubscriber;->collection:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    .line 141
    invoke-super {p0}, Lio/reactivex/internal/subscribers/BasicFuseableSubscriber;->clear()V

    .line 142
    return-void
.end method

.method public onComplete()V
    .locals 1

    .line 110
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableDistinct$DistinctSubscriber;, "Lio/reactivex/internal/operators/flowable/FlowableDistinct$DistinctSubscriber<TT;TK;>;"
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableDistinct$DistinctSubscriber;->done:Z

    if-nez v0, :cond_0

    .line 111
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableDistinct$DistinctSubscriber;->done:Z

    .line 112
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableDistinct$DistinctSubscriber;->collection:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    .line 113
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableDistinct$DistinctSubscriber;->actual:Lorg/reactivestreams/Subscriber;

    invoke-interface {v0}, Lorg/reactivestreams/Subscriber;->onComplete()V

    .line 115
    :cond_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .line 99
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableDistinct$DistinctSubscriber;, "Lio/reactivex/internal/operators/flowable/FlowableDistinct$DistinctSubscriber<TT;TK;>;"
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableDistinct$DistinctSubscriber;->done:Z

    if-eqz v0, :cond_0

    .line 100
    invoke-static {p1}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 102
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableDistinct$DistinctSubscriber;->done:Z

    .line 103
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableDistinct$DistinctSubscriber;->collection:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    .line 104
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableDistinct$DistinctSubscriber;->actual:Lorg/reactivestreams/Subscriber;

    invoke-interface {v0, p1}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 106
    :goto_0
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 72
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableDistinct$DistinctSubscriber;, "Lio/reactivex/internal/operators/flowable/FlowableDistinct$DistinctSubscriber<TT;TK;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableDistinct$DistinctSubscriber;->done:Z

    if-eqz v0, :cond_0

    .line 73
    return-void

    .line 75
    :cond_0
    iget v0, p0, Lio/reactivex/internal/operators/flowable/FlowableDistinct$DistinctSubscriber;->sourceMode:I

    const/4 v1, 0x0

    if-nez v0, :cond_2

    .line 80
    const/4 v0, 0x0

    :try_start_0
    iget-object v2, p0, Lio/reactivex/internal/operators/flowable/FlowableDistinct$DistinctSubscriber;->keySelector:Lio/reactivex/functions/Function;

    invoke-interface {v2, p1}, Lio/reactivex/functions/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "The keySelector returned a null key"

    invoke-static {v2, v3}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 81
    .local v1, "key":Ljava/lang/Object;, "TK;"
    :try_start_1
    iget-object v2, p0, Lio/reactivex/internal/operators/flowable/FlowableDistinct$DistinctSubscriber;->collection:Ljava/util/Collection;

    invoke-interface {v2, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 85
    .local v0, "b":Z
    nop

    .line 87
    if-eqz v0, :cond_1

    .line 88
    iget-object v2, p0, Lio/reactivex/internal/operators/flowable/FlowableDistinct$DistinctSubscriber;->actual:Lorg/reactivestreams/Subscriber;

    invoke-interface {v2, p1}, Lorg/reactivestreams/Subscriber;->onNext(Ljava/lang/Object;)V

    goto :goto_0

    .line 90
    :cond_1
    iget-object v2, p0, Lio/reactivex/internal/operators/flowable/FlowableDistinct$DistinctSubscriber;->s:Lorg/reactivestreams/Subscription;

    const-wide/16 v3, 0x1

    invoke-interface {v2, v3, v4}, Lorg/reactivestreams/Subscription;->request(J)V

    .line 92
    .end local v0    # "b":Z
    .end local v1    # "key":Ljava/lang/Object;, "TK;"
    :goto_0
    goto :goto_2

    .line 82
    .restart local v1    # "key":Ljava/lang/Object;, "TK;"
    :catchall_0
    move-exception v2

    goto :goto_1

    .end local v1    # "key":Ljava/lang/Object;, "TK;"
    :catchall_1
    move-exception v2

    .line 83
    .restart local v0    # "b":Z
    .restart local v1    # "key":Ljava/lang/Object;, "TK;"
    .local v2, "ex":Ljava/lang/Throwable;
    :goto_1
    invoke-virtual {p0, v2}, Lio/reactivex/internal/operators/flowable/FlowableDistinct$DistinctSubscriber;->fail(Ljava/lang/Throwable;)V

    .line 84
    return-void

    .line 93
    .end local v0    # "b":Z
    .end local v1    # "key":Ljava/lang/Object;, "TK;"
    .end local v2    # "ex":Ljava/lang/Throwable;
    :cond_2
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableDistinct$DistinctSubscriber;->actual:Lorg/reactivestreams/Subscriber;

    invoke-interface {v0, v1}, Lorg/reactivestreams/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 95
    :goto_2
    return-void
.end method

.method public poll()Ljava/lang/Object;
    .locals 4
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

    .line 126
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableDistinct$DistinctSubscriber;, "Lio/reactivex/internal/operators/flowable/FlowableDistinct$DistinctSubscriber<TT;TK;>;"
    :goto_0
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableDistinct$DistinctSubscriber;->qs:Lio/reactivex/internal/fuseable/QueueSubscription;

    invoke-interface {v0}, Lio/reactivex/internal/fuseable/QueueSubscription;->poll()Ljava/lang/Object;

    move-result-object v0

    .line 128
    .local v0, "v":Ljava/lang/Object;, "TT;"
    if-eqz v0, :cond_2

    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowableDistinct$DistinctSubscriber;->collection:Ljava/util/Collection;

    iget-object v2, p0, Lio/reactivex/internal/operators/flowable/FlowableDistinct$DistinctSubscriber;->keySelector:Lio/reactivex/functions/Function;

    invoke-interface {v2, v0}, Lio/reactivex/functions/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "The keySelector returned a null key"

    invoke-static {v2, v3}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 131
    :cond_0
    iget v1, p0, Lio/reactivex/internal/operators/flowable/FlowableDistinct$DistinctSubscriber;->sourceMode:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 132
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowableDistinct$DistinctSubscriber;->s:Lorg/reactivestreams/Subscription;

    const-wide/16 v2, 0x1

    invoke-interface {v1, v2, v3}, Lorg/reactivestreams/Subscription;->request(J)V

    .line 135
    .end local v0    # "v":Ljava/lang/Object;, "TT;"
    :cond_1
    goto :goto_0

    .line 129
    .restart local v0    # "v":Ljava/lang/Object;, "TT;"
    :cond_2
    :goto_1
    return-object v0
.end method

.method public requestFusion(I)I
    .locals 1
    .param p1, "mode"    # I

    .line 119
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableDistinct$DistinctSubscriber;, "Lio/reactivex/internal/operators/flowable/FlowableDistinct$DistinctSubscriber<TT;TK;>;"
    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/flowable/FlowableDistinct$DistinctSubscriber;->transitiveBoundaryFusion(I)I

    move-result v0

    return v0
.end method
