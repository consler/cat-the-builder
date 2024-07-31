.class public Lorg/catrobat/catroid/ui/ViewSwitchLock;
.super Ljava/lang/Object;
.source "ViewSwitchLock.java"

# interfaces
.implements Ljava/util/concurrent/locks/Lock;


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final UNLOCK_TIMEOUT:J = 0xc8L


# instance fields
.field private locked:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 33
    const-class v0, Lorg/catrobat/catroid/ui/ViewSwitchLock;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/catrobat/catroid/ui/ViewSwitchLock;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/catrobat/catroid/ui/ViewSwitchLock;->locked:Z

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 31
    sget-object v0, Lorg/catrobat/catroid/ui/ViewSwitchLock;->TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public lock()V
    .locals 2

    .line 67
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Unsupported Method"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public lockInterruptibly()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 72
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Unsupported Method"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public newCondition()Ljava/util/concurrent/locks/Condition;
    .locals 2

    .line 77
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Unsupported Method"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public declared-synchronized tryLock()Z
    .locals 3

    monitor-enter p0

    .line 39
    :try_start_0
    iget-boolean v0, p0, Lorg/catrobat/catroid/ui/ViewSwitchLock;->locked:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 40
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    .line 43
    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lorg/catrobat/catroid/ui/ViewSwitchLock;->locked:Z

    .line 44
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lorg/catrobat/catroid/ui/ViewSwitchLock$1;

    invoke-direct {v2, p0}, Lorg/catrobat/catroid/ui/ViewSwitchLock$1;-><init>(Lorg/catrobat/catroid/ui/ViewSwitchLock;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 55
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 57
    monitor-exit p0

    return v0

    .line 38
    .end local p0    # "this":Lorg/catrobat/catroid/ui/ViewSwitchLock;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public tryLock(JLjava/util/concurrent/TimeUnit;)Z
    .locals 2
    .param p1, "arg0"    # J
    .param p3, "arg1"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 82
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Unsupported Method"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public declared-synchronized unlock()V
    .locals 1

    monitor-enter p0

    .line 62
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lorg/catrobat/catroid/ui/ViewSwitchLock;->locked:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    monitor-exit p0

    return-void

    .line 61
    .end local p0    # "this":Lorg/catrobat/catroid/ui/ViewSwitchLock;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
