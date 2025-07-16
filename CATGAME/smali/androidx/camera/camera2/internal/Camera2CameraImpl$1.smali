.class Landroidx/camera/camera2/internal/Camera2CameraImpl$1;
.super Ljava/lang/Object;
.source "Camera2CameraImpl.java"

# interfaces
.implements Landroidx/camera/core/impl/utils/futures/FutureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/camera/camera2/internal/Camera2CameraImpl;->releaseSession(Landroidx/camera/camera2/internal/CaptureSession;Z)Lcom/google/common/util/concurrent/ListenableFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/camera/core/impl/utils/futures/FutureCallback<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/camera/camera2/internal/Camera2CameraImpl;

.field final synthetic val$captureSession:Landroidx/camera/camera2/internal/CaptureSession;


# direct methods
.method constructor <init>(Landroidx/camera/camera2/internal/Camera2CameraImpl;Landroidx/camera/camera2/internal/CaptureSession;)V
    .locals 0

    .line 487
    iput-object p1, p0, Landroidx/camera/camera2/internal/Camera2CameraImpl$1;->this$0:Landroidx/camera/camera2/internal/Camera2CameraImpl;

    iput-object p2, p0, Landroidx/camera/camera2/internal/Camera2CameraImpl$1;->val$captureSession:Landroidx/camera/camera2/internal/CaptureSession;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 487
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Landroidx/camera/camera2/internal/Camera2CameraImpl$1;->onSuccess(Ljava/lang/Void;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/Void;)V
    .locals 1

    .line 491
    iget-object p1, p0, Landroidx/camera/camera2/internal/Camera2CameraImpl$1;->this$0:Landroidx/camera/camera2/internal/Camera2CameraImpl;

    iget-object p1, p1, Landroidx/camera/camera2/internal/Camera2CameraImpl;->mReleasedCaptureSessions:Ljava/util/Map;

    iget-object v0, p0, Landroidx/camera/camera2/internal/Camera2CameraImpl$1;->val$captureSession:Landroidx/camera/camera2/internal/CaptureSession;

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 492
    sget-object p1, Landroidx/camera/camera2/internal/Camera2CameraImpl$3;->$SwitchMap$androidx$camera$camera2$internal$Camera2CameraImpl$InternalState:[I

    iget-object v0, p0, Landroidx/camera/camera2/internal/Camera2CameraImpl$1;->this$0:Landroidx/camera/camera2/internal/Camera2CameraImpl;

    iget-object v0, v0, Landroidx/camera/camera2/internal/Camera2CameraImpl;->mState:Landroidx/camera/camera2/internal/Camera2CameraImpl$InternalState;

    invoke-virtual {v0}, Landroidx/camera/camera2/internal/Camera2CameraImpl$InternalState;->ordinal()I

    move-result v0

    aget p1, p1, v0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    const/4 v0, 0x7

    if-eq p1, v0, :cond_1

    goto :goto_0

    .line 494
    :cond_0
    iget-object p1, p0, Landroidx/camera/camera2/internal/Camera2CameraImpl$1;->this$0:Landroidx/camera/camera2/internal/Camera2CameraImpl;

    iget p1, p1, Landroidx/camera/camera2/internal/Camera2CameraImpl;->mCameraDeviceError:I

    if-nez p1, :cond_1

    goto :goto_0

    .line 501
    :cond_1
    iget-object p1, p0, Landroidx/camera/camera2/internal/Camera2CameraImpl$1;->this$0:Landroidx/camera/camera2/internal/Camera2CameraImpl;

    invoke-virtual {p1}, Landroidx/camera/camera2/internal/Camera2CameraImpl;->isSessionCloseComplete()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Landroidx/camera/camera2/internal/Camera2CameraImpl$1;->this$0:Landroidx/camera/camera2/internal/Camera2CameraImpl;

    iget-object p1, p1, Landroidx/camera/camera2/internal/Camera2CameraImpl;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    if-eqz p1, :cond_2

    .line 502
    iget-object p1, p0, Landroidx/camera/camera2/internal/Camera2CameraImpl$1;->this$0:Landroidx/camera/camera2/internal/Camera2CameraImpl;

    iget-object p1, p1, Landroidx/camera/camera2/internal/Camera2CameraImpl;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    invoke-virtual {p1}, Landroid/hardware/camera2/CameraDevice;->close()V

    .line 503
    iget-object p1, p0, Landroidx/camera/camera2/internal/Camera2CameraImpl$1;->this$0:Landroidx/camera/camera2/internal/Camera2CameraImpl;

    const/4 v0, 0x0

    iput-object v0, p1, Landroidx/camera/camera2/internal/Camera2CameraImpl;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    :cond_2
    :goto_0
    return-void
.end method
