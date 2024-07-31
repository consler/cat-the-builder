.class final Lio/reactivex/internal/operators/single/SingleFlatMapMaybe$FlatMapSingleObserver;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "SingleFlatMapMaybe.java"

# interfaces
.implements Lio/reactivex/SingleObserver;
.implements Lio/reactivex/disposables/Disposable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/single/SingleFlatMapMaybe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "FlatMapSingleObserver"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "Lio/reactivex/disposables/Disposable;",
        ">;",
        "Lio/reactivex/SingleObserver<",
        "TT;>;",
        "Lio/reactivex/disposables/Disposable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x5119332c5c483496L


# instance fields
.field final actual:Lio/reactivex/MaybeObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/MaybeObserver<",
            "-TR;>;"
        }
    .end annotation
.end field

.field final mapper:Lio/reactivex/functions/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/Function<",
            "-TT;+",
            "Lio/reactivex/MaybeSource<",
            "+TR;>;>;"
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
            "-TR;>;",
            "Lio/reactivex/functions/Function<",
            "-TT;+",
            "Lio/reactivex/MaybeSource<",
            "+TR;>;>;)V"
        }
    .end annotation

    .line 54
    .local p0, "this":Lio/reactivex/internal/operators/single/SingleFlatMapMaybe$FlatMapSingleObserver;, "Lio/reactivex/internal/operators/single/SingleFlatMapMaybe$FlatMapSingleObserver<TT;TR;>;"
    .local p1, "actual":Lio/reactivex/MaybeObserver;, "Lio/reactivex/MaybeObserver<-TR;>;"
    .local p2, "mapper":Lio/reactivex/functions/Function;, "Lio/reactivex/functions/Function<-TT;+Lio/reactivex/MaybeSource<+TR;>;>;"
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 55
    iput-object p1, p0, Lio/reactivex/internal/operators/single/SingleFlatMapMaybe$FlatMapSingleObserver;->actual:Lio/reactivex/MaybeObserver;

    .line 56
    iput-object p2, p0, Lio/reactivex/internal/operators/single/SingleFlatMapMaybe$FlatMapSingleObserver;->mapper:Lio/reactivex/functions/Function;

    .line 57
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 0

    .line 61
    .local p0, "this":Lio/reactivex/internal/operators/single/SingleFlatMapMaybe$FlatMapSingleObserver;, "Lio/reactivex/internal/operators/single/SingleFlatMapMaybe$FlatMapSingleObserver<TT;TR;>;"
    invoke-static {p0}, Lio/reactivex/internal/disposables/DisposableHelper;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)Z

    .line 62
    return-void
.end method

.method public isDisposed()Z
    .locals 1

    .line 66
    .local p0, "this":Lio/reactivex/internal/operators/single/SingleFlatMapMaybe$FlatMapSingleObserver;, "Lio/reactivex/internal/operators/single/SingleFlatMapMaybe$FlatMapSingleObserver<TT;TR;>;"
    invoke-virtual {p0}, Lio/reactivex/internal/operators/single/SingleFlatMapMaybe$FlatMapSingleObserver;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/disposables/Disposable;

    invoke-static {v0}, Lio/reactivex/internal/disposables/DisposableHelper;->isDisposed(Lio/reactivex/disposables/Disposable;)Z

    move-result v0

    return v0
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .line 95
    .local p0, "this":Lio/reactivex/internal/operators/single/SingleFlatMapMaybe$FlatMapSingleObserver;, "Lio/reactivex/internal/operators/single/SingleFlatMapMaybe$FlatMapSingleObserver<TT;TR;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/single/SingleFlatMapMaybe$FlatMapSingleObserver;->actual:Lio/reactivex/MaybeObserver;

    invoke-interface {v0, p1}, Lio/reactivex/MaybeObserver;->onError(Ljava/lang/Throwable;)V

    .line 96
    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .locals 1
    .param p1, "d"    # Lio/reactivex/disposables/Disposable;

    .line 71
    .local p0, "this":Lio/reactivex/internal/operators/single/SingleFlatMapMaybe$FlatMapSingleObserver;, "Lio/reactivex/internal/operators/single/SingleFlatMapMaybe$FlatMapSingleObserver<TT;TR;>;"
    invoke-static {p0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->setOnce(Ljava/util/concurrent/atomic/AtomicReference;Lio/reactivex/disposables/Disposable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lio/reactivex/internal/operators/single/SingleFlatMapMaybe$FlatMapSingleObserver;->actual:Lio/reactivex/MaybeObserver;

    invoke-interface {v0, p0}, Lio/reactivex/MaybeObserver;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    .line 74
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

    .line 81
    .local p0, "this":Lio/reactivex/internal/operators/single/SingleFlatMapMaybe$FlatMapSingleObserver;, "Lio/reactivex/internal/operators/single/SingleFlatMapMaybe$FlatMapSingleObserver<TT;TR;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lio/reactivex/internal/operators/single/SingleFlatMapMaybe$FlatMapSingleObserver;->mapper:Lio/reactivex/functions/Function;

    invoke-interface {v1, p1}, Lio/reactivex/functions/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "The mapper returned a null MaybeSource"

    invoke-static {v1, v2}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/reactivex/MaybeSource;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v1

    .line 86
    .local v0, "ms":Lio/reactivex/MaybeSource;, "Lio/reactivex/MaybeSource<+TR;>;"
    nop

    .line 88
    invoke-virtual {p0}, Lio/reactivex/internal/operators/single/SingleFlatMapMaybe$FlatMapSingleObserver;->isDisposed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 89
    new-instance v1, Lio/reactivex/internal/operators/single/SingleFlatMapMaybe$FlatMapMaybeObserver;

    iget-object v2, p0, Lio/reactivex/internal/operators/single/SingleFlatMapMaybe$FlatMapSingleObserver;->actual:Lio/reactivex/MaybeObserver;

    invoke-direct {v1, p0, v2}, Lio/reactivex/internal/operators/single/SingleFlatMapMaybe$FlatMapMaybeObserver;-><init>(Ljava/util/concurrent/atomic/AtomicReference;Lio/reactivex/MaybeObserver;)V

    invoke-interface {v0, v1}, Lio/reactivex/MaybeSource;->subscribe(Lio/reactivex/MaybeObserver;)V

    .line 91
    :cond_0
    return-void

    .line 82
    .end local v0    # "ms":Lio/reactivex/MaybeSource;, "Lio/reactivex/MaybeSource<+TR;>;"
    :catchall_0
    move-exception v1

    .line 83
    .restart local v0    # "ms":Lio/reactivex/MaybeSource;, "Lio/reactivex/MaybeSource<+TR;>;"
    .local v1, "ex":Ljava/lang/Throwable;
    invoke-static {v1}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 84
    invoke-virtual {p0, v1}, Lio/reactivex/internal/operators/single/SingleFlatMapMaybe$FlatMapSingleObserver;->onError(Ljava/lang/Throwable;)V

    .line 85
    return-void
.end method
