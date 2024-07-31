.class final Lio/reactivex/internal/operators/observable/ObservableTimeInterval$TimeIntervalObserver;
.super Ljava/lang/Object;
.source "ObservableTimeInterval.java"

# interfaces
.implements Lio/reactivex/Observer;
.implements Lio/reactivex/disposables/Disposable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/observable/ObservableTimeInterval;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "TimeIntervalObserver"
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
            "-",
            "Lio/reactivex/schedulers/Timed<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field lastTime:J

.field s:Lio/reactivex/disposables/Disposable;

.field final scheduler:Lio/reactivex/Scheduler;

.field final unit:Ljava/util/concurrent/TimeUnit;


# direct methods
.method constructor <init>(Lio/reactivex/Observer;Ljava/util/concurrent/TimeUnit;Lio/reactivex/Scheduler;)V
    .locals 0
    .param p2, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p3, "scheduler"    # Lio/reactivex/Scheduler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observer<",
            "-",
            "Lio/reactivex/schedulers/Timed<",
            "TT;>;>;",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/Scheduler;",
            ")V"
        }
    .end annotation

    .line 47
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableTimeInterval$TimeIntervalObserver;, "Lio/reactivex/internal/operators/observable/ObservableTimeInterval$TimeIntervalObserver<TT;>;"
    .local p1, "actual":Lio/reactivex/Observer;, "Lio/reactivex/Observer<-Lio/reactivex/schedulers/Timed<TT;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableTimeInterval$TimeIntervalObserver;->actual:Lio/reactivex/Observer;

    .line 49
    iput-object p3, p0, Lio/reactivex/internal/operators/observable/ObservableTimeInterval$TimeIntervalObserver;->scheduler:Lio/reactivex/Scheduler;

    .line 50
    iput-object p2, p0, Lio/reactivex/internal/operators/observable/ObservableTimeInterval$TimeIntervalObserver;->unit:Ljava/util/concurrent/TimeUnit;

    .line 51
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 1

    .line 64
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableTimeInterval$TimeIntervalObserver;, "Lio/reactivex/internal/operators/observable/ObservableTimeInterval$TimeIntervalObserver<TT;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableTimeInterval$TimeIntervalObserver;->s:Lio/reactivex/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 65
    return-void
.end method

.method public isDisposed()Z
    .locals 1

    .line 69
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableTimeInterval$TimeIntervalObserver;, "Lio/reactivex/internal/operators/observable/ObservableTimeInterval$TimeIntervalObserver<TT;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableTimeInterval$TimeIntervalObserver;->s:Lio/reactivex/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->isDisposed()Z

    move-result v0

    return v0
.end method

.method public onComplete()V
    .locals 1

    .line 89
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableTimeInterval$TimeIntervalObserver;, "Lio/reactivex/internal/operators/observable/ObservableTimeInterval$TimeIntervalObserver<TT;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableTimeInterval$TimeIntervalObserver;->actual:Lio/reactivex/Observer;

    invoke-interface {v0}, Lio/reactivex/Observer;->onComplete()V

    .line 90
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "t"    # Ljava/lang/Throwable;

    .line 84
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableTimeInterval$TimeIntervalObserver;, "Lio/reactivex/internal/operators/observable/ObservableTimeInterval$TimeIntervalObserver<TT;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableTimeInterval$TimeIntervalObserver;->actual:Lio/reactivex/Observer;

    invoke-interface {v0, p1}, Lio/reactivex/Observer;->onError(Ljava/lang/Throwable;)V

    .line 85
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 75
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableTimeInterval$TimeIntervalObserver;, "Lio/reactivex/internal/operators/observable/ObservableTimeInterval$TimeIntervalObserver<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableTimeInterval$TimeIntervalObserver;->scheduler:Lio/reactivex/Scheduler;

    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableTimeInterval$TimeIntervalObserver;->unit:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1}, Lio/reactivex/Scheduler;->now(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    .line 76
    .local v0, "now":J
    iget-wide v2, p0, Lio/reactivex/internal/operators/observable/ObservableTimeInterval$TimeIntervalObserver;->lastTime:J

    .line 77
    .local v2, "last":J
    iput-wide v0, p0, Lio/reactivex/internal/operators/observable/ObservableTimeInterval$TimeIntervalObserver;->lastTime:J

    .line 78
    sub-long v4, v0, v2

    .line 79
    .local v4, "delta":J
    iget-object v6, p0, Lio/reactivex/internal/operators/observable/ObservableTimeInterval$TimeIntervalObserver;->actual:Lio/reactivex/Observer;

    new-instance v7, Lio/reactivex/schedulers/Timed;

    iget-object v8, p0, Lio/reactivex/internal/operators/observable/ObservableTimeInterval$TimeIntervalObserver;->unit:Ljava/util/concurrent/TimeUnit;

    invoke-direct {v7, p1, v4, v5, v8}, Lio/reactivex/schedulers/Timed;-><init>(Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;)V

    invoke-interface {v6, v7}, Lio/reactivex/Observer;->onNext(Ljava/lang/Object;)V

    .line 80
    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .locals 2
    .param p1, "s"    # Lio/reactivex/disposables/Disposable;

    .line 55
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableTimeInterval$TimeIntervalObserver;, "Lio/reactivex/internal/operators/observable/ObservableTimeInterval$TimeIntervalObserver<TT;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableTimeInterval$TimeIntervalObserver;->s:Lio/reactivex/disposables/Disposable;

    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->validate(Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/Disposable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableTimeInterval$TimeIntervalObserver;->s:Lio/reactivex/disposables/Disposable;

    .line 57
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableTimeInterval$TimeIntervalObserver;->scheduler:Lio/reactivex/Scheduler;

    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableTimeInterval$TimeIntervalObserver;->unit:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1}, Lio/reactivex/Scheduler;->now(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/reactivex/internal/operators/observable/ObservableTimeInterval$TimeIntervalObserver;->lastTime:J

    .line 58
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableTimeInterval$TimeIntervalObserver;->actual:Lio/reactivex/Observer;

    invoke-interface {v0, p0}, Lio/reactivex/Observer;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    .line 60
    :cond_0
    return-void
.end method
