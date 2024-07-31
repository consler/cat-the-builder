.class public final Lio/reactivex/internal/operators/observable/ObservableWindowTimed;
.super Lio/reactivex/internal/operators/observable/AbstractObservableWithUpstream;
.source "ObservableWindowTimed.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowSkipObserver;,
        Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowExactBoundedObserver;,
        Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowExactUnboundedObserver;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/operators/observable/AbstractObservableWithUpstream<",
        "TT;",
        "Lio/reactivex/Observable<",
        "TT;>;>;"
    }
.end annotation


# instance fields
.field final bufferSize:I

.field final maxSize:J

.field final restartTimerOnMaxSize:Z

.field final scheduler:Lio/reactivex/Scheduler;

.field final timeskip:J

.field final timespan:J

.field final unit:Ljava/util/concurrent/TimeUnit;


# direct methods
.method public constructor <init>(Lio/reactivex/ObservableSource;JJLjava/util/concurrent/TimeUnit;Lio/reactivex/Scheduler;JIZ)V
    .locals 0
    .param p2, "timespan"    # J
    .param p4, "timeskip"    # J
    .param p6, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p7, "scheduler"    # Lio/reactivex/Scheduler;
    .param p8, "maxSize"    # J
    .param p10, "bufferSize"    # I
    .param p11, "restartTimerOnMaxSize"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ObservableSource<",
            "TT;>;JJ",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/Scheduler;",
            "JIZ)V"
        }
    .end annotation

    .line 45
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableWindowTimed;, "Lio/reactivex/internal/operators/observable/ObservableWindowTimed<TT;>;"
    .local p1, "source":Lio/reactivex/ObservableSource;, "Lio/reactivex/ObservableSource<TT;>;"
    invoke-direct {p0, p1}, Lio/reactivex/internal/operators/observable/AbstractObservableWithUpstream;-><init>(Lio/reactivex/ObservableSource;)V

    .line 46
    iput-wide p2, p0, Lio/reactivex/internal/operators/observable/ObservableWindowTimed;->timespan:J

    .line 47
    iput-wide p4, p0, Lio/reactivex/internal/operators/observable/ObservableWindowTimed;->timeskip:J

    .line 48
    iput-object p6, p0, Lio/reactivex/internal/operators/observable/ObservableWindowTimed;->unit:Ljava/util/concurrent/TimeUnit;

    .line 49
    iput-object p7, p0, Lio/reactivex/internal/operators/observable/ObservableWindowTimed;->scheduler:Lio/reactivex/Scheduler;

    .line 50
    iput-wide p8, p0, Lio/reactivex/internal/operators/observable/ObservableWindowTimed;->maxSize:J

    .line 51
    iput p10, p0, Lio/reactivex/internal/operators/observable/ObservableWindowTimed;->bufferSize:I

    .line 52
    iput-boolean p11, p0, Lio/reactivex/internal/operators/observable/ObservableWindowTimed;->restartTimerOnMaxSize:Z

    .line 53
    return-void
.end method


# virtual methods
.method public subscribeActual(Lio/reactivex/Observer;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observer<",
            "-",
            "Lio/reactivex/Observable<",
            "TT;>;>;)V"
        }
    .end annotation

    .line 57
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableWindowTimed;, "Lio/reactivex/internal/operators/observable/ObservableWindowTimed<TT;>;"
    .local p1, "t":Lio/reactivex/Observer;, "Lio/reactivex/Observer<-Lio/reactivex/Observable<TT;>;>;"
    new-instance v1, Lio/reactivex/observers/SerializedObserver;

    invoke-direct {v1, p1}, Lio/reactivex/observers/SerializedObserver;-><init>(Lio/reactivex/Observer;)V

    .line 59
    .local v1, "actual":Lio/reactivex/observers/SerializedObserver;, "Lio/reactivex/observers/SerializedObserver<Lio/reactivex/Observable<TT;>;>;"
    iget-wide v2, p0, Lio/reactivex/internal/operators/observable/ObservableWindowTimed;->timespan:J

    iget-wide v4, p0, Lio/reactivex/internal/operators/observable/ObservableWindowTimed;->timeskip:J

    cmp-long v0, v2, v4

    if-nez v0, :cond_1

    .line 60
    iget-wide v2, p0, Lio/reactivex/internal/operators/observable/ObservableWindowTimed;->maxSize:J

    const-wide v4, 0x7fffffffffffffffL

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    .line 61
    iget-object v7, p0, Lio/reactivex/internal/operators/observable/ObservableWindowTimed;->source:Lio/reactivex/ObservableSource;

    new-instance v8, Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowExactUnboundedObserver;

    iget-wide v2, p0, Lio/reactivex/internal/operators/observable/ObservableWindowTimed;->timespan:J

    iget-object v4, p0, Lio/reactivex/internal/operators/observable/ObservableWindowTimed;->unit:Ljava/util/concurrent/TimeUnit;

    iget-object v5, p0, Lio/reactivex/internal/operators/observable/ObservableWindowTimed;->scheduler:Lio/reactivex/Scheduler;

    iget v6, p0, Lio/reactivex/internal/operators/observable/ObservableWindowTimed;->bufferSize:I

    move-object v0, v8

    invoke-direct/range {v0 .. v6}, Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowExactUnboundedObserver;-><init>(Lio/reactivex/Observer;JLjava/util/concurrent/TimeUnit;Lio/reactivex/Scheduler;I)V

    invoke-interface {v7, v8}, Lio/reactivex/ObservableSource;->subscribe(Lio/reactivex/Observer;)V

    .line 64
    return-void

    .line 66
    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableWindowTimed;->source:Lio/reactivex/ObservableSource;

    new-instance v12, Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowExactBoundedObserver;

    iget-wide v4, p0, Lio/reactivex/internal/operators/observable/ObservableWindowTimed;->timespan:J

    iget-object v6, p0, Lio/reactivex/internal/operators/observable/ObservableWindowTimed;->unit:Ljava/util/concurrent/TimeUnit;

    iget-object v7, p0, Lio/reactivex/internal/operators/observable/ObservableWindowTimed;->scheduler:Lio/reactivex/Scheduler;

    iget v8, p0, Lio/reactivex/internal/operators/observable/ObservableWindowTimed;->bufferSize:I

    iget-wide v9, p0, Lio/reactivex/internal/operators/observable/ObservableWindowTimed;->maxSize:J

    iget-boolean v11, p0, Lio/reactivex/internal/operators/observable/ObservableWindowTimed;->restartTimerOnMaxSize:Z

    move-object v2, v12

    move-object v3, v1

    invoke-direct/range {v2 .. v11}, Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowExactBoundedObserver;-><init>(Lio/reactivex/Observer;JLjava/util/concurrent/TimeUnit;Lio/reactivex/Scheduler;IJZ)V

    invoke-interface {v0, v12}, Lio/reactivex/ObservableSource;->subscribe(Lio/reactivex/Observer;)V

    .line 70
    return-void

    .line 72
    :cond_1
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableWindowTimed;->source:Lio/reactivex/ObservableSource;

    new-instance v11, Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowSkipObserver;

    iget-wide v4, p0, Lio/reactivex/internal/operators/observable/ObservableWindowTimed;->timespan:J

    iget-wide v6, p0, Lio/reactivex/internal/operators/observable/ObservableWindowTimed;->timeskip:J

    iget-object v8, p0, Lio/reactivex/internal/operators/observable/ObservableWindowTimed;->unit:Ljava/util/concurrent/TimeUnit;

    iget-object v2, p0, Lio/reactivex/internal/operators/observable/ObservableWindowTimed;->scheduler:Lio/reactivex/Scheduler;

    invoke-virtual {v2}, Lio/reactivex/Scheduler;->createWorker()Lio/reactivex/Scheduler$Worker;

    move-result-object v9

    iget v10, p0, Lio/reactivex/internal/operators/observable/ObservableWindowTimed;->bufferSize:I

    move-object v2, v11

    move-object v3, v1

    invoke-direct/range {v2 .. v10}, Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowSkipObserver;-><init>(Lio/reactivex/Observer;JJLjava/util/concurrent/TimeUnit;Lio/reactivex/Scheduler$Worker;I)V

    invoke-interface {v0, v11}, Lio/reactivex/ObservableSource;->subscribe(Lio/reactivex/Observer;)V

    .line 74
    return-void
.end method
