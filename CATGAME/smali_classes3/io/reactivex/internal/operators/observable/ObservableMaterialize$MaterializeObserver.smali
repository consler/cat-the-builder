.class final Lio/reactivex/internal/operators/observable/ObservableMaterialize$MaterializeObserver;
.super Ljava/lang/Object;
.source "ObservableMaterialize.java"

# interfaces
.implements Lio/reactivex/Observer;
.implements Lio/reactivex/disposables/Disposable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/observable/ObservableMaterialize;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "MaterializeObserver"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/Observer<",
        "TT;>;",
        "Lio/reactivex/disposables/Disposable;"
    }
.end annotation


# instance fields
.field final actual:Lio/reactivex/Observer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/Observer<",
            "-",
            "Lio/reactivex/Notification<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field s:Lio/reactivex/disposables/Disposable;


# direct methods
.method constructor <init>(Lio/reactivex/Observer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observer<",
            "-",
            "Lio/reactivex/Notification<",
            "TT;>;>;)V"
        }
    .end annotation

    .line 37
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableMaterialize$MaterializeObserver;, "Lio/reactivex/internal/operators/observable/ObservableMaterialize$MaterializeObserver<TT;>;"
    .local p1, "actual":Lio/reactivex/Observer;, "Lio/reactivex/Observer<-Lio/reactivex/Notification<TT;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableMaterialize$MaterializeObserver;->actual:Lio/reactivex/Observer;

    .line 39
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 1

    .line 52
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableMaterialize$MaterializeObserver;, "Lio/reactivex/internal/operators/observable/ObservableMaterialize$MaterializeObserver<TT;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableMaterialize$MaterializeObserver;->s:Lio/reactivex/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 53
    return-void
.end method

.method public isDisposed()Z
    .locals 1

    .line 57
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableMaterialize$MaterializeObserver;, "Lio/reactivex/internal/operators/observable/ObservableMaterialize$MaterializeObserver<TT;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableMaterialize$MaterializeObserver;->s:Lio/reactivex/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->isDisposed()Z

    move-result v0

    return v0
.end method

.method public onComplete()V
    .locals 2

    .line 74
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableMaterialize$MaterializeObserver;, "Lio/reactivex/internal/operators/observable/ObservableMaterialize$MaterializeObserver<TT;>;"
    invoke-static {}, Lio/reactivex/Notification;->createOnComplete()Lio/reactivex/Notification;

    move-result-object v0

    .line 76
    .local v0, "v":Lio/reactivex/Notification;, "Lio/reactivex/Notification<TT;>;"
    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableMaterialize$MaterializeObserver;->actual:Lio/reactivex/Observer;

    invoke-interface {v1, v0}, Lio/reactivex/Observer;->onNext(Ljava/lang/Object;)V

    .line 77
    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableMaterialize$MaterializeObserver;->actual:Lio/reactivex/Observer;

    invoke-interface {v1}, Lio/reactivex/Observer;->onComplete()V

    .line 78
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "t"    # Ljava/lang/Throwable;

    .line 67
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableMaterialize$MaterializeObserver;, "Lio/reactivex/internal/operators/observable/ObservableMaterialize$MaterializeObserver<TT;>;"
    invoke-static {p1}, Lio/reactivex/Notification;->createOnError(Ljava/lang/Throwable;)Lio/reactivex/Notification;

    move-result-object v0

    .line 68
    .local v0, "v":Lio/reactivex/Notification;, "Lio/reactivex/Notification<TT;>;"
    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableMaterialize$MaterializeObserver;->actual:Lio/reactivex/Observer;

    invoke-interface {v1, v0}, Lio/reactivex/Observer;->onNext(Ljava/lang/Object;)V

    .line 69
    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableMaterialize$MaterializeObserver;->actual:Lio/reactivex/Observer;

    invoke-interface {v1}, Lio/reactivex/Observer;->onComplete()V

    .line 70
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 62
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableMaterialize$MaterializeObserver;, "Lio/reactivex/internal/operators/observable/ObservableMaterialize$MaterializeObserver<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableMaterialize$MaterializeObserver;->actual:Lio/reactivex/Observer;

    invoke-static {p1}, Lio/reactivex/Notification;->createOnNext(Ljava/lang/Object;)Lio/reactivex/Notification;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/reactivex/Observer;->onNext(Ljava/lang/Object;)V

    .line 63
    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .locals 1
    .param p1, "s"    # Lio/reactivex/disposables/Disposable;

    .line 43
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableMaterialize$MaterializeObserver;, "Lio/reactivex/internal/operators/observable/ObservableMaterialize$MaterializeObserver<TT;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableMaterialize$MaterializeObserver;->s:Lio/reactivex/disposables/Disposable;

    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->validate(Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/Disposable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 44
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableMaterialize$MaterializeObserver;->s:Lio/reactivex/disposables/Disposable;

    .line 45
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableMaterialize$MaterializeObserver;->actual:Lio/reactivex/Observer;

    invoke-interface {v0, p0}, Lio/reactivex/Observer;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    .line 47
    :cond_0
    return-void
.end method
