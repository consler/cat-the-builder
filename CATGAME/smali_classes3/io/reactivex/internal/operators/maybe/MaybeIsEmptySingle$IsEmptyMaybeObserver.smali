.class final Lio/reactivex/internal/operators/maybe/MaybeIsEmptySingle$IsEmptyMaybeObserver;
.super Ljava/lang/Object;
.source "MaybeIsEmptySingle.java"

# interfaces
.implements Lio/reactivex/MaybeObserver;
.implements Lio/reactivex/disposables/Disposable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/maybe/MaybeIsEmptySingle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "IsEmptyMaybeObserver"
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
.field final actual:Lio/reactivex/SingleObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/SingleObserver<",
            "-",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field d:Lio/reactivex/disposables/Disposable;


# direct methods
.method constructor <init>(Lio/reactivex/SingleObserver;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/SingleObserver<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 59
    .local p0, "this":Lio/reactivex/internal/operators/maybe/MaybeIsEmptySingle$IsEmptyMaybeObserver;, "Lio/reactivex/internal/operators/maybe/MaybeIsEmptySingle$IsEmptyMaybeObserver<TT;>;"
    .local p1, "actual":Lio/reactivex/SingleObserver;, "Lio/reactivex/SingleObserver<-Ljava/lang/Boolean;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Lio/reactivex/internal/operators/maybe/MaybeIsEmptySingle$IsEmptyMaybeObserver;->actual:Lio/reactivex/SingleObserver;

    .line 61
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 1

    .line 65
    .local p0, "this":Lio/reactivex/internal/operators/maybe/MaybeIsEmptySingle$IsEmptyMaybeObserver;, "Lio/reactivex/internal/operators/maybe/MaybeIsEmptySingle$IsEmptyMaybeObserver<TT;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/MaybeIsEmptySingle$IsEmptyMaybeObserver;->d:Lio/reactivex/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 66
    sget-object v0, Lio/reactivex/internal/disposables/DisposableHelper;->DISPOSED:Lio/reactivex/internal/disposables/DisposableHelper;

    iput-object v0, p0, Lio/reactivex/internal/operators/maybe/MaybeIsEmptySingle$IsEmptyMaybeObserver;->d:Lio/reactivex/disposables/Disposable;

    .line 67
    return-void
.end method

.method public isDisposed()Z
    .locals 1

    .line 71
    .local p0, "this":Lio/reactivex/internal/operators/maybe/MaybeIsEmptySingle$IsEmptyMaybeObserver;, "Lio/reactivex/internal/operators/maybe/MaybeIsEmptySingle$IsEmptyMaybeObserver<TT;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/MaybeIsEmptySingle$IsEmptyMaybeObserver;->d:Lio/reactivex/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->isDisposed()Z

    move-result v0

    return v0
.end method

.method public onComplete()V
    .locals 2

    .line 97
    .local p0, "this":Lio/reactivex/internal/operators/maybe/MaybeIsEmptySingle$IsEmptyMaybeObserver;, "Lio/reactivex/internal/operators/maybe/MaybeIsEmptySingle$IsEmptyMaybeObserver<TT;>;"
    sget-object v0, Lio/reactivex/internal/disposables/DisposableHelper;->DISPOSED:Lio/reactivex/internal/disposables/DisposableHelper;

    iput-object v0, p0, Lio/reactivex/internal/operators/maybe/MaybeIsEmptySingle$IsEmptyMaybeObserver;->d:Lio/reactivex/disposables/Disposable;

    .line 98
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/MaybeIsEmptySingle$IsEmptyMaybeObserver;->actual:Lio/reactivex/SingleObserver;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/reactivex/SingleObserver;->onSuccess(Ljava/lang/Object;)V

    .line 99
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .line 91
    .local p0, "this":Lio/reactivex/internal/operators/maybe/MaybeIsEmptySingle$IsEmptyMaybeObserver;, "Lio/reactivex/internal/operators/maybe/MaybeIsEmptySingle$IsEmptyMaybeObserver<TT;>;"
    sget-object v0, Lio/reactivex/internal/disposables/DisposableHelper;->DISPOSED:Lio/reactivex/internal/disposables/DisposableHelper;

    iput-object v0, p0, Lio/reactivex/internal/operators/maybe/MaybeIsEmptySingle$IsEmptyMaybeObserver;->d:Lio/reactivex/disposables/Disposable;

    .line 92
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/MaybeIsEmptySingle$IsEmptyMaybeObserver;->actual:Lio/reactivex/SingleObserver;

    invoke-interface {v0, p1}, Lio/reactivex/SingleObserver;->onError(Ljava/lang/Throwable;)V

    .line 93
    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .locals 1
    .param p1, "d"    # Lio/reactivex/disposables/Disposable;

    .line 76
    .local p0, "this":Lio/reactivex/internal/operators/maybe/MaybeIsEmptySingle$IsEmptyMaybeObserver;, "Lio/reactivex/internal/operators/maybe/MaybeIsEmptySingle$IsEmptyMaybeObserver<TT;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/MaybeIsEmptySingle$IsEmptyMaybeObserver;->d:Lio/reactivex/disposables/Disposable;

    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->validate(Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/Disposable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    iput-object p1, p0, Lio/reactivex/internal/operators/maybe/MaybeIsEmptySingle$IsEmptyMaybeObserver;->d:Lio/reactivex/disposables/Disposable;

    .line 79
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/MaybeIsEmptySingle$IsEmptyMaybeObserver;->actual:Lio/reactivex/SingleObserver;

    invoke-interface {v0, p0}, Lio/reactivex/SingleObserver;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    .line 81
    :cond_0
    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 85
    .local p0, "this":Lio/reactivex/internal/operators/maybe/MaybeIsEmptySingle$IsEmptyMaybeObserver;, "Lio/reactivex/internal/operators/maybe/MaybeIsEmptySingle$IsEmptyMaybeObserver<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    sget-object v0, Lio/reactivex/internal/disposables/DisposableHelper;->DISPOSED:Lio/reactivex/internal/disposables/DisposableHelper;

    iput-object v0, p0, Lio/reactivex/internal/operators/maybe/MaybeIsEmptySingle$IsEmptyMaybeObserver;->d:Lio/reactivex/disposables/Disposable;

    .line 86
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/MaybeIsEmptySingle$IsEmptyMaybeObserver;->actual:Lio/reactivex/SingleObserver;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/reactivex/SingleObserver;->onSuccess(Ljava/lang/Object;)V

    .line 87
    return-void
.end method
