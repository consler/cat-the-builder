.class final Landroidx/camera/camera2/internal/Camera2CameraControl$CameraControlSessionCallback;
.super Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
.source "Camera2CameraControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/camera2/internal/Camera2CameraControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "CameraControlSessionCallback"
.end annotation


# instance fields
.field private final mExecutor:Ljava/util/concurrent/Executor;

.field final mResultListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroidx/camera/camera2/internal/Camera2CameraControl$CaptureResultListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/concurrent/Executor;)V
    .locals 1
    .param p1, "executor"    # Ljava/util/concurrent/Executor;

    .line 542
    invoke-direct {p0}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;-><init>()V

    .line 538
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroidx/camera/camera2/internal/Camera2CameraControl$CameraControlSessionCallback;->mResultListeners:Ljava/util/Set;

    .line 543
    iput-object p1, p0, Landroidx/camera/camera2/internal/Camera2CameraControl$CameraControlSessionCallback;->mExecutor:Ljava/util/concurrent/Executor;

    .line 544
    return-void
.end method


# virtual methods
.method addListener(Landroidx/camera/camera2/internal/Camera2CameraControl$CaptureResultListener;)V
    .locals 1
    .param p1, "listener"    # Landroidx/camera/camera2/internal/Camera2CameraControl$CaptureResultListener;

    .line 548
    iget-object v0, p0, Landroidx/camera/camera2/internal/Camera2CameraControl$CameraControlSessionCallback;->mResultListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 549
    return-void
.end method

.method public synthetic lambda$onCaptureCompleted$0$Camera2CameraControl$CameraControlSessionCallback(Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 4
    .param p1, "result"    # Landroid/hardware/camera2/TotalCaptureResult;

    .line 563
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 564
    .local v0, "removeSet":Ljava/util/Set;, "Ljava/util/Set<Landroidx/camera/camera2/internal/Camera2CameraControl$CaptureResultListener;>;"
    iget-object v1, p0, Landroidx/camera/camera2/internal/Camera2CameraControl$CameraControlSessionCallback;->mResultListeners:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/camera/camera2/internal/Camera2CameraControl$CaptureResultListener;

    .line 565
    .local v2, "listener":Landroidx/camera/camera2/internal/Camera2CameraControl$CaptureResultListener;
    invoke-interface {v2, p1}, Landroidx/camera/camera2/internal/Camera2CameraControl$CaptureResultListener;->onCaptureResult(Landroid/hardware/camera2/TotalCaptureResult;)Z

    move-result v3

    .line 566
    .local v3, "isFinished":Z
    if-eqz v3, :cond_0

    .line 567
    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 569
    .end local v2    # "listener":Landroidx/camera/camera2/internal/Camera2CameraControl$CaptureResultListener;
    .end local v3    # "isFinished":Z
    :cond_0
    goto :goto_0

    .line 571
    :cond_1
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 572
    iget-object v1, p0, Landroidx/camera/camera2/internal/Camera2CameraControl$CameraControlSessionCallback;->mResultListeners:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 574
    :cond_2
    return-void
.end method

.method public onCaptureCompleted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 2
    .param p1, "session"    # Landroid/hardware/camera2/CameraCaptureSession;
    .param p2, "request"    # Landroid/hardware/camera2/CaptureRequest;
    .param p3, "result"    # Landroid/hardware/camera2/TotalCaptureResult;

    .line 562
    iget-object v0, p0, Landroidx/camera/camera2/internal/Camera2CameraControl$CameraControlSessionCallback;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroidx/camera/camera2/internal/-$$Lambda$Camera2CameraControl$CameraControlSessionCallback$D22-IA_eQmzTWvkNwlgaZNWM8E8;

    invoke-direct {v1, p0, p3}, Landroidx/camera/camera2/internal/-$$Lambda$Camera2CameraControl$CameraControlSessionCallback$D22-IA_eQmzTWvkNwlgaZNWM8E8;-><init>(Landroidx/camera/camera2/internal/Camera2CameraControl$CameraControlSessionCallback;Landroid/hardware/camera2/TotalCaptureResult;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 575
    return-void
.end method

.method removeListener(Landroidx/camera/camera2/internal/Camera2CameraControl$CaptureResultListener;)V
    .locals 1
    .param p1, "listener"    # Landroidx/camera/camera2/internal/Camera2CameraControl$CaptureResultListener;

    .line 553
    iget-object v0, p0, Landroidx/camera/camera2/internal/Camera2CameraControl$CameraControlSessionCallback;->mResultListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 554
    return-void
.end method
