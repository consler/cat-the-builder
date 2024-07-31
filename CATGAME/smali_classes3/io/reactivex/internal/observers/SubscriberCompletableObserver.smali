.class public final Lio/reactivex/internal/observers/SubscriberCompletableObserver;
.super Ljava/lang/Object;
.source "SubscriberCompletableObserver.java"

# interfaces
.implements Lio/reactivex/CompletableObserver;
.implements Lorg/reactivestreams/Subscription;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/CompletableObserver;",
        "Lorg/reactivestreams/Subscription;"
    }
.end annotation


# instance fields
.field d:Lio/reactivex/disposables/Disposable;

.field final subscriber:Lorg/reactivestreams/Subscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/reactivestreams/Subscriber<",
            "-TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/reactivestreams/Subscriber;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/Subscriber<",
            "-TT;>;)V"
        }
    .end annotation

    .line 27
    .local p0, "this":Lio/reactivex/internal/observers/SubscriberCompletableObserver;, "Lio/reactivex/internal/observers/SubscriberCompletableObserver<TT;>;"
    .local p1, "observer":Lorg/reactivestreams/Subscriber;, "Lorg/reactivestreams/Subscriber<-TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lio/reactivex/internal/observers/SubscriberCompletableObserver;->subscriber:Lorg/reactivestreams/Subscriber;

    .line 29
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .line 57
    .local p0, "this":Lio/reactivex/internal/observers/SubscriberCompletableObserver;, "Lio/reactivex/internal/observers/SubscriberCompletableObserver<TT;>;"
    iget-object v0, p0, Lio/reactivex/internal/observers/SubscriberCompletableObserver;->d:Lio/reactivex/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 58
    return-void
.end method

.method public onComplete()V
    .locals 1

    .line 33
    .local p0, "this":Lio/reactivex/internal/observers/SubscriberCompletableObserver;, "Lio/reactivex/internal/observers/SubscriberCompletableObserver<TT;>;"
    iget-object v0, p0, Lio/reactivex/internal/observers/SubscriberCompletableObserver;->subscriber:Lorg/reactivestreams/Subscriber;

    invoke-interface {v0}, Lorg/reactivestreams/Subscriber;->onComplete()V

    .line 34
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .line 38
    .local p0, "this":Lio/reactivex/internal/observers/SubscriberCompletableObserver;, "Lio/reactivex/internal/observers/SubscriberCompletableObserver<TT;>;"
    iget-object v0, p0, Lio/reactivex/internal/observers/SubscriberCompletableObserver;->subscriber:Lorg/reactivestreams/Subscriber;

    invoke-interface {v0, p1}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 39
    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .locals 1
    .param p1, "d"    # Lio/reactivex/disposables/Disposable;

    .line 43
    .local p0, "this":Lio/reactivex/internal/observers/SubscriberCompletableObserver;, "Lio/reactivex/internal/observers/SubscriberCompletableObserver<TT;>;"
    iget-object v0, p0, Lio/reactivex/internal/observers/SubscriberCompletableObserver;->d:Lio/reactivex/disposables/Disposable;

    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->validate(Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/Disposable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 44
    iput-object p1, p0, Lio/reactivex/internal/observers/SubscriberCompletableObserver;->d:Lio/reactivex/disposables/Disposable;

    .line 46
    iget-object v0, p0, Lio/reactivex/internal/observers/SubscriberCompletableObserver;->subscriber:Lorg/reactivestreams/Subscriber;

    invoke-interface {v0, p0}, Lorg/reactivestreams/Subscriber;->onSubscribe(Lorg/reactivestreams/Subscription;)V

    .line 48
    :cond_0
    return-void
.end method

.method public request(J)V
    .locals 0
    .param p1, "n"    # J

    .line 53
    .local p0, "this":Lio/reactivex/internal/observers/SubscriberCompletableObserver;, "Lio/reactivex/internal/observers/SubscriberCompletableObserver<TT;>;"
    return-void
.end method
