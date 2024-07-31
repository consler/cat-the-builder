.class final Lio/reactivex/internal/operators/flowable/FlowableMap$MapConditionalSubscriber;
.super Lio/reactivex/internal/subscribers/BasicFuseableConditionalSubscriber;
.source "FlowableMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/FlowableMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "MapConditionalSubscriber"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/subscribers/BasicFuseableConditionalSubscriber<",
        "TT;TU;>;"
    }
.end annotation


# instance fields
.field final mapper:Lio/reactivex/functions/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/Function<",
            "-TT;+TU;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/reactivex/internal/fuseable/ConditionalSubscriber;Lio/reactivex/functions/Function;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/fuseable/ConditionalSubscriber<",
            "-TU;>;",
            "Lio/reactivex/functions/Function<",
            "-TT;+TU;>;)V"
        }
    .end annotation

    .line 89
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableMap$MapConditionalSubscriber;, "Lio/reactivex/internal/operators/flowable/FlowableMap$MapConditionalSubscriber<TT;TU;>;"
    .local p1, "actual":Lio/reactivex/internal/fuseable/ConditionalSubscriber;, "Lio/reactivex/internal/fuseable/ConditionalSubscriber<-TU;>;"
    .local p2, "function":Lio/reactivex/functions/Function;, "Lio/reactivex/functions/Function<-TT;+TU;>;"
    invoke-direct {p0, p1}, Lio/reactivex/internal/subscribers/BasicFuseableConditionalSubscriber;-><init>(Lio/reactivex/internal/fuseable/ConditionalSubscriber;)V

    .line 90
    iput-object p2, p0, Lio/reactivex/internal/operators/flowable/FlowableMap$MapConditionalSubscriber;->mapper:Lio/reactivex/functions/Function;

    .line 91
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

    .line 95
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableMap$MapConditionalSubscriber;, "Lio/reactivex/internal/operators/flowable/FlowableMap$MapConditionalSubscriber<TT;TU;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableMap$MapConditionalSubscriber;->done:Z

    if-eqz v0, :cond_0

    .line 96
    return-void

    .line 99
    :cond_0
    iget v0, p0, Lio/reactivex/internal/operators/flowable/FlowableMap$MapConditionalSubscriber;->sourceMode:I

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 100
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableMap$MapConditionalSubscriber;->actual:Lio/reactivex/internal/fuseable/ConditionalSubscriber;

    invoke-interface {v0, v1}, Lio/reactivex/internal/fuseable/ConditionalSubscriber;->onNext(Ljava/lang/Object;)V

    .line 101
    return-void

    .line 107
    :cond_1
    :try_start_0
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableMap$MapConditionalSubscriber;->mapper:Lio/reactivex/functions/Function;

    invoke-interface {v0, p1}, Lio/reactivex/functions/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v2, "The mapper function returned a null value."

    invoke-static {v0, v2}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 111
    .local v0, "v":Ljava/lang/Object;, "TU;"
    nop

    .line 112
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowableMap$MapConditionalSubscriber;->actual:Lio/reactivex/internal/fuseable/ConditionalSubscriber;

    invoke-interface {v1, v0}, Lio/reactivex/internal/fuseable/ConditionalSubscriber;->onNext(Ljava/lang/Object;)V

    .line 113
    return-void

    .line 108
    .end local v0    # "v":Ljava/lang/Object;, "TU;"
    :catchall_0
    move-exception v0

    .line 109
    .local v0, "ex":Ljava/lang/Throwable;
    .local v1, "v":Ljava/lang/Object;, "TU;"
    invoke-virtual {p0, v0}, Lio/reactivex/internal/operators/flowable/FlowableMap$MapConditionalSubscriber;->fail(Ljava/lang/Throwable;)V

    .line 110
    return-void
.end method

.method public poll()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TU;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 140
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableMap$MapConditionalSubscriber;, "Lio/reactivex/internal/operators/flowable/FlowableMap$MapConditionalSubscriber<TT;TU;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableMap$MapConditionalSubscriber;->qs:Lio/reactivex/internal/fuseable/QueueSubscription;

    invoke-interface {v0}, Lio/reactivex/internal/fuseable/QueueSubscription;->poll()Ljava/lang/Object;

    move-result-object v0

    .line 141
    .local v0, "t":Ljava/lang/Object;, "TT;"
    if-eqz v0, :cond_0

    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowableMap$MapConditionalSubscriber;->mapper:Lio/reactivex/functions/Function;

    invoke-interface {v1, v0}, Lio/reactivex/functions/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "The mapper function returned a null value."

    invoke-static {v1, v2}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public requestFusion(I)I
    .locals 1
    .param p1, "mode"    # I

    .line 134
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableMap$MapConditionalSubscriber;, "Lio/reactivex/internal/operators/flowable/FlowableMap$MapConditionalSubscriber<TT;TU;>;"
    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/flowable/FlowableMap$MapConditionalSubscriber;->transitiveBoundaryFusion(I)I

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

    .line 117
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableMap$MapConditionalSubscriber;, "Lio/reactivex/internal/operators/flowable/FlowableMap$MapConditionalSubscriber<TT;TU;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableMap$MapConditionalSubscriber;->done:Z

    if-eqz v0, :cond_0

    .line 118
    const/4 v0, 0x0

    return v0

    .line 124
    :cond_0
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowableMap$MapConditionalSubscriber;->mapper:Lio/reactivex/functions/Function;

    invoke-interface {v1, p1}, Lio/reactivex/functions/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "The mapper function returned a null value."

    invoke-static {v1, v2}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 128
    .local v0, "v":Ljava/lang/Object;, "TU;"
    nop

    .line 129
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowableMap$MapConditionalSubscriber;->actual:Lio/reactivex/internal/fuseable/ConditionalSubscriber;

    invoke-interface {v1, v0}, Lio/reactivex/internal/fuseable/ConditionalSubscriber;->tryOnNext(Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 125
    .end local v0    # "v":Ljava/lang/Object;, "TU;"
    :catchall_0
    move-exception v1

    .line 126
    .restart local v0    # "v":Ljava/lang/Object;, "TU;"
    .local v1, "ex":Ljava/lang/Throwable;
    invoke-virtual {p0, v1}, Lio/reactivex/internal/operators/flowable/FlowableMap$MapConditionalSubscriber;->fail(Ljava/lang/Throwable;)V

    .line 127
    const/4 v2, 0x1

    return v2
.end method
