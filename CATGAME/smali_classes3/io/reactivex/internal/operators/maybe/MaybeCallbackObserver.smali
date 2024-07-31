.class public final Lio/reactivex/internal/operators/maybe/MaybeCallbackObserver;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "MaybeCallbackObserver.java"

# interfaces
.implements Lio/reactivex/MaybeObserver;
.implements Lio/reactivex/disposables/Disposable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "Lio/reactivex/disposables/Disposable;",
        ">;",
        "Lio/reactivex/MaybeObserver<",
        "TT;>;",
        "Lio/reactivex/disposables/Disposable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x5455abeb2f86e01aL


# instance fields
.field final onComplete:Lio/reactivex/functions/Action;

.field final onError:Lio/reactivex/functions/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/Consumer<",
            "-",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field

.field final onSuccess:Lio/reactivex/functions/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/Consumer<",
            "-TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Action;)V
    .locals 0
    .param p3, "onComplete"    # Lio/reactivex/functions/Action;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/functions/Consumer<",
            "-TT;>;",
            "Lio/reactivex/functions/Consumer<",
            "-",
            "Ljava/lang/Throwable;",
            ">;",
            "Lio/reactivex/functions/Action;",
            ")V"
        }
    .end annotation

    .line 45
    .local p0, "this":Lio/reactivex/internal/operators/maybe/MaybeCallbackObserver;, "Lio/reactivex/internal/operators/maybe/MaybeCallbackObserver<TT;>;"
    .local p1, "onSuccess":Lio/reactivex/functions/Consumer;, "Lio/reactivex/functions/Consumer<-TT;>;"
    .local p2, "onError":Lio/reactivex/functions/Consumer;, "Lio/reactivex/functions/Consumer<-Ljava/lang/Throwable;>;"
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 46
    iput-object p1, p0, Lio/reactivex/internal/operators/maybe/MaybeCallbackObserver;->onSuccess:Lio/reactivex/functions/Consumer;

    .line 47
    iput-object p2, p0, Lio/reactivex/internal/operators/maybe/MaybeCallbackObserver;->onError:Lio/reactivex/functions/Consumer;

    .line 48
    iput-object p3, p0, Lio/reactivex/internal/operators/maybe/MaybeCallbackObserver;->onComplete:Lio/reactivex/functions/Action;

    .line 49
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 0

    .line 53
    .local p0, "this":Lio/reactivex/internal/operators/maybe/MaybeCallbackObserver;, "Lio/reactivex/internal/operators/maybe/MaybeCallbackObserver<TT;>;"
    invoke-static {p0}, Lio/reactivex/internal/disposables/DisposableHelper;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)Z

    .line 54
    return-void
.end method

.method public isDisposed()Z
    .locals 1

    .line 58
    .local p0, "this":Lio/reactivex/internal/operators/maybe/MaybeCallbackObserver;, "Lio/reactivex/internal/operators/maybe/MaybeCallbackObserver<TT;>;"
    invoke-virtual {p0}, Lio/reactivex/internal/operators/maybe/MaybeCallbackObserver;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/disposables/Disposable;

    invoke-static {v0}, Lio/reactivex/internal/disposables/DisposableHelper;->isDisposed(Lio/reactivex/disposables/Disposable;)Z

    move-result v0

    return v0
.end method

.method public onComplete()V
    .locals 1

    .line 90
    .local p0, "this":Lio/reactivex/internal/operators/maybe/MaybeCallbackObserver;, "Lio/reactivex/internal/operators/maybe/MaybeCallbackObserver<TT;>;"
    sget-object v0, Lio/reactivex/internal/disposables/DisposableHelper;->DISPOSED:Lio/reactivex/internal/disposables/DisposableHelper;

    invoke-virtual {p0, v0}, Lio/reactivex/internal/operators/maybe/MaybeCallbackObserver;->lazySet(Ljava/lang/Object;)V

    .line 92
    :try_start_0
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/MaybeCallbackObserver;->onComplete:Lio/reactivex/functions/Action;

    invoke-interface {v0}, Lio/reactivex/functions/Action;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    goto :goto_0

    .line 93
    :catchall_0
    move-exception v0

    .line 94
    .local v0, "ex":Ljava/lang/Throwable;
    invoke-static {v0}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 95
    invoke-static {v0}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    .line 97
    .end local v0    # "ex":Ljava/lang/Throwable;
    :goto_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 4
    .param p1, "e"    # Ljava/lang/Throwable;

    .line 79
    .local p0, "this":Lio/reactivex/internal/operators/maybe/MaybeCallbackObserver;, "Lio/reactivex/internal/operators/maybe/MaybeCallbackObserver<TT;>;"
    sget-object v0, Lio/reactivex/internal/disposables/DisposableHelper;->DISPOSED:Lio/reactivex/internal/disposables/DisposableHelper;

    invoke-virtual {p0, v0}, Lio/reactivex/internal/operators/maybe/MaybeCallbackObserver;->lazySet(Ljava/lang/Object;)V

    .line 81
    :try_start_0
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/MaybeCallbackObserver;->onError:Lio/reactivex/functions/Consumer;

    invoke-interface {v0, p1}, Lio/reactivex/functions/Consumer;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    goto :goto_0

    .line 82
    :catchall_0
    move-exception v0

    .line 83
    .local v0, "ex":Ljava/lang/Throwable;
    invoke-static {v0}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 84
    new-instance v1, Lio/reactivex/exceptions/CompositeException;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Throwable;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object v0, v2, v3

    invoke-direct {v1, v2}, Lio/reactivex/exceptions/CompositeException;-><init>([Ljava/lang/Throwable;)V

    invoke-static {v1}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    .line 86
    .end local v0    # "ex":Ljava/lang/Throwable;
    :goto_0
    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .locals 0
    .param p1, "d"    # Lio/reactivex/disposables/Disposable;

    .line 63
    .local p0, "this":Lio/reactivex/internal/operators/maybe/MaybeCallbackObserver;, "Lio/reactivex/internal/operators/maybe/MaybeCallbackObserver<TT;>;"
    invoke-static {p0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->setOnce(Ljava/util/concurrent/atomic/AtomicReference;Lio/reactivex/disposables/Disposable;)Z

    .line 64
    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 68
    .local p0, "this":Lio/reactivex/internal/operators/maybe/MaybeCallbackObserver;, "Lio/reactivex/internal/operators/maybe/MaybeCallbackObserver<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    sget-object v0, Lio/reactivex/internal/disposables/DisposableHelper;->DISPOSED:Lio/reactivex/internal/disposables/DisposableHelper;

    invoke-virtual {p0, v0}, Lio/reactivex/internal/operators/maybe/MaybeCallbackObserver;->lazySet(Ljava/lang/Object;)V

    .line 70
    :try_start_0
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/MaybeCallbackObserver;->onSuccess:Lio/reactivex/functions/Consumer;

    invoke-interface {v0, p1}, Lio/reactivex/functions/Consumer;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    goto :goto_0

    .line 71
    :catchall_0
    move-exception v0

    .line 72
    .local v0, "ex":Ljava/lang/Throwable;
    invoke-static {v0}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 73
    invoke-static {v0}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    .line 75
    .end local v0    # "ex":Ljava/lang/Throwable;
    :goto_0
    return-void
.end method
