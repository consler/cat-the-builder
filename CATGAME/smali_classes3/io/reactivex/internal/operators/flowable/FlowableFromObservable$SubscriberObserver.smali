.class Lio/reactivex/internal/operators/flowable/FlowableFromObservable$SubscriberObserver;
.super Ljava/lang/Object;
.source "FlowableFromObservable.java"

# interfaces
.implements Lio/reactivex/Observer;
.implements Lorg/reactivestreams/Subscription;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/FlowableFromObservable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SubscriberObserver"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/Observer<",
        "TT;>;",
        "Lorg/reactivestreams/Subscription;"
    }
.end annotation


# instance fields
.field private d:Lio/reactivex/disposables/Disposable;

.field private final s:Lorg/reactivestreams/Subscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/reactivestreams/Subscriber<",
            "-TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lorg/reactivestreams/Subscriber;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/Subscriber<",
            "-TT;>;)V"
        }
    .end annotation

    .line 36
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableFromObservable$SubscriberObserver;, "Lio/reactivex/internal/operators/flowable/FlowableFromObservable$SubscriberObserver<TT;>;"
    .local p1, "s":Lorg/reactivestreams/Subscriber;, "Lorg/reactivestreams/Subscriber<-TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableFromObservable$SubscriberObserver;->s:Lorg/reactivestreams/Subscriber;

    .line 38
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .line 62
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableFromObservable$SubscriberObserver;, "Lio/reactivex/internal/operators/flowable/FlowableFromObservable$SubscriberObserver<TT;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableFromObservable$SubscriberObserver;->d:Lio/reactivex/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 63
    return-void
.end method

.method public onComplete()V
    .locals 1

    .line 42
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableFromObservable$SubscriberObserver;, "Lio/reactivex/internal/operators/flowable/FlowableFromObservable$SubscriberObserver<TT;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableFromObservable$SubscriberObserver;->s:Lorg/reactivestreams/Subscriber;

    invoke-interface {v0}, Lorg/reactivestreams/Subscriber;->onComplete()V

    .line 43
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .line 47
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableFromObservable$SubscriberObserver;, "Lio/reactivex/internal/operators/flowable/FlowableFromObservable$SubscriberObserver<TT;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableFromObservable$SubscriberObserver;->s:Lorg/reactivestreams/Subscriber;

    invoke-interface {v0, p1}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 48
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 52
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableFromObservable$SubscriberObserver;, "Lio/reactivex/internal/operators/flowable/FlowableFromObservable$SubscriberObserver<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableFromObservable$SubscriberObserver;->s:Lorg/reactivestreams/Subscriber;

    invoke-interface {v0, p1}, Lorg/reactivestreams/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 53
    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .locals 1
    .param p1, "d"    # Lio/reactivex/disposables/Disposable;

    .line 57
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableFromObservable$SubscriberObserver;, "Lio/reactivex/internal/operators/flowable/FlowableFromObservable$SubscriberObserver<TT;>;"
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableFromObservable$SubscriberObserver;->d:Lio/reactivex/disposables/Disposable;

    .line 58
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableFromObservable$SubscriberObserver;->s:Lorg/reactivestreams/Subscriber;

    invoke-interface {v0, p0}, Lorg/reactivestreams/Subscriber;->onSubscribe(Lorg/reactivestreams/Subscription;)V

    .line 59
    return-void
.end method

.method public request(J)V
    .locals 0
    .param p1, "n"    # J

    .line 68
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableFromObservable$SubscriberObserver;, "Lio/reactivex/internal/operators/flowable/FlowableFromObservable$SubscriberObserver<TT;>;"
    return-void
.end method
