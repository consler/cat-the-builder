.class final Lio/reactivex/disposables/SubscriptionDisposable;
.super Lio/reactivex/disposables/ReferenceDisposable;
.source "SubscriptionDisposable.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/reactivex/disposables/ReferenceDisposable<",
        "Lorg/reactivestreams/Subscription;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x9cfc6416eb4a343L


# direct methods
.method constructor <init>(Lorg/reactivestreams/Subscription;)V
    .locals 0
    .param p1, "value"    # Lorg/reactivestreams/Subscription;

    .line 26
    invoke-direct {p0, p1}, Lio/reactivex/disposables/ReferenceDisposable;-><init>(Ljava/lang/Object;)V

    .line 27
    return-void
.end method


# virtual methods
.method protected bridge synthetic onDisposed(Ljava/lang/Object;)V
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .line 21
    move-object v0, p1

    check-cast v0, Lorg/reactivestreams/Subscription;

    invoke-virtual {p0, v0}, Lio/reactivex/disposables/SubscriptionDisposable;->onDisposed(Lorg/reactivestreams/Subscription;)V

    return-void
.end method

.method protected onDisposed(Lorg/reactivestreams/Subscription;)V
    .locals 0
    .param p1, "value"    # Lorg/reactivestreams/Subscription;

    .line 31
    invoke-interface {p1}, Lorg/reactivestreams/Subscription;->cancel()V

    .line 32
    return-void
.end method
