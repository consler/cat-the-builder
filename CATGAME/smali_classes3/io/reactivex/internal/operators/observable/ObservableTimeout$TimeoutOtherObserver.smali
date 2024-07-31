.class final Lio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutOtherObserver;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "ObservableTimeout.java"

# interfaces
.implements Lio/reactivex/Observer;
.implements Lio/reactivex/disposables/Disposable;
.implements Lio/reactivex/internal/operators/observable/ObservableTimeout$OnTimeout;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/observable/ObservableTimeout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "TimeoutOtherObserver"
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
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "Lio/reactivex/disposables/Disposable;",
        ">;",
        "Lio/reactivex/Observer<",
        "TT;>;",
        "Lio/reactivex/disposables/Disposable;",
        "Lio/reactivex/internal/operators/observable/ObservableTimeout$OnTimeout;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x1b2b8cce8b3b5a72L


# instance fields
.field final actual:Lio/reactivex/Observer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/Observer<",
            "-TT;>;"
        }
    .end annotation
.end field

.field final arbiter:Lio/reactivex/internal/disposables/ObserverFullArbiter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/disposables/ObserverFullArbiter<",
            "TT;>;"
        }
    .end annotation
.end field

.field done:Z

.field final firstTimeoutIndicator:Lio/reactivex/ObservableSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/ObservableSource<",
            "TU;>;"
        }
    .end annotation
.end field

.field volatile index:J

.field final itemTimeoutIndicator:Lio/reactivex/functions/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/Function<",
            "-TT;+",
            "Lio/reactivex/ObservableSource<",
            "TV;>;>;"
        }
    .end annotation
.end field

.field final other:Lio/reactivex/ObservableSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/ObservableSource<",
            "+TT;>;"
        }
    .end annotation
.end field

.field s:Lio/reactivex/disposables/Disposable;


# direct methods
.method constructor <init>(Lio/reactivex/Observer;Lio/reactivex/ObservableSource;Lio/reactivex/functions/Function;Lio/reactivex/ObservableSource;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observer<",
            "-TT;>;",
            "Lio/reactivex/ObservableSource<",
            "TU;>;",
            "Lio/reactivex/functions/Function<",
            "-TT;+",
            "Lio/reactivex/ObservableSource<",
            "TV;>;>;",
            "Lio/reactivex/ObservableSource<",
            "+TT;>;)V"
        }
    .end annotation

    .line 235
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutOtherObserver;, "Lio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutOtherObserver<TT;TU;TV;>;"
    .local p1, "actual":Lio/reactivex/Observer;, "Lio/reactivex/Observer<-TT;>;"
    .local p2, "firstTimeoutIndicator":Lio/reactivex/ObservableSource;, "Lio/reactivex/ObservableSource<TU;>;"
    .local p3, "itemTimeoutIndicator":Lio/reactivex/functions/Function;, "Lio/reactivex/functions/Function<-TT;+Lio/reactivex/ObservableSource<TV;>;>;"
    .local p4, "other":Lio/reactivex/ObservableSource;, "Lio/reactivex/ObservableSource<+TT;>;"
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 236
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutOtherObserver;->actual:Lio/reactivex/Observer;

    .line 237
    iput-object p2, p0, Lio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutOtherObserver;->firstTimeoutIndicator:Lio/reactivex/ObservableSource;

    .line 238
    iput-object p3, p0, Lio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutOtherObserver;->itemTimeoutIndicator:Lio/reactivex/functions/Function;

    .line 239
    iput-object p4, p0, Lio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutOtherObserver;->other:Lio/reactivex/ObservableSource;

    .line 240
    new-instance v0, Lio/reactivex/internal/disposables/ObserverFullArbiter;

    const/16 v1, 0x8

    invoke-direct {v0, p1, p0, v1}, Lio/reactivex/internal/disposables/ObserverFullArbiter;-><init>(Lio/reactivex/Observer;Lio/reactivex/disposables/Disposable;I)V

    iput-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutOtherObserver;->arbiter:Lio/reactivex/internal/disposables/ObserverFullArbiter;

    .line 241
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 1

    .line 324
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutOtherObserver;, "Lio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutOtherObserver<TT;TU;TV;>;"
    invoke-static {p0}, Lio/reactivex/internal/disposables/DisposableHelper;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 325
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutOtherObserver;->s:Lio/reactivex/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 327
    :cond_0
    return-void
.end method

.method public innerError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .line 344
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutOtherObserver;, "Lio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutOtherObserver<TT;TU;TV;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutOtherObserver;->s:Lio/reactivex/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 345
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutOtherObserver;->actual:Lio/reactivex/Observer;

    invoke-interface {v0, p1}, Lio/reactivex/Observer;->onError(Ljava/lang/Throwable;)V

    .line 346
    return-void
.end method

.method public isDisposed()Z
    .locals 1

    .line 331
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutOtherObserver;, "Lio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutOtherObserver<TT;TU;TV;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutOtherObserver;->s:Lio/reactivex/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->isDisposed()Z

    move-result v0

    return v0
.end method

.method public onComplete()V
    .locals 2

    .line 314
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutOtherObserver;, "Lio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutOtherObserver<TT;TU;TV;>;"
    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutOtherObserver;->done:Z

    if-eqz v0, :cond_0

    .line 315
    return-void

    .line 317
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutOtherObserver;->done:Z

    .line 318
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutOtherObserver;->dispose()V

    .line 319
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutOtherObserver;->arbiter:Lio/reactivex/internal/disposables/ObserverFullArbiter;

    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutOtherObserver;->s:Lio/reactivex/disposables/Disposable;

    invoke-virtual {v0, v1}, Lio/reactivex/internal/disposables/ObserverFullArbiter;->onComplete(Lio/reactivex/disposables/Disposable;)V

    .line 320
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "t"    # Ljava/lang/Throwable;

    .line 303
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutOtherObserver;, "Lio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutOtherObserver<TT;TU;TV;>;"
    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutOtherObserver;->done:Z

    if-eqz v0, :cond_0

    .line 304
    invoke-static {p1}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    .line 305
    return-void

    .line 307
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutOtherObserver;->done:Z

    .line 308
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutOtherObserver;->dispose()V

    .line 309
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutOtherObserver;->arbiter:Lio/reactivex/internal/disposables/ObserverFullArbiter;

    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutOtherObserver;->s:Lio/reactivex/disposables/Disposable;

    invoke-virtual {v0, p1, v1}, Lio/reactivex/internal/disposables/ObserverFullArbiter;->onError(Ljava/lang/Throwable;Lio/reactivex/disposables/Disposable;)V

    .line 310
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 269
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutOtherObserver;, "Lio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutOtherObserver<TT;TU;TV;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutOtherObserver;->done:Z

    if-eqz v0, :cond_0

    .line 270
    return-void

    .line 272
    :cond_0
    iget-wide v0, p0, Lio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutOtherObserver;->index:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    .line 273
    .local v0, "idx":J
    iput-wide v0, p0, Lio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutOtherObserver;->index:J

    .line 275
    iget-object v2, p0, Lio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutOtherObserver;->arbiter:Lio/reactivex/internal/disposables/ObserverFullArbiter;

    iget-object v3, p0, Lio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutOtherObserver;->s:Lio/reactivex/disposables/Disposable;

    invoke-virtual {v2, p1, v3}, Lio/reactivex/internal/disposables/ObserverFullArbiter;->onNext(Ljava/lang/Object;Lio/reactivex/disposables/Disposable;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 276
    return-void

    .line 279
    :cond_1
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutOtherObserver;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/reactivex/disposables/Disposable;

    .line 280
    .local v2, "d":Lio/reactivex/disposables/Disposable;
    if-eqz v2, :cond_2

    .line 281
    invoke-interface {v2}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 287
    :cond_2
    const/4 v3, 0x0

    :try_start_0
    iget-object v4, p0, Lio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutOtherObserver;->itemTimeoutIndicator:Lio/reactivex/functions/Function;

    invoke-interface {v4, p1}, Lio/reactivex/functions/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    const-string v5, "The ObservableSource returned is null"

    invoke-static {v4, v5}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/reactivex/ObservableSource;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v3, v4

    .line 292
    .local v3, "p":Lio/reactivex/ObservableSource;, "Lio/reactivex/ObservableSource<TV;>;"
    nop

    .line 294
    new-instance v4, Lio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutInnerObserver;

    invoke-direct {v4, p0, v0, v1}, Lio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutInnerObserver;-><init>(Lio/reactivex/internal/operators/observable/ObservableTimeout$OnTimeout;J)V

    .line 296
    .local v4, "tis":Lio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutInnerObserver;, "Lio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutInnerObserver<TT;TU;TV;>;"
    invoke-virtual {p0, v2, v4}, Lio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutOtherObserver;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 297
    invoke-interface {v3, v4}, Lio/reactivex/ObservableSource;->subscribe(Lio/reactivex/Observer;)V

    .line 299
    :cond_3
    return-void

    .line 288
    .end local v3    # "p":Lio/reactivex/ObservableSource;, "Lio/reactivex/ObservableSource<TV;>;"
    .end local v4    # "tis":Lio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutInnerObserver;, "Lio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutInnerObserver<TT;TU;TV;>;"
    :catchall_0
    move-exception v4

    .line 289
    .restart local v3    # "p":Lio/reactivex/ObservableSource;, "Lio/reactivex/ObservableSource<TV;>;"
    .local v4, "e":Ljava/lang/Throwable;
    invoke-static {v4}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 290
    iget-object v5, p0, Lio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutOtherObserver;->actual:Lio/reactivex/Observer;

    invoke-interface {v5, v4}, Lio/reactivex/Observer;->onError(Ljava/lang/Throwable;)V

    .line 291
    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .locals 5
    .param p1, "s"    # Lio/reactivex/disposables/Disposable;

    .line 245
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutOtherObserver;, "Lio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutOtherObserver<TT;TU;TV;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutOtherObserver;->s:Lio/reactivex/disposables/Disposable;

    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->validate(Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/Disposable;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 246
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutOtherObserver;->s:Lio/reactivex/disposables/Disposable;

    .line 248
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutOtherObserver;->arbiter:Lio/reactivex/internal/disposables/ObserverFullArbiter;

    invoke-virtual {v0, p1}, Lio/reactivex/internal/disposables/ObserverFullArbiter;->setDisposable(Lio/reactivex/disposables/Disposable;)Z

    .line 250
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutOtherObserver;->actual:Lio/reactivex/Observer;

    .line 252
    .local v0, "a":Lio/reactivex/Observer;, "Lio/reactivex/Observer<-TT;>;"
    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutOtherObserver;->firstTimeoutIndicator:Lio/reactivex/ObservableSource;

    .line 254
    .local v1, "p":Lio/reactivex/ObservableSource;, "Lio/reactivex/ObservableSource<TU;>;"
    if-eqz v1, :cond_1

    .line 255
    new-instance v2, Lio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutInnerObserver;

    const-wide/16 v3, 0x0

    invoke-direct {v2, p0, v3, v4}, Lio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutInnerObserver;-><init>(Lio/reactivex/internal/operators/observable/ObservableTimeout$OnTimeout;J)V

    .line 257
    .local v2, "tis":Lio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutInnerObserver;, "Lio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutInnerObserver<TT;TU;TV;>;"
    const/4 v3, 0x0

    invoke-virtual {p0, v3, v2}, Lio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutOtherObserver;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 258
    iget-object v3, p0, Lio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutOtherObserver;->arbiter:Lio/reactivex/internal/disposables/ObserverFullArbiter;

    invoke-interface {v0, v3}, Lio/reactivex/Observer;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    .line 259
    invoke-interface {v1, v2}, Lio/reactivex/ObservableSource;->subscribe(Lio/reactivex/Observer;)V

    .line 261
    .end local v2    # "tis":Lio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutInnerObserver;, "Lio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutInnerObserver<TT;TU;TV;>;"
    :cond_0
    goto :goto_0

    .line 262
    :cond_1
    iget-object v2, p0, Lio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutOtherObserver;->arbiter:Lio/reactivex/internal/disposables/ObserverFullArbiter;

    invoke-interface {v0, v2}, Lio/reactivex/Observer;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    .line 265
    .end local v0    # "a":Lio/reactivex/Observer;, "Lio/reactivex/Observer<-TT;>;"
    .end local v1    # "p":Lio/reactivex/ObservableSource;, "Lio/reactivex/ObservableSource<TU;>;"
    :cond_2
    :goto_0
    return-void
.end method

.method public timeout(J)V
    .locals 3
    .param p1, "idx"    # J

    .line 336
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutOtherObserver;, "Lio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutOtherObserver<TT;TU;TV;>;"
    iget-wide v0, p0, Lio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutOtherObserver;->index:J

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 337
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutOtherObserver;->dispose()V

    .line 338
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutOtherObserver;->other:Lio/reactivex/ObservableSource;

    new-instance v1, Lio/reactivex/internal/observers/FullArbiterObserver;

    iget-object v2, p0, Lio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutOtherObserver;->arbiter:Lio/reactivex/internal/disposables/ObserverFullArbiter;

    invoke-direct {v1, v2}, Lio/reactivex/internal/observers/FullArbiterObserver;-><init>(Lio/reactivex/internal/disposables/ObserverFullArbiter;)V

    invoke-interface {v0, v1}, Lio/reactivex/ObservableSource;->subscribe(Lio/reactivex/Observer;)V

    .line 340
    :cond_0
    return-void
.end method
