.class final Lio/reactivex/processors/AsyncProcessor$AsyncSubscription;
.super Lio/reactivex/internal/subscriptions/DeferredScalarSubscription;
.source "AsyncProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/processors/AsyncProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "AsyncSubscription"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/subscriptions/DeferredScalarSubscription<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x4e215678802bc8d0L


# instance fields
.field final parent:Lio/reactivex/processors/AsyncProcessor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/processors/AsyncProcessor<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lorg/reactivestreams/Subscriber;Lio/reactivex/processors/AsyncProcessor;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/Subscriber<",
            "-TT;>;",
            "Lio/reactivex/processors/AsyncProcessor<",
            "TT;>;)V"
        }
    .end annotation

    .line 303
    .local p0, "this":Lio/reactivex/processors/AsyncProcessor$AsyncSubscription;, "Lio/reactivex/processors/AsyncProcessor$AsyncSubscription<TT;>;"
    .local p1, "actual":Lorg/reactivestreams/Subscriber;, "Lorg/reactivestreams/Subscriber<-TT;>;"
    .local p2, "parent":Lio/reactivex/processors/AsyncProcessor;, "Lio/reactivex/processors/AsyncProcessor<TT;>;"
    invoke-direct {p0, p1}, Lio/reactivex/internal/subscriptions/DeferredScalarSubscription;-><init>(Lorg/reactivestreams/Subscriber;)V

    .line 304
    iput-object p2, p0, Lio/reactivex/processors/AsyncProcessor$AsyncSubscription;->parent:Lio/reactivex/processors/AsyncProcessor;

    .line 305
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .line 309
    .local p0, "this":Lio/reactivex/processors/AsyncProcessor$AsyncSubscription;, "Lio/reactivex/processors/AsyncProcessor$AsyncSubscription<TT;>;"
    invoke-super {p0}, Lio/reactivex/internal/subscriptions/DeferredScalarSubscription;->tryCancel()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 310
    iget-object v0, p0, Lio/reactivex/processors/AsyncProcessor$AsyncSubscription;->parent:Lio/reactivex/processors/AsyncProcessor;

    invoke-virtual {v0, p0}, Lio/reactivex/processors/AsyncProcessor;->remove(Lio/reactivex/processors/AsyncProcessor$AsyncSubscription;)V

    .line 312
    :cond_0
    return-void
.end method

.method onComplete()V
    .locals 1

    .line 315
    .local p0, "this":Lio/reactivex/processors/AsyncProcessor$AsyncSubscription;, "Lio/reactivex/processors/AsyncProcessor$AsyncSubscription<TT;>;"
    invoke-virtual {p0}, Lio/reactivex/processors/AsyncProcessor$AsyncSubscription;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 316
    iget-object v0, p0, Lio/reactivex/processors/AsyncProcessor$AsyncSubscription;->actual:Lorg/reactivestreams/Subscriber;

    invoke-interface {v0}, Lorg/reactivestreams/Subscriber;->onComplete()V

    .line 318
    :cond_0
    return-void
.end method

.method onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "t"    # Ljava/lang/Throwable;

    .line 321
    .local p0, "this":Lio/reactivex/processors/AsyncProcessor$AsyncSubscription;, "Lio/reactivex/processors/AsyncProcessor$AsyncSubscription<TT;>;"
    invoke-virtual {p0}, Lio/reactivex/processors/AsyncProcessor$AsyncSubscription;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 322
    invoke-static {p1}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 324
    :cond_0
    iget-object v0, p0, Lio/reactivex/processors/AsyncProcessor$AsyncSubscription;->actual:Lorg/reactivestreams/Subscriber;

    invoke-interface {v0, p1}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 326
    :goto_0
    return-void
.end method
