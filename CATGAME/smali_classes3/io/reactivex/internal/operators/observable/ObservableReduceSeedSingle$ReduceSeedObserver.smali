.class final Lio/reactivex/internal/operators/observable/ObservableReduceSeedSingle$ReduceSeedObserver;
.super Ljava/lang/Object;
.source "ObservableReduceSeedSingle.java"

# interfaces
.implements Lio/reactivex/Observer;
.implements Lio/reactivex/disposables/Disposable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/observable/ObservableReduceSeedSingle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ReduceSeedObserver"
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
.field final actual:Lio/reactivex/SingleObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/SingleObserver<",
            "-TR;>;"
        }
    .end annotation
.end field

.field d:Lio/reactivex/disposables/Disposable;

.field final reducer:Lio/reactivex/functions/BiFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/BiFunction<",
            "TR;-TT;TR;>;"
        }
    .end annotation
.end field

.field value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TR;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/reactivex/SingleObserver;Lio/reactivex/functions/BiFunction;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/SingleObserver<",
            "-TR;>;",
            "Lio/reactivex/functions/BiFunction<",
            "TR;-TT;TR;>;TR;)V"
        }
    .end annotation

    .line 60
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableReduceSeedSingle$ReduceSeedObserver;, "Lio/reactivex/internal/operators/observable/ObservableReduceSeedSingle$ReduceSeedObserver<TT;TR;>;"
    .local p1, "actual":Lio/reactivex/SingleObserver;, "Lio/reactivex/SingleObserver<-TR;>;"
    .local p2, "reducer":Lio/reactivex/functions/BiFunction;, "Lio/reactivex/functions/BiFunction<TR;-TT;TR;>;"
    .local p3, "value":Ljava/lang/Object;, "TR;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableReduceSeedSingle$ReduceSeedObserver;->actual:Lio/reactivex/SingleObserver;

    .line 62
    iput-object p3, p0, Lio/reactivex/internal/operators/observable/ObservableReduceSeedSingle$ReduceSeedObserver;->value:Ljava/lang/Object;

    .line 63
    iput-object p2, p0, Lio/reactivex/internal/operators/observable/ObservableReduceSeedSingle$ReduceSeedObserver;->reducer:Lio/reactivex/functions/BiFunction;

    .line 64
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 1

    .line 111
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableReduceSeedSingle$ReduceSeedObserver;, "Lio/reactivex/internal/operators/observable/ObservableReduceSeedSingle$ReduceSeedObserver<TT;TR;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableReduceSeedSingle$ReduceSeedObserver;->d:Lio/reactivex/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 112
    return-void
.end method

.method public isDisposed()Z
    .locals 1

    .line 116
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableReduceSeedSingle$ReduceSeedObserver;, "Lio/reactivex/internal/operators/observable/ObservableReduceSeedSingle$ReduceSeedObserver<TT;TR;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableReduceSeedSingle$ReduceSeedObserver;->d:Lio/reactivex/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->isDisposed()Z

    move-result v0

    return v0
.end method

.method public onComplete()V
    .locals 2

    .line 102
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableReduceSeedSingle$ReduceSeedObserver;, "Lio/reactivex/internal/operators/observable/ObservableReduceSeedSingle$ReduceSeedObserver<TT;TR;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableReduceSeedSingle$ReduceSeedObserver;->value:Ljava/lang/Object;

    .line 103
    .local v0, "v":Ljava/lang/Object;, "TR;"
    const/4 v1, 0x0

    iput-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableReduceSeedSingle$ReduceSeedObserver;->value:Ljava/lang/Object;

    .line 104
    if-eqz v0, :cond_0

    .line 105
    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableReduceSeedSingle$ReduceSeedObserver;->actual:Lio/reactivex/SingleObserver;

    invoke-interface {v1, v0}, Lio/reactivex/SingleObserver;->onSuccess(Ljava/lang/Object;)V

    .line 107
    :cond_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "e"    # Ljava/lang/Throwable;

    .line 91
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableReduceSeedSingle$ReduceSeedObserver;, "Lio/reactivex/internal/operators/observable/ObservableReduceSeedSingle$ReduceSeedObserver<TT;TR;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableReduceSeedSingle$ReduceSeedObserver;->value:Ljava/lang/Object;

    .line 92
    .local v0, "v":Ljava/lang/Object;, "TR;"
    const/4 v1, 0x0

    iput-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableReduceSeedSingle$ReduceSeedObserver;->value:Ljava/lang/Object;

    .line 93
    if-eqz v0, :cond_0

    .line 94
    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableReduceSeedSingle$ReduceSeedObserver;->actual:Lio/reactivex/SingleObserver;

    invoke-interface {v1, p1}, Lio/reactivex/SingleObserver;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 96
    :cond_0
    invoke-static {p1}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    .line 98
    :goto_0
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 77
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableReduceSeedSingle$ReduceSeedObserver;, "Lio/reactivex/internal/operators/observable/ObservableReduceSeedSingle$ReduceSeedObserver<TT;TR;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableReduceSeedSingle$ReduceSeedObserver;->value:Ljava/lang/Object;

    .line 78
    .local v0, "v":Ljava/lang/Object;, "TR;"
    if-eqz v0, :cond_0

    .line 80
    :try_start_0
    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableReduceSeedSingle$ReduceSeedObserver;->reducer:Lio/reactivex/functions/BiFunction;

    invoke-interface {v1, v0, p1}, Lio/reactivex/functions/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "The reducer returned a null value"

    invoke-static {v1, v2}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableReduceSeedSingle$ReduceSeedObserver;->value:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    goto :goto_0

    .line 81
    :catchall_0
    move-exception v1

    .line 82
    .local v1, "ex":Ljava/lang/Throwable;
    invoke-static {v1}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 83
    iget-object v2, p0, Lio/reactivex/internal/operators/observable/ObservableReduceSeedSingle$ReduceSeedObserver;->d:Lio/reactivex/disposables/Disposable;

    invoke-interface {v2}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 84
    invoke-virtual {p0, v1}, Lio/reactivex/internal/operators/observable/ObservableReduceSeedSingle$ReduceSeedObserver;->onError(Ljava/lang/Throwable;)V

    .line 87
    .end local v1    # "ex":Ljava/lang/Throwable;
    :cond_0
    :goto_0
    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .locals 1
    .param p1, "d"    # Lio/reactivex/disposables/Disposable;

    .line 68
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableReduceSeedSingle$ReduceSeedObserver;, "Lio/reactivex/internal/operators/observable/ObservableReduceSeedSingle$ReduceSeedObserver<TT;TR;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableReduceSeedSingle$ReduceSeedObserver;->d:Lio/reactivex/disposables/Disposable;

    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->validate(Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/Disposable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableReduceSeedSingle$ReduceSeedObserver;->d:Lio/reactivex/disposables/Disposable;

    .line 71
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableReduceSeedSingle$ReduceSeedObserver;->actual:Lio/reactivex/SingleObserver;

    invoke-interface {v0, p0}, Lio/reactivex/SingleObserver;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    .line 73
    :cond_0
    return-void
.end method
