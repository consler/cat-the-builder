.class public final Lio/reactivex/internal/util/EndConsumerHelper;
.super Ljava/lang/Object;
.source "EndConsumerHelper.java"


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No instances!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static composeMessage(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "consumer"    # Ljava/lang/String;

    .line 137
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "It is not allowed to subscribe with a(n) "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " multiple times. "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Please create a fresh instance of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " and subscribe that to the target source instead."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static reportDoubleSubscription(Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 148
    .local p0, "consumer":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Lio/reactivex/exceptions/ProtocolViolationException;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lio/reactivex/internal/util/EndConsumerHelper;->composeMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lio/reactivex/exceptions/ProtocolViolationException;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    .line 149
    return-void
.end method

.method public static setOnce(Ljava/util/concurrent/atomic/AtomicReference;Lio/reactivex/disposables/Disposable;Ljava/lang/Class;)Z
    .locals 2
    .param p1, "next"    # Lio/reactivex/disposables/Disposable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lio/reactivex/disposables/Disposable;",
            ">;",
            "Lio/reactivex/disposables/Disposable;",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 75
    .local p0, "upstream":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Lio/reactivex/disposables/Disposable;>;"
    .local p2, "observer":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v0, "next is null"

    invoke-static {p1, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 76
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 77
    invoke-interface {p1}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 78
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lio/reactivex/internal/disposables/DisposableHelper;->DISPOSED:Lio/reactivex/internal/disposables/DisposableHelper;

    if-eq v0, v1, :cond_0

    .line 79
    invoke-static {p2}, Lio/reactivex/internal/util/EndConsumerHelper;->reportDoubleSubscription(Ljava/lang/Class;)V

    .line 81
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 83
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public static setOnce(Ljava/util/concurrent/atomic/AtomicReference;Lorg/reactivestreams/Subscription;Ljava/lang/Class;)Z
    .locals 2
    .param p1, "next"    # Lorg/reactivestreams/Subscription;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lorg/reactivestreams/Subscription;",
            ">;",
            "Lorg/reactivestreams/Subscription;",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 120
    .local p0, "upstream":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Lorg/reactivestreams/Subscription;>;"
    .local p2, "subscriber":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v0, "next is null"

    invoke-static {p1, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 121
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 122
    invoke-interface {p1}, Lorg/reactivestreams/Subscription;->cancel()V

    .line 123
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->CANCELLED:Lio/reactivex/internal/subscriptions/SubscriptionHelper;

    if-eq v0, v1, :cond_0

    .line 124
    invoke-static {p2}, Lio/reactivex/internal/util/EndConsumerHelper;->reportDoubleSubscription(Ljava/lang/Class;)V

    .line 126
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 128
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public static validate(Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/Disposable;Ljava/lang/Class;)Z
    .locals 1
    .param p0, "upstream"    # Lio/reactivex/disposables/Disposable;
    .param p1, "next"    # Lio/reactivex/disposables/Disposable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/disposables/Disposable;",
            "Lio/reactivex/disposables/Disposable;",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 53
    .local p2, "observer":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v0, "next is null"

    invoke-static {p1, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 54
    if-eqz p0, :cond_1

    .line 55
    invoke-interface {p1}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 56
    sget-object v0, Lio/reactivex/internal/disposables/DisposableHelper;->DISPOSED:Lio/reactivex/internal/disposables/DisposableHelper;

    if-eq p0, v0, :cond_0

    .line 57
    invoke-static {p2}, Lio/reactivex/internal/util/EndConsumerHelper;->reportDoubleSubscription(Ljava/lang/Class;)V

    .line 59
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 61
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public static validate(Lorg/reactivestreams/Subscription;Lorg/reactivestreams/Subscription;Ljava/lang/Class;)Z
    .locals 1
    .param p0, "upstream"    # Lorg/reactivestreams/Subscription;
    .param p1, "next"    # Lorg/reactivestreams/Subscription;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/Subscription;",
            "Lorg/reactivestreams/Subscription;",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 98
    .local p2, "subscriber":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v0, "next is null"

    invoke-static {p1, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 99
    if-eqz p0, :cond_1

    .line 100
    invoke-interface {p1}, Lorg/reactivestreams/Subscription;->cancel()V

    .line 101
    sget-object v0, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->CANCELLED:Lio/reactivex/internal/subscriptions/SubscriptionHelper;

    if-eq p0, v0, :cond_0

    .line 102
    invoke-static {p2}, Lio/reactivex/internal/util/EndConsumerHelper;->reportDoubleSubscription(Ljava/lang/Class;)V

    .line 104
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 106
    :cond_1
    const/4 v0, 0x1

    return v0
.end method
