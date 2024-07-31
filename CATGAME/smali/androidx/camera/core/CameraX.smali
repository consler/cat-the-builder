.class public final Landroidx/camera/core/CameraX;
.super Ljava/lang/Object;
.source "CameraX.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/core/CameraX$InternalInitState;
    }
.end annotation


# static fields
.field static final INSTANCE_LOCK:Ljava/lang/Object;

.field private static final TAG:Ljava/lang/String; = "CameraX"

.field private static final WAIT_INITIALIZED_TIMEOUT:J = 0x3L

.field private static sConfigProvider:Landroidx/camera/core/CameraXConfig$Provider;

.field private static sInitializeFuture:Lcom/google/common/util/concurrent/ListenableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field static sInstance:Landroidx/camera/core/CameraX;

.field private static sShutdownFuture:Lcom/google/common/util/concurrent/ListenableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mApplication:Landroid/app/Application;

.field private final mCameraExecutor:Ljava/util/concurrent/Executor;

.field private mCameraFactory:Landroidx/camera/core/impl/CameraFactory;

.field final mCameraRepository:Landroidx/camera/core/impl/CameraRepository;

.field private final mCameraXConfig:Landroidx/camera/core/CameraXConfig;

.field private mDefaultConfigFactory:Landroidx/camera/core/impl/UseCaseConfigFactory;

.field private mInitState:Landroidx/camera/core/CameraX$InternalInitState;

.field private final mInitializeLock:Ljava/lang/Object;

.field private final mSchedulerHandler:Landroid/os/Handler;

.field private final mSchedulerThread:Landroid/os/HandlerThread;

.field private mShutdownInternalFuture:Lcom/google/common/util/concurrent/ListenableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private mSurfaceManager:Landroidx/camera/core/impl/CameraDeviceSurfaceManager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 71
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/camera/core/CameraX;->INSTANCE_LOCK:Ljava/lang/Object;

    .line 75
    const/4 v0, 0x0

    sput-object v0, Landroidx/camera/core/CameraX;->sInstance:Landroidx/camera/core/CameraX;

    .line 78
    sput-object v0, Landroidx/camera/core/CameraX;->sConfigProvider:Landroidx/camera/core/CameraXConfig$Provider;

    .line 81
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "CameraX is not initialized."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 82
    invoke-static {v1}, Landroidx/camera/core/impl/utils/futures/Futures;->immediateFailedFuture(Ljava/lang/Throwable;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    sput-object v1, Landroidx/camera/core/CameraX;->sInitializeFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 85
    invoke-static {v0}, Landroidx/camera/core/impl/utils/futures/Futures;->immediateFuture(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    sput-object v0, Landroidx/camera/core/CameraX;->sShutdownFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    return-void
.end method

.method constructor <init>(Landroidx/camera/core/CameraXConfig;)V
    .locals 5
    .param p1, "cameraXConfig"    # Landroidx/camera/core/CameraXConfig;

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    new-instance v0, Landroidx/camera/core/impl/CameraRepository;

    invoke-direct {v0}, Landroidx/camera/core/impl/CameraRepository;-><init>()V

    iput-object v0, p0, Landroidx/camera/core/CameraX;->mCameraRepository:Landroidx/camera/core/impl/CameraRepository;

    .line 88
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroidx/camera/core/CameraX;->mInitializeLock:Ljava/lang/Object;

    .line 101
    sget-object v0, Landroidx/camera/core/CameraX$InternalInitState;->UNINITIALIZED:Landroidx/camera/core/CameraX$InternalInitState;

    iput-object v0, p0, Landroidx/camera/core/CameraX;->mInitState:Landroidx/camera/core/CameraX$InternalInitState;

    .line 103
    nop

    .line 104
    const/4 v0, 0x0

    invoke-static {v0}, Landroidx/camera/core/impl/utils/futures/Futures;->immediateFuture(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    iput-object v1, p0, Landroidx/camera/core/CameraX;->mShutdownInternalFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 107
    invoke-static {p1}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/camera/core/CameraXConfig;

    iput-object v1, p0, Landroidx/camera/core/CameraX;->mCameraXConfig:Landroidx/camera/core/CameraXConfig;

    .line 109
    invoke-virtual {p1, v0}, Landroidx/camera/core/CameraXConfig;->getCameraExecutor(Ljava/util/concurrent/Executor;)Ljava/util/concurrent/Executor;

    move-result-object v1

    .line 110
    .local v1, "executor":Ljava/util/concurrent/Executor;
    invoke-virtual {p1, v0}, Landroidx/camera/core/CameraXConfig;->getSchedulerHandler(Landroid/os/Handler;)Landroid/os/Handler;

    move-result-object v2

    .line 111
    .local v2, "schedulerHandler":Landroid/os/Handler;
    if-nez v1, :cond_0

    new-instance v3, Landroidx/camera/core/CameraExecutor;

    invoke-direct {v3}, Landroidx/camera/core/CameraExecutor;-><init>()V

    goto :goto_0

    :cond_0
    move-object v3, v1

    :goto_0
    iput-object v3, p0, Landroidx/camera/core/CameraX;->mCameraExecutor:Ljava/util/concurrent/Executor;

    .line 112
    if-nez v2, :cond_1

    .line 113
    new-instance v0, Landroid/os/HandlerThread;

    const/16 v3, 0xa

    const-string v4, "CameraX-scheduler"

    invoke-direct {v0, v4, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Landroidx/camera/core/CameraX;->mSchedulerThread:Landroid/os/HandlerThread;

    .line 115
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 116
    iget-object v0, p0, Landroidx/camera/core/CameraX;->mSchedulerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {v0}, Landroidx/core/os/HandlerCompat;->createAsync(Landroid/os/Looper;)Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Landroidx/camera/core/CameraX;->mSchedulerHandler:Landroid/os/Handler;

    goto :goto_1

    .line 118
    :cond_1
    iput-object v0, p0, Landroidx/camera/core/CameraX;->mSchedulerThread:Landroid/os/HandlerThread;

    .line 119
    iput-object v2, p0, Landroidx/camera/core/CameraX;->mSchedulerHandler:Landroid/os/Handler;

    .line 121
    :goto_1
    return-void
.end method

.method private static checkInitialized()Landroidx/camera/core/CameraX;
    .locals 3

    .line 421
    invoke-static {}, Landroidx/camera/core/CameraX;->waitInitialized()Landroidx/camera/core/CameraX;

    move-result-object v0

    .line 422
    .local v0, "cameraX":Landroidx/camera/core/CameraX;
    invoke-direct {v0}, Landroidx/camera/core/CameraX;->isInitializedInternal()Z

    move-result v1

    const-string v2, "Must call CameraX.initialize() first"

    invoke-static {v1, v2}, Landroidx/core/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 424
    return-object v0
.end method

.method public static configureInstance(Landroidx/camera/core/CameraXConfig;)V
    .locals 2
    .param p0, "cameraXConfig"    # Landroidx/camera/core/CameraXConfig;

    .line 275
    sget-object v0, Landroidx/camera/core/CameraX;->INSTANCE_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 276
    :try_start_0
    new-instance v1, Landroidx/camera/core/-$$Lambda$CameraX$wMZjJsgpnlorhgxL81349SKdSDE;

    invoke-direct {v1, p0}, Landroidx/camera/core/-$$Lambda$CameraX$wMZjJsgpnlorhgxL81349SKdSDE;-><init>(Landroidx/camera/core/CameraXConfig;)V

    invoke-static {v1}, Landroidx/camera/core/CameraX;->configureInstanceLocked(Landroidx/camera/core/CameraXConfig$Provider;)V

    .line 277
    monitor-exit v0

    .line 278
    return-void

    .line 277
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static configureInstanceLocked(Landroidx/camera/core/CameraXConfig$Provider;)V
    .locals 2
    .param p0, "configProvider"    # Landroidx/camera/core/CameraXConfig$Provider;

    .line 282
    invoke-static {p0}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 283
    sget-object v0, Landroidx/camera/core/CameraX;->sConfigProvider:Landroidx/camera/core/CameraXConfig$Provider;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "CameraX has already been configured. To use a different configuration, shutdown() must be called."

    invoke-static {v0, v1}, Landroidx/core/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 286
    sput-object p0, Landroidx/camera/core/CameraX;->sConfigProvider:Landroidx/camera/core/CameraXConfig$Provider;

    .line 287
    return-void
.end method

.method public static getCameraInfo(Ljava/lang/String;)Landroidx/camera/core/impl/CameraInfoInternal;
    .locals 2
    .param p0, "cameraId"    # Ljava/lang/String;

    .line 201
    invoke-static {}, Landroidx/camera/core/CameraX;->checkInitialized()Landroidx/camera/core/CameraX;

    move-result-object v0

    .line 203
    .local v0, "cameraX":Landroidx/camera/core/CameraX;
    invoke-virtual {v0}, Landroidx/camera/core/CameraX;->getCameraRepository()Landroidx/camera/core/impl/CameraRepository;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroidx/camera/core/impl/CameraRepository;->getCamera(Ljava/lang/String;)Landroidx/camera/core/impl/CameraInternal;

    move-result-object v1

    invoke-interface {v1}, Landroidx/camera/core/impl/CameraInternal;->getCameraInfoInternal()Landroidx/camera/core/impl/CameraInfoInternal;

    move-result-object v1

    return-object v1
.end method

.method public static getCameraWithCameraSelector(Landroidx/camera/core/CameraSelector;)Landroidx/camera/core/impl/CameraInternal;
    .locals 2
    .param p0, "cameraSelector"    # Landroidx/camera/core/CameraSelector;

    .line 156
    invoke-static {}, Landroidx/camera/core/CameraX;->checkInitialized()Landroidx/camera/core/CameraX;

    move-result-object v0

    .line 158
    .local v0, "cameraX":Landroidx/camera/core/CameraX;
    invoke-virtual {v0}, Landroidx/camera/core/CameraX;->getCameraRepository()Landroidx/camera/core/impl/CameraRepository;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/camera/core/impl/CameraRepository;->getCameras()Ljava/util/LinkedHashSet;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroidx/camera/core/CameraSelector;->select(Ljava/util/LinkedHashSet;)Landroidx/camera/core/impl/CameraInternal;

    move-result-object v1

    return-object v1
.end method

.method private static getConfigProvider(Landroid/app/Application;)Landroidx/camera/core/CameraXConfig$Provider;
    .locals 6
    .param p0, "app"    # Landroid/app/Application;

    .line 479
    const/4 v0, 0x0

    .line 480
    .local v0, "configProvider":Landroidx/camera/core/CameraXConfig$Provider;
    instance-of v1, p0, Landroidx/camera/core/CameraXConfig$Provider;

    if-eqz v1, :cond_0

    .line 482
    move-object v0, p0

    check-cast v0, Landroidx/camera/core/CameraXConfig$Provider;

    goto :goto_1

    .line 486
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 487
    .local v1, "resources":Landroid/content/res/Resources;
    sget v2, Landroidx/camera/core/R$string;->androidx_camera_default_config_provider:I

    .line 488
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 490
    .local v2, "defaultProviderClassName":Ljava/lang/String;
    nop

    .line 491
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 492
    .local v3, "providerClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/Class;

    .line 493
    invoke-virtual {v3, v5}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v5

    new-array v4, v4, [Ljava/lang/Object;

    .line 494
    invoke-virtual {v5, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/camera/core/CameraXConfig$Provider;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v4

    .line 503
    .end local v1    # "resources":Landroid/content/res/Resources;
    .end local v2    # "defaultProviderClassName":Ljava/lang/String;
    .end local v3    # "providerClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    goto :goto_1

    .line 495
    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_0

    :catch_2
    move-exception v1

    goto :goto_0

    :catch_3
    move-exception v1

    goto :goto_0

    :catch_4
    move-exception v1

    goto :goto_0

    :catch_5
    move-exception v1

    .line 501
    .local v1, "e":Ljava/lang/Exception;
    :goto_0
    const-string v2, "CameraX"

    const-string v3, "Failed to retrieve default CameraXConfig.Provider from resources"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 506
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1
    return-object v0
.end method

.method public static getContext()Landroid/content/Context;
    .locals 2

    .line 380
    invoke-static {}, Landroidx/camera/core/CameraX;->checkInitialized()Landroidx/camera/core/CameraX;

    move-result-object v0

    .line 381
    .local v0, "cameraX":Landroidx/camera/core/CameraX;
    iget-object v1, v0, Landroidx/camera/core/CameraX;->mApplication:Landroid/app/Application;

    return-object v1
.end method

.method private getDefaultConfigFactory()Landroidx/camera/core/impl/UseCaseConfigFactory;
    .locals 2

    .line 574
    iget-object v0, p0, Landroidx/camera/core/CameraX;->mDefaultConfigFactory:Landroidx/camera/core/impl/UseCaseConfigFactory;

    if-eqz v0, :cond_0

    .line 578
    return-object v0

    .line 575
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "CameraX not initialized yet."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getDefaultLensFacing()I
    .locals 6

    .line 172
    invoke-static {}, Landroidx/camera/core/CameraX;->checkInitialized()Landroidx/camera/core/CameraX;

    .line 174
    const/4 v0, 0x0

    .line 175
    .local v0, "lensFacingCandidate":Ljava/lang/Integer;
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Integer;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v1, v4

    .line 176
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    .line 175
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 177
    .local v1, "lensFacingList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 178
    .local v3, "lensFacing":Ljava/lang/Integer;
    new-instance v4, Landroidx/camera/core/CameraSelector$Builder;

    invoke-direct {v4}, Landroidx/camera/core/CameraSelector$Builder;-><init>()V

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v5}, Landroidx/camera/core/CameraSelector$Builder;->requireLensFacing(I)Landroidx/camera/core/CameraSelector$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/camera/core/CameraSelector$Builder;->build()Landroidx/camera/core/CameraSelector;

    move-result-object v4

    invoke-static {v4}, Landroidx/camera/core/CameraX;->hasCamera(Landroidx/camera/core/CameraSelector;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 179
    move-object v0, v3

    .line 180
    goto :goto_1

    .line 182
    .end local v3    # "lensFacing":Ljava/lang/Integer;
    :cond_0
    goto :goto_0

    .line 183
    :cond_1
    :goto_1
    if-eqz v0, :cond_2

    .line 186
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    return v2

    .line 184
    :cond_2
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Unable to get default lens facing."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static getDefaultUseCaseConfig(Ljava/lang/Class;Landroidx/camera/core/CameraInfo;)Landroidx/camera/core/impl/UseCaseConfig;
    .locals 2
    .param p1, "cameraInfo"    # Landroidx/camera/core/CameraInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Landroidx/camera/core/impl/UseCaseConfig<",
            "*>;>(",
            "Ljava/lang/Class<",
            "TC;>;",
            "Landroidx/camera/core/CameraInfo;",
            ")TC;"
        }
    .end annotation

    .line 238
    .local p0, "configType":Ljava/lang/Class;, "Ljava/lang/Class<TC;>;"
    invoke-static {}, Landroidx/camera/core/CameraX;->checkInitialized()Landroidx/camera/core/CameraX;

    move-result-object v0

    .line 240
    .local v0, "cameraX":Landroidx/camera/core/CameraX;
    invoke-direct {v0}, Landroidx/camera/core/CameraX;->getDefaultConfigFactory()Landroidx/camera/core/impl/UseCaseConfigFactory;

    move-result-object v1

    invoke-interface {v1, p0, p1}, Landroidx/camera/core/impl/UseCaseConfigFactory;->getConfig(Ljava/lang/Class;Landroidx/camera/core/CameraInfo;)Landroidx/camera/core/impl/UseCaseConfig;

    move-result-object v1

    return-object v1
.end method

.method private static getInstance()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroidx/camera/core/CameraX;",
            ">;"
        }
    .end annotation

    .line 511
    sget-object v0, Landroidx/camera/core/CameraX;->INSTANCE_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 512
    :try_start_0
    invoke-static {}, Landroidx/camera/core/CameraX;->getInstanceLocked()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 513
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static getInstanceLocked()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroidx/camera/core/CameraX;",
            ">;"
        }
    .end annotation

    .line 519
    sget-object v0, Landroidx/camera/core/CameraX;->sInstance:Landroidx/camera/core/CameraX;

    .line 520
    .local v0, "cameraX":Landroidx/camera/core/CameraX;
    if-nez v0, :cond_0

    .line 521
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Must call CameraX.initialize() first"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroidx/camera/core/impl/utils/futures/Futures;->immediateFailedFuture(Ljava/lang/Throwable;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    return-object v1

    .line 525
    :cond_0
    sget-object v1, Landroidx/camera/core/CameraX;->sInitializeFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    new-instance v2, Landroidx/camera/core/-$$Lambda$CameraX$I0yV-40rhyMeVUFgVxnImXbjM_0;

    invoke-direct {v2, v0}, Landroidx/camera/core/-$$Lambda$CameraX$I0yV-40rhyMeVUFgVxnImXbjM_0;-><init>(Landroidx/camera/core/CameraX;)V

    .line 526
    invoke-static {}, Landroidx/camera/core/impl/utils/executor/CameraXExecutors;->directExecutor()Ljava/util/concurrent/Executor;

    move-result-object v3

    .line 525
    invoke-static {v1, v2, v3}, Landroidx/camera/core/impl/utils/futures/Futures;->transform(Lcom/google/common/util/concurrent/ListenableFuture;Landroidx/arch/core/util/Function;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    return-object v1
.end method

.method public static getOrCreateInstance(Landroid/content/Context;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroidx/camera/core/CameraX;",
            ">;"
        }
    .end annotation

    .line 436
    const-string v0, "Context must not be null."

    invoke-static {p0, v0}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 437
    sget-object v0, Landroidx/camera/core/CameraX;->INSTANCE_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 438
    :try_start_0
    sget-object v1, Landroidx/camera/core/CameraX;->sConfigProvider:Landroidx/camera/core/CameraXConfig$Provider;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 439
    .local v1, "isConfigured":Z
    :goto_0
    invoke-static {}, Landroidx/camera/core/CameraX;->getInstanceLocked()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v2

    .line 440
    .local v2, "instanceFuture":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<Landroidx/camera/core/CameraX;>;"
    invoke-interface {v2}, Lcom/google/common/util/concurrent/ListenableFuture;->isDone()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_1

    .line 442
    :try_start_1
    invoke-interface {v2}, Lcom/google/common/util/concurrent/ListenableFuture;->get()Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 452
    goto :goto_1

    .line 447
    :catch_0
    move-exception v3

    .line 450
    .local v3, "e":Ljava/util/concurrent/ExecutionException;
    :try_start_2
    invoke-static {}, Landroidx/camera/core/CameraX;->shutdownLocked()Lcom/google/common/util/concurrent/ListenableFuture;

    .line 451
    const/4 v2, 0x0

    goto :goto_1

    .line 443
    .end local v3    # "e":Ljava/util/concurrent/ExecutionException;
    :catch_1
    move-exception v3

    .line 445
    .local v3, "e":Ljava/lang/InterruptedException;
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "Unexpected thread interrupt. Should not be possible since future is already complete."

    invoke-direct {v4, v5, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local p0    # "context":Landroid/content/Context;
    throw v4

    .line 455
    .end local v3    # "e":Ljava/lang/InterruptedException;
    .restart local p0    # "context":Landroid/content/Context;
    :cond_1
    :goto_1
    if-nez v2, :cond_4

    .line 456
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Landroid/app/Application;

    .line 457
    .local v3, "app":Landroid/app/Application;
    if-nez v1, :cond_3

    .line 459
    invoke-static {v3}, Landroidx/camera/core/CameraX;->getConfigProvider(Landroid/app/Application;)Landroidx/camera/core/CameraXConfig$Provider;

    move-result-object v4

    .line 460
    .local v4, "configProvider":Landroidx/camera/core/CameraXConfig$Provider;
    if-eqz v4, :cond_2

    .line 466
    invoke-static {v4}, Landroidx/camera/core/CameraX;->configureInstanceLocked(Landroidx/camera/core/CameraXConfig$Provider;)V

    goto :goto_2

    .line 461
    :cond_2
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "CameraX is not configured properly. The most likely cause is you did not include a default implementation in your build such as \'camera-camera2\'."

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "context":Landroid/content/Context;
    throw v5

    .line 469
    .end local v4    # "configProvider":Landroidx/camera/core/CameraXConfig$Provider;
    .restart local p0    # "context":Landroid/content/Context;
    :cond_3
    :goto_2
    invoke-static {v3}, Landroidx/camera/core/CameraX;->initializeInstanceLocked(Landroid/content/Context;)V

    .line 470
    invoke-static {}, Landroidx/camera/core/CameraX;->getInstanceLocked()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v4

    move-object v2, v4

    .line 473
    .end local v3    # "app":Landroid/app/Application;
    :cond_4
    monitor-exit v0

    return-object v2

    .line 474
    .end local v1    # "isConfigured":Z
    .end local v2    # "instanceFuture":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<Landroidx/camera/core/CameraX;>;"
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public static getSurfaceManager()Landroidx/camera/core/impl/CameraDeviceSurfaceManager;
    .locals 2

    .line 215
    invoke-static {}, Landroidx/camera/core/CameraX;->checkInitialized()Landroidx/camera/core/CameraX;

    move-result-object v0

    .line 217
    .local v0, "cameraX":Landroidx/camera/core/CameraX;
    invoke-virtual {v0}, Landroidx/camera/core/CameraX;->getCameraDeviceSurfaceManager()Landroidx/camera/core/impl/CameraDeviceSurfaceManager;

    move-result-object v1

    return-object v1
.end method

.method public static hasCamera(Landroidx/camera/core/CameraSelector;)Z
    .locals 3
    .param p0, "cameraSelector"    # Landroidx/camera/core/CameraSelector;

    .line 133
    invoke-static {}, Landroidx/camera/core/CameraX;->checkInitialized()Landroidx/camera/core/CameraX;

    move-result-object v0

    .line 136
    .local v0, "cameraX":Landroidx/camera/core/CameraX;
    :try_start_0
    invoke-virtual {v0}, Landroidx/camera/core/CameraX;->getCameraRepository()Landroidx/camera/core/impl/CameraRepository;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/camera/core/impl/CameraRepository;->getCameras()Ljava/util/LinkedHashSet;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroidx/camera/core/CameraSelector;->select(Ljava/util/LinkedHashSet;)Landroidx/camera/core/impl/CameraInternal;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 139
    nop

    .line 141
    const/4 v1, 0x1

    return v1

    .line 137
    :catch_0
    move-exception v1

    .line 138
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    const/4 v2, 0x0

    return v2
.end method

.method private initInternal(Landroid/content/Context;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 582
    iget-object v0, p0, Landroidx/camera/core/CameraX;->mInitializeLock:Ljava/lang/Object;

    monitor-enter v0

    .line 583
    :try_start_0
    iget-object v1, p0, Landroidx/camera/core/CameraX;->mInitState:Landroidx/camera/core/CameraX$InternalInitState;

    sget-object v2, Landroidx/camera/core/CameraX$InternalInitState;->UNINITIALIZED:Landroidx/camera/core/CameraX$InternalInitState;

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "CameraX.initInternal() should only be called once per instance"

    invoke-static {v1, v2}, Landroidx/core/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 585
    sget-object v1, Landroidx/camera/core/CameraX$InternalInitState;->INITIALIZING:Landroidx/camera/core/CameraX$InternalInitState;

    iput-object v1, p0, Landroidx/camera/core/CameraX;->mInitState:Landroidx/camera/core/CameraX$InternalInitState;

    .line 587
    iget-object v1, p0, Landroidx/camera/core/CameraX;->mCameraExecutor:Ljava/util/concurrent/Executor;

    .line 588
    .local v1, "cameraExecutor":Ljava/util/concurrent/Executor;
    new-instance v2, Landroidx/camera/core/-$$Lambda$CameraX$D33DcGTFi_XlxKFIr5BiyQWdPUc;

    invoke-direct {v2, p0, v1, p1}, Landroidx/camera/core/-$$Lambda$CameraX$D33DcGTFi_XlxKFIr5BiyQWdPUc;-><init>(Landroidx/camera/core/CameraX;Ljava/util/concurrent/Executor;Landroid/content/Context;)V

    invoke-static {v2}, Landroidx/concurrent/futures/CallbackToFutureAdapter;->getFuture(Landroidx/concurrent/futures/CallbackToFutureAdapter$Resolver;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v2

    monitor-exit v0

    return-object v2

    .line 652
    .end local v1    # "cameraExecutor":Ljava/util/concurrent/Executor;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static initialize(Landroid/content/Context;Landroidx/camera/core/CameraXConfig;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "cameraXConfig"    # Landroidx/camera/core/CameraXConfig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroidx/camera/core/CameraXConfig;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 261
    sget-object v0, Landroidx/camera/core/CameraX;->INSTANCE_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 262
    :try_start_0
    invoke-static {p0}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    new-instance v1, Landroidx/camera/core/-$$Lambda$CameraX$1mx06IrInQqXqFxYm74hARcHc64;

    invoke-direct {v1, p1}, Landroidx/camera/core/-$$Lambda$CameraX$1mx06IrInQqXqFxYm74hARcHc64;-><init>(Landroidx/camera/core/CameraXConfig;)V

    invoke-static {v1}, Landroidx/camera/core/CameraX;->configureInstanceLocked(Landroidx/camera/core/CameraXConfig$Provider;)V

    .line 264
    invoke-static {p0}, Landroidx/camera/core/CameraX;->initializeInstanceLocked(Landroid/content/Context;)V

    .line 265
    sget-object v1, Landroidx/camera/core/CameraX;->sInitializeFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    monitor-exit v0

    return-object v1

    .line 266
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static initializeInstanceLocked(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 291
    invoke-static {p0}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 292
    sget-object v0, Landroidx/camera/core/CameraX;->sInstance:Landroidx/camera/core/CameraX;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "CameraX already initialized."

    invoke-static {v0, v1}, Landroidx/core/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 293
    sget-object v0, Landroidx/camera/core/CameraX;->sConfigProvider:Landroidx/camera/core/CameraXConfig$Provider;

    invoke-static {v0}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 294
    new-instance v0, Landroidx/camera/core/CameraX;

    sget-object v1, Landroidx/camera/core/CameraX;->sConfigProvider:Landroidx/camera/core/CameraXConfig$Provider;

    invoke-interface {v1}, Landroidx/camera/core/CameraXConfig$Provider;->getCameraXConfig()Landroidx/camera/core/CameraXConfig;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/camera/core/CameraX;-><init>(Landroidx/camera/core/CameraXConfig;)V

    .line 295
    .local v0, "cameraX":Landroidx/camera/core/CameraX;
    sput-object v0, Landroidx/camera/core/CameraX;->sInstance:Landroidx/camera/core/CameraX;

    .line 296
    new-instance v1, Landroidx/camera/core/-$$Lambda$CameraX$pfTQmIZkMo7eYt2wbNhnn4BBWWM;

    invoke-direct {v1, v0, p0}, Landroidx/camera/core/-$$Lambda$CameraX$pfTQmIZkMo7eYt2wbNhnn4BBWWM;-><init>(Landroidx/camera/core/CameraX;Landroid/content/Context;)V

    invoke-static {v1}, Landroidx/concurrent/futures/CallbackToFutureAdapter;->getFuture(Landroidx/concurrent/futures/CallbackToFutureAdapter$Resolver;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    sput-object v1, Landroidx/camera/core/CameraX;->sInitializeFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 328
    return-void
.end method

.method public static isInitialized()Z
    .locals 2

    .line 391
    sget-object v0, Landroidx/camera/core/CameraX;->INSTANCE_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 392
    :try_start_0
    sget-object v1, Landroidx/camera/core/CameraX;->sInstance:Landroidx/camera/core/CameraX;

    if-eqz v1, :cond_0

    sget-object v1, Landroidx/camera/core/CameraX;->sInstance:Landroidx/camera/core/CameraX;

    invoke-direct {v1}, Landroidx/camera/core/CameraX;->isInitializedInternal()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    .line 393
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private isInitializedInternal()Z
    .locals 3

    .line 701
    iget-object v0, p0, Landroidx/camera/core/CameraX;->mInitializeLock:Ljava/lang/Object;

    monitor-enter v0

    .line 702
    :try_start_0
    iget-object v1, p0, Landroidx/camera/core/CameraX;->mInitState:Landroidx/camera/core/CameraX$InternalInitState;

    sget-object v2, Landroidx/camera/core/CameraX$InternalInitState;->INITIALIZED:Landroidx/camera/core/CameraX$InternalInitState;

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    .line 703
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method static synthetic lambda$configureInstance$1(Landroidx/camera/core/CameraXConfig;)Landroidx/camera/core/CameraXConfig;
    .locals 0
    .param p0, "cameraXConfig"    # Landroidx/camera/core/CameraXConfig;

    .line 276
    return-object p0
.end method

.method static synthetic lambda$getInstanceLocked$6(Landroidx/camera/core/CameraX;Ljava/lang/Void;)Landroidx/camera/core/CameraX;
    .locals 0
    .param p0, "cameraX"    # Landroidx/camera/core/CameraX;
    .param p1, "nullVoid"    # Ljava/lang/Void;

    .line 525
    return-object p0
.end method

.method static synthetic lambda$initialize$0(Landroidx/camera/core/CameraXConfig;)Landroidx/camera/core/CameraXConfig;
    .locals 0
    .param p0, "cameraXConfig"    # Landroidx/camera/core/CameraXConfig;

    .line 263
    return-object p0
.end method

.method static synthetic lambda$initializeInstanceLocked$2(Landroidx/camera/core/CameraX;Landroid/content/Context;Ljava/lang/Void;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1
    .param p0, "cameraX"    # Landroidx/camera/core/CameraX;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "input"    # Ljava/lang/Void;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 301
    invoke-direct {p0, p1}, Landroidx/camera/core/CameraX;->initInternal(Landroid/content/Context;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$initializeInstanceLocked$3(Landroidx/camera/core/CameraX;Landroid/content/Context;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;
    .locals 4
    .param p0, "cameraX"    # Landroidx/camera/core/CameraX;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "completer"    # Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 297
    sget-object v0, Landroidx/camera/core/CameraX;->INSTANCE_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 300
    :try_start_0
    sget-object v1, Landroidx/camera/core/CameraX;->sShutdownFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-static {v1}, Landroidx/camera/core/impl/utils/futures/FutureChain;->from(Lcom/google/common/util/concurrent/ListenableFuture;)Landroidx/camera/core/impl/utils/futures/FutureChain;

    move-result-object v1

    new-instance v2, Landroidx/camera/core/-$$Lambda$CameraX$zGjevt7sTF6HDnDgHdMdO95T0_g;

    invoke-direct {v2, p0, p1}, Landroidx/camera/core/-$$Lambda$CameraX$zGjevt7sTF6HDnDgHdMdO95T0_g;-><init>(Landroidx/camera/core/CameraX;Landroid/content/Context;)V

    .line 302
    invoke-static {}, Landroidx/camera/core/impl/utils/executor/CameraXExecutors;->directExecutor()Ljava/util/concurrent/Executor;

    move-result-object v3

    .line 301
    invoke-virtual {v1, v2, v3}, Landroidx/camera/core/impl/utils/futures/FutureChain;->transformAsync(Landroidx/camera/core/impl/utils/futures/AsyncFunction;Ljava/util/concurrent/Executor;)Landroidx/camera/core/impl/utils/futures/FutureChain;

    move-result-object v1

    .line 304
    .local v1, "future":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<Ljava/lang/Void;>;"
    new-instance v2, Landroidx/camera/core/CameraX$1;

    invoke-direct {v2, p2, p0}, Landroidx/camera/core/CameraX$1;-><init>(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;Landroidx/camera/core/CameraX;)V

    .line 324
    invoke-static {}, Landroidx/camera/core/impl/utils/executor/CameraXExecutors;->directExecutor()Ljava/util/concurrent/Executor;

    move-result-object v3

    .line 304
    invoke-static {v1, v2, v3}, Landroidx/camera/core/impl/utils/futures/Futures;->addCallback(Lcom/google/common/util/concurrent/ListenableFuture;Landroidx/camera/core/impl/utils/futures/FutureCallback;Ljava/util/concurrent/Executor;)V

    .line 325
    const-string v2, "CameraX-initialize"

    monitor-exit v0

    return-object v2

    .line 326
    .end local v1    # "future":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<Ljava/lang/Void;>;"
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method static synthetic lambda$shutdownLocked$4(Landroidx/camera/core/CameraX;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)V
    .locals 1
    .param p0, "cameraX"    # Landroidx/camera/core/CameraX;
    .param p1, "completer"    # Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    .line 364
    invoke-direct {p0}, Landroidx/camera/core/CameraX;->shutdownInternal()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/camera/core/impl/utils/futures/Futures;->propagate(Lcom/google/common/util/concurrent/ListenableFuture;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)V

    .line 365
    return-void
.end method

.method static synthetic lambda$shutdownLocked$5(Landroidx/camera/core/CameraX;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;
    .locals 4
    .param p0, "cameraX"    # Landroidx/camera/core/CameraX;
    .param p1, "completer"    # Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 360
    sget-object v0, Landroidx/camera/core/CameraX;->INSTANCE_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 362
    :try_start_0
    sget-object v1, Landroidx/camera/core/CameraX;->sInitializeFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    new-instance v2, Landroidx/camera/core/-$$Lambda$CameraX$4dbkF7X2OvYAcnCqEbjT-6phEWo;

    invoke-direct {v2, p0, p1}, Landroidx/camera/core/-$$Lambda$CameraX$4dbkF7X2OvYAcnCqEbjT-6phEWo;-><init>(Landroidx/camera/core/CameraX;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)V

    .line 365
    invoke-static {}, Landroidx/camera/core/impl/utils/executor/CameraXExecutors;->directExecutor()Ljava/util/concurrent/Executor;

    move-result-object v3

    .line 362
    invoke-interface {v1, v2, v3}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 366
    const-string v1, "CameraX shutdown"

    monitor-exit v0

    return-object v1

    .line 367
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static shutdown()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 337
    sget-object v0, Landroidx/camera/core/CameraX;->INSTANCE_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 338
    const/4 v1, 0x0

    :try_start_0
    sput-object v1, Landroidx/camera/core/CameraX;->sConfigProvider:Landroidx/camera/core/CameraXConfig$Provider;

    .line 339
    invoke-static {}, Landroidx/camera/core/CameraX;->shutdownLocked()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 340
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private shutdownInternal()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 657
    iget-object v0, p0, Landroidx/camera/core/CameraX;->mInitializeLock:Ljava/lang/Object;

    monitor-enter v0

    .line 658
    :try_start_0
    sget-object v1, Landroidx/camera/core/CameraX$2;->$SwitchMap$androidx$camera$core$CameraX$InternalInitState:[I

    iget-object v2, p0, Landroidx/camera/core/CameraX;->mInitState:Landroidx/camera/core/CameraX$InternalInitState;

    invoke-virtual {v2}, Landroidx/camera/core/CameraX$InternalInitState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    goto :goto_0

    .line 668
    :cond_0
    sget-object v1, Landroidx/camera/core/CameraX$InternalInitState;->SHUTDOWN:Landroidx/camera/core/CameraX$InternalInitState;

    iput-object v1, p0, Landroidx/camera/core/CameraX;->mInitState:Landroidx/camera/core/CameraX$InternalInitState;

    .line 670
    new-instance v1, Landroidx/camera/core/-$$Lambda$CameraX$Jy8U7dredZwgS3-mPX7i5cgr_aE;

    invoke-direct {v1, p0}, Landroidx/camera/core/-$$Lambda$CameraX$Jy8U7dredZwgS3-mPX7i5cgr_aE;-><init>(Landroidx/camera/core/CameraX;)V

    invoke-static {v1}, Landroidx/concurrent/futures/CallbackToFutureAdapter;->getFuture(Landroidx/concurrent/futures/CallbackToFutureAdapter$Resolver;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    iput-object v1, p0, Landroidx/camera/core/CameraX;->mShutdownInternalFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 696
    :goto_0
    iget-object v1, p0, Landroidx/camera/core/CameraX;->mShutdownInternalFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    monitor-exit v0

    return-object v1

    .line 664
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "CameraX could not be shutdown when it is initializing."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 660
    :cond_2
    sget-object v1, Landroidx/camera/core/CameraX$InternalInitState;->SHUTDOWN:Landroidx/camera/core/CameraX$InternalInitState;

    iput-object v1, p0, Landroidx/camera/core/CameraX;->mInitState:Landroidx/camera/core/CameraX$InternalInitState;

    .line 661
    const/4 v1, 0x0

    invoke-static {v1}, Landroidx/camera/core/impl/utils/futures/Futures;->immediateFuture(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 697
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method static shutdownLocked()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 347
    sget-object v0, Landroidx/camera/core/CameraX;->sInstance:Landroidx/camera/core/CameraX;

    if-nez v0, :cond_0

    .line 349
    sget-object v0, Landroidx/camera/core/CameraX;->sShutdownFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    return-object v0

    .line 352
    :cond_0
    sget-object v0, Landroidx/camera/core/CameraX;->sInstance:Landroidx/camera/core/CameraX;

    .line 353
    .local v0, "cameraX":Landroidx/camera/core/CameraX;
    const/4 v1, 0x0

    sput-object v1, Landroidx/camera/core/CameraX;->sInstance:Landroidx/camera/core/CameraX;

    .line 358
    new-instance v1, Landroidx/camera/core/-$$Lambda$CameraX$RpN6H_GOvlkTaYOxBF7oFPOEV_4;

    invoke-direct {v1, v0}, Landroidx/camera/core/-$$Lambda$CameraX$RpN6H_GOvlkTaYOxBF7oFPOEV_4;-><init>(Landroidx/camera/core/CameraX;)V

    invoke-static {v1}, Landroidx/concurrent/futures/CallbackToFutureAdapter;->getFuture(Landroidx/concurrent/futures/CallbackToFutureAdapter$Resolver;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    sput-object v1, Landroidx/camera/core/CameraX;->sShutdownFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 369
    return-object v1
.end method

.method private static waitInitialized()Landroidx/camera/core/CameraX;
    .locals 4

    .line 536
    invoke-static {}, Landroidx/camera/core/CameraX;->getInstance()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    .line 538
    .local v0, "future":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<Landroidx/camera/core/CameraX;>;"
    const-wide/16 v1, 0x3

    :try_start_0
    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3}, Lcom/google/common/util/concurrent/ListenableFuture;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/camera/core/CameraX;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 539
    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_0

    :catch_2
    move-exception v1

    .line 540
    .local v1, "e":Ljava/lang/Exception;
    :goto_0
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method


# virtual methods
.method public getCameraDeviceSurfaceManager()Landroidx/camera/core/impl/CameraDeviceSurfaceManager;
    .locals 2

    .line 556
    iget-object v0, p0, Landroidx/camera/core/CameraX;->mSurfaceManager:Landroidx/camera/core/impl/CameraDeviceSurfaceManager;

    if-eqz v0, :cond_0

    .line 560
    return-object v0

    .line 557
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "CameraX not initialized yet."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getCameraFactory()Landroidx/camera/core/impl/CameraFactory;
    .locals 2

    .line 406
    iget-object v0, p0, Landroidx/camera/core/CameraX;->mCameraFactory:Landroidx/camera/core/impl/CameraFactory;

    if-eqz v0, :cond_0

    .line 410
    return-object v0

    .line 407
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "CameraX not initialized yet."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getCameraRepository()Landroidx/camera/core/impl/CameraRepository;
    .locals 1

    .line 570
    iget-object v0, p0, Landroidx/camera/core/CameraX;->mCameraRepository:Landroidx/camera/core/impl/CameraRepository;

    return-object v0
.end method

.method public synthetic lambda$initInternal$7$CameraX(Landroid/content/Context;Ljava/util/concurrent/Executor;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cameraExecutor"    # Ljava/util/concurrent/Executor;
    .param p3, "completer"    # Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    .line 591
    const/4 v0, 0x0

    .line 593
    .local v0, "initException":Landroidx/camera/core/InitializationException;
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Landroid/app/Application;

    iput-object v2, p0, Landroidx/camera/core/CameraX;->mApplication:Landroid/app/Application;

    .line 594
    iget-object v2, p0, Landroidx/camera/core/CameraX;->mCameraXConfig:Landroidx/camera/core/CameraXConfig;

    .line 595
    invoke-virtual {v2, v1}, Landroidx/camera/core/CameraXConfig;->getCameraFactoryProvider(Landroidx/camera/core/impl/CameraFactory$Provider;)Landroidx/camera/core/impl/CameraFactory$Provider;

    move-result-object v2

    .line 596
    .local v2, "cameraFactoryProvider":Landroidx/camera/core/impl/CameraFactory$Provider;
    if-eqz v2, :cond_4

    .line 602
    iget-object v3, p0, Landroidx/camera/core/CameraX;->mCameraExecutor:Ljava/util/concurrent/Executor;

    iget-object v4, p0, Landroidx/camera/core/CameraX;->mSchedulerHandler:Landroid/os/Handler;

    .line 603
    invoke-static {v3, v4}, Landroidx/camera/core/impl/CameraThreadConfig;->create(Ljava/util/concurrent/Executor;Landroid/os/Handler;)Landroidx/camera/core/impl/CameraThreadConfig;

    move-result-object v3

    .line 606
    .local v3, "cameraThreadConfig":Landroidx/camera/core/impl/CameraThreadConfig;
    invoke-interface {v2, p1, v3}, Landroidx/camera/core/impl/CameraFactory$Provider;->newInstance(Landroid/content/Context;Landroidx/camera/core/impl/CameraThreadConfig;)Landroidx/camera/core/impl/CameraFactory;

    move-result-object v4

    iput-object v4, p0, Landroidx/camera/core/CameraX;->mCameraFactory:Landroidx/camera/core/impl/CameraFactory;

    .line 609
    iget-object v4, p0, Landroidx/camera/core/CameraX;->mCameraXConfig:Landroidx/camera/core/CameraXConfig;

    .line 610
    invoke-virtual {v4, v1}, Landroidx/camera/core/CameraXConfig;->getDeviceSurfaceManagerProvider(Landroidx/camera/core/impl/CameraDeviceSurfaceManager$Provider;)Landroidx/camera/core/impl/CameraDeviceSurfaceManager$Provider;

    move-result-object v4

    .line 611
    .local v4, "surfaceManagerProvider":Landroidx/camera/core/impl/CameraDeviceSurfaceManager$Provider;
    if-eqz v4, :cond_3

    .line 616
    invoke-interface {v4, p1}, Landroidx/camera/core/impl/CameraDeviceSurfaceManager$Provider;->newInstance(Landroid/content/Context;)Landroidx/camera/core/impl/CameraDeviceSurfaceManager;

    move-result-object v5

    iput-object v5, p0, Landroidx/camera/core/CameraX;->mSurfaceManager:Landroidx/camera/core/impl/CameraDeviceSurfaceManager;

    .line 618
    iget-object v5, p0, Landroidx/camera/core/CameraX;->mCameraXConfig:Landroidx/camera/core/CameraXConfig;

    .line 619
    invoke-virtual {v5, v1}, Landroidx/camera/core/CameraXConfig;->getUseCaseConfigFactoryProvider(Landroidx/camera/core/impl/UseCaseConfigFactory$Provider;)Landroidx/camera/core/impl/UseCaseConfigFactory$Provider;

    move-result-object v5

    .line 620
    .local v5, "configFactoryProvider":Landroidx/camera/core/impl/UseCaseConfigFactory$Provider;
    if-eqz v5, :cond_2

    .line 625
    invoke-interface {v5, p1}, Landroidx/camera/core/impl/UseCaseConfigFactory$Provider;->newInstance(Landroid/content/Context;)Landroidx/camera/core/impl/UseCaseConfigFactory;

    move-result-object v6

    iput-object v6, p0, Landroidx/camera/core/CameraX;->mDefaultConfigFactory:Landroidx/camera/core/impl/UseCaseConfigFactory;

    .line 627
    instance-of v6, p2, Landroidx/camera/core/CameraExecutor;

    if-eqz v6, :cond_0

    .line 628
    move-object v6, p2

    check-cast v6, Landroidx/camera/core/CameraExecutor;

    .line 629
    .local v6, "executor":Landroidx/camera/core/CameraExecutor;
    iget-object v7, p0, Landroidx/camera/core/CameraX;->mCameraFactory:Landroidx/camera/core/impl/CameraFactory;

    invoke-virtual {v6, v7}, Landroidx/camera/core/CameraExecutor;->init(Landroidx/camera/core/impl/CameraFactory;)V

    .line 632
    .end local v6    # "executor":Landroidx/camera/core/CameraExecutor;
    :cond_0
    iget-object v6, p0, Landroidx/camera/core/CameraX;->mCameraRepository:Landroidx/camera/core/impl/CameraRepository;

    iget-object v7, p0, Landroidx/camera/core/CameraX;->mCameraFactory:Landroidx/camera/core/impl/CameraFactory;

    invoke-virtual {v6, v7}, Landroidx/camera/core/impl/CameraRepository;->init(Landroidx/camera/core/impl/CameraFactory;)V
    :try_end_0
    .catch Landroidx/camera/core/InitializationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 640
    .end local v2    # "cameraFactoryProvider":Landroidx/camera/core/impl/CameraFactory$Provider;
    .end local v3    # "cameraThreadConfig":Landroidx/camera/core/impl/CameraThreadConfig;
    .end local v4    # "surfaceManagerProvider":Landroidx/camera/core/impl/CameraDeviceSurfaceManager$Provider;
    .end local v5    # "configFactoryProvider":Landroidx/camera/core/impl/UseCaseConfigFactory$Provider;
    iget-object v2, p0, Landroidx/camera/core/CameraX;->mInitializeLock:Ljava/lang/Object;

    monitor-enter v2

    .line 641
    :try_start_1
    sget-object v3, Landroidx/camera/core/CameraX$InternalInitState;->INITIALIZED:Landroidx/camera/core/CameraX$InternalInitState;

    iput-object v3, p0, Landroidx/camera/core/CameraX;->mInitState:Landroidx/camera/core/CameraX$InternalInitState;

    .line 642
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 643
    if-eqz v0, :cond_1

    .line 644
    :goto_0
    invoke-virtual {p3, v0}, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->setException(Ljava/lang/Throwable;)Z

    goto :goto_3

    .line 646
    :cond_1
    invoke-virtual {p3, v1}, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->set(Ljava/lang/Object;)Z

    .line 648
    goto :goto_3

    .line 642
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 621
    .restart local v2    # "cameraFactoryProvider":Landroidx/camera/core/impl/CameraFactory$Provider;
    .restart local v3    # "cameraThreadConfig":Landroidx/camera/core/impl/CameraThreadConfig;
    .restart local v4    # "surfaceManagerProvider":Landroidx/camera/core/impl/CameraDeviceSurfaceManager$Provider;
    .restart local v5    # "configFactoryProvider":Landroidx/camera/core/impl/UseCaseConfigFactory$Provider;
    :cond_2
    :try_start_3
    new-instance v6, Landroidx/camera/core/InitializationException;

    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "Invalid app configuration provided. Missing UseCaseConfigFactory."

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-direct {v6, v7}, Landroidx/camera/core/InitializationException;-><init>(Ljava/lang/Throwable;)V

    .end local v0    # "initException":Landroidx/camera/core/InitializationException;
    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "cameraExecutor":Ljava/util/concurrent/Executor;
    .end local p3    # "completer":Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;
    throw v6

    .line 612
    .end local v5    # "configFactoryProvider":Landroidx/camera/core/impl/UseCaseConfigFactory$Provider;
    .restart local v0    # "initException":Landroidx/camera/core/InitializationException;
    .restart local p1    # "context":Landroid/content/Context;
    .restart local p2    # "cameraExecutor":Ljava/util/concurrent/Executor;
    .restart local p3    # "completer":Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;
    :cond_3
    new-instance v5, Landroidx/camera/core/InitializationException;

    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "Invalid app configuration provided. Missing CameraDeviceSurfaceManager."

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v6}, Landroidx/camera/core/InitializationException;-><init>(Ljava/lang/Throwable;)V

    .end local v0    # "initException":Landroidx/camera/core/InitializationException;
    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "cameraExecutor":Ljava/util/concurrent/Executor;
    .end local p3    # "completer":Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;
    throw v5

    .line 597
    .end local v3    # "cameraThreadConfig":Landroidx/camera/core/impl/CameraThreadConfig;
    .end local v4    # "surfaceManagerProvider":Landroidx/camera/core/impl/CameraDeviceSurfaceManager$Provider;
    .restart local v0    # "initException":Landroidx/camera/core/InitializationException;
    .restart local p1    # "context":Landroid/content/Context;
    .restart local p2    # "cameraExecutor":Ljava/util/concurrent/Executor;
    .restart local p3    # "completer":Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;
    :cond_4
    new-instance v3, Landroidx/camera/core/InitializationException;

    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Invalid app configuration provided. Missing CameraFactory."

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Landroidx/camera/core/InitializationException;-><init>(Ljava/lang/Throwable;)V

    .end local v0    # "initException":Landroidx/camera/core/InitializationException;
    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "cameraExecutor":Ljava/util/concurrent/Executor;
    .end local p3    # "completer":Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;
    throw v3
    :try_end_3
    .catch Landroidx/camera/core/InitializationException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 640
    .end local v2    # "cameraFactoryProvider":Landroidx/camera/core/impl/CameraFactory$Provider;
    .restart local v0    # "initException":Landroidx/camera/core/InitializationException;
    .restart local p1    # "context":Landroid/content/Context;
    .restart local p2    # "cameraExecutor":Ljava/util/concurrent/Executor;
    .restart local p3    # "completer":Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;
    :catchall_1
    move-exception v2

    goto :goto_1

    .line 635
    :catch_0
    move-exception v2

    .line 638
    .local v2, "e":Ljava/lang/RuntimeException;
    :try_start_4
    new-instance v3, Landroidx/camera/core/InitializationException;

    invoke-direct {v3, v2}, Landroidx/camera/core/InitializationException;-><init>(Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-object v2, v3

    .line 640
    .end local v0    # "initException":Landroidx/camera/core/InitializationException;
    .local v2, "initException":Landroidx/camera/core/InitializationException;
    iget-object v3, p0, Landroidx/camera/core/CameraX;->mInitializeLock:Ljava/lang/Object;

    monitor-enter v3

    .line 641
    :try_start_5
    sget-object v0, Landroidx/camera/core/CameraX$InternalInitState;->INITIALIZED:Landroidx/camera/core/CameraX$InternalInitState;

    iput-object v0, p0, Landroidx/camera/core/CameraX;->mInitState:Landroidx/camera/core/CameraX$InternalInitState;

    .line 642
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 643
    nop

    .line 644
    invoke-virtual {p3, v2}, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->setException(Ljava/lang/Throwable;)Z

    .line 649
    move-object v0, v2

    goto :goto_3

    .line 642
    :catchall_2
    move-exception v0

    :try_start_6
    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v0

    .line 640
    .end local v2    # "initException":Landroidx/camera/core/InitializationException;
    .restart local v0    # "initException":Landroidx/camera/core/InitializationException;
    :goto_1
    iget-object v3, p0, Landroidx/camera/core/CameraX;->mInitializeLock:Ljava/lang/Object;

    monitor-enter v3

    .line 641
    :try_start_7
    sget-object v4, Landroidx/camera/core/CameraX$InternalInitState;->INITIALIZED:Landroidx/camera/core/CameraX$InternalInitState;

    iput-object v4, p0, Landroidx/camera/core/CameraX;->mInitState:Landroidx/camera/core/CameraX$InternalInitState;

    .line 642
    monitor-exit v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 643
    if-eqz v0, :cond_5

    .line 644
    invoke-virtual {p3, v0}, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->setException(Ljava/lang/Throwable;)Z

    goto :goto_2

    .line 646
    :cond_5
    invoke-virtual {p3, v1}, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->set(Ljava/lang/Object;)Z

    .line 648
    :goto_2
    throw v2

    .line 642
    :catchall_3
    move-exception v1

    :try_start_8
    monitor-exit v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    throw v1

    .line 633
    :catch_1
    move-exception v1

    .line 634
    .local v1, "e":Landroidx/camera/core/InitializationException;
    move-object v0, v1

    .line 640
    .end local v1    # "e":Landroidx/camera/core/InitializationException;
    iget-object v1, p0, Landroidx/camera/core/CameraX;->mInitializeLock:Ljava/lang/Object;

    monitor-enter v1

    .line 641
    :try_start_9
    sget-object v2, Landroidx/camera/core/CameraX$InternalInitState;->INITIALIZED:Landroidx/camera/core/CameraX$InternalInitState;

    iput-object v2, p0, Landroidx/camera/core/CameraX;->mInitState:Landroidx/camera/core/CameraX$InternalInitState;

    .line 642
    monitor-exit v1

    .line 643
    goto :goto_0

    .line 649
    :goto_3
    return-void

    .line 642
    :catchall_4
    move-exception v2

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    throw v2
.end method

.method public synthetic lambda$initInternal$8$CameraX(Ljava/util/concurrent/Executor;Landroid/content/Context;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;
    .locals 1
    .param p1, "cameraExecutor"    # Ljava/util/concurrent/Executor;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "completer"    # Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 590
    new-instance v0, Landroidx/camera/core/-$$Lambda$CameraX$PC4SOFGjuqUVT4bexY644vLmWFE;

    invoke-direct {v0, p0, p2, p1, p3}, Landroidx/camera/core/-$$Lambda$CameraX$PC4SOFGjuqUVT4bexY644vLmWFE;-><init>(Landroidx/camera/core/CameraX;Landroid/content/Context;Ljava/util/concurrent/Executor;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 650
    const-string v0, "CameraX initInternal"

    return-object v0
.end method

.method public synthetic lambda$shutdownInternal$10$CameraX(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;
    .locals 3
    .param p1, "completer"    # Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 672
    iget-object v0, p0, Landroidx/camera/core/CameraX;->mCameraRepository:Landroidx/camera/core/impl/CameraRepository;

    invoke-virtual {v0}, Landroidx/camera/core/impl/CameraRepository;->deinit()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    .line 675
    .local v0, "future":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<Ljava/lang/Void;>;"
    new-instance v1, Landroidx/camera/core/-$$Lambda$CameraX$xyZRXHQOdk_4PkY-4Z_bL27lyqs;

    invoke-direct {v1, p0, p1}, Landroidx/camera/core/-$$Lambda$CameraX$xyZRXHQOdk_4PkY-4Z_bL27lyqs;-><init>(Landroidx/camera/core/CameraX;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)V

    iget-object v2, p0, Landroidx/camera/core/CameraX;->mCameraExecutor:Ljava/util/concurrent/Executor;

    invoke-interface {v0, v1, v2}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 688
    const-string v1, "CameraX shutdownInternal"

    return-object v1
.end method

.method public synthetic lambda$shutdownInternal$9$CameraX(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)V
    .locals 2
    .param p1, "completer"    # Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    .line 676
    iget-object v0, p0, Landroidx/camera/core/CameraX;->mSchedulerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_1

    .line 679
    iget-object v0, p0, Landroidx/camera/core/CameraX;->mCameraExecutor:Ljava/util/concurrent/Executor;

    instance-of v1, v0, Landroidx/camera/core/CameraExecutor;

    if-eqz v1, :cond_0

    .line 680
    check-cast v0, Landroidx/camera/core/CameraExecutor;

    .line 682
    .local v0, "executor":Landroidx/camera/core/CameraExecutor;
    invoke-virtual {v0}, Landroidx/camera/core/CameraExecutor;->deinit()V

    .line 684
    .end local v0    # "executor":Landroidx/camera/core/CameraExecutor;
    :cond_0
    iget-object v0, p0, Landroidx/camera/core/CameraX;->mSchedulerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 685
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->set(Ljava/lang/Object;)Z

    .line 687
    :cond_1
    return-void
.end method
