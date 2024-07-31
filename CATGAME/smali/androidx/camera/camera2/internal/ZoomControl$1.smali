.class Landroidx/camera/camera2/internal/ZoomControl$1;
.super Ljava/lang/Object;
.source "ZoomControl.java"

# interfaces
.implements Landroidx/camera/camera2/internal/Camera2CameraControl$CaptureResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/camera2/internal/ZoomControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/camera/camera2/internal/ZoomControl;


# direct methods
.method constructor <init>(Landroidx/camera/camera2/internal/ZoomControl;)V
    .locals 0
    .param p1, "this$0"    # Landroidx/camera/camera2/internal/ZoomControl;

    .line 151
    iput-object p1, p0, Landroidx/camera/camera2/internal/ZoomControl$1;->this$0:Landroidx/camera/camera2/internal/ZoomControl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCaptureResult(Landroid/hardware/camera2/TotalCaptureResult;)Z
    .locals 6
    .param p1, "captureResult"    # Landroid/hardware/camera2/TotalCaptureResult;

    .line 157
    const/4 v0, 0x0

    .line 158
    .local v0, "completerToSet":Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;, "Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer<Ljava/lang/Void;>;"
    iget-object v1, p0, Landroidx/camera/camera2/internal/ZoomControl$1;->this$0:Landroidx/camera/camera2/internal/ZoomControl;

    iget-object v1, v1, Landroidx/camera/camera2/internal/ZoomControl;->mCompleterLock:Ljava/lang/Object;

    monitor-enter v1

    .line 159
    :try_start_0
    iget-object v2, p0, Landroidx/camera/camera2/internal/ZoomControl$1;->this$0:Landroidx/camera/camera2/internal/ZoomControl;

    iget-object v2, v2, Landroidx/camera/camera2/internal/ZoomControl;->mPendingZoomRatioCompleter:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 160
    invoke-virtual {p1}, Landroid/hardware/camera2/TotalCaptureResult;->getRequest()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v2

    .line 161
    .local v2, "request":Landroid/hardware/camera2/CaptureRequest;
    if-nez v2, :cond_0

    move-object v4, v3

    goto :goto_0

    .line 162
    :cond_0
    sget-object v4, Landroid/hardware/camera2/CaptureRequest;->SCALER_CROP_REGION:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v2, v4}, Landroid/hardware/camera2/CaptureRequest;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Rect;

    :goto_0
    nop

    .line 164
    .local v4, "cropRect":Landroid/graphics/Rect;
    iget-object v5, p0, Landroidx/camera/camera2/internal/ZoomControl$1;->this$0:Landroidx/camera/camera2/internal/ZoomControl;

    iget-object v5, v5, Landroidx/camera/camera2/internal/ZoomControl;->mPendingZoomCropRegion:Landroid/graphics/Rect;

    if-eqz v5, :cond_1

    iget-object v5, p0, Landroidx/camera/camera2/internal/ZoomControl$1;->this$0:Landroidx/camera/camera2/internal/ZoomControl;

    iget-object v5, v5, Landroidx/camera/camera2/internal/ZoomControl;->mPendingZoomCropRegion:Landroid/graphics/Rect;

    .line 165
    invoke-virtual {v5, v4}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 166
    iget-object v5, p0, Landroidx/camera/camera2/internal/ZoomControl$1;->this$0:Landroidx/camera/camera2/internal/ZoomControl;

    iget-object v5, v5, Landroidx/camera/camera2/internal/ZoomControl;->mPendingZoomRatioCompleter:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    move-object v0, v5

    .line 167
    iget-object v5, p0, Landroidx/camera/camera2/internal/ZoomControl$1;->this$0:Landroidx/camera/camera2/internal/ZoomControl;

    iput-object v3, v5, Landroidx/camera/camera2/internal/ZoomControl;->mPendingZoomRatioCompleter:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    .line 168
    iget-object v5, p0, Landroidx/camera/camera2/internal/ZoomControl$1;->this$0:Landroidx/camera/camera2/internal/ZoomControl;

    iput-object v3, v5, Landroidx/camera/camera2/internal/ZoomControl;->mPendingZoomCropRegion:Landroid/graphics/Rect;

    .line 171
    .end local v2    # "request":Landroid/hardware/camera2/CaptureRequest;
    .end local v4    # "cropRect":Landroid/graphics/Rect;
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 173
    if-eqz v0, :cond_2

    .line 174
    invoke-virtual {v0, v3}, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->set(Ljava/lang/Object;)Z

    .line 176
    :cond_2
    const/4 v1, 0x0

    return v1

    .line 171
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method
