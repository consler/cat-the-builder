.class final Lio/reactivex/internal/operators/maybe/MaybeOnErrorReturn$OnErrorReturnMaybeObserver;
.super Ljava/lang/Object;
.source "MaybeOnErrorReturn.java"

# interfaces
.implements Lio/reactivex/MaybeObserver;
.implements Lio/reactivex/disposables/Disposable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/maybe/MaybeOnErrorReturn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "OnErrorReturnMaybeObserver"
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
.field final actual:Lio/reactivex/MaybeObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/MaybeObserver<",
            "-TT;>;"
        }
    .end annotation
.end field

.field d:Lio/reactivex/disposables/Disposable;

.field final valueSupplier:Lio/reactivex/functions/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/Function<",
            "-",
            "Ljava/lang/Throwable;",
            "+TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/reactivex/MaybeObserver;Lio/reactivex/functions/Function;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/MaybeObserver<",
            "-TT;>;",
            "Lio/reactivex/functions/Function<",
            "-",
            "Ljava/lang/Throwable;",
            "+TT;>;)V"
        }
    .end annotation

    .line 51
    .local p0, "this":Lio/reactivex/internal/operators/maybe/MaybeOnErrorReturn$OnErrorReturnMaybeObserver;, "Lio/reactivex/internal/operators/maybe/MaybeOnErrorReturn$OnErrorReturnMaybeObserver<TT;>;"
    .local p1, "actual":Lio/reactivex/MaybeObserver;, "Lio/reactivex/MaybeObserver<-TT;>;"
    .local p2, "valueSupplier":Lio/reactivex/functions/Function;, "Lio/reactivex/functions/Function<-Ljava/lang/Throwable;+TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lio/reactivex/internal/operators/maybe/MaybeOnErrorReturn$OnErrorReturnMaybeObserver;->actual:Lio/reactivex/MaybeObserver;

    .line 53
    iput-object p2, p0, Lio/reactivex/internal/operators/maybe/MaybeOnErrorReturn$OnErrorReturnMaybeObserver;->valueSupplier:Lio/reactivex/functions/Function;

    .line 54
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 1

    .line 58
    .local p0, "this":Lio/reactivex/internal/operators/maybe/MaybeOnErrorReturn$OnErrorReturnMaybeObserver;, "Lio/reactivex/internal/operators/maybe/MaybeOnErrorReturn$OnErrorReturnMaybeObserver<TT;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/MaybeOnErrorReturn$OnErrorReturnMaybeObserver;->d:Lio/reactivex/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 59
    return-void
.end method

.method public isDisposed()Z
    .locals 1

    .line 63
    .local p0, "this":Lio/reactivex/internal/operators/maybe/MaybeOnErrorReturn$OnErrorReturnMaybeObserver;, "Lio/reactivex/internal/operators/maybe/MaybeOnErrorReturn$OnErrorReturnMaybeObserver<TT;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/MaybeOnErrorReturn$OnErrorReturnMaybeObserver;->d:Lio/reactivex/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->isDisposed()Z

    move-result v0

    return v0
.end method

.method public onComplete()V
    .locals 1

    .line 97
    .local p0, "this":Lio/reactivex/internal/operators/maybe/MaybeOnErrorReturn$OnErrorReturnMaybeObserver;, "Lio/reactivex/internal/operators/maybe/MaybeOnErrorReturn$OnErrorReturnMaybeObserver<TT;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/MaybeOnErrorReturn$OnErrorReturnMaybeObserver;->actual:Lio/reactivex/MaybeObserver;

    invoke-interface {v0}, Lio/reactivex/MaybeObserver;->onComplete()V

    .line 98
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 6
    .param p1, "e"    # Ljava/lang/Throwable;

    .line 85
    .local p0, "this":Lio/reactivex/internal/operators/maybe/MaybeOnErrorReturn$OnErrorReturnMaybeObserver;, "Lio/reactivex/internal/operators/maybe/MaybeOnErrorReturn$OnErrorReturnMaybeObserver<TT;>;"
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lio/reactivex/internal/operators/maybe/MaybeOnErrorReturn$OnErrorReturnMaybeObserver;->valueSupplier:Lio/reactivex/functions/Function;

    invoke-interface {v1, p1}, Lio/reactivex/functions/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "The valueSupplier returned a null value"

    invoke-static {v1, v2}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    .local v0, "v":Ljava/lang/Object;, "TT;"
    nop

    .line 92
    iget-object v1, p0, Lio/reactivex/internal/operators/maybe/MaybeOnErrorReturn$OnErrorReturnMaybeObserver;->actual:Lio/reactivex/MaybeObserver;

    invoke-interface {v1, v0}, Lio/reactivex/MaybeObserver;->onSuccess(Ljava/lang/Object;)V

    .line 93
    return-void

    .line 86
    .end local v0    # "v":Ljava/lang/Object;, "TT;"
    :catchall_0
    move-exception v1

    .line 87
    .restart local v0    # "v":Ljava/lang/Object;, "TT;"
    .local v1, "ex":Ljava/lang/Throwable;
    invoke-static {v1}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 88
    iget-object v2, p0, Lio/reactivex/internal/operators/maybe/MaybeOnErrorReturn$OnErrorReturnMaybeObserver;->actual:Lio/reactivex/MaybeObserver;

    new-instance v3, Lio/reactivex/exceptions/CompositeException;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Throwable;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    aput-object v1, v4, v5

    invoke-direct {v3, v4}, Lio/reactivex/exceptions/CompositeException;-><init>([Ljava/lang/Throwable;)V

    invoke-interface {v2, v3}, Lio/reactivex/MaybeObserver;->onError(Ljava/lang/Throwable;)V

    .line 89
    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .locals 1
    .param p1, "d"    # Lio/reactivex/disposables/Disposable;

    .line 68
    .local p0, "this":Lio/reactivex/internal/operators/maybe/MaybeOnErrorReturn$OnErrorReturnMaybeObserver;, "Lio/reactivex/internal/operators/maybe/MaybeOnErrorReturn$OnErrorReturnMaybeObserver<TT;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/MaybeOnErrorReturn$OnErrorReturnMaybeObserver;->d:Lio/reactivex/disposables/Disposable;

    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->validate(Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/Disposable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    iput-object p1, p0, Lio/reactivex/internal/operators/maybe/MaybeOnErrorReturn$OnErrorReturnMaybeObserver;->d:Lio/reactivex/disposables/Disposable;

    .line 71
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/MaybeOnErrorReturn$OnErrorReturnMaybeObserver;->actual:Lio/reactivex/MaybeObserver;

    invoke-interface {v0, p0}, Lio/reactivex/MaybeObserver;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    .line 73
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

    .line 77
    .local p0, "this":Lio/reactivex/internal/operators/maybe/MaybeOnErrorReturn$OnErrorReturnMaybeObserver;, "Lio/reactivex/internal/operators/maybe/MaybeOnErrorReturn$OnErrorReturnMaybeObserver<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/MaybeOnErrorReturn$OnErrorReturnMaybeObserver;->actual:Lio/reactivex/MaybeObserver;

    invoke-interface {v0, p1}, Lio/reactivex/MaybeObserver;->onSuccess(Ljava/lang/Object;)V

    .line 78
    return-void
.end method
