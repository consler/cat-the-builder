.class public final Lio/reactivex/internal/operators/flowable/FlowableWindowTimed;
.super Lio/reactivex/internal/operators/flowable/AbstractFlowableWithUpstream;
.source "FlowableWindowTimed.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowSkipSubscriber;,
        Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowExactBoundedSubscriber;,
        Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowExactUnboundedSubscriber;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/operators/flowable/AbstractFlowableWithUpstream<",
        "TT;",
        "Lio/reactivex/Flowable<",
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
.method public constructor <init>(Lio/reactivex/Flowable;JJLjava/util/concurrent/TimeUnit;Lio/reactivex/Scheduler;JIZ)V
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
            "Lio/reactivex/Flowable<",
            "TT;>;JJ",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/Scheduler;",
            "JIZ)V"
        }
    .end annotation

    .line 46
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableWindowTimed;, "Lio/reactivex/internal/operators/flowable/FlowableWindowTimed<TT;>;"
    .local p1, "source":Lio/reactivex/Flowable;, "Lio/reactivex/Flowable<TT;>;"
    invoke-direct {p0, p1}, Lio/reactivex/internal/operators/flowable/AbstractFlowableWithUpstream;-><init>(Lio/reactivex/Flowable;)V

    .line 47
    iput-wide p2, p0, Lio/reactivex/internal/operators/flowable/FlowableWindowTimed;->timespan:J

    .line 48
    iput-wide p4, p0, Lio/reactivex/internal/operators/flowable/FlowableWindowTimed;->timeskip:J

    .line 49
    iput-object p6, p0, Lio/reactivex/internal/operators/flowable/FlowableWindowTimed;->unit:Ljava/util/concurrent/TimeUnit;

    .line 50
    iput-object p7, p0, Lio/reactivex/internal/operators/flowable/FlowableWindowTimed;->scheduler:Lio/reactivex/Scheduler;

    .line 51
    iput-wide p8, p0, Lio/reactivex/internal/operators/flowable/FlowableWindowTimed;->maxSize:J

    .line 52
    iput p10, p0, Lio/reactivex/internal/operators/flowable/FlowableWindowTimed;->bufferSize:I

    .line 53
    iput-boolean p11, p0, Lio/reactivex/internal/operators/flowable/FlowableWindowTimed;->restartTimerOnMaxSize:Z

    .line 54
    return-void
.end method


# virtual methods
.method protected subscribeActual(Lorg/reactivestreams/Subscriber;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/Subscriber<",
            "-",
            "Lio/reactivex/Flowable<",
            "TT;>;>;)V"
        }
    .end annotation

    .line 58
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableWindowTimed;, "Lio/reactivex/internal/operators/flowable/FlowableWindowTimed<TT;>;"
    .local p1, "s":Lorg/reactivestreams/Subscriber;, "Lorg/reactivestreams/Subscriber<-Lio/reactivex/Flowable<TT;>;>;"
    new-instance v1, Lio/reactivex/subscribers/SerializedSubscriber;

    invoke-direct {v1, p1}, Lio/reactivex/subscribers/SerializedSubscriber;-><init>(Lorg/reactivestreams/Subscriber;)V

    .line 60
    .local v1, "actual":Lio/reactivex/subscribers/SerializedSubscriber;, "Lio/reactivex/subscribers/SerializedSubscriber<Lio/reactivex/Flowable<TT;>;>;"
    iget-wide v2, p0, Lio/reactivex/internal/operators/flowable/FlowableWindowTimed;->timespan:J

    iget-wide v4, p0, Lio/reactivex/internal/operators/flowable/FlowableWindowTimed;->timeskip:J

    cmp-long v0, v2, v4

    if-nez v0, :cond_1

    .line 61
    iget-wide v2, p0, Lio/reactivex/internal/operators/flowable/FlowableWindowTimed;->maxSize:J

    const-wide v4, 0x7fffffffffffffffL

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    .line 62
    iget-object v7, p0, Lio/reactivex/internal/operators/flowable/FlowableWindowTimed;->source:Lio/reactivex/Flowable;

    new-instance v8, Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowExactUnboundedSubscriber;

    iget-wide v2, p0, Lio/reactivex/internal/operators/flowable/FlowableWindowTimed;->timespan:J

    iget-object v4, p0, Lio/reactivex/internal/operators/flowable/FlowableWindowTimed;->unit:Ljava/util/concurrent/TimeUnit;

    iget-object v5, p0, Lio/reactivex/internal/operators/flowable/FlowableWindowTimed;->scheduler:Lio/reactivex/Scheduler;

    iget v6, p0, Lio/reactivex/internal/operators/flowable/FlowableWindowTimed;->bufferSize:I

    move-object v0, v8

    invoke-direct/range {v0 .. v6}, Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowExactUnboundedSubscriber;-><init>(Lorg/reactivestreams/Subscriber;JLjava/util/concurrent/TimeUnit;Lio/reactivex/Scheduler;I)V

    invoke-virtual {v7, v8}, Lio/reactivex/Flowable;->subscribe(Lio/reactivex/FlowableSubscriber;)V

    .line 65
    return-void

    .line 67
    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableWindowTimed;->source:Lio/reactivex/Flowable;

    new-instance v12, Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowExactBoundedSubscriber;

    iget-wide v4, p0, Lio/reactivex/internal/operators/flowable/FlowableWindowTimed;->timespan:J

    iget-object v6, p0, Lio/reactivex/internal/operators/flowable/FlowableWindowTimed;->unit:Ljava/util/concurrent/TimeUnit;

    iget-object v7, p0, Lio/reactivex/internal/operators/flowable/FlowableWindowTimed;->scheduler:Lio/reactivex/Scheduler;

    iget v8, p0, Lio/reactivex/internal/operators/flowable/FlowableWindowTimed;->bufferSize:I

    iget-wide v9, p0, Lio/reactivex/internal/operators/flowable/FlowableWindowTimed;->maxSize:J

    iget-boolean v11, p0, Lio/reactivex/internal/operators/flowable/FlowableWindowTimed;->restartTimerOnMaxSize:Z

    move-object v2, v12

    move-object v3, v1

    invoke-direct/range {v2 .. v11}, Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowExactBoundedSubscriber;-><init>(Lorg/reactivestreams/Subscriber;JLjava/util/concurrent/TimeUnit;Lio/reactivex/Scheduler;IJZ)V

    invoke-virtual {v0, v12}, Lio/reactivex/Flowable;->subscribe(Lio/reactivex/FlowableSubscriber;)V

    .line 71
    return-void

    .line 73
    :cond_1
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableWindowTimed;->source:Lio/reactivex/Flowable;

    new-instance v11, Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowSkipSubscriber;

    iget-wide v4, p0, Lio/reactivex/internal/operators/flowable/FlowableWindowTimed;->timespan:J

    iget-wide v6, p0, Lio/reactivex/internal/operators/flowable/FlowableWindowTimed;->timeskip:J

    iget-object v8, p0, Lio/reactivex/internal/operators/flowable/FlowableWindowTimed;->unit:Ljava/util/concurrent/TimeUnit;

    iget-object v2, p0, Lio/reactivex/internal/operators/flowable/FlowableWindowTimed;->scheduler:Lio/reactivex/Scheduler;

    invoke-virtual {v2}, Lio/reactivex/Scheduler;->createWorker()Lio/reactivex/Scheduler$Worker;

    move-result-object v9

    iget v10, p0, Lio/reactivex/internal/operators/flowable/FlowableWindowTimed;->bufferSize:I

    move-object v2, v11

    move-object v3, v1

    invoke-direct/range {v2 .. v10}, Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowSkipSubscriber;-><init>(Lorg/reactivestreams/Subscriber;JJLjava/util/concurrent/TimeUnit;Lio/reactivex/Scheduler$Worker;I)V

    invoke-virtual {v0, v11}, Lio/reactivex/Flowable;->subscribe(Lio/reactivex/FlowableSubscriber;)V

    .line 75
    return-void
.end method
