.class final Lio/reactivex/internal/operators/observable/ObservableScanSeed$ScanSeedObserver;
.super Ljava/lang/Object;
.source "ObservableScanSeed.java"

# interfaces
.implements Lio/reactivex/Observer;
.implements Lio/reactivex/disposables/Disposable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/observable/ObservableScanSeed;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ScanSeedObserver"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/Observer<",
        "TT;>;",
        "Lio/reactivex/disposables/Disposable;"
    }
.end annotation


# instance fields
.field final accumulator:Lio/reactivex/functions/BiFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/BiFunction<",
            "TR;-TT;TR;>;"
        }
    .end annotation
.end field

.field final actual:Lio/reactivex/Observer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/Observer<",
            "-TR;>;"
        }
    .end annotation
.end field

.field done:Z

.field s:Lio/reactivex/disposables/Disposable;

.field value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TR;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/reactivex/Observer;Lio/reactivex/functions/BiFunction;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observer<",
            "-TR;>;",
            "Lio/reactivex/functions/BiFunction<",
            "TR;-TT;TR;>;TR;)V"
        }
    .end annotation

    .line 60
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableScanSeed$ScanSeedObserver;, "Lio/reactivex/internal/operators/observable/ObservableScanSeed$ScanSeedObserver<TT;TR;>;"
    .local p1, "actual":Lio/reactivex/Observer;, "Lio/reactivex/Observer<-TR;>;"
    .local p2, "accumulator":Lio/reactivex/functions/BiFunction;, "Lio/reactivex/functions/BiFunction<TR;-TT;TR;>;"
    .local p3, "value":Ljava/lang/Object;, "TR;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableScanSeed$ScanSeedObserver;->actual:Lio/reactivex/Observer;

    .line 62
    iput-object p2, p0, Lio/reactivex/internal/operators/observable/ObservableScanSeed$ScanSeedObserver;->accumulator:Lio/reactivex/functions/BiFunction;

    .line 63
    iput-object p3, p0, Lio/reactivex/internal/operators/observable/ObservableScanSeed$ScanSeedObserver;->value:Ljava/lang/Object;

    .line 64
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 1

    .line 80
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableScanSeed$ScanSeedObserver;, "Lio/reactivex/internal/operators/observable/ObservableScanSeed$ScanSeedObserver<TT;TR;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableScanSeed$ScanSeedObserver;->s:Lio/reactivex/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 81
    return-void
.end method

.method public isDisposed()Z
    .locals 1

    .line 85
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableScanSeed$ScanSeedObserver;, "Lio/reactivex/internal/operators/observable/ObservableScanSeed$ScanSeedObserver<TT;TR;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableScanSeed$ScanSeedObserver;->s:Lio/reactivex/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->isDisposed()Z

    move-result v0

    return v0
.end method

.method public onComplete()V
    .locals 1

    .line 124
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableScanSeed$ScanSeedObserver;, "Lio/reactivex/internal/operators/observable/ObservableScanSeed$ScanSeedObserver<TT;TR;>;"
    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableScanSeed$ScanSeedObserver;->done:Z

    if-eqz v0, :cond_0

    .line 125
    return-void

    .line 127
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableScanSeed$ScanSeedObserver;->done:Z

    .line 128
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableScanSeed$ScanSeedObserver;->actual:Lio/reactivex/Observer;

    invoke-interface {v0}, Lio/reactivex/Observer;->onComplete()V

    .line 129
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "t"    # Ljava/lang/Throwable;

    .line 114
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableScanSeed$ScanSeedObserver;, "Lio/reactivex/internal/operators/observable/ObservableScanSeed$ScanSeedObserver<TT;TR;>;"
    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableScanSeed$ScanSeedObserver;->done:Z

    if-eqz v0, :cond_0

    .line 115
    invoke-static {p1}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    .line 116
    return-void

    .line 118
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableScanSeed$ScanSeedObserver;->done:Z

    .line 119
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableScanSeed$ScanSeedObserver;->actual:Lio/reactivex/Observer;

    invoke-interface {v0, p1}, Lio/reactivex/Observer;->onError(Ljava/lang/Throwable;)V

    .line 120
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 90
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableScanSeed$ScanSeedObserver;, "Lio/reactivex/internal/operators/observable/ObservableScanSeed$ScanSeedObserver<TT;TR;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableScanSeed$ScanSeedObserver;->done:Z

    if-eqz v0, :cond_0

    .line 91
    return-void

    .line 94
    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableScanSeed$ScanSeedObserver;->value:Ljava/lang/Object;

    .line 99
    .local v0, "v":Ljava/lang/Object;, "TR;"
    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lio/reactivex/internal/operators/observable/ObservableScanSeed$ScanSeedObserver;->accumulator:Lio/reactivex/functions/BiFunction;

    invoke-interface {v2, v0, p1}, Lio/reactivex/functions/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "The accumulator returned a null value"

    invoke-static {v2, v3}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 105
    .local v1, "u":Ljava/lang/Object;, "TR;"
    nop

    .line 107
    iput-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableScanSeed$ScanSeedObserver;->value:Ljava/lang/Object;

    .line 109
    iget-object v2, p0, Lio/reactivex/internal/operators/observable/ObservableScanSeed$ScanSeedObserver;->actual:Lio/reactivex/Observer;

    invoke-interface {v2, v1}, Lio/reactivex/Observer;->onNext(Ljava/lang/Object;)V

    .line 110
    return-void

    .line 100
    .end local v1    # "u":Ljava/lang/Object;, "TR;"
    :catchall_0
    move-exception v2

    .line 101
    .restart local v1    # "u":Ljava/lang/Object;, "TR;"
    .local v2, "e":Ljava/lang/Throwable;
    invoke-static {v2}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 102
    iget-object v3, p0, Lio/reactivex/internal/operators/observable/ObservableScanSeed$ScanSeedObserver;->s:Lio/reactivex/disposables/Disposable;

    invoke-interface {v3}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 103
    invoke-virtual {p0, v2}, Lio/reactivex/internal/operators/observable/ObservableScanSeed$ScanSeedObserver;->onError(Ljava/lang/Throwable;)V

    .line 104
    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .locals 2
    .param p1, "s"    # Lio/reactivex/disposables/Disposable;

    .line 68
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableScanSeed$ScanSeedObserver;, "Lio/reactivex/internal/operators/observable/ObservableScanSeed$ScanSeedObserver<TT;TR;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableScanSeed$ScanSeedObserver;->s:Lio/reactivex/disposables/Disposable;

    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->validate(Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/Disposable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableScanSeed$ScanSeedObserver;->s:Lio/reactivex/disposables/Disposable;

    .line 71
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableScanSeed$ScanSeedObserver;->actual:Lio/reactivex/Observer;

    invoke-interface {v0, p0}, Lio/reactivex/Observer;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    .line 73
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableScanSeed$ScanSeedObserver;->actual:Lio/reactivex/Observer;

    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableScanSeed$ScanSeedObserver;->value:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lio/reactivex/Observer;->onNext(Ljava/lang/Object;)V

    .line 75
    :cond_0
    return-void
.end method
