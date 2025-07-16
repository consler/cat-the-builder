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

    .line 151
    iput-object p1, p0, Landroidx/camera/camera2/internal/ZoomControl$1;->this$0:Landroidx/camera/camera2/internal/ZoomControl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCaptureResult(Landroid/hardware/camera2/TotalCaptureResult;)Z
    .locals 3

    .line 158
    iget-object v0, p0, Landroidx/camera/camera2/internal/ZoomControl$1;->this$0:Landroidx/camera/camera2/internal/ZoomControl;

    iget-object v0, v0, Landroidx/camera/camera2/internal/ZoomControl;->mCompleterLock:Ljava/lang/Object;

    monitor-enter v0

    .line 159
    :try_start_0
    iget-object v1, p0, Landroidx/camera/camera2/internal/ZoomControl$1;->this$0:Landroidx/camera/camera2/internal/ZoomControl;

    iget-object v1, v1, Landroidx/camera/camera2/internal/ZoomControl;->mPendingZoomRatioCompleter:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 160
    invoke-virtual {p1}, Landroid/hardware/camera2/TotalCaptureResult;->getRequest()Landroid/hardware/camera2/CaptureRequest;

    move-result-object p1

    if-nez p1, :cond_0

    move-object p1, v2

    goto :goto_0

    .line 162
    :cond_0
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->SCALER_CROP_REGION:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p1, v1}, Landroid/hardware/camera2/CaptureRequest;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Rect;

    .line 164
    :goto_0
    iget-object v1, p0, Landroidx/camera/camera2/internal/ZoomControl$1;->this$0:Landroidx/camera/camera2/internal/ZoomControl;

    iget-object v1, v1, Landroidx/camera/camera2/internal/ZoomControl;->mPendingZoomCropRegion:Landroid/graphics/Rect;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroidx/camera/camera2/internal/ZoomControl$1;->this$0:Landroidx/camera/camera2/internal/ZoomControl;

    iget-object v1, v1, Landroidx/camera/camera2/internal/ZoomControl;->mPendingZoomCropRegion:Landroid/graphics/Rect;

    .line 165
    invoke-virtual {v1, p1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 166
    iget-object p1, p0, Landroidx/camera/camera2/internal/ZoomControl$1;->this$0:Landroidx/camera/camera2/internal/ZoomControl;

    iget-object p1, p1, Landroidx/camera/camera2/internal/ZoomControl;->mPendingZoomRatioCompleter:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    .line 167
    iget-object v1, p0, Landroidx/camera/camera2/internal/ZoomControl$1;->this$0:Landroidx/camera/camera2/internal/ZoomControl;

    iput-object v2, v1, Landroidx/camera/camera2/internal/ZoomControl;->mPendingZoomRatioCompleter:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    .line 168
    iget-object v1, p0, Landroidx/camera/camera2/internal/ZoomControl$1;->this$0:Landroidx/camera/camera2/internal/ZoomControl;

    iput-object v2, v1, Landroidx/camera/camera2/internal/ZoomControl;->mPendingZoomCropRegion:Landroid/graphics/Rect;

    goto :goto_1

    :cond_1
    move-object p1, v2

    .line 171
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_2

    .line 174
    invoke-virtual {p1, v2}, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->set(Ljava/lang/Object;)Z

    :cond_2
    const/4 p1, 0x0

    return p1

    :catchall_0
    move-exception p1

    .line 171
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
