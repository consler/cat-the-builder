.class final Lio/reactivex/internal/operators/observable/ObservableHide$HideDisposable;
.super Ljava/lang/Object;
.source "ObservableHide.java"

# interfaces
.implements Lio/reactivex/Observer;
.implements Lio/reactivex/disposables/Disposable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/observable/ObservableHide;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "HideDisposable"
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
            "-TT;>;"
        }
    .end annotation
.end field

.field d:Lio/reactivex/disposables/Disposable;


# direct methods
.method constructor <init>(Lio/reactivex/Observer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observer<",
            "-TT;>;)V"
        }
    .end annotation

    .line 43
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableHide$HideDisposable;, "Lio/reactivex/internal/operators/observable/ObservableHide$HideDisposable<TT;>;"
    .local p1, "actual":Lio/reactivex/Observer;, "Lio/reactivex/Observer<-TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableHide$HideDisposable;->actual:Lio/reactivex/Observer;

    .line 45
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 1

    .line 49
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableHide$HideDisposable;, "Lio/reactivex/internal/operators/observable/ObservableHide$HideDisposable<TT;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableHide$HideDisposable;->d:Lio/reactivex/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 50
    return-void
.end method

.method public isDisposed()Z
    .locals 1

    .line 54
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableHide$HideDisposable;, "Lio/reactivex/internal/operators/observable/ObservableHide$HideDisposable<TT;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableHide$HideDisposable;->d:Lio/reactivex/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->isDisposed()Z

    move-result v0

    return v0
.end method

.method public onComplete()V
    .locals 1

    .line 77
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableHide$HideDisposable;, "Lio/reactivex/internal/operators/observable/ObservableHide$HideDisposable<TT;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableHide$HideDisposable;->actual:Lio/reactivex/Observer;

    invoke-interface {v0}, Lio/reactivex/Observer;->onComplete()V

    .line 78
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "t"    # Ljava/lang/Throwable;

    .line 72
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableHide$HideDisposable;, "Lio/reactivex/internal/operators/observable/ObservableHide$HideDisposable<TT;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableHide$HideDisposable;->actual:Lio/reactivex/Observer;

    invoke-interface {v0, p1}, Lio/reactivex/Observer;->onError(Ljava/lang/Throwable;)V

    .line 73
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 67
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableHide$HideDisposable;, "Lio/reactivex/internal/operators/observable/ObservableHide$HideDisposable<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableHide$HideDisposable;->actual:Lio/reactivex/Observer;

    invoke-interface {v0, p1}, Lio/reactivex/Observer;->onNext(Ljava/lang/Object;)V

    .line 68
    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .locals 1
    .param p1, "d"    # Lio/reactivex/disposables/Disposable;

    .line 59
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableHide$HideDisposable;, "Lio/reactivex/internal/operators/observable/ObservableHide$HideDisposable<TT;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableHide$HideDisposable;->d:Lio/reactivex/disposables/Disposable;

    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->validate(Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/Disposable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableHide$HideDisposable;->d:Lio/reactivex/disposables/Disposable;

    .line 61
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableHide$HideDisposable;->actual:Lio/reactivex/Observer;

    invoke-interface {v0, p0}, Lio/reactivex/Observer;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    .line 63
    :cond_0
    return-void
.end method
