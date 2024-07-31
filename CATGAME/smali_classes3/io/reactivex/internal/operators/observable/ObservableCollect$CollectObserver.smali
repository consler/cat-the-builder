.class final Lio/reactivex/internal/operators/observable/ObservableCollect$CollectObserver;
.super Ljava/lang/Object;
.source "ObservableCollect.java"

# interfaces
.implements Lio/reactivex/Observer;
.implements Lio/reactivex/disposables/Disposable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/observable/ObservableCollect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "CollectObserver"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U:",
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
            "-TU;>;"
        }
    .end annotation
.end field

.field final collector:Lio/reactivex/functions/BiConsumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/BiConsumer<",
            "-TU;-TT;>;"
        }
    .end annotation
.end field

.field done:Z

.field s:Lio/reactivex/disposables/Disposable;

.field final u:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TU;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/reactivex/Observer;Ljava/lang/Object;Lio/reactivex/functions/BiConsumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observer<",
            "-TU;>;TU;",
            "Lio/reactivex/functions/BiConsumer<",
            "-TU;-TT;>;)V"
        }
    .end annotation

    .line 58
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableCollect$CollectObserver;, "Lio/reactivex/internal/operators/observable/ObservableCollect$CollectObserver<TT;TU;>;"
    .local p1, "actual":Lio/reactivex/Observer;, "Lio/reactivex/Observer<-TU;>;"
    .local p2, "u":Ljava/lang/Object;, "TU;"
    .local p3, "collector":Lio/reactivex/functions/BiConsumer;, "Lio/reactivex/functions/BiConsumer<-TU;-TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableCollect$CollectObserver;->actual:Lio/reactivex/Observer;

    .line 60
    iput-object p3, p0, Lio/reactivex/internal/operators/observable/ObservableCollect$CollectObserver;->collector:Lio/reactivex/functions/BiConsumer;

    .line 61
    iput-object p2, p0, Lio/reactivex/internal/operators/observable/ObservableCollect$CollectObserver;->u:Ljava/lang/Object;

    .line 62
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 1

    .line 75
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableCollect$CollectObserver;, "Lio/reactivex/internal/operators/observable/ObservableCollect$CollectObserver<TT;TU;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableCollect$CollectObserver;->s:Lio/reactivex/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 76
    return-void
.end method

.method public isDisposed()Z
    .locals 1

    .line 80
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableCollect$CollectObserver;, "Lio/reactivex/internal/operators/observable/ObservableCollect$CollectObserver<TT;TU;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableCollect$CollectObserver;->s:Lio/reactivex/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->isDisposed()Z

    move-result v0

    return v0
.end method

.method public onComplete()V
    .locals 2

    .line 109
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableCollect$CollectObserver;, "Lio/reactivex/internal/operators/observable/ObservableCollect$CollectObserver<TT;TU;>;"
    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableCollect$CollectObserver;->done:Z

    if-eqz v0, :cond_0

    .line 110
    return-void

    .line 112
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableCollect$CollectObserver;->done:Z

    .line 113
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableCollect$CollectObserver;->actual:Lio/reactivex/Observer;

    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableCollect$CollectObserver;->u:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lio/reactivex/Observer;->onNext(Ljava/lang/Object;)V

    .line 114
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableCollect$CollectObserver;->actual:Lio/reactivex/Observer;

    invoke-interface {v0}, Lio/reactivex/Observer;->onComplete()V

    .line 115
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "t"    # Ljava/lang/Throwable;

    .line 99
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableCollect$CollectObserver;, "Lio/reactivex/internal/operators/observable/ObservableCollect$CollectObserver<TT;TU;>;"
    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableCollect$CollectObserver;->done:Z

    if-eqz v0, :cond_0

    .line 100
    invoke-static {p1}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    .line 101
    return-void

    .line 103
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableCollect$CollectObserver;->done:Z

    .line 104
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableCollect$CollectObserver;->actual:Lio/reactivex/Observer;

    invoke-interface {v0, p1}, Lio/reactivex/Observer;->onError(Ljava/lang/Throwable;)V

    .line 105
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 86
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableCollect$CollectObserver;, "Lio/reactivex/internal/operators/observable/ObservableCollect$CollectObserver<TT;TU;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableCollect$CollectObserver;->done:Z

    if-eqz v0, :cond_0

    .line 87
    return-void

    .line 90
    :cond_0
    :try_start_0
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableCollect$CollectObserver;->collector:Lio/reactivex/functions/BiConsumer;

    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableCollect$CollectObserver;->u:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Lio/reactivex/functions/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    goto :goto_0

    .line 91
    :catchall_0
    move-exception v0

    .line 92
    .local v0, "e":Ljava/lang/Throwable;
    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableCollect$CollectObserver;->s:Lio/reactivex/disposables/Disposable;

    invoke-interface {v1}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 93
    invoke-virtual {p0, v0}, Lio/reactivex/internal/operators/observable/ObservableCollect$CollectObserver;->onError(Ljava/lang/Throwable;)V

    .line 95
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_0
    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .locals 1
    .param p1, "s"    # Lio/reactivex/disposables/Disposable;

    .line 66
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableCollect$CollectObserver;, "Lio/reactivex/internal/operators/observable/ObservableCollect$CollectObserver<TT;TU;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableCollect$CollectObserver;->s:Lio/reactivex/disposables/Disposable;

    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->validate(Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/Disposable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 67
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableCollect$CollectObserver;->s:Lio/reactivex/disposables/Disposable;

    .line 68
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableCollect$CollectObserver;->actual:Lio/reactivex/Observer;

    invoke-interface {v0, p0}, Lio/reactivex/Observer;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    .line 70
    :cond_0
    return-void
.end method
