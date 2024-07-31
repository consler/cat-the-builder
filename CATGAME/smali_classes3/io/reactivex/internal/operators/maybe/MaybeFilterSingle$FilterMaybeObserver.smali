.class final Lio/reactivex/internal/operators/maybe/MaybeFilterSingle$FilterMaybeObserver;
.super Ljava/lang/Object;
.source "MaybeFilterSingle.java"

# interfaces
.implements Lio/reactivex/SingleObserver;
.implements Lio/reactivex/disposables/Disposable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/maybe/MaybeFilterSingle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "FilterMaybeObserver"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/SingleObserver<",
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

.field final predicate:Lio/reactivex/functions/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/Predicate<",
            "-TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/reactivex/MaybeObserver;Lio/reactivex/functions/Predicate;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/MaybeObserver<",
            "-TT;>;",
            "Lio/reactivex/functions/Predicate<",
            "-TT;>;)V"
        }
    .end annotation

    .line 51
    .local p0, "this":Lio/reactivex/internal/operators/maybe/MaybeFilterSingle$FilterMaybeObserver;, "Lio/reactivex/internal/operators/maybe/MaybeFilterSingle$FilterMaybeObserver<TT;>;"
    .local p1, "actual":Lio/reactivex/MaybeObserver;, "Lio/reactivex/MaybeObserver<-TT;>;"
    .local p2, "predicate":Lio/reactivex/functions/Predicate;, "Lio/reactivex/functions/Predicate<-TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lio/reactivex/internal/operators/maybe/MaybeFilterSingle$FilterMaybeObserver;->actual:Lio/reactivex/MaybeObserver;

    .line 53
    iput-object p2, p0, Lio/reactivex/internal/operators/maybe/MaybeFilterSingle$FilterMaybeObserver;->predicate:Lio/reactivex/functions/Predicate;

    .line 54
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 2

    .line 58
    .local p0, "this":Lio/reactivex/internal/operators/maybe/MaybeFilterSingle$FilterMaybeObserver;, "Lio/reactivex/internal/operators/maybe/MaybeFilterSingle$FilterMaybeObserver<TT;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/MaybeFilterSingle$FilterMaybeObserver;->d:Lio/reactivex/disposables/Disposable;

    .line 59
    .local v0, "d":Lio/reactivex/disposables/Disposable;
    sget-object v1, Lio/reactivex/internal/disposables/DisposableHelper;->DISPOSED:Lio/reactivex/internal/disposables/DisposableHelper;

    iput-object v1, p0, Lio/reactivex/internal/operators/maybe/MaybeFilterSingle$FilterMaybeObserver;->d:Lio/reactivex/disposables/Disposable;

    .line 60
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 61
    return-void
.end method

.method public isDisposed()Z
    .locals 1

    .line 65
    .local p0, "this":Lio/reactivex/internal/operators/maybe/MaybeFilterSingle$FilterMaybeObserver;, "Lio/reactivex/internal/operators/maybe/MaybeFilterSingle$FilterMaybeObserver<TT;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/MaybeFilterSingle$FilterMaybeObserver;->d:Lio/reactivex/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->isDisposed()Z

    move-result v0

    return v0
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .line 98
    .local p0, "this":Lio/reactivex/internal/operators/maybe/MaybeFilterSingle$FilterMaybeObserver;, "Lio/reactivex/internal/operators/maybe/MaybeFilterSingle$FilterMaybeObserver<TT;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/MaybeFilterSingle$FilterMaybeObserver;->actual:Lio/reactivex/MaybeObserver;

    invoke-interface {v0, p1}, Lio/reactivex/MaybeObserver;->onError(Ljava/lang/Throwable;)V

    .line 99
    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .locals 1
    .param p1, "d"    # Lio/reactivex/disposables/Disposable;

    .line 70
    .local p0, "this":Lio/reactivex/internal/operators/maybe/MaybeFilterSingle$FilterMaybeObserver;, "Lio/reactivex/internal/operators/maybe/MaybeFilterSingle$FilterMaybeObserver<TT;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/MaybeFilterSingle$FilterMaybeObserver;->d:Lio/reactivex/disposables/Disposable;

    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->validate(Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/Disposable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    iput-object p1, p0, Lio/reactivex/internal/operators/maybe/MaybeFilterSingle$FilterMaybeObserver;->d:Lio/reactivex/disposables/Disposable;

    .line 73
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/MaybeFilterSingle$FilterMaybeObserver;->actual:Lio/reactivex/MaybeObserver;

    invoke-interface {v0, p0}, Lio/reactivex/MaybeObserver;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    .line 75
    :cond_0
    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 82
    .local p0, "this":Lio/reactivex/internal/operators/maybe/MaybeFilterSingle$FilterMaybeObserver;, "Lio/reactivex/internal/operators/maybe/MaybeFilterSingle$FilterMaybeObserver<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lio/reactivex/internal/operators/maybe/MaybeFilterSingle$FilterMaybeObserver;->predicate:Lio/reactivex/functions/Predicate;

    invoke-interface {v1, p1}, Lio/reactivex/functions/Predicate;->test(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    .local v0, "b":Z
    nop

    .line 89
    if-eqz v0, :cond_0

    .line 90
    iget-object v1, p0, Lio/reactivex/internal/operators/maybe/MaybeFilterSingle$FilterMaybeObserver;->actual:Lio/reactivex/MaybeObserver;

    invoke-interface {v1, p1}, Lio/reactivex/MaybeObserver;->onSuccess(Ljava/lang/Object;)V

    goto :goto_0

    .line 92
    :cond_0
    iget-object v1, p0, Lio/reactivex/internal/operators/maybe/MaybeFilterSingle$FilterMaybeObserver;->actual:Lio/reactivex/MaybeObserver;

    invoke-interface {v1}, Lio/reactivex/MaybeObserver;->onComplete()V

    .line 94
    :goto_0
    return-void

    .line 83
    .end local v0    # "b":Z
    :catchall_0
    move-exception v1

    .line 84
    .restart local v0    # "b":Z
    .local v1, "ex":Ljava/lang/Throwable;
    invoke-static {v1}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 85
    iget-object v2, p0, Lio/reactivex/internal/operators/maybe/MaybeFilterSingle$FilterMaybeObserver;->actual:Lio/reactivex/MaybeObserver;

    invoke-interface {v2, v1}, Lio/reactivex/MaybeObserver;->onError(Ljava/lang/Throwable;)V

    .line 86
    return-void
.end method
