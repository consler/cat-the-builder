.class public final Lio/reactivex/internal/subscribers/FullArbiterSubscriber;
.super Ljava/lang/Object;
.source "FullArbiterSubscriber.java"

# interfaces
.implements Lio/reactivex/FlowableSubscriber;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/FlowableSubscriber<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final arbiter:Lio/reactivex/internal/subscriptions/FullArbiter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/subscriptions/FullArbiter<",
            "TT;>;"
        }
    .end annotation
.end field

.field s:Lorg/reactivestreams/Subscription;


# direct methods
.method public constructor <init>(Lio/reactivex/internal/subscriptions/FullArbiter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/subscriptions/FullArbiter<",
            "TT;>;)V"
        }
    .end annotation

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lio/reactivex/internal/subscribers/FullArbiterSubscriber;->arbiter:Lio/reactivex/internal/subscriptions/FullArbiter;

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 2

    .line 55
    iget-object v0, p0, Lio/reactivex/internal/subscribers/FullArbiterSubscriber;->arbiter:Lio/reactivex/internal/subscriptions/FullArbiter;

    iget-object v1, p0, Lio/reactivex/internal/subscribers/FullArbiterSubscriber;->s:Lorg/reactivestreams/Subscription;

    invoke-virtual {v0, v1}, Lio/reactivex/internal/subscriptions/FullArbiter;->onComplete(Lorg/reactivestreams/Subscription;)V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2

    .line 50
    iget-object v0, p0, Lio/reactivex/internal/subscribers/FullArbiterSubscriber;->arbiter:Lio/reactivex/internal/subscriptions/FullArbiter;

    iget-object v1, p0, Lio/reactivex/internal/subscribers/FullArbiterSubscriber;->s:Lorg/reactivestreams/Subscription;

    invoke-virtual {v0, p1, v1}, Lio/reactivex/internal/subscriptions/FullArbiter;->onError(Ljava/lang/Throwable;Lorg/reactivestreams/Subscription;)V

    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 45
    iget-object v0, p0, Lio/reactivex/internal/subscribers/FullArbiterSubscriber;->arbiter:Lio/reactivex/internal/subscriptions/FullArbiter;

    iget-object v1, p0, Lio/reactivex/internal/subscribers/FullArbiterSubscriber;->s:Lorg/reactivestreams/Subscription;

    invoke-virtual {v0, p1, v1}, Lio/reactivex/internal/subscriptions/FullArbiter;->onNext(Ljava/lang/Object;Lorg/reactivestreams/Subscription;)Z

    return-void
.end method

.method public onSubscribe(Lorg/reactivestreams/Subscription;)V
    .locals 1

    .line 37
    iget-object v0, p0, Lio/reactivex/internal/subscribers/FullArbiterSubscriber;->s:Lorg/reactivestreams/Subscription;

    invoke-static {v0, p1}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->validate(Lorg/reactivestreams/Subscription;Lorg/reactivestreams/Subscription;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 38
    iput-object p1, p0, Lio/reactivex/internal/subscribers/FullArbiterSubscriber;->s:Lorg/reactivestreams/Subscription;

    .line 39
    iget-object v0, p0, Lio/reactivex/internal/subscribers/FullArbiterSubscriber;->arbiter:Lio/reactivex/internal/subscriptions/FullArbiter;

    invoke-virtual {v0, p1}, Lio/reactivex/internal/subscriptions/FullArbiter;->setSubscription(Lorg/reactivestreams/Subscription;)Z

    :cond_0
    return-void
.end method
