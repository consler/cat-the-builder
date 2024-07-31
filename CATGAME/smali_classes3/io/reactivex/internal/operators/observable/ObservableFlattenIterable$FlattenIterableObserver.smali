.class final Lio/reactivex/internal/operators/observable/ObservableFlattenIterable$FlattenIterableObserver;
.super Ljava/lang/Object;
.source "ObservableFlattenIterable.java"

# interfaces
.implements Lio/reactivex/Observer;
.implements Lio/reactivex/disposables/Disposable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/observable/ObservableFlattenIterable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "FlattenIterableObserver"
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
.field final actual:Lio/reactivex/Observer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/Observer<",
            "-TR;>;"
        }
    .end annotation
.end field

.field d:Lio/reactivex/disposables/Disposable;

.field final mapper:Lio/reactivex/functions/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/Function<",
            "-TT;+",
            "Ljava/lang/Iterable<",
            "+TR;>;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/reactivex/Observer;Lio/reactivex/functions/Function;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observer<",
            "-TR;>;",
            "Lio/reactivex/functions/Function<",
            "-TT;+",
            "Ljava/lang/Iterable<",
            "+TR;>;>;)V"
        }
    .end annotation

    .line 54
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableFlattenIterable$FlattenIterableObserver;, "Lio/reactivex/internal/operators/observable/ObservableFlattenIterable$FlattenIterableObserver<TT;TR;>;"
    .local p1, "actual":Lio/reactivex/Observer;, "Lio/reactivex/Observer<-TR;>;"
    .local p2, "mapper":Lio/reactivex/functions/Function;, "Lio/reactivex/functions/Function<-TT;+Ljava/lang/Iterable<+TR;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableFlattenIterable$FlattenIterableObserver;->actual:Lio/reactivex/Observer;

    .line 56
    iput-object p2, p0, Lio/reactivex/internal/operators/observable/ObservableFlattenIterable$FlattenIterableObserver;->mapper:Lio/reactivex/functions/Function;

    .line 57
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 1

    .line 144
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableFlattenIterable$FlattenIterableObserver;, "Lio/reactivex/internal/operators/observable/ObservableFlattenIterable$FlattenIterableObserver<TT;TR;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableFlattenIterable$FlattenIterableObserver;->d:Lio/reactivex/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 145
    sget-object v0, Lio/reactivex/internal/disposables/DisposableHelper;->DISPOSED:Lio/reactivex/internal/disposables/DisposableHelper;

    iput-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableFlattenIterable$FlattenIterableObserver;->d:Lio/reactivex/disposables/Disposable;

    .line 146
    return-void
.end method

.method public isDisposed()Z
    .locals 1

    .line 139
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableFlattenIterable$FlattenIterableObserver;, "Lio/reactivex/internal/operators/observable/ObservableFlattenIterable$FlattenIterableObserver<TT;TR;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableFlattenIterable$FlattenIterableObserver;->d:Lio/reactivex/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->isDisposed()Z

    move-result v0

    return v0
.end method

.method public onComplete()V
    .locals 2

    .line 130
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableFlattenIterable$FlattenIterableObserver;, "Lio/reactivex/internal/operators/observable/ObservableFlattenIterable$FlattenIterableObserver<TT;TR;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableFlattenIterable$FlattenIterableObserver;->d:Lio/reactivex/disposables/Disposable;

    sget-object v1, Lio/reactivex/internal/disposables/DisposableHelper;->DISPOSED:Lio/reactivex/internal/disposables/DisposableHelper;

    if-ne v0, v1, :cond_0

    .line 131
    return-void

    .line 133
    :cond_0
    sget-object v0, Lio/reactivex/internal/disposables/DisposableHelper;->DISPOSED:Lio/reactivex/internal/disposables/DisposableHelper;

    iput-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableFlattenIterable$FlattenIterableObserver;->d:Lio/reactivex/disposables/Disposable;

    .line 134
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableFlattenIterable$FlattenIterableObserver;->actual:Lio/reactivex/Observer;

    invoke-interface {v0}, Lio/reactivex/Observer;->onComplete()V

    .line 135
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "e"    # Ljava/lang/Throwable;

    .line 120
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableFlattenIterable$FlattenIterableObserver;, "Lio/reactivex/internal/operators/observable/ObservableFlattenIterable$FlattenIterableObserver<TT;TR;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableFlattenIterable$FlattenIterableObserver;->d:Lio/reactivex/disposables/Disposable;

    sget-object v1, Lio/reactivex/internal/disposables/DisposableHelper;->DISPOSED:Lio/reactivex/internal/disposables/DisposableHelper;

    if-ne v0, v1, :cond_0

    .line 121
    invoke-static {p1}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    .line 122
    return-void

    .line 124
    :cond_0
    sget-object v0, Lio/reactivex/internal/disposables/DisposableHelper;->DISPOSED:Lio/reactivex/internal/disposables/DisposableHelper;

    iput-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableFlattenIterable$FlattenIterableObserver;->d:Lio/reactivex/disposables/Disposable;

    .line 125
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableFlattenIterable$FlattenIterableObserver;->actual:Lio/reactivex/Observer;

    invoke-interface {v0, p1}, Lio/reactivex/Observer;->onError(Ljava/lang/Throwable;)V

    .line 126
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 70
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableFlattenIterable$FlattenIterableObserver;, "Lio/reactivex/internal/operators/observable/ObservableFlattenIterable$FlattenIterableObserver<TT;TR;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableFlattenIterable$FlattenIterableObserver;->d:Lio/reactivex/disposables/Disposable;

    sget-object v1, Lio/reactivex/internal/disposables/DisposableHelper;->DISPOSED:Lio/reactivex/internal/disposables/DisposableHelper;

    if-ne v0, v1, :cond_0

    .line 71
    return-void

    .line 77
    :cond_0
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableFlattenIterable$FlattenIterableObserver;->mapper:Lio/reactivex/functions/Function;

    invoke-interface {v1, p1}, Lio/reactivex/functions/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 83
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<+TR;>;"
    nop

    .line 85
    iget-object v2, p0, Lio/reactivex/internal/operators/observable/ObservableFlattenIterable$FlattenIterableObserver;->actual:Lio/reactivex/Observer;

    .local v2, "a":Lio/reactivex/Observer;, "Lio/reactivex/Observer<-TR;>;"
    const/4 v3, 0x0

    .line 91
    :goto_0
    :try_start_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 97
    .local v3, "b":Z
    nop

    .line 99
    if-eqz v3, :cond_1

    .line 103
    :try_start_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    const-string v5, "The iterator returned a null value"

    invoke-static {v4, v5}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 109
    .local v0, "v":Ljava/lang/Object;, "TR;"
    nop

    .line 111
    invoke-interface {v2, v0}, Lio/reactivex/Observer;->onNext(Ljava/lang/Object;)V

    .line 115
    .end local v0    # "v":Ljava/lang/Object;, "TR;"
    .end local v3    # "b":Z
    goto :goto_0

    .line 104
    .restart local v3    # "b":Z
    :catchall_0
    move-exception v4

    .line 105
    .restart local v0    # "v":Ljava/lang/Object;, "TR;"
    .local v4, "ex":Ljava/lang/Throwable;
    invoke-static {v4}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 106
    iget-object v5, p0, Lio/reactivex/internal/operators/observable/ObservableFlattenIterable$FlattenIterableObserver;->d:Lio/reactivex/disposables/Disposable;

    invoke-interface {v5}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 107
    invoke-virtual {p0, v4}, Lio/reactivex/internal/operators/observable/ObservableFlattenIterable$FlattenIterableObserver;->onError(Ljava/lang/Throwable;)V

    .line 108
    return-void

    .line 116
    .end local v0    # "v":Ljava/lang/Object;, "TR;"
    .end local v3    # "b":Z
    .end local v4    # "ex":Ljava/lang/Throwable;
    :cond_1
    return-void

    .line 92
    :catchall_1
    move-exception v0

    .line 93
    .local v0, "ex":Ljava/lang/Throwable;
    .restart local v3    # "b":Z
    invoke-static {v0}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 94
    iget-object v4, p0, Lio/reactivex/internal/operators/observable/ObservableFlattenIterable$FlattenIterableObserver;->d:Lio/reactivex/disposables/Disposable;

    invoke-interface {v4}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 95
    invoke-virtual {p0, v0}, Lio/reactivex/internal/operators/observable/ObservableFlattenIterable$FlattenIterableObserver;->onError(Ljava/lang/Throwable;)V

    .line 96
    return-void

    .line 78
    .end local v0    # "ex":Ljava/lang/Throwable;
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<+TR;>;"
    .end local v2    # "a":Lio/reactivex/Observer;, "Lio/reactivex/Observer<-TR;>;"
    .end local v3    # "b":Z
    :catchall_2
    move-exception v1

    .line 79
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<+TR;>;"
    .local v1, "ex":Ljava/lang/Throwable;
    invoke-static {v1}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 80
    iget-object v2, p0, Lio/reactivex/internal/operators/observable/ObservableFlattenIterable$FlattenIterableObserver;->d:Lio/reactivex/disposables/Disposable;

    invoke-interface {v2}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 81
    invoke-virtual {p0, v1}, Lio/reactivex/internal/operators/observable/ObservableFlattenIterable$FlattenIterableObserver;->onError(Ljava/lang/Throwable;)V

    .line 82
    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .locals 1
    .param p1, "d"    # Lio/reactivex/disposables/Disposable;

    .line 61
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableFlattenIterable$FlattenIterableObserver;, "Lio/reactivex/internal/operators/observable/ObservableFlattenIterable$FlattenIterableObserver<TT;TR;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableFlattenIterable$FlattenIterableObserver;->d:Lio/reactivex/disposables/Disposable;

    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->validate(Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/Disposable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 62
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableFlattenIterable$FlattenIterableObserver;->d:Lio/reactivex/disposables/Disposable;

    .line 64
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableFlattenIterable$FlattenIterableObserver;->actual:Lio/reactivex/Observer;

    invoke-interface {v0, p0}, Lio/reactivex/Observer;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    .line 66
    :cond_0
    return-void
.end method
