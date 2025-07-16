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

    .line 542
    invoke-direct {p0}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;-><init>()V

    .line 538
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroidx/camera/camera2/internal/Camera2CameraControl$CameraControlSessionCallback;->mResultListeners:Ljava/util/Set;

    .line 543
    iput-object p1, p0, Landroidx/camera/camera2/internal/Camera2CameraControl$CameraControlSessionCallback;->mExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method addListener(Landroidx/camera/camera2/internal/Camera2CameraControl$CaptureResultListener;)V
    .locals 1

    .line 548
    iget-object v0, p0, Landroidx/camera/camera2/internal/Camera2CameraControl$CameraControlSessionCallback;->mResultListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method synthetic lambda$onCaptureCompleted$0$androidx-camera-camera2-internal-Camera2CameraControl$CameraControlSessionCallback(Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 4

    .line 563
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 564
    iget-object v1, p0, Landroidx/camera/camera2/internal/Camera2CameraControl$CameraControlSessionCallback;->mResultListeners:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/camera/camera2/internal/Camera2CameraControl$CaptureResultListener;

    .line 565
    invoke-interface {v2, p1}, Landroidx/camera/camera2/internal/Camera2CameraControl$CaptureResultListener;->onCaptureResult(Landroid/hardware/camera2/TotalCaptureResult;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 567
    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 571
    :cond_1
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    .line 572
    iget-object p1, p0, Landroidx/camera/camera2/internal/Camera2CameraControl$CameraControlSessionCallback;->mResultListeners:Ljava/util/Set;

    invoke-interface {p1, v0}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    :cond_2
    return-void
.end method

.method public onCaptureCompleted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 0

    .line 562
    iget-object p1, p0, Landroidx/camera/camera2/internal/Camera2CameraControl$CameraControlSessionCallback;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance p2, Landroidx/camera/camera2/internal/Camera2CameraControl$CameraControlSessionCallback$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0, p3}, Landroidx/camera/camera2/internal/Camera2CameraControl$CameraControlSessionCallback$$ExternalSyntheticLambda0;-><init>(Landroidx/camera/camera2/internal/Camera2CameraControl$CameraControlSessionCallback;Landroid/hardware/camera2/TotalCaptureResult;)V

    invoke-interface {p1, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method removeListener(Landroidx/camera/camera2/internal/Camera2CameraControl$CaptureResultListener;)V
    .locals 1

    .line 553
    iget-object v0, p0, Landroidx/camera/camera2/internal/Camera2CameraControl$CameraControlSessionCallback;->mResultListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method
