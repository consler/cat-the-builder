.class final Lio/reactivex/internal/operators/observable/ObservableSkipWhile$SkipWhileObserver;
.super Ljava/lang/Object;
.source "ObservableSkipWhile.java"

# interfaces
.implements Lio/reactivex/Observer;
.implements Lio/reactivex/disposables/Disposable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/observable/ObservableSkipWhile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "SkipWhileObserver"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
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
            "-TT;>;"
        }
    .end annotation
.end field

.field notSkipping:Z

.field final predicate:Lio/reactivex/functions/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/Predicate<",
            "-TT;>;"
        }
    .end annotation
.end field

.field s:Lio/reactivex/disposables/Disposable;


# direct methods
.method constructor <init>(Lio/reactivex/Observer;Lio/reactivex/functions/Predicate;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observer<",
            "-TT;>;",
            "Lio/reactivex/functions/Predicate<",
            "-TT;>;)V"
        }
    .end annotation

    .line 39
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableSkipWhile$SkipWhileObserver;, "Lio/reactivex/internal/operators/observable/ObservableSkipWhile$SkipWhileObserver<TT;>;"
    .local p1, "actual":Lio/reactivex/Observer;, "Lio/reactivex/Observer<-TT;>;"
    .local p2, "predicate":Lio/reactivex/functions/Predicate;, "Lio/reactivex/functions/Predicate<-TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableSkipWhile$SkipWhileObserver;->actual:Lio/reactivex/Observer;

    .line 41
    iput-object p2, p0, Lio/reactivex/internal/operators/observable/ObservableSkipWhile$SkipWhileObserver;->predicate:Lio/reactivex/functions/Predicate;

    .line 42
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 1

    .line 55
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableSkipWhile$SkipWhileObserver;, "Lio/reactivex/internal/operators/observable/ObservableSkipWhile$SkipWhileObserver<TT;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableSkipWhile$SkipWhileObserver;->s:Lio/reactivex/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 56
    return-void
.end method

.method public isDisposed()Z
    .locals 1

    .line 60
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableSkipWhile$SkipWhileObserver;, "Lio/reactivex/internal/operators/observable/ObservableSkipWhile$SkipWhileObserver<TT;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableSkipWhile$SkipWhileObserver;->s:Lio/reactivex/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->isDisposed()Z

    move-result v0

    return v0
.end method

.method public onComplete()V
    .locals 1

    .line 92
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableSkipWhile$SkipWhileObserver;, "Lio/reactivex/internal/operators/observable/ObservableSkipWhile$SkipWhileObserver<TT;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableSkipWhile$SkipWhileObserver;->actual:Lio/reactivex/Observer;

    invoke-interface {v0}, Lio/reactivex/Observer;->onComplete()V

    .line 93
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "t"    # Ljava/lang/Throwable;

    .line 87
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableSkipWhile$SkipWhileObserver;, "Lio/reactivex/internal/operators/observable/ObservableSkipWhile$SkipWhileObserver<TT;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableSkipWhile$SkipWhileObserver;->actual:Lio/reactivex/Observer;

    invoke-interface {v0, p1}, Lio/reactivex/Observer;->onError(Ljava/lang/Throwable;)V

    .line 88
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 66
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableSkipWhile$SkipWhileObserver;, "Lio/reactivex/internal/operators/observable/ObservableSkipWhile$SkipWhileObserver<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableSkipWhile$SkipWhileObserver;->notSkipping:Z

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableSkipWhile$SkipWhileObserver;->actual:Lio/reactivex/Observer;

    invoke-interface {v0, p1}, Lio/reactivex/Observer;->onNext(Ljava/lang/Object;)V

    goto :goto_0

    .line 71
    :cond_0
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableSkipWhile$SkipWhileObserver;->predicate:Lio/reactivex/functions/Predicate;

    invoke-interface {v1, p1}, Lio/reactivex/functions/Predicate;->test(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    .local v0, "b":Z
    nop

    .line 78
    if-nez v0, :cond_1

    .line 79
    const/4 v1, 0x1

    iput-boolean v1, p0, Lio/reactivex/internal/operators/observable/ObservableSkipWhile$SkipWhileObserver;->notSkipping:Z

    .line 80
    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableSkipWhile$SkipWhileObserver;->actual:Lio/reactivex/Observer;

    invoke-interface {v1, p1}, Lio/reactivex/Observer;->onNext(Ljava/lang/Object;)V

    .line 83
    .end local v0    # "b":Z
    :cond_1
    :goto_0
    return-void

    .line 72
    :catchall_0
    move-exception v1

    .line 73
    .restart local v0    # "b":Z
    .local v1, "e":Ljava/lang/Throwable;
    invoke-static {v1}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 74
    iget-object v2, p0, Lio/reactivex/internal/operators/observable/ObservableSkipWhile$SkipWhileObserver;->s:Lio/reactivex/disposables/Disposable;

    invoke-interface {v2}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 75
    iget-object v2, p0, Lio/reactivex/internal/operators/observable/ObservableSkipWhile$SkipWhileObserver;->actual:Lio/reactivex/Observer;

    invoke-interface {v2, v1}, Lio/reactivex/Observer;->onError(Ljava/lang/Throwable;)V

    .line 76
    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .locals 1
    .param p1, "s"    # Lio/reactivex/disposables/Disposable;

    .line 46
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableSkipWhile$SkipWhileObserver;, "Lio/reactivex/internal/operators/observable/ObservableSkipWhile$SkipWhileObserver<TT;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableSkipWhile$SkipWhileObserver;->s:Lio/reactivex/disposables/Disposable;

    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->validate(Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/Disposable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 47
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableSkipWhile$SkipWhileObserver;->s:Lio/reactivex/disposables/Disposable;

    .line 48
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableSkipWhile$SkipWhileObserver;->actual:Lio/reactivex/Observer;

    invoke-interface {v0, p0}, Lio/reactivex/Observer;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    .line 50
    :cond_0
    return-void
.end method
