.class public final Lio/reactivex/internal/operators/observable/ObservableGenerate;
.super Lio/reactivex/Observable;
.source "ObservableGenerate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/observable/ObservableGenerate$GeneratorDisposable;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "S:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/Observable<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final disposeState:Lio/reactivex/functions/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/Consumer<",
            "-TS;>;"
        }
    .end annotation
.end field

.field final generator:Lio/reactivex/functions/BiFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/BiFunction<",
            "TS;",
            "Lio/reactivex/Emitter<",
            "TT;>;TS;>;"
        }
    .end annotation
.end field

.field final stateSupplier:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable<",
            "TS;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Callable;Lio/reactivex/functions/BiFunction;Lio/reactivex/functions/Consumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable<",
            "TS;>;",
            "Lio/reactivex/functions/BiFunction<",
            "TS;",
            "Lio/reactivex/Emitter<",
            "TT;>;TS;>;",
            "Lio/reactivex/functions/Consumer<",
            "-TS;>;)V"
        }
    .end annotation

    .line 31
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableGenerate;, "Lio/reactivex/internal/operators/observable/ObservableGenerate<TT;TS;>;"
    .local p1, "stateSupplier":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TS;>;"
    .local p2, "generator":Lio/reactivex/functions/BiFunction;, "Lio/reactivex/functions/BiFunction<TS;Lio/reactivex/Emitter<TT;>;TS;>;"
    .local p3, "disposeState":Lio/reactivex/functions/Consumer;, "Lio/reactivex/functions/Consumer<-TS;>;"
    invoke-direct {p0}, Lio/reactivex/Observable;-><init>()V

    .line 32
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableGenerate;->stateSupplier:Ljava/util/concurrent/Callable;

    .line 33
    iput-object p2, p0, Lio/reactivex/internal/operators/observable/ObservableGenerate;->generator:Lio/reactivex/functions/BiFunction;

    .line 34
    iput-object p3, p0, Lio/reactivex/internal/operators/observable/ObservableGenerate;->disposeState:Lio/reactivex/functions/Consumer;

    .line 35
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

    .line 42
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableGenerate;, "Lio/reactivex/internal/operators/observable/ObservableGenerate<TT;TS;>;"
    .local p1, "s":Lio/reactivex/Observer;, "Lio/reactivex/Observer<-TT;>;"
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableGenerate;->stateSupplier:Ljava/util/concurrent/Callable;

    invoke-interface {v1}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    .local v0, "state":Ljava/lang/Object;, "TS;"
    nop

    .line 49
    new-instance v1, Lio/reactivex/internal/operators/observable/ObservableGenerate$GeneratorDisposable;

    iget-object v2, p0, Lio/reactivex/internal/operators/observable/ObservableGenerate;->generator:Lio/reactivex/functions/BiFunction;

    iget-object v3, p0, Lio/reactivex/internal/operators/observable/ObservableGenerate;->disposeState:Lio/reactivex/functions/Consumer;

    invoke-direct {v1, p1, v2, v3, v0}, Lio/reactivex/internal/operators/observable/ObservableGenerate$GeneratorDisposable;-><init>(Lio/reactivex/Observer;Lio/reactivex/functions/BiFunction;Lio/reactivex/functions/Consumer;Ljava/lang/Object;)V

    .line 50
    .local v1, "gd":Lio/reactivex/internal/operators/observable/ObservableGenerate$GeneratorDisposable;, "Lio/reactivex/internal/operators/observable/ObservableGenerate$GeneratorDisposable<TT;TS;>;"
    invoke-interface {p1, v1}, Lio/reactivex/Observer;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    .line 51
    invoke-virtual {v1}, Lio/reactivex/internal/operators/observable/ObservableGenerate$GeneratorDisposable;->run()V

    .line 52
    return-void

    .line 43
    .end local v0    # "state":Ljava/lang/Object;, "TS;"
    .end local v1    # "gd":Lio/reactivex/internal/operators/observable/ObservableGenerate$GeneratorDisposable;, "Lio/reactivex/internal/operators/observable/ObservableGenerate$GeneratorDisposable<TT;TS;>;"
    :catchall_0
    move-exception v1

    .line 44
    .restart local v0    # "state":Ljava/lang/Object;, "TS;"
    .local v1, "e":Ljava/lang/Throwable;
    invoke-static {v1}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 45
    invoke-static {v1, p1}, Lio/reactivex/internal/disposables/EmptyDisposable;->error(Ljava/lang/Throwable;Lio/reactivex/Observer;)V

    .line 46
    return-void
.end method
