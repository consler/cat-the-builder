.class final Lio/reactivex/internal/operators/observable/ObservableReplay$MulticastReplay;
.super Lio/reactivex/Observable;
.source "ObservableReplay.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/observable/ObservableReplay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "MulticastReplay"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        "U:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/Observable<",
        "TR;>;"
    }
.end annotation


# instance fields
.field private final connectableFactory:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable<",
            "+",
            "Lio/reactivex/observables/ConnectableObservable<",
            "TU;>;>;"
        }
    .end annotation
.end field

.field private final selector:Lio/reactivex/functions/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/Function<",
            "-",
            "Lio/reactivex/Observable<",
            "TU;>;+",
            "Lio/reactivex/ObservableSource<",
            "TR;>;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/concurrent/Callable;Lio/reactivex/functions/Function;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable<",
            "+",
            "Lio/reactivex/observables/ConnectableObservable<",
            "TU;>;>;",
            "Lio/reactivex/functions/Function<",
            "-",
            "Lio/reactivex/Observable<",
            "TU;>;+",
            "Lio/reactivex/ObservableSource<",
            "TR;>;>;)V"
        }
    .end annotation

    .line 1019
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableReplay$MulticastReplay;, "Lio/reactivex/internal/operators/observable/ObservableReplay$MulticastReplay<TR;TU;>;"
    .local p1, "connectableFactory":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<+Lio/reactivex/observables/ConnectableObservable<TU;>;>;"
    .local p2, "selector":Lio/reactivex/functions/Function;, "Lio/reactivex/functions/Function<-Lio/reactivex/Observable<TU;>;+Lio/reactivex/ObservableSource<TR;>;>;"
    invoke-direct {p0}, Lio/reactivex/Observable;-><init>()V

    .line 1020
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableReplay$MulticastReplay;->connectableFactory:Ljava/util/concurrent/Callable;

    .line 1021
    iput-object p2, p0, Lio/reactivex/internal/operators/observable/ObservableReplay$MulticastReplay;->selector:Lio/reactivex/functions/Function;

    .line 1022
    return-void
.end method


# virtual methods
.method protected subscribeActual(Lio/reactivex/Observer;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observer<",
            "-TR;>;)V"
        }
    .end annotation

    .line 1029
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableReplay$MulticastReplay;, "Lio/reactivex/internal/operators/observable/ObservableReplay$MulticastReplay<TR;TU;>;"
    .local p1, "child":Lio/reactivex/Observer;, "Lio/reactivex/Observer<-TR;>;"
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableReplay$MulticastReplay;->connectableFactory:Ljava/util/concurrent/Callable;

    invoke-interface {v1}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/reactivex/observables/ConnectableObservable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1030
    .local v1, "co":Lio/reactivex/observables/ConnectableObservable;, "Lio/reactivex/observables/ConnectableObservable<TU;>;"
    :try_start_1
    iget-object v2, p0, Lio/reactivex/internal/operators/observable/ObservableReplay$MulticastReplay;->selector:Lio/reactivex/functions/Function;

    invoke-interface {v2, v1}, Lio/reactivex/functions/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/reactivex/ObservableSource;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, v2

    .line 1035
    .local v0, "observable":Lio/reactivex/ObservableSource;, "Lio/reactivex/ObservableSource<TR;>;"
    nop

    .line 1037
    new-instance v2, Lio/reactivex/internal/operators/observable/ObserverResourceWrapper;

    invoke-direct {v2, p1}, Lio/reactivex/internal/operators/observable/ObserverResourceWrapper;-><init>(Lio/reactivex/Observer;)V

    .line 1039
    .local v2, "srw":Lio/reactivex/internal/operators/observable/ObserverResourceWrapper;, "Lio/reactivex/internal/operators/observable/ObserverResourceWrapper<TR;>;"
    invoke-interface {v0, v2}, Lio/reactivex/ObservableSource;->subscribe(Lio/reactivex/Observer;)V

    .line 1041
    new-instance v3, Lio/reactivex/internal/operators/observable/ObservableReplay$DisposeConsumer;

    invoke-direct {v3, v2}, Lio/reactivex/internal/operators/observable/ObservableReplay$DisposeConsumer;-><init>(Lio/reactivex/internal/operators/observable/ObserverResourceWrapper;)V

    invoke-virtual {v1, v3}, Lio/reactivex/observables/ConnectableObservable;->connect(Lio/reactivex/functions/Consumer;)V

    .line 1042
    return-void

    .line 1031
    .end local v0    # "observable":Lio/reactivex/ObservableSource;, "Lio/reactivex/ObservableSource<TR;>;"
    .end local v2    # "srw":Lio/reactivex/internal/operators/observable/ObserverResourceWrapper;, "Lio/reactivex/internal/operators/observable/ObserverResourceWrapper<TR;>;"
    :catchall_0
    move-exception v2

    goto :goto_0

    .end local v1    # "co":Lio/reactivex/observables/ConnectableObservable;, "Lio/reactivex/observables/ConnectableObservable<TU;>;"
    :catchall_1
    move-exception v2

    move-object v1, v0

    .line 1032
    .restart local v0    # "observable":Lio/reactivex/ObservableSource;, "Lio/reactivex/ObservableSource<TR;>;"
    .restart local v1    # "co":Lio/reactivex/observables/ConnectableObservable;, "Lio/reactivex/observables/ConnectableObservable<TU;>;"
    .local v2, "e":Ljava/lang/Throwable;
    :goto_0
    invoke-static {v2}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 1033
    invoke-static {v2, p1}, Lio/reactivex/internal/disposables/EmptyDisposable;->error(Ljava/lang/Throwable;Lio/reactivex/Observer;)V

    .line 1034
    return-void
.end method
