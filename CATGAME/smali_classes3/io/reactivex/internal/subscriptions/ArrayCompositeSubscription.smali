.class public final Lio/reactivex/internal/subscriptions/ArrayCompositeSubscription;
.super Ljava/util/concurrent/atomic/AtomicReferenceArray;
.source "ArrayCompositeSubscription.java"

# interfaces
.implements Lio/reactivex/disposables/Disposable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/atomic/AtomicReferenceArray<",
        "Lorg/reactivestreams/Subscription;",
        ">;",
        "Lio/reactivex/disposables/Disposable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x261d229f8c0b4b20L


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "capacity"    # I

    .line 34
    invoke-direct {p0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;-><init>(I)V

    .line 35
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 4

    .line 84
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lio/reactivex/internal/subscriptions/ArrayCompositeSubscription;->get(I)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->CANCELLED:Lio/reactivex/internal/subscriptions/SubscriptionHelper;

    if-eq v0, v1, :cond_1

    .line 85
    invoke-virtual {p0}, Lio/reactivex/internal/subscriptions/ArrayCompositeSubscription;->length()I

    move-result v0

    .line 86
    .local v0, "s":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 87
    invoke-virtual {p0, v1}, Lio/reactivex/internal/subscriptions/ArrayCompositeSubscription;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/reactivestreams/Subscription;

    .line 88
    .local v2, "o":Lorg/reactivestreams/Subscription;
    sget-object v3, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->CANCELLED:Lio/reactivex/internal/subscriptions/SubscriptionHelper;

    if-eq v2, v3, :cond_0

    .line 89
    sget-object v3, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->CANCELLED:Lio/reactivex/internal/subscriptions/SubscriptionHelper;

    invoke-virtual {p0, v1, v3}, Lio/reactivex/internal/subscriptions/ArrayCompositeSubscription;->getAndSet(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v2, v3

    check-cast v2, Lorg/reactivestreams/Subscription;

    .line 90
    sget-object v3, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->CANCELLED:Lio/reactivex/internal/subscriptions/SubscriptionHelper;

    if-eq v2, v3, :cond_0

    if-eqz v2, :cond_0

    .line 91
    invoke-interface {v2}, Lorg/reactivestreams/Subscription;->cancel()V

    .line 86
    .end local v2    # "o":Lorg/reactivestreams/Subscription;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 96
    .end local v0    # "s":I
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method public isDisposed()Z
    .locals 3

    .line 100
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lio/reactivex/internal/subscriptions/ArrayCompositeSubscription;->get(I)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->CANCELLED:Lio/reactivex/internal/subscriptions/SubscriptionHelper;

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public replaceResource(ILorg/reactivestreams/Subscription;)Lorg/reactivestreams/Subscription;
    .locals 2
    .param p1, "index"    # I
    .param p2, "resource"    # Lorg/reactivestreams/Subscription;

    .line 69
    :goto_0
    invoke-virtual {p0, p1}, Lio/reactivex/internal/subscriptions/ArrayCompositeSubscription;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/reactivestreams/Subscription;

    .line 70
    .local v0, "o":Lorg/reactivestreams/Subscription;
    sget-object v1, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->CANCELLED:Lio/reactivex/internal/subscriptions/SubscriptionHelper;

    if-ne v0, v1, :cond_1

    .line 71
    if-eqz p2, :cond_0

    .line 72
    invoke-interface {p2}, Lorg/reactivestreams/Subscription;->cancel()V

    .line 74
    :cond_0
    const/4 v1, 0x0

    return-object v1

    .line 76
    :cond_1
    invoke-virtual {p0, p1, v0, p2}, Lio/reactivex/internal/subscriptions/ArrayCompositeSubscription;->compareAndSet(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 77
    return-object v0

    .line 79
    .end local v0    # "o":Lorg/reactivestreams/Subscription;
    :cond_2
    goto :goto_0
.end method

.method public setResource(ILorg/reactivestreams/Subscription;)Z
    .locals 2
    .param p1, "index"    # I
    .param p2, "resource"    # Lorg/reactivestreams/Subscription;

    .line 45
    :goto_0
    invoke-virtual {p0, p1}, Lio/reactivex/internal/subscriptions/ArrayCompositeSubscription;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/reactivestreams/Subscription;

    .line 46
    .local v0, "o":Lorg/reactivestreams/Subscription;
    sget-object v1, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->CANCELLED:Lio/reactivex/internal/subscriptions/SubscriptionHelper;

    if-ne v0, v1, :cond_1

    .line 47
    if-eqz p2, :cond_0

    .line 48
    invoke-interface {p2}, Lorg/reactivestreams/Subscription;->cancel()V

    .line 50
    :cond_0
    const/4 v1, 0x0

    return v1

    .line 52
    :cond_1
    invoke-virtual {p0, p1, v0, p2}, Lio/reactivex/internal/subscriptions/ArrayCompositeSubscription;->compareAndSet(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 53
    if-eqz v0, :cond_2

    .line 54
    invoke-interface {v0}, Lorg/reactivestreams/Subscription;->cancel()V

    .line 56
    :cond_2
    const/4 v1, 0x1

    return v1

    .line 58
    .end local v0    # "o":Lorg/reactivestreams/Subscription;
    :cond_3
    goto :goto_0
.end method
