.class public abstract Lio/reactivex/subscribers/DefaultSubscriber;
.super Ljava/lang/Object;
.source "DefaultSubscriber.java"

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
.field private s:Lorg/reactivestreams/Subscription;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 78
    .local p0, "this":Lio/reactivex/subscribers/DefaultSubscriber;, "Lio/reactivex/subscribers/DefaultSubscriber<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected final cancel()V
    .locals 2

    .line 103
    .local p0, "this":Lio/reactivex/subscribers/DefaultSubscriber;, "Lio/reactivex/subscribers/DefaultSubscriber<TT;>;"
    iget-object v0, p0, Lio/reactivex/subscribers/DefaultSubscriber;->s:Lorg/reactivestreams/Subscription;

    .line 104
    .local v0, "s":Lorg/reactivestreams/Subscription;
    sget-object v1, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->CANCELLED:Lio/reactivex/internal/subscriptions/SubscriptionHelper;

    iput-object v1, p0, Lio/reactivex/subscribers/DefaultSubscriber;->s:Lorg/reactivestreams/Subscription;

    .line 105
    invoke-interface {v0}, Lorg/reactivestreams/Subscription;->cancel()V

    .line 106
    return-void
.end method

.method protected onStart()V
    .locals 2

    .line 114
    .local p0, "this":Lio/reactivex/subscribers/DefaultSubscriber;, "Lio/reactivex/subscribers/DefaultSubscriber<TT;>;"
    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Lio/reactivex/subscribers/DefaultSubscriber;->request(J)V

    .line 115
    return-void
.end method

.method public final onSubscribe(Lorg/reactivestreams/Subscription;)V
    .locals 2
    .param p1, "s"    # Lorg/reactivestreams/Subscription;

    .line 82
    .local p0, "this":Lio/reactivex/subscribers/DefaultSubscriber;, "Lio/reactivex/subscribers/DefaultSubscriber<TT;>;"
    iget-object v0, p0, Lio/reactivex/subscribers/DefaultSubscriber;->s:Lorg/reactivestreams/Subscription;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lio/reactivex/internal/util/EndConsumerHelper;->validate(Lorg/reactivestreams/Subscription;Lorg/reactivestreams/Subscription;Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 83
    iput-object p1, p0, Lio/reactivex/subscribers/DefaultSubscriber;->s:Lorg/reactivestreams/Subscription;

    .line 84
    invoke-virtual {p0}, Lio/reactivex/subscribers/DefaultSubscriber;->onStart()V

    .line 86
    :cond_0
    return-void
.end method

.method protected final request(J)V
    .locals 1
    .param p1, "n"    # J

    .line 93
    .local p0, "this":Lio/reactivex/subscribers/DefaultSubscriber;, "Lio/reactivex/subscribers/DefaultSubscriber<TT;>;"
    iget-object v0, p0, Lio/reactivex/subscribers/DefaultSubscriber;->s:Lorg/reactivestreams/Subscription;

    .line 94
    .local v0, "s":Lorg/reactivestreams/Subscription;
    if-eqz v0, :cond_0

    .line 95
    invoke-interface {v0, p1, p2}, Lorg/reactivestreams/Subscription;->request(J)V

    .line 97
    :cond_0
    return-void
.end method
