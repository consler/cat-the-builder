.class final Lio/reactivex/internal/operators/observable/ObservableLastSingle$LastObserver;
.super Ljava/lang/Object;
.source "ObservableLastSingle.java"

# interfaces
.implements Lio/reactivex/Observer;
.implements Lio/reactivex/disposables/Disposable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/observable/ObservableLastSingle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "LastObserver"
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

.field final defaultItem:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field item:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field s:Lio/reactivex/disposables/Disposable;


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

    .line 56
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableLastSingle$LastObserver;, "Lio/reactivex/internal/operators/observable/ObservableLastSingle$LastObserver<TT;>;"
    .local p1, "actual":Lio/reactivex/SingleObserver;, "Lio/reactivex/SingleObserver<-TT;>;"
    .local p2, "defaultItem":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableLastSingle$LastObserver;->actual:Lio/reactivex/SingleObserver;

    .line 58
    iput-object p2, p0, Lio/reactivex/internal/operators/observable/ObservableLastSingle$LastObserver;->defaultItem:Ljava/lang/Object;

    .line 59
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 1

    .line 63
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableLastSingle$LastObserver;, "Lio/reactivex/internal/operators/observable/ObservableLastSingle$LastObserver<TT;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableLastSingle$LastObserver;->s:Lio/reactivex/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 64
    sget-object v0, Lio/reactivex/internal/disposables/DisposableHelper;->DISPOSED:Lio/reactivex/internal/disposables/DisposableHelper;

    iput-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableLastSingle$LastObserver;->s:Lio/reactivex/disposables/Disposable;

    .line 65
    return-void
.end method

.method public isDisposed()Z
    .locals 2

    .line 69
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableLastSingle$LastObserver;, "Lio/reactivex/internal/operators/observable/ObservableLastSingle$LastObserver<TT;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableLastSingle$LastObserver;->s:Lio/reactivex/disposables/Disposable;

    sget-object v1, Lio/reactivex/internal/disposables/DisposableHelper;->DISPOSED:Lio/reactivex/internal/disposables/DisposableHelper;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onComplete()V
    .locals 3

    .line 95
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableLastSingle$LastObserver;, "Lio/reactivex/internal/operators/observable/ObservableLastSingle$LastObserver<TT;>;"
    sget-object v0, Lio/reactivex/internal/disposables/DisposableHelper;->DISPOSED:Lio/reactivex/internal/disposables/DisposableHelper;

    iput-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableLastSingle$LastObserver;->s:Lio/reactivex/disposables/Disposable;

    .line 96
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableLastSingle$LastObserver;->item:Ljava/lang/Object;

    .line 97
    .local v0, "v":Ljava/lang/Object;, "TT;"
    if-eqz v0, :cond_0

    .line 98
    const/4 v1, 0x0

    iput-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableLastSingle$LastObserver;->item:Ljava/lang/Object;

    .line 99
    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableLastSingle$LastObserver;->actual:Lio/reactivex/SingleObserver;

    invoke-interface {v1, v0}, Lio/reactivex/SingleObserver;->onSuccess(Ljava/lang/Object;)V

    goto :goto_0

    .line 101
    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableLastSingle$LastObserver;->defaultItem:Ljava/lang/Object;

    .line 102
    if-eqz v0, :cond_1

    .line 103
    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableLastSingle$LastObserver;->actual:Lio/reactivex/SingleObserver;

    invoke-interface {v1, v0}, Lio/reactivex/SingleObserver;->onSuccess(Ljava/lang/Object;)V

    goto :goto_0

    .line 105
    :cond_1
    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableLastSingle$LastObserver;->actual:Lio/reactivex/SingleObserver;

    new-instance v2, Ljava/util/NoSuchElementException;

    invoke-direct {v2}, Ljava/util/NoSuchElementException;-><init>()V

    invoke-interface {v1, v2}, Lio/reactivex/SingleObserver;->onError(Ljava/lang/Throwable;)V

    .line 108
    :goto_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "t"    # Ljava/lang/Throwable;

    .line 88
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableLastSingle$LastObserver;, "Lio/reactivex/internal/operators/observable/ObservableLastSingle$LastObserver<TT;>;"
    sget-object v0, Lio/reactivex/internal/disposables/DisposableHelper;->DISPOSED:Lio/reactivex/internal/disposables/DisposableHelper;

    iput-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableLastSingle$LastObserver;->s:Lio/reactivex/disposables/Disposable;

    .line 89
    const/4 v0, 0x0

    iput-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableLastSingle$LastObserver;->item:Ljava/lang/Object;

    .line 90
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableLastSingle$LastObserver;->actual:Lio/reactivex/SingleObserver;

    invoke-interface {v0, p1}, Lio/reactivex/SingleObserver;->onError(Ljava/lang/Throwable;)V

    .line 91
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 83
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableLastSingle$LastObserver;, "Lio/reactivex/internal/operators/observable/ObservableLastSingle$LastObserver<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableLastSingle$LastObserver;->item:Ljava/lang/Object;

    .line 84
    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .locals 1
    .param p1, "s"    # Lio/reactivex/disposables/Disposable;

    .line 74
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableLastSingle$LastObserver;, "Lio/reactivex/internal/operators/observable/ObservableLastSingle$LastObserver<TT;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableLastSingle$LastObserver;->s:Lio/reactivex/disposables/Disposable;

    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->validate(Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/Disposable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 75
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableLastSingle$LastObserver;->s:Lio/reactivex/disposables/Disposable;

    .line 77
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableLastSingle$LastObserver;->actual:Lio/reactivex/SingleObserver;

    invoke-interface {v0, p0}, Lio/reactivex/SingleObserver;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    .line 79
    :cond_0
    return-void
.end method
