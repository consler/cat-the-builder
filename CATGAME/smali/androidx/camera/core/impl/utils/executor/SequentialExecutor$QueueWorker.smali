.class final Landroidx/camera/core/impl/utils/executor/SequentialExecutor$QueueWorker;
.super Ljava/lang/Object;
.source "SequentialExecutor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/core/impl/utils/executor/SequentialExecutor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "QueueWorker"
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/camera/core/impl/utils/executor/SequentialExecutor;


# direct methods
.method constructor <init>(Landroidx/camera/core/impl/utils/executor/SequentialExecutor;)V
    .locals 0
    .param p1, "this$0"    # Landroidx/camera/core/impl/utils/executor/SequentialExecutor;

    .line 168
    iput-object p1, p0, Landroidx/camera/core/impl/utils/executor/SequentialExecutor$QueueWorker;->this$0:Landroidx/camera/core/impl/utils/executor/SequentialExecutor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private workOnQueue()V
    .locals 8

    .line 198
    const/4 v0, 0x0

    .line 199
    .local v0, "interruptedDuringTask":Z
    const/4 v1, 0x0

    .line 203
    .local v1, "hasSetRunning":Z
    :goto_0
    :try_start_0
    iget-object v2, p0, Landroidx/camera/core/impl/utils/executor/SequentialExecutor$QueueWorker;->this$0:Landroidx/camera/core/impl/utils/executor/SequentialExecutor;

    iget-object v2, v2, Landroidx/camera/core/impl/utils/executor/SequentialExecutor;->mQueue:Ljava/util/Deque;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 206
    if-nez v1, :cond_2

    .line 207
    :try_start_1
    iget-object v3, p0, Landroidx/camera/core/impl/utils/executor/SequentialExecutor$QueueWorker;->this$0:Landroidx/camera/core/impl/utils/executor/SequentialExecutor;

    iget-object v3, v3, Landroidx/camera/core/impl/utils/executor/SequentialExecutor;->mWorkerRunningState:Landroidx/camera/core/impl/utils/executor/SequentialExecutor$WorkerRunningState;

    sget-object v4, Landroidx/camera/core/impl/utils/executor/SequentialExecutor$WorkerRunningState;->RUNNING:Landroidx/camera/core/impl/utils/executor/SequentialExecutor$WorkerRunningState;

    if-ne v3, v4, :cond_1

    .line 209
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 239
    if-eqz v0, :cond_0

    .line 240
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    .line 209
    :cond_0
    return-void

    .line 214
    :cond_1
    :try_start_2
    iget-object v3, p0, Landroidx/camera/core/impl/utils/executor/SequentialExecutor$QueueWorker;->this$0:Landroidx/camera/core/impl/utils/executor/SequentialExecutor;

    iget-wide v4, v3, Landroidx/camera/core/impl/utils/executor/SequentialExecutor;->mWorkerRunCount:J

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    iput-wide v4, v3, Landroidx/camera/core/impl/utils/executor/SequentialExecutor;->mWorkerRunCount:J

    .line 215
    iget-object v3, p0, Landroidx/camera/core/impl/utils/executor/SequentialExecutor$QueueWorker;->this$0:Landroidx/camera/core/impl/utils/executor/SequentialExecutor;

    sget-object v4, Landroidx/camera/core/impl/utils/executor/SequentialExecutor$WorkerRunningState;->RUNNING:Landroidx/camera/core/impl/utils/executor/SequentialExecutor$WorkerRunningState;

    iput-object v4, v3, Landroidx/camera/core/impl/utils/executor/SequentialExecutor;->mWorkerRunningState:Landroidx/camera/core/impl/utils/executor/SequentialExecutor$WorkerRunningState;

    .line 216
    const/4 v1, 0x1

    .line 219
    :cond_2
    iget-object v3, p0, Landroidx/camera/core/impl/utils/executor/SequentialExecutor$QueueWorker;->this$0:Landroidx/camera/core/impl/utils/executor/SequentialExecutor;

    iget-object v3, v3, Landroidx/camera/core/impl/utils/executor/SequentialExecutor;->mQueue:Ljava/util/Deque;

    invoke-interface {v3}, Ljava/util/Deque;->poll()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Runnable;

    .line 220
    .local v3, "task":Ljava/lang/Runnable;
    if-nez v3, :cond_4

    .line 221
    iget-object v4, p0, Landroidx/camera/core/impl/utils/executor/SequentialExecutor$QueueWorker;->this$0:Landroidx/camera/core/impl/utils/executor/SequentialExecutor;

    sget-object v5, Landroidx/camera/core/impl/utils/executor/SequentialExecutor$WorkerRunningState;->IDLE:Landroidx/camera/core/impl/utils/executor/SequentialExecutor$WorkerRunningState;

    iput-object v5, v4, Landroidx/camera/core/impl/utils/executor/SequentialExecutor;->mWorkerRunningState:Landroidx/camera/core/impl/utils/executor/SequentialExecutor$WorkerRunningState;

    .line 222
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 239
    if-eqz v0, :cond_3

    .line 240
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    .line 222
    :cond_3
    return-void

    .line 224
    :cond_4
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 228
    :try_start_4
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    or-int/2addr v0, v2

    .line 230
    :try_start_5
    invoke-interface {v3}, Ljava/lang/Runnable;->run()V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 233
    goto :goto_1

    .line 231
    :catch_0
    move-exception v2

    .line 232
    .local v2, "e":Ljava/lang/RuntimeException;
    :try_start_6
    const-string v4, "SequentialExecutor"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception while executing runnable "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 234
    .end local v2    # "e":Ljava/lang/RuntimeException;
    .end local v3    # "task":Ljava/lang/Runnable;
    :goto_1
    goto :goto_0

    .line 224
    :catchall_0
    move-exception v3

    :try_start_7
    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .end local v0    # "interruptedDuringTask":Z
    .end local v1    # "hasSetRunning":Z
    :try_start_8
    throw v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 239
    .restart local v0    # "interruptedDuringTask":Z
    .restart local v1    # "hasSetRunning":Z
    :catchall_1
    move-exception v2

    if-eqz v0, :cond_5

    .line 240
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->interrupt()V

    .line 242
    :cond_5
    throw v2
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 172
    :try_start_0
    invoke-direct {p0}, Landroidx/camera/core/impl/utils/executor/SequentialExecutor$QueueWorker;->workOnQueue()V
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    .line 182
    nop

    .line 183
    return-void

    .line 173
    :catch_0
    move-exception v0

    .line 174
    .local v0, "e":Ljava/lang/Error;
    iget-object v1, p0, Landroidx/camera/core/impl/utils/executor/SequentialExecutor$QueueWorker;->this$0:Landroidx/camera/core/impl/utils/executor/SequentialExecutor;

    iget-object v1, v1, Landroidx/camera/core/impl/utils/executor/SequentialExecutor;->mQueue:Ljava/util/Deque;

    monitor-enter v1

    .line 175
    :try_start_1
    iget-object v2, p0, Landroidx/camera/core/impl/utils/executor/SequentialExecutor$QueueWorker;->this$0:Landroidx/camera/core/impl/utils/executor/SequentialExecutor;

    sget-object v3, Landroidx/camera/core/impl/utils/executor/SequentialExecutor$WorkerRunningState;->IDLE:Landroidx/camera/core/impl/utils/executor/SequentialExecutor$WorkerRunningState;

    iput-object v3, v2, Landroidx/camera/core/impl/utils/executor/SequentialExecutor;->mWorkerRunningState:Landroidx/camera/core/impl/utils/executor/SequentialExecutor$WorkerRunningState;

    .line 176
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 177
    throw v0

    .line 176
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method
