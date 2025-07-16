.class public final Landroidx/camera/core/ImageCapture;
.super Landroidx/camera/core/UseCase;
.source "ImageCapture.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/core/ImageCapture$Builder;,
        Landroidx/camera/core/ImageCapture$ImageCaptureRequest;,
        Landroidx/camera/core/ImageCapture$CaptureCallbackChecker;,
        Landroidx/camera/core/ImageCapture$TakePictureState;,
        Landroidx/camera/core/ImageCapture$Metadata;,
        Landroidx/camera/core/ImageCapture$OutputFileResults;,
        Landroidx/camera/core/ImageCapture$OutputFileOptions;,
        Landroidx/camera/core/ImageCapture$Defaults;,
        Landroidx/camera/core/ImageCapture$OnImageCapturedCallback;,
        Landroidx/camera/core/ImageCapture$OnImageSavedCallback;,
        Landroidx/camera/core/ImageCapture$FlashMode;,
        Landroidx/camera/core/ImageCapture$CaptureMode;,
        Landroidx/camera/core/ImageCapture$ImageCaptureError;,
        Landroidx/camera/core/ImageCapture$CaptureFailedException;,
        Landroidx/camera/core/ImageCapture$ImageCaptureRequestProcessor;
    }
.end annotation


# static fields
.field public static final CAPTURE_MODE_MAXIMIZE_QUALITY:I = 0x0

.field public static final CAPTURE_MODE_MINIMIZE_LATENCY:I = 0x1

.field private static final CHECK_3A_TIMEOUT_IN_MS:J = 0x3e8L

.field static final DEBUG:Z

.field public static final DEFAULT_CONFIG:Landroidx/camera/core/ImageCapture$Defaults;

.field public static final ERROR_CAMERA_CLOSED:I = 0x3

.field public static final ERROR_CAPTURE_FAILED:I = 0x2

.field public static final ERROR_FILE_IO:I = 0x1

.field public static final ERROR_INVALID_CAMERA:I = 0x4

.field public static final ERROR_UNKNOWN:I = 0x0

.field public static final FLASH_MODE_AUTO:I = 0x0

.field public static final FLASH_MODE_OFF:I = 0x2

.field public static final FLASH_MODE_ON:I = 0x1

.field private static final JPEG_QUALITY_MAXIMIZE_QUALITY_MODE:B = 0x64t

.field private static final JPEG_QUALITY_MINIMIZE_LATENCY_MODE:B = 0x5ft

.field private static final MAX_IMAGES:I = 0x2

.field private static final TAG:Ljava/lang/String; = "ImageCapture"


# instance fields
.field private final mCaptureBundle:Landroidx/camera/core/impl/CaptureBundle;

.field private final mCaptureConfig:Landroidx/camera/core/impl/CaptureConfig;

.field private final mCaptureMode:I

.field private final mCaptureProcessor:Landroidx/camera/core/impl/CaptureProcessor;

.field private final mClosingListener:Landroidx/camera/core/impl/ImageReaderProxy$OnImageAvailableListener;

.field private mDeferrableSurface:Landroidx/camera/core/impl/DeferrableSurface;

.field private mEnableCheck3AConverged:Z

.field private final mExecutor:Ljava/util/concurrent/ExecutorService;

.field private mFlashMode:I

.field private mImageCaptureRequestProcessor:Landroidx/camera/core/ImageCapture$ImageCaptureRequestProcessor;

.field mImageReader:Landroidx/camera/core/SafeCloseImageReaderProxy;

.field final mIoExecutor:Ljava/util/concurrent/Executor;

.field private final mMaxCaptureStages:I

.field private mMetadataMatchingCaptureCallback:Landroidx/camera/core/impl/CameraCaptureCallback;

.field mProcessingImageReader:Landroidx/camera/core/ProcessingImageReader;

.field private final mSessionCallbackChecker:Landroidx/camera/core/ImageCapture$CaptureCallbackChecker;

.field mSessionConfigBuilder:Landroidx/camera/core/impl/SessionConfig$Builder;

.field private mUserSettingConfig:Landroidx/camera/core/impl/ImageCaptureConfig;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 210
    new-instance v0, Landroidx/camera/core/ImageCapture$Defaults;

    invoke-direct {v0}, Landroidx/camera/core/ImageCapture$Defaults;-><init>()V

    sput-object v0, Landroidx/camera/core/ImageCapture;->DEFAULT_CONFIG:Landroidx/camera/core/ImageCapture$Defaults;

    const-string v0, "ImageCapture"

    const/4 v1, 0x3

    .line 213
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Landroidx/camera/core/ImageCapture;->DEBUG:Z

    return-void
.end method

.method constructor <init>(Landroidx/camera/core/impl/ImageCaptureConfig;)V
    .locals 4

    .line 292
    invoke-direct {p0, p1}, Landroidx/camera/core/UseCase;-><init>(Landroidx/camera/core/impl/UseCaseConfig;)V

    .line 223
    new-instance p1, Landroidx/camera/core/ImageCapture$1;

    invoke-direct {p1, p0}, Landroidx/camera/core/ImageCapture$1;-><init>(Landroidx/camera/core/ImageCapture;)V

    const/4 v0, 0x1

    .line 224
    invoke-static {v0, p1}, Ljava/util/concurrent/Executors;->newFixedThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/core/ImageCapture;->mExecutor:Ljava/util/concurrent/ExecutorService;

    .line 239
    new-instance p1, Landroidx/camera/core/ImageCapture$CaptureCallbackChecker;

    invoke-direct {p1}, Landroidx/camera/core/ImageCapture$CaptureCallbackChecker;-><init>()V

    iput-object p1, p0, Landroidx/camera/core/ImageCapture;->mSessionCallbackChecker:Landroidx/camera/core/ImageCapture$CaptureCallbackChecker;

    .line 265
    new-instance p1, Landroidx/camera/core/ImageCapture$$ExternalSyntheticLambda0;

    invoke-direct {p1}, Landroidx/camera/core/ImageCapture$$ExternalSyntheticLambda0;-><init>()V

    iput-object p1, p0, Landroidx/camera/core/ImageCapture;->mClosingListener:Landroidx/camera/core/impl/ImageReaderProxy$OnImageAvailableListener;

    .line 294
    invoke-virtual {p0}, Landroidx/camera/core/ImageCapture;->getUseCaseConfig()Landroidx/camera/core/impl/UseCaseConfig;

    move-result-object p1

    check-cast p1, Landroidx/camera/core/impl/ImageCaptureConfig;

    iput-object p1, p0, Landroidx/camera/core/ImageCapture;->mUserSettingConfig:Landroidx/camera/core/impl/ImageCaptureConfig;

    .line 295
    invoke-virtual {p1}, Landroidx/camera/core/impl/ImageCaptureConfig;->getCaptureMode()I

    move-result p1

    iput p1, p0, Landroidx/camera/core/ImageCapture;->mCaptureMode:I

    .line 296
    iget-object v1, p0, Landroidx/camera/core/ImageCapture;->mUserSettingConfig:Landroidx/camera/core/impl/ImageCaptureConfig;

    invoke-virtual {v1}, Landroidx/camera/core/impl/ImageCaptureConfig;->getFlashMode()I

    move-result v1

    iput v1, p0, Landroidx/camera/core/ImageCapture;->mFlashMode:I

    .line 298
    iget-object v1, p0, Landroidx/camera/core/ImageCapture;->mUserSettingConfig:Landroidx/camera/core/impl/ImageCaptureConfig;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroidx/camera/core/impl/ImageCaptureConfig;->getCaptureProcessor(Landroidx/camera/core/impl/CaptureProcessor;)Landroidx/camera/core/impl/CaptureProcessor;

    move-result-object v1

    iput-object v1, p0, Landroidx/camera/core/ImageCapture;->mCaptureProcessor:Landroidx/camera/core/impl/CaptureProcessor;

    .line 299
    iget-object v1, p0, Landroidx/camera/core/ImageCapture;->mUserSettingConfig:Landroidx/camera/core/impl/ImageCaptureConfig;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroidx/camera/core/impl/ImageCaptureConfig;->getMaxCaptureStages(I)I

    move-result v1

    iput v1, p0, Landroidx/camera/core/ImageCapture;->mMaxCaptureStages:I

    const/4 v2, 0x0

    if-lt v1, v0, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    const-string v3, "Maximum outstanding image count must be at least 1"

    .line 300
    invoke-static {v1, v3}, Landroidx/core/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 303
    iget-object v1, p0, Landroidx/camera/core/ImageCapture;->mUserSettingConfig:Landroidx/camera/core/impl/ImageCaptureConfig;

    .line 304
    invoke-static {}, Landroidx/camera/core/CaptureBundles;->singleDefaultCaptureBundle()Landroidx/camera/core/impl/CaptureBundle;

    move-result-object v3

    .line 303
    invoke-virtual {v1, v3}, Landroidx/camera/core/impl/ImageCaptureConfig;->getCaptureBundle(Landroidx/camera/core/impl/CaptureBundle;)Landroidx/camera/core/impl/CaptureBundle;

    move-result-object v1

    iput-object v1, p0, Landroidx/camera/core/ImageCapture;->mCaptureBundle:Landroidx/camera/core/impl/CaptureBundle;

    .line 306
    iget-object v1, p0, Landroidx/camera/core/ImageCapture;->mUserSettingConfig:Landroidx/camera/core/impl/ImageCaptureConfig;

    .line 307
    invoke-static {}, Landroidx/camera/core/impl/utils/executor/CameraXExecutors;->ioExecutor()Ljava/util/concurrent/Executor;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroidx/camera/core/impl/ImageCaptureConfig;->getIoExecutor(Ljava/util/concurrent/Executor;)Ljava/util/concurrent/Executor;

    move-result-object v1

    .line 306
    invoke-static {v1}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/Executor;

    iput-object v1, p0, Landroidx/camera/core/ImageCapture;->mIoExecutor:Ljava/util/concurrent/Executor;

    if-nez p1, :cond_1

    .line 310
    iput-boolean v0, p0, Landroidx/camera/core/ImageCapture;->mEnableCheck3AConverged:Z

    goto :goto_1

    :cond_1
    if-ne p1, v0, :cond_2

    .line 312
    iput-boolean v2, p0, Landroidx/camera/core/ImageCapture;->mEnableCheck3AConverged:Z

    .line 315
    :cond_2
    :goto_1
    iget-object p1, p0, Landroidx/camera/core/ImageCapture;->mUserSettingConfig:Landroidx/camera/core/impl/ImageCaptureConfig;

    invoke-static {p1}, Landroidx/camera/core/impl/CaptureConfig$Builder;->createFrom(Landroidx/camera/core/impl/UseCaseConfig;)Landroidx/camera/core/impl/CaptureConfig$Builder;

    move-result-object p1

    .line 316
    invoke-virtual {p1}, Landroidx/camera/core/impl/CaptureConfig$Builder;->build()Landroidx/camera/core/impl/CaptureConfig;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/core/ImageCapture;->mCaptureConfig:Landroidx/camera/core/impl/CaptureConfig;

    return-void
.end method

.method private abortImageCaptureRequests()V
    .locals 2

    .line 721
    new-instance v0, Landroidx/camera/core/CameraClosedException;

    const-string v1, "Camera is closed."

    invoke-direct {v0, v1}, Landroidx/camera/core/CameraClosedException;-><init>(Ljava/lang/String;)V

    .line 722
    iget-object v1, p0, Landroidx/camera/core/ImageCapture;->mImageCaptureRequestProcessor:Landroidx/camera/core/ImageCapture$ImageCaptureRequestProcessor;

    invoke-virtual {v1, v0}, Landroidx/camera/core/ImageCapture$ImageCaptureRequestProcessor;->cancelRequests(Ljava/lang/Throwable;)V

    return-void
.end method

.method private getCaptureBundle(Landroidx/camera/core/impl/CaptureBundle;)Landroidx/camera/core/impl/CaptureBundle;
    .locals 2

    .line 1332
    iget-object v0, p0, Landroidx/camera/core/ImageCapture;->mCaptureBundle:Landroidx/camera/core/impl/CaptureBundle;

    invoke-interface {v0}, Landroidx/camera/core/impl/CaptureBundle;->getCaptureStages()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1333
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 1337
    :cond_0
    invoke-static {v0}, Landroidx/camera/core/CaptureBundles;->createCaptureBundle(Ljava/util/List;)Landroidx/camera/core/impl/CaptureBundle;

    move-result-object p1

    :cond_1
    :goto_0
    return-object p1
.end method

.method static getError(Ljava/lang/Throwable;)I
    .locals 1

    .line 999
    instance-of v0, p0, Landroidx/camera/core/CameraClosedException;

    if-eqz v0, :cond_0

    const/4 p0, 0x3

    return p0

    .line 1001
    :cond_0
    instance-of p0, p0, Landroidx/camera/core/ImageCapture$CaptureFailedException;

    if-eqz p0, :cond_1

    const/4 p0, 0x2

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private getJpegQuality()I
    .locals 3

    .line 762
    iget v0, p0, Landroidx/camera/core/ImageCapture;->mCaptureMode:I

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/16 v0, 0x5f

    return v0

    .line 768
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "CaptureMode "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Landroidx/camera/core/ImageCapture;->mCaptureMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is invalid"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const/16 v0, 0x64

    return v0
.end method

.method private getPreCaptureStateIfNeeded()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroidx/camera/core/impl/CameraCaptureResult;",
            ">;"
        }
    .end annotation

    .line 1086
    iget-boolean v0, p0, Landroidx/camera/core/ImageCapture;->mEnableCheck3AConverged:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroidx/camera/core/ImageCapture;->getFlashMode()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1101
    invoke-static {v0}, Landroidx/camera/core/impl/utils/futures/Futures;->immediateFuture(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0

    .line 1087
    :cond_1
    :goto_0
    iget-object v0, p0, Landroidx/camera/core/ImageCapture;->mSessionCallbackChecker:Landroidx/camera/core/ImageCapture$CaptureCallbackChecker;

    new-instance v1, Landroidx/camera/core/ImageCapture$6;

    invoke-direct {v1, p0}, Landroidx/camera/core/ImageCapture$6;-><init>(Landroidx/camera/core/ImageCapture;)V

    invoke-virtual {v0, v1}, Landroidx/camera/core/ImageCapture$CaptureCallbackChecker;->checkCaptureResult(Landroidx/camera/core/ImageCapture$CaptureCallbackChecker$CaptureResultChecker;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$issueTakePicture$15(Ljava/util/List;)Ljava/lang/Void;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method static synthetic lambda$new$0(Landroidx/camera/core/impl/ImageReaderProxy;)V
    .locals 3

    const-string v0, "ImageCapture"

    const-string v1, "Discarding ImageProxy which was inadvertently acquired: "

    .line 266
    :try_start_0
    invoke-interface {p0}, Landroidx/camera/core/impl/ImageReaderProxy;->acquireLatestImage()Landroidx/camera/core/ImageProxy;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 267
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p0, :cond_1

    .line 268
    :try_start_2
    invoke-interface {p0}, Landroidx/camera/core/ImageProxy;->close()V
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catchall_0
    move-exception v1

    if-eqz p0, :cond_0

    .line 266
    :try_start_3
    invoke-interface {p0}, Landroidx/camera/core/ImageProxy;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p0

    :try_start_4
    invoke-virtual {v1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    throw v1
    :try_end_4
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception p0

    const-string v1, "Failed to acquire latest image."

    .line 269
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_1
    return-void
.end method

.method static synthetic lambda$preTakePicture$12(Ljava/lang/Boolean;)Ljava/lang/Void;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method static synthetic lambda$takePictureInternal$6(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;Landroidx/camera/core/impl/ImageReaderProxy;)V
    .locals 1

    .line 791
    :try_start_0
    invoke-interface {p1}, Landroidx/camera/core/impl/ImageReaderProxy;->acquireLatestImage()Landroidx/camera/core/ImageProxy;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 793
    invoke-virtual {p0, p1}, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->set(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 796
    invoke-interface {p1}, Landroidx/camera/core/ImageProxy;->close()V

    goto :goto_0

    .line 799
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Unable to acquire image"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->setException(Ljava/lang/Throwable;)Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 803
    invoke-virtual {p0, p1}, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->setException(Ljava/lang/Throwable;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method static synthetic lambda$takePictureInternal$8(Lcom/google/common/util/concurrent/ListenableFuture;)V
    .locals 1

    const/4 v0, 0x1

    .line 828
    invoke-interface {p0, v0}, Lcom/google/common/util/concurrent/ListenableFuture;->cancel(Z)Z

    return-void
.end method

.method static synthetic lambda$triggerAf$13()V
    .locals 0

    return-void
.end method

.method private preTakePicture(Landroidx/camera/core/ImageCapture$TakePictureState;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/camera/core/ImageCapture$TakePictureState;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1048
    invoke-direct {p0}, Landroidx/camera/core/ImageCapture;->getPreCaptureStateIfNeeded()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    invoke-static {v0}, Landroidx/camera/core/impl/utils/futures/FutureChain;->from(Lcom/google/common/util/concurrent/ListenableFuture;)Landroidx/camera/core/impl/utils/futures/FutureChain;

    move-result-object v0

    new-instance v1, Landroidx/camera/core/ImageCapture$$ExternalSyntheticLambda13;

    invoke-direct {v1, p0, p1}, Landroidx/camera/core/ImageCapture$$ExternalSyntheticLambda13;-><init>(Landroidx/camera/core/ImageCapture;Landroidx/camera/core/ImageCapture$TakePictureState;)V

    iget-object v2, p0, Landroidx/camera/core/ImageCapture;->mExecutor:Ljava/util/concurrent/ExecutorService;

    .line 1049
    invoke-virtual {v0, v1, v2}, Landroidx/camera/core/impl/utils/futures/FutureChain;->transformAsync(Landroidx/camera/core/impl/utils/futures/AsyncFunction;Ljava/util/concurrent/Executor;)Landroidx/camera/core/impl/utils/futures/FutureChain;

    move-result-object v0

    new-instance v1, Landroidx/camera/core/ImageCapture$$ExternalSyntheticLambda14;

    invoke-direct {v1, p0, p1}, Landroidx/camera/core/ImageCapture$$ExternalSyntheticLambda14;-><init>(Landroidx/camera/core/ImageCapture;Landroidx/camera/core/ImageCapture$TakePictureState;)V

    iget-object p1, p0, Landroidx/camera/core/ImageCapture;->mExecutor:Ljava/util/concurrent/ExecutorService;

    .line 1058
    invoke-virtual {v0, v1, p1}, Landroidx/camera/core/impl/utils/futures/FutureChain;->transformAsync(Landroidx/camera/core/impl/utils/futures/AsyncFunction;Ljava/util/concurrent/Executor;)Landroidx/camera/core/impl/utils/futures/FutureChain;

    move-result-object p1

    new-instance v0, Landroidx/camera/core/ImageCapture$$ExternalSyntheticLambda15;

    invoke-direct {v0}, Landroidx/camera/core/ImageCapture$$ExternalSyntheticLambda15;-><init>()V

    iget-object v1, p0, Landroidx/camera/core/ImageCapture;->mExecutor:Ljava/util/concurrent/ExecutorService;

    .line 1060
    invoke-virtual {p1, v0, v1}, Landroidx/camera/core/impl/utils/futures/FutureChain;->transform(Landroidx/arch/core/util/Function;Ljava/util/concurrent/Executor;)Landroidx/camera/core/impl/utils/futures/FutureChain;

    move-result-object p1

    return-object p1
.end method

.method private sendImageCaptureRequest(Ljava/util/concurrent/Executor;Landroidx/camera/core/ImageCapture$OnImageCapturedCallback;)V
    .locals 9

    .line 733
    invoke-virtual {p0}, Landroidx/camera/core/ImageCapture;->getCamera()Landroidx/camera/core/impl/CameraInternal;

    move-result-object v0

    if-nez v0, :cond_0

    .line 736
    new-instance v0, Landroidx/camera/core/ImageCapture$$ExternalSyntheticLambda8;

    invoke-direct {v0, p0, p2}, Landroidx/camera/core/ImageCapture$$ExternalSyntheticLambda8;-><init>(Landroidx/camera/core/ImageCapture;Landroidx/camera/core/ImageCapture$OnImageCapturedCallback;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    .line 742
    :cond_0
    invoke-interface {v0}, Landroidx/camera/core/impl/CameraInternal;->getCameraInfoInternal()Landroidx/camera/core/impl/CameraInfoInternal;

    move-result-object v0

    .line 743
    iget-object v1, p0, Landroidx/camera/core/ImageCapture;->mUserSettingConfig:Landroidx/camera/core/impl/ImageCaptureConfig;

    const/4 v2, 0x0

    .line 744
    invoke-virtual {v1, v2}, Landroidx/camera/core/impl/ImageCaptureConfig;->getTargetRotation(I)I

    move-result v1

    .line 743
    invoke-interface {v0, v1}, Landroidx/camera/core/impl/CameraInfoInternal;->getSensorRotationDegrees(I)I

    move-result v3

    .line 746
    iget-object v0, p0, Landroidx/camera/core/ImageCapture;->mUserSettingConfig:Landroidx/camera/core/impl/ImageCaptureConfig;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/camera/core/impl/ImageCaptureConfig;->getTargetAspectRatioCustom(Landroid/util/Rational;)Landroid/util/Rational;

    move-result-object v5

    .line 748
    iget-object v0, p0, Landroidx/camera/core/ImageCapture;->mImageCaptureRequestProcessor:Landroidx/camera/core/ImageCapture$ImageCaptureRequestProcessor;

    new-instance v1, Landroidx/camera/core/ImageCapture$ImageCaptureRequest;

    .line 749
    invoke-direct {p0}, Landroidx/camera/core/ImageCapture;->getJpegQuality()I

    move-result v4

    .line 750
    invoke-virtual {p0}, Landroidx/camera/core/ImageCapture;->getViewPortCropRect()Landroid/graphics/Rect;

    move-result-object v6

    move-object v2, v1

    move-object v7, p1

    move-object v8, p2

    invoke-direct/range {v2 .. v8}, Landroidx/camera/core/ImageCapture$ImageCaptureRequest;-><init>(IILandroid/util/Rational;Landroid/graphics/Rect;Ljava/util/concurrent/Executor;Landroidx/camera/core/ImageCapture$OnImageCapturedCallback;)V

    .line 748
    invoke-virtual {v0, v1}, Landroidx/camera/core/ImageCapture$ImageCaptureRequestProcessor;->sendRequest(Landroidx/camera/core/ImageCapture$ImageCaptureRequest;)V

    return-void
.end method

.method private takePictureInternal(Landroidx/camera/core/ImageCapture$ImageCaptureRequest;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/camera/core/ImageCapture$ImageCaptureRequest;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroidx/camera/core/ImageProxy;",
            ">;"
        }
    .end annotation

    .line 786
    new-instance v0, Landroidx/camera/core/ImageCapture$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1}, Landroidx/camera/core/ImageCapture$$ExternalSyntheticLambda1;-><init>(Landroidx/camera/core/ImageCapture;Landroidx/camera/core/ImageCapture$ImageCaptureRequest;)V

    invoke-static {v0}, Landroidx/concurrent/futures/CallbackToFutureAdapter;->getFuture(Landroidx/concurrent/futures/CallbackToFutureAdapter$Resolver;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method

.method private triggerAf(Landroidx/camera/core/ImageCapture$TakePictureState;)V
    .locals 2

    .line 1189
    sget-boolean v0, Landroidx/camera/core/ImageCapture;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "ImageCapture"

    const-string v1, "triggerAf"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x1

    .line 1190
    iput-boolean v0, p1, Landroidx/camera/core/ImageCapture$TakePictureState;->mIsAfTriggered:Z

    .line 1191
    invoke-virtual {p0}, Landroidx/camera/core/ImageCapture;->getCameraControl()Landroidx/camera/core/impl/CameraControlInternal;

    move-result-object p1

    invoke-interface {p1}, Landroidx/camera/core/impl/CameraControlInternal;->triggerAf()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    .line 1193
    new-instance v0, Landroidx/camera/core/ImageCapture$$ExternalSyntheticLambda12;

    invoke-direct {v0}, Landroidx/camera/core/ImageCapture$$ExternalSyntheticLambda12;-><init>()V

    .line 1194
    invoke-static {}, Landroidx/camera/core/impl/utils/executor/CameraXExecutors;->directExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    .line 1193
    invoke-interface {p1, v0, v1}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-void
.end method


# virtual methods
.method cancelAfAeTrigger(Landroidx/camera/core/ImageCapture$TakePictureState;)V
    .locals 3

    .line 1206
    iget-boolean v0, p1, Landroidx/camera/core/ImageCapture$TakePictureState;->mIsAfTriggered:Z

    if-nez v0, :cond_0

    iget-boolean v0, p1, Landroidx/camera/core/ImageCapture$TakePictureState;->mIsAePrecaptureTriggered:Z

    if-nez v0, :cond_0

    return-void

    .line 1209
    :cond_0
    invoke-virtual {p0}, Landroidx/camera/core/ImageCapture;->getCameraControl()Landroidx/camera/core/impl/CameraControlInternal;

    move-result-object v0

    iget-boolean v1, p1, Landroidx/camera/core/ImageCapture$TakePictureState;->mIsAfTriggered:Z

    iget-boolean v2, p1, Landroidx/camera/core/ImageCapture$TakePictureState;->mIsAePrecaptureTriggered:Z

    .line 1210
    invoke-interface {v0, v1, v2}, Landroidx/camera/core/impl/CameraControlInternal;->cancelAfAeTrigger(ZZ)V

    const/4 v0, 0x0

    .line 1211
    iput-boolean v0, p1, Landroidx/camera/core/ImageCapture$TakePictureState;->mIsAfTriggered:Z

    .line 1212
    iput-boolean v0, p1, Landroidx/camera/core/ImageCapture$TakePictureState;->mIsAePrecaptureTriggered:Z

    return-void
.end method

.method check3AConverged(Landroidx/camera/core/ImageCapture$TakePictureState;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/camera/core/ImageCapture$TakePictureState;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 1119
    iget-boolean v0, p0, Landroidx/camera/core/ImageCapture;->mEnableCheck3AConverged:Z

    const/4 v1, 0x0

    .line 1141
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    if-nez v0, :cond_0

    .line 1119
    iget-boolean p1, p1, Landroidx/camera/core/ImageCapture$TakePictureState;->mIsAePrecaptureTriggered:Z

    if-nez p1, :cond_0

    .line 1120
    invoke-static {v1}, Landroidx/camera/core/impl/utils/futures/Futures;->immediateFuture(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1

    .line 1123
    :cond_0
    iget-object p1, p0, Landroidx/camera/core/ImageCapture;->mSessionCallbackChecker:Landroidx/camera/core/ImageCapture$CaptureCallbackChecker;

    new-instance v0, Landroidx/camera/core/ImageCapture$7;

    invoke-direct {v0, p0}, Landroidx/camera/core/ImageCapture$7;-><init>(Landroidx/camera/core/ImageCapture;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {p1, v0, v2, v3, v1}, Landroidx/camera/core/ImageCapture$CaptureCallbackChecker;->checkCaptureResult(Landroidx/camera/core/ImageCapture$CaptureCallbackChecker$CaptureResultChecker;JLjava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method

.method public clear()V
    .locals 1

    .line 1016
    invoke-direct {p0}, Landroidx/camera/core/ImageCapture;->abortImageCaptureRequests()V

    .line 1017
    invoke-virtual {p0}, Landroidx/camera/core/ImageCapture;->clearPipeline()V

    .line 1018
    iget-object v0, p0, Landroidx/camera/core/ImageCapture;->mExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    return-void
.end method

.method clearPipeline()V
    .locals 2

    .line 391
    invoke-static {}, Landroidx/camera/core/impl/utils/Threads;->checkMainThread()V

    .line 392
    iget-object v0, p0, Landroidx/camera/core/ImageCapture;->mDeferrableSurface:Landroidx/camera/core/impl/DeferrableSurface;

    const/4 v1, 0x0

    .line 393
    iput-object v1, p0, Landroidx/camera/core/ImageCapture;->mDeferrableSurface:Landroidx/camera/core/impl/DeferrableSurface;

    .line 394
    iput-object v1, p0, Landroidx/camera/core/ImageCapture;->mImageReader:Landroidx/camera/core/SafeCloseImageReaderProxy;

    .line 395
    iput-object v1, p0, Landroidx/camera/core/ImageCapture;->mProcessingImageReader:Landroidx/camera/core/ProcessingImageReader;

    if-eqz v0, :cond_0

    .line 398
    invoke-virtual {v0}, Landroidx/camera/core/impl/DeferrableSurface;->close()V

    :cond_0
    return-void
.end method

.method createPipeline(Ljava/lang/String;Landroidx/camera/core/impl/ImageCaptureConfig;Landroid/util/Size;)Landroidx/camera/core/impl/SessionConfig$Builder;
    .locals 11

    .line 323
    invoke-static {}, Landroidx/camera/core/impl/utils/Threads;->checkMainThread()V

    .line 324
    invoke-static {p2}, Landroidx/camera/core/impl/SessionConfig$Builder;->createFrom(Landroidx/camera/core/impl/UseCaseConfig;)Landroidx/camera/core/impl/SessionConfig$Builder;

    move-result-object v0

    .line 325
    iget-object v1, p0, Landroidx/camera/core/ImageCapture;->mSessionCallbackChecker:Landroidx/camera/core/ImageCapture$CaptureCallbackChecker;

    invoke-virtual {v0, v1}, Landroidx/camera/core/impl/SessionConfig$Builder;->addRepeatingCameraCaptureCallback(Landroidx/camera/core/impl/CameraCaptureCallback;)V

    .line 328
    invoke-virtual {p2}, Landroidx/camera/core/impl/ImageCaptureConfig;->getImageReaderProxyProvider()Landroidx/camera/core/ImageReaderProxyProvider;

    move-result-object v1

    const/4 v2, 0x2

    if-eqz v1, :cond_0

    .line 329
    new-instance v1, Landroidx/camera/core/SafeCloseImageReaderProxy;

    .line 331
    invoke-virtual {p2}, Landroidx/camera/core/impl/ImageCaptureConfig;->getImageReaderProxyProvider()Landroidx/camera/core/ImageReaderProxyProvider;

    move-result-object v3

    invoke-virtual {p3}, Landroid/util/Size;->getWidth()I

    move-result v4

    .line 332
    invoke-virtual {p3}, Landroid/util/Size;->getHeight()I

    move-result v5

    invoke-virtual {p0}, Landroidx/camera/core/ImageCapture;->getImageFormat()I

    move-result v6

    const/4 v7, 0x2

    const-wide/16 v8, 0x0

    .line 331
    invoke-interface/range {v3 .. v9}, Landroidx/camera/core/ImageReaderProxyProvider;->newInstance(IIIIJ)Landroidx/camera/core/impl/ImageReaderProxy;

    move-result-object v3

    invoke-direct {v1, v3}, Landroidx/camera/core/SafeCloseImageReaderProxy;-><init>(Landroidx/camera/core/impl/ImageReaderProxy;)V

    iput-object v1, p0, Landroidx/camera/core/ImageCapture;->mImageReader:Landroidx/camera/core/SafeCloseImageReaderProxy;

    .line 333
    new-instance v1, Landroidx/camera/core/ImageCapture$2;

    invoke-direct {v1, p0}, Landroidx/camera/core/ImageCapture$2;-><init>(Landroidx/camera/core/ImageCapture;)V

    iput-object v1, p0, Landroidx/camera/core/ImageCapture;->mMetadataMatchingCaptureCallback:Landroidx/camera/core/impl/CameraCaptureCallback;

    goto :goto_0

    .line 335
    :cond_0
    iget-object v1, p0, Landroidx/camera/core/ImageCapture;->mCaptureProcessor:Landroidx/camera/core/impl/CaptureProcessor;

    if-eqz v1, :cond_1

    .line 337
    new-instance v1, Landroidx/camera/core/ProcessingImageReader;

    .line 339
    invoke-virtual {p3}, Landroid/util/Size;->getWidth()I

    move-result v4

    .line 340
    invoke-virtual {p3}, Landroid/util/Size;->getHeight()I

    move-result v5

    .line 341
    invoke-virtual {p0}, Landroidx/camera/core/ImageCapture;->getImageFormat()I

    move-result v6

    iget v7, p0, Landroidx/camera/core/ImageCapture;->mMaxCaptureStages:I

    iget-object v8, p0, Landroidx/camera/core/ImageCapture;->mExecutor:Ljava/util/concurrent/ExecutorService;

    .line 343
    invoke-static {}, Landroidx/camera/core/CaptureBundles;->singleDefaultCaptureBundle()Landroidx/camera/core/impl/CaptureBundle;

    move-result-object v3

    invoke-direct {p0, v3}, Landroidx/camera/core/ImageCapture;->getCaptureBundle(Landroidx/camera/core/impl/CaptureBundle;)Landroidx/camera/core/impl/CaptureBundle;

    move-result-object v9

    iget-object v10, p0, Landroidx/camera/core/ImageCapture;->mCaptureProcessor:Landroidx/camera/core/impl/CaptureProcessor;

    move-object v3, v1

    invoke-direct/range {v3 .. v10}, Landroidx/camera/core/ProcessingImageReader;-><init>(IIIILjava/util/concurrent/Executor;Landroidx/camera/core/impl/CaptureBundle;Landroidx/camera/core/impl/CaptureProcessor;)V

    iput-object v1, p0, Landroidx/camera/core/ImageCapture;->mProcessingImageReader:Landroidx/camera/core/ProcessingImageReader;

    .line 345
    invoke-virtual {v1}, Landroidx/camera/core/ProcessingImageReader;->getCameraCaptureCallback()Landroidx/camera/core/impl/CameraCaptureCallback;

    move-result-object v1

    iput-object v1, p0, Landroidx/camera/core/ImageCapture;->mMetadataMatchingCaptureCallback:Landroidx/camera/core/impl/CameraCaptureCallback;

    .line 346
    new-instance v1, Landroidx/camera/core/SafeCloseImageReaderProxy;

    iget-object v3, p0, Landroidx/camera/core/ImageCapture;->mProcessingImageReader:Landroidx/camera/core/ProcessingImageReader;

    invoke-direct {v1, v3}, Landroidx/camera/core/SafeCloseImageReaderProxy;-><init>(Landroidx/camera/core/impl/ImageReaderProxy;)V

    iput-object v1, p0, Landroidx/camera/core/ImageCapture;->mImageReader:Landroidx/camera/core/SafeCloseImageReaderProxy;

    goto :goto_0

    .line 348
    :cond_1
    new-instance v1, Landroidx/camera/core/MetadataImageReader;

    invoke-virtual {p3}, Landroid/util/Size;->getWidth()I

    move-result v3

    .line 349
    invoke-virtual {p3}, Landroid/util/Size;->getHeight()I

    move-result v4

    invoke-virtual {p0}, Landroidx/camera/core/ImageCapture;->getImageFormat()I

    move-result v5

    invoke-direct {v1, v3, v4, v5, v2}, Landroidx/camera/core/MetadataImageReader;-><init>(IIII)V

    .line 350
    invoke-virtual {v1}, Landroidx/camera/core/MetadataImageReader;->getCameraCaptureCallback()Landroidx/camera/core/impl/CameraCaptureCallback;

    move-result-object v3

    iput-object v3, p0, Landroidx/camera/core/ImageCapture;->mMetadataMatchingCaptureCallback:Landroidx/camera/core/impl/CameraCaptureCallback;

    .line 351
    new-instance v3, Landroidx/camera/core/SafeCloseImageReaderProxy;

    invoke-direct {v3, v1}, Landroidx/camera/core/SafeCloseImageReaderProxy;-><init>(Landroidx/camera/core/impl/ImageReaderProxy;)V

    iput-object v3, p0, Landroidx/camera/core/ImageCapture;->mImageReader:Landroidx/camera/core/SafeCloseImageReaderProxy;

    .line 353
    :goto_0
    new-instance v1, Landroidx/camera/core/ImageCapture$ImageCaptureRequestProcessor;

    new-instance v3, Landroidx/camera/core/ImageCapture$$ExternalSyntheticLambda10;

    invoke-direct {v3, p0}, Landroidx/camera/core/ImageCapture$$ExternalSyntheticLambda10;-><init>(Landroidx/camera/core/ImageCapture;)V

    invoke-direct {v1, v2, v3}, Landroidx/camera/core/ImageCapture$ImageCaptureRequestProcessor;-><init>(ILandroidx/camera/core/ImageCapture$ImageCaptureRequestProcessor$ImageCaptor;)V

    iput-object v1, p0, Landroidx/camera/core/ImageCapture;->mImageCaptureRequestProcessor:Landroidx/camera/core/ImageCapture$ImageCaptureRequestProcessor;

    .line 357
    iget-object v1, p0, Landroidx/camera/core/ImageCapture;->mImageReader:Landroidx/camera/core/SafeCloseImageReaderProxy;

    iget-object v2, p0, Landroidx/camera/core/ImageCapture;->mClosingListener:Landroidx/camera/core/impl/ImageReaderProxy$OnImageAvailableListener;

    .line 358
    invoke-static {}, Landroidx/camera/core/impl/utils/executor/CameraXExecutors;->mainThreadExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v3

    .line 357
    invoke-virtual {v1, v2, v3}, Landroidx/camera/core/SafeCloseImageReaderProxy;->setOnImageAvailableListener(Landroidx/camera/core/impl/ImageReaderProxy$OnImageAvailableListener;Ljava/util/concurrent/Executor;)V

    .line 360
    iget-object v1, p0, Landroidx/camera/core/ImageCapture;->mImageReader:Landroidx/camera/core/SafeCloseImageReaderProxy;

    .line 361
    iget-object v2, p0, Landroidx/camera/core/ImageCapture;->mDeferrableSurface:Landroidx/camera/core/impl/DeferrableSurface;

    if-eqz v2, :cond_2

    .line 362
    invoke-virtual {v2}, Landroidx/camera/core/impl/DeferrableSurface;->close()V

    .line 364
    :cond_2
    new-instance v2, Landroidx/camera/core/impl/ImmediateSurface;

    iget-object v3, p0, Landroidx/camera/core/ImageCapture;->mImageReader:Landroidx/camera/core/SafeCloseImageReaderProxy;

    invoke-virtual {v3}, Landroidx/camera/core/SafeCloseImageReaderProxy;->getSurface()Landroid/view/Surface;

    move-result-object v3

    invoke-direct {v2, v3}, Landroidx/camera/core/impl/ImmediateSurface;-><init>(Landroid/view/Surface;)V

    iput-object v2, p0, Landroidx/camera/core/ImageCapture;->mDeferrableSurface:Landroidx/camera/core/impl/DeferrableSurface;

    .line 365
    invoke-virtual {v2}, Landroidx/camera/core/impl/DeferrableSurface;->getTerminationFuture()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v2

    .line 366
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Landroidx/camera/core/ImageAnalysis$$ExternalSyntheticLambda0;

    invoke-direct {v3, v1}, Landroidx/camera/core/ImageAnalysis$$ExternalSyntheticLambda0;-><init>(Landroidx/camera/core/SafeCloseImageReaderProxy;)V

    invoke-static {}, Landroidx/camera/core/impl/utils/executor/CameraXExecutors;->mainThreadExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v1

    .line 365
    invoke-interface {v2, v3, v1}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 367
    iget-object v1, p0, Landroidx/camera/core/ImageCapture;->mDeferrableSurface:Landroidx/camera/core/impl/DeferrableSurface;

    invoke-virtual {v0, v1}, Landroidx/camera/core/impl/SessionConfig$Builder;->addNonRepeatingSurface(Landroidx/camera/core/impl/DeferrableSurface;)V

    .line 369
    new-instance v1, Landroidx/camera/core/ImageCapture$$ExternalSyntheticLambda11;

    invoke-direct {v1, p0, p1, p2, p3}, Landroidx/camera/core/ImageCapture$$ExternalSyntheticLambda11;-><init>(Landroidx/camera/core/ImageCapture;Ljava/lang/String;Landroidx/camera/core/impl/ImageCaptureConfig;Landroid/util/Size;)V

    invoke-virtual {v0, v1}, Landroidx/camera/core/impl/SessionConfig$Builder;->addErrorListener(Landroidx/camera/core/impl/SessionConfig$ErrorListener;)V

    return-object v0
.end method

.method public getCaptureMode()I
    .locals 1

    .line 596
    iget v0, p0, Landroidx/camera/core/ImageCapture;->mCaptureMode:I

    return v0
.end method

.method public getDefaultBuilder(Landroidx/camera/core/CameraInfo;)Landroidx/camera/core/impl/UseCaseConfig$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/camera/core/CameraInfo;",
            ")",
            "Landroidx/camera/core/impl/UseCaseConfig$Builder<",
            "***>;"
        }
    .end annotation

    .line 411
    const-class v0, Landroidx/camera/core/impl/ImageCaptureConfig;

    invoke-static {v0, p1}, Landroidx/camera/core/CameraX;->getDefaultUseCaseConfig(Ljava/lang/Class;Landroidx/camera/core/CameraInfo;)Landroidx/camera/core/impl/UseCaseConfig;

    move-result-object p1

    check-cast p1, Landroidx/camera/core/impl/ImageCaptureConfig;

    if-eqz p1, :cond_0

    .line 414
    invoke-static {p1}, Landroidx/camera/core/ImageCapture$Builder;->fromConfig(Landroidx/camera/core/impl/ImageCaptureConfig;)Landroidx/camera/core/ImageCapture$Builder;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getFlashMode()I
    .locals 1

    .line 439
    iget v0, p0, Landroidx/camera/core/ImageCapture;->mFlashMode:I

    return v0
.end method

.method public getTargetRotation()I
    .locals 1

    .line 529
    invoke-virtual {p0}, Landroidx/camera/core/ImageCapture;->getUseCaseConfig()Landroidx/camera/core/impl/UseCaseConfig;

    move-result-object v0

    check-cast v0, Landroidx/camera/core/impl/ImageOutputConfig;

    invoke-interface {v0}, Landroidx/camera/core/impl/ImageOutputConfig;->getTargetRotation()I

    move-result v0

    return v0
.end method

.method is3AConverged(Landroidx/camera/core/impl/CameraCaptureResult;)Z
    .locals 6

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 1152
    :cond_0
    invoke-interface {p1}, Landroidx/camera/core/impl/CameraCaptureResult;->getAfMode()Landroidx/camera/core/impl/CameraCaptureMetaData$AfMode;

    move-result-object v1

    sget-object v2, Landroidx/camera/core/impl/CameraCaptureMetaData$AfMode;->ON_CONTINUOUS_AUTO:Landroidx/camera/core/impl/CameraCaptureMetaData$AfMode;

    const/4 v3, 0x1

    if-eq v1, v2, :cond_2

    .line 1153
    invoke-interface {p1}, Landroidx/camera/core/impl/CameraCaptureResult;->getAfMode()Landroidx/camera/core/impl/CameraCaptureMetaData$AfMode;

    move-result-object v1

    sget-object v2, Landroidx/camera/core/impl/CameraCaptureMetaData$AfMode;->OFF:Landroidx/camera/core/impl/CameraCaptureMetaData$AfMode;

    if-eq v1, v2, :cond_2

    .line 1154
    invoke-interface {p1}, Landroidx/camera/core/impl/CameraCaptureResult;->getAfMode()Landroidx/camera/core/impl/CameraCaptureMetaData$AfMode;

    move-result-object v1

    sget-object v2, Landroidx/camera/core/impl/CameraCaptureMetaData$AfMode;->UNKNOWN:Landroidx/camera/core/impl/CameraCaptureMetaData$AfMode;

    if-eq v1, v2, :cond_2

    .line 1155
    invoke-interface {p1}, Landroidx/camera/core/impl/CameraCaptureResult;->getAfState()Landroidx/camera/core/impl/CameraCaptureMetaData$AfState;

    move-result-object v1

    sget-object v2, Landroidx/camera/core/impl/CameraCaptureMetaData$AfState;->FOCUSED:Landroidx/camera/core/impl/CameraCaptureMetaData$AfState;

    if-eq v1, v2, :cond_2

    .line 1156
    invoke-interface {p1}, Landroidx/camera/core/impl/CameraCaptureResult;->getAfState()Landroidx/camera/core/impl/CameraCaptureMetaData$AfState;

    move-result-object v1

    sget-object v2, Landroidx/camera/core/impl/CameraCaptureMetaData$AfState;->LOCKED_FOCUSED:Landroidx/camera/core/impl/CameraCaptureMetaData$AfState;

    if-eq v1, v2, :cond_2

    .line 1157
    invoke-interface {p1}, Landroidx/camera/core/impl/CameraCaptureResult;->getAfState()Landroidx/camera/core/impl/CameraCaptureMetaData$AfState;

    move-result-object v1

    sget-object v2, Landroidx/camera/core/impl/CameraCaptureMetaData$AfState;->LOCKED_NOT_FOCUSED:Landroidx/camera/core/impl/CameraCaptureMetaData$AfState;

    if-ne v1, v2, :cond_1

    goto :goto_0

    :cond_1
    move v1, v0

    goto :goto_1

    :cond_2
    :goto_0
    move v1, v3

    .line 1160
    :goto_1
    invoke-interface {p1}, Landroidx/camera/core/impl/CameraCaptureResult;->getAeState()Landroidx/camera/core/impl/CameraCaptureMetaData$AeState;

    move-result-object v2

    sget-object v4, Landroidx/camera/core/impl/CameraCaptureMetaData$AeState;->CONVERGED:Landroidx/camera/core/impl/CameraCaptureMetaData$AeState;

    if-eq v2, v4, :cond_4

    .line 1161
    invoke-interface {p1}, Landroidx/camera/core/impl/CameraCaptureResult;->getAeState()Landroidx/camera/core/impl/CameraCaptureMetaData$AeState;

    move-result-object v2

    sget-object v4, Landroidx/camera/core/impl/CameraCaptureMetaData$AeState;->FLASH_REQUIRED:Landroidx/camera/core/impl/CameraCaptureMetaData$AeState;

    if-eq v2, v4, :cond_4

    .line 1162
    invoke-interface {p1}, Landroidx/camera/core/impl/CameraCaptureResult;->getAeState()Landroidx/camera/core/impl/CameraCaptureMetaData$AeState;

    move-result-object v2

    sget-object v4, Landroidx/camera/core/impl/CameraCaptureMetaData$AeState;->UNKNOWN:Landroidx/camera/core/impl/CameraCaptureMetaData$AeState;

    if-ne v2, v4, :cond_3

    goto :goto_2

    :cond_3
    move v2, v0

    goto :goto_3

    :cond_4
    :goto_2
    move v2, v3

    .line 1165
    :goto_3
    invoke-interface {p1}, Landroidx/camera/core/impl/CameraCaptureResult;->getAwbState()Landroidx/camera/core/impl/CameraCaptureMetaData$AwbState;

    move-result-object v4

    sget-object v5, Landroidx/camera/core/impl/CameraCaptureMetaData$AwbState;->CONVERGED:Landroidx/camera/core/impl/CameraCaptureMetaData$AwbState;

    if-eq v4, v5, :cond_6

    .line 1166
    invoke-interface {p1}, Landroidx/camera/core/impl/CameraCaptureResult;->getAwbState()Landroidx/camera/core/impl/CameraCaptureMetaData$AwbState;

    move-result-object p1

    sget-object v4, Landroidx/camera/core/impl/CameraCaptureMetaData$AwbState;->UNKNOWN:Landroidx/camera/core/impl/CameraCaptureMetaData$AwbState;

    if-ne p1, v4, :cond_5

    goto :goto_4

    :cond_5
    move p1, v0

    goto :goto_5

    :cond_6
    :goto_4
    move p1, v3

    :goto_5
    if-eqz v1, :cond_7

    if-eqz v2, :cond_7

    if-eqz p1, :cond_7

    move v0, v3

    :cond_7
    return v0
.end method

.method isAePrecaptureRequired(Landroidx/camera/core/ImageCapture$TakePictureState;)Z
    .locals 3

    .line 1105
    invoke-virtual {p0}, Landroidx/camera/core/ImageCapture;->getFlashMode()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    if-eq v0, v2, :cond_1

    const/4 p1, 0x2

    if-ne v0, p1, :cond_0

    return v1

    .line 1113
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-virtual {p0}, Landroidx/camera/core/ImageCapture;->getFlashMode()I

    move-result v0

    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(I)V

    throw p1

    :cond_1
    return v2

    .line 1109
    :cond_2
    iget-object p1, p1, Landroidx/camera/core/ImageCapture$TakePictureState;->mPreCaptureState:Landroidx/camera/core/impl/CameraCaptureResult;

    invoke-interface {p1}, Landroidx/camera/core/impl/CameraCaptureResult;->getAeState()Landroidx/camera/core/impl/CameraCaptureMetaData$AeState;

    move-result-object p1

    sget-object v0, Landroidx/camera/core/impl/CameraCaptureMetaData$AeState;->FLASH_REQUIRED:Landroidx/camera/core/impl/CameraCaptureMetaData$AeState;

    if-ne p1, v0, :cond_3

    move v1, v2

    :cond_3
    return v1
.end method

.method issueTakePicture(Landroidx/camera/core/ImageCapture$ImageCaptureRequest;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/camera/core/ImageCapture$ImageCaptureRequest;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1225
    sget-boolean v0, Landroidx/camera/core/ImageCapture;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "ImageCapture"

    const-string v1, "issueTakePicture"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1227
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1228
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1230
    iget-object v2, p0, Landroidx/camera/core/ImageCapture;->mProcessingImageReader:Landroidx/camera/core/ProcessingImageReader;

    if-eqz v2, :cond_3

    const/4 v2, 0x0

    .line 1233
    invoke-direct {p0, v2}, Landroidx/camera/core/ImageCapture;->getCaptureBundle(Landroidx/camera/core/impl/CaptureBundle;)Landroidx/camera/core/impl/CaptureBundle;

    move-result-object v2

    if-nez v2, :cond_1

    .line 1236
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "ImageCapture cannot set empty CaptureBundle."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Landroidx/camera/core/impl/utils/futures/Futures;->immediateFailedFuture(Ljava/lang/Throwable;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1

    .line 1240
    :cond_1
    invoke-interface {v2}, Landroidx/camera/core/impl/CaptureBundle;->getCaptureStages()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    iget v4, p0, Landroidx/camera/core/ImageCapture;->mMaxCaptureStages:I

    if-le v3, v4, :cond_2

    .line 1241
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "ImageCapture has CaptureStages > Max CaptureStage size"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Landroidx/camera/core/impl/utils/futures/Futures;->immediateFailedFuture(Ljava/lang/Throwable;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1

    .line 1245
    :cond_2
    iget-object v3, p0, Landroidx/camera/core/ImageCapture;->mProcessingImageReader:Landroidx/camera/core/ProcessingImageReader;

    invoke-virtual {v3, v2}, Landroidx/camera/core/ProcessingImageReader;->setCaptureBundle(Landroidx/camera/core/impl/CaptureBundle;)V

    goto :goto_0

    .line 1247
    :cond_3
    invoke-static {}, Landroidx/camera/core/CaptureBundles;->singleDefaultCaptureBundle()Landroidx/camera/core/impl/CaptureBundle;

    move-result-object v2

    invoke-direct {p0, v2}, Landroidx/camera/core/ImageCapture;->getCaptureBundle(Landroidx/camera/core/impl/CaptureBundle;)Landroidx/camera/core/impl/CaptureBundle;

    move-result-object v2

    .line 1248
    invoke-interface {v2}, Landroidx/camera/core/impl/CaptureBundle;->getCaptureStages()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_4

    .line 1249
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "ImageCapture have no CaptureProcess set with CaptureBundle size > 1."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Landroidx/camera/core/impl/utils/futures/Futures;->immediateFailedFuture(Ljava/lang/Throwable;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1

    .line 1254
    :cond_4
    :goto_0
    invoke-interface {v2}, Landroidx/camera/core/impl/CaptureBundle;->getCaptureStages()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/camera/core/impl/CaptureStage;

    .line 1255
    new-instance v4, Landroidx/camera/core/impl/CaptureConfig$Builder;

    invoke-direct {v4}, Landroidx/camera/core/impl/CaptureConfig$Builder;-><init>()V

    .line 1256
    iget-object v5, p0, Landroidx/camera/core/ImageCapture;->mCaptureConfig:Landroidx/camera/core/impl/CaptureConfig;

    invoke-virtual {v5}, Landroidx/camera/core/impl/CaptureConfig;->getTemplateType()I

    move-result v5

    invoke-virtual {v4, v5}, Landroidx/camera/core/impl/CaptureConfig$Builder;->setTemplateType(I)V

    .line 1259
    iget-object v5, p0, Landroidx/camera/core/ImageCapture;->mCaptureConfig:Landroidx/camera/core/impl/CaptureConfig;

    invoke-virtual {v5}, Landroidx/camera/core/impl/CaptureConfig;->getImplementationOptions()Landroidx/camera/core/impl/Config;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroidx/camera/core/impl/CaptureConfig$Builder;->addImplementationOptions(Landroidx/camera/core/impl/Config;)V

    .line 1260
    iget-object v5, p0, Landroidx/camera/core/ImageCapture;->mSessionConfigBuilder:Landroidx/camera/core/impl/SessionConfig$Builder;

    .line 1261
    invoke-virtual {v5}, Landroidx/camera/core/impl/SessionConfig$Builder;->getSingleCameraCaptureCallbacks()Ljava/util/List;

    move-result-object v5

    .line 1260
    invoke-virtual {v4, v5}, Landroidx/camera/core/impl/CaptureConfig$Builder;->addAllCameraCaptureCallbacks(Ljava/util/Collection;)V

    .line 1263
    iget-object v5, p0, Landroidx/camera/core/ImageCapture;->mDeferrableSurface:Landroidx/camera/core/impl/DeferrableSurface;

    invoke-virtual {v4, v5}, Landroidx/camera/core/impl/CaptureConfig$Builder;->addSurface(Landroidx/camera/core/impl/DeferrableSurface;)V

    .line 1266
    sget-object v5, Landroidx/camera/core/impl/CaptureConfig;->OPTION_ROTATION:Landroidx/camera/core/impl/Config$Option;

    iget v6, p1, Landroidx/camera/core/ImageCapture$ImageCaptureRequest;->mRotationDegrees:I

    .line 1267
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 1266
    invoke-virtual {v4, v5, v6}, Landroidx/camera/core/impl/CaptureConfig$Builder;->addImplementationOption(Landroidx/camera/core/impl/Config$Option;Ljava/lang/Object;)V

    .line 1268
    sget-object v5, Landroidx/camera/core/impl/CaptureConfig;->OPTION_JPEG_QUALITY:Landroidx/camera/core/impl/Config$Option;

    iget v6, p1, Landroidx/camera/core/ImageCapture$ImageCaptureRequest;->mJpegQuality:I

    .line 1269
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 1268
    invoke-virtual {v4, v5, v6}, Landroidx/camera/core/impl/CaptureConfig$Builder;->addImplementationOption(Landroidx/camera/core/impl/Config$Option;Ljava/lang/Object;)V

    .line 1273
    invoke-interface {v3}, Landroidx/camera/core/impl/CaptureStage;->getCaptureConfig()Landroidx/camera/core/impl/CaptureConfig;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/camera/core/impl/CaptureConfig;->getImplementationOptions()Landroidx/camera/core/impl/Config;

    move-result-object v5

    .line 1272
    invoke-virtual {v4, v5}, Landroidx/camera/core/impl/CaptureConfig$Builder;->addImplementationOptions(Landroidx/camera/core/impl/Config;)V

    .line 1274
    invoke-interface {v3}, Landroidx/camera/core/impl/CaptureStage;->getCaptureConfig()Landroidx/camera/core/impl/CaptureConfig;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/camera/core/impl/CaptureConfig;->getTag()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroidx/camera/core/impl/CaptureConfig$Builder;->setTag(Ljava/lang/Object;)V

    .line 1275
    iget-object v5, p0, Landroidx/camera/core/ImageCapture;->mMetadataMatchingCaptureCallback:Landroidx/camera/core/impl/CameraCaptureCallback;

    invoke-virtual {v4, v5}, Landroidx/camera/core/impl/CaptureConfig$Builder;->addCameraCaptureCallback(Landroidx/camera/core/impl/CameraCaptureCallback;)V

    .line 1277
    new-instance v5, Landroidx/camera/core/ImageCapture$$ExternalSyntheticLambda2;

    invoke-direct {v5, p0, v4, v1, v3}, Landroidx/camera/core/ImageCapture$$ExternalSyntheticLambda2;-><init>(Landroidx/camera/core/ImageCapture;Landroidx/camera/core/impl/CaptureConfig$Builder;Ljava/util/List;Landroidx/camera/core/impl/CaptureStage;)V

    invoke-static {v5}, Landroidx/concurrent/futures/CallbackToFutureAdapter;->getFuture(Landroidx/concurrent/futures/CallbackToFutureAdapter$Resolver;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v3

    .line 1306
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1310
    :cond_5
    invoke-virtual {p0}, Landroidx/camera/core/ImageCapture;->getCameraControl()Landroidx/camera/core/impl/CameraControlInternal;

    move-result-object p1

    invoke-interface {p1, v1}, Landroidx/camera/core/impl/CameraControlInternal;->submitCaptureRequests(Ljava/util/List;)V

    .line 1311
    invoke-static {v0}, Landroidx/camera/core/impl/utils/futures/Futures;->allAsList(Ljava/util/Collection;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    new-instance v0, Landroidx/camera/core/ImageCapture$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Landroidx/camera/core/ImageCapture$$ExternalSyntheticLambda3;-><init>()V

    .line 1312
    invoke-static {}, Landroidx/camera/core/impl/utils/executor/CameraXExecutors;->directExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    .line 1311
    invoke-static {p1, v0, v1}, Landroidx/camera/core/impl/utils/futures/Futures;->transform(Lcom/google/common/util/concurrent/ListenableFuture;Landroidx/arch/core/util/Function;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method

.method synthetic lambda$createPipeline$1$androidx-camera-core-ImageCapture(Landroidx/camera/core/ImageCapture$ImageCaptureRequest;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 0

    .line 354
    invoke-direct {p0, p1}, Landroidx/camera/core/ImageCapture;->takePictureInternal(Landroidx/camera/core/ImageCapture$ImageCaptureRequest;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method

.method synthetic lambda$createPipeline$2$androidx-camera-core-ImageCapture(Ljava/lang/String;Landroidx/camera/core/impl/ImageCaptureConfig;Landroid/util/Size;Landroidx/camera/core/impl/SessionConfig;Landroidx/camera/core/impl/SessionConfig$SessionError;)V
    .locals 0

    .line 370
    invoke-virtual {p0}, Landroidx/camera/core/ImageCapture;->clearPipeline()V

    .line 374
    invoke-virtual {p0, p1}, Landroidx/camera/core/ImageCapture;->isCurrentCamera(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_0

    .line 376
    invoke-virtual {p0, p1, p2, p3}, Landroidx/camera/core/ImageCapture;->createPipeline(Ljava/lang/String;Landroidx/camera/core/impl/ImageCaptureConfig;Landroid/util/Size;)Landroidx/camera/core/impl/SessionConfig$Builder;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/core/ImageCapture;->mSessionConfigBuilder:Landroidx/camera/core/impl/SessionConfig$Builder;

    .line 377
    invoke-virtual {p1}, Landroidx/camera/core/impl/SessionConfig$Builder;->build()Landroidx/camera/core/impl/SessionConfig;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/camera/core/ImageCapture;->updateSessionConfig(Landroidx/camera/core/impl/SessionConfig;)V

    .line 378
    invoke-virtual {p0}, Landroidx/camera/core/ImageCapture;->notifyReset()V

    :cond_0
    return-void
.end method

.method synthetic lambda$issueTakePicture$14$androidx-camera-core-ImageCapture(Landroidx/camera/core/impl/CaptureConfig$Builder;Ljava/util/List;Landroidx/camera/core/impl/CaptureStage;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1279
    new-instance v0, Landroidx/camera/core/ImageCapture$8;

    invoke-direct {v0, p0, p4}, Landroidx/camera/core/ImageCapture$8;-><init>(Landroidx/camera/core/ImageCapture;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)V

    .line 1301
    invoke-virtual {p1, v0}, Landroidx/camera/core/impl/CaptureConfig$Builder;->addCameraCaptureCallback(Landroidx/camera/core/impl/CameraCaptureCallback;)V

    .line 1303
    invoke-virtual {p1}, Landroidx/camera/core/impl/CaptureConfig$Builder;->build()Landroidx/camera/core/impl/CaptureConfig;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1304
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "issueTakePicture[stage="

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p3}, Landroidx/camera/core/impl/CaptureStage;->getId()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "]"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method synthetic lambda$preTakePicture$10$androidx-camera-core-ImageCapture(Landroidx/camera/core/ImageCapture$TakePictureState;Landroidx/camera/core/impl/CameraCaptureResult;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1050
    iput-object p2, p1, Landroidx/camera/core/ImageCapture$TakePictureState;->mPreCaptureState:Landroidx/camera/core/impl/CameraCaptureResult;

    .line 1051
    invoke-virtual {p0, p1}, Landroidx/camera/core/ImageCapture;->triggerAfIfNeeded(Landroidx/camera/core/ImageCapture$TakePictureState;)V

    .line 1052
    invoke-virtual {p0, p1}, Landroidx/camera/core/ImageCapture;->isAePrecaptureRequired(Landroidx/camera/core/ImageCapture$TakePictureState;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 1054
    invoke-virtual {p0, p1}, Landroidx/camera/core/ImageCapture;->triggerAePrecapture(Landroidx/camera/core/ImageCapture$TakePictureState;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    .line 1056
    invoke-static {p1}, Landroidx/camera/core/impl/utils/futures/Futures;->immediateFuture(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method

.method synthetic lambda$preTakePicture$11$androidx-camera-core-ImageCapture(Landroidx/camera/core/ImageCapture$TakePictureState;Landroidx/camera/core/impl/CameraCaptureResult;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1058
    invoke-virtual {p0, p1}, Landroidx/camera/core/ImageCapture;->check3AConverged(Landroidx/camera/core/ImageCapture$TakePictureState;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method

.method synthetic lambda$sendImageCaptureRequest$5$androidx-camera-core-ImageCapture(Landroidx/camera/core/ImageCapture$OnImageCapturedCallback;)V
    .locals 4

    .line 737
    new-instance v0, Landroidx/camera/core/ImageCaptureException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Not bound to a valid Camera ["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x4

    invoke-direct {v0, v3, v1, v2}, Landroidx/camera/core/ImageCaptureException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p1, v0}, Landroidx/camera/core/ImageCapture$OnImageCapturedCallback;->onError(Landroidx/camera/core/ImageCaptureException;)V

    return-void
.end method

.method synthetic lambda$takePicture$3$androidx-camera-core-ImageCapture(Ljava/util/concurrent/Executor;Landroidx/camera/core/ImageCapture$OnImageCapturedCallback;)V
    .locals 0

    .line 611
    invoke-virtual {p0, p1, p2}, Landroidx/camera/core/ImageCapture;->takePicture(Ljava/util/concurrent/Executor;Landroidx/camera/core/ImageCapture$OnImageCapturedCallback;)V

    return-void
.end method

.method synthetic lambda$takePicture$4$androidx-camera-core-ImageCapture(Landroidx/camera/core/ImageCapture$OutputFileOptions;Ljava/util/concurrent/Executor;Landroidx/camera/core/ImageCapture$OnImageSavedCallback;)V
    .locals 0

    .line 633
    invoke-virtual {p0, p1, p2, p3}, Landroidx/camera/core/ImageCapture;->takePicture(Landroidx/camera/core/ImageCapture$OutputFileOptions;Ljava/util/concurrent/Executor;Landroidx/camera/core/ImageCapture$OnImageSavedCallback;)V

    return-void
.end method

.method synthetic lambda$takePictureInternal$7$androidx-camera-core-ImageCapture(Landroidx/camera/core/ImageCapture$ImageCaptureRequest;Ljava/lang/Void;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 810
    invoke-virtual {p0, p1}, Landroidx/camera/core/ImageCapture;->issueTakePicture(Landroidx/camera/core/ImageCapture$ImageCaptureRequest;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method

.method synthetic lambda$takePictureInternal$9$androidx-camera-core-ImageCapture(Landroidx/camera/core/ImageCapture$ImageCaptureRequest;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 788
    iget-object v0, p0, Landroidx/camera/core/ImageCapture;->mImageReader:Landroidx/camera/core/SafeCloseImageReaderProxy;

    new-instance v1, Landroidx/camera/core/ImageCapture$$ExternalSyntheticLambda4;

    invoke-direct {v1, p2}, Landroidx/camera/core/ImageCapture$$ExternalSyntheticLambda4;-><init>(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)V

    .line 806
    invoke-static {}, Landroidx/camera/core/impl/utils/executor/CameraXExecutors;->mainThreadExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v2

    .line 788
    invoke-virtual {v0, v1, v2}, Landroidx/camera/core/SafeCloseImageReaderProxy;->setOnImageAvailableListener(Landroidx/camera/core/impl/ImageReaderProxy$OnImageAvailableListener;Ljava/util/concurrent/Executor;)V

    .line 808
    new-instance v0, Landroidx/camera/core/ImageCapture$TakePictureState;

    invoke-direct {v0}, Landroidx/camera/core/ImageCapture$TakePictureState;-><init>()V

    .line 809
    invoke-direct {p0, v0}, Landroidx/camera/core/ImageCapture;->preTakePicture(Landroidx/camera/core/ImageCapture$TakePictureState;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    invoke-static {v1}, Landroidx/camera/core/impl/utils/futures/FutureChain;->from(Lcom/google/common/util/concurrent/ListenableFuture;)Landroidx/camera/core/impl/utils/futures/FutureChain;

    move-result-object v1

    new-instance v2, Landroidx/camera/core/ImageCapture$$ExternalSyntheticLambda5;

    invoke-direct {v2, p0, p1}, Landroidx/camera/core/ImageCapture$$ExternalSyntheticLambda5;-><init>(Landroidx/camera/core/ImageCapture;Landroidx/camera/core/ImageCapture$ImageCaptureRequest;)V

    iget-object p1, p0, Landroidx/camera/core/ImageCapture;->mExecutor:Ljava/util/concurrent/ExecutorService;

    .line 810
    invoke-virtual {v1, v2, p1}, Landroidx/camera/core/impl/utils/futures/FutureChain;->transformAsync(Landroidx/camera/core/impl/utils/futures/AsyncFunction;Ljava/util/concurrent/Executor;)Landroidx/camera/core/impl/utils/futures/FutureChain;

    move-result-object p1

    .line 812
    new-instance v1, Landroidx/camera/core/ImageCapture$5;

    invoke-direct {v1, p0, v0, p2}, Landroidx/camera/core/ImageCapture$5;-><init>(Landroidx/camera/core/ImageCapture;Landroidx/camera/core/ImageCapture$TakePictureState;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)V

    iget-object v0, p0, Landroidx/camera/core/ImageCapture;->mExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-static {p1, v1, v0}, Landroidx/camera/core/impl/utils/futures/Futures;->addCallback(Lcom/google/common/util/concurrent/ListenableFuture;Landroidx/camera/core/impl/utils/futures/FutureCallback;Ljava/util/concurrent/Executor;)V

    .line 828
    new-instance v0, Landroidx/camera/core/ImageCapture$$ExternalSyntheticLambda6;

    invoke-direct {v0, p1}, Landroidx/camera/core/ImageCapture$$ExternalSyntheticLambda6;-><init>(Lcom/google/common/util/concurrent/ListenableFuture;)V

    .line 829
    invoke-static {}, Landroidx/camera/core/impl/utils/executor/CameraXExecutors;->directExecutor()Ljava/util/concurrent/Executor;

    move-result-object p1

    .line 828
    invoke-virtual {p2, v0, p1}, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->addCancellationListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    const-string p1, "takePictureInternal"

    return-object p1
.end method

.method protected onCameraControlReady()V
    .locals 2

    .line 428
    invoke-virtual {p0}, Landroidx/camera/core/ImageCapture;->getCameraControl()Landroidx/camera/core/impl/CameraControlInternal;

    move-result-object v0

    iget v1, p0, Landroidx/camera/core/ImageCapture;->mFlashMode:I

    invoke-interface {v0, v1}, Landroidx/camera/core/impl/CameraControlInternal;->setFlashMode(I)V

    return-void
.end method

.method public onStateDetached()V
    .locals 0

    .line 717
    invoke-direct {p0}, Landroidx/camera/core/ImageCapture;->abortImageCaptureRequests()V

    return-void
.end method

.method protected onSuggestedResolutionUpdated(Landroid/util/Size;)Landroid/util/Size;
    .locals 2

    .line 1030
    invoke-virtual {p0}, Landroidx/camera/core/ImageCapture;->getCameraId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Landroidx/camera/core/ImageCapture;->mUserSettingConfig:Landroidx/camera/core/impl/ImageCaptureConfig;

    invoke-virtual {p0, v0, v1, p1}, Landroidx/camera/core/ImageCapture;->createPipeline(Ljava/lang/String;Landroidx/camera/core/impl/ImageCaptureConfig;Landroid/util/Size;)Landroidx/camera/core/impl/SessionConfig$Builder;

    move-result-object v0

    iput-object v0, p0, Landroidx/camera/core/ImageCapture;->mSessionConfigBuilder:Landroidx/camera/core/impl/SessionConfig$Builder;

    .line 1033
    invoke-virtual {v0}, Landroidx/camera/core/impl/SessionConfig$Builder;->build()Landroidx/camera/core/impl/SessionConfig;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/camera/core/ImageCapture;->updateSessionConfig(Landroidx/camera/core/impl/SessionConfig;)V

    .line 1037
    invoke-virtual {p0}, Landroidx/camera/core/ImageCapture;->notifyActive()V

    return-object p1
.end method

.method postTakePicture(Landroidx/camera/core/ImageCapture$TakePictureState;)V
    .locals 0

    .line 1069
    invoke-virtual {p0, p1}, Landroidx/camera/core/ImageCapture;->cancelAfAeTrigger(Landroidx/camera/core/ImageCapture$TakePictureState;)V

    return-void
.end method

.method public setCropAspectRatio(Landroid/util/Rational;)V
    .locals 3

    .line 502
    invoke-virtual {p0}, Landroidx/camera/core/ImageCapture;->getUseCaseConfig()Landroidx/camera/core/impl/UseCaseConfig;

    move-result-object v0

    check-cast v0, Landroidx/camera/core/impl/ImageCaptureConfig;

    .line 503
    invoke-static {v0}, Landroidx/camera/core/ImageCapture$Builder;->fromConfig(Landroidx/camera/core/impl/ImageCaptureConfig;)Landroidx/camera/core/ImageCapture$Builder;

    move-result-object v0

    .line 504
    iget-object v1, p0, Landroidx/camera/core/ImageCapture;->mUserSettingConfig:Landroidx/camera/core/impl/ImageCaptureConfig;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroidx/camera/core/impl/ImageCaptureConfig;->getTargetAspectRatioCustom(Landroid/util/Rational;)Landroid/util/Rational;

    move-result-object v1

    .line 505
    invoke-virtual {p1, v1}, Landroid/util/Rational;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 506
    invoke-virtual {v0, p1}, Landroidx/camera/core/ImageCapture$Builder;->setTargetAspectRatioCustom(Landroid/util/Rational;)Landroidx/camera/core/ImageCapture$Builder;

    .line 507
    invoke-virtual {v0}, Landroidx/camera/core/ImageCapture$Builder;->getUseCaseConfig()Landroidx/camera/core/impl/ImageCaptureConfig;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/camera/core/ImageCapture;->updateUseCaseConfig(Landroidx/camera/core/impl/UseCaseConfig;)V

    .line 508
    invoke-virtual {p0}, Landroidx/camera/core/ImageCapture;->getUseCaseConfig()Landroidx/camera/core/impl/UseCaseConfig;

    move-result-object p1

    check-cast p1, Landroidx/camera/core/impl/ImageCaptureConfig;

    iput-object p1, p0, Landroidx/camera/core/ImageCapture;->mUserSettingConfig:Landroidx/camera/core/impl/ImageCaptureConfig;

    :cond_0
    return-void
.end method

.method public setFlashMode(I)V
    .locals 1

    .line 458
    iput p1, p0, Landroidx/camera/core/ImageCapture;->mFlashMode:I

    .line 465
    invoke-virtual {p0}, Landroidx/camera/core/ImageCapture;->getCamera()Landroidx/camera/core/impl/CameraInternal;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 466
    invoke-virtual {p0}, Landroidx/camera/core/ImageCapture;->getCameraControl()Landroidx/camera/core/impl/CameraControlInternal;

    move-result-object v0

    invoke-interface {v0, p1}, Landroidx/camera/core/impl/CameraControlInternal;->setFlashMode(I)V

    :cond_0
    return-void
.end method

.method public setTargetRotation(I)V
    .locals 3

    .line 575
    invoke-virtual {p0}, Landroidx/camera/core/ImageCapture;->getUseCaseConfig()Landroidx/camera/core/impl/UseCaseConfig;

    move-result-object v0

    check-cast v0, Landroidx/camera/core/impl/ImageCaptureConfig;

    .line 576
    invoke-static {v0}, Landroidx/camera/core/ImageCapture$Builder;->fromConfig(Landroidx/camera/core/impl/ImageCaptureConfig;)Landroidx/camera/core/ImageCapture$Builder;

    move-result-object v1

    const/4 v2, -0x1

    .line 577
    invoke-virtual {v0, v2}, Landroidx/camera/core/impl/ImageCaptureConfig;->getTargetRotation(I)I

    move-result v0

    if-eq v0, v2, :cond_0

    if-eq v0, p1, :cond_1

    .line 579
    :cond_0
    invoke-static {v1, p1}, Landroidx/camera/core/internal/utils/UseCaseConfigUtil;->updateTargetRotationAndRelatedConfigs(Landroidx/camera/core/impl/UseCaseConfig$Builder;I)V

    .line 580
    invoke-virtual {v1}, Landroidx/camera/core/ImageCapture$Builder;->getUseCaseConfig()Landroidx/camera/core/impl/ImageCaptureConfig;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/camera/core/ImageCapture;->updateUseCaseConfig(Landroidx/camera/core/impl/UseCaseConfig;)V

    .line 581
    invoke-virtual {p0}, Landroidx/camera/core/ImageCapture;->getUseCaseConfig()Landroidx/camera/core/impl/UseCaseConfig;

    move-result-object p1

    check-cast p1, Landroidx/camera/core/impl/ImageCaptureConfig;

    iput-object p1, p0, Landroidx/camera/core/ImageCapture;->mUserSettingConfig:Landroidx/camera/core/impl/ImageCaptureConfig;

    :cond_1
    return-void
.end method

.method public takePicture(Landroidx/camera/core/ImageCapture$OutputFileOptions;Ljava/util/concurrent/Executor;Landroidx/camera/core/ImageCapture$OnImageSavedCallback;)V
    .locals 8

    .line 631
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 632
    invoke-static {}, Landroidx/camera/core/impl/utils/executor/CameraXExecutors;->mainThreadExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    new-instance v1, Landroidx/camera/core/ImageCapture$$ExternalSyntheticLambda9;

    invoke-direct {v1, p0, p1, p2, p3}, Landroidx/camera/core/ImageCapture$$ExternalSyntheticLambda9;-><init>(Landroidx/camera/core/ImageCapture;Landroidx/camera/core/ImageCapture$OutputFileOptions;Ljava/util/concurrent/Executor;Landroidx/camera/core/ImageCapture$OnImageSavedCallback;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void

    .line 657
    :cond_0
    new-instance v6, Landroidx/camera/core/ImageCapture$3;

    invoke-direct {v6, p0, p3}, Landroidx/camera/core/ImageCapture$3;-><init>(Landroidx/camera/core/ImageCapture;Landroidx/camera/core/ImageCapture$OnImageSavedCallback;)V

    .line 684
    new-instance v0, Landroidx/camera/core/ImageCapture$4;

    move-object v2, v0

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v7, p3

    invoke-direct/range {v2 .. v7}, Landroidx/camera/core/ImageCapture$4;-><init>(Landroidx/camera/core/ImageCapture;Landroidx/camera/core/ImageCapture$OutputFileOptions;Ljava/util/concurrent/Executor;Landroidx/camera/core/ImageSaver$OnImageSavedCallback;Landroidx/camera/core/ImageCapture$OnImageSavedCallback;)V

    .line 705
    invoke-static {}, Landroidx/camera/core/impl/utils/executor/CameraXExecutors;->mainThreadExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object p1

    invoke-direct {p0, p1, v0}, Landroidx/camera/core/ImageCapture;->sendImageCaptureRequest(Ljava/util/concurrent/Executor;Landroidx/camera/core/ImageCapture$OnImageCapturedCallback;)V

    return-void
.end method

.method public takePicture(Ljava/util/concurrent/Executor;Landroidx/camera/core/ImageCapture$OnImageCapturedCallback;)V
    .locals 2

    .line 610
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 611
    invoke-static {}, Landroidx/camera/core/impl/utils/executor/CameraXExecutors;->mainThreadExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    new-instance v1, Landroidx/camera/core/ImageCapture$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0, p1, p2}, Landroidx/camera/core/ImageCapture$$ExternalSyntheticLambda7;-><init>(Landroidx/camera/core/ImageCapture;Ljava/util/concurrent/Executor;Landroidx/camera/core/ImageCapture$OnImageCapturedCallback;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void

    .line 615
    :cond_0
    invoke-direct {p0, p1, p2}, Landroidx/camera/core/ImageCapture;->sendImageCaptureRequest(Ljava/util/concurrent/Executor;Landroidx/camera/core/ImageCapture$OnImageCapturedCallback;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 993
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ImageCapture:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/camera/core/ImageCapture;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method triggerAePrecapture(Landroidx/camera/core/ImageCapture$TakePictureState;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/camera/core/ImageCapture$TakePictureState;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroidx/camera/core/impl/CameraCaptureResult;",
            ">;"
        }
    .end annotation

    .line 1199
    sget-boolean v0, Landroidx/camera/core/ImageCapture;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "ImageCapture"

    const-string v1, "triggerAePrecapture"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x1

    .line 1200
    iput-boolean v0, p1, Landroidx/camera/core/ImageCapture$TakePictureState;->mIsAePrecaptureTriggered:Z

    .line 1201
    invoke-virtual {p0}, Landroidx/camera/core/ImageCapture;->getCameraControl()Landroidx/camera/core/impl/CameraControlInternal;

    move-result-object p1

    invoke-interface {p1}, Landroidx/camera/core/impl/CameraControlInternal;->triggerAePrecapture()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method

.method triggerAfIfNeeded(Landroidx/camera/core/ImageCapture$TakePictureState;)V
    .locals 2

    .line 1180
    iget-boolean v0, p0, Landroidx/camera/core/ImageCapture;->mEnableCheck3AConverged:Z

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroidx/camera/core/ImageCapture$TakePictureState;->mPreCaptureState:Landroidx/camera/core/impl/CameraCaptureResult;

    .line 1181
    invoke-interface {v0}, Landroidx/camera/core/impl/CameraCaptureResult;->getAfMode()Landroidx/camera/core/impl/CameraCaptureMetaData$AfMode;

    move-result-object v0

    sget-object v1, Landroidx/camera/core/impl/CameraCaptureMetaData$AfMode;->ON_MANUAL_AUTO:Landroidx/camera/core/impl/CameraCaptureMetaData$AfMode;

    if-ne v0, v1, :cond_0

    iget-object v0, p1, Landroidx/camera/core/ImageCapture$TakePictureState;->mPreCaptureState:Landroidx/camera/core/impl/CameraCaptureResult;

    .line 1182
    invoke-interface {v0}, Landroidx/camera/core/impl/CameraCaptureResult;->getAfState()Landroidx/camera/core/impl/CameraCaptureMetaData$AfState;

    move-result-object v0

    sget-object v1, Landroidx/camera/core/impl/CameraCaptureMetaData$AfState;->INACTIVE:Landroidx/camera/core/impl/CameraCaptureMetaData$AfState;

    if-ne v0, v1, :cond_0

    .line 1183
    invoke-direct {p0, p1}, Landroidx/camera/core/ImageCapture;->triggerAf(Landroidx/camera/core/ImageCapture$TakePictureState;)V

    :cond_0
    return-void
.end method
