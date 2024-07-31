.class final Lio/reactivex/internal/operators/maybe/MaybeIgnoreElementCompletable$IgnoreMaybeObserver;
.super Ljava/lang/Object;
.source "MaybeIgnoreElementCompletable.java"

# interfaces
.implements Lio/reactivex/MaybeObserver;
.implements Lio/reactivex/disposables/Disposable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/maybe/MaybeIgnoreElementCompletable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "IgnoreMaybeObserver"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/MaybeObserver<",
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
    .param p1, "actual"    # Lio/reactivex/CompletableObserver;

    .line 51
    .local p0, "this":Lio/reactivex/internal/operators/maybe/MaybeIgnoreElementCompletable$IgnoreMaybeObserver;, "Lio/reactivex/internal/operators/maybe/MaybeIgnoreElementCompletable$IgnoreMaybeObserver<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lio/reactivex/internal/operators/maybe/MaybeIgnoreElementCompletable$IgnoreMaybeObserver;->actual:Lio/reactivex/CompletableObserver;

    .line 53
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 1

    .line 89
    .local p0, "this":Lio/reactivex/internal/operators/maybe/MaybeIgnoreElementCompletable$IgnoreMaybeObserver;, "Lio/reactivex/internal/operators/maybe/MaybeIgnoreElementCompletable$IgnoreMaybeObserver<TT;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/MaybeIgnoreElementCompletable$IgnoreMaybeObserver;->d:Lio/reactivex/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 90
    sget-object v0, Lio/reactivex/internal/disposables/DisposableHelper;->DISPOSED:Lio/reactivex/internal/disposables/DisposableHelper;

    iput-object v0, p0, Lio/reactivex/internal/operators/maybe/MaybeIgnoreElementCompletable$IgnoreMaybeObserver;->d:Lio/reactivex/disposables/Disposable;

    .line 91
    return-void
.end method

.method public isDisposed()Z
    .locals 1

    .line 84
    .local p0, "this":Lio/reactivex/internal/operators/maybe/MaybeIgnoreElementCompletable$IgnoreMaybeObserver;, "Lio/reactivex/internal/operators/maybe/MaybeIgnoreElementCompletable$IgnoreMaybeObserver<TT;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/MaybeIgnoreElementCompletable$IgnoreMaybeObserver;->d:Lio/reactivex/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->isDisposed()Z

    move-result v0

    return v0
.end method

.method public onComplete()V
    .locals 1

    .line 78
    .local p0, "this":Lio/reactivex/internal/operators/maybe/MaybeIgnoreElementCompletable$IgnoreMaybeObserver;, "Lio/reactivex/internal/operators/maybe/MaybeIgnoreElementCompletable$IgnoreMaybeObserver<TT;>;"
    sget-object v0, Lio/reactivex/internal/disposables/DisposableHelper;->DISPOSED:Lio/reactivex/internal/disposables/DisposableHelper;

    iput-object v0, p0, Lio/reactivex/internal/operators/maybe/MaybeIgnoreElementCompletable$IgnoreMaybeObserver;->d:Lio/reactivex/disposables/Disposable;

    .line 79
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/MaybeIgnoreElementCompletable$IgnoreMaybeObserver;->actual:Lio/reactivex/CompletableObserver;

    invoke-interface {v0}, Lio/reactivex/CompletableObserver;->onComplete()V

    .line 80
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .line 72
    .local p0, "this":Lio/reactivex/internal/operators/maybe/MaybeIgnoreElementCompletable$IgnoreMaybeObserver;, "Lio/reactivex/internal/operators/maybe/MaybeIgnoreElementCompletable$IgnoreMaybeObserver<TT;>;"
    sget-object v0, Lio/reactivex/internal/disposables/DisposableHelper;->DISPOSED:Lio/reactivex/internal/disposables/DisposableHelper;

    iput-object v0, p0, Lio/reactivex/internal/operators/maybe/MaybeIgnoreElementCompletable$IgnoreMaybeObserver;->d:Lio/reactivex/disposables/Disposable;

    .line 73
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/MaybeIgnoreElementCompletable$IgnoreMaybeObserver;->actual:Lio/reactivex/CompletableObserver;

    invoke-interface {v0, p1}, Lio/reactivex/CompletableObserver;->onError(Ljava/lang/Throwable;)V

    .line 74
    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .locals 1
    .param p1, "d"    # Lio/reactivex/disposables/Disposable;

    .line 57
    .local p0, "this":Lio/reactivex/internal/operators/maybe/MaybeIgnoreElementCompletable$IgnoreMaybeObserver;, "Lio/reactivex/internal/operators/maybe/MaybeIgnoreElementCompletable$IgnoreMaybeObserver<TT;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/MaybeIgnoreElementCompletable$IgnoreMaybeObserver;->d:Lio/reactivex/disposables/Disposable;

    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->validate(Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/Disposable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    iput-object p1, p0, Lio/reactivex/internal/operators/maybe/MaybeIgnoreElementCompletable$IgnoreMaybeObserver;->d:Lio/reactivex/disposables/Disposable;

    .line 60
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/MaybeIgnoreElementCompletable$IgnoreMaybeObserver;->actual:Lio/reactivex/CompletableObserver;

    invoke-interface {v0, p0}, Lio/reactivex/CompletableObserver;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    .line 62
    :cond_0
    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 66
    .local p0, "this":Lio/reactivex/internal/operators/maybe/MaybeIgnoreElementCompletable$IgnoreMaybeObserver;, "Lio/reactivex/internal/operators/maybe/MaybeIgnoreElementCompletable$IgnoreMaybeObserver<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    sget-object v0, Lio/reactivex/internal/disposables/DisposableHelper;->DISPOSED:Lio/reactivex/internal/disposables/DisposableHelper;

    iput-object v0, p0, Lio/reactivex/internal/operators/maybe/MaybeIgnoreElementCompletable$IgnoreMaybeObserver;->d:Lio/reactivex/disposables/Disposable;

    .line 67
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/MaybeIgnoreElementCompletable$IgnoreMaybeObserver;->actual:Lio/reactivex/CompletableObserver;

    invoke-interface {v0}, Lio/reactivex/CompletableObserver;->onComplete()V

    .line 68
    return-void
.end method
