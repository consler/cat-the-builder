.class public final Lio/reactivex/internal/operators/observable/ObservableTakeUntil;
.super Lio/reactivex/internal/operators/observable/AbstractObservableWithUpstream;
.source "ObservableTakeUntil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/observable/ObservableTakeUntil$TakeUntil;,
        Lio/reactivex/internal/operators/observable/ObservableTakeUntil$TakeUntilObserver;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/operators/observable/AbstractObservableWithUpstream<",
        "TT;TT;>;"
    }
.end annotation


# instance fields
.field final other:Lio/reactivex/ObservableSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/ObservableSource<",
            "+TU;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/reactivex/ObservableSource;Lio/reactivex/ObservableSource;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ObservableSource<",
            "TT;>;",
            "Lio/reactivex/ObservableSource<",
            "+TU;>;)V"
        }
    .end annotation

    .line 26
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableTakeUntil;, "Lio/reactivex/internal/operators/observable/ObservableTakeUntil<TT;TU;>;"
    .local p1, "source":Lio/reactivex/ObservableSource;, "Lio/reactivex/ObservableSource<TT;>;"
    .local p2, "other":Lio/reactivex/ObservableSource;, "Lio/reactivex/ObservableSource<+TU;>;"
    invoke-direct {p0, p1}, Lio/reactivex/internal/operators/observable/AbstractObservableWithUpstream;-><init>(Lio/reactivex/ObservableSource;)V

    .line 27
    iput-object p2, p0, Lio/reactivex/internal/operators/observable/ObservableTakeUntil;->other:Lio/reactivex/ObservableSource;

    .line 28
    return-void
.end method


# virtual methods
.method public subscribeActual(Lio/reactivex/Observer;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observer<",
            "-TT;>;)V"
        }
    .end annotation

    .line 31
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableTakeUntil;, "Lio/reactivex/internal/operators/observable/ObservableTakeUntil<TT;TU;>;"
    .local p1, "child":Lio/reactivex/Observer;, "Lio/reactivex/Observer<-TT;>;"
    new-instance v0, Lio/reactivex/observers/SerializedObserver;

    invoke-direct {v0, p1}, Lio/reactivex/observers/SerializedObserver;-><init>(Lio/reactivex/Observer;)V

    .line 33
    .local v0, "serial":Lio/reactivex/observers/SerializedObserver;, "Lio/reactivex/observers/SerializedObserver<TT;>;"
    new-instance v1, Lio/reactivex/internal/disposables/ArrayCompositeDisposable;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Lio/reactivex/internal/disposables/ArrayCompositeDisposable;-><init>(I)V

    .line 35
    .local v1, "frc":Lio/reactivex/internal/disposables/ArrayCompositeDisposable;
    new-instance v2, Lio/reactivex/internal/operators/observable/ObservableTakeUntil$TakeUntilObserver;

    invoke-direct {v2, v0, v1}, Lio/reactivex/internal/operators/observable/ObservableTakeUntil$TakeUntilObserver;-><init>(Lio/reactivex/Observer;Lio/reactivex/internal/disposables/ArrayCompositeDisposable;)V

    .line 37
    .local v2, "tus":Lio/reactivex/internal/operators/observable/ObservableTakeUntil$TakeUntilObserver;, "Lio/reactivex/internal/operators/observable/ObservableTakeUntil$TakeUntilObserver<TT;>;"
    invoke-interface {p1, v1}, Lio/reactivex/Observer;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    .line 39
    iget-object v3, p0, Lio/reactivex/internal/operators/observable/ObservableTakeUntil;->other:Lio/reactivex/ObservableSource;

    new-instance v4, Lio/reactivex/internal/operators/observable/ObservableTakeUntil$TakeUntil;

    invoke-direct {v4, p0, v1, v0}, Lio/reactivex/internal/operators/observable/ObservableTakeUntil$TakeUntil;-><init>(Lio/reactivex/internal/operators/observable/ObservableTakeUntil;Lio/reactivex/internal/disposables/ArrayCompositeDisposable;Lio/reactivex/observers/SerializedObserver;)V

    invoke-interface {v3, v4}, Lio/reactivex/ObservableSource;->subscribe(Lio/reactivex/Observer;)V

    .line 41
    iget-object v3, p0, Lio/reactivex/internal/operators/observable/ObservableTakeUntil;->source:Lio/reactivex/ObservableSource;

    invoke-interface {v3, v2}, Lio/reactivex/ObservableSource;->subscribe(Lio/reactivex/Observer;)V

    .line 42
    return-void
.end method
