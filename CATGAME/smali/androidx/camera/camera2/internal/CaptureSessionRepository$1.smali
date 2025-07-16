.class Landroidx/camera/camera2/internal/CaptureSessionRepository$1;
.super Landroid/hardware/camera2/CameraDevice$StateCallback;
.source "CaptureSessionRepository.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/camera2/internal/CaptureSessionRepository;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/camera/camera2/internal/CaptureSessionRepository;


# direct methods
.method constructor <init>(Landroidx/camera/camera2/internal/CaptureSessionRepository;)V
    .locals 0

    .line 65
    iput-object p1, p0, Landroidx/camera/camera2/internal/CaptureSessionRepository$1;->this$0:Landroidx/camera/camera2/internal/CaptureSessionRepository;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraDevice$StateCallback;-><init>()V

    return-void
.end method


# virtual methods
.method synthetic lambda$onDisconnected$0$androidx-camera-camera2-internal-CaptureSessionRepository$1()V
    .locals 4

    .line 90
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 91
    iget-object v1, p0, Landroidx/camera/camera2/internal/CaptureSessionRepository$1;->this$0:Landroidx/camera/camera2/internal/CaptureSessionRepository;

    iget-object v1, v1, Landroidx/camera/camera2/internal/CaptureSessionRepository;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 92
    :try_start_0
    new-instance v2, Ljava/util/LinkedHashSet;

    iget-object v3, p0, Landroidx/camera/camera2/internal/CaptureSessionRepository$1;->this$0:Landroidx/camera/camera2/internal/CaptureSessionRepository;

    iget-object v3, v3, Landroidx/camera/camera2/internal/CaptureSessionRepository;->mCreatingCaptureSessions:Ljava/util/Set;

    invoke-direct {v2, v3}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v2}, Ljava/util/LinkedHashSet;->addAll(Ljava/util/Collection;)Z

    .line 93
    new-instance v2, Ljava/util/LinkedHashSet;

    iget-object v3, p0, Landroidx/camera/camera2/internal/CaptureSessionRepository$1;->this$0:Landroidx/camera/camera2/internal/CaptureSessionRepository;

    iget-object v3, v3, Landroidx/camera/camera2/internal/CaptureSessionRepository;->mCaptureSessions:Ljava/util/Set;

    invoke-direct {v2, v3}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v2}, Ljava/util/LinkedHashSet;->addAll(Ljava/util/Collection;)Z

    .line 94
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    invoke-static {v0}, Landroidx/camera/camera2/internal/CaptureSessionRepository;->forceOnClosed(Ljava/util/Set;)V

    return-void

    :catchall_0
    move-exception v0

    .line 94
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onDisconnected(Landroid/hardware/camera2/CameraDevice;)V
    .locals 1

    .line 85
    iget-object p1, p0, Landroidx/camera/camera2/internal/CaptureSessionRepository$1;->this$0:Landroidx/camera/camera2/internal/CaptureSessionRepository;

    iget-object p1, p1, Landroidx/camera/camera2/internal/CaptureSessionRepository;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v0, Landroidx/camera/camera2/internal/CaptureSessionRepository$1$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Landroidx/camera/camera2/internal/CaptureSessionRepository$1$$ExternalSyntheticLambda0;-><init>(Landroidx/camera/camera2/internal/CaptureSessionRepository$1;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onError(Landroid/hardware/camera2/CameraDevice;I)V
    .locals 0

    return-void
.end method

.method public onOpened(Landroid/hardware/camera2/CameraDevice;)V
    .locals 0

    return-void
.end method
