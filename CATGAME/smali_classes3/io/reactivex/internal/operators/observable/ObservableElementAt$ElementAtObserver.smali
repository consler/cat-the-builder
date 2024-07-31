.class final Lio/reactivex/internal/operators/observable/ObservableElementAt$ElementAtObserver;
.super Ljava/lang/Object;
.source "ObservableElementAt.java"

# interfaces
.implements Lio/reactivex/Observer;
.implements Lio/reactivex/disposables/Disposable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/observable/ObservableElementAt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ElementAtObserver"
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

.field count:J

.field final defaultValue:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field done:Z

.field final errorOnFewer:Z

.field final index:J

.field s:Lio/reactivex/disposables/Disposable;


# direct methods
.method constructor <init>(Lio/reactivex/Observer;JLjava/lang/Object;Z)V
    .locals 0
    .param p2, "index"    # J
    .param p5, "errorOnFewer"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observer<",
            "-TT;>;JTT;Z)V"
        }
    .end annotation

    .line 51
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableElementAt$ElementAtObserver;, "Lio/reactivex/internal/operators/observable/ObservableElementAt$ElementAtObserver<TT;>;"
    .local p1, "actual":Lio/reactivex/Observer;, "Lio/reactivex/Observer<-TT;>;"
    .local p4, "defaultValue":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableElementAt$ElementAtObserver;->actual:Lio/reactivex/Observer;

    .line 53
    iput-wide p2, p0, Lio/reactivex/internal/operators/observable/ObservableElementAt$ElementAtObserver;->index:J

    .line 54
    iput-object p4, p0, Lio/reactivex/internal/operators/observable/ObservableElementAt$ElementAtObserver;->defaultValue:Ljava/lang/Object;

    .line 55
    iput-boolean p5, p0, Lio/reactivex/internal/operators/observable/ObservableElementAt$ElementAtObserver;->errorOnFewer:Z

    .line 56
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 1

    .line 69
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableElementAt$ElementAtObserver;, "Lio/reactivex/internal/operators/observable/ObservableElementAt$ElementAtObserver<TT;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableElementAt$ElementAtObserver;->s:Lio/reactivex/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 70
    return-void
.end method

.method public isDisposed()Z
    .locals 1

    .line 74
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableElementAt$ElementAtObserver;, "Lio/reactivex/internal/operators/observable/ObservableElementAt$ElementAtObserver<TT;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableElementAt$ElementAtObserver;->s:Lio/reactivex/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->isDisposed()Z

    move-result v0

    return v0
.end method

.method public onComplete()V
    .locals 3

    .line 106
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableElementAt$ElementAtObserver;, "Lio/reactivex/internal/operators/observable/ObservableElementAt$ElementAtObserver<TT;>;"
    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableElementAt$ElementAtObserver;->done:Z

    if-nez v0, :cond_2

    .line 107
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableElementAt$ElementAtObserver;->done:Z

    .line 108
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableElementAt$ElementAtObserver;->defaultValue:Ljava/lang/Object;

    .line 109
    .local v0, "v":Ljava/lang/Object;, "TT;"
    if-nez v0, :cond_0

    iget-boolean v1, p0, Lio/reactivex/internal/operators/observable/ObservableElementAt$ElementAtObserver;->errorOnFewer:Z

    if-eqz v1, :cond_0

    .line 110
    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableElementAt$ElementAtObserver;->actual:Lio/reactivex/Observer;

    new-instance v2, Ljava/util/NoSuchElementException;

    invoke-direct {v2}, Ljava/util/NoSuchElementException;-><init>()V

    invoke-interface {v1, v2}, Lio/reactivex/Observer;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 112
    :cond_0
    if-eqz v0, :cond_1

    .line 113
    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableElementAt$ElementAtObserver;->actual:Lio/reactivex/Observer;

    invoke-interface {v1, v0}, Lio/reactivex/Observer;->onNext(Ljava/lang/Object;)V

    .line 115
    :cond_1
    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableElementAt$ElementAtObserver;->actual:Lio/reactivex/Observer;

    invoke-interface {v1}, Lio/reactivex/Observer;->onComplete()V

    .line 118
    .end local v0    # "v":Ljava/lang/Object;, "TT;"
    :cond_2
    :goto_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "t"    # Ljava/lang/Throwable;

    .line 96
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableElementAt$ElementAtObserver;, "Lio/reactivex/internal/operators/observable/ObservableElementAt$ElementAtObserver<TT;>;"
    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableElementAt$ElementAtObserver;->done:Z

    if-eqz v0, :cond_0

    .line 97
    invoke-static {p1}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    .line 98
    return-void

    .line 100
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableElementAt$ElementAtObserver;->done:Z

    .line 101
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableElementAt$ElementAtObserver;->actual:Lio/reactivex/Observer;

    invoke-interface {v0, p1}, Lio/reactivex/Observer;->onError(Ljava/lang/Throwable;)V

    .line 102
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 80
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableElementAt$ElementAtObserver;, "Lio/reactivex/internal/operators/observable/ObservableElementAt$ElementAtObserver<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableElementAt$ElementAtObserver;->done:Z

    if-eqz v0, :cond_0

    .line 81
    return-void

    .line 83
    :cond_0
    iget-wide v0, p0, Lio/reactivex/internal/operators/observable/ObservableElementAt$ElementAtObserver;->count:J

    .line 84
    .local v0, "c":J
    iget-wide v2, p0, Lio/reactivex/internal/operators/observable/ObservableElementAt$ElementAtObserver;->index:J

    cmp-long v2, v0, v2

    if-nez v2, :cond_1

    .line 85
    const/4 v2, 0x1

    iput-boolean v2, p0, Lio/reactivex/internal/operators/observable/ObservableElementAt$ElementAtObserver;->done:Z

    .line 86
    iget-object v2, p0, Lio/reactivex/internal/operators/observable/ObservableElementAt$ElementAtObserver;->s:Lio/reactivex/disposables/Disposable;

    invoke-interface {v2}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 87
    iget-object v2, p0, Lio/reactivex/internal/operators/observable/ObservableElementAt$ElementAtObserver;->actual:Lio/reactivex/Observer;

    invoke-interface {v2, p1}, Lio/reactivex/Observer;->onNext(Ljava/lang/Object;)V

    .line 88
    iget-object v2, p0, Lio/reactivex/internal/operators/observable/ObservableElementAt$ElementAtObserver;->actual:Lio/reactivex/Observer;

    invoke-interface {v2}, Lio/reactivex/Observer;->onComplete()V

    .line 89
    return-void

    .line 91
    :cond_1
    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, Lio/reactivex/internal/operators/observable/ObservableElementAt$ElementAtObserver;->count:J

    .line 92
    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .locals 1
    .param p1, "s"    # Lio/reactivex/disposables/Disposable;

    .line 60
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableElementAt$ElementAtObserver;, "Lio/reactivex/internal/operators/observable/ObservableElementAt$ElementAtObserver<TT;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableElementAt$ElementAtObserver;->s:Lio/reactivex/disposables/Disposable;

    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->validate(Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/Disposable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableElementAt$ElementAtObserver;->s:Lio/reactivex/disposables/Disposable;

    .line 62
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableElementAt$ElementAtObserver;->actual:Lio/reactivex/Observer;

    invoke-interface {v0, p0}, Lio/reactivex/Observer;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    .line 64
    :cond_0
    return-void
.end method
