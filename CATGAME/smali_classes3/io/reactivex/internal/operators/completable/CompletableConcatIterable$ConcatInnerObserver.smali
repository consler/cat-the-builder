.class final Lio/reactivex/internal/operators/completable/CompletableConcatIterable$ConcatInnerObserver;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "CompletableConcatIterable.java"

# interfaces
.implements Lio/reactivex/CompletableObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/completable/CompletableConcatIterable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ConcatInnerObserver"
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x6e8ac9652ad7cd50L


# instance fields
.field final actual:Lio/reactivex/CompletableObserver;

.field final sd:Lio/reactivex/internal/disposables/SequentialDisposable;

.field final sources:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "+",
            "Lio/reactivex/CompletableSource;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/reactivex/CompletableObserver;Ljava/util/Iterator;)V
    .locals 1
    .param p1, "actual"    # Lio/reactivex/CompletableObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/CompletableObserver;",
            "Ljava/util/Iterator<",
            "+",
            "Lio/reactivex/CompletableSource;",
            ">;)V"
        }
    .end annotation

    .line 59
    .local p2, "sources":Ljava/util/Iterator;, "Ljava/util/Iterator<+Lio/reactivex/CompletableSource;>;"
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 60
    iput-object p1, p0, Lio/reactivex/internal/operators/completable/CompletableConcatIterable$ConcatInnerObserver;->actual:Lio/reactivex/CompletableObserver;

    .line 61
    iput-object p2, p0, Lio/reactivex/internal/operators/completable/CompletableConcatIterable$ConcatInnerObserver;->sources:Ljava/util/Iterator;

    .line 62
    new-instance v0, Lio/reactivex/internal/disposables/SequentialDisposable;

    invoke-direct {v0}, Lio/reactivex/internal/disposables/SequentialDisposable;-><init>()V

    iput-object v0, p0, Lio/reactivex/internal/operators/completable/CompletableConcatIterable$ConcatInnerObserver;->sd:Lio/reactivex/internal/disposables/SequentialDisposable;

    .line 63
    return-void
.end method


# virtual methods
.method next()V
    .locals 5

    .line 81
    iget-object v0, p0, Lio/reactivex/internal/operators/completable/CompletableConcatIterable$ConcatInnerObserver;->sd:Lio/reactivex/internal/disposables/SequentialDisposable;

    invoke-virtual {v0}, Lio/reactivex/internal/disposables/SequentialDisposable;->isDisposed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    return-void

    .line 85
    :cond_0
    invoke-virtual {p0}, Lio/reactivex/internal/operators/completable/CompletableConcatIterable$ConcatInnerObserver;->getAndIncrement()I

    move-result v0

    if-eqz v0, :cond_1

    .line 86
    return-void

    .line 89
    :cond_1
    iget-object v0, p0, Lio/reactivex/internal/operators/completable/CompletableConcatIterable$ConcatInnerObserver;->sources:Ljava/util/Iterator;

    .local v0, "a":Ljava/util/Iterator;, "Ljava/util/Iterator<+Lio/reactivex/CompletableSource;>;"
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 91
    :cond_2
    iget-object v3, p0, Lio/reactivex/internal/operators/completable/CompletableConcatIterable$ConcatInnerObserver;->sd:Lio/reactivex/internal/disposables/SequentialDisposable;

    invoke-virtual {v3}, Lio/reactivex/internal/disposables/SequentialDisposable;->isDisposed()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 92
    return-void

    .line 97
    :cond_3
    :try_start_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 102
    .local v1, "b":Z
    nop

    .line 104
    if-nez v1, :cond_4

    .line 105
    iget-object v2, p0, Lio/reactivex/internal/operators/completable/CompletableConcatIterable$ConcatInnerObserver;->actual:Lio/reactivex/CompletableObserver;

    invoke-interface {v2}, Lio/reactivex/CompletableObserver;->onComplete()V

    .line 106
    return-void

    .line 112
    :cond_4
    :try_start_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    const-string v4, "The CompletableSource returned is null"

    invoke-static {v3, v4}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/reactivex/CompletableSource;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v2, v3

    .line 117
    .local v2, "c":Lio/reactivex/CompletableSource;
    nop

    .line 119
    invoke-interface {v2, p0}, Lio/reactivex/CompletableSource;->subscribe(Lio/reactivex/CompletableObserver;)V

    .line 120
    .end local v1    # "b":Z
    .end local v2    # "c":Lio/reactivex/CompletableSource;
    invoke-virtual {p0}, Lio/reactivex/internal/operators/completable/CompletableConcatIterable$ConcatInnerObserver;->decrementAndGet()I

    move-result v3

    if-nez v3, :cond_2

    .line 121
    return-void

    .line 113
    :catchall_0
    move-exception v3

    .line 114
    .restart local v2    # "c":Lio/reactivex/CompletableSource;
    .local v3, "ex":Ljava/lang/Throwable;
    invoke-static {v3}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 115
    iget-object v4, p0, Lio/reactivex/internal/operators/completable/CompletableConcatIterable$ConcatInnerObserver;->actual:Lio/reactivex/CompletableObserver;

    invoke-interface {v4, v3}, Lio/reactivex/CompletableObserver;->onError(Ljava/lang/Throwable;)V

    .line 116
    return-void

    .line 98
    .end local v2    # "c":Lio/reactivex/CompletableSource;
    .end local v3    # "ex":Ljava/lang/Throwable;
    :catchall_1
    move-exception v2

    .line 99
    .restart local v1    # "b":Z
    .local v2, "ex":Ljava/lang/Throwable;
    invoke-static {v2}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 100
    iget-object v3, p0, Lio/reactivex/internal/operators/completable/CompletableConcatIterable$ConcatInnerObserver;->actual:Lio/reactivex/CompletableObserver;

    invoke-interface {v3, v2}, Lio/reactivex/CompletableObserver;->onError(Ljava/lang/Throwable;)V

    .line 101
    return-void
.end method

.method public onComplete()V
    .locals 0

    .line 77
    invoke-virtual {p0}, Lio/reactivex/internal/operators/completable/CompletableConcatIterable$ConcatInnerObserver;->next()V

    .line 78
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .line 72
    iget-object v0, p0, Lio/reactivex/internal/operators/completable/CompletableConcatIterable$ConcatInnerObserver;->actual:Lio/reactivex/CompletableObserver;

    invoke-interface {v0, p1}, Lio/reactivex/CompletableObserver;->onError(Ljava/lang/Throwable;)V

    .line 73
    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .locals 1
    .param p1, "d"    # Lio/reactivex/disposables/Disposable;

    .line 67
    iget-object v0, p0, Lio/reactivex/internal/operators/completable/CompletableConcatIterable$ConcatInnerObserver;->sd:Lio/reactivex/internal/disposables/SequentialDisposable;

    invoke-virtual {v0, p1}, Lio/reactivex/internal/disposables/SequentialDisposable;->update(Lio/reactivex/disposables/Disposable;)Z

    .line 68
    return-void
.end method
