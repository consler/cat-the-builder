.class public final Lio/reactivex/internal/operators/completable/CompletableTimer;
.super Lio/reactivex/Completable;
.source "CompletableTimer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/completable/CompletableTimer$TimerDisposable;
    }
.end annotation


# instance fields
.field final delay:J

.field final scheduler:Lio/reactivex/Scheduler;

.field final unit:Ljava/util/concurrent/TimeUnit;


# direct methods
.method public constructor <init>(JLjava/util/concurrent/TimeUnit;Lio/reactivex/Scheduler;)V
    .locals 0
    .param p1, "delay"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p4, "scheduler"    # Lio/reactivex/Scheduler;

    .line 32
    invoke-direct {p0}, Lio/reactivex/Completable;-><init>()V

    .line 33
    iput-wide p1, p0, Lio/reactivex/internal/operators/completable/CompletableTimer;->delay:J

    .line 34
    iput-object p3, p0, Lio/reactivex/internal/operators/completable/CompletableTimer;->unit:Ljava/util/concurrent/TimeUnit;

    .line 35
    iput-object p4, p0, Lio/reactivex/internal/operators/completable/CompletableTimer;->scheduler:Lio/reactivex/Scheduler;

    .line 36
    return-void
.end method


# virtual methods
.method protected subscribeActual(Lio/reactivex/CompletableObserver;)V
    .locals 5
    .param p1, "s"    # Lio/reactivex/CompletableObserver;

    .line 40
    new-instance v0, Lio/reactivex/internal/operators/completable/CompletableTimer$TimerDisposable;

    invoke-direct {v0, p1}, Lio/reactivex/internal/operators/completable/CompletableTimer$TimerDisposable;-><init>(Lio/reactivex/CompletableObserver;)V

    .line 41
    .local v0, "parent":Lio/reactivex/internal/operators/completable/CompletableTimer$TimerDisposable;
    invoke-interface {p1, v0}, Lio/reactivex/CompletableObserver;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    .line 42
    iget-object v1, p0, Lio/reactivex/internal/operators/completable/CompletableTimer;->scheduler:Lio/reactivex/Scheduler;

    iget-wide v2, p0, Lio/reactivex/internal/operators/completable/CompletableTimer;->delay:J

    iget-object v4, p0, Lio/reactivex/internal/operators/completable/CompletableTimer;->unit:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v0, v2, v3, v4}, Lio/reactivex/Scheduler;->scheduleDirect(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lio/reactivex/disposables/Disposable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/internal/operators/completable/CompletableTimer$TimerDisposable;->setFuture(Lio/reactivex/disposables/Disposable;)V

    .line 43
    return-void
.end method
