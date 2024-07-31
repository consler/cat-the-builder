.class public abstract Lkotlinx/coroutines/EventLoopImplBase$DelayedTask;
.super Ljava/lang/Object;
.source "EventLoop.common.kt"

# interfaces
.implements Ljava/lang/Runnable;
.implements Ljava/lang/Comparable;
.implements Lkotlinx/coroutines/DisposableHandle;
.implements Lkotlinx/coroutines/internal/ThreadSafeHeapNode;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlinx/coroutines/EventLoopImplBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "DelayedTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Runnable;",
        "Ljava/lang/Comparable<",
        "Lkotlinx/coroutines/EventLoopImplBase$DelayedTask;",
        ">;",
        "Lkotlinx/coroutines/DisposableHandle;",
        "Lkotlinx/coroutines/internal/ThreadSafeHeapNode;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nEventLoop.common.kt\nKotlin\n*S Kotlin\n*F\n+ 1 EventLoop.common.kt\nkotlinx/coroutines/EventLoopImplBase$DelayedTask\n+ 2 ThreadSafeHeap.kt\nkotlinx/coroutines/internal/ThreadSafeHeap\n+ 3 Synchronized.kt\nkotlinx/coroutines/internal/SynchronizedKt\n*L\n1#1,529:1\n64#2:530\n65#2,7:532\n20#3:531\n*E\n*S KotlinDebug\n*F\n+ 1 EventLoop.common.kt\nkotlinx/coroutines/EventLoopImplBase$DelayedTask\n*L\n433#1:530\n433#1,7:532\n433#1:531\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000X\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0008\n\u0002\u0008\u0007\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008 \u0018\u00002\u00060\u0001j\u0002`\u00022\u0008\u0012\u0004\u0012\u00020\u00000\u00032\u00020\u00042\u00020\u0005B\r\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008J\u0011\u0010\u0018\u001a\u00020\u00132\u0006\u0010\u0019\u001a\u00020\u0000H\u0096\u0002J\u0006\u0010\u001a\u001a\u00020\u001bJ\u001e\u0010\u001c\u001a\u00020\u00132\u0006\u0010\u001d\u001a\u00020\u00072\u0006\u0010\u001e\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020!J\u000e\u0010\"\u001a\u00020#2\u0006\u0010\u001d\u001a\u00020\u0007J\u0008\u0010$\u001a\u00020%H\u0016R\u0010\u0010\t\u001a\u0004\u0018\u00010\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R0\u0010\r\u001a\u0008\u0012\u0002\u0008\u0003\u0018\u00010\u000c2\u000c\u0010\u000b\u001a\u0008\u0012\u0002\u0008\u0003\u0018\u00010\u000c8V@VX\u0096\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u000e\u0010\u000f\"\u0004\u0008\u0010\u0010\u0011R\u001a\u0010\u0012\u001a\u00020\u0013X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015\"\u0004\u0008\u0016\u0010\u0017R\u0012\u0010\u0006\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006&"
    }
    d2 = {
        "Lkotlinx/coroutines/EventLoopImplBase$DelayedTask;",
        "Ljava/lang/Runnable;",
        "Lkotlinx/coroutines/Runnable;",
        "",
        "Lkotlinx/coroutines/DisposableHandle;",
        "Lkotlinx/coroutines/internal/ThreadSafeHeapNode;",
        "nanoTime",
        "",
        "(J)V",
        "_heap",
        "",
        "value",
        "Lkotlinx/coroutines/internal/ThreadSafeHeap;",
        "heap",
        "getHeap",
        "()Lkotlinx/coroutines/internal/ThreadSafeHeap;",
        "setHeap",
        "(Lkotlinx/coroutines/internal/ThreadSafeHeap;)V",
        "index",
        "",
        "getIndex",
        "()I",
        "setIndex",
        "(I)V",
        "compareTo",
        "other",
        "dispose",
        "",
        "scheduleTask",
        "now",
        "delayed",
        "Lkotlinx/coroutines/EventLoopImplBase$DelayedTaskQueue;",
        "eventLoop",
        "Lkotlinx/coroutines/EventLoopImplBase;",
        "timeToExecute",
        "",
        "toString",
        "",
        "kotlinx-coroutines-core"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x0
    }
.end annotation


# instance fields
.field private _heap:Ljava/lang/Object;

.field private index:I

.field public nanoTime:J


# direct methods
.method public constructor <init>(J)V
    .locals 1
    .param p1, "nanoTime"    # J

    .line 401
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lkotlinx/coroutines/EventLoopImplBase$DelayedTask;->nanoTime:J

    .line 417
    const/4 v0, -0x1

    iput v0, p0, Lkotlinx/coroutines/EventLoopImplBase$DelayedTask;->index:I

    return-void
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 401
    check-cast p1, Lkotlinx/coroutines/EventLoopImplBase$DelayedTask;

    invoke-virtual {p0, p1}, Lkotlinx/coroutines/EventLoopImplBase$DelayedTask;->compareTo(Lkotlinx/coroutines/EventLoopImplBase$DelayedTask;)I

    move-result p1

    return p1
.end method

.method public compareTo(Lkotlinx/coroutines/EventLoopImplBase$DelayedTask;)I
    .locals 5
    .param p1, "other"    # Lkotlinx/coroutines/EventLoopImplBase$DelayedTask;

    .line 420
    iget-wide v0, p0, Lkotlinx/coroutines/EventLoopImplBase$DelayedTask;->nanoTime:J

    iget-wide v2, p1, Lkotlinx/coroutines/EventLoopImplBase$DelayedTask;->nanoTime:J

    sub-long/2addr v0, v2

    .line 421
    .local v0, "dTime":J
    nop

    .line 422
    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    .line 423
    :cond_0
    cmp-long v2, v0, v2

    if-gez v2, :cond_1

    const/4 v2, -0x1

    goto :goto_0

    .line 424
    :cond_1
    const/4 v2, 0x0

    .line 421
    :goto_0
    return v2
.end method

.method public final declared-synchronized dispose()V
    .locals 3

    monitor-enter p0

    .line 475
    :try_start_0
    iget-object v0, p0, Lkotlinx/coroutines/EventLoopImplBase$DelayedTask;->_heap:Ljava/lang/Object;

    .line 476
    .local v0, "heap":Ljava/lang/Object;
    invoke-static {}, Lkotlinx/coroutines/EventLoop_commonKt;->access$getDISPOSED_TASK$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v1, :cond_0

    monitor-exit p0

    return-void

    .line 477
    :cond_0
    nop

    .line 478
    :try_start_1
    instance-of v1, v0, Lkotlinx/coroutines/EventLoopImplBase$DelayedTaskQueue;

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    move-object v1, v0

    :goto_0
    check-cast v1, Lkotlinx/coroutines/EventLoopImplBase$DelayedTaskQueue;

    if-eqz v1, :cond_2

    move-object v2, p0

    check-cast v2, Lkotlinx/coroutines/internal/ThreadSafeHeapNode;

    invoke-virtual {v1, v2}, Lkotlinx/coroutines/EventLoopImplBase$DelayedTaskQueue;->remove(Lkotlinx/coroutines/internal/ThreadSafeHeapNode;)Z

    .line 479
    .end local p0    # "this":Lkotlinx/coroutines/EventLoopImplBase$DelayedTask;
    :cond_2
    invoke-static {}, Lkotlinx/coroutines/EventLoop_commonKt;->access$getDISPOSED_TASK$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v1

    iput-object v1, p0, Lkotlinx/coroutines/EventLoopImplBase$DelayedTask;->_heap:Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 480
    monitor-exit p0

    return-void

    .line 474
    .end local v0    # "heap":Ljava/lang/Object;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getHeap()Lkotlinx/coroutines/internal/ThreadSafeHeap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/internal/ThreadSafeHeap<",
            "*>;"
        }
    .end annotation

    .line 411
    iget-object v0, p0, Lkotlinx/coroutines/EventLoopImplBase$DelayedTask;->_heap:Ljava/lang/Object;

    instance-of v1, v0, Lkotlinx/coroutines/internal/ThreadSafeHeap;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    check-cast v0, Lkotlinx/coroutines/internal/ThreadSafeHeap;

    return-object v0
.end method

.method public getIndex()I
    .locals 1

    .line 417
    iget v0, p0, Lkotlinx/coroutines/EventLoopImplBase$DelayedTask;->index:I

    return v0
.end method

.method public final declared-synchronized scheduleTask(JLkotlinx/coroutines/EventLoopImplBase$DelayedTaskQueue;Lkotlinx/coroutines/EventLoopImplBase;)I
    .locals 20
    .param p1, "now"    # J
    .param p3, "delayed"    # Lkotlinx/coroutines/EventLoopImplBase$DelayedTaskQueue;
    .param p4, "eventLoop"    # Lkotlinx/coroutines/EventLoopImplBase;

    move-object/from16 v1, p0

    move-wide/from16 v2, p1

    move-object/from16 v4, p3

    monitor-enter p0

    .line 432
    :try_start_0
    iget-object v0, v1, Lkotlinx/coroutines/EventLoopImplBase$DelayedTask;->_heap:Ljava/lang/Object;

    invoke-static {}, Lkotlinx/coroutines/EventLoop_commonKt;->access$getDISPOSED_TASK$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-ne v0, v5, :cond_0

    const/4 v0, 0x2

    monitor-exit p0

    return v0

    .line 433
    :cond_0
    :try_start_1
    move-object v0, v4

    check-cast v0, Lkotlinx/coroutines/internal/ThreadSafeHeap;

    move-object v5, v1

    check-cast v5, Lkotlinx/coroutines/internal/ThreadSafeHeapNode;

    .local v5, "node$iv":Lkotlinx/coroutines/internal/ThreadSafeHeapNode;
    move-object v6, v0

    .local v6, "this_$iv":Lkotlinx/coroutines/internal/ThreadSafeHeap;
    const/4 v7, 0x0

    .line 530
    .local v7, "$i$f$addLastIf":I
    move-object v8, v6

    .local v8, "lock$iv$iv":Ljava/lang/Object;
    const/4 v9, 0x0

    .line 531
    .local v9, "$i$f$synchronized":I
    monitor-enter v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v0, 0x0

    .line 532
    .local v0, "$i$a$-synchronized-ThreadSafeHeap$addLastIf$1$iv":I
    :try_start_2
    invoke-virtual {v6}, Lkotlinx/coroutines/internal/ThreadSafeHeap;->firstImpl()Lkotlinx/coroutines/internal/ThreadSafeHeapNode;

    move-result-object v10

    check-cast v10, Lkotlinx/coroutines/EventLoopImplBase$DelayedTask;

    .local v10, "firstTask":Lkotlinx/coroutines/EventLoopImplBase$DelayedTask;
    const/4 v11, 0x0

    .line 434
    .local v11, "$i$a$-addLastIf-EventLoopImplBase$DelayedTask$scheduleTask$1":I
    invoke-static/range {p4 .. p4}, Lkotlinx/coroutines/EventLoopImplBase;->access$isCompleted$p(Lkotlinx/coroutines/EventLoopImplBase;)Z

    move-result v12
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v12, :cond_1

    const/4 v0, 0x1

    .end local v0    # "$i$a$-synchronized-ThreadSafeHeap$addLastIf$1$iv":I
    .end local v5    # "node$iv":Lkotlinx/coroutines/internal/ThreadSafeHeapNode;
    .end local v6    # "this_$iv":Lkotlinx/coroutines/internal/ThreadSafeHeap;
    .end local v7    # "$i$f$addLastIf":I
    .end local v8    # "lock$iv$iv":Ljava/lang/Object;
    .end local v9    # "$i$f$synchronized":I
    .end local v10    # "firstTask":Lkotlinx/coroutines/EventLoopImplBase$DelayedTask;
    .end local v11    # "$i$a$-addLastIf-EventLoopImplBase$DelayedTask$scheduleTask$1":I
    :try_start_3
    monitor-exit v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    monitor-exit p0

    return v0

    .line 440
    .end local p0    # "this":Lkotlinx/coroutines/EventLoopImplBase$DelayedTask;
    .restart local v0    # "$i$a$-synchronized-ThreadSafeHeap$addLastIf$1$iv":I
    .restart local v5    # "node$iv":Lkotlinx/coroutines/internal/ThreadSafeHeapNode;
    .restart local v6    # "this_$iv":Lkotlinx/coroutines/internal/ThreadSafeHeap;
    .restart local v7    # "$i$f$addLastIf":I
    .restart local v8    # "lock$iv$iv":Ljava/lang/Object;
    .restart local v9    # "$i$f$synchronized":I
    .restart local v10    # "firstTask":Lkotlinx/coroutines/EventLoopImplBase$DelayedTask;
    .restart local v11    # "$i$a$-addLastIf-EventLoopImplBase$DelayedTask$scheduleTask$1":I
    :cond_1
    const-wide/16 v12, 0x0

    if-nez v10, :cond_2

    .line 447
    :try_start_4
    iput-wide v2, v4, Lkotlinx/coroutines/EventLoopImplBase$DelayedTaskQueue;->timeNow:J

    goto :goto_1

    .line 454
    :cond_2
    iget-wide v14, v10, Lkotlinx/coroutines/EventLoopImplBase$DelayedTask;->nanoTime:J

    .line 456
    .local v14, "firstTime":J
    sub-long v16, v14, v2

    cmp-long v16, v16, v12

    if-ltz v16, :cond_3

    move-wide/from16 v16, v2

    goto :goto_0

    :cond_3
    move-wide/from16 v16, v14

    :goto_0
    move-wide/from16 v18, v16

    .line 458
    .local v18, "minTime":J
    iget-wide v12, v4, Lkotlinx/coroutines/EventLoopImplBase$DelayedTaskQueue;->timeNow:J

    move-wide/from16 v2, v18

    .end local v18    # "minTime":J
    .local v2, "minTime":J
    sub-long v18, v2, v12

    const-wide/16 v12, 0x0

    cmp-long v18, v18, v12

    if-lez v18, :cond_4

    iput-wide v2, v4, Lkotlinx/coroutines/EventLoopImplBase$DelayedTaskQueue;->timeNow:J

    .line 459
    .end local v2    # "minTime":J
    .end local v14    # "firstTime":J
    :cond_4
    :goto_1
    nop

    .line 467
    iget-wide v2, v1, Lkotlinx/coroutines/EventLoopImplBase$DelayedTask;->nanoTime:J

    iget-wide v12, v4, Lkotlinx/coroutines/EventLoopImplBase$DelayedTaskQueue;->timeNow:J

    sub-long/2addr v2, v12

    const-wide/16 v12, 0x0

    cmp-long v2, v2, v12

    if-gez v2, :cond_5

    iget-wide v2, v4, Lkotlinx/coroutines/EventLoopImplBase$DelayedTaskQueue;->timeNow:J

    iput-wide v2, v1, Lkotlinx/coroutines/EventLoopImplBase$DelayedTask;->nanoTime:J

    .line 468
    :cond_5
    nop

    .line 533
    .end local v10    # "firstTask":Lkotlinx/coroutines/EventLoopImplBase$DelayedTask;
    .end local v11    # "$i$a$-addLastIf-EventLoopImplBase$DelayedTask$scheduleTask$1":I
    invoke-virtual {v6, v5}, Lkotlinx/coroutines/internal/ThreadSafeHeap;->addImpl(Lkotlinx/coroutines/internal/ThreadSafeHeapNode;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 534
    nop

    .line 532
    .end local v0    # "$i$a$-synchronized-ThreadSafeHeap$addLastIf$1$iv":I
    :try_start_5
    monitor-exit v8
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 531
    nop

    .line 538
    .end local v8    # "lock$iv$iv":Ljava/lang/Object;
    .end local v9    # "$i$f$synchronized":I
    nop

    .line 470
    .end local v5    # "node$iv":Lkotlinx/coroutines/internal/ThreadSafeHeapNode;
    .end local v6    # "this_$iv":Lkotlinx/coroutines/internal/ThreadSafeHeap;
    .end local v7    # "$i$f$addLastIf":I
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    .line 532
    .restart local v5    # "node$iv":Lkotlinx/coroutines/internal/ThreadSafeHeapNode;
    .restart local v6    # "this_$iv":Lkotlinx/coroutines/internal/ThreadSafeHeap;
    .restart local v7    # "$i$f$addLastIf":I
    .restart local v8    # "lock$iv$iv":Ljava/lang/Object;
    .restart local v9    # "$i$f$synchronized":I
    :catchall_0
    move-exception v0

    :try_start_6
    monitor-exit v8

    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 431
    .end local v5    # "node$iv":Lkotlinx/coroutines/internal/ThreadSafeHeapNode;
    .end local v6    # "this_$iv":Lkotlinx/coroutines/internal/ThreadSafeHeap;
    .end local v7    # "$i$f$addLastIf":I
    .end local v8    # "lock$iv$iv":Ljava/lang/Object;
    .end local v9    # "$i$f$synchronized":I
    .end local p1    # "now":J
    .end local p3    # "delayed":Lkotlinx/coroutines/EventLoopImplBase$DelayedTaskQueue;
    .end local p4    # "eventLoop":Lkotlinx/coroutines/EventLoopImplBase;
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setHeap(Lkotlinx/coroutines/internal/ThreadSafeHeap;)V
    .locals 2
    .param p1, "value"    # Lkotlinx/coroutines/internal/ThreadSafeHeap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/internal/ThreadSafeHeap<",
            "*>;)V"
        }
    .end annotation

    .line 413
    iget-object v0, p0, Lkotlinx/coroutines/EventLoopImplBase$DelayedTask;->_heap:Ljava/lang/Object;

    invoke-static {}, Lkotlinx/coroutines/EventLoop_commonKt;->access$getDISPOSED_TASK$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 414
    iput-object p1, p0, Lkotlinx/coroutines/EventLoopImplBase$DelayedTask;->_heap:Ljava/lang/Object;

    .line 415
    return-void

    .line 413
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Failed requirement."

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method

.method public setIndex(I)V
    .locals 0
    .param p1, "<set-?>"    # I

    .line 417
    iput p1, p0, Lkotlinx/coroutines/EventLoopImplBase$DelayedTask;->index:I

    return-void
.end method

.method public final timeToExecute(J)Z
    .locals 4
    .param p1, "now"    # J

    .line 428
    iget-wide v0, p0, Lkotlinx/coroutines/EventLoopImplBase$DelayedTask;->nanoTime:J

    sub-long v0, p1, v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 482
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Delayed[nanos="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lkotlinx/coroutines/EventLoopImplBase$DelayedTask;->nanoTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
