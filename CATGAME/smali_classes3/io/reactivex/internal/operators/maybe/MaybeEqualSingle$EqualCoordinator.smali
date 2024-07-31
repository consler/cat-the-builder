.class final Lio/reactivex/internal/operators/maybe/MaybeEqualSingle$EqualCoordinator;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "MaybeEqualSingle.java"

# interfaces
.implements Lio/reactivex/disposables/Disposable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/maybe/MaybeEqualSingle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "EqualCoordinator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "Lio/reactivex/disposables/Disposable;"
    }
.end annotation


# instance fields
.field final actual:Lio/reactivex/SingleObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/SingleObserver<",
            "-",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field final isEqual:Lio/reactivex/functions/BiPredicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/BiPredicate<",
            "-TT;-TT;>;"
        }
    .end annotation
.end field

.field final observer1:Lio/reactivex/internal/operators/maybe/MaybeEqualSingle$EqualObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/operators/maybe/MaybeEqualSingle$EqualObserver<",
            "TT;>;"
        }
    .end annotation
.end field

.field final observer2:Lio/reactivex/internal/operators/maybe/MaybeEqualSingle$EqualObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/operators/maybe/MaybeEqualSingle$EqualObserver<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/reactivex/SingleObserver;Lio/reactivex/functions/BiPredicate;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/SingleObserver<",
            "-",
            "Ljava/lang/Boolean;",
            ">;",
            "Lio/reactivex/functions/BiPredicate<",
            "-TT;-TT;>;)V"
        }
    .end annotation

    .line 65
    .local p0, "this":Lio/reactivex/internal/operators/maybe/MaybeEqualSingle$EqualCoordinator;, "Lio/reactivex/internal/operators/maybe/MaybeEqualSingle$EqualCoordinator<TT;>;"
    .local p1, "actual":Lio/reactivex/SingleObserver;, "Lio/reactivex/SingleObserver<-Ljava/lang/Boolean;>;"
    .local p2, "isEqual":Lio/reactivex/functions/BiPredicate;, "Lio/reactivex/functions/BiPredicate<-TT;-TT;>;"
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 66
    iput-object p1, p0, Lio/reactivex/internal/operators/maybe/MaybeEqualSingle$EqualCoordinator;->actual:Lio/reactivex/SingleObserver;

    .line 67
    iput-object p2, p0, Lio/reactivex/internal/operators/maybe/MaybeEqualSingle$EqualCoordinator;->isEqual:Lio/reactivex/functions/BiPredicate;

    .line 68
    new-instance v0, Lio/reactivex/internal/operators/maybe/MaybeEqualSingle$EqualObserver;

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/maybe/MaybeEqualSingle$EqualObserver;-><init>(Lio/reactivex/internal/operators/maybe/MaybeEqualSingle$EqualCoordinator;)V

    iput-object v0, p0, Lio/reactivex/internal/operators/maybe/MaybeEqualSingle$EqualCoordinator;->observer1:Lio/reactivex/internal/operators/maybe/MaybeEqualSingle$EqualObserver;

    .line 69
    new-instance v0, Lio/reactivex/internal/operators/maybe/MaybeEqualSingle$EqualObserver;

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/maybe/MaybeEqualSingle$EqualObserver;-><init>(Lio/reactivex/internal/operators/maybe/MaybeEqualSingle$EqualCoordinator;)V

    iput-object v0, p0, Lio/reactivex/internal/operators/maybe/MaybeEqualSingle$EqualCoordinator;->observer2:Lio/reactivex/internal/operators/maybe/MaybeEqualSingle$EqualObserver;

    .line 70
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 1

    .line 79
    .local p0, "this":Lio/reactivex/internal/operators/maybe/MaybeEqualSingle$EqualCoordinator;, "Lio/reactivex/internal/operators/maybe/MaybeEqualSingle$EqualCoordinator<TT;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/MaybeEqualSingle$EqualCoordinator;->observer1:Lio/reactivex/internal/operators/maybe/MaybeEqualSingle$EqualObserver;

    invoke-virtual {v0}, Lio/reactivex/internal/operators/maybe/MaybeEqualSingle$EqualObserver;->dispose()V

    .line 80
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/MaybeEqualSingle$EqualCoordinator;->observer2:Lio/reactivex/internal/operators/maybe/MaybeEqualSingle$EqualObserver;

    invoke-virtual {v0}, Lio/reactivex/internal/operators/maybe/MaybeEqualSingle$EqualObserver;->dispose()V

    .line 81
    return-void
.end method

.method done()V
    .locals 5

    .line 90
    .local p0, "this":Lio/reactivex/internal/operators/maybe/MaybeEqualSingle$EqualCoordinator;, "Lio/reactivex/internal/operators/maybe/MaybeEqualSingle$EqualCoordinator<TT;>;"
    invoke-virtual {p0}, Lio/reactivex/internal/operators/maybe/MaybeEqualSingle$EqualCoordinator;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_2

    .line 91
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/MaybeEqualSingle$EqualCoordinator;->observer1:Lio/reactivex/internal/operators/maybe/MaybeEqualSingle$EqualObserver;

    iget-object v0, v0, Lio/reactivex/internal/operators/maybe/MaybeEqualSingle$EqualObserver;->value:Ljava/lang/Object;

    .line 92
    .local v0, "o1":Ljava/lang/Object;
    iget-object v1, p0, Lio/reactivex/internal/operators/maybe/MaybeEqualSingle$EqualCoordinator;->observer2:Lio/reactivex/internal/operators/maybe/MaybeEqualSingle$EqualObserver;

    iget-object v1, v1, Lio/reactivex/internal/operators/maybe/MaybeEqualSingle$EqualObserver;->value:Ljava/lang/Object;

    .line 94
    .local v1, "o2":Ljava/lang/Object;
    const/4 v2, 0x0

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 98
    :try_start_0
    iget-object v3, p0, Lio/reactivex/internal/operators/maybe/MaybeEqualSingle$EqualCoordinator;->isEqual:Lio/reactivex/functions/BiPredicate;

    invoke-interface {v3, v0, v1}, Lio/reactivex/functions/BiPredicate;->test(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 103
    .local v2, "b":Z
    nop

    .line 105
    iget-object v3, p0, Lio/reactivex/internal/operators/maybe/MaybeEqualSingle$EqualCoordinator;->actual:Lio/reactivex/SingleObserver;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v3, v4}, Lio/reactivex/SingleObserver;->onSuccess(Ljava/lang/Object;)V

    .line 106
    .end local v2    # "b":Z
    goto :goto_0

    .line 99
    :catchall_0
    move-exception v3

    .line 100
    .restart local v2    # "b":Z
    .local v3, "ex":Ljava/lang/Throwable;
    invoke-static {v3}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 101
    iget-object v4, p0, Lio/reactivex/internal/operators/maybe/MaybeEqualSingle$EqualCoordinator;->actual:Lio/reactivex/SingleObserver;

    invoke-interface {v4, v3}, Lio/reactivex/SingleObserver;->onError(Ljava/lang/Throwable;)V

    .line 102
    return-void

    .line 107
    .end local v2    # "b":Z
    .end local v3    # "ex":Ljava/lang/Throwable;
    :cond_0
    iget-object v3, p0, Lio/reactivex/internal/operators/maybe/MaybeEqualSingle$EqualCoordinator;->actual:Lio/reactivex/SingleObserver;

    if-nez v0, :cond_1

    if-nez v1, :cond_1

    const/4 v2, 0x1

    :cond_1
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v3, v2}, Lio/reactivex/SingleObserver;->onSuccess(Ljava/lang/Object;)V

    .line 110
    .end local v0    # "o1":Ljava/lang/Object;
    .end local v1    # "o2":Ljava/lang/Object;
    :cond_2
    :goto_0
    return-void
.end method

.method error(Lio/reactivex/internal/operators/maybe/MaybeEqualSingle$EqualObserver;Ljava/lang/Throwable;)V
    .locals 1
    .param p2, "ex"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/operators/maybe/MaybeEqualSingle$EqualObserver<",
            "TT;>;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 113
    .local p0, "this":Lio/reactivex/internal/operators/maybe/MaybeEqualSingle$EqualCoordinator;, "Lio/reactivex/internal/operators/maybe/MaybeEqualSingle$EqualCoordinator<TT;>;"
    .local p1, "sender":Lio/reactivex/internal/operators/maybe/MaybeEqualSingle$EqualObserver;, "Lio/reactivex/internal/operators/maybe/MaybeEqualSingle$EqualObserver<TT;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lio/reactivex/internal/operators/maybe/MaybeEqualSingle$EqualCoordinator;->getAndSet(I)I

    move-result v0

    if-lez v0, :cond_1

    .line 114
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/MaybeEqualSingle$EqualCoordinator;->observer1:Lio/reactivex/internal/operators/maybe/MaybeEqualSingle$EqualObserver;

    if-ne p1, v0, :cond_0

    .line 115
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/MaybeEqualSingle$EqualCoordinator;->observer2:Lio/reactivex/internal/operators/maybe/MaybeEqualSingle$EqualObserver;

    invoke-virtual {v0}, Lio/reactivex/internal/operators/maybe/MaybeEqualSingle$EqualObserver;->dispose()V

    goto :goto_0

    .line 117
    :cond_0
    invoke-virtual {v0}, Lio/reactivex/internal/operators/maybe/MaybeEqualSingle$EqualObserver;->dispose()V

    .line 119
    :goto_0
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/MaybeEqualSingle$EqualCoordinator;->actual:Lio/reactivex/SingleObserver;

    invoke-interface {v0, p2}, Lio/reactivex/SingleObserver;->onError(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 121
    :cond_1
    invoke-static {p2}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    .line 123
    :goto_1
    return-void
.end method

.method public isDisposed()Z
    .locals 1

    .line 85
    .local p0, "this":Lio/reactivex/internal/operators/maybe/MaybeEqualSingle$EqualCoordinator;, "Lio/reactivex/internal/operators/maybe/MaybeEqualSingle$EqualCoordinator<TT;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/MaybeEqualSingle$EqualCoordinator;->observer1:Lio/reactivex/internal/operators/maybe/MaybeEqualSingle$EqualObserver;

    invoke-virtual {v0}, Lio/reactivex/internal/operators/maybe/MaybeEqualSingle$EqualObserver;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/disposables/Disposable;

    invoke-static {v0}, Lio/reactivex/internal/disposables/DisposableHelper;->isDisposed(Lio/reactivex/disposables/Disposable;)Z

    move-result v0

    return v0
.end method

.method subscribe(Lio/reactivex/MaybeSource;Lio/reactivex/MaybeSource;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/MaybeSource<",
            "+TT;>;",
            "Lio/reactivex/MaybeSource<",
            "+TT;>;)V"
        }
    .end annotation

    .line 73
    .local p0, "this":Lio/reactivex/internal/operators/maybe/MaybeEqualSingle$EqualCoordinator;, "Lio/reactivex/internal/operators/maybe/MaybeEqualSingle$EqualCoordinator<TT;>;"
    .local p1, "source1":Lio/reactivex/MaybeSource;, "Lio/reactivex/MaybeSource<+TT;>;"
    .local p2, "source2":Lio/reactivex/MaybeSource;, "Lio/reactivex/MaybeSource<+TT;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/MaybeEqualSingle$EqualCoordinator;->observer1:Lio/reactivex/internal/operators/maybe/MaybeEqualSingle$EqualObserver;

    invoke-interface {p1, v0}, Lio/reactivex/MaybeSource;->subscribe(Lio/reactivex/MaybeObserver;)V

    .line 74
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/MaybeEqualSingle$EqualCoordinator;->observer2:Lio/reactivex/internal/operators/maybe/MaybeEqualSingle$EqualObserver;

    invoke-interface {p2, v0}, Lio/reactivex/MaybeSource;->subscribe(Lio/reactivex/MaybeObserver;)V

    .line 75
    return-void
.end method
