.class public final Lio/reactivex/internal/subscriptions/ScalarSubscription;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "ScalarSubscription.java"

# interfaces
.implements Lio/reactivex/internal/fuseable/QueueSubscription;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "Lio/reactivex/internal/fuseable/QueueSubscription<",
        "TT;>;"
    }
.end annotation


# static fields
.field static final CANCELLED:I = 0x2

.field static final NO_REQUEST:I = 0x0

.field static final REQUESTED:I = 0x1

.field private static final serialVersionUID:J = -0x352a2655229aa299L


# instance fields
.field final subscriber:Lorg/reactivestreams/Subscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/reactivestreams/Subscriber<",
            "-TT;>;"
        }
    .end annotation
.end field

.field final value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/reactivestreams/Subscriber;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/Subscriber<",
            "-TT;>;TT;)V"
        }
    .end annotation

    .line 42
    .local p0, "this":Lio/reactivex/internal/subscriptions/ScalarSubscription;, "Lio/reactivex/internal/subscriptions/ScalarSubscription<TT;>;"
    .local p1, "subscriber":Lorg/reactivestreams/Subscriber;, "Lorg/reactivestreams/Subscriber<-TT;>;"
    .local p2, "value":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 43
    iput-object p1, p0, Lio/reactivex/internal/subscriptions/ScalarSubscription;->subscriber:Lorg/reactivestreams/Subscriber;

    .line 44
    iput-object p2, p0, Lio/reactivex/internal/subscriptions/ScalarSubscription;->value:Ljava/lang/Object;

    .line 45
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .line 65
    .local p0, "this":Lio/reactivex/internal/subscriptions/ScalarSubscription;, "Lio/reactivex/internal/subscriptions/ScalarSubscription<TT;>;"
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lio/reactivex/internal/subscriptions/ScalarSubscription;->lazySet(I)V

    .line 66
    return-void
.end method

.method public clear()V
    .locals 1

    .line 103
    .local p0, "this":Lio/reactivex/internal/subscriptions/ScalarSubscription;, "Lio/reactivex/internal/subscriptions/ScalarSubscription<TT;>;"
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lio/reactivex/internal/subscriptions/ScalarSubscription;->lazySet(I)V

    .line 104
    return-void
.end method

.method public isCancelled()Z
    .locals 2

    .line 73
    .local p0, "this":Lio/reactivex/internal/subscriptions/ScalarSubscription;, "Lio/reactivex/internal/subscriptions/ScalarSubscription<TT;>;"
    invoke-virtual {p0}, Lio/reactivex/internal/subscriptions/ScalarSubscription;->get()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 98
    .local p0, "this":Lio/reactivex/internal/subscriptions/ScalarSubscription;, "Lio/reactivex/internal/subscriptions/ScalarSubscription<TT;>;"
    invoke-virtual {p0}, Lio/reactivex/internal/subscriptions/ScalarSubscription;->get()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public offer(Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 78
    .local p0, "this":Lio/reactivex/internal/subscriptions/ScalarSubscription;, "Lio/reactivex/internal/subscriptions/ScalarSubscription<TT;>;"
    .local p1, "e":Ljava/lang/Object;, "TT;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Should not be called!"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public offer(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)Z"
        }
    .end annotation

    .line 83
    .local p0, "this":Lio/reactivex/internal/subscriptions/ScalarSubscription;, "Lio/reactivex/internal/subscriptions/ScalarSubscription<TT;>;"
    .local p1, "v1":Ljava/lang/Object;, "TT;"
    .local p2, "v2":Ljava/lang/Object;, "TT;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Should not be called!"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public poll()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 89
    .local p0, "this":Lio/reactivex/internal/subscriptions/ScalarSubscription;, "Lio/reactivex/internal/subscriptions/ScalarSubscription<TT;>;"
    invoke-virtual {p0}, Lio/reactivex/internal/subscriptions/ScalarSubscription;->get()I

    move-result v0

    if-nez v0, :cond_0

    .line 90
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lio/reactivex/internal/subscriptions/ScalarSubscription;->lazySet(I)V

    .line 91
    iget-object v0, p0, Lio/reactivex/internal/subscriptions/ScalarSubscription;->value:Ljava/lang/Object;

    return-object v0

    .line 93
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public request(J)V
    .locals 3
    .param p1, "n"    # J

    .line 49
    .local p0, "this":Lio/reactivex/internal/subscriptions/ScalarSubscription;, "Lio/reactivex/internal/subscriptions/ScalarSubscription<TT;>;"
    invoke-static {p1, p2}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->validate(J)Z

    move-result v0

    if-nez v0, :cond_0

    .line 50
    return-void

    .line 52
    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lio/reactivex/internal/subscriptions/ScalarSubscription;->compareAndSet(II)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 53
    iget-object v0, p0, Lio/reactivex/internal/subscriptions/ScalarSubscription;->subscriber:Lorg/reactivestreams/Subscriber;

    .line 55
    .local v0, "s":Lorg/reactivestreams/Subscriber;, "Lorg/reactivestreams/Subscriber<-TT;>;"
    iget-object v1, p0, Lio/reactivex/internal/subscriptions/ScalarSubscription;->value:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lorg/reactivestreams/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 56
    invoke-virtual {p0}, Lio/reactivex/internal/subscriptions/ScalarSubscription;->get()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    .line 57
    invoke-interface {v0}, Lorg/reactivestreams/Subscriber;->onComplete()V

    .line 61
    .end local v0    # "s":Lorg/reactivestreams/Subscriber;, "Lorg/reactivestreams/Subscriber<-TT;>;"
    :cond_1
    return-void
.end method

.method public requestFusion(I)I
    .locals 1
    .param p1, "mode"    # I

    .line 108
    .local p0, "this":Lio/reactivex/internal/subscriptions/ScalarSubscription;, "Lio/reactivex/internal/subscriptions/ScalarSubscription<TT;>;"
    and-int/lit8 v0, p1, 0x1

    return v0
.end method
