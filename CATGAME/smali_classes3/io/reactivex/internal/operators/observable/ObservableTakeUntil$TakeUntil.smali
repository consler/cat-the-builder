.class final Lio/reactivex/internal/operators/observable/ObservableTakeUntil$TakeUntil;
.super Ljava/lang/Object;
.source "ObservableTakeUntil.java"

# interfaces
.implements Lio/reactivex/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/observable/ObservableTakeUntil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "TakeUntil"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/Observer<",
        "TU;>;"
    }
.end annotation


# instance fields
.field private final frc:Lio/reactivex/internal/disposables/ArrayCompositeDisposable;

.field private final serial:Lio/reactivex/observers/SerializedObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/observers/SerializedObserver<",
            "TT;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lio/reactivex/internal/operators/observable/ObservableTakeUntil;


# direct methods
.method constructor <init>(Lio/reactivex/internal/operators/observable/ObservableTakeUntil;Lio/reactivex/internal/disposables/ArrayCompositeDisposable;Lio/reactivex/observers/SerializedObserver;)V
    .locals 0
    .param p2, "frc"    # Lio/reactivex/internal/disposables/ArrayCompositeDisposable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/disposables/ArrayCompositeDisposable;",
            "Lio/reactivex/observers/SerializedObserver<",
            "TT;>;)V"
        }
    .end annotation

    .line 87
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableTakeUntil$TakeUntil;, "Lio/reactivex/internal/operators/observable/ObservableTakeUntil<TT;TU;>.TakeUntil;"
    .local p3, "serial":Lio/reactivex/observers/SerializedObserver;, "Lio/reactivex/observers/SerializedObserver<TT;>;"
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableTakeUntil$TakeUntil;->this$0:Lio/reactivex/internal/operators/observable/ObservableTakeUntil;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    iput-object p2, p0, Lio/reactivex/internal/operators/observable/ObservableTakeUntil$TakeUntil;->frc:Lio/reactivex/internal/disposables/ArrayCompositeDisposable;

    .line 89
    iput-object p3, p0, Lio/reactivex/internal/operators/observable/ObservableTakeUntil$TakeUntil;->serial:Lio/reactivex/observers/SerializedObserver;

    .line 90
    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 1

    .line 111
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableTakeUntil$TakeUntil;, "Lio/reactivex/internal/operators/observable/ObservableTakeUntil<TT;TU;>.TakeUntil;"
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableTakeUntil$TakeUntil;->frc:Lio/reactivex/internal/disposables/ArrayCompositeDisposable;

    invoke-virtual {v0}, Lio/reactivex/internal/disposables/ArrayCompositeDisposable;->dispose()V

    .line 112
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableTakeUntil$TakeUntil;->serial:Lio/reactivex/observers/SerializedObserver;

    invoke-virtual {v0}, Lio/reactivex/observers/SerializedObserver;->onComplete()V

    .line 113
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "t"    # Ljava/lang/Throwable;

    .line 105
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableTakeUntil$TakeUntil;, "Lio/reactivex/internal/operators/observable/ObservableTakeUntil<TT;TU;>.TakeUntil;"
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableTakeUntil$TakeUntil;->frc:Lio/reactivex/internal/disposables/ArrayCompositeDisposable;

    invoke-virtual {v0}, Lio/reactivex/internal/disposables/ArrayCompositeDisposable;->dispose()V

    .line 106
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableTakeUntil$TakeUntil;->serial:Lio/reactivex/observers/SerializedObserver;

    invoke-virtual {v0, p1}, Lio/reactivex/observers/SerializedObserver;->onError(Ljava/lang/Throwable;)V

    .line 107
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TU;)V"
        }
    .end annotation

    .line 99
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableTakeUntil$TakeUntil;, "Lio/reactivex/internal/operators/observable/ObservableTakeUntil<TT;TU;>.TakeUntil;"
    .local p1, "t":Ljava/lang/Object;, "TU;"
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableTakeUntil$TakeUntil;->frc:Lio/reactivex/internal/disposables/ArrayCompositeDisposable;

    invoke-virtual {v0}, Lio/reactivex/internal/disposables/ArrayCompositeDisposable;->dispose()V

    .line 100
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableTakeUntil$TakeUntil;->serial:Lio/reactivex/observers/SerializedObserver;

    invoke-virtual {v0}, Lio/reactivex/observers/SerializedObserver;->onComplete()V

    .line 101
    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .locals 2
    .param p1, "s"    # Lio/reactivex/disposables/Disposable;

    .line 94
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableTakeUntil$TakeUntil;, "Lio/reactivex/internal/operators/observable/ObservableTakeUntil<TT;TU;>.TakeUntil;"
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableTakeUntil$TakeUntil;->frc:Lio/reactivex/internal/disposables/ArrayCompositeDisposable;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lio/reactivex/internal/disposables/ArrayCompositeDisposable;->setResource(ILio/reactivex/disposables/Disposable;)Z

    .line 95
    return-void
.end method
