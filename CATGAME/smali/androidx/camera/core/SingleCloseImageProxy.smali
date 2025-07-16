.class final Landroidx/camera/core/SingleCloseImageProxy;
.super Landroidx/camera/core/ForwardingImageProxy;
.source "SingleCloseImageProxy.java"


# instance fields
.field private mClosed:Z


# direct methods
.method constructor <init>(Landroidx/camera/core/ImageProxy;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Landroidx/camera/core/ForwardingImageProxy;-><init>(Landroidx/camera/core/ImageProxy;)V

    const/4 p1, 0x0

    .line 23
    iput-boolean p1, p0, Landroidx/camera/core/SingleCloseImageProxy;->mClosed:Z

    return-void
.end method


# virtual methods
.method public declared-synchronized close()V
    .locals 1

    monitor-enter p0

    .line 38
    :try_start_0
    iget-boolean v0, p0, Landroidx/camera/core/SingleCloseImageProxy;->mClosed:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 39
    iput-boolean v0, p0, Landroidx/camera/core/SingleCloseImageProxy;->mClosed:Z

    .line 40
    invoke-super {p0}, Landroidx/camera/core/ForwardingImageProxy;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
