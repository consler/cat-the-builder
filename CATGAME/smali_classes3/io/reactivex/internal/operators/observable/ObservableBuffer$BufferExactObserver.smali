.class final Lio/reactivex/internal/operators/observable/ObservableBuffer$BufferExactObserver;
.super Ljava/lang/Object;
.source "ObservableBuffer.java"

# interfaces
.implements Lio/reactivex/Observer;
.implements Lio/reactivex/disposables/Disposable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/observable/ObservableBuffer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "BufferExactObserver"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U::",
        "Ljava/util/Collection<",
        "-TT;>;>",
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
            "-TU;>;"
        }
    .end annotation
.end field

.field buffer:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TU;"
        }
    .end annotation
.end field

.field final bufferSupplier:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable<",
            "TU;>;"
        }
    .end annotation
.end field

.field final count:I

.field s:Lio/reactivex/disposables/Disposable;

.field size:I


# direct methods
.method constructor <init>(Lio/reactivex/Observer;ILjava/util/concurrent/Callable;)V
    .locals 0
    .param p2, "count"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observer<",
            "-TU;>;I",
            "Ljava/util/concurrent/Callable<",
            "TU;>;)V"
        }
    .end annotation

    .line 61
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableBuffer$BufferExactObserver;, "Lio/reactivex/internal/operators/observable/ObservableBuffer$BufferExactObserver<TT;TU;>;"
    .local p1, "actual":Lio/reactivex/Observer;, "Lio/reactivex/Observer<-TU;>;"
    .local p3, "bufferSupplier":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TU;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableBuffer$BufferExactObserver;->actual:Lio/reactivex/Observer;

    .line 63
    iput p2, p0, Lio/reactivex/internal/operators/observable/ObservableBuffer$BufferExactObserver;->count:I

    .line 64
    iput-object p3, p0, Lio/reactivex/internal/operators/observable/ObservableBuffer$BufferExactObserver;->bufferSupplier:Ljava/util/concurrent/Callable;

    .line 65
    return-void
.end method


# virtual methods
.method createBuffer()Z
    .locals 3

    .line 70
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableBuffer$BufferExactObserver;, "Lio/reactivex/internal/operators/observable/ObservableBuffer$BufferExactObserver<TT;TU;>;"
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableBuffer$BufferExactObserver;->bufferSupplier:Ljava/util/concurrent/Callable;

    invoke-interface {v1}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "Empty buffer supplied"

    invoke-static {v1, v2}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v1

    .line 81
    .local v0, "b":Ljava/util/Collection;, "TU;"
    nop

    .line 83
    iput-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableBuffer$BufferExactObserver;->buffer:Ljava/util/Collection;

    .line 85
    const/4 v1, 0x1

    return v1

    .line 71
    .end local v0    # "b":Ljava/util/Collection;, "TU;"
    :catchall_0
    move-exception v1

    move-object v2, v0

    .line 72
    .local v1, "t":Ljava/lang/Throwable;
    .local v2, "b":Ljava/util/Collection;, "TU;"
    invoke-static {v1}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 73
    iput-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableBuffer$BufferExactObserver;->buffer:Ljava/util/Collection;

    .line 74
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableBuffer$BufferExactObserver;->s:Lio/reactivex/disposables/Disposable;

    if-nez v0, :cond_0

    .line 75
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableBuffer$BufferExactObserver;->actual:Lio/reactivex/Observer;

    invoke-static {v1, v0}, Lio/reactivex/internal/disposables/EmptyDisposable;->error(Ljava/lang/Throwable;Lio/reactivex/Observer;)V

    goto :goto_0

    .line 77
    :cond_0
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 78
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableBuffer$BufferExactObserver;->actual:Lio/reactivex/Observer;

    invoke-interface {v0, v1}, Lio/reactivex/Observer;->onError(Ljava/lang/Throwable;)V

    .line 80
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public dispose()V
    .locals 1

    .line 98
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableBuffer$BufferExactObserver;, "Lio/reactivex/internal/operators/observable/ObservableBuffer$BufferExactObserver<TT;TU;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableBuffer$BufferExactObserver;->s:Lio/reactivex/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 99
    return-void
.end method

.method public isDisposed()Z
    .locals 1

    .line 103
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableBuffer$BufferExactObserver;, "Lio/reactivex/internal/operators/observable/ObservableBuffer$BufferExactObserver<TT;TU;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableBuffer$BufferExactObserver;->s:Lio/reactivex/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->isDisposed()Z

    move-result v0

    return v0
.end method

.method public onComplete()V
    .locals 2

    .line 129
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableBuffer$BufferExactObserver;, "Lio/reactivex/internal/operators/observable/ObservableBuffer$BufferExactObserver<TT;TU;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableBuffer$BufferExactObserver;->buffer:Ljava/util/Collection;

    .line 130
    .local v0, "b":Ljava/util/Collection;, "TU;"
    const/4 v1, 0x0

    iput-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableBuffer$BufferExactObserver;->buffer:Ljava/util/Collection;

    .line 131
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 132
    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableBuffer$BufferExactObserver;->actual:Lio/reactivex/Observer;

    invoke-interface {v1, v0}, Lio/reactivex/Observer;->onNext(Ljava/lang/Object;)V

    .line 134
    :cond_0
    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableBuffer$BufferExactObserver;->actual:Lio/reactivex/Observer;

    invoke-interface {v1}, Lio/reactivex/Observer;->onComplete()V

    .line 135
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "t"    # Ljava/lang/Throwable;

    .line 123
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableBuffer$BufferExactObserver;, "Lio/reactivex/internal/operators/observable/ObservableBuffer$BufferExactObserver<TT;TU;>;"
    const/4 v0, 0x0

    iput-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableBuffer$BufferExactObserver;->buffer:Ljava/util/Collection;

    .line 124
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableBuffer$BufferExactObserver;->actual:Lio/reactivex/Observer;

    invoke-interface {v0, p1}, Lio/reactivex/Observer;->onError(Ljava/lang/Throwable;)V

    .line 125
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 108
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableBuffer$BufferExactObserver;, "Lio/reactivex/internal/operators/observable/ObservableBuffer$BufferExactObserver<TT;TU;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableBuffer$BufferExactObserver;->buffer:Ljava/util/Collection;

    .line 109
    .local v0, "b":Ljava/util/Collection;, "TU;"
    if-eqz v0, :cond_0

    .line 110
    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 112
    iget v1, p0, Lio/reactivex/internal/operators/observable/ObservableBuffer$BufferExactObserver;->size:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lio/reactivex/internal/operators/observable/ObservableBuffer$BufferExactObserver;->size:I

    iget v2, p0, Lio/reactivex/internal/operators/observable/ObservableBuffer$BufferExactObserver;->count:I

    if-lt v1, v2, :cond_0

    .line 113
    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableBuffer$BufferExactObserver;->actual:Lio/reactivex/Observer;

    invoke-interface {v1, v0}, Lio/reactivex/Observer;->onNext(Ljava/lang/Object;)V

    .line 115
    const/4 v1, 0x0

    iput v1, p0, Lio/reactivex/internal/operators/observable/ObservableBuffer$BufferExactObserver;->size:I

    .line 116
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableBuffer$BufferExactObserver;->createBuffer()Z

    .line 119
    :cond_0
    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .locals 1
    .param p1, "s"    # Lio/reactivex/disposables/Disposable;

    .line 90
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableBuffer$BufferExactObserver;, "Lio/reactivex/internal/operators/observable/ObservableBuffer$BufferExactObserver<TT;TU;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableBuffer$BufferExactObserver;->s:Lio/reactivex/disposables/Disposable;

    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->validate(Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/Disposable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableBuffer$BufferExactObserver;->s:Lio/reactivex/disposables/Disposable;

    .line 92
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableBuffer$BufferExactObserver;->actual:Lio/reactivex/Observer;

    invoke-interface {v0, p0}, Lio/reactivex/Observer;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    .line 94
    :cond_0
    return-void
.end method
