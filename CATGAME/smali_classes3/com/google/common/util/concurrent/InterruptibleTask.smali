.class abstract Lcom/google/common/util/concurrent/InterruptibleTask;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "InterruptibleTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/util/concurrent/InterruptibleTask$DoNothingRunnable;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "Ljava/lang/Runnable;",
        ">;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# static fields
.field private static final DONE:Ljava/lang/Runnable;

.field private static final INTERRUPTING:Ljava/lang/Runnable;

.field private static final MAX_BUSY_WAIT_SPINS:I = 0x3e8

.field private static final PARKED:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 35
    const-class v0, Ljava/util/concurrent/locks/LockSupport;

    .line 44
    new-instance v0, Lcom/google/common/util/concurrent/InterruptibleTask$DoNothingRunnable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/common/util/concurrent/InterruptibleTask$DoNothingRunnable;-><init>(Lcom/google/common/util/concurrent/InterruptibleTask$1;)V

    sput-object v0, Lcom/google/common/util/concurrent/InterruptibleTask;->DONE:Ljava/lang/Runnable;

    .line 45
    new-instance v0, Lcom/google/common/util/concurrent/InterruptibleTask$DoNothingRunnable;

    invoke-direct {v0, v1}, Lcom/google/common/util/concurrent/InterruptibleTask$DoNothingRunnable;-><init>(Lcom/google/common/util/concurrent/InterruptibleTask$1;)V

    sput-object v0, Lcom/google/common/util/concurrent/InterruptibleTask;->INTERRUPTING:Ljava/lang/Runnable;

    .line 46
    new-instance v0, Lcom/google/common/util/concurrent/InterruptibleTask$DoNothingRunnable;

    invoke-direct {v0, v1}, Lcom/google/common/util/concurrent/InterruptibleTask$DoNothingRunnable;-><init>(Lcom/google/common/util/concurrent/InterruptibleTask$1;)V

    sput-object v0, Lcom/google/common/util/concurrent/InterruptibleTask;->PARKED:Ljava/lang/Runnable;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 30
    .local p0, "this":Lcom/google/common/util/concurrent/InterruptibleTask;, "Lcom/google/common/util/concurrent/InterruptibleTask<TT;>;"
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    return-void
.end method


# virtual methods
.method abstract afterRanInterruptibly(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Throwable;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation
.end method

.method final interruptTask()V
    .locals 4

    .line 164
    .local p0, "this":Lcom/google/common/util/concurrent/InterruptibleTask;, "Lcom/google/common/util/concurrent/InterruptibleTask<TT;>;"
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/InterruptibleTask;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 165
    .local v0, "currentRunner":Ljava/lang/Runnable;
    instance-of v1, v0, Ljava/lang/Thread;

    if-eqz v1, :cond_2

    sget-object v1, Lcom/google/common/util/concurrent/InterruptibleTask;->INTERRUPTING:Ljava/lang/Runnable;

    invoke-virtual {p0, v0, v1}, Lcom/google/common/util/concurrent/InterruptibleTask;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 171
    :try_start_0
    move-object v1, v0

    check-cast v1, Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 173
    sget-object v1, Lcom/google/common/util/concurrent/InterruptibleTask;->DONE:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Lcom/google/common/util/concurrent/InterruptibleTask;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    .line 174
    .local v1, "prev":Ljava/lang/Runnable;
    sget-object v2, Lcom/google/common/util/concurrent/InterruptibleTask;->PARKED:Ljava/lang/Runnable;

    if-ne v1, v2, :cond_0

    .line 175
    move-object v2, v0

    check-cast v2, Ljava/lang/Thread;

    invoke-static {v2}, Ljava/util/concurrent/locks/LockSupport;->unpark(Ljava/lang/Thread;)V

    .line 177
    .end local v1    # "prev":Ljava/lang/Runnable;
    :cond_0
    goto :goto_0

    .line 173
    :catchall_0
    move-exception v1

    sget-object v2, Lcom/google/common/util/concurrent/InterruptibleTask;->DONE:Ljava/lang/Runnable;

    invoke-virtual {p0, v2}, Lcom/google/common/util/concurrent/InterruptibleTask;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Runnable;

    .line 174
    .local v2, "prev":Ljava/lang/Runnable;
    sget-object v3, Lcom/google/common/util/concurrent/InterruptibleTask;->PARKED:Ljava/lang/Runnable;

    if-ne v2, v3, :cond_1

    .line 175
    move-object v3, v0

    check-cast v3, Ljava/lang/Thread;

    invoke-static {v3}, Ljava/util/concurrent/locks/LockSupport;->unpark(Ljava/lang/Thread;)V

    .line 177
    .end local v2    # "prev":Ljava/lang/Runnable;
    :cond_1
    throw v1

    .line 179
    :cond_2
    :goto_0
    return-void
.end method

.method abstract isDone()Z
.end method

.method public final run()V
    .locals 12

    .line 59
    .local p0, "this":Lcom/google/common/util/concurrent/InterruptibleTask;, "Lcom/google/common/util/concurrent/InterruptibleTask<TT;>;"
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .line 60
    .local v0, "currentThread":Ljava/lang/Thread;
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/google/common/util/concurrent/InterruptibleTask;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 61
    return-void

    .line 64
    :cond_0
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/InterruptibleTask;->isDone()Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    .line 65
    .local v1, "run":Z
    const/4 v3, 0x0

    .line 66
    .local v3, "result":Ljava/lang/Object;, "TT;"
    const/4 v4, 0x0

    .line 68
    .local v4, "error":Ljava/lang/Throwable;
    const/4 v5, 0x0

    const/16 v6, 0x3e8

    if-eqz v1, :cond_9

    .line 69
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/InterruptibleTask;->runInterruptibly()Ljava/lang/Object;

    move-result-object v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v3, v7

    goto :goto_7

    .line 71
    :catchall_0
    move-exception v7

    .line 72
    .local v7, "t":Ljava/lang/Throwable;
    move-object v4, v7

    .line 75
    .end local v7    # "t":Ljava/lang/Throwable;
    sget-object v7, Lcom/google/common/util/concurrent/InterruptibleTask;->DONE:Ljava/lang/Runnable;

    invoke-virtual {p0, v0, v7}, Lcom/google/common/util/concurrent/InterruptibleTask;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_8

    .line 82
    const/4 v7, 0x0

    .line 83
    .local v7, "restoreInterruptedBit":Z
    const/4 v8, 0x0

    .line 93
    .local v8, "spinCount":I
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/InterruptibleTask;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Runnable;

    .line 94
    .local v9, "state":Ljava/lang/Runnable;
    :goto_0
    sget-object v10, Lcom/google/common/util/concurrent/InterruptibleTask;->INTERRUPTING:Ljava/lang/Runnable;

    if-eq v9, v10, :cond_2

    sget-object v10, Lcom/google/common/util/concurrent/InterruptibleTask;->PARKED:Ljava/lang/Runnable;

    if-ne v9, v10, :cond_1

    goto :goto_1

    .line 123
    :cond_1
    if-eqz v7, :cond_8

    .line 124
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_5

    .line 95
    :cond_2
    :goto_1
    add-int/lit8 v8, v8, 0x1

    .line 96
    if-le v8, v6, :cond_6

    .line 103
    sget-object v10, Lcom/google/common/util/concurrent/InterruptibleTask;->PARKED:Ljava/lang/Runnable;

    if-eq v9, v10, :cond_3

    sget-object v11, Lcom/google/common/util/concurrent/InterruptibleTask;->INTERRUPTING:Ljava/lang/Runnable;

    invoke-virtual {p0, v11, v10}, Lcom/google/common/util/concurrent/InterruptibleTask;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 115
    :cond_3
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v10

    if-nez v10, :cond_5

    if-eqz v7, :cond_4

    goto :goto_2

    :cond_4
    move v10, v5

    goto :goto_3

    :cond_5
    :goto_2
    move v10, v2

    :goto_3
    move v7, v10

    .line 116
    invoke-static {p0}, Ljava/util/concurrent/locks/LockSupport;->park(Ljava/lang/Object;)V

    goto :goto_4

    .line 119
    :cond_6
    invoke-static {}, Ljava/lang/Thread;->yield()V

    .line 121
    :cond_7
    :goto_4
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/InterruptibleTask;->get()Ljava/lang/Object;

    move-result-object v10

    move-object v9, v10

    check-cast v9, Ljava/lang/Runnable;

    goto :goto_0

    .line 132
    .end local v7    # "restoreInterruptedBit":Z
    .end local v8    # "spinCount":I
    .end local v9    # "state":Ljava/lang/Runnable;
    :cond_8
    :goto_5
    if-eqz v1, :cond_12

    .line 133
    :goto_6
    invoke-virtual {p0, v3, v4}, Lcom/google/common/util/concurrent/InterruptibleTask;->afterRanInterruptibly(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_e

    .line 75
    :cond_9
    :goto_7
    sget-object v7, Lcom/google/common/util/concurrent/InterruptibleTask;->DONE:Ljava/lang/Runnable;

    invoke-virtual {p0, v0, v7}, Lcom/google/common/util/concurrent/InterruptibleTask;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_11

    .line 82
    const/4 v7, 0x0

    .line 83
    .restart local v7    # "restoreInterruptedBit":Z
    const/4 v8, 0x0

    .line 93
    .restart local v8    # "spinCount":I
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/InterruptibleTask;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Runnable;

    .line 94
    .restart local v9    # "state":Ljava/lang/Runnable;
    :goto_8
    sget-object v10, Lcom/google/common/util/concurrent/InterruptibleTask;->INTERRUPTING:Ljava/lang/Runnable;

    if-eq v9, v10, :cond_b

    sget-object v10, Lcom/google/common/util/concurrent/InterruptibleTask;->PARKED:Ljava/lang/Runnable;

    if-ne v9, v10, :cond_a

    goto :goto_9

    .line 123
    :cond_a
    if-eqz v7, :cond_11

    .line 124
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_d

    .line 95
    :cond_b
    :goto_9
    add-int/lit8 v8, v8, 0x1

    .line 96
    if-le v8, v6, :cond_f

    .line 103
    sget-object v10, Lcom/google/common/util/concurrent/InterruptibleTask;->PARKED:Ljava/lang/Runnable;

    if-eq v9, v10, :cond_c

    sget-object v11, Lcom/google/common/util/concurrent/InterruptibleTask;->INTERRUPTING:Ljava/lang/Runnable;

    invoke-virtual {p0, v11, v10}, Lcom/google/common/util/concurrent/InterruptibleTask;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_10

    .line 115
    :cond_c
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v10

    if-nez v10, :cond_e

    if-eqz v7, :cond_d

    goto :goto_a

    :cond_d
    move v10, v5

    goto :goto_b

    :cond_e
    :goto_a
    move v10, v2

    :goto_b
    move v7, v10

    .line 116
    invoke-static {p0}, Ljava/util/concurrent/locks/LockSupport;->park(Ljava/lang/Object;)V

    goto :goto_c

    .line 119
    :cond_f
    invoke-static {}, Ljava/lang/Thread;->yield()V

    .line 121
    :cond_10
    :goto_c
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/InterruptibleTask;->get()Ljava/lang/Object;

    move-result-object v10

    move-object v9, v10

    check-cast v9, Ljava/lang/Runnable;

    goto :goto_8

    .line 132
    .end local v7    # "restoreInterruptedBit":Z
    .end local v8    # "spinCount":I
    .end local v9    # "state":Ljava/lang/Runnable;
    :cond_11
    :goto_d
    if-eqz v1, :cond_12

    .line 133
    goto :goto_6

    .line 136
    :cond_12
    :goto_e
    return-void
.end method

.method abstract runInterruptibly()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method abstract toPendingString()Ljava/lang/String;
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .line 183
    .local p0, "this":Lcom/google/common/util/concurrent/InterruptibleTask;, "Lcom/google/common/util/concurrent/InterruptibleTask<TT;>;"
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/InterruptibleTask;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 185
    .local v0, "state":Ljava/lang/Runnable;
    sget-object v1, Lcom/google/common/util/concurrent/InterruptibleTask;->DONE:Ljava/lang/Runnable;

    if-ne v0, v1, :cond_0

    .line 186
    const-string v1, "running=[DONE]"

    .local v1, "result":Ljava/lang/String;
    goto :goto_0

    .line 187
    .end local v1    # "result":Ljava/lang/String;
    :cond_0
    sget-object v1, Lcom/google/common/util/concurrent/InterruptibleTask;->INTERRUPTING:Ljava/lang/Runnable;

    if-ne v0, v1, :cond_1

    .line 188
    const-string v1, "running=[INTERRUPTED]"

    .restart local v1    # "result":Ljava/lang/String;
    goto :goto_0

    .line 189
    .end local v1    # "result":Ljava/lang/String;
    :cond_1
    instance-of v1, v0, Ljava/lang/Thread;

    if-eqz v1, :cond_2

    .line 191
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "running=[RUNNING ON "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v2, v0

    check-cast v2, Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "result":Ljava/lang/String;
    goto :goto_0

    .line 193
    .end local v1    # "result":Ljava/lang/String;
    :cond_2
    const-string v1, "running=[NOT STARTED YET]"

    .line 195
    .restart local v1    # "result":Ljava/lang/String;
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/common/util/concurrent/InterruptibleTask;->toPendingString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
