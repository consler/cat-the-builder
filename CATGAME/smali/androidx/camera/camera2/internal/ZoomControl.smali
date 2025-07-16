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
    .locals 2

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroidx/camera/camera2/internal/ZoomControl;->mCompleterLock:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 79
    iput-object v0, p0, Landroidx/camera/camera2/internal/ZoomControl;->mPendingZoomCropRegion:Landroid/graphics/Rect;

    .line 83
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroidx/camera/camera2/internal/ZoomControl;->mActiveLock:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 89
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

    move-result p2

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {v0, p2, v1}, Landroidx/camera/camera2/internal/ZoomStateImpl;-><init>(FF)V

    iput-object v0, p0, Landroidx/camera/camera2/internal/ZoomControl;->mCurrentZoomState:Landroidx/camera/camera2/internal/ZoomStateImpl;

    .line 98
    invoke-virtual {v0, v1}, Landroidx/camera/camera2/internal/ZoomStateImpl;->setZoomRatio(F)V

    .line 99
    new-instance p2, Landroidx/lifecycle/MutableLiveData;

    invoke-static {v0}, Landroidx/camera/core/internal/ImmutableZoomState;->create(Landroidx/camera/core/ZoomState;)Landroidx/camera/core/ZoomState;

    move-result-object v0

    invoke-direct {p2, v0}, Landroidx/lifecycle/MutableLiveData;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Landroidx/camera/camera2/internal/ZoomControl;->mZoomStateLiveData:Landroidx/lifecycle/MutableLiveData;

    .line 101
    iget-object p2, p0, Landroidx/camera/camera2/internal/ZoomControl;->mCaptureResultListener:Landroidx/camera/camera2/internal/Camera2CameraControl$CaptureResultListener;

    invoke-virtual {p1, p2}, Landroidx/camera/camera2/internal/Camera2CameraControl;->addCaptureResultListener(Landroidx/camera/camera2/internal/Camera2CameraControl$CaptureResultListener;)V

    return-void
.end method

.method static getCropRectByRatio(Landroid/graphics/Rect;F)Landroid/graphics/Rect;
    .locals 5

    .line 222
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, p1

    .line 223
    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, p1

    .line 224
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result p1

    int-to-float p1, p1

    sub-float/2addr p1, v0

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr p1, v2

    .line 225
    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    int-to-float p0, p0

    sub-float/2addr p0, v1

    div-float/2addr p0, v2

    .line 226
    new-instance v2, Landroid/graphics/Rect;

    float-to-int v3, p1

    float-to-int v4, p0

    add-float/2addr p1, v0

    float-to-int p1, p1

    add-float/2addr p0, v1

    float-to-int p0, p0

    invoke-direct {v2, v3, v4, p1, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v2
.end method

.method private static getMaxDigitalZoom(Landroid/hardware/camera2/CameraCharacteristics;)F
    .locals 1

    .line 324
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_AVAILABLE_MAX_DIGITAL_ZOOM:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p0, v0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    if-nez p0, :cond_0

    const/high16 p0, 0x3f800000    # 1.0f

    return p0

    .line 331
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    return p0
.end method

.method private submitCameraZoomRatio(F)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1
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
    invoke-static {v0, p1}, Landroidx/camera/camera2/internal/ZoomControl;->getCropRectByRatio(Landroid/graphics/Rect;F)Landroid/graphics/Rect;

    move-result-object p1

    .line 241
    iget-object v0, p0, Landroidx/camera/camera2/internal/ZoomControl;->mCamera2CameraControl:Landroidx/camera/camera2/internal/Camera2CameraControl;

    invoke-virtual {v0, p1}, Landroidx/camera/camera2/internal/Camera2CameraControl;->setCropRegion(Landroid/graphics/Rect;)V

    .line 243
    new-instance v0, Landroidx/camera/camera2/internal/ZoomControl$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Landroidx/camera/camera2/internal/ZoomControl$$ExternalSyntheticLambda0;-><init>(Landroidx/camera/camera2/internal/ZoomControl;Landroid/graphics/Rect;)V

    invoke-static {v0}, Landroidx/concurrent/futures/CallbackToFutureAdapter;->getFuture(Landroidx/concurrent/futures/CallbackToFutureAdapter$Resolver;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method

.method private updateLiveData(Landroidx/camera/core/ZoomState;)V
    .locals 2

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

.method synthetic lambda$submitCameraZoomRatio$0$androidx-camera-camera2-internal-ZoomControl(Landroid/graphics/Rect;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 245
    iget-object v0, p0, Landroidx/camera/camera2/internal/ZoomControl;->mCompleterLock:Ljava/lang/Object;

    monitor-enter v0

    .line 246
    :try_start_0
    iget-object v1, p0, Landroidx/camera/camera2/internal/ZoomControl;->mPendingZoomRatioCompleter:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 248
    iput-object v2, p0, Landroidx/camera/camera2/internal/ZoomControl;->mPendingZoomRatioCompleter:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    goto :goto_0

    :cond_0
    move-object v1, v2

    .line 250
    :goto_0
    iput-object p1, p0, Landroidx/camera/camera2/internal/ZoomControl;->mPendingZoomCropRegion:Landroid/graphics/Rect;

    .line 251
    iput-object p2, p0, Landroidx/camera/camera2/internal/ZoomControl;->mPendingZoomRatioCompleter:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    .line 252
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    .line 255
    new-instance p1, Landroidx/camera/core/CameraControl$OperationCanceledException;

    const-string p2, "There is a new zoomRatio being set"

    invoke-direct {p1, p2}, Landroidx/camera/core/CameraControl$OperationCanceledException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->setException(Ljava/lang/Throwable;)Z

    :cond_1
    const-string p1, "setZoomRatio"

    return-object p1

    :catchall_0
    move-exception p1

    .line 252
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method setActive(Z)V
    .locals 4

    .line 116
    iget-object v0, p0, Landroidx/camera/camera2/internal/ZoomControl;->mActiveLock:Ljava/lang/Object;

    monitor-enter v0

    .line 117
    :try_start_0
    iget-boolean v1, p0, Landroidx/camera/camera2/internal/ZoomControl;->mIsActive:Z

    if-ne v1, p1, :cond_0

    .line 118
    monitor-exit v0

    return-void

    .line 121
    :cond_0
    iput-boolean p1, p0, Landroidx/camera/camera2/internal/ZoomControl;->mIsActive:Z

    const/4 v1, 0x0

    if-nez p1, :cond_2

    .line 125
    iget-object p1, p0, Landroidx/camera/camera2/internal/ZoomControl;->mCompleterLock:Ljava/lang/Object;

    monitor-enter p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 126
    :try_start_1
    iget-object v2, p0, Landroidx/camera/camera2/internal/ZoomControl;->mPendingZoomRatioCompleter:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    if-eqz v2, :cond_1

    .line 128
    iput-object v1, p0, Landroidx/camera/camera2/internal/ZoomControl;->mPendingZoomRatioCompleter:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    .line 129
    iput-object v1, p0, Landroidx/camera/camera2/internal/ZoomControl;->mPendingZoomCropRegion:Landroid/graphics/Rect;

    goto :goto_0

    :cond_1
    move-object v2, v1

    .line 131
    :goto_0
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 135
    :try_start_2
    iget-object p1, p0, Landroidx/camera/camera2/internal/ZoomControl;->mCurrentZoomState:Landroidx/camera/camera2/internal/ZoomStateImpl;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {p1, v3}, Landroidx/camera/camera2/internal/ZoomStateImpl;->setZoomRatio(F)V

    .line 136
    iget-object p1, p0, Landroidx/camera/camera2/internal/ZoomControl;->mCurrentZoomState:Landroidx/camera/camera2/internal/ZoomStateImpl;

    invoke-static {p1}, Landroidx/camera/core/internal/ImmutableZoomState;->create(Landroidx/camera/core/ZoomState;)Landroidx/camera/core/ZoomState;

    move-result-object p1

    invoke-direct {p0, p1}, Landroidx/camera/camera2/internal/ZoomControl;->updateLiveData(Landroidx/camera/core/ZoomState;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const/4 p1, 0x1

    goto :goto_1

    :catchall_0
    move-exception v1

    .line 131
    :try_start_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1

    :cond_2
    const/4 p1, 0x0

    move-object v2, v1

    .line 138
    :goto_1
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz p1, :cond_3

    .line 141
    iget-object p1, p0, Landroidx/camera/camera2/internal/ZoomControl;->mCamera2CameraControl:Landroidx/camera/camera2/internal/Camera2CameraControl;

    invoke-virtual {p1, v1}, Landroidx/camera/camera2/internal/Camera2CameraControl;->setCropRegion(Landroid/graphics/Rect;)V

    :cond_3
    if-eqz v2, :cond_4

    .line 145
    new-instance p1, Landroidx/camera/core/CameraControl$OperationCanceledException;

    const-string v0, "Camera is not active."

    invoke-direct {p1, v0}, Landroidx/camera/core/CameraControl$OperationCanceledException;-><init>(Ljava/lang/String;)V

    .line 146
    invoke-virtual {v2, p1}, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->setException(Ljava/lang/Throwable;)Z

    :cond_4
    return-void

    :catchall_1
    move-exception p1

    .line 138
    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw p1
.end method

.method setLinearZoom(F)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2
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
    new-instance p1, Landroidx/camera/core/CameraControl$OperationCanceledException;

    const-string v1, "Camera is not active."

    invoke-direct {p1, v1}, Landroidx/camera/core/CameraControl$OperationCanceledException;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Landroidx/camera/core/impl/utils/futures/Futures;->immediateFailedFuture(Ljava/lang/Throwable;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    .line 295
    :cond_0
    :try_start_1
    iget-object v1, p0, Landroidx/camera/camera2/internal/ZoomControl;->mCurrentZoomState:Landroidx/camera/camera2/internal/ZoomStateImpl;

    invoke-virtual {v1, p1}, Landroidx/camera/camera2/internal/ZoomStateImpl;->setLinearZoom(F)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 300
    :try_start_2
    iget-object p1, p0, Landroidx/camera/camera2/internal/ZoomControl;->mCurrentZoomState:Landroidx/camera/camera2/internal/ZoomStateImpl;

    invoke-static {p1}, Landroidx/camera/core/internal/ImmutableZoomState;->create(Landroidx/camera/core/ZoomState;)Landroidx/camera/core/ZoomState;

    move-result-object p1

    invoke-direct {p0, p1}, Landroidx/camera/camera2/internal/ZoomControl;->updateLiveData(Landroidx/camera/core/ZoomState;)V

    .line 301
    iget-object p1, p0, Landroidx/camera/camera2/internal/ZoomControl;->mCurrentZoomState:Landroidx/camera/camera2/internal/ZoomStateImpl;

    invoke-virtual {p1}, Landroidx/camera/camera2/internal/ZoomStateImpl;->getZoomRatio()F

    move-result p1

    invoke-direct {p0, p1}, Landroidx/camera/camera2/internal/ZoomControl;->submitCameraZoomRatio(F)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :catch_0
    move-exception p1

    .line 297
    invoke-static {p1}, Landroidx/camera/core/impl/utils/futures/Futures;->immediateFailedFuture(Ljava/lang/Throwable;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 302
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method setZoomRatio(F)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2
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
    new-instance p1, Landroidx/camera/core/CameraControl$OperationCanceledException;

    const-string v1, "Camera is not active."

    invoke-direct {p1, v1}, Landroidx/camera/core/CameraControl$OperationCanceledException;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Landroidx/camera/core/impl/utils/futures/Futures;->immediateFailedFuture(Ljava/lang/Throwable;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    .line 209
    :cond_0
    :try_start_1
    iget-object v1, p0, Landroidx/camera/camera2/internal/ZoomControl;->mCurrentZoomState:Landroidx/camera/camera2/internal/ZoomStateImpl;

    invoke-virtual {v1, p1}, Landroidx/camera/camera2/internal/ZoomStateImpl;->setZoomRatio(F)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 214
    :try_start_2
    iget-object v1, p0, Landroidx/camera/camera2/internal/ZoomControl;->mCurrentZoomState:Landroidx/camera/camera2/internal/ZoomStateImpl;

    invoke-static {v1}, Landroidx/camera/core/internal/ImmutableZoomState;->create(Landroidx/camera/core/ZoomState;)Landroidx/camera/core/ZoomState;

    move-result-object v1

    invoke-direct {p0, v1}, Landroidx/camera/camera2/internal/ZoomControl;->updateLiveData(Landroidx/camera/core/ZoomState;)V

    .line 215
    invoke-direct {p0, p1}, Landroidx/camera/camera2/internal/ZoomControl;->submitCameraZoomRatio(F)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :catch_0
    move-exception p1

    .line 211
    invoke-static {p1}, Landroidx/camera/core/impl/utils/futures/Futures;->immediateFailedFuture(Ljava/lang/Throwable;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 216
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method
