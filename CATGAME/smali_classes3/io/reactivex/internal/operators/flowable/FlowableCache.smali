.class public final Lio/reactivex/internal/operators/flowable/FlowableCache;
.super Lio/reactivex/internal/operators/flowable/AbstractFlowableWithUpstream;
.source "FlowableCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/flowable/FlowableCache$ReplaySubscription;,
        Lio/reactivex/internal/operators/flowable/FlowableCache$CacheState;
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
.field final once:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final state:Lio/reactivex/internal/operators/flowable/FlowableCache$CacheState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/operators/flowable/FlowableCache$CacheState<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/reactivex/Flowable;I)V
    .locals 1
    .param p2, "capacityHint"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Flowable<",
            "TT;>;I)V"
        }
    .end annotation

    .line 44
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableCache;, "Lio/reactivex/internal/operators/flowable/FlowableCache<TT;>;"
    .local p1, "source":Lio/reactivex/Flowable;, "Lio/reactivex/Flowable<TT;>;"
    invoke-direct {p0, p1}, Lio/reactivex/internal/operators/flowable/AbstractFlowableWithUpstream;-><init>(Lio/reactivex/Flowable;)V

    .line 45
    new-instance v0, Lio/reactivex/internal/operators/flowable/FlowableCache$CacheState;

    invoke-direct {v0, p1, p2}, Lio/reactivex/internal/operators/flowable/FlowableCache$CacheState;-><init>(Lio/reactivex/Flowable;I)V

    iput-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableCache;->state:Lio/reactivex/internal/operators/flowable/FlowableCache$CacheState;

    .line 46
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableCache;->once:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 47
    return-void
.end method


# virtual methods
.method cachedEventCount()I
    .locals 1

    .line 86
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableCache;, "Lio/reactivex/internal/operators/flowable/FlowableCache<TT;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableCache;->state:Lio/reactivex/internal/operators/flowable/FlowableCache$CacheState;

    invoke-virtual {v0}, Lio/reactivex/internal/operators/flowable/FlowableCache$CacheState;->size()I

    move-result v0

    return v0
.end method

.method hasSubscribers()Z
    .locals 1

    .line 78
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableCache;, "Lio/reactivex/internal/operators/flowable/FlowableCache<TT;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableCache;->state:Lio/reactivex/internal/operators/flowable/FlowableCache$CacheState;

    iget-object v0, v0, Lio/reactivex/internal/operators/flowable/FlowableCache$CacheState;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/internal/operators/flowable/FlowableCache$ReplaySubscription;

    array-length v0, v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isConnected()Z
    .locals 1

    .line 70
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableCache;, "Lio/reactivex/internal/operators/flowable/FlowableCache<TT;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableCache;->state:Lio/reactivex/internal/operators/flowable/FlowableCache$CacheState;

    iget-boolean v0, v0, Lio/reactivex/internal/operators/flowable/FlowableCache$CacheState;->isConnected:Z

    return v0
.end method

.method protected subscribeActual(Lorg/reactivestreams/Subscriber;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/Subscriber<",
            "-TT;>;)V"
        }
    .end annotation

    .line 52
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableCache;, "Lio/reactivex/internal/operators/flowable/FlowableCache<TT;>;"
    .local p1, "t":Lorg/reactivestreams/Subscriber;, "Lorg/reactivestreams/Subscriber<-TT;>;"
    new-instance v0, Lio/reactivex/internal/operators/flowable/FlowableCache$ReplaySubscription;

    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowableCache;->state:Lio/reactivex/internal/operators/flowable/FlowableCache$CacheState;

    invoke-direct {v0, p1, v1}, Lio/reactivex/internal/operators/flowable/FlowableCache$ReplaySubscription;-><init>(Lorg/reactivestreams/Subscriber;Lio/reactivex/internal/operators/flowable/FlowableCache$CacheState;)V

    .line 53
    .local v0, "rp":Lio/reactivex/internal/operators/flowable/FlowableCache$ReplaySubscription;, "Lio/reactivex/internal/operators/flowable/FlowableCache$ReplaySubscription<TT;>;"
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowableCache;->state:Lio/reactivex/internal/operators/flowable/FlowableCache$CacheState;

    invoke-virtual {v1, v0}, Lio/reactivex/internal/operators/flowable/FlowableCache$CacheState;->addChild(Lio/reactivex/internal/operators/flowable/FlowableCache$ReplaySubscription;)V

    .line 55
    invoke-interface {p1, v0}, Lorg/reactivestreams/Subscriber;->onSubscribe(Lorg/reactivestreams/Subscription;)V

    .line 58
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowableCache;->once:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowableCache;->once:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 59
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowableCache;->state:Lio/reactivex/internal/operators/flowable/FlowableCache$CacheState;

    invoke-virtual {v1}, Lio/reactivex/internal/operators/flowable/FlowableCache$CacheState;->connect()V

    .line 63
    :cond_0
    return-void
.end method
