.class final Lio/reactivex/internal/operators/observable/ObservableInternalHelper$TimedReplayCallable;
.super Ljava/lang/Object;
.source "ObservableInternalHelper.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/observable/ObservableInternalHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "TimedReplayCallable"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lio/reactivex/observables/ConnectableObservable<",
        "TT;>;>;"
    }
.end annotation


# instance fields
.field private final parent:Lio/reactivex/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/Observable<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final scheduler:Lio/reactivex/Scheduler;

.field private final time:J

.field private final unit:Ljava/util/concurrent/TimeUnit;


# direct methods
.method constructor <init>(Lio/reactivex/Observable;JLjava/util/concurrent/TimeUnit;Lio/reactivex/Scheduler;)V
    .locals 0
    .param p2, "time"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p5, "scheduler"    # Lio/reactivex/Scheduler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observable<",
            "TT;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/Scheduler;",
            ")V"
        }
    .end annotation

    .line 382
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableInternalHelper$TimedReplayCallable;, "Lio/reactivex/internal/operators/observable/ObservableInternalHelper$TimedReplayCallable<TT;>;"
    .local p1, "parent":Lio/reactivex/Observable;, "Lio/reactivex/Observable<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 383
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableInternalHelper$TimedReplayCallable;->parent:Lio/reactivex/Observable;

    .line 384
    iput-wide p2, p0, Lio/reactivex/internal/operators/observable/ObservableInternalHelper$TimedReplayCallable;->time:J

    .line 385
    iput-object p4, p0, Lio/reactivex/internal/operators/observable/ObservableInternalHelper$TimedReplayCallable;->unit:Ljava/util/concurrent/TimeUnit;

    .line 386
    iput-object p5, p0, Lio/reactivex/internal/operators/observable/ObservableInternalHelper$TimedReplayCallable;->scheduler:Lio/reactivex/Scheduler;

    .line 387
    return-void
.end method


# virtual methods
.method public call()Lio/reactivex/observables/ConnectableObservable;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/observables/ConnectableObservable<",
            "TT;>;"
        }
    .end annotation

    .line 391
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableInternalHelper$TimedReplayCallable;, "Lio/reactivex/internal/operators/observable/ObservableInternalHelper$TimedReplayCallable<TT;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableInternalHelper$TimedReplayCallable;->parent:Lio/reactivex/Observable;

    iget-wide v1, p0, Lio/reactivex/internal/operators/observable/ObservableInternalHelper$TimedReplayCallable;->time:J

    iget-object v3, p0, Lio/reactivex/internal/operators/observable/ObservableInternalHelper$TimedReplayCallable;->unit:Ljava/util/concurrent/TimeUnit;

    iget-object v4, p0, Lio/reactivex/internal/operators/observable/ObservableInternalHelper$TimedReplayCallable;->scheduler:Lio/reactivex/Scheduler;

    invoke-virtual {v0, v1, v2, v3, v4}, Lio/reactivex/Observable;->replay(JLjava/util/concurrent/TimeUnit;Lio/reactivex/Scheduler;)Lio/reactivex/observables/ConnectableObservable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 376
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableInternalHelper$TimedReplayCallable;, "Lio/reactivex/internal/operators/observable/ObservableInternalHelper$TimedReplayCallable<TT;>;"
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableInternalHelper$TimedReplayCallable;->call()Lio/reactivex/observables/ConnectableObservable;

    move-result-object v0

    return-object v0
.end method
