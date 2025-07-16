.class final Lio/reactivex/internal/operators/flowable/FlowableTimeoutTimed$TimeoutTimedSubscriber$TimeoutTask;
.super Ljava/lang/Object;
.source "FlowableTimeoutTimed.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/FlowableTimeoutTimed$TimeoutTimedSubscriber;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "TimeoutTask"
.end annotation


# instance fields
.field private final idx:J

.field final synthetic this$0:Lio/reactivex/internal/operators/flowable/FlowableTimeoutTimed$TimeoutTimedSubscriber;


# direct methods
.method constructor <init>(Lio/reactivex/internal/operators/flowable/FlowableTimeoutTimed$TimeoutTimedSubscriber;J)V
    .locals 0

    .line 286
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableTimeoutTimed$TimeoutTimedSubscriber$TimeoutTask;->this$0:Lio/reactivex/internal/operators/flowable/FlowableTimeoutTimed$TimeoutTimedSubscriber;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 287
    iput-wide p2, p0, Lio/reactivex/internal/operators/flowable/FlowableTimeoutTimed$TimeoutTimedSubscriber$TimeoutTask;->idx:J

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 292
    iget-wide v0, p0, Lio/reactivex/internal/operators/flowable/FlowableTimeoutTimed$TimeoutTimedSubscriber$TimeoutTask;->idx:J

    iget-object v2, p0, Lio/reactivex/internal/operators/flowable/FlowableTimeoutTimed$TimeoutTimedSubscriber$TimeoutTask;->this$0:Lio/reactivex/internal/operators/flowable/FlowableTimeoutTimed$TimeoutTimedSubscriber;

    iget-wide v2, v2, Lio/reactivex/internal/operators/flowable/FlowableTimeoutTimed$TimeoutTimedSubscriber;->index:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 293
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableTimeoutTimed$TimeoutTimedSubscriber$TimeoutTask;->this$0:Lio/reactivex/internal/operators/flowable/FlowableTimeoutTimed$TimeoutTimedSubscriber;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lio/reactivex/internal/operators/flowable/FlowableTimeoutTimed$TimeoutTimedSubscriber;->done:Z

    .line 294
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableTimeoutTimed$TimeoutTimedSubscriber$TimeoutTask;->this$0:Lio/reactivex/internal/operators/flowable/FlowableTimeoutTimed$TimeoutTimedSubscriber;

    invoke-virtual {v0}, Lio/reactivex/internal/operators/flowable/FlowableTimeoutTimed$TimeoutTimedSubscriber;->dispose()V

    .line 296
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableTimeoutTimed$TimeoutTimedSubscriber$TimeoutTask;->this$0:Lio/reactivex/internal/operators/flowable/FlowableTimeoutTimed$TimeoutTimedSubscriber;

    iget-object v0, v0, Lio/reactivex/internal/operators/flowable/FlowableTimeoutTimed$TimeoutTimedSubscriber;->actual:Lorg/reactivestreams/Subscriber;

    new-instance v1, Ljava/util/concurrent/TimeoutException;

    invoke-direct {v1}, Ljava/util/concurrent/TimeoutException;-><init>()V

    invoke-interface {v0, v1}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method
