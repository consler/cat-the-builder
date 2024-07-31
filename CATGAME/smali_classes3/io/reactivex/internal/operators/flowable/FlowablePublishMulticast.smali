.class public final Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast;
.super Lio/reactivex/internal/operators/flowable/AbstractFlowableWithUpstream;
.source "FlowablePublishMulticast.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$MulticastSubscription;,
        Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$MulticastProcessor;,
        Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$OutputCanceller;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/operators/flowable/AbstractFlowableWithUpstream<",
        "TT;TR;>;"
    }
.end annotation


# instance fields
.field final delayError:Z

.field final prefetch:I

.field final selector:Lio/reactivex/functions/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/Function<",
            "-",
            "Lio/reactivex/Flowable<",
            "TT;>;+",
            "Lorg/reactivestreams/Publisher<",
            "+TR;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/reactivex/Flowable;Lio/reactivex/functions/Function;IZ)V
    .locals 0
    .param p3, "prefetch"    # I
    .param p4, "delayError"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Flowable<",
            "TT;>;",
            "Lio/reactivex/functions/Function<",
            "-",
            "Lio/reactivex/Flowable<",
            "TT;>;+",
            "Lorg/reactivestreams/Publisher<",
            "+TR;>;>;IZ)V"
        }
    .end annotation

    .line 50
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast;, "Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast<TT;TR;>;"
    .local p1, "source":Lio/reactivex/Flowable;, "Lio/reactivex/Flowable<TT;>;"
    .local p2, "selector":Lio/reactivex/functions/Function;, "Lio/reactivex/functions/Function<-Lio/reactivex/Flowable<TT;>;+Lorg/reactivestreams/Publisher<+TR;>;>;"
    invoke-direct {p0, p1}, Lio/reactivex/internal/operators/flowable/AbstractFlowableWithUpstream;-><init>(Lio/reactivex/Flowable;)V

    .line 51
    iput-object p2, p0, Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast;->selector:Lio/reactivex/functions/Function;

    .line 52
    iput p3, p0, Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast;->prefetch:I

    .line 53
    iput-boolean p4, p0, Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast;->delayError:Z

    .line 54
    return-void
.end method


# virtual methods
.method protected subscribeActual(Lorg/reactivestreams/Subscriber;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/Subscriber<",
            "-TR;>;)V"
        }
    .end annotation

    .line 58
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast;, "Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast<TT;TR;>;"
    .local p1, "s":Lorg/reactivestreams/Subscriber;, "Lorg/reactivestreams/Subscriber<-TR;>;"
    new-instance v0, Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$MulticastProcessor;

    iget v1, p0, Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast;->prefetch:I

    iget-boolean v2, p0, Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast;->delayError:Z

    invoke-direct {v0, v1, v2}, Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$MulticastProcessor;-><init>(IZ)V

    .line 63
    .local v0, "mp":Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$MulticastProcessor;, "Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$MulticastProcessor<TT;>;"
    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast;->selector:Lio/reactivex/functions/Function;

    invoke-interface {v2, v0}, Lio/reactivex/functions/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "selector returned a null Publisher"

    invoke-static {v2, v3}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/reactivestreams/Publisher;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v1, v2

    .line 68
    .local v1, "other":Lorg/reactivestreams/Publisher;, "Lorg/reactivestreams/Publisher<+TR;>;"
    nop

    .line 70
    new-instance v2, Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$OutputCanceller;

    invoke-direct {v2, p1, v0}, Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$OutputCanceller;-><init>(Lorg/reactivestreams/Subscriber;Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$MulticastProcessor;)V

    .line 72
    .local v2, "out":Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$OutputCanceller;, "Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$OutputCanceller<TR;>;"
    invoke-interface {v1, v2}, Lorg/reactivestreams/Publisher;->subscribe(Lorg/reactivestreams/Subscriber;)V

    .line 74
    iget-object v3, p0, Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast;->source:Lio/reactivex/Flowable;

    invoke-virtual {v3, v0}, Lio/reactivex/Flowable;->subscribe(Lio/reactivex/FlowableSubscriber;)V

    .line 75
    return-void

    .line 64
    .end local v1    # "other":Lorg/reactivestreams/Publisher;, "Lorg/reactivestreams/Publisher<+TR;>;"
    .end local v2    # "out":Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$OutputCanceller;, "Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$OutputCanceller<TR;>;"
    :catchall_0
    move-exception v2

    .line 65
    .restart local v1    # "other":Lorg/reactivestreams/Publisher;, "Lorg/reactivestreams/Publisher<+TR;>;"
    .local v2, "ex":Ljava/lang/Throwable;
    invoke-static {v2}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 66
    invoke-static {v2, p1}, Lio/reactivex/internal/subscriptions/EmptySubscription;->error(Ljava/lang/Throwable;Lorg/reactivestreams/Subscriber;)V

    .line 67
    return-void
.end method
