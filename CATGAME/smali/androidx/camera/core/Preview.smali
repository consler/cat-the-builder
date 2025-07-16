.class public final Landroidx/camera/core/Preview;
.super Landroidx/camera/core/UseCase;
.source "Preview.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/core/Preview$Builder;,
        Landroidx/camera/core/Preview$Defaults;,
        Landroidx/camera/core/Preview$SurfaceProvider;
    }
.end annotation


# static fields
.field public static final DEFAULT_CONFIG:Landroidx/camera/core/Preview$Defaults;

.field private static final DEFAULT_SURFACE_PROVIDER_EXECUTOR:Ljava/util/concurrent/Executor;

.field private static final TAG:Ljava/lang/String; = "Preview"


# instance fields
.field private mLatestResolution:Landroid/util/Size;

.field private mProcessingPreviewHandler:Landroid/os/Handler;

.field private mProcessingPreviewThread:Landroid/os/HandlerThread;

.field private mSessionDeferrableSurface:Landroidx/camera/core/impl/DeferrableSurface;

.field mSurfaceProvider:Landroidx/camera/core/Preview$SurfaceProvider;

.field private mSurfaceProviderCompleter:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer<",
            "Landroid/util/Pair<",
            "Landroidx/camera/core/Preview$SurfaceProvider;",
            "Ljava/util/concurrent/Executor;",
            ">;>;"
        }
    .end annotation
.end field

.field mSurfaceProviderExecutor:Ljava/util/concurrent/Executor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 142
    new-instance v0, Landroidx/camera/core/Preview$Defaults;

    invoke-direct {v0}, Landroidx/camera/core/Preview$Defaults;-><init>()V

    sput-object v0, Landroidx/camera/core/Preview;->DEFAULT_CONFIG:Landroidx/camera/core/Preview$Defaults;

    .line 145
    invoke-static {}, Landroidx/camera/core/impl/utils/executor/CameraXExecutors;->mainThreadExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    sput-object v0, Landroidx/camera/core/Preview;->DEFAULT_SURFACE_PROVIDER_EXECUTOR:Ljava/util/concurrent/Executor;

    return-void
.end method

.method constructor <init>(Landroidx/camera/core/impl/PreviewConfig;)V
    .locals 0

    .line 174
    invoke-direct {p0, p1}, Landroidx/camera/core/UseCase;-><init>(Landroidx/camera/core/impl/UseCaseConfig;)V

    .line 155
    sget-object p1, Landroidx/camera/core/Preview;->DEFAULT_SURFACE_PROVIDER_EXECUTOR:Ljava/util/concurrent/Executor;

    iput-object p1, p0, Landroidx/camera/core/Preview;->mSurfaceProviderExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method

.method private onSurfaceProviderAvailable()V
    .locals 4

    .line 334
    iget-object v0, p0, Landroidx/camera/core/Preview;->mSurfaceProviderCompleter:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    if-eqz v0, :cond_0

    .line 335
    new-instance v1, Landroid/util/Pair;

    iget-object v2, p0, Landroidx/camera/core/Preview;->mSurfaceProvider:Landroidx/camera/core/Preview$SurfaceProvider;

    iget-object v3, p0, Landroidx/camera/core/Preview;->mSurfaceProviderExecutor:Ljava/util/concurrent/Executor;

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->set(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    .line 336
    iput-object v0, p0, Landroidx/camera/core/Preview;->mSurfaceProviderCompleter:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    goto :goto_0

    .line 337
    :cond_0
    iget-object v0, p0, Landroidx/camera/core/Preview;->mLatestResolution:Landroid/util/Size;

    if-eqz v0, :cond_1

    .line 338
    invoke-virtual {p0}, Landroidx/camera/core/Preview;->getCameraId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/camera/core/Preview;->getUseCaseConfig()Landroidx/camera/core/impl/UseCaseConfig;

    move-result-object v1

    check-cast v1, Landroidx/camera/core/impl/PreviewConfig;

    iget-object v2, p0, Landroidx/camera/core/Preview;->mLatestResolution:Landroid/util/Size;

    invoke-direct {p0, v0, v1, v2}, Landroidx/camera/core/Preview;->updateConfigAndOutput(Ljava/lang/String;Landroidx/camera/core/impl/PreviewConfig;Landroid/util/Size;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private setUpSurfaceProviderWrap(Landroidx/camera/core/SurfaceRequest;)V
    .locals 2

    .line 261
    new-instance v0, Landroidx/camera/core/Preview$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Landroidx/camera/core/Preview$$ExternalSyntheticLambda0;-><init>(Landroidx/camera/core/Preview;)V

    .line 262
    invoke-static {v0}, Landroidx/concurrent/futures/CallbackToFutureAdapter;->getFuture(Landroidx/concurrent/futures/CallbackToFutureAdapter$Resolver;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    .line 275
    new-instance v1, Landroidx/camera/core/Preview$3;

    invoke-direct {v1, p0, p1}, Landroidx/camera/core/Preview$3;-><init>(Landroidx/camera/core/Preview;Landroidx/camera/core/SurfaceRequest;)V

    .line 293
    invoke-static {}, Landroidx/camera/core/impl/utils/executor/CameraXExecutors;->directExecutor()Ljava/util/concurrent/Executor;

    move-result-object p1

    .line 275
    invoke-static {v0, v1, p1}, Landroidx/camera/core/impl/utils/futures/Futures;->addCallback(Lcom/google/common/util/concurrent/ListenableFuture;Landroidx/camera/core/impl/utils/futures/FutureCallback;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method private updateConfigAndOutput(Ljava/lang/String;Landroidx/camera/core/impl/PreviewConfig;Landroid/util/Size;)V
    .locals 0

    .line 362
    invoke-virtual {p0, p1, p2, p3}, Landroidx/camera/core/Preview;->createPipeline(Ljava/lang/String;Landroidx/camera/core/impl/PreviewConfig;Landroid/util/Size;)Landroidx/camera/core/impl/SessionConfig$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/camera/core/impl/SessionConfig$Builder;->build()Landroidx/camera/core/impl/SessionConfig;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/camera/core/Preview;->updateSessionConfig(Landroidx/camera/core/impl/SessionConfig;)V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 3

    .line 413
    invoke-virtual {p0}, Landroidx/camera/core/Preview;->notifyInactive()V

    .line 414
    iget-object v0, p0, Landroidx/camera/core/Preview;->mSessionDeferrableSurface:Landroidx/camera/core/impl/DeferrableSurface;

    if-eqz v0, :cond_0

    .line 415
    invoke-virtual {v0}, Landroidx/camera/core/impl/DeferrableSurface;->close()V

    .line 416
    iget-object v0, p0, Landroidx/camera/core/Preview;->mSessionDeferrableSurface:Landroidx/camera/core/impl/DeferrableSurface;

    invoke-virtual {v0}, Landroidx/camera/core/impl/DeferrableSurface;->getTerminationFuture()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    new-instance v1, Landroidx/camera/core/Preview$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Landroidx/camera/core/Preview$$ExternalSyntheticLambda1;-><init>(Landroidx/camera/core/Preview;)V

    .line 421
    invoke-static {}, Landroidx/camera/core/impl/utils/executor/CameraXExecutors;->directExecutor()Ljava/util/concurrent/Executor;

    move-result-object v2

    .line 416
    invoke-interface {v0, v1, v2}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 423
    :cond_0
    iget-object v0, p0, Landroidx/camera/core/Preview;->mSurfaceProviderCompleter:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    if-eqz v0, :cond_1

    .line 424
    invoke-virtual {v0}, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->setCancelled()Z

    const/4 v0, 0x0

    .line 425
    iput-object v0, p0, Landroidx/camera/core/Preview;->mSurfaceProviderCompleter:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    :cond_1
    return-void
.end method

.method createPipeline(Ljava/lang/String;Landroidx/camera/core/impl/PreviewConfig;Landroid/util/Size;)Landroidx/camera/core/impl/SessionConfig$Builder;
    .locals 11

    .line 180
    invoke-static {}, Landroidx/camera/core/impl/utils/Threads;->checkMainThread()V

    .line 181
    invoke-static {p2}, Landroidx/camera/core/impl/SessionConfig$Builder;->createFrom(Landroidx/camera/core/impl/UseCaseConfig;)Landroidx/camera/core/impl/SessionConfig$Builder;

    move-result-object v0

    const/4 v1, 0x0

    .line 182
    invoke-virtual {p2, v1}, Landroidx/camera/core/impl/PreviewConfig;->getCaptureProcessor(Landroidx/camera/core/impl/CaptureProcessor;)Landroidx/camera/core/impl/CaptureProcessor;

    move-result-object v8

    .line 185
    iget-object v2, p0, Landroidx/camera/core/Preview;->mSessionDeferrableSurface:Landroidx/camera/core/impl/DeferrableSurface;

    if-eqz v2, :cond_0

    .line 186
    invoke-virtual {v2}, Landroidx/camera/core/impl/DeferrableSurface;->close()V

    .line 189
    :cond_0
    new-instance v2, Landroidx/camera/core/SurfaceRequest;

    .line 190
    invoke-virtual {p0}, Landroidx/camera/core/Preview;->getCamera()Landroidx/camera/core/impl/CameraInternal;

    move-result-object v3

    invoke-virtual {p0}, Landroidx/camera/core/Preview;->getViewPortCropRect()Landroid/graphics/Rect;

    move-result-object v4

    invoke-direct {v2, p3, v3, v4}, Landroidx/camera/core/SurfaceRequest;-><init>(Landroid/util/Size;Landroidx/camera/core/Camera;Landroid/graphics/Rect;)V

    .line 191
    invoke-direct {p0, v2}, Landroidx/camera/core/Preview;->setUpSurfaceProviderWrap(Landroidx/camera/core/SurfaceRequest;)V

    if-eqz v8, :cond_2

    .line 194
    new-instance v1, Landroidx/camera/core/impl/CaptureStage$DefaultCaptureStage;

    invoke-direct {v1}, Landroidx/camera/core/impl/CaptureStage$DefaultCaptureStage;-><init>()V

    .line 197
    iget-object v3, p0, Landroidx/camera/core/Preview;->mProcessingPreviewThread:Landroid/os/HandlerThread;

    if-nez v3, :cond_1

    .line 198
    new-instance v3, Landroid/os/HandlerThread;

    const-string v4, "CameraX-preview_processing"

    invoke-direct {v3, v4}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Landroidx/camera/core/Preview;->mProcessingPreviewThread:Landroid/os/HandlerThread;

    .line 200
    invoke-virtual {v3}, Landroid/os/HandlerThread;->start()V

    .line 201
    new-instance v3, Landroid/os/Handler;

    iget-object v4, p0, Landroidx/camera/core/Preview;->mProcessingPreviewThread:Landroid/os/HandlerThread;

    invoke-virtual {v4}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v3, p0, Landroidx/camera/core/Preview;->mProcessingPreviewHandler:Landroid/os/Handler;

    .line 204
    :cond_1
    new-instance v10, Landroidx/camera/core/ProcessingSurface;

    .line 205
    invoke-virtual {p3}, Landroid/util/Size;->getWidth()I

    move-result v3

    .line 206
    invoke-virtual {p3}, Landroid/util/Size;->getHeight()I

    move-result v4

    .line 207
    invoke-virtual {p2}, Landroidx/camera/core/impl/PreviewConfig;->getInputFormat()I

    move-result v5

    iget-object v6, p0, Landroidx/camera/core/Preview;->mProcessingPreviewHandler:Landroid/os/Handler;

    .line 211
    invoke-virtual {v2}, Landroidx/camera/core/SurfaceRequest;->getDeferrableSurface()Landroidx/camera/core/impl/DeferrableSurface;

    move-result-object v9

    move-object v2, v10

    move-object v7, v1

    invoke-direct/range {v2 .. v9}, Landroidx/camera/core/ProcessingSurface;-><init>(IIILandroid/os/Handler;Landroidx/camera/core/impl/CaptureStage;Landroidx/camera/core/impl/CaptureProcessor;Landroidx/camera/core/impl/DeferrableSurface;)V

    .line 214
    invoke-virtual {v10}, Landroidx/camera/core/ProcessingSurface;->getCameraCaptureCallback()Landroidx/camera/core/impl/CameraCaptureCallback;

    move-result-object v2

    .line 213
    invoke-virtual {v0, v2}, Landroidx/camera/core/impl/SessionConfig$Builder;->addCameraCaptureCallback(Landroidx/camera/core/impl/CameraCaptureCallback;)V

    .line 216
    iput-object v10, p0, Landroidx/camera/core/Preview;->mSessionDeferrableSurface:Landroidx/camera/core/impl/DeferrableSurface;

    .line 217
    invoke-interface {v1}, Landroidx/camera/core/impl/CaptureStage;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/camera/core/impl/SessionConfig$Builder;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 219
    :cond_2
    invoke-virtual {p2, v1}, Landroidx/camera/core/impl/PreviewConfig;->getImageInfoProcessor(Landroidx/camera/core/impl/ImageInfoProcessor;)Landroidx/camera/core/impl/ImageInfoProcessor;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 222
    new-instance v3, Landroidx/camera/core/Preview$1;

    invoke-direct {v3, p0, v1}, Landroidx/camera/core/Preview$1;-><init>(Landroidx/camera/core/Preview;Landroidx/camera/core/impl/ImageInfoProcessor;)V

    invoke-virtual {v0, v3}, Landroidx/camera/core/impl/SessionConfig$Builder;->addCameraCaptureCallback(Landroidx/camera/core/impl/CameraCaptureCallback;)V

    .line 234
    :cond_3
    invoke-virtual {v2}, Landroidx/camera/core/SurfaceRequest;->getDeferrableSurface()Landroidx/camera/core/impl/DeferrableSurface;

    move-result-object v1

    iput-object v1, p0, Landroidx/camera/core/Preview;->mSessionDeferrableSurface:Landroidx/camera/core/impl/DeferrableSurface;

    .line 236
    :goto_0
    iget-object v1, p0, Landroidx/camera/core/Preview;->mSessionDeferrableSurface:Landroidx/camera/core/impl/DeferrableSurface;

    invoke-virtual {v0, v1}, Landroidx/camera/core/impl/SessionConfig$Builder;->addSurface(Landroidx/camera/core/impl/DeferrableSurface;)V

    .line 237
    new-instance v1, Landroidx/camera/core/Preview$2;

    invoke-direct {v1, p0, p1, p2, p3}, Landroidx/camera/core/Preview$2;-><init>(Landroidx/camera/core/Preview;Ljava/lang/String;Landroidx/camera/core/impl/PreviewConfig;Landroid/util/Size;)V

    invoke-virtual {v0, v1}, Landroidx/camera/core/impl/SessionConfig$Builder;->addErrorListener(Landroidx/camera/core/impl/SessionConfig$ErrorListener;)V

    return-object v0
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

    .line 397
    const-class v0, Landroidx/camera/core/impl/PreviewConfig;

    invoke-static {v0, p1}, Landroidx/camera/core/CameraX;->getDefaultUseCaseConfig(Ljava/lang/Class;Landroidx/camera/core/CameraInfo;)Landroidx/camera/core/impl/UseCaseConfig;

    move-result-object p1

    check-cast p1, Landroidx/camera/core/impl/PreviewConfig;

    if-eqz p1, :cond_0

    .line 399
    invoke-static {p1}, Landroidx/camera/core/Preview$Builder;->fromConfig(Landroidx/camera/core/impl/PreviewConfig;)Landroidx/camera/core/Preview$Builder;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getTargetRotation()I
    .locals 1

    .line 379
    invoke-virtual {p0}, Landroidx/camera/core/Preview;->getUseCaseConfig()Landroidx/camera/core/impl/UseCaseConfig;

    move-result-object v0

    check-cast v0, Landroidx/camera/core/impl/PreviewConfig;

    invoke-virtual {v0}, Landroidx/camera/core/impl/PreviewConfig;->getTargetRotation()I

    move-result v0

    return v0
.end method

.method synthetic lambda$clear$1$androidx-camera-core-Preview()V
    .locals 1

    .line 417
    iget-object v0, p0, Landroidx/camera/core/Preview;->mProcessingPreviewThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    .line 418
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    const/4 v0, 0x0

    .line 419
    iput-object v0, p0, Landroidx/camera/core/Preview;->mProcessingPreviewThread:Landroid/os/HandlerThread;

    :cond_0
    return-void
.end method

.method synthetic lambda$setUpSurfaceProviderWrap$0$androidx-camera-core-Preview(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 263
    iget-object v0, p0, Landroidx/camera/core/Preview;->mSurfaceProviderCompleter:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    if-eqz v0, :cond_0

    .line 264
    invoke-virtual {v0}, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->setCancelled()Z

    .line 267
    :cond_0
    iput-object p1, p0, Landroidx/camera/core/Preview;->mSurfaceProviderCompleter:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    .line 268
    iget-object v0, p0, Landroidx/camera/core/Preview;->mSurfaceProvider:Landroidx/camera/core/Preview$SurfaceProvider;

    if-eqz v0, :cond_1

    .line 269
    new-instance v0, Landroid/util/Pair;

    iget-object v1, p0, Landroidx/camera/core/Preview;->mSurfaceProvider:Landroidx/camera/core/Preview$SurfaceProvider;

    iget-object v2, p0, Landroidx/camera/core/Preview;->mSurfaceProviderExecutor:Ljava/util/concurrent/Executor;

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p1, v0}, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->set(Ljava/lang/Object;)Z

    const/4 p1, 0x0

    .line 271
    iput-object p1, p0, Landroidx/camera/core/Preview;->mSurfaceProviderCompleter:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    :cond_1
    const-string p1, "surface provider and executor future"

    return-object p1
.end method

.method public onDestroy()V
    .locals 1

    const/4 v0, 0x0

    .line 437
    iput-object v0, p0, Landroidx/camera/core/Preview;->mSurfaceProvider:Landroidx/camera/core/Preview$SurfaceProvider;

    return-void
.end method

.method protected onSuggestedResolutionUpdated(Landroid/util/Size;)Landroid/util/Size;
    .locals 2

    .line 449
    iput-object p1, p0, Landroidx/camera/core/Preview;->mLatestResolution:Landroid/util/Size;

    .line 451
    invoke-virtual {p0}, Landroidx/camera/core/Preview;->getCameraId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/camera/core/Preview;->getUseCaseConfig()Landroidx/camera/core/impl/UseCaseConfig;

    move-result-object v0

    check-cast v0, Landroidx/camera/core/impl/PreviewConfig;

    iget-object v1, p0, Landroidx/camera/core/Preview;->mLatestResolution:Landroid/util/Size;

    invoke-direct {p0, p1, v0, v1}, Landroidx/camera/core/Preview;->updateConfigAndOutput(Ljava/lang/String;Landroidx/camera/core/impl/PreviewConfig;Landroid/util/Size;)V

    .line 454
    iget-object p1, p0, Landroidx/camera/core/Preview;->mLatestResolution:Landroid/util/Size;

    return-object p1
.end method

.method public setSurfaceProvider(Landroidx/camera/core/Preview$SurfaceProvider;)V
    .locals 1

    .line 357
    sget-object v0, Landroidx/camera/core/Preview;->DEFAULT_SURFACE_PROVIDER_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, v0, p1}, Landroidx/camera/core/Preview;->setSurfaceProvider(Ljava/util/concurrent/Executor;Landroidx/camera/core/Preview$SurfaceProvider;)V

    return-void
.end method

.method public setSurfaceProvider(Ljava/util/concurrent/Executor;Landroidx/camera/core/Preview$SurfaceProvider;)V
    .locals 0

    .line 311
    invoke-static {}, Landroidx/camera/core/impl/utils/Threads;->checkMainThread()V

    if-nez p2, :cond_0

    const/4 p1, 0x0

    .line 313
    iput-object p1, p0, Landroidx/camera/core/Preview;->mSurfaceProvider:Landroidx/camera/core/Preview$SurfaceProvider;

    .line 314
    invoke-virtual {p0}, Landroidx/camera/core/Preview;->notifyInactive()V

    goto :goto_0

    .line 316
    :cond_0
    iput-object p2, p0, Landroidx/camera/core/Preview;->mSurfaceProvider:Landroidx/camera/core/Preview$SurfaceProvider;

    .line 317
    iput-object p1, p0, Landroidx/camera/core/Preview;->mSurfaceProviderExecutor:Ljava/util/concurrent/Executor;

    .line 318
    invoke-virtual {p0}, Landroidx/camera/core/Preview;->notifyActive()V

    .line 319
    invoke-direct {p0}, Landroidx/camera/core/Preview;->onSurfaceProviderAvailable()V

    .line 324
    iget-object p1, p0, Landroidx/camera/core/Preview;->mSessionDeferrableSurface:Landroidx/camera/core/impl/DeferrableSurface;

    if-eqz p1, :cond_1

    .line 325
    invoke-virtual {p1}, Landroidx/camera/core/impl/DeferrableSurface;->close()V

    .line 329
    :cond_1
    invoke-virtual {p0}, Landroidx/camera/core/Preview;->notifyReset()V

    :goto_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 385
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Preview:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/camera/core/Preview;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
