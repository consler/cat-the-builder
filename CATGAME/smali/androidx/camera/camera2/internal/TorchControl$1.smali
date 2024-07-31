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
    .param p1, "this$0"    # Landroidx/camera/camera2/internal/TorchControl;

    .line 196
    iput-object p1, p0, Landroidx/camera/camera2/internal/TorchControl$1;->this$0:Landroidx/camera/camera2/internal/TorchControl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCaptureResult(Landroid/hardware/camera2/TotalCaptureResult;)Z
    .locals 8
    .param p1, "captureResult"    # Landroid/hardware/camera2/TotalCaptureResult;

    .line 200
    const/4 v0, 0x0

    .line 201
    .local v0, "completerToSet":Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;, "Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer<Ljava/lang/Void;>;"
    iget-object v1, p0, Landroidx/camera/camera2/internal/TorchControl$1;->this$0:Landroidx/camera/camera2/internal/TorchControl;

    iget-object v1, v1, Landroidx/camera/camera2/internal/TorchControl;->mEnableTorchLock:Ljava/lang/Object;

    monitor-enter v1

    .line 202
    :try_start_0
    iget-object v2, p0, Landroidx/camera/camera2/internal/TorchControl$1;->this$0:Landroidx/camera/camera2/internal/TorchControl;

    iget-object v2, v2, Landroidx/camera/camera2/internal/TorchControl;->mEnableTorchCompleter:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    .line 203
    invoke-virtual {p1}, Landroid/hardware/camera2/TotalCaptureResult;->getRequest()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v2

    .line 204
    .local v2, "captureRequest":Landroid/hardware/camera2/CaptureRequest;
    sget-object v5, Landroid/hardware/camera2/CaptureRequest;->FLASH_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v2, v5}, Landroid/hardware/camera2/CaptureRequest;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    .line 205
    .local v5, "flashMode":Ljava/lang/Integer;
    if-eqz v5, :cond_0

    .line 206
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_0

    const/4 v6, 0x1

    goto :goto_0

    :cond_0
    move v6, v4

    .line 208
    .local v6, "torchEnabled":Z
    :goto_0
    iget-object v7, p0, Landroidx/camera/camera2/internal/TorchControl$1;->this$0:Landroidx/camera/camera2/internal/TorchControl;

    iget-boolean v7, v7, Landroidx/camera/camera2/internal/TorchControl;->mTargetTorchEnabled:Z

    if-ne v6, v7, :cond_1

    .line 209
    iget-object v7, p0, Landroidx/camera/camera2/internal/TorchControl$1;->this$0:Landroidx/camera/camera2/internal/TorchControl;

    iget-object v7, v7, Landroidx/camera/camera2/internal/TorchControl;->mEnableTorchCompleter:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    move-object v0, v7

    .line 210
    iget-object v7, p0, Landroidx/camera/camera2/internal/TorchControl$1;->this$0:Landroidx/camera/camera2/internal/TorchControl;

    iput-object v3, v7, Landroidx/camera/camera2/internal/TorchControl;->mEnableTorchCompleter:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    .line 213
    .end local v2    # "captureRequest":Landroid/hardware/camera2/CaptureRequest;
    .end local v5    # "flashMode":Ljava/lang/Integer;
    .end local v6    # "torchEnabled":Z
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 214
    if-eqz v0, :cond_2

    .line 215
    invoke-virtual {v0, v3}, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->set(Ljava/lang/Object;)Z

    .line 218
    :cond_2
    return v4

    .line 213
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method
