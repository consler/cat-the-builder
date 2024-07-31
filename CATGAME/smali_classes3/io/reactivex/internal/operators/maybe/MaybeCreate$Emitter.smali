.class final Lio/reactivex/internal/operators/maybe/MaybeCreate$Emitter;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "MaybeCreate.java"

# interfaces
.implements Lio/reactivex/MaybeEmitter;
.implements Lio/reactivex/disposables/Disposable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/maybe/MaybeCreate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Emitter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "Lio/reactivex/disposables/Disposable;",
        ">;",
        "Lio/reactivex/MaybeEmitter<",
        "TT;>;",
        "Lio/reactivex/disposables/Disposable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x223dd198233781a4L


# instance fields
.field final actual:Lio/reactivex/MaybeObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/MaybeObserver<",
            "-TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/reactivex/MaybeObserver;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/MaybeObserver<",
            "-TT;>;)V"
        }
    .end annotation

    .line 58
    .local p0, "this":Lio/reactivex/internal/operators/maybe/MaybeCreate$Emitter;, "Lio/reactivex/internal/operators/maybe/MaybeCreate$Emitter<TT;>;"
    .local p1, "actual":Lio/reactivex/MaybeObserver;, "Lio/reactivex/MaybeObserver<-TT;>;"
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 59
    iput-object p1, p0, Lio/reactivex/internal/operators/maybe/MaybeCreate$Emitter;->actual:Lio/reactivex/MaybeObserver;

    .line 60
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 0

    .line 134
    .local p0, "this":Lio/reactivex/internal/operators/maybe/MaybeCreate$Emitter;, "Lio/reactivex/internal/operators/maybe/MaybeCreate$Emitter<TT;>;"
    invoke-static {p0}, Lio/reactivex/internal/disposables/DisposableHelper;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)Z

    .line 135
    return-void
.end method

.method public isDisposed()Z
    .locals 1

    .line 139
    .local p0, "this":Lio/reactivex/internal/operators/maybe/MaybeCreate$Emitter;, "Lio/reactivex/internal/operators/maybe/MaybeCreate$Emitter<TT;>;"
    invoke-virtual {p0}, Lio/reactivex/internal/operators/maybe/MaybeCreate$Emitter;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/disposables/Disposable;

    invoke-static {v0}, Lio/reactivex/internal/disposables/DisposableHelper;->isDisposed(Lio/reactivex/disposables/Disposable;)Z

    move-result v0

    return v0
.end method

.method public onComplete()V
    .locals 2

    .line 108
    .local p0, "this":Lio/reactivex/internal/operators/maybe/MaybeCreate$Emitter;, "Lio/reactivex/internal/operators/maybe/MaybeCreate$Emitter<TT;>;"
    invoke-virtual {p0}, Lio/reactivex/internal/operators/maybe/MaybeCreate$Emitter;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lio/reactivex/internal/disposables/DisposableHelper;->DISPOSED:Lio/reactivex/internal/disposables/DisposableHelper;

    if-eq v0, v1, :cond_1

    .line 109
    sget-object v0, Lio/reactivex/internal/disposables/DisposableHelper;->DISPOSED:Lio/reactivex/internal/disposables/DisposableHelper;

    invoke-virtual {p0, v0}, Lio/reactivex/internal/operators/maybe/MaybeCreate$Emitter;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/disposables/Disposable;

    .line 110
    .local v0, "d":Lio/reactivex/disposables/Disposable;
    sget-object v1, Lio/reactivex/internal/disposables/DisposableHelper;->DISPOSED:Lio/reactivex/internal/disposables/DisposableHelper;

    if-eq v0, v1, :cond_1

    .line 112
    :try_start_0
    iget-object v1, p0, Lio/reactivex/internal/operators/maybe/MaybeCreate$Emitter;->actual:Lio/reactivex/MaybeObserver;

    invoke-interface {v1}, Lio/reactivex/MaybeObserver;->onComplete()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 114
    if-eqz v0, :cond_1

    .line 115
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    goto :goto_0

    .line 114
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_0

    .line 115
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    :cond_0
    throw v1

    .line 120
    .end local v0    # "d":Lio/reactivex/disposables/Disposable;
    :cond_1
    :goto_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "t"    # Ljava/lang/Throwable;

    .line 87
    .local p0, "this":Lio/reactivex/internal/operators/maybe/MaybeCreate$Emitter;, "Lio/reactivex/internal/operators/maybe/MaybeCreate$Emitter<TT;>;"
    if-nez p1, :cond_0

    .line 88
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "onError called with null. Null values are generally not allowed in 2.x operators and sources."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    move-object p1, v0

    .line 90
    :cond_0
    invoke-virtual {p0}, Lio/reactivex/internal/operators/maybe/MaybeCreate$Emitter;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lio/reactivex/internal/disposables/DisposableHelper;->DISPOSED:Lio/reactivex/internal/disposables/DisposableHelper;

    if-eq v0, v1, :cond_3

    .line 91
    sget-object v0, Lio/reactivex/internal/disposables/DisposableHelper;->DISPOSED:Lio/reactivex/internal/disposables/DisposableHelper;

    invoke-virtual {p0, v0}, Lio/reactivex/internal/operators/maybe/MaybeCreate$Emitter;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/disposables/Disposable;

    .line 92
    .local v0, "d":Lio/reactivex/disposables/Disposable;
    sget-object v1, Lio/reactivex/internal/disposables/DisposableHelper;->DISPOSED:Lio/reactivex/internal/disposables/DisposableHelper;

    if-eq v0, v1, :cond_3

    .line 94
    :try_start_0
    iget-object v1, p0, Lio/reactivex/internal/operators/maybe/MaybeCreate$Emitter;->actual:Lio/reactivex/MaybeObserver;

    invoke-interface {v1, p1}, Lio/reactivex/MaybeObserver;->onError(Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    if-eqz v0, :cond_1

    .line 97
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 100
    :cond_1
    return-void

    .line 96
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_2

    .line 97
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    :cond_2
    throw v1

    .line 103
    .end local v0    # "d":Lio/reactivex/disposables/Disposable;
    :cond_3
    invoke-static {p1}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    .line 104
    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 67
    .local p0, "this":Lio/reactivex/internal/operators/maybe/MaybeCreate$Emitter;, "Lio/reactivex/internal/operators/maybe/MaybeCreate$Emitter<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0}, Lio/reactivex/internal/operators/maybe/MaybeCreate$Emitter;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lio/reactivex/internal/disposables/DisposableHelper;->DISPOSED:Lio/reactivex/internal/disposables/DisposableHelper;

    if-eq v0, v1, :cond_2

    .line 68
    sget-object v0, Lio/reactivex/internal/disposables/DisposableHelper;->DISPOSED:Lio/reactivex/internal/disposables/DisposableHelper;

    invoke-virtual {p0, v0}, Lio/reactivex/internal/operators/maybe/MaybeCreate$Emitter;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/disposables/Disposable;

    .line 69
    .local v0, "d":Lio/reactivex/disposables/Disposable;
    sget-object v1, Lio/reactivex/internal/disposables/DisposableHelper;->DISPOSED:Lio/reactivex/internal/disposables/DisposableHelper;

    if-eq v0, v1, :cond_2

    .line 71
    if-nez p1, :cond_0

    .line 72
    :try_start_0
    iget-object v1, p0, Lio/reactivex/internal/operators/maybe/MaybeCreate$Emitter;->actual:Lio/reactivex/MaybeObserver;

    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "onSuccess called with null. Null values are generally not allowed in 2.x operators and sources."

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Lio/reactivex/MaybeObserver;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 74
    :cond_0
    iget-object v1, p0, Lio/reactivex/internal/operators/maybe/MaybeCreate$Emitter;->actual:Lio/reactivex/MaybeObserver;

    invoke-interface {v1, p1}, Lio/reactivex/MaybeObserver;->onSuccess(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    :goto_0
    if-eqz v0, :cond_2

    .line 78
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    goto :goto_1

    .line 77
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_1

    .line 78
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    :cond_1
    throw v1

    .line 83
    .end local v0    # "d":Lio/reactivex/disposables/Disposable;
    :cond_2
    :goto_1
    return-void
.end method

.method public setCancellable(Lio/reactivex/functions/Cancellable;)V
    .locals 1
    .param p1, "c"    # Lio/reactivex/functions/Cancellable;

    .line 129
    .local p0, "this":Lio/reactivex/internal/operators/maybe/MaybeCreate$Emitter;, "Lio/reactivex/internal/operators/maybe/MaybeCreate$Emitter<TT;>;"
    new-instance v0, Lio/reactivex/internal/disposables/CancellableDisposable;

    invoke-direct {v0, p1}, Lio/reactivex/internal/disposables/CancellableDisposable;-><init>(Lio/reactivex/functions/Cancellable;)V

    invoke-virtual {p0, v0}, Lio/reactivex/internal/operators/maybe/MaybeCreate$Emitter;->setDisposable(Lio/reactivex/disposables/Disposable;)V

    .line 130
    return-void
.end method

.method public setDisposable(Lio/reactivex/disposables/Disposable;)V
    .locals 0
    .param p1, "d"    # Lio/reactivex/disposables/Disposable;

    .line 124
    .local p0, "this":Lio/reactivex/internal/operators/maybe/MaybeCreate$Emitter;, "Lio/reactivex/internal/operators/maybe/MaybeCreate$Emitter<TT;>;"
    invoke-static {p0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->set(Ljava/util/concurrent/atomic/AtomicReference;Lio/reactivex/disposables/Disposable;)Z

    .line 125
    return-void
.end method
