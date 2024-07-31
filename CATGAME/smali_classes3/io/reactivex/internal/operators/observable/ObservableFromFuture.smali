.class public final Lio/reactivex/internal/operators/observable/ObservableFromFuture;
.super Lio/reactivex/Observable;
.source "ObservableFromFuture.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/Observable<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final future:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "+TT;>;"
        }
    .end annotation
.end field

.field final timeout:J

.field final unit:Ljava/util/concurrent/TimeUnit;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Future;JLjava/util/concurrent/TimeUnit;)V
    .locals 0
    .param p2, "timeout"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Future<",
            "+TT;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")V"
        }
    .end annotation

    .line 28
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableFromFuture;, "Lio/reactivex/internal/operators/observable/ObservableFromFuture<TT;>;"
    .local p1, "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<+TT;>;"
    invoke-direct {p0}, Lio/reactivex/Observable;-><init>()V

    .line 29
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableFromFuture;->future:Ljava/util/concurrent/Future;

    .line 30
    iput-wide p2, p0, Lio/reactivex/internal/operators/observable/ObservableFromFuture;->timeout:J

    .line 31
    iput-object p4, p0, Lio/reactivex/internal/operators/observable/ObservableFromFuture;->unit:Ljava/util/concurrent/TimeUnit;

    .line 32
    return-void
.end method


# virtual methods
.method public subscribeActual(Lio/reactivex/Observer;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observer<",
            "-TT;>;)V"
        }
    .end annotation

    .line 36
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableFromFuture;, "Lio/reactivex/internal/operators/observable/ObservableFromFuture<TT;>;"
    .local p1, "s":Lio/reactivex/Observer;, "Lio/reactivex/Observer<-TT;>;"
    new-instance v0, Lio/reactivex/internal/observers/DeferredScalarDisposable;

    invoke-direct {v0, p1}, Lio/reactivex/internal/observers/DeferredScalarDisposable;-><init>(Lio/reactivex/Observer;)V

    .line 37
    .local v0, "d":Lio/reactivex/internal/observers/DeferredScalarDisposable;, "Lio/reactivex/internal/observers/DeferredScalarDisposable<TT;>;"
    invoke-interface {p1, v0}, Lio/reactivex/Observer;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    .line 38
    invoke-virtual {v0}, Lio/reactivex/internal/observers/DeferredScalarDisposable;->isDisposed()Z

    move-result v1

    if-nez v1, :cond_2

    .line 41
    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lio/reactivex/internal/operators/observable/ObservableFromFuture;->unit:Ljava/util/concurrent/TimeUnit;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lio/reactivex/internal/operators/observable/ObservableFromFuture;->future:Ljava/util/concurrent/Future;

    iget-wide v3, p0, Lio/reactivex/internal/operators/observable/ObservableFromFuture;->timeout:J

    iget-object v5, p0, Lio/reactivex/internal/operators/observable/ObservableFromFuture;->unit:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v2, v3, v4, v5}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lio/reactivex/internal/operators/observable/ObservableFromFuture;->future:Ljava/util/concurrent/Future;

    invoke-interface {v2}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v2

    :goto_0
    const-string v3, "Future returned null"

    invoke-static {v2, v3}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    .local v1, "v":Ljava/lang/Object;, "TT;"
    nop

    .line 49
    invoke-virtual {v0, v1}, Lio/reactivex/internal/observers/DeferredScalarDisposable;->complete(Ljava/lang/Object;)V

    goto :goto_1

    .line 42
    .end local v1    # "v":Ljava/lang/Object;, "TT;"
    :catchall_0
    move-exception v2

    .line 43
    .restart local v1    # "v":Ljava/lang/Object;, "TT;"
    .local v2, "ex":Ljava/lang/Throwable;
    invoke-static {v2}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 44
    invoke-virtual {v0}, Lio/reactivex/internal/observers/DeferredScalarDisposable;->isDisposed()Z

    move-result v3

    if-nez v3, :cond_1

    .line 45
    invoke-interface {p1, v2}, Lio/reactivex/Observer;->onError(Ljava/lang/Throwable;)V

    .line 47
    :cond_1
    return-void

    .line 51
    .end local v1    # "v":Ljava/lang/Object;, "TT;"
    .end local v2    # "ex":Ljava/lang/Throwable;
    :cond_2
    :goto_1
    return-void
.end method
