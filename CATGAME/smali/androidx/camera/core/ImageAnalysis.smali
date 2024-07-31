.class public final Landroidx/camera/core/ImageAnalysis;
.super Landroidx/camera/core/UseCase;
.source "ImageAnalysis.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/core/ImageAnalysis$Builder;,
        Landroidx/camera/core/ImageAnalysis$Defaults;,
        Landroidx/camera/core/ImageAnalysis$Analyzer;,
        Landroidx/camera/core/ImageAnalysis$BackpressureStrategy;
    }
.end annotation


# static fields
.field public static final DEFAULT_CONFIG:Landroidx/camera/core/ImageAnalysis$Defaults;

.field private static final NON_BLOCKING_IMAGE_DEPTH:I = 0x4

.field public static final STRATEGY_BLOCK_PRODUCER:I = 0x1

.field public static final STRATEGY_KEEP_ONLY_LATEST:I = 0x0

.field private static final TAG:Ljava/lang/String; = "ImageAnalysis"


# instance fields
.field private final mAnalysisLock:Ljava/lang/Object;

.field private mDeferrableSurface:Landroidx/camera/core/impl/DeferrableSurface;

.field final mImageAnalysisAbstractAnalyzer:Landroidx/camera/core/ImageAnalysisAbstractAnalyzer;

.field private mSubscribedAnalyzer:Landroidx/camera/core/ImageAnalysis$Analyzer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 139
    new-instance v0, Landroidx/camera/core/ImageAnalysis$Defaults;

    invoke-direct {v0}, Landroidx/camera/core/ImageAnalysis$Defaults;-><init>()V

    sput-object v0, Landroidx/camera/core/ImageAnalysis;->DEFAULT_CONFIG:Landroidx/camera/core/ImageAnalysis$Defaults;

    return-void
.end method

.method constructor <init>(Landroidx/camera/core/impl/ImageAnalysisConfig;)V
    .locals 3
    .param p1, "config"    # Landroidx/camera/core/impl/ImageAnalysisConfig;

    .line 159
    invoke-direct {p0, p1}, Landroidx/camera/core/UseCase;-><init>(Landroidx/camera/core/impl/UseCaseConfig;)V

    .line 146
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroidx/camera/core/ImageAnalysis;->mAnalysisLock:Ljava/lang/Object;

    .line 162
    invoke-virtual {p0}, Landroidx/camera/core/ImageAnalysis;->getUseCaseConfig()Landroidx/camera/core/impl/UseCaseConfig;

    move-result-object v0

    check-cast v0, Landroidx/camera/core/impl/ImageAnalysisConfig;

    .line 164
    .local v0, "combinedConfig":Landroidx/camera/core/impl/ImageAnalysisConfig;
    invoke-virtual {v0}, Landroidx/camera/core/impl/ImageAnalysisConfig;->getBackpressureStrategy()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 165
    new-instance v1, Landroidx/camera/core/ImageAnalysisBlockingAnalyzer;

    invoke-direct {v1}, Landroidx/camera/core/ImageAnalysisBlockingAnalyzer;-><init>()V

    iput-object v1, p0, Landroidx/camera/core/ImageAnalysis;->mImageAnalysisAbstractAnalyzer:Landroidx/camera/core/ImageAnalysisAbstractAnalyzer;

    goto :goto_0

    .line 167
    :cond_0
    new-instance v1, Landroidx/camera/core/ImageAnalysisNonBlockingAnalyzer;

    .line 168
    invoke-static {}, Landroidx/camera/core/impl/utils/executor/CameraXExecutors;->highPriorityExecutor()Ljava/util/concurrent/Executor;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroidx/camera/core/impl/ImageAnalysisConfig;->getBackgroundExecutor(Ljava/util/concurrent/Executor;)Ljava/util/concurrent/Executor;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/camera/core/ImageAnalysisNonBlockingAnalyzer;-><init>(Ljava/util/concurrent/Executor;)V

    iput-object v1, p0, Landroidx/camera/core/ImageAnalysis;->mImageAnalysisAbstractAnalyzer:Landroidx/camera/core/ImageAnalysisAbstractAnalyzer;

    .line 170
    :goto_0
    return-void
.end method

.method private tryUpdateRelativeRotation()V
    .locals 4

    .line 485
    invoke-virtual {p0}, Landroidx/camera/core/ImageAnalysis;->getUseCaseConfig()Landroidx/camera/core/impl/UseCaseConfig;

    move-result-object v0

    check-cast v0, Landroidx/camera/core/impl/ImageOutputConfig;

    .line 486
    .local v0, "config":Landroidx/camera/core/impl/ImageOutputConfig;
    invoke-virtual {p0}, Landroidx/camera/core/ImageAnalysis;->getCamera()Landroidx/camera/core/impl/CameraInternal;

    move-result-object v1

    invoke-interface {v1}, Landroidx/camera/core/impl/CameraInternal;->getCameraInfoInternal()Landroidx/camera/core/impl/CameraInfoInternal;

    move-result-object v1

    .line 487
    .local v1, "cameraInfoInternal":Landroidx/camera/core/impl/CameraInfoInternal;
    iget-object v2, p0, Landroidx/camera/core/ImageAnalysis;->mImageAnalysisAbstractAnalyzer:Landroidx/camera/core/ImageAnalysisAbstractAnalyzer;

    .line 489
    const/4 v3, 0x0

    invoke-interface {v0, v3}, Landroidx/camera/core/impl/ImageOutputConfig;->getTargetRotation(I)I

    move-result v3

    .line 488
    invoke-interface {v1, v3}, Landroidx/camera/core/impl/CameraInfoInternal;->getSensorRotationDegrees(I)I

    move-result v3

    .line 487
    invoke-virtual {v2, v3}, Landroidx/camera/core/ImageAnalysisAbstractAnalyzer;->setRelativeRotation(I)V

    .line 490
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 0

    .line 434
    invoke-virtual {p0}, Landroidx/camera/core/ImageAnalysis;->clearPipeline()V

    .line 435
    return-void
.end method

.method public clearAnalyzer()V
    .locals 3

    .line 255
    iget-object v0, p0, Landroidx/camera/core/ImageAnalysis;->mAnalysisLock:Ljava/lang/Object;

    monitor-enter v0

    .line 256
    :try_start_0
    iget-object v1, p0, Landroidx/camera/core/ImageAnalysis;->mImageAnalysisAbstractAnalyzer:Landroidx/camera/core/ImageAnalysisAbstractAnalyzer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2}, Landroidx/camera/core/ImageAnalysisAbstractAnalyzer;->setAnalyzer(Ljava/util/concurrent/Executor;Landroidx/camera/core/ImageAnalysis$Analyzer;)V

    .line 257
    iget-object v1, p0, Landroidx/camera/core/ImageAnalysis;->mImageAnalysisAbstractAnalyzer:Landroidx/camera/core/ImageAnalysisAbstractAnalyzer;

    invoke-virtual {v1}, Landroidx/camera/core/ImageAnalysisAbstractAnalyzer;->close()V

    .line 258
    iget-object v1, p0, Landroidx/camera/core/ImageAnalysis;->mSubscribedAnalyzer:Landroidx/camera/core/ImageAnalysis$Analyzer;

    if-eqz v1, :cond_0

    .line 259
    invoke-virtual {p0}, Landroidx/camera/core/ImageAnalysis;->notifyInactive()V

    .line 261
    :cond_0
    iput-object v2, p0, Landroidx/camera/core/ImageAnalysis;->mSubscribedAnalyzer:Landroidx/camera/core/ImageAnalysis$Analyzer;

    .line 262
    monitor-exit v0

    .line 263
    return-void

    .line 262
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method clearPipeline()V
    .locals 1

    .line 240
    invoke-static {}, Landroidx/camera/core/impl/utils/Threads;->checkMainThread()V

    .line 241
    iget-object v0, p0, Landroidx/camera/core/ImageAnalysis;->mImageAnalysisAbstractAnalyzer:Landroidx/camera/core/ImageAnalysisAbstractAnalyzer;

    invoke-virtual {v0}, Landroidx/camera/core/ImageAnalysisAbstractAnalyzer;->close()V

    .line 243
    iget-object v0, p0, Landroidx/camera/core/ImageAnalysis;->mDeferrableSurface:Landroidx/camera/core/impl/DeferrableSurface;

    if-eqz v0, :cond_0

    .line 244
    invoke-virtual {v0}, Landroidx/camera/core/impl/DeferrableSurface;->close()V

    .line 245
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/camera/core/ImageAnalysis;->mDeferrableSurface:Landroidx/camera/core/impl/DeferrableSurface;

    .line 247
    :cond_0
    return-void
.end method

.method createPipeline(Ljava/lang/String;Landroidx/camera/core/impl/ImageAnalysisConfig;Landroid/util/Size;)Landroidx/camera/core/impl/SessionConfig$Builder;
    .locals 10
    .param p1, "cameraId"    # Ljava/lang/String;
    .param p2, "config"    # Landroidx/camera/core/impl/ImageAnalysisConfig;
    .param p3, "resolution"    # Landroid/util/Size;

    .line 175
    invoke-static {}, Landroidx/camera/core/impl/utils/Threads;->checkMainThread()V

    .line 177
    nop

    .line 178
    invoke-static {}, Landroidx/camera/core/impl/utils/executor/CameraXExecutors;->highPriorityExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    .line 177
    invoke-virtual {p2, v0}, Landroidx/camera/core/impl/ImageAnalysisConfig;->getBackgroundExecutor(Ljava/util/concurrent/Executor;)Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-static {v0}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Executor;

    .line 181
    .local v0, "backgroundExecutor":Ljava/util/concurrent/Executor;
    invoke-virtual {p2}, Landroidx/camera/core/impl/ImageAnalysisConfig;->getBackpressureStrategy()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 182
    invoke-virtual {p2}, Landroidx/camera/core/impl/ImageAnalysisConfig;->getImageQueueDepth()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x4

    .line 184
    .local v1, "imageQueueDepth":I
    :goto_0
    invoke-virtual {p2}, Landroidx/camera/core/impl/ImageAnalysisConfig;->getImageReaderProxyProvider()Landroidx/camera/core/ImageReaderProxyProvider;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 185
    new-instance v9, Landroidx/camera/core/SafeCloseImageReaderProxy;

    .line 186
    invoke-virtual {p2}, Landroidx/camera/core/impl/ImageAnalysisConfig;->getImageReaderProxyProvider()Landroidx/camera/core/ImageReaderProxyProvider;

    move-result-object v2

    .line 187
    invoke-virtual {p3}, Landroid/util/Size;->getWidth()I

    move-result v3

    invoke-virtual {p3}, Landroid/util/Size;->getHeight()I

    move-result v4

    invoke-virtual {p0}, Landroidx/camera/core/ImageAnalysis;->getImageFormat()I

    move-result v5

    const-wide/16 v7, 0x0

    .line 186
    move v6, v1

    invoke-interface/range {v2 .. v8}, Landroidx/camera/core/ImageReaderProxyProvider;->newInstance(IIIIJ)Landroidx/camera/core/impl/ImageReaderProxy;

    move-result-object v2

    invoke-direct {v9, v2}, Landroidx/camera/core/SafeCloseImageReaderProxy;-><init>(Landroidx/camera/core/impl/ImageReaderProxy;)V

    move-object v2, v9

    .local v2, "imageReaderProxy":Landroidx/camera/core/SafeCloseImageReaderProxy;
    goto :goto_1

    .line 190
    .end local v2    # "imageReaderProxy":Landroidx/camera/core/SafeCloseImageReaderProxy;
    :cond_1
    new-instance v2, Landroidx/camera/core/SafeCloseImageReaderProxy;

    .line 192
    invoke-virtual {p3}, Landroid/util/Size;->getWidth()I

    move-result v3

    .line 193
    invoke-virtual {p3}, Landroid/util/Size;->getHeight()I

    move-result v4

    .line 194
    invoke-virtual {p0}, Landroidx/camera/core/ImageAnalysis;->getImageFormat()I

    move-result v5

    .line 191
    invoke-static {v3, v4, v5, v1}, Landroidx/camera/core/ImageReaderProxys;->createIsolatedReader(IIII)Landroidx/camera/core/impl/ImageReaderProxy;

    move-result-object v3

    invoke-direct {v2, v3}, Landroidx/camera/core/SafeCloseImageReaderProxy;-><init>(Landroidx/camera/core/impl/ImageReaderProxy;)V

    .line 198
    .restart local v2    # "imageReaderProxy":Landroidx/camera/core/SafeCloseImageReaderProxy;
    :goto_1
    invoke-direct {p0}, Landroidx/camera/core/ImageAnalysis;->tryUpdateRelativeRotation()V

    .line 200
    iget-object v3, p0, Landroidx/camera/core/ImageAnalysis;->mImageAnalysisAbstractAnalyzer:Landroidx/camera/core/ImageAnalysisAbstractAnalyzer;

    invoke-virtual {v3}, Landroidx/camera/core/ImageAnalysisAbstractAnalyzer;->open()V

    .line 201
    iget-object v3, p0, Landroidx/camera/core/ImageAnalysis;->mImageAnalysisAbstractAnalyzer:Landroidx/camera/core/ImageAnalysisAbstractAnalyzer;

    invoke-virtual {v2, v3, v0}, Landroidx/camera/core/SafeCloseImageReaderProxy;->setOnImageAvailableListener(Landroidx/camera/core/impl/ImageReaderProxy$OnImageAvailableListener;Ljava/util/concurrent/Executor;)V

    .line 204
    invoke-static {p2}, Landroidx/camera/core/impl/SessionConfig$Builder;->createFrom(Landroidx/camera/core/impl/UseCaseConfig;)Landroidx/camera/core/impl/SessionConfig$Builder;

    move-result-object v3

    .line 206
    .local v3, "sessionConfigBuilder":Landroidx/camera/core/impl/SessionConfig$Builder;
    iget-object v4, p0, Landroidx/camera/core/ImageAnalysis;->mDeferrableSurface:Landroidx/camera/core/impl/DeferrableSurface;

    if-eqz v4, :cond_2

    .line 207
    invoke-virtual {v4}, Landroidx/camera/core/impl/DeferrableSurface;->close()V

    .line 209
    :cond_2
    new-instance v4, Landroidx/camera/core/impl/ImmediateSurface;

    invoke-virtual {v2}, Landroidx/camera/core/SafeCloseImageReaderProxy;->getSurface()Landroid/view/Surface;

    move-result-object v5

    invoke-direct {v4, v5}, Landroidx/camera/core/impl/ImmediateSurface;-><init>(Landroid/view/Surface;)V

    iput-object v4, p0, Landroidx/camera/core/ImageAnalysis;->mDeferrableSurface:Landroidx/camera/core/impl/DeferrableSurface;

    .line 210
    invoke-virtual {v4}, Landroidx/camera/core/impl/DeferrableSurface;->getTerminationFuture()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v4

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v5, Landroidx/camera/core/-$$Lambda$kBKr-WXSgibOrSk3AWcyOrTIBI0;

    invoke-direct {v5, v2}, Landroidx/camera/core/-$$Lambda$kBKr-WXSgibOrSk3AWcyOrTIBI0;-><init>(Landroidx/camera/core/SafeCloseImageReaderProxy;)V

    .line 211
    invoke-static {}, Landroidx/camera/core/impl/utils/executor/CameraXExecutors;->mainThreadExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v6

    .line 210
    invoke-interface {v4, v5, v6}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 213
    iget-object v4, p0, Landroidx/camera/core/ImageAnalysis;->mDeferrableSurface:Landroidx/camera/core/impl/DeferrableSurface;

    invoke-virtual {v3, v4}, Landroidx/camera/core/impl/SessionConfig$Builder;->addSurface(Landroidx/camera/core/impl/DeferrableSurface;)V

    .line 216
    new-instance v4, Landroidx/camera/core/-$$Lambda$ImageAnalysis$Gd6VUhKl5XOmwdAgw0vhwsuiNpE;

    invoke-direct {v4, p0, p1, p2, p3}, Landroidx/camera/core/-$$Lambda$ImageAnalysis$Gd6VUhKl5XOmwdAgw0vhwsuiNpE;-><init>(Landroidx/camera/core/ImageAnalysis;Ljava/lang/String;Landroidx/camera/core/impl/ImageAnalysisConfig;Landroid/util/Size;)V

    invoke-virtual {v3, v4}, Landroidx/camera/core/impl/SessionConfig$Builder;->addErrorListener(Landroidx/camera/core/impl/SessionConfig$ErrorListener;)V

    .line 232
    return-object v3
.end method

.method public getBackpressureStrategy()I
    .locals 1

    .line 399
    invoke-virtual {p0}, Landroidx/camera/core/ImageAnalysis;->getUseCaseConfig()Landroidx/camera/core/impl/UseCaseConfig;

    move-result-object v0

    check-cast v0, Landroidx/camera/core/impl/ImageAnalysisConfig;

    invoke-virtual {v0}, Landroidx/camera/core/impl/ImageAnalysisConfig;->getBackpressureStrategy()I

    move-result v0

    return v0
.end method

.method public getDefaultBuilder(Landroidx/camera/core/CameraInfo;)Landroidx/camera/core/impl/UseCaseConfig$Builder;
    .locals 2
    .param p1, "cameraInfo"    # Landroidx/camera/core/CameraInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/camera/core/CameraInfo;",
            ")",
            "Landroidx/camera/core/impl/UseCaseConfig$Builder<",
            "***>;"
        }
    .end annotation

    .line 457
    const-class v0, Landroidx/camera/core/impl/ImageAnalysisConfig;

    invoke-static {v0, p1}, Landroidx/camera/core/CameraX;->getDefaultUseCaseConfig(Ljava/lang/Class;Landroidx/camera/core/CameraInfo;)Landroidx/camera/core/impl/UseCaseConfig;

    move-result-object v0

    check-cast v0, Landroidx/camera/core/impl/ImageAnalysisConfig;

    .line 459
    .local v0, "defaults":Landroidx/camera/core/impl/ImageAnalysisConfig;
    if-eqz v0, :cond_0

    .line 460
    invoke-static {v0}, Landroidx/camera/core/ImageAnalysis$Builder;->fromConfig(Landroidx/camera/core/impl/ImageAnalysisConfig;)Landroidx/camera/core/ImageAnalysis$Builder;

    move-result-object v1

    return-object v1

    .line 463
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public getImageQueueDepth()I
    .locals 1

    .line 417
    invoke-virtual {p0}, Landroidx/camera/core/ImageAnalysis;->getUseCaseConfig()Landroidx/camera/core/impl/UseCaseConfig;

    move-result-object v0

    check-cast v0, Landroidx/camera/core/impl/ImageAnalysisConfig;

    invoke-virtual {v0}, Landroidx/camera/core/impl/ImageAnalysisConfig;->getImageQueueDepth()I

    move-result v0

    return v0
.end method

.method public getTargetRotation()I
    .locals 1

    .line 281
    invoke-virtual {p0}, Landroidx/camera/core/ImageAnalysis;->getUseCaseConfig()Landroidx/camera/core/impl/UseCaseConfig;

    move-result-object v0

    check-cast v0, Landroidx/camera/core/impl/ImageAnalysisConfig;

    invoke-virtual {v0}, Landroidx/camera/core/impl/ImageAnalysisConfig;->getTargetRotation()I

    move-result v0

    return v0
.end method

.method public synthetic lambda$createPipeline$0$ImageAnalysis(Ljava/lang/String;Landroidx/camera/core/impl/ImageAnalysisConfig;Landroid/util/Size;Landroidx/camera/core/impl/SessionConfig;Landroidx/camera/core/impl/SessionConfig$SessionError;)V
    .locals 2
    .param p1, "cameraId"    # Ljava/lang/String;
    .param p2, "config"    # Landroidx/camera/core/impl/ImageAnalysisConfig;
    .param p3, "resolution"    # Landroid/util/Size;
    .param p4, "sessionConfig"    # Landroidx/camera/core/impl/SessionConfig;
    .param p5, "error"    # Landroidx/camera/core/impl/SessionConfig$SessionError;

    .line 217
    invoke-virtual {p0}, Landroidx/camera/core/ImageAnalysis;->clearPipeline()V

    .line 222
    invoke-virtual {p0, p1}, Landroidx/camera/core/ImageAnalysis;->isCurrentCamera(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 224
    invoke-virtual {p0, p1, p2, p3}, Landroidx/camera/core/ImageAnalysis;->createPipeline(Ljava/lang/String;Landroidx/camera/core/impl/ImageAnalysisConfig;Landroid/util/Size;)Landroidx/camera/core/impl/SessionConfig$Builder;

    move-result-object v0

    .line 226
    .local v0, "errorSessionConfigBuilder":Landroidx/camera/core/impl/SessionConfig$Builder;
    invoke-virtual {v0}, Landroidx/camera/core/impl/SessionConfig$Builder;->build()Landroidx/camera/core/impl/SessionConfig;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroidx/camera/core/ImageAnalysis;->updateSessionConfig(Landroidx/camera/core/impl/SessionConfig;)V

    .line 228
    invoke-virtual {p0}, Landroidx/camera/core/ImageAnalysis;->notifyReset()V

    .line 230
    .end local v0    # "errorSessionConfigBuilder":Landroidx/camera/core/impl/SessionConfig$Builder;
    :cond_0
    return-void
.end method

.method public synthetic lambda$setAnalyzer$1$ImageAnalysis(Landroidx/camera/core/ImageAnalysis$Analyzer;Landroidx/camera/core/ImageProxy;)V
    .locals 1
    .param p1, "analyzer"    # Landroidx/camera/core/ImageAnalysis$Analyzer;
    .param p2, "image"    # Landroidx/camera/core/ImageProxy;

    .line 372
    invoke-virtual {p0}, Landroidx/camera/core/ImageAnalysis;->getViewPortCropRect()Landroid/graphics/Rect;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 373
    invoke-virtual {p0}, Landroidx/camera/core/ImageAnalysis;->getViewPortCropRect()Landroid/graphics/Rect;

    move-result-object v0

    invoke-interface {p2, v0}, Landroidx/camera/core/ImageProxy;->setCropRect(Landroid/graphics/Rect;)V

    .line 375
    :cond_0
    invoke-interface {p1, p2}, Landroidx/camera/core/ImageAnalysis$Analyzer;->analyze(Landroidx/camera/core/ImageProxy;)V

    .line 376
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .line 445
    invoke-virtual {p0}, Landroidx/camera/core/ImageAnalysis;->clearAnalyzer()V

    .line 446
    return-void
.end method

.method protected onSuggestedResolutionUpdated(Landroid/util/Size;)Landroid/util/Size;
    .locals 3
    .param p1, "suggestedResolution"    # Landroid/util/Size;

    .line 475
    invoke-virtual {p0}, Landroidx/camera/core/ImageAnalysis;->getUseCaseConfig()Landroidx/camera/core/impl/UseCaseConfig;

    move-result-object v0

    check-cast v0, Landroidx/camera/core/impl/ImageAnalysisConfig;

    .line 477
    .local v0, "config":Landroidx/camera/core/impl/ImageAnalysisConfig;
    invoke-virtual {p0}, Landroidx/camera/core/ImageAnalysis;->getCameraId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v0, p1}, Landroidx/camera/core/ImageAnalysis;->createPipeline(Ljava/lang/String;Landroidx/camera/core/impl/ImageAnalysisConfig;Landroid/util/Size;)Landroidx/camera/core/impl/SessionConfig$Builder;

    move-result-object v1

    .line 479
    .local v1, "sessionConfigBuilder":Landroidx/camera/core/impl/SessionConfig$Builder;
    invoke-virtual {v1}, Landroidx/camera/core/impl/SessionConfig$Builder;->build()Landroidx/camera/core/impl/SessionConfig;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroidx/camera/core/ImageAnalysis;->updateSessionConfig(Landroidx/camera/core/impl/SessionConfig;)V

    .line 481
    return-object p1
.end method

.method public setAnalyzer(Ljava/util/concurrent/Executor;Landroidx/camera/core/ImageAnalysis$Analyzer;)V
    .locals 3
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "analyzer"    # Landroidx/camera/core/ImageAnalysis$Analyzer;

    .line 369
    iget-object v0, p0, Landroidx/camera/core/ImageAnalysis;->mAnalysisLock:Ljava/lang/Object;

    monitor-enter v0

    .line 370
    :try_start_0
    iget-object v1, p0, Landroidx/camera/core/ImageAnalysis;->mImageAnalysisAbstractAnalyzer:Landroidx/camera/core/ImageAnalysisAbstractAnalyzer;

    invoke-virtual {v1}, Landroidx/camera/core/ImageAnalysisAbstractAnalyzer;->open()V

    .line 371
    iget-object v1, p0, Landroidx/camera/core/ImageAnalysis;->mImageAnalysisAbstractAnalyzer:Landroidx/camera/core/ImageAnalysisAbstractAnalyzer;

    new-instance v2, Landroidx/camera/core/-$$Lambda$ImageAnalysis$SK4XUin3LEuOy83vccLKZvMIwq8;

    invoke-direct {v2, p0, p2}, Landroidx/camera/core/-$$Lambda$ImageAnalysis$SK4XUin3LEuOy83vccLKZvMIwq8;-><init>(Landroidx/camera/core/ImageAnalysis;Landroidx/camera/core/ImageAnalysis$Analyzer;)V

    invoke-virtual {v1, p1, v2}, Landroidx/camera/core/ImageAnalysisAbstractAnalyzer;->setAnalyzer(Ljava/util/concurrent/Executor;Landroidx/camera/core/ImageAnalysis$Analyzer;)V

    .line 377
    iget-object v1, p0, Landroidx/camera/core/ImageAnalysis;->mSubscribedAnalyzer:Landroidx/camera/core/ImageAnalysis$Analyzer;

    if-nez v1, :cond_0

    .line 378
    invoke-virtual {p0}, Landroidx/camera/core/ImageAnalysis;->notifyActive()V

    .line 380
    :cond_0
    iput-object p2, p0, Landroidx/camera/core/ImageAnalysis;->mSubscribedAnalyzer:Landroidx/camera/core/ImageAnalysis$Analyzer;

    .line 381
    monitor-exit v0

    .line 382
    return-void

    .line 381
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setTargetRotation(I)V
    .locals 6
    .param p1, "rotation"    # I

    .line 324
    invoke-virtual {p0}, Landroidx/camera/core/ImageAnalysis;->getUseCaseConfig()Landroidx/camera/core/impl/UseCaseConfig;

    move-result-object v0

    check-cast v0, Landroidx/camera/core/impl/ImageAnalysisConfig;

    .line 325
    .local v0, "oldConfig":Landroidx/camera/core/impl/ImageAnalysisConfig;
    invoke-static {v0}, Landroidx/camera/core/ImageAnalysis$Builder;->fromConfig(Landroidx/camera/core/impl/ImageAnalysisConfig;)Landroidx/camera/core/ImageAnalysis$Builder;

    move-result-object v1

    .line 326
    .local v1, "builder":Landroidx/camera/core/ImageAnalysis$Builder;
    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroidx/camera/core/impl/ImageAnalysisConfig;->getTargetRotation(I)I

    move-result v3

    .line 327
    .local v3, "oldRotation":I
    if-eq v3, v2, :cond_0

    if-eq v3, p1, :cond_1

    .line 328
    :cond_0
    invoke-static {v1, p1}, Landroidx/camera/core/internal/utils/UseCaseConfigUtil;->updateTargetRotationAndRelatedConfigs(Landroidx/camera/core/impl/UseCaseConfig$Builder;I)V

    .line 329
    invoke-virtual {v1}, Landroidx/camera/core/ImageAnalysis$Builder;->getUseCaseConfig()Landroidx/camera/core/impl/ImageAnalysisConfig;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroidx/camera/core/ImageAnalysis;->updateUseCaseConfig(Landroidx/camera/core/impl/UseCaseConfig;)V

    .line 339
    :try_start_0
    invoke-direct {p0}, Landroidx/camera/core/ImageAnalysis;->tryUpdateRelativeRotation()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 347
    goto :goto_0

    .line 340
    :catch_0
    move-exception v2

    .line 346
    .local v2, "e":Ljava/lang/Exception;
    const-string v4, "ImageAnalysis"

    const-string v5, "Unable to get camera id for the use case."

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 423
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ImageAnalysis:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/camera/core/ImageAnalysis;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
