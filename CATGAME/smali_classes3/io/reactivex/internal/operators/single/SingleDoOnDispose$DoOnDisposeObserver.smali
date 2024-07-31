.class final Lio/reactivex/internal/operators/single/SingleDoOnDispose$DoOnDisposeObserver;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "SingleDoOnDispose.java"

# interfaces
.implements Lio/reactivex/SingleObserver;
.implements Lio/reactivex/disposables/Disposable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/single/SingleDoOnDispose;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "DoOnDisposeObserver"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "Lio/reactivex/functions/Action;",
        ">;",
        "Lio/reactivex/SingleObserver<",
        "TT;>;",
        "Lio/reactivex/disposables/Disposable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x771fa8727d6491e8L


# instance fields
.field final actual:Lio/reactivex/SingleObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/SingleObserver<",
            "-TT;>;"
        }
    .end annotation
.end field

.field d:Lio/reactivex/disposables/Disposable;


# direct methods
.method constructor <init>(Lio/reactivex/SingleObserver;Lio/reactivex/functions/Action;)V
    .locals 0
    .param p2, "onDispose"    # Lio/reactivex/functions/Action;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/SingleObserver<",
            "-TT;>;",
            "Lio/reactivex/functions/Action;",
            ")V"
        }
    .end annotation

    .line 50
    .local p0, "this":Lio/reactivex/internal/operators/single/SingleDoOnDispose$DoOnDisposeObserver;, "Lio/reactivex/internal/operators/single/SingleDoOnDispose$DoOnDisposeObserver<TT;>;"
    .local p1, "actual":Lio/reactivex/SingleObserver;, "Lio/reactivex/SingleObserver<-TT;>;"
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 51
    iput-object p1, p0, Lio/reactivex/internal/operators/single/SingleDoOnDispose$DoOnDisposeObserver;->actual:Lio/reactivex/SingleObserver;

    .line 52
    invoke-virtual {p0, p2}, Lio/reactivex/internal/operators/single/SingleDoOnDispose$DoOnDisposeObserver;->lazySet(Ljava/lang/Object;)V

    .line 53
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 2

    .line 57
    .local p0, "this":Lio/reactivex/internal/operators/single/SingleDoOnDispose$DoOnDisposeObserver;, "Lio/reactivex/internal/operators/single/SingleDoOnDispose$DoOnDisposeObserver<TT;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lio/reactivex/internal/operators/single/SingleDoOnDispose$DoOnDisposeObserver;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/functions/Action;

    .line 58
    .local v0, "a":Lio/reactivex/functions/Action;
    if-eqz v0, :cond_0

    .line 60
    :try_start_0
    invoke-interface {v0}, Lio/reactivex/functions/Action;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    goto :goto_0

    .line 61
    :catchall_0
    move-exception v1

    .line 62
    .local v1, "ex":Ljava/lang/Throwable;
    invoke-static {v1}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 63
    invoke-static {v1}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    .line 65
    .end local v1    # "ex":Ljava/lang/Throwable;
    :goto_0
    iget-object v1, p0, Lio/reactivex/internal/operators/single/SingleDoOnDispose$DoOnDisposeObserver;->d:Lio/reactivex/disposables/Disposable;

    invoke-interface {v1}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 67
    :cond_0
    return-void
.end method

.method public isDisposed()Z
    .locals 1

    .line 71
    .local p0, "this":Lio/reactivex/internal/operators/single/SingleDoOnDispose$DoOnDisposeObserver;, "Lio/reactivex/internal/operators/single/SingleDoOnDispose$DoOnDisposeObserver<TT;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/single/SingleDoOnDispose$DoOnDisposeObserver;->d:Lio/reactivex/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->isDisposed()Z

    move-result v0

    return v0
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .line 89
    .local p0, "this":Lio/reactivex/internal/operators/single/SingleDoOnDispose$DoOnDisposeObserver;, "Lio/reactivex/internal/operators/single/SingleDoOnDispose$DoOnDisposeObserver<TT;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/single/SingleDoOnDispose$DoOnDisposeObserver;->actual:Lio/reactivex/SingleObserver;

    invoke-interface {v0, p1}, Lio/reactivex/SingleObserver;->onError(Ljava/lang/Throwable;)V

    .line 90
    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .locals 1
    .param p1, "d"    # Lio/reactivex/disposables/Disposable;

    .line 76
    .local p0, "this":Lio/reactivex/internal/operators/single/SingleDoOnDispose$DoOnDisposeObserver;, "Lio/reactivex/internal/operators/single/SingleDoOnDispose$DoOnDisposeObserver<TT;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/single/SingleDoOnDispose$DoOnDisposeObserver;->d:Lio/reactivex/disposables/Disposable;

    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->validate(Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/Disposable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    iput-object p1, p0, Lio/reactivex/internal/operators/single/SingleDoOnDispose$DoOnDisposeObserver;->d:Lio/reactivex/disposables/Disposable;

    .line 78
    iget-object v0, p0, Lio/reactivex/internal/operators/single/SingleDoOnDispose$DoOnDisposeObserver;->actual:Lio/reactivex/SingleObserver;

    invoke-interface {v0, p0}, Lio/reactivex/SingleObserver;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    .line 80
    :cond_0
    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 84
    .local p0, "this":Lio/reactivex/internal/operators/single/SingleDoOnDispose$DoOnDisposeObserver;, "Lio/reactivex/internal/operators/single/SingleDoOnDispose$DoOnDisposeObserver<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lio/reactivex/internal/operators/single/SingleDoOnDispose$DoOnDisposeObserver;->actual:Lio/reactivex/SingleObserver;

    invoke-interface {v0, p1}, Lio/reactivex/SingleObserver;->onSuccess(Ljava/lang/Object;)V

    .line 85
    return-void
.end method
