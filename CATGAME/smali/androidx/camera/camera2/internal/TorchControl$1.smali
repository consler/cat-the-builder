.class Landroidx/camera/camera2/internal/TorchControl$1;
.super Ljava/lang/Object;
.source "TorchControl.java"

# interfaces
.implements Landroidx/camera/camera2/internal/Camera2CameraControl$CaptureResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/camera2/internal/TorchControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/camera/camera2/internal/TorchControl;


# direct methods
.method constructor <init>(Landroidx/camera/camera2/internal/TorchControl;)V
    .locals 0

    .line 196
    iput-object p1, p0, Landroidx/camera/camera2/internal/TorchControl$1;->this$0:Landroidx/camera/camera2/internal/TorchControl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCaptureResult(Landroid/hardware/camera2/TotalCaptureResult;)Z
    .locals 4

    .line 201
    iget-object v0, p0, Landroidx/camera/camera2/internal/TorchControl$1;->this$0:Landroidx/camera/camera2/internal/TorchControl;

    iget-object v0, v0, Landroidx/camera/camera2/internal/TorchControl;->mEnableTorchLock:Ljava/lang/Object;

    monitor-enter v0

    .line 202
    :try_start_0
    iget-object v1, p0, Landroidx/camera/camera2/internal/TorchControl$1;->this$0:Landroidx/camera/camera2/internal/TorchControl;

    iget-object v1, v1, Landroidx/camera/camera2/internal/TorchControl;->mEnableTorchCompleter:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    .line 203
    invoke-virtual {p1}, Landroid/hardware/camera2/TotalCaptureResult;->getRequest()Landroid/hardware/camera2/CaptureRequest;

    move-result-object p1

    .line 204
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->FLASH_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p1, v1}, Landroid/hardware/camera2/CaptureRequest;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-eqz p1, :cond_0

    .line 206
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    move p1, v2

    .line 208
    :goto_0
    iget-object v1, p0, Landroidx/camera/camera2/internal/TorchControl$1;->this$0:Landroidx/camera/camera2/internal/TorchControl;

    iget-boolean v1, v1, Landroidx/camera/camera2/internal/TorchControl;->mTargetTorchEnabled:Z

    if-ne p1, v1, :cond_1

    .line 209
    iget-object p1, p0, Landroidx/camera/camera2/internal/TorchControl$1;->this$0:Landroidx/camera/camera2/internal/TorchControl;

    iget-object p1, p1, Landroidx/camera/camera2/internal/TorchControl;->mEnableTorchCompleter:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    .line 210
    iget-object v1, p0, Landroidx/camera/camera2/internal/TorchControl$1;->this$0:Landroidx/camera/camera2/internal/TorchControl;

    iput-object v3, v1, Landroidx/camera/camera2/internal/TorchControl;->mEnableTorchCompleter:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    goto :goto_1

    :cond_1
    move-object p1, v3

    .line 213
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_2

    .line 215
    invoke-virtual {p1, v3}, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->set(Ljava/lang/Object;)Z

    :cond_2
    return v2

    :catchall_0
    move-exception p1

    .line 213
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
