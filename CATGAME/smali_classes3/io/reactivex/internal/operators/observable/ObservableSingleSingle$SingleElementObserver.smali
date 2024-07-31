.class final Lio/reactivex/internal/operators/observable/ObservableSingleSingle$SingleElementObserver;
.super Ljava/lang/Object;
.source "ObservableSingleSingle.java"

# interfaces
.implements Lio/reactivex/Observer;
.implements Lio/reactivex/disposables/Disposable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/observable/ObservableSingleSingle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "SingleElementObserver"
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
.field final actual:Lio/reactivex/SingleObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/SingleObserver<",
            "-TT;>;"
        }
    .end annotation
.end field

.field final defaultValue:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field done:Z

.field s:Lio/reactivex/disposables/Disposable;

.field value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/reactivex/SingleObserver;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/SingleObserver<",
            "-TT;>;TT;)V"
        }
    .end annotation

    .line 49
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableSingleSingle$SingleElementObserver;, "Lio/reactivex/internal/operators/observable/ObservableSingleSingle$SingleElementObserver<TT;>;"
    .local p1, "actual":Lio/reactivex/SingleObserver;, "Lio/reactivex/SingleObserver<-TT;>;"
    .local p2, "defaultValue":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableSingleSingle$SingleElementObserver;->actual:Lio/reactivex/SingleObserver;

    .line 51
    iput-object p2, p0, Lio/reactivex/internal/operators/observable/ObservableSingleSingle$SingleElementObserver;->defaultValue:Ljava/lang/Object;

    .line 52
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 1

    .line 65
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableSingleSingle$SingleElementObserver;, "Lio/reactivex/internal/operators/observable/ObservableSingleSingle$SingleElementObserver<TT;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableSingleSingle$SingleElementObserver;->s:Lio/reactivex/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 66
    return-void
.end method

.method public isDisposed()Z
    .locals 1

    .line 70
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableSingleSingle$SingleElementObserver;, "Lio/reactivex/internal/operators/observable/ObservableSingleSingle$SingleElementObserver<TT;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableSingleSingle$SingleElementObserver;->s:Lio/reactivex/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->isDisposed()Z

    move-result v0

    return v0
.end method

.method public onComplete()V
    .locals 3

    .line 100
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableSingleSingle$SingleElementObserver;, "Lio/reactivex/internal/operators/observable/ObservableSingleSingle$SingleElementObserver<TT;>;"
    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableSingleSingle$SingleElementObserver;->done:Z

    if-eqz v0, :cond_0

    .line 101
    return-void

    .line 103
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableSingleSingle$SingleElementObserver;->done:Z

    .line 104
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableSingleSingle$SingleElementObserver;->value:Ljava/lang/Object;

    .line 105
    .local v0, "v":Ljava/lang/Object;, "TT;"
    const/4 v1, 0x0

    iput-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableSingleSingle$SingleElementObserver;->value:Ljava/lang/Object;

    .line 106
    if-nez v0, :cond_1

    .line 107
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableSingleSingle$SingleElementObserver;->defaultValue:Ljava/lang/Object;

    .line 110
    :cond_1
    if-eqz v0, :cond_2

    .line 111
    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableSingleSingle$SingleElementObserver;->actual:Lio/reactivex/SingleObserver;

    invoke-interface {v1, v0}, Lio/reactivex/SingleObserver;->onSuccess(Ljava/lang/Object;)V

    goto :goto_0

    .line 113
    :cond_2
    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableSingleSingle$SingleElementObserver;->actual:Lio/reactivex/SingleObserver;

    new-instance v2, Ljava/util/NoSuchElementException;

    invoke-direct {v2}, Ljava/util/NoSuchElementException;-><init>()V

    invoke-interface {v1, v2}, Lio/reactivex/SingleObserver;->onError(Ljava/lang/Throwable;)V

    .line 115
    :goto_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "t"    # Ljava/lang/Throwable;

    .line 90
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableSingleSingle$SingleElementObserver;, "Lio/reactivex/internal/operators/observable/ObservableSingleSingle$SingleElementObserver<TT;>;"
    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableSingleSingle$SingleElementObserver;->done:Z

    if-eqz v0, :cond_0

    .line 91
    invoke-static {p1}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    .line 92
    return-void

    .line 94
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableSingleSingle$SingleElementObserver;->done:Z

    .line 95
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableSingleSingle$SingleElementObserver;->actual:Lio/reactivex/SingleObserver;

    invoke-interface {v0, p1}, Lio/reactivex/SingleObserver;->onError(Ljava/lang/Throwable;)V

    .line 96
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 76
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableSingleSingle$SingleElementObserver;, "Lio/reactivex/internal/operators/observable/ObservableSingleSingle$SingleElementObserver<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableSingleSingle$SingleElementObserver;->done:Z

    if-eqz v0, :cond_0

    .line 77
    return-void

    .line 79
    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableSingleSingle$SingleElementObserver;->value:Ljava/lang/Object;

    if-eqz v0, :cond_1

    .line 80
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableSingleSingle$SingleElementObserver;->done:Z

    .line 81
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableSingleSingle$SingleElementObserver;->s:Lio/reactivex/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 82
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableSingleSingle$SingleElementObserver;->actual:Lio/reactivex/SingleObserver;

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Sequence contains more than one element!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lio/reactivex/SingleObserver;->onError(Ljava/lang/Throwable;)V

    .line 83
    return-void

    .line 85
    :cond_1
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableSingleSingle$SingleElementObserver;->value:Ljava/lang/Object;

    .line 86
    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .locals 1
    .param p1, "s"    # Lio/reactivex/disposables/Disposable;

    .line 56
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableSingleSingle$SingleElementObserver;, "Lio/reactivex/internal/operators/observable/ObservableSingleSingle$SingleElementObserver<TT;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableSingleSingle$SingleElementObserver;->s:Lio/reactivex/disposables/Disposable;

    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->validate(Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/Disposable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 57
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableSingleSingle$SingleElementObserver;->s:Lio/reactivex/disposables/Disposable;

    .line 58
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableSingleSingle$SingleElementObserver;->actual:Lio/reactivex/SingleObserver;

    invoke-interface {v0, p0}, Lio/reactivex/SingleObserver;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    .line 60
    :cond_0
    return-void
.end method
