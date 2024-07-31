.class public final Lio/reactivex/internal/operators/observable/ObservableRepeat;
.super Lio/reactivex/internal/operators/observable/AbstractObservableWithUpstream;
.source "ObservableRepeat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/observable/ObservableRepeat$RepeatObserver;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/operators/observable/AbstractObservableWithUpstream<",
        "TT;TT;>;"
    }
.end annotation


# instance fields
.field final count:J


# direct methods
.method public constructor <init>(Lio/reactivex/Observable;J)V
    .locals 0
    .param p2, "count"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observable<",
            "TT;>;J)V"
        }
    .end annotation

    .line 25
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableRepeat;, "Lio/reactivex/internal/operators/observable/ObservableRepeat<TT;>;"
    .local p1, "source":Lio/reactivex/Observable;, "Lio/reactivex/Observable<TT;>;"
    invoke-direct {p0, p1}, Lio/reactivex/internal/operators/observable/AbstractObservableWithUpstream;-><init>(Lio/reactivex/ObservableSource;)V

    .line 26
    iput-wide p2, p0, Lio/reactivex/internal/operators/observable/ObservableRepeat;->count:J

    .line 27
    return-void
.end method


# virtual methods
.method public subscribeActual(Lio/reactivex/Observer;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observer<",
            "-TT;>;)V"
        }
    .end annotation

    .line 31
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableRepeat;, "Lio/reactivex/internal/operators/observable/ObservableRepeat<TT;>;"
    .local p1, "s":Lio/reactivex/Observer;, "Lio/reactivex/Observer<-TT;>;"
    new-instance v0, Lio/reactivex/internal/disposables/SequentialDisposable;

    invoke-direct {v0}, Lio/reactivex/internal/disposables/SequentialDisposable;-><init>()V

    .line 32
    .local v0, "sd":Lio/reactivex/internal/disposables/SequentialDisposable;
    invoke-interface {p1, v0}, Lio/reactivex/Observer;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    .line 34
    new-instance v7, Lio/reactivex/internal/operators/observable/ObservableRepeat$RepeatObserver;

    iget-wide v1, p0, Lio/reactivex/internal/operators/observable/ObservableRepeat;->count:J

    const-wide v3, 0x7fffffffffffffffL

    cmp-long v5, v1, v3

    if-eqz v5, :cond_0

    const-wide/16 v3, 0x1

    sub-long/2addr v1, v3

    move-wide v3, v1

    :cond_0
    iget-object v6, p0, Lio/reactivex/internal/operators/observable/ObservableRepeat;->source:Lio/reactivex/ObservableSource;

    move-object v1, v7

    move-object v2, p1

    move-object v5, v0

    invoke-direct/range {v1 .. v6}, Lio/reactivex/internal/operators/observable/ObservableRepeat$RepeatObserver;-><init>(Lio/reactivex/Observer;JLio/reactivex/internal/disposables/SequentialDisposable;Lio/reactivex/ObservableSource;)V

    .line 35
    .local v1, "rs":Lio/reactivex/internal/operators/observable/ObservableRepeat$RepeatObserver;, "Lio/reactivex/internal/operators/observable/ObservableRepeat$RepeatObserver<TT;>;"
    invoke-virtual {v1}, Lio/reactivex/internal/operators/observable/ObservableRepeat$RepeatObserver;->subscribeNext()V

    .line 36
    return-void
.end method
