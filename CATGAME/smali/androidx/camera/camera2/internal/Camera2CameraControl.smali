.class final Landroidx/camera/camera2/internal/Camera2CameraControl;
.super Ljava/lang/Object;
.source "Camera2CameraControl.java"

# interfaces
.implements Landroidx/camera/core/impl/CameraControlInternal;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/camera2/internal/Camera2CameraControl$CameraCaptureCallbackSet;,
        Landroidx/camera/camera2/internal/Camera2CameraControl$CameraControlSessionCallback;,
        Landroidx/camera/camera2/internal/Camera2CameraControl$CaptureResultListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Camera2CameraControl"


# instance fields
.field private final mAeFpsRange:Landroidx/camera/camera2/internal/AeFpsRange;

.field private final mCameraCaptureCallbackSet:Landroidx/camera/camera2/internal/Camera2CameraControl$CameraCaptureCallbackSet;

.field private final mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

.field private final mControlUpdateCallback:Landroidx/camera/core/impl/CameraControlInternal$ControlUpdateCallback;

.field private mCropRect:Landroid/graphics/Rect;

.field final mExecutor:Ljava/util/concurrent/Executor;

.field private volatile mFlashMode:I

.field private final mFocusMeteringControl:Landroidx/camera/camera2/internal/FocusMeteringControl;

.field private volatile mIsTorchOn:Z

.field volatile mPreviewAspectRatio:Landroid/util/Rational;

.field final mSessionCallback:Landroidx/camera/camera2/internal/Camera2CameraControl$CameraControlSessionCallback;

.field private final mSessionConfigBuilder:Landroidx/camera/core/impl/SessionConfig$Builder;

.field private final mTorchControl:Landroidx/camera/camera2/internal/TorchControl;

.field private final mZoomControl:Landroidx/camera/camera2/internal/ZoomControl;


# direct methods
.method constructor <init>(Landroid/hardware/camera2/CameraCharacteristics;Ljava/util/concurrent/ScheduledExecutorService;Ljava/util/concurrent/Executor;Landroidx/camera/core/impl/CameraControlInternal$ControlUpdateCallback;)V
    .locals 3

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    new-instance v0, Landroidx/camera/core/impl/SessionConfig$Builder;

    invoke-direct {v0}, Landroidx/camera/core/impl/SessionConfig$Builder;-><init>()V

    iput-object v0, p0, Landroidx/camera/camera2/internal/Camera2CameraControl;->mSessionConfigBuilder:Landroidx/camera/core/impl/SessionConfig$Builder;

    const/4 v1, 0x0

    .line 79
    iput-object v1, p0, Landroidx/camera/camera2/internal/Camera2CameraControl;->mPreviewAspectRatio:Landroid/util/Rational;

    const/4 v2, 0x0

    .line 86
    iput-boolean v2, p0, Landroidx/camera/camera2/internal/Camera2CameraControl;->mIsTorchOn:Z

    const/4 v2, 0x2

    .line 87
    iput v2, p0, Landroidx/camera/camera2/internal/Camera2CameraControl;->mFlashMode:I

    .line 91
    iput-object v1, p0, Landroidx/camera/camera2/internal/Camera2CameraControl;->mCropRect:Landroid/graphics/Rect;

    .line 92
    new-instance v1, Landroidx/camera/camera2/internal/Camera2CameraControl$CameraCaptureCallbackSet;

    invoke-direct {v1}, Landroidx/camera/camera2/internal/Camera2CameraControl$CameraCaptureCallbackSet;-><init>()V

    iput-object v1, p0, Landroidx/camera/camera2/internal/Camera2CameraControl;->mCameraCaptureCallbackSet:Landroidx/camera/camera2/internal/Camera2CameraControl$CameraCaptureCallbackSet;

    .line 112
    iput-object p1, p0, Landroidx/camera/camera2/internal/Camera2CameraControl;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    .line 113
    iput-object p4, p0, Landroidx/camera/camera2/internal/Camera2CameraControl;->mControlUpdateCallback:Landroidx/camera/core/impl/CameraControlInternal$ControlUpdateCallback;

    .line 114
    iput-object p3, p0, Landroidx/camera/camera2/internal/Camera2CameraControl;->mExecutor:Ljava/util/concurrent/Executor;

    .line 115
    new-instance p4, Landroidx/camera/camera2/internal/Camera2CameraControl$CameraControlSessionCallback;

    invoke-direct {p4, p3}, Landroidx/camera/camera2/internal/Camera2CameraControl$CameraControlSessionCallback;-><init>(Ljava/util/concurrent/Executor;)V

    iput-object p4, p0, Landroidx/camera/camera2/internal/Camera2CameraControl;->mSessionCallback:Landroidx/camera/camera2/internal/Camera2CameraControl$CameraControlSessionCallback;

    .line 116
    invoke-virtual {p0}, Landroidx/camera/camera2/internal/Camera2CameraControl;->getDefaultTemplate()I

    move-result v2

    invoke-virtual {v0, v2}, Landroidx/camera/core/impl/SessionConfig$Builder;->setTemplateType(I)V

    .line 118
    invoke-static {p4}, Landroidx/camera/camera2/internal/CaptureCallbackContainer;->create(Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;)Landroidx/camera/camera2/internal/CaptureCallbackContainer;

    move-result-object p4

    .line 117
    invoke-virtual {v0, p4}, Landroidx/camera/core/impl/SessionConfig$Builder;->addRepeatingCameraCaptureCallback(Landroidx/camera/core/impl/CameraCaptureCallback;)V

    .line 122
    invoke-virtual {v0, v1}, Landroidx/camera/core/impl/SessionConfig$Builder;->addRepeatingCameraCaptureCallback(Landroidx/camera/core/impl/CameraCaptureCallback;)V

    .line 124
    new-instance p4, Landroidx/camera/camera2/internal/FocusMeteringControl;

    invoke-direct {p4, p0, p2, p3}, Landroidx/camera/camera2/internal/FocusMeteringControl;-><init>(Landroidx/camera/camera2/internal/Camera2CameraControl;Ljava/util/concurrent/ScheduledExecutorService;Ljava/util/concurrent/Executor;)V

    iput-object p4, p0, Landroidx/camera/camera2/internal/Camera2CameraControl;->mFocusMeteringControl:Landroidx/camera/camera2/internal/FocusMeteringControl;

    .line 125
    new-instance p2, Landroidx/camera/camera2/internal/ZoomControl;

    invoke-direct {p2, p0, p1}, Landroidx/camera/camera2/internal/ZoomControl;-><init>(Landroidx/camera/camera2/internal/Camera2CameraControl;Landroid/hardware/camera2/CameraCharacteristics;)V

    iput-object p2, p0, Landroidx/camera/camera2/internal/Camera2CameraControl;->mZoomControl:Landroidx/camera/camera2/internal/ZoomControl;

    .line 126
    new-instance p2, Landroidx/camera/camera2/internal/TorchControl;

    invoke-direct {p2, p0, p1}, Landroidx/camera/camera2/internal/TorchControl;-><init>(Landroidx/camera/camera2/internal/Camera2CameraControl;Landroid/hardware/camera2/CameraCharacteristics;)V

    iput-object p2, p0, Landroidx/camera/camera2/internal/Camera2CameraControl;->mTorchControl:Landroidx/camera/camera2/internal/TorchControl;

    .line 127
    new-instance p2, Landroidx/camera/camera2/internal/AeFpsRange;

    invoke-direct {p2, p1}, Landroidx/camera/camera2/internal/AeFpsRange;-><init>(Landroid/hardware/camera2/CameraCharacteristics;)V

    iput-object p2, p0, Landroidx/camera/camera2/internal/Camera2CameraControl;->mAeFpsRange:Landroidx/camera/camera2/internal/AeFpsRange;

    .line 130
    new-instance p1, Landroidx/camera/camera2/internal/Camera2CameraControl$$ExternalSyntheticLambda5;

    invoke-direct {p1, p0}, Landroidx/camera/camera2/internal/Camera2CameraControl$$ExternalSyntheticLambda5;-><init>(Landroidx/camera/camera2/internal/Camera2CameraControl;)V

    invoke-interface {p3, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private getSupportedAeMode(I)I
    .locals 3

    .line 451
    iget-object v0, p0, Landroidx/camera/camera2/internal/Camera2CameraControl;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AE_AVAILABLE_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 458
    :cond_0
    invoke-direct {p0, p1, v0}, Landroidx/camera/camera2/internal/Camera2CameraControl;->isModeInList(I[I)Z

    move-result v2

    if-eqz v2, :cond_1

    return p1

    :cond_1
    const/4 p1, 0x1

    .line 463
    invoke-direct {p0, p1, v0}, Landroidx/camera/camera2/internal/Camera2CameraControl;->isModeInList(I[I)Z

    move-result v0

    if-eqz v0, :cond_2

    return p1

    :cond_2
    return v1
.end method

.method private getSupportedAwbMode(I)I
    .locals 3

    .line 481
    iget-object v0, p0, Landroidx/camera/camera2/internal/Camera2CameraControl;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AWB_AVAILABLE_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 488
    :cond_0
    invoke-direct {p0, p1, v0}, Landroidx/camera/camera2/internal/Camera2CameraControl;->isModeInList(I[I)Z

    move-result v2

    if-eqz v2, :cond_1

    return p1

    :cond_1
    const/4 p1, 0x1

    .line 493
    invoke-direct {p0, p1, v0}, Landroidx/camera/camera2/internal/Camera2CameraControl;->isModeInList(I[I)Z

    move-result v0

    if-eqz v0, :cond_2

    return p1

    :cond_2
    return v1
.end method

.method private isModeInList(I[I)Z
    .locals 4

    .line 502
    array-length v0, p2

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget v3, p2, v2

    if-ne p1, v3, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method


# virtual methods
.method addCaptureResultListener(Landroidx/camera/camera2/internal/Camera2CameraControl$CaptureResultListener;)V
    .locals 1

    .line 314
    iget-object v0, p0, Landroidx/camera/camera2/internal/Camera2CameraControl;->mSessionCallback:Landroidx/camera/camera2/internal/Camera2CameraControl$CameraControlSessionCallback;

    invoke-virtual {v0, p1}, Landroidx/camera/camera2/internal/Camera2CameraControl$CameraControlSessionCallback;->addListener(Landroidx/camera/camera2/internal/Camera2CameraControl$CaptureResultListener;)V

    return-void
.end method

.method addSessionCameraCaptureCallback(Ljava/util/concurrent/Executor;Landroidx/camera/core/impl/CameraCaptureCallback;)V
    .locals 2

    .line 320
    iget-object v0, p0, Landroidx/camera/camera2/internal/Camera2CameraControl;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroidx/camera/camera2/internal/Camera2CameraControl$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1, p2}, Landroidx/camera/camera2/internal/Camera2CameraControl$$ExternalSyntheticLambda3;-><init>(Landroidx/camera/camera2/internal/Camera2CameraControl;Ljava/util/concurrent/Executor;Landroidx/camera/core/impl/CameraCaptureCallback;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public cancelAfAeTrigger(ZZ)V
    .locals 2

    .line 262
    iget-object v0, p0, Landroidx/camera/camera2/internal/Camera2CameraControl;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroidx/camera/camera2/internal/Camera2CameraControl$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p1, p2}, Landroidx/camera/camera2/internal/Camera2CameraControl$$ExternalSyntheticLambda4;-><init>(Landroidx/camera/camera2/internal/Camera2CameraControl;ZZ)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public cancelFocusAndMetering()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 178
    iget-object v0, p0, Landroidx/camera/camera2/internal/Camera2CameraControl;->mFocusMeteringControl:Landroidx/camera/camera2/internal/FocusMeteringControl;

    invoke-virtual {v0}, Landroidx/camera/camera2/internal/FocusMeteringControl;->cancelFocusAndMetering()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method public enableTorch(Z)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 218
    iget-object v0, p0, Landroidx/camera/camera2/internal/Camera2CameraControl;->mTorchControl:Landroidx/camera/camera2/internal/TorchControl;

    invoke-virtual {v0, p1}, Landroidx/camera/camera2/internal/TorchControl;->enableTorch(Z)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method

.method enableTorchInternal(Z)V
    .locals 2

    .line 334
    iget-object v0, p0, Landroidx/camera/camera2/internal/Camera2CameraControl;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroidx/camera/camera2/internal/Camera2CameraControl$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Landroidx/camera/camera2/internal/Camera2CameraControl$$ExternalSyntheticLambda0;-><init>(Landroidx/camera/camera2/internal/Camera2CameraControl;Z)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method getCropSensorRegion()Landroid/graphics/Rect;
    .locals 1

    .line 292
    iget-object v0, p0, Landroidx/camera/camera2/internal/Camera2CameraControl;->mCropRect:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    .line 294
    invoke-virtual {p0}, Landroidx/camera/camera2/internal/Camera2CameraControl;->getSensorRect()Landroid/graphics/Rect;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method getDefaultTemplate()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getFlashMode()I
    .locals 1

    .line 202
    iget v0, p0, Landroidx/camera/camera2/internal/Camera2CameraControl;->mFlashMode:I

    return v0
.end method

.method getMaxAeRegionCount()I
    .locals 2

    .line 516
    iget-object v0, p0, Landroidx/camera/camera2/internal/Camera2CameraControl;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_MAX_REGIONS_AE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 517
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_0
    return v0
.end method

.method getMaxAfRegionCount()I
    .locals 2

    .line 511
    iget-object v0, p0, Landroidx/camera/camera2/internal/Camera2CameraControl;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_MAX_REGIONS_AF:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 512
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_0
    return v0
.end method

.method getMaxAwbRegionCount()I
    .locals 2

    .line 521
    iget-object v0, p0, Landroidx/camera/camera2/internal/Camera2CameraControl;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_MAX_REGIONS_AWB:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 522
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getSensorRect()Landroid/graphics/Rect;
    .locals 2

    .line 303
    iget-object v0, p0, Landroidx/camera/camera2/internal/Camera2CameraControl;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_ACTIVE_ARRAY_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 304
    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    .line 303
    invoke-static {v0}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    return-object v0
.end method

.method getSessionOptions()Landroidx/camera/core/impl/Config;
    .locals 4

    .line 369
    new-instance v0, Landroidx/camera/camera2/impl/Camera2ImplConfig$Builder;

    invoke-direct {v0}, Landroidx/camera/camera2/impl/Camera2ImplConfig$Builder;-><init>()V

    .line 370
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v2, 0x1

    .line 371
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 370
    invoke-virtual {v0, v1, v3}, Landroidx/camera/camera2/impl/Camera2ImplConfig$Builder;->setCaptureRequestOption(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Landroidx/camera/camera2/impl/Camera2ImplConfig$Builder;

    .line 374
    iget-object v1, p0, Landroidx/camera/camera2/internal/Camera2CameraControl;->mFocusMeteringControl:Landroidx/camera/camera2/internal/FocusMeteringControl;

    invoke-virtual {v1, v0}, Landroidx/camera/camera2/internal/FocusMeteringControl;->addFocusMeteringOptions(Landroidx/camera/camera2/impl/Camera2ImplConfig$Builder;)V

    .line 376
    iget-object v1, p0, Landroidx/camera/camera2/internal/Camera2CameraControl;->mAeFpsRange:Landroidx/camera/camera2/internal/AeFpsRange;

    invoke-virtual {v1, v0}, Landroidx/camera/camera2/internal/AeFpsRange;->addAeFpsRangeOptions(Landroidx/camera/camera2/impl/Camera2ImplConfig$Builder;)V

    .line 379
    iget-boolean v1, p0, Landroidx/camera/camera2/internal/Camera2CameraControl;->mIsTorchOn:Z

    const/4 v3, 0x2

    if-eqz v1, :cond_0

    .line 380
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->FLASH_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 381
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 380
    invoke-virtual {v0, v1, v3}, Landroidx/camera/camera2/impl/Camera2ImplConfig$Builder;->setCaptureRequestOption(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Landroidx/camera/camera2/impl/Camera2ImplConfig$Builder;

    goto :goto_0

    .line 383
    :cond_0
    iget v1, p0, Landroidx/camera/camera2/internal/Camera2CameraControl;->mFlashMode:I

    if-eqz v1, :cond_2

    if-eq v1, v2, :cond_1

    :goto_0
    move v3, v2

    goto :goto_1

    :cond_1
    const/4 v3, 0x3

    .line 395
    :cond_2
    :goto_1
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-direct {p0, v3}, Landroidx/camera/camera2/internal/Camera2CameraControl;->getSupportedAeMode(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroidx/camera/camera2/impl/Camera2ImplConfig$Builder;->setCaptureRequestOption(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Landroidx/camera/camera2/impl/Camera2ImplConfig$Builder;

    .line 397
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AWB_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 399
    invoke-direct {p0, v2}, Landroidx/camera/camera2/internal/Camera2CameraControl;->getSupportedAwbMode(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 397
    invoke-virtual {v0, v1, v2}, Landroidx/camera/camera2/impl/Camera2ImplConfig$Builder;->setCaptureRequestOption(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Landroidx/camera/camera2/impl/Camera2ImplConfig$Builder;

    .line 401
    iget-object v1, p0, Landroidx/camera/camera2/internal/Camera2CameraControl;->mCropRect:Landroid/graphics/Rect;

    if-eqz v1, :cond_3

    .line 402
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->SCALER_CROP_REGION:Landroid/hardware/camera2/CaptureRequest$Key;

    iget-object v2, p0, Landroidx/camera/camera2/internal/Camera2CameraControl;->mCropRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, v2}, Landroidx/camera/camera2/impl/Camera2ImplConfig$Builder;->setCaptureRequestOption(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Landroidx/camera/camera2/impl/Camera2ImplConfig$Builder;

    .line 405
    :cond_3
    invoke-virtual {v0}, Landroidx/camera/camera2/impl/Camera2ImplConfig$Builder;->build()Landroidx/camera/camera2/impl/Camera2ImplConfig;

    move-result-object v0

    return-object v0
.end method

.method getSupportedAfMode(I)I
    .locals 3

    .line 420
    iget-object v0, p0, Landroidx/camera/camera2/internal/Camera2CameraControl;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AF_AVAILABLE_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 426
    :cond_0
    invoke-direct {p0, p1, v0}, Landroidx/camera/camera2/internal/Camera2CameraControl;->isModeInList(I[I)Z

    move-result v2

    if-eqz v2, :cond_1

    return p1

    :cond_1
    const/4 p1, 0x4

    .line 431
    invoke-direct {p0, p1, v0}, Landroidx/camera/camera2/internal/Camera2CameraControl;->isModeInList(I[I)Z

    move-result v2

    if-eqz v2, :cond_2

    return p1

    :cond_2
    const/4 p1, 0x1

    .line 433
    invoke-direct {p0, p1, v0}, Landroidx/camera/camera2/internal/Camera2CameraControl;->isModeInList(I[I)Z

    move-result v0

    if-eqz v0, :cond_3

    return p1

    :cond_3
    return v1
.end method

.method public getTorchControl()Landroidx/camera/camera2/internal/TorchControl;
    .locals 1

    .line 140
    iget-object v0, p0, Landroidx/camera/camera2/internal/Camera2CameraControl;->mTorchControl:Landroidx/camera/camera2/internal/TorchControl;

    return-object v0
.end method

.method public getZoomControl()Landroidx/camera/camera2/internal/ZoomControl;
    .locals 1

    .line 135
    iget-object v0, p0, Landroidx/camera/camera2/internal/Camera2CameraControl;->mZoomControl:Landroidx/camera/camera2/internal/ZoomControl;

    return-object v0
.end method

.method synthetic lambda$addSessionCameraCaptureCallback$7$androidx-camera-camera2-internal-Camera2CameraControl(Ljava/util/concurrent/Executor;Landroidx/camera/core/impl/CameraCaptureCallback;)V
    .locals 1

    .line 321
    iget-object v0, p0, Landroidx/camera/camera2/internal/Camera2CameraControl;->mCameraCaptureCallbackSet:Landroidx/camera/camera2/internal/Camera2CameraControl$CameraCaptureCallbackSet;

    invoke-virtual {v0, p1, p2}, Landroidx/camera/camera2/internal/Camera2CameraControl$CameraCaptureCallbackSet;->addCaptureCallback(Ljava/util/concurrent/Executor;Landroidx/camera/core/impl/CameraCaptureCallback;)V

    return-void
.end method

.method synthetic lambda$cancelAfAeTrigger$5$androidx-camera-camera2-internal-Camera2CameraControl(ZZ)V
    .locals 1

    .line 262
    iget-object v0, p0, Landroidx/camera/camera2/internal/Camera2CameraControl;->mFocusMeteringControl:Landroidx/camera/camera2/internal/FocusMeteringControl;

    invoke-virtual {v0, p1, p2}, Landroidx/camera/camera2/internal/FocusMeteringControl;->cancelAfAeTrigger(ZZ)V

    return-void
.end method

.method synthetic lambda$enableTorchInternal$9$androidx-camera-camera2-internal-Camera2CameraControl(Z)V
    .locals 3

    .line 335
    iput-boolean p1, p0, Landroidx/camera/camera2/internal/Camera2CameraControl;->mIsTorchOn:Z

    if-nez p1, :cond_0

    .line 338
    new-instance p1, Landroidx/camera/core/impl/CaptureConfig$Builder;

    invoke-direct {p1}, Landroidx/camera/core/impl/CaptureConfig$Builder;-><init>()V

    .line 339
    invoke-virtual {p0}, Landroidx/camera/camera2/internal/Camera2CameraControl;->getDefaultTemplate()I

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/camera/core/impl/CaptureConfig$Builder;->setTemplateType(I)V

    const/4 v0, 0x1

    .line 340
    invoke-virtual {p1, v0}, Landroidx/camera/core/impl/CaptureConfig$Builder;->setUseRepeatingSurface(Z)V

    .line 341
    new-instance v1, Landroidx/camera/camera2/impl/Camera2ImplConfig$Builder;

    invoke-direct {v1}, Landroidx/camera/camera2/impl/Camera2ImplConfig$Builder;-><init>()V

    .line 342
    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 343
    invoke-direct {p0, v0}, Landroidx/camera/camera2/internal/Camera2CameraControl;->getSupportedAeMode(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 342
    invoke-virtual {v1, v2, v0}, Landroidx/camera/camera2/impl/Camera2ImplConfig$Builder;->setCaptureRequestOption(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Landroidx/camera/camera2/impl/Camera2ImplConfig$Builder;

    .line 344
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->FLASH_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v2, 0x0

    .line 345
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 344
    invoke-virtual {v1, v0, v2}, Landroidx/camera/camera2/impl/Camera2ImplConfig$Builder;->setCaptureRequestOption(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Landroidx/camera/camera2/impl/Camera2ImplConfig$Builder;

    .line 346
    invoke-virtual {v1}, Landroidx/camera/camera2/impl/Camera2ImplConfig$Builder;->build()Landroidx/camera/camera2/impl/Camera2ImplConfig;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/camera/core/impl/CaptureConfig$Builder;->addImplementationOptions(Landroidx/camera/core/impl/Config;)V

    .line 348
    invoke-virtual {p1}, Landroidx/camera/core/impl/CaptureConfig$Builder;->build()Landroidx/camera/core/impl/CaptureConfig;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 347
    invoke-virtual {p0, p1}, Landroidx/camera/camera2/internal/Camera2CameraControl;->submitCaptureRequestsInternal(Ljava/util/List;)V

    .line 350
    :cond_0
    invoke-virtual {p0}, Landroidx/camera/camera2/internal/Camera2CameraControl;->updateSessionConfig()V

    return-void
.end method

.method synthetic lambda$removeSessionCameraCaptureCallback$8$androidx-camera-camera2-internal-Camera2CameraControl(Landroidx/camera/core/impl/CameraCaptureCallback;)V
    .locals 1

    .line 328
    iget-object v0, p0, Landroidx/camera/camera2/internal/Camera2CameraControl;->mCameraCaptureCallbackSet:Landroidx/camera/camera2/internal/Camera2CameraControl$CameraCaptureCallbackSet;

    invoke-virtual {v0, p1}, Landroidx/camera/camera2/internal/Camera2CameraControl$CameraCaptureCallbackSet;->removeCaptureCallback(Landroidx/camera/core/impl/CameraCaptureCallback;)V

    return-void
.end method

.method synthetic lambda$setCropRegion$0$androidx-camera-camera2-internal-Camera2CameraControl(Landroid/graphics/Rect;)V
    .locals 0

    .line 196
    invoke-virtual {p0, p1}, Landroidx/camera/camera2/internal/Camera2CameraControl;->setCropRegionInternal(Landroid/graphics/Rect;)V

    return-void
.end method

.method synthetic lambda$submitCaptureRequests$6$androidx-camera-camera2-internal-Camera2CameraControl(Ljava/util/List;)V
    .locals 0

    .line 269
    invoke-virtual {p0, p1}, Landroidx/camera/camera2/internal/Camera2CameraControl;->submitCaptureRequestsInternal(Ljava/util/List;)V

    return-void
.end method

.method synthetic lambda$triggerAePrecapture$3$androidx-camera-camera2-internal-Camera2CameraControl(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)V
    .locals 1

    .line 249
    iget-object v0, p0, Landroidx/camera/camera2/internal/Camera2CameraControl;->mFocusMeteringControl:Landroidx/camera/camera2/internal/FocusMeteringControl;

    invoke-virtual {v0, p1}, Landroidx/camera/camera2/internal/FocusMeteringControl;->triggerAePrecapture(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)V

    return-void
.end method

.method synthetic lambda$triggerAePrecapture$4$androidx-camera-camera2-internal-Camera2CameraControl(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 249
    iget-object v0, p0, Landroidx/camera/camera2/internal/Camera2CameraControl;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroidx/camera/camera2/internal/Camera2CameraControl$$ExternalSyntheticLambda10;

    invoke-direct {v1, p0, p1}, Landroidx/camera/camera2/internal/Camera2CameraControl$$ExternalSyntheticLambda10;-><init>(Landroidx/camera/camera2/internal/Camera2CameraControl;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    const-string p1, "triggerAePrecapture"

    return-object p1
.end method

.method synthetic lambda$triggerAf$1$androidx-camera-camera2-internal-Camera2CameraControl(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)V
    .locals 1

    .line 232
    iget-object v0, p0, Landroidx/camera/camera2/internal/Camera2CameraControl;->mFocusMeteringControl:Landroidx/camera/camera2/internal/FocusMeteringControl;

    invoke-virtual {v0, p1}, Landroidx/camera/camera2/internal/FocusMeteringControl;->triggerAf(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)V

    return-void
.end method

.method synthetic lambda$triggerAf$2$androidx-camera-camera2-internal-Camera2CameraControl(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 232
    iget-object v0, p0, Landroidx/camera/camera2/internal/Camera2CameraControl;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroidx/camera/camera2/internal/Camera2CameraControl$$ExternalSyntheticLambda9;

    invoke-direct {v1, p0, p1}, Landroidx/camera/camera2/internal/Camera2CameraControl$$ExternalSyntheticLambda9;-><init>(Landroidx/camera/camera2/internal/Camera2CameraControl;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    const-string p1, "triggerAf"

    return-object p1
.end method

.method removeCaptureResultListener(Landroidx/camera/camera2/internal/Camera2CameraControl$CaptureResultListener;)V
    .locals 1

    .line 309
    iget-object v0, p0, Landroidx/camera/camera2/internal/Camera2CameraControl;->mSessionCallback:Landroidx/camera/camera2/internal/Camera2CameraControl$CameraControlSessionCallback;

    invoke-virtual {v0, p1}, Landroidx/camera/camera2/internal/Camera2CameraControl$CameraControlSessionCallback;->removeListener(Landroidx/camera/camera2/internal/Camera2CameraControl$CaptureResultListener;)V

    return-void
.end method

.method removeSessionCameraCaptureCallback(Landroidx/camera/core/impl/CameraCaptureCallback;)V
    .locals 2

    .line 327
    iget-object v0, p0, Landroidx/camera/camera2/internal/Camera2CameraControl;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroidx/camera/camera2/internal/Camera2CameraControl$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0, p1}, Landroidx/camera/camera2/internal/Camera2CameraControl$$ExternalSyntheticLambda8;-><init>(Landroidx/camera/camera2/internal/Camera2CameraControl;Landroidx/camera/core/impl/CameraCaptureCallback;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method setActive(Z)V
    .locals 1

    .line 150
    iget-object v0, p0, Landroidx/camera/camera2/internal/Camera2CameraControl;->mFocusMeteringControl:Landroidx/camera/camera2/internal/FocusMeteringControl;

    invoke-virtual {v0, p1}, Landroidx/camera/camera2/internal/FocusMeteringControl;->setActive(Z)V

    .line 151
    iget-object v0, p0, Landroidx/camera/camera2/internal/Camera2CameraControl;->mZoomControl:Landroidx/camera/camera2/internal/ZoomControl;

    invoke-virtual {v0, p1}, Landroidx/camera/camera2/internal/ZoomControl;->setActive(Z)V

    .line 152
    iget-object v0, p0, Landroidx/camera/camera2/internal/Camera2CameraControl;->mTorchControl:Landroidx/camera/camera2/internal/TorchControl;

    invoke-virtual {v0, p1}, Landroidx/camera/camera2/internal/TorchControl;->setActive(Z)V

    return-void
.end method

.method public setCropRegion(Landroid/graphics/Rect;)V
    .locals 2

    .line 196
    iget-object v0, p0, Landroidx/camera/camera2/internal/Camera2CameraControl;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroidx/camera/camera2/internal/Camera2CameraControl$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0, p1}, Landroidx/camera/camera2/internal/Camera2CameraControl$$ExternalSyntheticLambda7;-><init>(Landroidx/camera/camera2/internal/Camera2CameraControl;Landroid/graphics/Rect;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method setCropRegionInternal(Landroid/graphics/Rect;)V
    .locals 0

    .line 285
    iput-object p1, p0, Landroidx/camera/camera2/internal/Camera2CameraControl;->mCropRect:Landroid/graphics/Rect;

    .line 286
    invoke-virtual {p0}, Landroidx/camera/camera2/internal/Camera2CameraControl;->updateSessionConfig()V

    return-void
.end method

.method public setDefaultRequestBuilder(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 1

    .line 165
    iget-object v0, p0, Landroidx/camera/camera2/internal/Camera2CameraControl;->mFocusMeteringControl:Landroidx/camera/camera2/internal/FocusMeteringControl;

    invoke-virtual {v0, p1}, Landroidx/camera/camera2/internal/FocusMeteringControl;->setDefaultRequestBuilder(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method public setFlashMode(I)V
    .locals 1

    .line 209
    iput p1, p0, Landroidx/camera/camera2/internal/Camera2CameraControl;->mFlashMode:I

    .line 211
    iget-object p1, p0, Landroidx/camera/camera2/internal/Camera2CameraControl;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v0, Landroidx/camera/camera2/internal/Camera2CameraControl$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0}, Landroidx/camera/camera2/internal/Camera2CameraControl$$ExternalSyntheticLambda5;-><init>(Landroidx/camera/camera2/internal/Camera2CameraControl;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setLinearZoom(F)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 190
    iget-object v0, p0, Landroidx/camera/camera2/internal/Camera2CameraControl;->mZoomControl:Landroidx/camera/camera2/internal/ZoomControl;

    invoke-virtual {v0, p1}, Landroidx/camera/camera2/internal/ZoomControl;->setLinearZoom(F)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method

.method public setPreviewAspectRatio(Landroid/util/Rational;)V
    .locals 0

    .line 157
    iput-object p1, p0, Landroidx/camera/camera2/internal/Camera2CameraControl;->mPreviewAspectRatio:Landroid/util/Rational;

    return-void
.end method

.method public setZoomRatio(F)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 184
    iget-object v0, p0, Landroidx/camera/camera2/internal/Camera2CameraControl;->mZoomControl:Landroidx/camera/camera2/internal/ZoomControl;

    invoke-virtual {v0, p1}, Landroidx/camera/camera2/internal/ZoomControl;->setZoomRatio(F)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method

.method public startFocusAndMetering(Landroidx/camera/core/FocusMeteringAction;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/camera/core/FocusMeteringAction;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroidx/camera/core/FocusMeteringResult;",
            ">;"
        }
    .end annotation

    .line 172
    iget-object v0, p0, Landroidx/camera/camera2/internal/Camera2CameraControl;->mFocusMeteringControl:Landroidx/camera/camera2/internal/FocusMeteringControl;

    iget-object v1, p0, Landroidx/camera/camera2/internal/Camera2CameraControl;->mPreviewAspectRatio:Landroid/util/Rational;

    invoke-virtual {v0, p1, v1}, Landroidx/camera/camera2/internal/FocusMeteringControl;->startFocusAndMetering(Landroidx/camera/core/FocusMeteringAction;Landroid/util/Rational;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method

.method public submitCaptureRequests(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/camera/core/impl/CaptureConfig;",
            ">;)V"
        }
    .end annotation

    .line 269
    iget-object v0, p0, Landroidx/camera/camera2/internal/Camera2CameraControl;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroidx/camera/camera2/internal/Camera2CameraControl$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0, p1}, Landroidx/camera/camera2/internal/Camera2CameraControl$$ExternalSyntheticLambda6;-><init>(Landroidx/camera/camera2/internal/Camera2CameraControl;Ljava/util/List;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method submitCaptureRequestsInternal(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/camera/core/impl/CaptureConfig;",
            ">;)V"
        }
    .end annotation

    .line 357
    iget-object v0, p0, Landroidx/camera/camera2/internal/Camera2CameraControl;->mControlUpdateCallback:Landroidx/camera/core/impl/CameraControlInternal$ControlUpdateCallback;

    invoke-interface {v0, p1}, Landroidx/camera/core/impl/CameraControlInternal$ControlUpdateCallback;->onCameraControlCaptureRequests(Ljava/util/List;)V

    return-void
.end method

.method public triggerAePrecapture()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroidx/camera/core/impl/CameraCaptureResult;",
            ">;"
        }
    .end annotation

    .line 247
    new-instance v0, Landroidx/camera/camera2/internal/Camera2CameraControl$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Landroidx/camera/camera2/internal/Camera2CameraControl$$ExternalSyntheticLambda2;-><init>(Landroidx/camera/camera2/internal/Camera2CameraControl;)V

    invoke-static {v0}, Landroidx/concurrent/futures/CallbackToFutureAdapter;->getFuture(Landroidx/concurrent/futures/CallbackToFutureAdapter$Resolver;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    invoke-static {v0}, Landroidx/camera/core/impl/utils/futures/Futures;->nonCancellationPropagating(Lcom/google/common/util/concurrent/ListenableFuture;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method public triggerAf()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroidx/camera/core/impl/CameraCaptureResult;",
            ">;"
        }
    .end annotation

    .line 230
    new-instance v0, Landroidx/camera/camera2/internal/Camera2CameraControl$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Landroidx/camera/camera2/internal/Camera2CameraControl$$ExternalSyntheticLambda1;-><init>(Landroidx/camera/camera2/internal/Camera2CameraControl;)V

    invoke-static {v0}, Landroidx/concurrent/futures/CallbackToFutureAdapter;->getFuture(Landroidx/concurrent/futures/CallbackToFutureAdapter$Resolver;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    invoke-static {v0}, Landroidx/camera/core/impl/utils/futures/Futures;->nonCancellationPropagating(Lcom/google/common/util/concurrent/ListenableFuture;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method updateSessionConfig()V
    .locals 2

    .line 278
    iget-object v0, p0, Landroidx/camera/camera2/internal/Camera2CameraControl;->mSessionConfigBuilder:Landroidx/camera/core/impl/SessionConfig$Builder;

    invoke-virtual {p0}, Landroidx/camera/camera2/internal/Camera2CameraControl;->getSessionOptions()Landroidx/camera/core/impl/Config;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/camera/core/impl/SessionConfig$Builder;->setImplementationOptions(Landroidx/camera/core/impl/Config;)V

    .line 279
    iget-object v0, p0, Landroidx/camera/camera2/internal/Camera2CameraControl;->mControlUpdateCallback:Landroidx/camera/core/impl/CameraControlInternal$ControlUpdateCallback;

    iget-object v1, p0, Landroidx/camera/camera2/internal/Camera2CameraControl;->mSessionConfigBuilder:Landroidx/camera/core/impl/SessionConfig$Builder;

    invoke-virtual {v1}, Landroidx/camera/core/impl/SessionConfig$Builder;->build()Landroidx/camera/core/impl/SessionConfig;

    move-result-object v1

    invoke-interface {v0, v1}, Landroidx/camera/core/impl/CameraControlInternal$ControlUpdateCallback;->onCameraControlUpdateSessionConfig(Landroidx/camera/core/impl/SessionConfig;)V

    return-void
.end method
