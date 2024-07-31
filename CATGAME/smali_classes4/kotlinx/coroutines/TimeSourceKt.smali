.class public final Lkotlinx/coroutines/TimeSourceKt;
.super Ljava/lang/Object;
.source "TimeSource.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00004\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u001a\t\u0010\u0006\u001a\u00020\u0007H\u0081\u0008\u001a\t\u0010\u0008\u001a\u00020\u0007H\u0081\u0008\u001a\u0019\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u0007H\u0081\u0008\u001a\t\u0010\u000e\u001a\u00020\nH\u0081\u0008\u001a\t\u0010\u000f\u001a\u00020\nH\u0081\u0008\u001a\t\u0010\u0010\u001a\u00020\nH\u0081\u0008\u001a\u0011\u0010\u0011\u001a\u00020\n2\u0006\u0010\u0012\u001a\u00020\u0013H\u0081\u0008\u001a\t\u0010\u0014\u001a\u00020\nH\u0081\u0008\u001a\u0019\u0010\u0015\u001a\u00060\u0016j\u0002`\u00172\n\u0010\u0018\u001a\u00060\u0016j\u0002`\u0017H\u0081\u0008\"\u001c\u0010\u0000\u001a\u0004\u0018\u00010\u0001X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0002\u0010\u0003\"\u0004\u0008\u0004\u0010\u0005\u00a8\u0006\u0019"
    }
    d2 = {
        "timeSource",
        "Lkotlinx/coroutines/TimeSource;",
        "getTimeSource",
        "()Lkotlinx/coroutines/TimeSource;",
        "setTimeSource",
        "(Lkotlinx/coroutines/TimeSource;)V",
        "currentTimeMillis",
        "",
        "nanoTime",
        "parkNanos",
        "",
        "blocker",
        "",
        "nanos",
        "registerTimeLoopThread",
        "trackTask",
        "unTrackTask",
        "unpark",
        "thread",
        "Ljava/lang/Thread;",
        "unregisterTimeLoopThread",
        "wrapTask",
        "Ljava/lang/Runnable;",
        "Lkotlinx/coroutines/Runnable;",
        "block",
        "kotlinx-coroutines-core"
    }
    k = 0x2
    mv = {
        0x1,
        0x4,
        0x0
    }
.end annotation


# static fields
.field private static timeSource:Lkotlinx/coroutines/TimeSource;


# direct methods
.method private static final currentTimeMillis()J
    .locals 3

    const/4 v0, 0x0

    .line 31
    .local v0, "$i$f$currentTimeMillis":I
    invoke-static {}, Lkotlinx/coroutines/TimeSourceKt;->getTimeSource()Lkotlinx/coroutines/TimeSource;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lkotlinx/coroutines/TimeSource;->currentTimeMillis()J

    move-result-wide v1

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    :goto_0
    return-wide v1
.end method

.method public static final getTimeSource()Lkotlinx/coroutines/TimeSource;
    .locals 1

    .line 27
    sget-object v0, Lkotlinx/coroutines/TimeSourceKt;->timeSource:Lkotlinx/coroutines/TimeSource;

    return-object v0
.end method

.method private static final nanoTime()J
    .locals 3

    const/4 v0, 0x0

    .line 35
    .local v0, "$i$f$nanoTime":I
    invoke-static {}, Lkotlinx/coroutines/TimeSourceKt;->getTimeSource()Lkotlinx/coroutines/TimeSource;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lkotlinx/coroutines/TimeSource;->nanoTime()J

    move-result-wide v1

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    :goto_0
    return-wide v1
.end method

.method private static final parkNanos(Ljava/lang/Object;J)V
    .locals 2
    .param p0, "blocker"    # Ljava/lang/Object;
    .param p1, "nanos"    # J

    const/4 v0, 0x0

    .line 63
    .local v0, "$i$f$parkNanos":I
    invoke-static {}, Lkotlinx/coroutines/TimeSourceKt;->getTimeSource()Lkotlinx/coroutines/TimeSource;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1, p0, p1, p2}, Lkotlinx/coroutines/TimeSource;->parkNanos(Ljava/lang/Object;J)V

    goto :goto_0

    :cond_0
    invoke-static {p0, p1, p2}, Ljava/util/concurrent/locks/LockSupport;->parkNanos(Ljava/lang/Object;J)V

    .line 64
    :goto_0
    return-void
.end method

.method private static final registerTimeLoopThread()V
    .locals 2

    const/4 v0, 0x0

    .line 53
    .local v0, "$i$f$registerTimeLoopThread":I
    invoke-static {}, Lkotlinx/coroutines/TimeSourceKt;->getTimeSource()Lkotlinx/coroutines/TimeSource;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lkotlinx/coroutines/TimeSource;->registerTimeLoopThread()V

    .line 54
    :cond_0
    return-void
.end method

.method public static final setTimeSource(Lkotlinx/coroutines/TimeSource;)V
    .locals 0
    .param p0, "<set-?>"    # Lkotlinx/coroutines/TimeSource;

    .line 27
    sput-object p0, Lkotlinx/coroutines/TimeSourceKt;->timeSource:Lkotlinx/coroutines/TimeSource;

    return-void
.end method

.method private static final trackTask()V
    .locals 2

    const/4 v0, 0x0

    .line 43
    .local v0, "$i$f$trackTask":I
    invoke-static {}, Lkotlinx/coroutines/TimeSourceKt;->getTimeSource()Lkotlinx/coroutines/TimeSource;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lkotlinx/coroutines/TimeSource;->trackTask()V

    .line 44
    :cond_0
    return-void
.end method

.method private static final unTrackTask()V
    .locals 2

    const/4 v0, 0x0

    .line 48
    .local v0, "$i$f$unTrackTask":I
    invoke-static {}, Lkotlinx/coroutines/TimeSourceKt;->getTimeSource()Lkotlinx/coroutines/TimeSource;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lkotlinx/coroutines/TimeSource;->unTrackTask()V

    .line 49
    :cond_0
    return-void
.end method

.method private static final unpark(Ljava/lang/Thread;)V
    .locals 2
    .param p0, "thread"    # Ljava/lang/Thread;

    const/4 v0, 0x0

    .line 68
    .local v0, "$i$f$unpark":I
    invoke-static {}, Lkotlinx/coroutines/TimeSourceKt;->getTimeSource()Lkotlinx/coroutines/TimeSource;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1, p0}, Lkotlinx/coroutines/TimeSource;->unpark(Ljava/lang/Thread;)V

    goto :goto_0

    :cond_0
    invoke-static {p0}, Ljava/util/concurrent/locks/LockSupport;->unpark(Ljava/lang/Thread;)V

    .line 69
    :goto_0
    return-void
.end method

.method private static final unregisterTimeLoopThread()V
    .locals 2

    const/4 v0, 0x0

    .line 58
    .local v0, "$i$f$unregisterTimeLoopThread":I
    invoke-static {}, Lkotlinx/coroutines/TimeSourceKt;->getTimeSource()Lkotlinx/coroutines/TimeSource;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lkotlinx/coroutines/TimeSource;->unregisterTimeLoopThread()V

    .line 59
    :cond_0
    return-void
.end method

.method private static final wrapTask(Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 2
    .param p0, "block"    # Ljava/lang/Runnable;

    const/4 v0, 0x0

    .line 39
    .local v0, "$i$f$wrapTask":I
    invoke-static {}, Lkotlinx/coroutines/TimeSourceKt;->getTimeSource()Lkotlinx/coroutines/TimeSource;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1, p0}, Lkotlinx/coroutines/TimeSource;->wrapTask(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move-object v1, p0

    :goto_0
    return-object v1
.end method
