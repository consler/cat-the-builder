.class final Lio/reactivex/internal/operators/observable/ObservableIgnoreElementsCompletable$IgnoreObservable;
.super Ljava/lang/Object;
.source "ObservableIgnoreElementsCompletable.java"

# interfaces
.implements Lio/reactivex/Observer;
.implements Lio/reactivex/disposables/Disposable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/observable/ObservableIgnoreElementsCompletable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "IgnoreObservable"
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
.field final actual:Lio/reactivex/CompletableObserver;

.field d:Lio/reactivex/disposables/Disposable;


# direct methods
.method constructor <init>(Lio/reactivex/CompletableObserver;)V
    .locals 0
    .param p1, "t"    # Lio/reactivex/CompletableObserver;

    .line 44
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableIgnoreElementsCompletable$IgnoreObservable;, "Lio/reactivex/internal/operators/observable/ObservableIgnoreElementsCompletable$IgnoreObservable<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableIgnoreElementsCompletable$IgnoreObservable;->actual:Lio/reactivex/CompletableObserver;

    .line 46
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 1

    .line 71
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableIgnoreElementsCompletable$IgnoreObservable;, "Lio/reactivex/internal/operators/observable/ObservableIgnoreElementsCompletable$IgnoreObservable<TT;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableIgnoreElementsCompletable$IgnoreObservable;->d:Lio/reactivex/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 72
    return-void
.end method

.method public isDisposed()Z
    .locals 1

    .line 76
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableIgnoreElementsCompletable$IgnoreObservable;, "Lio/reactivex/internal/operators/observable/ObservableIgnoreElementsCompletable$IgnoreObservable<TT;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableIgnoreElementsCompletable$IgnoreObservable;->d:Lio/reactivex/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->isDisposed()Z

    move-result v0

    return v0
.end method

.method public onComplete()V
    .locals 1

    .line 66
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableIgnoreElementsCompletable$IgnoreObservable;, "Lio/reactivex/internal/operators/observable/ObservableIgnoreElementsCompletable$IgnoreObservable<TT;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableIgnoreElementsCompletable$IgnoreObservable;->actual:Lio/reactivex/CompletableObserver;

    invoke-interface {v0}, Lio/reactivex/CompletableObserver;->onComplete()V

    .line 67
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .line 61
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableIgnoreElementsCompletable$IgnoreObservable;, "Lio/reactivex/internal/operators/observable/ObservableIgnoreElementsCompletable$IgnoreObservable<TT;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableIgnoreElementsCompletable$IgnoreObservable;->actual:Lio/reactivex/CompletableObserver;

    invoke-interface {v0, p1}, Lio/reactivex/CompletableObserver;->onError(Ljava/lang/Throwable;)V

    .line 62
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 57
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableIgnoreElementsCompletable$IgnoreObservable;, "Lio/reactivex/internal/operators/observable/ObservableIgnoreElementsCompletable$IgnoreObservable<TT;>;"
    .local p1, "v":Ljava/lang/Object;, "TT;"
    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .locals 1
    .param p1, "s"    # Lio/reactivex/disposables/Disposable;

    .line 50
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableIgnoreElementsCompletable$IgnoreObservable;, "Lio/reactivex/internal/operators/observable/ObservableIgnoreElementsCompletable$IgnoreObservable<TT;>;"
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableIgnoreElementsCompletable$IgnoreObservable;->d:Lio/reactivex/disposables/Disposable;

    .line 51
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableIgnoreElementsCompletable$IgnoreObservable;->actual:Lio/reactivex/CompletableObserver;

    invoke-interface {v0, p0}, Lio/reactivex/CompletableObserver;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    .line 52
    return-void
.end method
