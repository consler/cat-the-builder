.class public final Lorg/catrobat/paintroid/ui/DrawingSurfaceThread;
.super Ljava/lang/Object;
.source "DrawingSurfaceThread.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/catrobat/paintroid/ui/DrawingSurfaceThread$InternalRunnable;,
        Lorg/catrobat/paintroid/ui/DrawingSurfaceThread$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0005\u0008\u0000\u0018\u0000 \u000f2\u00020\u0001:\u0002\u000f\u0010B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0008\u0010\u000b\u001a\u00020\u000cH\u0002J\u0006\u0010\r\u001a\u00020\u000cJ\u0006\u0010\u000e\u001a\u00020\u000cR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0011"
    }
    d2 = {
        "Lorg/catrobat/paintroid/ui/DrawingSurfaceThread;",
        "",
        "drawingSurface",
        "Lorg/catrobat/paintroid/ui/DrawingSurface;",
        "threadRunnable",
        "Ljava/lang/Runnable;",
        "(Lorg/catrobat/paintroid/ui/DrawingSurface;Ljava/lang/Runnable;)V",
        "internalThread",
        "Ljava/lang/Thread;",
        "running",
        "",
        "internalRun",
        "",
        "start",
        "stop",
        "Companion",
        "InternalRunnable",
        "Paintroid_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# static fields
.field public static final Companion:Lorg/catrobat/paintroid/ui/DrawingSurfaceThread$Companion;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final drawingSurface:Lorg/catrobat/paintroid/ui/DrawingSurface;

.field private final internalThread:Ljava/lang/Thread;

.field private running:Z

.field private final threadRunnable:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/catrobat/paintroid/ui/DrawingSurfaceThread$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/catrobat/paintroid/ui/DrawingSurfaceThread$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lorg/catrobat/paintroid/ui/DrawingSurfaceThread;->Companion:Lorg/catrobat/paintroid/ui/DrawingSurfaceThread$Companion;

    .line 37
    const-class v0, Lorg/catrobat/paintroid/ui/DrawingSurfaceThread;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/catrobat/paintroid/ui/DrawingSurfaceThread;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/catrobat/paintroid/ui/DrawingSurface;Ljava/lang/Runnable;)V
    .locals 3
    .param p1, "drawingSurface"    # Lorg/catrobat/paintroid/ui/DrawingSurface;
    .param p2, "threadRunnable"    # Ljava/lang/Runnable;

    const-string v0, "drawingSurface"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "threadRunnable"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/catrobat/paintroid/ui/DrawingSurfaceThread;->drawingSurface:Lorg/catrobat/paintroid/ui/DrawingSurface;

    iput-object p2, p0, Lorg/catrobat/paintroid/ui/DrawingSurfaceThread;->threadRunnable:Ljava/lang/Runnable;

    .line 31
    nop

    .line 32
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lorg/catrobat/paintroid/ui/DrawingSurfaceThread$InternalRunnable;

    invoke-direct {v1, p0}, Lorg/catrobat/paintroid/ui/DrawingSurfaceThread$InternalRunnable;-><init>(Lorg/catrobat/paintroid/ui/DrawingSurfaceThread;)V

    check-cast v1, Ljava/lang/Runnable;

    const-string v2, "DrawingSurfaceThread"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/catrobat/paintroid/ui/DrawingSurfaceThread;->internalThread:Ljava/lang/Thread;

    .line 33
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 34
    return-void
.end method

.method public static final synthetic access$internalRun(Lorg/catrobat/paintroid/ui/DrawingSurfaceThread;)V
    .locals 0
    .param p0, "$this"    # Lorg/catrobat/paintroid/ui/DrawingSurfaceThread;

    .line 24
    invoke-direct {p0}, Lorg/catrobat/paintroid/ui/DrawingSurfaceThread;->internalRun()V

    return-void
.end method

.method private final internalRun()V
    .locals 1

    .line 41
    :goto_0
    iget-boolean v0, p0, Lorg/catrobat/paintroid/ui/DrawingSurfaceThread;->running:Z

    if-eqz v0, :cond_0

    .line 42
    iget-object v0, p0, Lorg/catrobat/paintroid/ui/DrawingSurfaceThread;->threadRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 41
    goto :goto_0

    .line 44
    :cond_0
    return-void
.end method


# virtual methods
.method public final declared-synchronized start()V
    .locals 2

    monitor-enter p0

    .line 48
    :try_start_0
    sget-object v0, Lorg/catrobat/paintroid/ui/DrawingSurfaceThread;->TAG:Ljava/lang/String;

    const-string v1, "DrawingSurfaceThread.start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    iget-boolean v0, p0, Lorg/catrobat/paintroid/ui/DrawingSurfaceThread;->running:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/catrobat/paintroid/ui/DrawingSurfaceThread;->internalThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->getState()Ljava/lang/Thread$State;

    move-result-object v0

    sget-object v1, Ljava/lang/Thread$State;->TERMINATED:Ljava/lang/Thread$State;

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 53
    :cond_0
    iget-object v0, p0, Lorg/catrobat/paintroid/ui/DrawingSurfaceThread;->internalThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_1

    .line 54
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/catrobat/paintroid/ui/DrawingSurfaceThread;->running:Z

    .line 55
    iget-object v0, p0, Lorg/catrobat/paintroid/ui/DrawingSurfaceThread;->internalThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 57
    .end local p0    # "this":Lorg/catrobat/paintroid/ui/DrawingSurfaceThread;
    :cond_1
    iget-object v0, p0, Lorg/catrobat/paintroid/ui/DrawingSurfaceThread;->drawingSurface:Lorg/catrobat/paintroid/ui/DrawingSurface;

    invoke-virtual {v0}, Lorg/catrobat/paintroid/ui/DrawingSurface;->refreshDrawingSurface()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    monitor-exit p0

    return-void

    .line 50
    :cond_2
    :goto_0
    :try_start_1
    sget-object v0, Lorg/catrobat/paintroid/ui/DrawingSurfaceThread;->TAG:Ljava/lang/String;

    const-string v1, "DrawingSurfaceThread.start returning"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 51
    monitor-exit p0

    return-void

    .line 47
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized stop()V
    .locals 4

    monitor-enter p0

    .line 62
    :try_start_0
    sget-object v0, Lorg/catrobat/paintroid/ui/DrawingSurfaceThread;->TAG:Ljava/lang/String;

    const-string v1, "DrawingSurfaceThread.stop"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/catrobat/paintroid/ui/DrawingSurfaceThread;->running:Z

    .line 64
    sget-object v0, Lorg/catrobat/paintroid/ui/DrawingSurfaceThread;->TAG:Ljava/lang/String;

    const-string v1, "DrawingSurfaceThread.join"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    :goto_0
    iget-object v0, p0, Lorg/catrobat/paintroid/ui/DrawingSurfaceThread;->internalThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 66
    nop

    .line 67
    :try_start_1
    iget-object v0, p0, Lorg/catrobat/paintroid/ui/DrawingSurfaceThread;->internalThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 68
    iget-object v0, p0, Lorg/catrobat/paintroid/ui/DrawingSurfaceThread;->internalThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V

    .line 69
    sget-object v0, Lorg/catrobat/paintroid/ui/DrawingSurfaceThread;->TAG:Ljava/lang/String;

    const-string v1, "DrawingSurfaceThread.stopped"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 70
    .end local p0    # "this":Lorg/catrobat/paintroid/ui/DrawingSurfaceThread;
    :catch_0
    move-exception v0

    .line 71
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_2
    sget-object v1, Lorg/catrobat/paintroid/ui/DrawingSurfaceThread;->TAG:Ljava/lang/String;

    const-string v2, "Interrupt while joining DrawingSurfaceThread\n"

    move-object v3, v0

    check-cast v3, Ljava/lang/Throwable;

    invoke-static {v1, v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 72
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :goto_1
    nop

    .line 65
    goto :goto_0

    .line 74
    :cond_0
    monitor-exit p0

    return-void

    .line 61
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
