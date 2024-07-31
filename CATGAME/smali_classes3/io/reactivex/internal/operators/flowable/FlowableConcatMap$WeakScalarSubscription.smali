.class final Lio/reactivex/internal/operators/flowable/FlowableConcatMap$WeakScalarSubscription;
.super Ljava/lang/Object;
.source "FlowableConcatMap.java"

# interfaces
.implements Lorg/reactivestreams/Subscription;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/FlowableConcatMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "WeakScalarSubscription"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
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

.field once:Z

.field final value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Object;Lorg/reactivestreams/Subscriber;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lorg/reactivestreams/Subscriber<",
            "-TT;>;)V"
        }
    .end annotation

    .line 361
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableConcatMap$WeakScalarSubscription;, "Lio/reactivex/internal/operators/flowable/FlowableConcatMap$WeakScalarSubscription<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    .local p2, "actual":Lorg/reactivestreams/Subscriber;, "Lorg/reactivestreams/Subscriber<-TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 362
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableConcatMap$WeakScalarSubscription;->value:Ljava/lang/Object;

    .line 363
    iput-object p2, p0, Lio/reactivex/internal/operators/flowable/FlowableConcatMap$WeakScalarSubscription;->actual:Lorg/reactivestreams/Subscriber;

    .line 364
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 0

    .line 379
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableConcatMap$WeakScalarSubscription;, "Lio/reactivex/internal/operators/flowable/FlowableConcatMap$WeakScalarSubscription<TT;>;"
    return-void
.end method

.method public request(J)V
    .locals 2
    .param p1, "n"    # J

    .line 368
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableConcatMap$WeakScalarSubscription;, "Lio/reactivex/internal/operators/flowable/FlowableConcatMap$WeakScalarSubscription<TT;>;"
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableConcatMap$WeakScalarSubscription;->once:Z

    if-nez v0, :cond_0

    .line 369
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableConcatMap$WeakScalarSubscription;->once:Z

    .line 370
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableConcatMap$WeakScalarSubscription;->actual:Lorg/reactivestreams/Subscriber;

    .line 371
    .local v0, "a":Lorg/reactivestreams/Subscriber;, "Lorg/reactivestreams/Subscriber<-TT;>;"
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowableConcatMap$WeakScalarSubscription;->value:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lorg/reactivestreams/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 372
    invoke-interface {v0}, Lorg/reactivestreams/Subscriber;->onComplete()V

    .line 374
    .end local v0    # "a":Lorg/reactivestreams/Subscriber;, "Lorg/reactivestreams/Subscriber<-TT;>;"
    :cond_0
    return-void
.end method
