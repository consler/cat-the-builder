.class final Lio/reactivex/internal/operators/flowable/FlowableSamplePublisher$SamplerSubscriber;
.super Ljava/lang/Object;
.source "FlowableSamplePublisher.java"

# interfaces
.implements Lio/reactivex/FlowableSubscriber;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/FlowableSamplePublisher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "SamplerSubscriber"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/FlowableSubscriber<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final parent:Lio/reactivex/internal/operators/flowable/FlowableSamplePublisher$SamplePublisherSubscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/operators/flowable/FlowableSamplePublisher$SamplePublisherSubscriber<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/reactivex/internal/operators/flowable/FlowableSamplePublisher$SamplePublisherSubscriber;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/operators/flowable/FlowableSamplePublisher$SamplePublisherSubscriber<",
            "TT;>;)V"
        }
    .end annotation

    .line 146
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableSamplePublisher$SamplerSubscriber;, "Lio/reactivex/internal/operators/flowable/FlowableSamplePublisher$SamplerSubscriber<TT;>;"
    .local p1, "parent":Lio/reactivex/internal/operators/flowable/FlowableSamplePublisher$SamplePublisherSubscriber;, "Lio/reactivex/internal/operators/flowable/FlowableSamplePublisher$SamplePublisherSubscriber<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 147
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableSamplePublisher$SamplerSubscriber;->parent:Lio/reactivex/internal/operators/flowable/FlowableSamplePublisher$SamplePublisherSubscriber;

    .line 149
    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 1

    .line 170
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableSamplePublisher$SamplerSubscriber;, "Lio/reactivex/internal/operators/flowable/FlowableSamplePublisher$SamplerSubscriber<TT;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableSamplePublisher$SamplerSubscriber;->parent:Lio/reactivex/internal/operators/flowable/FlowableSamplePublisher$SamplePublisherSubscriber;

    invoke-virtual {v0}, Lio/reactivex/internal/operators/flowable/FlowableSamplePublisher$SamplePublisherSubscriber;->complete()V

    .line 171
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "t"    # Ljava/lang/Throwable;

    .line 165
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableSamplePublisher$SamplerSubscriber;, "Lio/reactivex/internal/operators/flowable/FlowableSamplePublisher$SamplerSubscriber<TT;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableSamplePublisher$SamplerSubscriber;->parent:Lio/reactivex/internal/operators/flowable/FlowableSamplePublisher$SamplePublisherSubscriber;

    invoke-virtual {v0, p1}, Lio/reactivex/internal/operators/flowable/FlowableSamplePublisher$SamplePublisherSubscriber;->error(Ljava/lang/Throwable;)V

    .line 166
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 1
    .param p1, "t"    # Ljava/lang/Object;

    .line 160
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableSamplePublisher$SamplerSubscriber;, "Lio/reactivex/internal/operators/flowable/FlowableSamplePublisher$SamplerSubscriber<TT;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableSamplePublisher$SamplerSubscriber;->parent:Lio/reactivex/internal/operators/flowable/FlowableSamplePublisher$SamplePublisherSubscriber;

    invoke-virtual {v0}, Lio/reactivex/internal/operators/flowable/FlowableSamplePublisher$SamplePublisherSubscriber;->run()V

    .line 161
    return-void
.end method

.method public onSubscribe(Lorg/reactivestreams/Subscription;)V
    .locals 2
    .param p1, "s"    # Lorg/reactivestreams/Subscription;

    .line 153
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableSamplePublisher$SamplerSubscriber;, "Lio/reactivex/internal/operators/flowable/FlowableSamplePublisher$SamplerSubscriber<TT;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableSamplePublisher$SamplerSubscriber;->parent:Lio/reactivex/internal/operators/flowable/FlowableSamplePublisher$SamplePublisherSubscriber;

    invoke-virtual {v0, p1}, Lio/reactivex/internal/operators/flowable/FlowableSamplePublisher$SamplePublisherSubscriber;->setOther(Lorg/reactivestreams/Subscription;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 154
    const-wide v0, 0x7fffffffffffffffL

    invoke-interface {p1, v0, v1}, Lorg/reactivestreams/Subscription;->request(J)V

    .line 156
    :cond_0
    return-void
.end method
