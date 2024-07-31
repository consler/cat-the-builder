.class final Lio/reactivex/internal/operators/observable/ObservableZipIterable$ZipIterableObserver;
.super Ljava/lang/Object;
.source "ObservableZipIterable.java"

# interfaces
.implements Lio/reactivex/Observer;
.implements Lio/reactivex/disposables/Disposable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/observable/ObservableZipIterable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ZipIterableObserver"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U:",
        "Ljava/lang/Object;",
        "V:",
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
            "-TV;>;"
        }
    .end annotation
.end field

.field done:Z

.field final iterator:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "TU;>;"
        }
    .end annotation
.end field

.field s:Lio/reactivex/disposables/Disposable;

.field final zipper:Lio/reactivex/functions/BiFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/BiFunction<",
            "-TT;-TU;+TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/reactivex/Observer;Ljava/util/Iterator;Lio/reactivex/functions/BiFunction;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observer<",
            "-TV;>;",
            "Ljava/util/Iterator<",
            "TU;>;",
            "Lio/reactivex/functions/BiFunction<",
            "-TT;-TU;+TV;>;)V"
        }
    .end annotation

    .line 79
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableZipIterable$ZipIterableObserver;, "Lio/reactivex/internal/operators/observable/ObservableZipIterable$ZipIterableObserver<TT;TU;TV;>;"
    .local p1, "actual":Lio/reactivex/Observer;, "Lio/reactivex/Observer<-TV;>;"
    .local p2, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<TU;>;"
    .local p3, "zipper":Lio/reactivex/functions/BiFunction;, "Lio/reactivex/functions/BiFunction<-TT;-TU;+TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableZipIterable$ZipIterableObserver;->actual:Lio/reactivex/Observer;

    .line 81
    iput-object p2, p0, Lio/reactivex/internal/operators/observable/ObservableZipIterable$ZipIterableObserver;->iterator:Ljava/util/Iterator;

    .line 82
    iput-object p3, p0, Lio/reactivex/internal/operators/observable/ObservableZipIterable$ZipIterableObserver;->zipper:Lio/reactivex/functions/BiFunction;

    .line 83
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 1

    .line 96
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableZipIterable$ZipIterableObserver;, "Lio/reactivex/internal/operators/observable/ObservableZipIterable$ZipIterableObserver<TT;TU;TV;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableZipIterable$ZipIterableObserver;->s:Lio/reactivex/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 97
    return-void
.end method

.method error(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .line 150
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableZipIterable$ZipIterableObserver;, "Lio/reactivex/internal/operators/observable/ObservableZipIterable$ZipIterableObserver<TT;TU;TV;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableZipIterable$ZipIterableObserver;->done:Z

    .line 151
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableZipIterable$ZipIterableObserver;->s:Lio/reactivex/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 152
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableZipIterable$ZipIterableObserver;->actual:Lio/reactivex/Observer;

    invoke-interface {v0, p1}, Lio/reactivex/Observer;->onError(Ljava/lang/Throwable;)V

    .line 153
    return-void
.end method

.method public isDisposed()Z
    .locals 1

    .line 101
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableZipIterable$ZipIterableObserver;, "Lio/reactivex/internal/operators/observable/ObservableZipIterable$ZipIterableObserver<TT;TU;TV;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableZipIterable$ZipIterableObserver;->s:Lio/reactivex/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->isDisposed()Z

    move-result v0

    return v0
.end method

.method public onComplete()V
    .locals 1

    .line 167
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableZipIterable$ZipIterableObserver;, "Lio/reactivex/internal/operators/observable/ObservableZipIterable$ZipIterableObserver<TT;TU;TV;>;"
    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableZipIterable$ZipIterableObserver;->done:Z

    if-eqz v0, :cond_0

    .line 168
    return-void

    .line 170
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableZipIterable$ZipIterableObserver;->done:Z

    .line 171
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableZipIterable$ZipIterableObserver;->actual:Lio/reactivex/Observer;

    invoke-interface {v0}, Lio/reactivex/Observer;->onComplete()V

    .line 172
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "t"    # Ljava/lang/Throwable;

    .line 157
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableZipIterable$ZipIterableObserver;, "Lio/reactivex/internal/operators/observable/ObservableZipIterable$ZipIterableObserver<TT;TU;TV;>;"
    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableZipIterable$ZipIterableObserver;->done:Z

    if-eqz v0, :cond_0

    .line 158
    invoke-static {p1}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    .line 159
    return-void

    .line 161
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableZipIterable$ZipIterableObserver;->done:Z

    .line 162
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableZipIterable$ZipIterableObserver;->actual:Lio/reactivex/Observer;

    invoke-interface {v0, p1}, Lio/reactivex/Observer;->onError(Ljava/lang/Throwable;)V

    .line 163
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 107
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableZipIterable$ZipIterableObserver;, "Lio/reactivex/internal/operators/observable/ObservableZipIterable$ZipIterableObserver<TT;TU;TV;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableZipIterable$ZipIterableObserver;->done:Z

    if-eqz v0, :cond_0

    .line 108
    return-void

    .line 114
    :cond_0
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableZipIterable$ZipIterableObserver;->iterator:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "The iterator returned a null value"

    invoke-static {v1, v2}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 119
    .local v1, "u":Ljava/lang/Object;, "TU;"
    nop

    .line 123
    :try_start_1
    iget-object v2, p0, Lio/reactivex/internal/operators/observable/ObservableZipIterable$ZipIterableObserver;->zipper:Lio/reactivex/functions/BiFunction;

    invoke-interface {v2, p1, v1}, Lio/reactivex/functions/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "The zipper function returned a null value"

    invoke-static {v2, v3}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 128
    .local v0, "v":Ljava/lang/Object;, "TV;"
    nop

    .line 130
    iget-object v2, p0, Lio/reactivex/internal/operators/observable/ObservableZipIterable$ZipIterableObserver;->actual:Lio/reactivex/Observer;

    invoke-interface {v2, v0}, Lio/reactivex/Observer;->onNext(Ljava/lang/Object;)V

    .line 135
    const/4 v2, 0x0

    :try_start_2
    iget-object v3, p0, Lio/reactivex/internal/operators/observable/ObservableZipIterable$ZipIterableObserver;->iterator:Ljava/util/Iterator;

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 140
    .local v2, "b":Z
    nop

    .line 142
    if-nez v2, :cond_1

    .line 143
    const/4 v3, 0x1

    iput-boolean v3, p0, Lio/reactivex/internal/operators/observable/ObservableZipIterable$ZipIterableObserver;->done:Z

    .line 144
    iget-object v3, p0, Lio/reactivex/internal/operators/observable/ObservableZipIterable$ZipIterableObserver;->s:Lio/reactivex/disposables/Disposable;

    invoke-interface {v3}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 145
    iget-object v3, p0, Lio/reactivex/internal/operators/observable/ObservableZipIterable$ZipIterableObserver;->actual:Lio/reactivex/Observer;

    invoke-interface {v3}, Lio/reactivex/Observer;->onComplete()V

    .line 147
    :cond_1
    return-void

    .line 136
    .end local v2    # "b":Z
    :catchall_0
    move-exception v3

    .line 137
    .restart local v2    # "b":Z
    .local v3, "e":Ljava/lang/Throwable;
    invoke-static {v3}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 138
    invoke-virtual {p0, v3}, Lio/reactivex/internal/operators/observable/ObservableZipIterable$ZipIterableObserver;->error(Ljava/lang/Throwable;)V

    .line 139
    return-void

    .line 124
    .end local v0    # "v":Ljava/lang/Object;, "TV;"
    .end local v2    # "b":Z
    .end local v3    # "e":Ljava/lang/Throwable;
    :catchall_1
    move-exception v2

    .line 125
    .restart local v0    # "v":Ljava/lang/Object;, "TV;"
    .local v2, "e":Ljava/lang/Throwable;
    invoke-static {v2}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 126
    invoke-virtual {p0, v2}, Lio/reactivex/internal/operators/observable/ObservableZipIterable$ZipIterableObserver;->error(Ljava/lang/Throwable;)V

    .line 127
    return-void

    .line 115
    .end local v0    # "v":Ljava/lang/Object;, "TV;"
    .end local v1    # "u":Ljava/lang/Object;, "TU;"
    .end local v2    # "e":Ljava/lang/Throwable;
    :catchall_2
    move-exception v1

    .line 116
    .local v0, "u":Ljava/lang/Object;, "TU;"
    .local v1, "e":Ljava/lang/Throwable;
    invoke-static {v1}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 117
    invoke-virtual {p0, v1}, Lio/reactivex/internal/operators/observable/ObservableZipIterable$ZipIterableObserver;->error(Ljava/lang/Throwable;)V

    .line 118
    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .locals 1
    .param p1, "s"    # Lio/reactivex/disposables/Disposable;

    .line 87
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableZipIterable$ZipIterableObserver;, "Lio/reactivex/internal/operators/observable/ObservableZipIterable$ZipIterableObserver<TT;TU;TV;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableZipIterable$ZipIterableObserver;->s:Lio/reactivex/disposables/Disposable;

    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->validate(Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/Disposable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 88
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableZipIterable$ZipIterableObserver;->s:Lio/reactivex/disposables/Disposable;

    .line 89
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableZipIterable$ZipIterableObserver;->actual:Lio/reactivex/Observer;

    invoke-interface {v0, p0}, Lio/reactivex/Observer;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    .line 91
    :cond_0
    return-void
.end method
