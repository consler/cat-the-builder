.class final Lio/reactivex/internal/operators/maybe/MaybeDelayWithCompletable$OtherObserver;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "MaybeDelayWithCompletable.java"

# interfaces
.implements Lio/reactivex/CompletableObserver;
.implements Lio/reactivex/disposables/Disposable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/maybe/MaybeDelayWithCompletable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "OtherObserver"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "Lio/reactivex/disposables/Disposable;",
        ">;",
        "Lio/reactivex/CompletableObserver;",
        "Lio/reactivex/disposables/Disposable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x9c3039c7940ab61L


# instance fields
.field final actual:Lio/reactivex/MaybeObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/MaybeObserver<",
            "-TT;>;"
        }
    .end annotation
.end field

.field final source:Lio/reactivex/MaybeSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/MaybeSource<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/reactivex/MaybeObserver;Lio/reactivex/MaybeSource;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/MaybeObserver<",
            "-TT;>;",
            "Lio/reactivex/MaybeSource<",
            "TT;>;)V"
        }
    .end annotation

    .line 50
    .local p0, "this":Lio/reactivex/internal/operators/maybe/MaybeDelayWithCompletable$OtherObserver;, "Lio/reactivex/internal/operators/maybe/MaybeDelayWithCompletable$OtherObserver<TT;>;"
    .local p1, "actual":Lio/reactivex/MaybeObserver;, "Lio/reactivex/MaybeObserver<-TT;>;"
    .local p2, "source":Lio/reactivex/MaybeSource;, "Lio/reactivex/MaybeSource<TT;>;"
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 51
    iput-object p1, p0, Lio/reactivex/internal/operators/maybe/MaybeDelayWithCompletable$OtherObserver;->actual:Lio/reactivex/MaybeObserver;

    .line 52
    iput-object p2, p0, Lio/reactivex/internal/operators/maybe/MaybeDelayWithCompletable$OtherObserver;->source:Lio/reactivex/MaybeSource;

    .line 53
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 0

    .line 75
    .local p0, "this":Lio/reactivex/internal/operators/maybe/MaybeDelayWithCompletable$OtherObserver;, "Lio/reactivex/internal/operators/maybe/MaybeDelayWithCompletable$OtherObserver<TT;>;"
    invoke-static {p0}, Lio/reactivex/internal/disposables/DisposableHelper;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)Z

    .line 76
    return-void
.end method

.method public isDisposed()Z
    .locals 1

    .line 80
    .local p0, "this":Lio/reactivex/internal/operators/maybe/MaybeDelayWithCompletable$OtherObserver;, "Lio/reactivex/internal/operators/maybe/MaybeDelayWithCompletable$OtherObserver<TT;>;"
    invoke-virtual {p0}, Lio/reactivex/internal/operators/maybe/MaybeDelayWithCompletable$OtherObserver;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/disposables/Disposable;

    invoke-static {v0}, Lio/reactivex/internal/disposables/DisposableHelper;->isDisposed(Lio/reactivex/disposables/Disposable;)Z

    move-result v0

    return v0
.end method

.method public onComplete()V
    .locals 3

    .line 70
    .local p0, "this":Lio/reactivex/internal/operators/maybe/MaybeDelayWithCompletable$OtherObserver;, "Lio/reactivex/internal/operators/maybe/MaybeDelayWithCompletable$OtherObserver<TT;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/MaybeDelayWithCompletable$OtherObserver;->source:Lio/reactivex/MaybeSource;

    new-instance v1, Lio/reactivex/internal/operators/maybe/MaybeDelayWithCompletable$DelayWithMainObserver;

    iget-object v2, p0, Lio/reactivex/internal/operators/maybe/MaybeDelayWithCompletable$OtherObserver;->actual:Lio/reactivex/MaybeObserver;

    invoke-direct {v1, p0, v2}, Lio/reactivex/internal/operators/maybe/MaybeDelayWithCompletable$DelayWithMainObserver;-><init>(Ljava/util/concurrent/atomic/AtomicReference;Lio/reactivex/MaybeObserver;)V

    invoke-interface {v0, v1}, Lio/reactivex/MaybeSource;->subscribe(Lio/reactivex/MaybeObserver;)V

    .line 71
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .line 65
    .local p0, "this":Lio/reactivex/internal/operators/maybe/MaybeDelayWithCompletable$OtherObserver;, "Lio/reactivex/internal/operators/maybe/MaybeDelayWithCompletable$OtherObserver<TT;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/MaybeDelayWithCompletable$OtherObserver;->actual:Lio/reactivex/MaybeObserver;

    invoke-interface {v0, p1}, Lio/reactivex/MaybeObserver;->onError(Ljava/lang/Throwable;)V

    .line 66
    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .locals 1
    .param p1, "d"    # Lio/reactivex/disposables/Disposable;

    .line 57
    .local p0, "this":Lio/reactivex/internal/operators/maybe/MaybeDelayWithCompletable$OtherObserver;, "Lio/reactivex/internal/operators/maybe/MaybeDelayWithCompletable$OtherObserver<TT;>;"
    invoke-static {p0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->setOnce(Ljava/util/concurrent/atomic/AtomicReference;Lio/reactivex/disposables/Disposable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/MaybeDelayWithCompletable$OtherObserver;->actual:Lio/reactivex/MaybeObserver;

    invoke-interface {v0, p0}, Lio/reactivex/MaybeObserver;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    .line 61
    :cond_0
    return-void
.end method
