.class final Lio/reactivex/internal/operators/observable/ObservableLastMaybe$LastObserver;
.super Ljava/lang/Object;
.source "ObservableLastMaybe.java"

# interfaces
.implements Lio/reactivex/Observer;
.implements Lio/reactivex/disposables/Disposable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/observable/ObservableLastMaybe;
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
.field final actual:Lio/reactivex/MaybeObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/MaybeObserver<",
            "-TT;>;"
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
.method constructor <init>(Lio/reactivex/MaybeObserver;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/MaybeObserver<",
            "-TT;>;)V"
        }
    .end annotation

    .line 49
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableLastMaybe$LastObserver;, "Lio/reactivex/internal/operators/observable/ObservableLastMaybe$LastObserver<TT;>;"
    .local p1, "actual":Lio/reactivex/MaybeObserver;, "Lio/reactivex/MaybeObserver<-TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableLastMaybe$LastObserver;->actual:Lio/reactivex/MaybeObserver;

    .line 51
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 1

    .line 55
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableLastMaybe$LastObserver;, "Lio/reactivex/internal/operators/observable/ObservableLastMaybe$LastObserver<TT;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableLastMaybe$LastObserver;->s:Lio/reactivex/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 56
    sget-object v0, Lio/reactivex/internal/disposables/DisposableHelper;->DISPOSED:Lio/reactivex/internal/disposables/DisposableHelper;

    iput-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableLastMaybe$LastObserver;->s:Lio/reactivex/disposables/Disposable;

    .line 57
    return-void
.end method

.method public isDisposed()Z
    .locals 2

    .line 61
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableLastMaybe$LastObserver;, "Lio/reactivex/internal/operators/observable/ObservableLastMaybe$LastObserver<TT;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableLastMaybe$LastObserver;->s:Lio/reactivex/disposables/Disposable;

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
    .locals 2

    .line 87
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableLastMaybe$LastObserver;, "Lio/reactivex/internal/operators/observable/ObservableLastMaybe$LastObserver<TT;>;"
    sget-object v0, Lio/reactivex/internal/disposables/DisposableHelper;->DISPOSED:Lio/reactivex/internal/disposables/DisposableHelper;

    iput-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableLastMaybe$LastObserver;->s:Lio/reactivex/disposables/Disposable;

    .line 88
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableLastMaybe$LastObserver;->item:Ljava/lang/Object;

    .line 89
    .local v0, "v":Ljava/lang/Object;, "TT;"
    if-eqz v0, :cond_0

    .line 90
    const/4 v1, 0x0

    iput-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableLastMaybe$LastObserver;->item:Ljava/lang/Object;

    .line 91
    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableLastMaybe$LastObserver;->actual:Lio/reactivex/MaybeObserver;

    invoke-interface {v1, v0}, Lio/reactivex/MaybeObserver;->onSuccess(Ljava/lang/Object;)V

    goto :goto_0

    .line 93
    :cond_0
    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableLastMaybe$LastObserver;->actual:Lio/reactivex/MaybeObserver;

    invoke-interface {v1}, Lio/reactivex/MaybeObserver;->onComplete()V

    .line 95
    :goto_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "t"    # Ljava/lang/Throwable;

    .line 80
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableLastMaybe$LastObserver;, "Lio/reactivex/internal/operators/observable/ObservableLastMaybe$LastObserver<TT;>;"
    sget-object v0, Lio/reactivex/internal/disposables/DisposableHelper;->DISPOSED:Lio/reactivex/internal/disposables/DisposableHelper;

    iput-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableLastMaybe$LastObserver;->s:Lio/reactivex/disposables/Disposable;

    .line 81
    const/4 v0, 0x0

    iput-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableLastMaybe$LastObserver;->item:Ljava/lang/Object;

    .line 82
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableLastMaybe$LastObserver;->actual:Lio/reactivex/MaybeObserver;

    invoke-interface {v0, p1}, Lio/reactivex/MaybeObserver;->onError(Ljava/lang/Throwable;)V

    .line 83
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 75
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableLastMaybe$LastObserver;, "Lio/reactivex/internal/operators/observable/ObservableLastMaybe$LastObserver<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableLastMaybe$LastObserver;->item:Ljava/lang/Object;

    .line 76
    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .locals 1
    .param p1, "s"    # Lio/reactivex/disposables/Disposable;

    .line 66
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableLastMaybe$LastObserver;, "Lio/reactivex/internal/operators/observable/ObservableLastMaybe$LastObserver<TT;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableLastMaybe$LastObserver;->s:Lio/reactivex/disposables/Disposable;

    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->validate(Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/Disposable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 67
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableLastMaybe$LastObserver;->s:Lio/reactivex/disposables/Disposable;

    .line 69
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableLastMaybe$LastObserver;->actual:Lio/reactivex/MaybeObserver;

    invoke-interface {v0, p0}, Lio/reactivex/MaybeObserver;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    .line 71
    :cond_0
    return-void
.end method
