.class public final Lio/reactivex/internal/operators/observable/ObservableFromIterable;
.super Lio/reactivex/Observable;
.source "ObservableFromIterable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/observable/ObservableFromIterable$FromIterableDisposable;
    }
.end annotation

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
.field final source:Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Iterable<",
            "+TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Iterable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+TT;>;)V"
        }
    .end annotation

    .line 27
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableFromIterable;, "Lio/reactivex/internal/operators/observable/ObservableFromIterable<TT;>;"
    .local p1, "source":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TT;>;"
    invoke-direct {p0}, Lio/reactivex/Observable;-><init>()V

    .line 28
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableFromIterable;->source:Ljava/lang/Iterable;

    .line 29
    return-void
.end method


# virtual methods
.method public subscribeActual(Lio/reactivex/Observer;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observer<",
            "-TT;>;)V"
        }
    .end annotation

    .line 35
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableFromIterable;, "Lio/reactivex/internal/operators/observable/ObservableFromIterable<TT;>;"
    .local p1, "s":Lio/reactivex/Observer;, "Lio/reactivex/Observer<-TT;>;"
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableFromIterable;->source:Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 40
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<+TT;>;"
    nop

    .line 43
    :try_start_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 48
    .local v1, "hasNext":Z
    nop

    .line 49
    if-nez v1, :cond_0

    .line 50
    invoke-static {p1}, Lio/reactivex/internal/disposables/EmptyDisposable;->complete(Lio/reactivex/Observer;)V

    .line 51
    return-void

    .line 54
    :cond_0
    new-instance v2, Lio/reactivex/internal/operators/observable/ObservableFromIterable$FromIterableDisposable;

    invoke-direct {v2, p1, v0}, Lio/reactivex/internal/operators/observable/ObservableFromIterable$FromIterableDisposable;-><init>(Lio/reactivex/Observer;Ljava/util/Iterator;)V

    .line 55
    .local v2, "d":Lio/reactivex/internal/operators/observable/ObservableFromIterable$FromIterableDisposable;, "Lio/reactivex/internal/operators/observable/ObservableFromIterable$FromIterableDisposable<TT;>;"
    invoke-interface {p1, v2}, Lio/reactivex/Observer;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    .line 57
    iget-boolean v3, v2, Lio/reactivex/internal/operators/observable/ObservableFromIterable$FromIterableDisposable;->fusionMode:Z

    if-nez v3, :cond_1

    .line 58
    invoke-virtual {v2}, Lio/reactivex/internal/operators/observable/ObservableFromIterable$FromIterableDisposable;->run()V

    .line 60
    :cond_1
    return-void

    .line 44
    .end local v1    # "hasNext":Z
    .end local v2    # "d":Lio/reactivex/internal/operators/observable/ObservableFromIterable$FromIterableDisposable;, "Lio/reactivex/internal/operators/observable/ObservableFromIterable$FromIterableDisposable<TT;>;"
    :catchall_0
    move-exception v1

    const/4 v2, 0x0

    .line 45
    .local v1, "e":Ljava/lang/Throwable;
    .local v2, "hasNext":Z
    invoke-static {v1}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 46
    invoke-static {v1, p1}, Lio/reactivex/internal/disposables/EmptyDisposable;->error(Ljava/lang/Throwable;Lio/reactivex/Observer;)V

    .line 47
    return-void

    .line 36
    .end local v0    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<+TT;>;"
    .end local v1    # "e":Ljava/lang/Throwable;
    .end local v2    # "hasNext":Z
    :catchall_1
    move-exception v1

    .line 37
    .restart local v0    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<+TT;>;"
    .restart local v1    # "e":Ljava/lang/Throwable;
    invoke-static {v1}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 38
    invoke-static {v1, p1}, Lio/reactivex/internal/disposables/EmptyDisposable;->error(Ljava/lang/Throwable;Lio/reactivex/Observer;)V

    .line 39
    return-void
.end method
