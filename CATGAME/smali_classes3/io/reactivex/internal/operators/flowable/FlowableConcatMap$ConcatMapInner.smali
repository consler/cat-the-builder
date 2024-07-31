.class final Lio/reactivex/internal/operators/flowable/FlowableConcatMap$ConcatMapInner;
.super Lio/reactivex/internal/subscriptions/SubscriptionArbiter;
.source "FlowableConcatMap.java"

# interfaces
.implements Lio/reactivex/FlowableSubscriber;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/FlowableConcatMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ConcatMapInner"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/subscriptions/SubscriptionArbiter;",
        "Lio/reactivex/FlowableSubscriber<",
        "TR;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0xc75368d015d6d3dL


# instance fields
.field final parent:Lio/reactivex/internal/operators/flowable/FlowableConcatMap$ConcatMapSupport;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/operators/flowable/FlowableConcatMap$ConcatMapSupport<",
            "TR;>;"
        }
    .end annotation
.end field

.field produced:J


# direct methods
.method constructor <init>(Lio/reactivex/internal/operators/flowable/FlowableConcatMap$ConcatMapSupport;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/operators/flowable/FlowableConcatMap$ConcatMapSupport<",
            "TR;>;)V"
        }
    .end annotation

    .line 580
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableConcatMap$ConcatMapInner;, "Lio/reactivex/internal/operators/flowable/FlowableConcatMap$ConcatMapInner<TR;>;"
    .local p1, "parent":Lio/reactivex/internal/operators/flowable/FlowableConcatMap$ConcatMapSupport;, "Lio/reactivex/internal/operators/flowable/FlowableConcatMap$ConcatMapSupport<TR;>;"
    invoke-direct {p0}, Lio/reactivex/internal/subscriptions/SubscriptionArbiter;-><init>()V

    .line 581
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableConcatMap$ConcatMapInner;->parent:Lio/reactivex/internal/operators/flowable/FlowableConcatMap$ConcatMapSupport;

    .line 582
    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 5

    .line 610
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableConcatMap$ConcatMapInner;, "Lio/reactivex/internal/operators/flowable/FlowableConcatMap$ConcatMapInner<TR;>;"
    iget-wide v0, p0, Lio/reactivex/internal/operators/flowable/FlowableConcatMap$ConcatMapInner;->produced:J

    .line 612
    .local v0, "p":J
    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 613
    iput-wide v2, p0, Lio/reactivex/internal/operators/flowable/FlowableConcatMap$ConcatMapInner;->produced:J

    .line 614
    invoke-virtual {p0, v0, v1}, Lio/reactivex/internal/operators/flowable/FlowableConcatMap$ConcatMapInner;->produced(J)V

    .line 617
    :cond_0
    iget-object v2, p0, Lio/reactivex/internal/operators/flowable/FlowableConcatMap$ConcatMapInner;->parent:Lio/reactivex/internal/operators/flowable/FlowableConcatMap$ConcatMapSupport;

    invoke-interface {v2}, Lio/reactivex/internal/operators/flowable/FlowableConcatMap$ConcatMapSupport;->innerComplete()V

    .line 618
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 5
    .param p1, "t"    # Ljava/lang/Throwable;

    .line 598
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableConcatMap$ConcatMapInner;, "Lio/reactivex/internal/operators/flowable/FlowableConcatMap$ConcatMapInner<TR;>;"
    iget-wide v0, p0, Lio/reactivex/internal/operators/flowable/FlowableConcatMap$ConcatMapInner;->produced:J

    .line 600
    .local v0, "p":J
    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 601
    iput-wide v2, p0, Lio/reactivex/internal/operators/flowable/FlowableConcatMap$ConcatMapInner;->produced:J

    .line 602
    invoke-virtual {p0, v0, v1}, Lio/reactivex/internal/operators/flowable/FlowableConcatMap$ConcatMapInner;->produced(J)V

    .line 605
    :cond_0
    iget-object v2, p0, Lio/reactivex/internal/operators/flowable/FlowableConcatMap$ConcatMapInner;->parent:Lio/reactivex/internal/operators/flowable/FlowableConcatMap$ConcatMapSupport;

    invoke-interface {v2, p1}, Lio/reactivex/internal/operators/flowable/FlowableConcatMap$ConcatMapSupport;->innerError(Ljava/lang/Throwable;)V

    .line 606
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)V"
        }
    .end annotation

    .line 591
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableConcatMap$ConcatMapInner;, "Lio/reactivex/internal/operators/flowable/FlowableConcatMap$ConcatMapInner<TR;>;"
    .local p1, "t":Ljava/lang/Object;, "TR;"
    iget-wide v0, p0, Lio/reactivex/internal/operators/flowable/FlowableConcatMap$ConcatMapInner;->produced:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lio/reactivex/internal/operators/flowable/FlowableConcatMap$ConcatMapInner;->produced:J

    .line 593
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableConcatMap$ConcatMapInner;->parent:Lio/reactivex/internal/operators/flowable/FlowableConcatMap$ConcatMapSupport;

    invoke-interface {v0, p1}, Lio/reactivex/internal/operators/flowable/FlowableConcatMap$ConcatMapSupport;->innerNext(Ljava/lang/Object;)V

    .line 594
    return-void
.end method

.method public onSubscribe(Lorg/reactivestreams/Subscription;)V
    .locals 0
    .param p1, "s"    # Lorg/reactivestreams/Subscription;

    .line 586
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableConcatMap$ConcatMapInner;, "Lio/reactivex/internal/operators/flowable/FlowableConcatMap$ConcatMapInner<TR;>;"
    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/flowable/FlowableConcatMap$ConcatMapInner;->setSubscription(Lorg/reactivestreams/Subscription;)V

    .line 587
    return-void
.end method
