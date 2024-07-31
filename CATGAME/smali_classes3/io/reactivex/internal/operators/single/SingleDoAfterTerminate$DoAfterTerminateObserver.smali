.class final Lio/reactivex/internal/operators/single/SingleDoAfterTerminate$DoAfterTerminateObserver;
.super Ljava/lang/Object;
.source "SingleDoAfterTerminate.java"

# interfaces
.implements Lio/reactivex/SingleObserver;
.implements Lio/reactivex/disposables/Disposable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/single/SingleDoAfterTerminate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "DoAfterTerminateObserver"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/SingleObserver<",
        "TT;>;",
        "Lio/reactivex/disposables/Disposable;"
    }
.end annotation


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

.field final onAfterTerminate:Lio/reactivex/functions/Action;


# direct methods
.method constructor <init>(Lio/reactivex/SingleObserver;Lio/reactivex/functions/Action;)V
    .locals 0
    .param p2, "onAfterTerminate"    # Lio/reactivex/functions/Action;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/SingleObserver<",
            "-TT;>;",
            "Lio/reactivex/functions/Action;",
            ")V"
        }
    .end annotation

    .line 54
    .local p0, "this":Lio/reactivex/internal/operators/single/SingleDoAfterTerminate$DoAfterTerminateObserver;, "Lio/reactivex/internal/operators/single/SingleDoAfterTerminate$DoAfterTerminateObserver<TT;>;"
    .local p1, "actual":Lio/reactivex/SingleObserver;, "Lio/reactivex/SingleObserver<-TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lio/reactivex/internal/operators/single/SingleDoAfterTerminate$DoAfterTerminateObserver;->actual:Lio/reactivex/SingleObserver;

    .line 56
    iput-object p2, p0, Lio/reactivex/internal/operators/single/SingleDoAfterTerminate$DoAfterTerminateObserver;->onAfterTerminate:Lio/reactivex/functions/Action;

    .line 57
    return-void
.end method

.method private onAfterTerminate()V
    .locals 1

    .line 94
    .local p0, "this":Lio/reactivex/internal/operators/single/SingleDoAfterTerminate$DoAfterTerminateObserver;, "Lio/reactivex/internal/operators/single/SingleDoAfterTerminate$DoAfterTerminateObserver<TT;>;"
    :try_start_0
    iget-object v0, p0, Lio/reactivex/internal/operators/single/SingleDoAfterTerminate$DoAfterTerminateObserver;->onAfterTerminate:Lio/reactivex/functions/Action;

    invoke-interface {v0}, Lio/reactivex/functions/Action;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98
    goto :goto_0

    .line 95
    :catchall_0
    move-exception v0

    .line 96
    .local v0, "ex":Ljava/lang/Throwable;
    invoke-static {v0}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 97
    invoke-static {v0}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    .line 99
    .end local v0    # "ex":Ljava/lang/Throwable;
    :goto_0
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 1

    .line 84
    .local p0, "this":Lio/reactivex/internal/operators/single/SingleDoAfterTerminate$DoAfterTerminateObserver;, "Lio/reactivex/internal/operators/single/SingleDoAfterTerminate$DoAfterTerminateObserver<TT;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/single/SingleDoAfterTerminate$DoAfterTerminateObserver;->d:Lio/reactivex/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 85
    return-void
.end method

.method public isDisposed()Z
    .locals 1

    .line 89
    .local p0, "this":Lio/reactivex/internal/operators/single/SingleDoAfterTerminate$DoAfterTerminateObserver;, "Lio/reactivex/internal/operators/single/SingleDoAfterTerminate$DoAfterTerminateObserver<TT;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/single/SingleDoAfterTerminate$DoAfterTerminateObserver;->d:Lio/reactivex/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->isDisposed()Z

    move-result v0

    return v0
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .line 77
    .local p0, "this":Lio/reactivex/internal/operators/single/SingleDoAfterTerminate$DoAfterTerminateObserver;, "Lio/reactivex/internal/operators/single/SingleDoAfterTerminate$DoAfterTerminateObserver<TT;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/single/SingleDoAfterTerminate$DoAfterTerminateObserver;->actual:Lio/reactivex/SingleObserver;

    invoke-interface {v0, p1}, Lio/reactivex/SingleObserver;->onError(Ljava/lang/Throwable;)V

    .line 79
    invoke-direct {p0}, Lio/reactivex/internal/operators/single/SingleDoAfterTerminate$DoAfterTerminateObserver;->onAfterTerminate()V

    .line 80
    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .locals 1
    .param p1, "d"    # Lio/reactivex/disposables/Disposable;

    .line 61
    .local p0, "this":Lio/reactivex/internal/operators/single/SingleDoAfterTerminate$DoAfterTerminateObserver;, "Lio/reactivex/internal/operators/single/SingleDoAfterTerminate$DoAfterTerminateObserver<TT;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/single/SingleDoAfterTerminate$DoAfterTerminateObserver;->d:Lio/reactivex/disposables/Disposable;

    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->validate(Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/Disposable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 62
    iput-object p1, p0, Lio/reactivex/internal/operators/single/SingleDoAfterTerminate$DoAfterTerminateObserver;->d:Lio/reactivex/disposables/Disposable;

    .line 64
    iget-object v0, p0, Lio/reactivex/internal/operators/single/SingleDoAfterTerminate$DoAfterTerminateObserver;->actual:Lio/reactivex/SingleObserver;

    invoke-interface {v0, p0}, Lio/reactivex/SingleObserver;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    .line 66
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

    .line 70
    .local p0, "this":Lio/reactivex/internal/operators/single/SingleDoAfterTerminate$DoAfterTerminateObserver;, "Lio/reactivex/internal/operators/single/SingleDoAfterTerminate$DoAfterTerminateObserver<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lio/reactivex/internal/operators/single/SingleDoAfterTerminate$DoAfterTerminateObserver;->actual:Lio/reactivex/SingleObserver;

    invoke-interface {v0, p1}, Lio/reactivex/SingleObserver;->onSuccess(Ljava/lang/Object;)V

    .line 72
    invoke-direct {p0}, Lio/reactivex/internal/operators/single/SingleDoAfterTerminate$DoAfterTerminateObserver;->onAfterTerminate()V

    .line 73
    return-void
.end method
