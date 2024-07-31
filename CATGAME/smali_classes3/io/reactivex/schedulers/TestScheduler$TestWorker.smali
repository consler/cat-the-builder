.class final Lio/reactivex/schedulers/TestScheduler$TestWorker;
.super Lio/reactivex/Scheduler$Worker;
.source "TestScheduler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/schedulers/TestScheduler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "TestWorker"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/schedulers/TestScheduler$TestWorker$QueueRemove;
    }
.end annotation


# instance fields
.field volatile disposed:Z

.field final synthetic this$0:Lio/reactivex/schedulers/TestScheduler;


# direct methods
.method constructor <init>(Lio/reactivex/schedulers/TestScheduler;)V
    .locals 0

    .line 128
    iput-object p1, p0, Lio/reactivex/schedulers/TestScheduler$TestWorker;->this$0:Lio/reactivex/schedulers/TestScheduler;

    invoke-direct {p0}, Lio/reactivex/Scheduler$Worker;-><init>()V

    .line 170
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 1

    .line 134
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/schedulers/TestScheduler$TestWorker;->disposed:Z

    .line 135
    return-void
.end method

.method public isDisposed()Z
    .locals 1

    .line 139
    iget-boolean v0, p0, Lio/reactivex/schedulers/TestScheduler$TestWorker;->disposed:Z

    return v0
.end method

.method public now(Ljava/util/concurrent/TimeUnit;)J
    .locals 2
    .param p1, "unit"    # Ljava/util/concurrent/TimeUnit;

    .line 167
    iget-object v0, p0, Lio/reactivex/schedulers/TestScheduler$TestWorker;->this$0:Lio/reactivex/schedulers/TestScheduler;

    invoke-virtual {v0, p1}, Lio/reactivex/schedulers/TestScheduler;->now(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    return-wide v0
.end method

.method public schedule(Ljava/lang/Runnable;)Lio/reactivex/disposables/Disposable;
    .locals 10
    .param p1, "run"    # Ljava/lang/Runnable;

    .line 157
    iget-boolean v0, p0, Lio/reactivex/schedulers/TestScheduler$TestWorker;->disposed:Z

    if-eqz v0, :cond_0

    .line 158
    sget-object v0, Lio/reactivex/internal/disposables/EmptyDisposable;->INSTANCE:Lio/reactivex/internal/disposables/EmptyDisposable;

    return-object v0

    .line 160
    :cond_0
    new-instance v0, Lio/reactivex/schedulers/TestScheduler$TimedRunnable;

    const-wide/16 v3, 0x0

    iget-object v1, p0, Lio/reactivex/schedulers/TestScheduler$TestWorker;->this$0:Lio/reactivex/schedulers/TestScheduler;

    iget-wide v6, v1, Lio/reactivex/schedulers/TestScheduler;->counter:J

    const-wide/16 v8, 0x1

    add-long/2addr v8, v6

    iput-wide v8, v1, Lio/reactivex/schedulers/TestScheduler;->counter:J

    move-object v1, v0

    move-object v2, p0

    move-object v5, p1

    invoke-direct/range {v1 .. v7}, Lio/reactivex/schedulers/TestScheduler$TimedRunnable;-><init>(Lio/reactivex/schedulers/TestScheduler$TestWorker;JLjava/lang/Runnable;J)V

    .line 161
    .local v0, "timedAction":Lio/reactivex/schedulers/TestScheduler$TimedRunnable;
    iget-object v1, p0, Lio/reactivex/schedulers/TestScheduler$TestWorker;->this$0:Lio/reactivex/schedulers/TestScheduler;

    iget-object v1, v1, Lio/reactivex/schedulers/TestScheduler;->queue:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 162
    new-instance v1, Lio/reactivex/schedulers/TestScheduler$TestWorker$QueueRemove;

    invoke-direct {v1, p0, v0}, Lio/reactivex/schedulers/TestScheduler$TestWorker$QueueRemove;-><init>(Lio/reactivex/schedulers/TestScheduler$TestWorker;Lio/reactivex/schedulers/TestScheduler$TimedRunnable;)V

    invoke-static {v1}, Lio/reactivex/disposables/Disposables;->fromRunnable(Ljava/lang/Runnable;)Lio/reactivex/disposables/Disposable;

    move-result-object v1

    return-object v1
.end method

.method public schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lio/reactivex/disposables/Disposable;
    .locals 10
    .param p1, "run"    # Ljava/lang/Runnable;
    .param p2, "delayTime"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;

    .line 145
    iget-boolean v0, p0, Lio/reactivex/schedulers/TestScheduler$TestWorker;->disposed:Z

    if-eqz v0, :cond_0

    .line 146
    sget-object v0, Lio/reactivex/internal/disposables/EmptyDisposable;->INSTANCE:Lio/reactivex/internal/disposables/EmptyDisposable;

    return-object v0

    .line 148
    :cond_0
    new-instance v0, Lio/reactivex/schedulers/TestScheduler$TimedRunnable;

    iget-object v1, p0, Lio/reactivex/schedulers/TestScheduler$TestWorker;->this$0:Lio/reactivex/schedulers/TestScheduler;

    iget-wide v1, v1, Lio/reactivex/schedulers/TestScheduler;->time:J

    invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v3

    add-long/2addr v3, v1

    iget-object v1, p0, Lio/reactivex/schedulers/TestScheduler$TestWorker;->this$0:Lio/reactivex/schedulers/TestScheduler;

    iget-wide v6, v1, Lio/reactivex/schedulers/TestScheduler;->counter:J

    const-wide/16 v8, 0x1

    add-long/2addr v8, v6

    iput-wide v8, v1, Lio/reactivex/schedulers/TestScheduler;->counter:J

    move-object v1, v0

    move-object v2, p0

    move-object v5, p1

    invoke-direct/range {v1 .. v7}, Lio/reactivex/schedulers/TestScheduler$TimedRunnable;-><init>(Lio/reactivex/schedulers/TestScheduler$TestWorker;JLjava/lang/Runnable;J)V

    .line 149
    .local v0, "timedAction":Lio/reactivex/schedulers/TestScheduler$TimedRunnable;
    iget-object v1, p0, Lio/reactivex/schedulers/TestScheduler$TestWorker;->this$0:Lio/reactivex/schedulers/TestScheduler;

    iget-object v1, v1, Lio/reactivex/schedulers/TestScheduler;->queue:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 151
    new-instance v1, Lio/reactivex/schedulers/TestScheduler$TestWorker$QueueRemove;

    invoke-direct {v1, p0, v0}, Lio/reactivex/schedulers/TestScheduler$TestWorker$QueueRemove;-><init>(Lio/reactivex/schedulers/TestScheduler$TestWorker;Lio/reactivex/schedulers/TestScheduler$TimedRunnable;)V

    invoke-static {v1}, Lio/reactivex/disposables/Disposables;->fromRunnable(Ljava/lang/Runnable;)Lio/reactivex/disposables/Disposable;

    move-result-object v1

    return-object v1
.end method
