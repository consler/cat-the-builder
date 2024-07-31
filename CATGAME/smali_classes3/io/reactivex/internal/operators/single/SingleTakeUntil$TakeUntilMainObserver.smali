.class final Lio/reactivex/internal/operators/single/SingleTakeUntil$TakeUntilMainObserver;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "SingleTakeUntil.java"

# interfaces
.implements Lio/reactivex/SingleObserver;
.implements Lio/reactivex/disposables/Disposable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/single/SingleTakeUntil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "TakeUntilMainObserver"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
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
.field private static final serialVersionUID:J = -0x8a3eede5c49b545L


# instance fields
.field final actual:Lio/reactivex/SingleObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/SingleObserver<",
            "-TT;>;"
        }
    .end annotation
.end field

.field final other:Lio/reactivex/internal/operators/single/SingleTakeUntil$TakeUntilOtherSubscriber;


# direct methods
.method constructor <init>(Lio/reactivex/SingleObserver;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/SingleObserver<",
            "-TT;>;)V"
        }
    .end annotation

    .line 64
    .local p0, "this":Lio/reactivex/internal/operators/single/SingleTakeUntil$TakeUntilMainObserver;, "Lio/reactivex/internal/operators/single/SingleTakeUntil$TakeUntilMainObserver<TT;>;"
    .local p1, "actual":Lio/reactivex/SingleObserver;, "Lio/reactivex/SingleObserver<-TT;>;"
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 65
    iput-object p1, p0, Lio/reactivex/internal/operators/single/SingleTakeUntil$TakeUntilMainObserver;->actual:Lio/reactivex/SingleObserver;

    .line 66
    new-instance v0, Lio/reactivex/internal/operators/single/SingleTakeUntil$TakeUntilOtherSubscriber;

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/single/SingleTakeUntil$TakeUntilOtherSubscriber;-><init>(Lio/reactivex/internal/operators/single/SingleTakeUntil$TakeUntilMainObserver;)V

    iput-object v0, p0, Lio/reactivex/internal/operators/single/SingleTakeUntil$TakeUntilMainObserver;->other:Lio/reactivex/internal/operators/single/SingleTakeUntil$TakeUntilOtherSubscriber;

    .line 67
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 0

    .line 71
    .local p0, "this":Lio/reactivex/internal/operators/single/SingleTakeUntil$TakeUntilMainObserver;, "Lio/reactivex/internal/operators/single/SingleTakeUntil$TakeUntilMainObserver<TT;>;"
    invoke-static {p0}, Lio/reactivex/internal/disposables/DisposableHelper;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)Z

    .line 72
    return-void
.end method

.method public isDisposed()Z
    .locals 1

    .line 76
    .local p0, "this":Lio/reactivex/internal/operators/single/SingleTakeUntil$TakeUntilMainObserver;, "Lio/reactivex/internal/operators/single/SingleTakeUntil$TakeUntilMainObserver<TT;>;"
    invoke-virtual {p0}, Lio/reactivex/internal/operators/single/SingleTakeUntil$TakeUntilMainObserver;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/disposables/Disposable;

    invoke-static {v0}, Lio/reactivex/internal/disposables/DisposableHelper;->isDisposed(Lio/reactivex/disposables/Disposable;)Z

    move-result v0

    return v0
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "e"    # Ljava/lang/Throwable;

    .line 99
    .local p0, "this":Lio/reactivex/internal/operators/single/SingleTakeUntil$TakeUntilMainObserver;, "Lio/reactivex/internal/operators/single/SingleTakeUntil$TakeUntilMainObserver<TT;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/single/SingleTakeUntil$TakeUntilMainObserver;->other:Lio/reactivex/internal/operators/single/SingleTakeUntil$TakeUntilOtherSubscriber;

    invoke-virtual {v0}, Lio/reactivex/internal/operators/single/SingleTakeUntil$TakeUntilOtherSubscriber;->dispose()V

    .line 101
    invoke-virtual {p0}, Lio/reactivex/internal/operators/single/SingleTakeUntil$TakeUntilMainObserver;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/disposables/Disposable;

    .line 102
    .local v0, "a":Lio/reactivex/disposables/Disposable;
    sget-object v1, Lio/reactivex/internal/disposables/DisposableHelper;->DISPOSED:Lio/reactivex/internal/disposables/DisposableHelper;

    if-eq v0, v1, :cond_0

    .line 103
    sget-object v1, Lio/reactivex/internal/disposables/DisposableHelper;->DISPOSED:Lio/reactivex/internal/disposables/DisposableHelper;

    invoke-virtual {p0, v1}, Lio/reactivex/internal/operators/single/SingleTakeUntil$TakeUntilMainObserver;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lio/reactivex/disposables/Disposable;

    .line 104
    sget-object v1, Lio/reactivex/internal/disposables/DisposableHelper;->DISPOSED:Lio/reactivex/internal/disposables/DisposableHelper;

    if-eq v0, v1, :cond_0

    .line 105
    iget-object v1, p0, Lio/reactivex/internal/operators/single/SingleTakeUntil$TakeUntilMainObserver;->actual:Lio/reactivex/SingleObserver;

    invoke-interface {v1, p1}, Lio/reactivex/SingleObserver;->onError(Ljava/lang/Throwable;)V

    .line 106
    return-void

    .line 109
    :cond_0
    invoke-static {p1}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    .line 110
    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .locals 0
    .param p1, "d"    # Lio/reactivex/disposables/Disposable;

    .line 81
    .local p0, "this":Lio/reactivex/internal/operators/single/SingleTakeUntil$TakeUntilMainObserver;, "Lio/reactivex/internal/operators/single/SingleTakeUntil$TakeUntilMainObserver<TT;>;"
    invoke-static {p0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->setOnce(Ljava/util/concurrent/atomic/AtomicReference;Lio/reactivex/disposables/Disposable;)Z

    .line 82
    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 86
    .local p0, "this":Lio/reactivex/internal/operators/single/SingleTakeUntil$TakeUntilMainObserver;, "Lio/reactivex/internal/operators/single/SingleTakeUntil$TakeUntilMainObserver<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lio/reactivex/internal/operators/single/SingleTakeUntil$TakeUntilMainObserver;->other:Lio/reactivex/internal/operators/single/SingleTakeUntil$TakeUntilOtherSubscriber;

    invoke-virtual {v0}, Lio/reactivex/internal/operators/single/SingleTakeUntil$TakeUntilOtherSubscriber;->dispose()V

    .line 88
    invoke-virtual {p0}, Lio/reactivex/internal/operators/single/SingleTakeUntil$TakeUntilMainObserver;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/disposables/Disposable;

    .line 89
    .local v0, "a":Lio/reactivex/disposables/Disposable;
    sget-object v1, Lio/reactivex/internal/disposables/DisposableHelper;->DISPOSED:Lio/reactivex/internal/disposables/DisposableHelper;

    if-eq v0, v1, :cond_0

    .line 90
    sget-object v1, Lio/reactivex/internal/disposables/DisposableHelper;->DISPOSED:Lio/reactivex/internal/disposables/DisposableHelper;

    invoke-virtual {p0, v1}, Lio/reactivex/internal/operators/single/SingleTakeUntil$TakeUntilMainObserver;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lio/reactivex/disposables/Disposable;

    .line 91
    sget-object v1, Lio/reactivex/internal/disposables/DisposableHelper;->DISPOSED:Lio/reactivex/internal/disposables/DisposableHelper;

    if-eq v0, v1, :cond_0

    .line 92
    iget-object v1, p0, Lio/reactivex/internal/operators/single/SingleTakeUntil$TakeUntilMainObserver;->actual:Lio/reactivex/SingleObserver;

    invoke-interface {v1, p1}, Lio/reactivex/SingleObserver;->onSuccess(Ljava/lang/Object;)V

    .line 95
    :cond_0
    return-void
.end method

.method otherError(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "e"    # Ljava/lang/Throwable;

    .line 113
    .local p0, "this":Lio/reactivex/internal/operators/single/SingleTakeUntil$TakeUntilMainObserver;, "Lio/reactivex/internal/operators/single/SingleTakeUntil$TakeUntilMainObserver<TT;>;"
    invoke-virtual {p0}, Lio/reactivex/internal/operators/single/SingleTakeUntil$TakeUntilMainObserver;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/disposables/Disposable;

    .line 114
    .local v0, "a":Lio/reactivex/disposables/Disposable;
    sget-object v1, Lio/reactivex/internal/disposables/DisposableHelper;->DISPOSED:Lio/reactivex/internal/disposables/DisposableHelper;

    if-eq v0, v1, :cond_1

    .line 115
    sget-object v1, Lio/reactivex/internal/disposables/DisposableHelper;->DISPOSED:Lio/reactivex/internal/disposables/DisposableHelper;

    invoke-virtual {p0, v1}, Lio/reactivex/internal/operators/single/SingleTakeUntil$TakeUntilMainObserver;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lio/reactivex/disposables/Disposable;

    .line 116
    sget-object v1, Lio/reactivex/internal/disposables/DisposableHelper;->DISPOSED:Lio/reactivex/internal/disposables/DisposableHelper;

    if-eq v0, v1, :cond_1

    .line 117
    if-eqz v0, :cond_0

    .line 118
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 120
    :cond_0
    iget-object v1, p0, Lio/reactivex/internal/operators/single/SingleTakeUntil$TakeUntilMainObserver;->actual:Lio/reactivex/SingleObserver;

    invoke-interface {v1, p1}, Lio/reactivex/SingleObserver;->onError(Ljava/lang/Throwable;)V

    .line 121
    return-void

    .line 124
    :cond_1
    invoke-static {p1}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    .line 125
    return-void
.end method
