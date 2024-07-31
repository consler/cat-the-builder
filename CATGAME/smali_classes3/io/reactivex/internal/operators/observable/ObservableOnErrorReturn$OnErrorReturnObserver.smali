.class final Lio/reactivex/internal/operators/observable/ObservableOnErrorReturn$OnErrorReturnObserver;
.super Ljava/lang/Object;
.source "ObservableOnErrorReturn.java"

# interfaces
.implements Lio/reactivex/Observer;
.implements Lio/reactivex/disposables/Disposable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/observable/ObservableOnErrorReturn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "OnErrorReturnObserver"
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

.field s:Lio/reactivex/disposables/Disposable;

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
.method constructor <init>(Lio/reactivex/Observer;Lio/reactivex/functions/Function;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observer<",
            "-TT;>;",
            "Lio/reactivex/functions/Function<",
            "-",
            "Ljava/lang/Throwable;",
            "+TT;>;)V"
        }
    .end annotation

    .line 40
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableOnErrorReturn$OnErrorReturnObserver;, "Lio/reactivex/internal/operators/observable/ObservableOnErrorReturn$OnErrorReturnObserver<TT;>;"
    .local p1, "actual":Lio/reactivex/Observer;, "Lio/reactivex/Observer<-TT;>;"
    .local p2, "valueSupplier":Lio/reactivex/functions/Function;, "Lio/reactivex/functions/Function<-Ljava/lang/Throwable;+TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableOnErrorReturn$OnErrorReturnObserver;->actual:Lio/reactivex/Observer;

    .line 42
    iput-object p2, p0, Lio/reactivex/internal/operators/observable/ObservableOnErrorReturn$OnErrorReturnObserver;->valueSupplier:Lio/reactivex/functions/Function;

    .line 43
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 1

    .line 56
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableOnErrorReturn$OnErrorReturnObserver;, "Lio/reactivex/internal/operators/observable/ObservableOnErrorReturn$OnErrorReturnObserver<TT;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableOnErrorReturn$OnErrorReturnObserver;->s:Lio/reactivex/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 57
    return-void
.end method

.method public isDisposed()Z
    .locals 1

    .line 61
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableOnErrorReturn$OnErrorReturnObserver;, "Lio/reactivex/internal/operators/observable/ObservableOnErrorReturn$OnErrorReturnObserver<TT;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableOnErrorReturn$OnErrorReturnObserver;->s:Lio/reactivex/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->isDisposed()Z

    move-result v0

    return v0
.end method

.method public onComplete()V
    .locals 1

    .line 93
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableOnErrorReturn$OnErrorReturnObserver;, "Lio/reactivex/internal/operators/observable/ObservableOnErrorReturn$OnErrorReturnObserver<TT;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableOnErrorReturn$OnErrorReturnObserver;->actual:Lio/reactivex/Observer;

    invoke-interface {v0}, Lio/reactivex/Observer;->onComplete()V

    .line 94
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 6
    .param p1, "t"    # Ljava/lang/Throwable;

    .line 73
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableOnErrorReturn$OnErrorReturnObserver;, "Lio/reactivex/internal/operators/observable/ObservableOnErrorReturn$OnErrorReturnObserver<TT;>;"
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableOnErrorReturn$OnErrorReturnObserver;->valueSupplier:Lio/reactivex/functions/Function;

    invoke-interface {v1, p1}, Lio/reactivex/functions/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    .local v0, "v":Ljava/lang/Object;, "TT;"
    nop

    .line 80
    if-nez v0, :cond_0

    .line 81
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "The supplied value is null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 82
    .local v1, "e":Ljava/lang/NullPointerException;
    invoke-virtual {v1, p1}, Ljava/lang/NullPointerException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 83
    iget-object v2, p0, Lio/reactivex/internal/operators/observable/ObservableOnErrorReturn$OnErrorReturnObserver;->actual:Lio/reactivex/Observer;

    invoke-interface {v2, v1}, Lio/reactivex/Observer;->onError(Ljava/lang/Throwable;)V

    .line 84
    return-void

    .line 87
    .end local v1    # "e":Ljava/lang/NullPointerException;
    :cond_0
    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableOnErrorReturn$OnErrorReturnObserver;->actual:Lio/reactivex/Observer;

    invoke-interface {v1, v0}, Lio/reactivex/Observer;->onNext(Ljava/lang/Object;)V

    .line 88
    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableOnErrorReturn$OnErrorReturnObserver;->actual:Lio/reactivex/Observer;

    invoke-interface {v1}, Lio/reactivex/Observer;->onComplete()V

    .line 89
    return-void

    .line 74
    .end local v0    # "v":Ljava/lang/Object;, "TT;"
    :catchall_0
    move-exception v1

    .line 75
    .restart local v0    # "v":Ljava/lang/Object;, "TT;"
    .local v1, "e":Ljava/lang/Throwable;
    invoke-static {v1}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 76
    iget-object v2, p0, Lio/reactivex/internal/operators/observable/ObservableOnErrorReturn$OnErrorReturnObserver;->actual:Lio/reactivex/Observer;

    new-instance v3, Lio/reactivex/exceptions/CompositeException;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Throwable;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    aput-object v1, v4, v5

    invoke-direct {v3, v4}, Lio/reactivex/exceptions/CompositeException;-><init>([Ljava/lang/Throwable;)V

    invoke-interface {v2, v3}, Lio/reactivex/Observer;->onError(Ljava/lang/Throwable;)V

    .line 77
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 66
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableOnErrorReturn$OnErrorReturnObserver;, "Lio/reactivex/internal/operators/observable/ObservableOnErrorReturn$OnErrorReturnObserver<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableOnErrorReturn$OnErrorReturnObserver;->actual:Lio/reactivex/Observer;

    invoke-interface {v0, p1}, Lio/reactivex/Observer;->onNext(Ljava/lang/Object;)V

    .line 67
    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .locals 1
    .param p1, "s"    # Lio/reactivex/disposables/Disposable;

    .line 47
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableOnErrorReturn$OnErrorReturnObserver;, "Lio/reactivex/internal/operators/observable/ObservableOnErrorReturn$OnErrorReturnObserver<TT;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableOnErrorReturn$OnErrorReturnObserver;->s:Lio/reactivex/disposables/Disposable;

    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->validate(Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/Disposable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 48
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableOnErrorReturn$OnErrorReturnObserver;->s:Lio/reactivex/disposables/Disposable;

    .line 49
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableOnErrorReturn$OnErrorReturnObserver;->actual:Lio/reactivex/Observer;

    invoke-interface {v0, p0}, Lio/reactivex/Observer;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    .line 51
    :cond_0
    return-void
.end method
