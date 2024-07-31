.class public final Lio/reactivex/internal/operators/completable/CompletableMergeIterable;
.super Lio/reactivex/Completable;
.source "CompletableMergeIterable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/completable/CompletableMergeIterable$MergeCompletableObserver;
    }
.end annotation


# instance fields
.field final sources:Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Iterable<",
            "+",
            "Lio/reactivex/CompletableSource;",
            ">;"
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
            "+",
            "Lio/reactivex/CompletableSource;",
            ">;)V"
        }
    .end annotation

    .line 28
    .local p1, "sources":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lio/reactivex/CompletableSource;>;"
    invoke-direct {p0}, Lio/reactivex/Completable;-><init>()V

    .line 29
    iput-object p1, p0, Lio/reactivex/internal/operators/completable/CompletableMergeIterable;->sources:Ljava/lang/Iterable;

    .line 30
    return-void
.end method


# virtual methods
.method public subscribeActual(Lio/reactivex/CompletableObserver;)V
    .locals 8
    .param p1, "s"    # Lio/reactivex/CompletableObserver;

    .line 34
    new-instance v0, Lio/reactivex/disposables/CompositeDisposable;

    invoke-direct {v0}, Lio/reactivex/disposables/CompositeDisposable;-><init>()V

    .line 36
    .local v0, "set":Lio/reactivex/disposables/CompositeDisposable;
    invoke-interface {p1, v0}, Lio/reactivex/CompletableObserver;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    .line 41
    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lio/reactivex/internal/operators/completable/CompletableMergeIterable;->sources:Ljava/lang/Iterable;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const-string v3, "The source iterator returned is null"

    invoke-static {v2, v3}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Iterator;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 46
    .local v2, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<+Lio/reactivex/CompletableSource;>;"
    nop

    .line 48
    new-instance v3, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 50
    .local v3, "wip":Ljava/util/concurrent/atomic/AtomicInteger;
    new-instance v4, Lio/reactivex/internal/operators/completable/CompletableMergeIterable$MergeCompletableObserver;

    invoke-direct {v4, p1, v0, v3}, Lio/reactivex/internal/operators/completable/CompletableMergeIterable$MergeCompletableObserver;-><init>(Lio/reactivex/CompletableObserver;Lio/reactivex/disposables/CompositeDisposable;Ljava/util/concurrent/atomic/AtomicInteger;)V

    .local v4, "shared":Lio/reactivex/internal/operators/completable/CompletableMergeIterable$MergeCompletableObserver;
    const/4 v5, 0x0

    .line 52
    :goto_0
    invoke-virtual {v0}, Lio/reactivex/disposables/CompositeDisposable;->isDisposed()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 53
    return-void

    .line 58
    :cond_0
    :try_start_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 64
    .local v5, "b":Z
    nop

    .line 66
    if-nez v5, :cond_1

    .line 67
    nop

    .line 94
    .end local v5    # "b":Z
    invoke-virtual {v4}, Lio/reactivex/internal/operators/completable/CompletableMergeIterable$MergeCompletableObserver;->onComplete()V

    .line 95
    return-void

    .line 70
    .restart local v5    # "b":Z
    :cond_1
    invoke-virtual {v0}, Lio/reactivex/disposables/CompositeDisposable;->isDisposed()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 71
    return-void

    .line 77
    :cond_2
    :try_start_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    const-string v7, "The iterator returned a null CompletableSource"

    invoke-static {v6, v7}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lio/reactivex/CompletableSource;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v1, v6

    .line 83
    .local v1, "c":Lio/reactivex/CompletableSource;
    nop

    .line 85
    invoke-virtual {v0}, Lio/reactivex/disposables/CompositeDisposable;->isDisposed()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 86
    return-void

    .line 89
    :cond_3
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    .line 91
    invoke-interface {v1, v4}, Lio/reactivex/CompletableSource;->subscribe(Lio/reactivex/CompletableObserver;)V

    .line 92
    .end local v1    # "c":Lio/reactivex/CompletableSource;
    .end local v5    # "b":Z
    goto :goto_0

    .line 78
    .restart local v5    # "b":Z
    :catchall_0
    move-exception v6

    .line 79
    .restart local v1    # "c":Lio/reactivex/CompletableSource;
    .local v6, "e":Ljava/lang/Throwable;
    invoke-static {v6}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 80
    invoke-virtual {v0}, Lio/reactivex/disposables/CompositeDisposable;->dispose()V

    .line 81
    invoke-virtual {v4, v6}, Lio/reactivex/internal/operators/completable/CompletableMergeIterable$MergeCompletableObserver;->onError(Ljava/lang/Throwable;)V

    .line 82
    return-void

    .line 59
    .end local v1    # "c":Lio/reactivex/CompletableSource;
    .end local v5    # "b":Z
    .end local v6    # "e":Ljava/lang/Throwable;
    :catchall_1
    move-exception v1

    .line 60
    .local v1, "e":Ljava/lang/Throwable;
    .restart local v5    # "b":Z
    invoke-static {v1}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 61
    invoke-virtual {v0}, Lio/reactivex/disposables/CompositeDisposable;->dispose()V

    .line 62
    invoke-virtual {v4, v1}, Lio/reactivex/internal/operators/completable/CompletableMergeIterable$MergeCompletableObserver;->onError(Ljava/lang/Throwable;)V

    .line 63
    return-void

    .line 42
    .end local v1    # "e":Ljava/lang/Throwable;
    .end local v2    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<+Lio/reactivex/CompletableSource;>;"
    .end local v3    # "wip":Ljava/util/concurrent/atomic/AtomicInteger;
    .end local v4    # "shared":Lio/reactivex/internal/operators/completable/CompletableMergeIterable$MergeCompletableObserver;
    .end local v5    # "b":Z
    :catchall_2
    move-exception v2

    .line 43
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<+Lio/reactivex/CompletableSource;>;"
    .local v2, "e":Ljava/lang/Throwable;
    invoke-static {v2}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 44
    invoke-interface {p1, v2}, Lio/reactivex/CompletableObserver;->onError(Ljava/lang/Throwable;)V

    .line 45
    return-void
.end method
