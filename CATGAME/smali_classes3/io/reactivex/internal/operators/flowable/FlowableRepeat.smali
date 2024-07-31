.class public final Lio/reactivex/internal/operators/flowable/FlowableRepeat;
.super Lio/reactivex/internal/operators/flowable/AbstractFlowableWithUpstream;
.source "FlowableRepeat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/flowable/FlowableRepeat$RepeatSubscriber;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/operators/flowable/AbstractFlowableWithUpstream<",
        "TT;TT;>;"
    }
.end annotation


# instance fields
.field final count:J


# direct methods
.method public constructor <init>(Lio/reactivex/Flowable;J)V
    .locals 0
    .param p2, "count"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Flowable<",
            "TT;>;J)V"
        }
    .end annotation

    .line 26
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableRepeat;, "Lio/reactivex/internal/operators/flowable/FlowableRepeat<TT;>;"
    .local p1, "source":Lio/reactivex/Flowable;, "Lio/reactivex/Flowable<TT;>;"
    invoke-direct {p0, p1}, Lio/reactivex/internal/operators/flowable/AbstractFlowableWithUpstream;-><init>(Lio/reactivex/Flowable;)V

    .line 27
    iput-wide p2, p0, Lio/reactivex/internal/operators/flowable/FlowableRepeat;->count:J

    .line 28
    return-void
.end method


# virtual methods
.method public subscribeActual(Lorg/reactivestreams/Subscriber;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/Subscriber<",
            "-TT;>;)V"
        }
    .end annotation

    .line 32
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableRepeat;, "Lio/reactivex/internal/operators/flowable/FlowableRepeat<TT;>;"
    .local p1, "s":Lorg/reactivestreams/Subscriber;, "Lorg/reactivestreams/Subscriber<-TT;>;"
    new-instance v0, Lio/reactivex/internal/subscriptions/SubscriptionArbiter;

    invoke-direct {v0}, Lio/reactivex/internal/subscriptions/SubscriptionArbiter;-><init>()V

    .line 33
    .local v0, "sa":Lio/reactivex/internal/subscriptions/SubscriptionArbiter;
    invoke-interface {p1, v0}, Lorg/reactivestreams/Subscriber;->onSubscribe(Lorg/reactivestreams/Subscription;)V

    .line 35
    new-instance v7, Lio/reactivex/internal/operators/flowable/FlowableRepeat$RepeatSubscriber;

    iget-wide v1, p0, Lio/reactivex/internal/operators/flowable/FlowableRepeat;->count:J

    const-wide v3, 0x7fffffffffffffffL

    cmp-long v5, v1, v3

    if-eqz v5, :cond_0

    const-wide/16 v3, 0x1

    sub-long/2addr v1, v3

    move-wide v3, v1

    :cond_0
    iget-object v6, p0, Lio/reactivex/internal/operators/flowable/FlowableRepeat;->source:Lio/reactivex/Flowable;

    move-object v1, v7

    move-object v2, p1

    move-object v5, v0

    invoke-direct/range {v1 .. v6}, Lio/reactivex/internal/operators/flowable/FlowableRepeat$RepeatSubscriber;-><init>(Lorg/reactivestreams/Subscriber;JLio/reactivex/internal/subscriptions/SubscriptionArbiter;Lorg/reactivestreams/Publisher;)V

    .line 36
    .local v1, "rs":Lio/reactivex/internal/operators/flowable/FlowableRepeat$RepeatSubscriber;, "Lio/reactivex/internal/operators/flowable/FlowableRepeat$RepeatSubscriber<TT;>;"
    invoke-virtual {v1}, Lio/reactivex/internal/operators/flowable/FlowableRepeat$RepeatSubscriber;->subscribeNext()V

    .line 37
    return-void
.end method
