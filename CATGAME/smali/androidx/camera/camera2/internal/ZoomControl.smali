.class final Landroidx/camera/camera2/internal/ZoomControl;
.super Ljava/lang/Object;
.source "ZoomControl.java"


# static fields
.field public static final DEFAULT_ZOOM_RATIO:F = 1.0f

.field public static final MIN_ZOOM:F = 1.0f

.field private static final TAG:Ljava/lang/String; = "ZoomControl"


# instance fields
.field final mActiveLock:Ljava/lang/Object;

.field private final mCamera2CameraControl:Landroidx/camera/camera2/internal/Camera2CameraControl;

.field private mCaptureResultListener:Landroidx/camera/camera2/internal/Camera2CameraControl$CaptureResultListener;

.field final mCompleterLock:Ljava/lang/Object;

.field private final mCurrentZoomState:Landroidx/camera/camera2/internal/ZoomStateImpl;

.field private mIsActive:Z

.field mPendingZoomCropRegion:Landroid/graphics/Rect;

.field mPendingZoomRatioCompleter:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private final mZoomStateLiveData:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Landroidx/camera/core/ZoomState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroidx/camera/camera2/internal/Camera2CameraControl;Landroid/hardware/camera2/CameraCharacteristics;)V
    .locals 3
    .param p1, "camera2CameraControl"    # Landroidx/camera/camera2/internal/Camera2CameraControl;
    .param p2, "cameraCharacteristics"    # Landroid/hardware/camera2/CameraCharacteristics;

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroidx/camera/camera2/internal/ZoomControl;->mCompleterLock:Ljava/lang/Object;

    .line 79
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/camera/camera2/internal/ZoomControl;->mPendingZoomCropRegion:Landroid/graphics/Rect;

    .line 83
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroidx/camera/camera2/internal/ZoomControl;->mActiveLock:Ljava/lang/Object;

    .line 89
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/camera/camera2/internal/ZoomControl;->mIsActive:Z

    .line 150
    new-instance v0, Landroidx/camera/camera2/internal/ZoomControl$1;

    invoke-direct {v0, p0}, Landroidx/camera/camera2/internal/ZoomControl$1;-><init>(Landroidx/camera/camera2/internal/ZoomControl;)V

    iput-object v0, p0, Landroidx/camera/camera2/internal/ZoomControl;->mCaptureResultListener:Landroidx/camera/camera2/internal/Camera2CameraControl$CaptureResultListener;

    .line 94
    iput-object p1, p0, Landroidx/camera/camera2/internal/ZoomControl;->mCamera2CameraControl:Landroidx/camera/camera2/internal/Camera2CameraControl;

    .line 96
    new-instance v0, Landroidx/camera/camera2/internal/ZoomStateImpl;

    invoke-static {p2}, Landroidx/camera/camera2/internal/ZoomControl;->getMaxDigitalZoom(Landroid/hardware/camera2/CameraCharacteristics;)F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Landroidx/camera/camera2/internal/ZoomStateImpl;-><init>(FF)V

    iput-object v0, p0, Landroidx/camera/camera2/internal/ZoomControl;->mCurrentZoomState:Landroidx/camera/camera2/internal/ZoomStateImpl;

    .line 98
    invoke-virtual {v0, v2}, Landroidx/camera/camera2/internal/ZoomStateImpl;->setZoomRatio(F)V

    .line 99
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    iget-object v1, p0, Landroidx/camera/camera2/internal/ZoomControl;->mCurrentZoomState:Landroidx/camera/camera2/internal/ZoomStateImpl;

    invoke-static {v1}, Landroidx/camera/core/internal/ImmutableZoomState;->create(Landroidx/camera/core/ZoomState;)Landroidx/camera/core/ZoomState;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/lifecycle/MutableLiveData;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroidx/camera/camera2/internal/ZoomControl;->mZoomStateLiveData:Landroidx/lifecycle/MutableLiveData;

    .line 101
    iget-object v0, p0, Landroidx/camera/camera2/internal/ZoomControl;->mCaptureResultListener:Landroidx/camera/camera2/internal/Camera2CameraControl$CaptureResultListener;

    invoke-virtual {p1, v0}, Landroidx/camera/camera2/internal/Camera2CameraControl;->addCaptureResultListener(Landroidx/camera/camera2/internal/Camera2CameraControl$CaptureResultListener;)V

    .line 102
    return-void
.end method

.method static getCropRectByRatio(Landroid/graphics/Rect;F)Landroid/graphics/Rect;
    .locals 9
    .param p0, "sensorRect"    # Landroid/graphics/Rect;
    .param p1, "ratio"    # F

    .line 222
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, p1

    .line 223
    .local v0, "cropWidth":F
    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, p1

    .line 224
    .local v1, "cropHeight":F
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v2, v0

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    .line 225
    .local v2, "left":F
    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v4, v1

    div-float/2addr v4, v3

    .line 226
    .local v4, "top":F
    new-instance v3, Landroid/graphics/Rect;

    float-to-int v5, v2

    float-to-int v6, v4

    add-float v7, v2, v0

    float-to-int v7, v7

    add-float v8, v4, v1

    float-to-int v8, v8

    invoke-direct {v3, v5, v6, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v3
.end method

.method private static getMaxDigitalZoom(Landroid/hardware/camera2/CameraCharacteristics;)F
    .locals 2
    .param p0, "cameraCharacteristics"    # Landroid/hardware/camera2/CameraCharacteristics;

    .line 324
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_AVAILABLE_MAX_DIGITAL_ZOOM:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p0, v0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    .line 327
    .local v0, "maxZoom":Ljava/lang/Float;
    if-nez v0, :cond_0

    .line 328
    const/high16 v1, 0x3f800000    # 1.0f

    return v1

    .line 331
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v1

    return v1
.end method

.method private submitCameraZoomRatio(F)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 3
    .param p1, "ratio"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 239
    iget-object v0, p0, Landroidx/camera/camera2/internal/ZoomControl;->mCamera2CameraControl:Landroidx/camera/camera2/internal/Camera2CameraControl;

    invoke-virtual {v0}, Landroidx/camera/camera2/internal/Camera2CameraControl;->getSensorRect()Landroid/graphics/Rect;

    move-result-object v0

    .line 240
    .local v0, "sensorRect":Landroid/graphics/Rect;
    invoke-static {v0, p1}, Landroidx/camera/camera2/internal/ZoomControl;->getCropRectByRatio(Landroid/graphics/Rect;F)Landroid/graphics/Rect;

    move-result-object v1

    .line 241
    .local v1, "targetRegion":Landroid/graphics/Rect;
    iget-object v2, p0, Landroidx/camera/camera2/internal/ZoomControl;->mCamera2CameraControl:Landroidx/camera/camera2/internal/Camera2CameraControl;

    invoke-virtual {v2, v1}, Landroidx/camera/camera2/internal/Camera2CameraControl;->setCropRegion(Landroid/graphics/Rect;)V

    .line 243
    new-instance v2, Landroidx/camera/camera2/internal/-$$Lambda$ZoomControl$Drb-7VorNRO23tcp0rNs8amFoh4;

    invoke-direct {v2, p0, v1}, Landroidx/camera/camera2/internal/-$$Lambda$ZoomControl$Drb-7VorNRO23tcp0rNs8amFoh4;-><init>(Landroidx/camera/camera2/internal/ZoomControl;Landroid/graphics/Rect;)V

    invoke-static {v2}, Landroidx/concurrent/futures/CallbackToFutureAdapter;->getFuture(Landroidx/concurrent/futures/CallbackToFutureAdapter$Resolver;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v2

    return-object v2
.end method

.method private updateLiveData(Landroidx/camera/core/ZoomState;)V
    .locals 2
    .param p1, "zoomState"    # Landroidx/camera/core/ZoomState;

    .line 306
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 307
    iget-object v0, p0, Landroidx/camera/camera2/internal/ZoomControl;->mZoomStateLiveData:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    goto :goto_0

    .line 309
    :cond_0
    iget-object v0, p0, Landroidx/camera/camera2/internal/ZoomControl;->mZoomStateLiveData:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 311
    :goto_0
    return-void
.end method


# virtual methods
.method getZoomState()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Landroidx/camera/core/ZoomState;",
            ">;"
        }
    .end annotation

    .line 320
    iget-object v0, p0, Landroidx/camera/camera2/internal/ZoomControl;->mZoomStateLiveData:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public synthetic lambda$submitCameraZoomRatio$0$ZoomControl(Landroid/graphics/Rect;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;
    .locals 3
    .param p1, "targetRegion"    # Landroid/graphics/Rect;
    .param p2, "completer"    # Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 244
    const/4 v0, 0x0

    .line 245
    .local v0, "completerToCancel":Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;, "Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer<Ljava/lang/Void;>;"
    iget-object v1, p0, Landroidx/camera/camera2/internal/ZoomControl;->mCompleterLock:Ljava/lang/Object;

    monitor-enter v1

    .line 246
    :try_start_0
    iget-object v2, p0, Landroidx/camera/camera2/internal/ZoomControl;->mPendingZoomRatioCompleter:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    if-eqz v2, :cond_0

    .line 247
    iget-object v2, p0, Landroidx/camera/camera2/internal/ZoomControl;->mPendingZoomRatioCompleter:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    move-object v0, v2

    .line 248
    const/4 v2, 0x0

    iput-object v2, p0, Landroidx/camera/camera2/internal/ZoomControl;->mPendingZoomRatioCompleter:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    .line 250
    :cond_0
    iput-object p1, p0, Landroidx/camera/camera2/internal/ZoomControl;->mPendingZoomCropRegion:Landroid/graphics/Rect;

    .line 251
    iput-object p2, p0, Landroidx/camera/camera2/internal/ZoomControl;->mPendingZoomRatioCompleter:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    .line 252
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 254
    if-eqz v0, :cond_1

    .line 255
    new-instance v1, Landroidx/camera/core/CameraControl$OperationCanceledException;

    const-string v2, "There is a new zoomRatio being set"

    invoke-direct {v1, v2}, Landroidx/camera/core/CameraControl$OperationCanceledException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->setException(Ljava/lang/Throwable;)Z

    .line 259
    :cond_1
    const-string v1, "setZoomRatio"

    return-object v1

    .line 252
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method setActive(Z)V
    .locals 6
    .param p1, "isActive"    # Z

    .line 112
    const/4 v0, 0x0

    .line 113
    .local v0, "completerToSetException":Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;, "Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer<Ljava/lang/Void;>;"
    const/4 v1, 0x0

    .line 116
    .local v1, "shouldResetDefault":Z
    iget-object v2, p0, Landroidx/camera/camera2/internal/ZoomControl;->mActiveLock:Ljava/lang/Object;

    monitor-enter v2

    .line 117
    :try_start_0
    iget-boolean v3, p0, Landroidx/camera/camera2/internal/ZoomControl;->mIsActive:Z

    if-ne v3, p1, :cond_0

    .line 118
    monitor-exit v2

    return-void

    .line 121
    :cond_0
    iput-boolean p1, p0, Landroidx/camera/camera2/internal/ZoomControl;->mIsActive:Z

    .line 123
    const/4 v3, 0x0

    if-nez p1, :cond_2

    .line 125
    iget-object v4, p0, Landroidx/camera/camera2/internal/ZoomControl;->mCompleterLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 126
    :try_start_1
    iget-object v5, p0, Landroidx/camera/camera2/internal/ZoomControl;->mPendingZoomRatioCompleter:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    if-eqz v5, :cond_1

    .line 127
    iget-object v5, p0, Landroidx/camera/camera2/internal/ZoomControl;->mPendingZoomRatioCompleter:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    move-object v0, v5

    .line 128
    iput-object v3, p0, Landroidx/camera/camera2/internal/ZoomControl;->mPendingZoomRatioCompleter:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    .line 129
    iput-object v3, p0, Landroidx/camera/camera2/internal/ZoomControl;->mPendingZoomCropRegion:Landroid/graphics/Rect;

    .line 131
    :cond_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 134
    const/4 v1, 0x1

    .line 135
    :try_start_2
    iget-object v4, p0, Landroidx/camera/camera2/internal/ZoomControl;->mCurrentZoomState:Landroidx/camera/camera2/internal/ZoomStateImpl;

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v4, v5}, Landroidx/camera/camera2/internal/ZoomStateImpl;->setZoomRatio(F)V

    .line 136
    iget-object v4, p0, Landroidx/camera/camera2/internal/ZoomControl;->mCurrentZoomState:Landroidx/camera/camera2/internal/ZoomStateImpl;

    invoke-static {v4}, Landroidx/camera/core/internal/ImmutableZoomState;->create(Landroidx/camera/core/ZoomState;)Landroidx/camera/core/ZoomState;

    move-result-object v4

    invoke-direct {p0, v4}, Landroidx/camera/camera2/internal/ZoomControl;->updateLiveData(Landroidx/camera/core/ZoomState;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    .line 131
    :catchall_0
    move-exception v3

    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .end local v0    # "completerToSetException":Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;, "Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer<Ljava/lang/Void;>;"
    .end local v1    # "shouldResetDefault":Z
    .end local p1    # "isActive":Z
    :try_start_4
    throw v3

    .line 138
    .restart local v0    # "completerToSetException":Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;, "Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer<Ljava/lang/Void;>;"
    .restart local v1    # "shouldResetDefault":Z
    .restart local p1    # "isActive":Z
    :cond_2
    :goto_0
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 140
    if-eqz v1, :cond_3

    .line 141
    iget-object v2, p0, Landroidx/camera/camera2/internal/ZoomControl;->mCamera2CameraControl:Landroidx/camera/camera2/internal/Camera2CameraControl;

    invoke-virtual {v2, v3}, Landroidx/camera/camera2/internal/Camera2CameraControl;->setCropRegion(Landroid/graphics/Rect;)V

    .line 144
    :cond_3
    if-eqz v0, :cond_4

    .line 145
    new-instance v2, Landroidx/camera/core/CameraControl$OperationCanceledException;

    const-string v3, "Camera is not active."

    invoke-direct {v2, v3}, Landroidx/camera/core/CameraControl$OperationCanceledException;-><init>(Ljava/lang/String;)V

    .line 146
    invoke-virtual {v0, v2}, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->setException(Ljava/lang/Throwable;)Z

    .line 148
    :cond_4
    return-void

    .line 138
    :catchall_1
    move-exception v3

    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v3
.end method

.method setLinearZoom(F)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 3
    .param p1, "linearZoom"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 286
    iget-object v0, p0, Landroidx/camera/camera2/internal/ZoomControl;->mActiveLock:Ljava/lang/Object;

    monitor-enter v0

    .line 287
    :try_start_0
    iget-boolean v1, p0, Landroidx/camera/camera2/internal/ZoomControl;->mIsActive:Z

    if-nez v1, :cond_0

    .line 288
    new-instance v1, Landroidx/camera/core/CameraControl$OperationCanceledException;

    const-string v2, "Camera is not active."

    invoke-direct {v1, v2}, Landroidx/camera/core/CameraControl$OperationCanceledException;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroidx/camera/core/impl/utils/futures/Futures;->immediateFailedFuture(Ljava/lang/Throwable;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    .line 295
    :cond_0
    :try_start_1
    iget-object v1, p0, Landroidx/camera/camera2/internal/ZoomControl;->mCurrentZoomState:Landroidx/camera/camera2/internal/ZoomStateImpl;

    invoke-virtual {v1, p1}, Landroidx/camera/camera2/internal/ZoomStateImpl;->setLinearZoom(F)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 298
    nop

    .line 300
    :try_start_2
    iget-object v1, p0, Landroidx/camera/camera2/internal/ZoomControl;->mCurrentZoomState:Landroidx/camera/camera2/internal/ZoomStateImpl;

    invoke-static {v1}, Landroidx/camera/core/internal/ImmutableZoomState;->create(Landroidx/camera/core/ZoomState;)Landroidx/camera/core/ZoomState;

    move-result-object v1

    invoke-direct {p0, v1}, Landroidx/camera/camera2/internal/ZoomControl;->updateLiveData(Landroidx/camera/core/ZoomState;)V

    .line 301
    iget-object v1, p0, Landroidx/camera/camera2/internal/ZoomControl;->mCurrentZoomState:Landroidx/camera/camera2/internal/ZoomStateImpl;

    invoke-virtual {v1}, Landroidx/camera/camera2/internal/ZoomStateImpl;->getZoomRatio()F

    move-result v1

    invoke-direct {p0, v1}, Landroidx/camera/camera2/internal/ZoomControl;->submitCameraZoomRatio(F)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 296
    :catch_0
    move-exception v1

    .line 297
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    invoke-static {v1}, Landroidx/camera/core/impl/utils/futures/Futures;->immediateFailedFuture(Ljava/lang/Throwable;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v2

    monitor-exit v0

    return-object v2

    .line 302
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method setZoomRatio(F)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 3
    .param p1, "ratio"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 200
    iget-object v0, p0, Landroidx/camera/camera2/internal/ZoomControl;->mActiveLock:Ljava/lang/Object;

    monitor-enter v0

    .line 201
    :try_start_0
    iget-boolean v1, p0, Landroidx/camera/camera2/internal/ZoomControl;->mIsActive:Z

    if-nez v1, :cond_0

    .line 202
    new-instance v1, Landroidx/camera/core/CameraControl$OperationCanceledException;

    const-string v2, "Camera is not active."

    invoke-direct {v1, v2}, Landroidx/camera/core/CameraControl$OperationCanceledException;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroidx/camera/core/impl/utils/futures/Futures;->immediateFailedFuture(Ljava/lang/Throwable;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    .line 209
    :cond_0
    :try_start_1
    iget-object v1, p0, Landroidx/camera/camera2/internal/ZoomControl;->mCurrentZoomState:Landroidx/camera/camera2/internal/ZoomStateImpl;

    invoke-virtual {v1, p1}, Landroidx/camera/camera2/internal/ZoomStateImpl;->setZoomRatio(F)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 212
    nop

    .line 214
    :try_start_2
    iget-object v1, p0, Landroidx/camera/camera2/internal/ZoomControl;->mCurrentZoomState:Landroidx/camera/camera2/internal/ZoomStateImpl;

    invoke-static {v1}, Landroidx/camera/core/internal/ImmutableZoomState;->create(Landroidx/camera/core/ZoomState;)Landroidx/camera/core/ZoomState;

    move-result-object v1

    invoke-direct {p0, v1}, Landroidx/camera/camera2/internal/ZoomControl;->updateLiveData(Landroidx/camera/core/ZoomState;)V

    .line 215
    invoke-direct {p0, p1}, Landroidx/camera/camera2/internal/ZoomControl;->submitCameraZoomRatio(F)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 210
    :catch_0
    move-exception v1

    .line 211
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    invoke-static {v1}, Landroidx/camera/core/impl/utils/futures/Futures;->immediateFailedFuture(Ljava/lang/Throwable;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v2

    monitor-exit v0

    return-object v2

    .line 216
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method
