.class public final Landroidx/camera/lifecycle/ProcessCameraProvider;
.super Ljava/lang/Object;
.source "ProcessCameraProvider.java"

# interfaces
.implements Landroidx/camera/lifecycle/LifecycleCameraProvider;


# static fields
.field private static final sAppInstance:Landroidx/camera/lifecycle/ProcessCameraProvider;


# instance fields
.field private mCameraX:Landroidx/camera/core/CameraX;

.field private final mLifecycleCameraRepository:Landroidx/camera/lifecycle/LifecycleCameraRepository;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 78
    new-instance v0, Landroidx/camera/lifecycle/ProcessCameraProvider;

    invoke-direct {v0}, Landroidx/camera/lifecycle/ProcessCameraProvider;-><init>()V

    sput-object v0, Landroidx/camera/lifecycle/ProcessCameraProvider;->sAppInstance:Landroidx/camera/lifecycle/ProcessCameraProvider;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 490
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    new-instance v0, Landroidx/camera/lifecycle/LifecycleCameraRepository;

    invoke-direct {v0}, Landroidx/camera/lifecycle/LifecycleCameraRepository;-><init>()V

    iput-object v0, p0, Landroidx/camera/lifecycle/ProcessCameraProvider;->mLifecycleCameraRepository:Landroidx/camera/lifecycle/LifecycleCameraRepository;

    return-void
.end method

.method public static configureInstance(Landroidx/camera/core/CameraXConfig;)V
    .locals 0

    .line 182
    invoke-static {p0}, Landroidx/camera/core/CameraX;->configureInstance(Landroidx/camera/core/CameraXConfig;)V

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroidx/camera/lifecycle/ProcessCameraProvider;",
            ">;"
        }
    .end annotation

    .line 149
    invoke-static {p0}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    invoke-static {p0}, Landroidx/camera/core/CameraX;->getOrCreateInstance(Landroid/content/Context;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p0

    new-instance v0, Landroidx/camera/lifecycle/ProcessCameraProvider$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Landroidx/camera/lifecycle/ProcessCameraProvider$$ExternalSyntheticLambda0;-><init>()V

    .line 153
    invoke-static {}, Landroidx/camera/core/impl/utils/executor/CameraXExecutors;->directExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    .line 150
    invoke-static {p0, v0, v1}, Landroidx/camera/core/impl/utils/futures/Futures;->transform(Lcom/google/common/util/concurrent/ListenableFuture;Landroidx/arch/core/util/Function;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$getInstance$0(Landroidx/camera/core/CameraX;)Landroidx/camera/lifecycle/ProcessCameraProvider;
    .locals 1

    .line 151
    sget-object v0, Landroidx/camera/lifecycle/ProcessCameraProvider;->sAppInstance:Landroidx/camera/lifecycle/ProcessCameraProvider;

    invoke-direct {v0, p0}, Landroidx/camera/lifecycle/ProcessCameraProvider;->setCameraX(Landroidx/camera/core/CameraX;)V

    return-object v0
.end method

.method private setCameraX(Landroidx/camera/core/CameraX;)V
    .locals 0

    .line 208
    iput-object p1, p0, Landroidx/camera/lifecycle/ProcessCameraProvider;->mCameraX:Landroidx/camera/core/CameraX;

    return-void
.end method


# virtual methods
.method public bindToLifecycle(Landroidx/lifecycle/LifecycleOwner;Landroidx/camera/core/CameraSelector;Landroidx/camera/core/UseCaseGroup;)Landroidx/camera/core/Camera;
    .locals 2

    .line 299
    invoke-virtual {p3}, Landroidx/camera/core/UseCaseGroup;->getViewPort()Landroidx/camera/core/ViewPort;

    move-result-object v0

    invoke-virtual {p3}, Landroidx/camera/core/UseCaseGroup;->getUseCases()Ljava/util/List;

    move-result-object p3

    const/4 v1, 0x0

    new-array v1, v1, [Landroidx/camera/core/UseCase;

    invoke-interface {p3, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p3

    check-cast p3, [Landroidx/camera/core/UseCase;

    .line 298
    invoke-virtual {p0, p1, p2, v0, p3}, Landroidx/camera/lifecycle/ProcessCameraProvider;->bindToLifecycle(Landroidx/lifecycle/LifecycleOwner;Landroidx/camera/core/CameraSelector;Landroidx/camera/core/ViewPort;[Landroidx/camera/core/UseCase;)Landroidx/camera/core/Camera;

    move-result-object p1

    return-object p1
.end method

.method public varargs bindToLifecycle(Landroidx/lifecycle/LifecycleOwner;Landroidx/camera/core/CameraSelector;Landroidx/camera/core/ViewPort;[Landroidx/camera/core/UseCase;)Landroidx/camera/core/Camera;
    .locals 9

    .line 370
    invoke-static {}, Landroidx/camera/core/impl/utils/Threads;->checkMainThread()V

    .line 375
    invoke-static {p2}, Landroidx/camera/core/CameraSelector$Builder;->fromSelector(Landroidx/camera/core/CameraSelector;)Landroidx/camera/core/CameraSelector$Builder;

    move-result-object p2

    .line 377
    array-length v0, p4

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p4, v2

    .line 378
    invoke-virtual {v3}, Landroidx/camera/core/UseCase;->getUseCaseConfig()Landroidx/camera/core/impl/UseCaseConfig;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Landroidx/camera/core/impl/UseCaseConfig;->getCameraSelector(Landroidx/camera/core/CameraSelector;)Landroidx/camera/core/CameraSelector;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 380
    invoke-virtual {v3}, Landroidx/camera/core/CameraSelector;->getCameraFilterSet()Ljava/util/LinkedHashSet;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/camera/core/CameraFilter;

    .line 381
    invoke-virtual {p2, v4}, Landroidx/camera/core/CameraSelector$Builder;->addCameraFilter(Landroidx/camera/core/CameraFilter;)Landroidx/camera/core/CameraSelector$Builder;

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 386
    :cond_1
    invoke-virtual {p2}, Landroidx/camera/core/CameraSelector$Builder;->build()Landroidx/camera/core/CameraSelector;

    move-result-object p2

    .line 388
    iget-object v0, p0, Landroidx/camera/lifecycle/ProcessCameraProvider;->mCameraX:Landroidx/camera/core/CameraX;

    .line 389
    invoke-virtual {v0}, Landroidx/camera/core/CameraX;->getCameraRepository()Landroidx/camera/core/impl/CameraRepository;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/camera/core/impl/CameraRepository;->getCameras()Ljava/util/LinkedHashSet;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroidx/camera/core/CameraSelector;->filter(Ljava/util/LinkedHashSet;)Ljava/util/LinkedHashSet;

    move-result-object p2

    .line 391
    invoke-static {p2}, Landroidx/camera/core/internal/CameraUseCaseAdapter;->generateCameraId(Ljava/util/LinkedHashSet;)Landroidx/camera/core/internal/CameraUseCaseAdapter$CameraId;

    move-result-object v0

    .line 393
    iget-object v2, p0, Landroidx/camera/lifecycle/ProcessCameraProvider;->mLifecycleCameraRepository:Landroidx/camera/lifecycle/LifecycleCameraRepository;

    .line 394
    invoke-virtual {v2, p1, v0}, Landroidx/camera/lifecycle/LifecycleCameraRepository;->getLifecycleCamera(Landroidx/lifecycle/LifecycleOwner;Landroidx/camera/core/internal/CameraUseCaseAdapter$CameraId;)Landroidx/camera/lifecycle/LifecycleCamera;

    move-result-object v0

    .line 396
    iget-object v2, p0, Landroidx/camera/lifecycle/ProcessCameraProvider;->mLifecycleCameraRepository:Landroidx/camera/lifecycle/LifecycleCameraRepository;

    .line 397
    invoke-virtual {v2}, Landroidx/camera/lifecycle/LifecycleCameraRepository;->getLifecycleCameras()Ljava/util/Collection;

    move-result-object v2

    .line 398
    array-length v3, p4

    move v4, v1

    :goto_2
    if-ge v4, v3, :cond_5

    aget-object v5, p4, v4

    .line 399
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/camera/lifecycle/LifecycleCamera;

    .line 400
    invoke-virtual {v7, v5}, Landroidx/camera/lifecycle/LifecycleCamera;->isBound(Landroidx/camera/core/UseCase;)Z

    move-result v8

    if-eqz v8, :cond_2

    if-ne v7, v0, :cond_3

    goto :goto_3

    .line 402
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    aput-object v5, p2, v1

    const-string p3, "Use case %s already bound to a different lifecycle."

    .line 403
    invoke-static {p3, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_5
    if-nez v0, :cond_6

    .line 413
    iget-object v0, p0, Landroidx/camera/lifecycle/ProcessCameraProvider;->mLifecycleCameraRepository:Landroidx/camera/lifecycle/LifecycleCameraRepository;

    new-instance v1, Landroidx/camera/core/internal/CameraUseCaseAdapter;

    .line 415
    invoke-virtual {p2}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/camera/core/impl/CameraInternal;

    iget-object v3, p0, Landroidx/camera/lifecycle/ProcessCameraProvider;->mCameraX:Landroidx/camera/core/CameraX;

    .line 417
    invoke-virtual {v3}, Landroidx/camera/core/CameraX;->getCameraDeviceSurfaceManager()Landroidx/camera/core/impl/CameraDeviceSurfaceManager;

    move-result-object v3

    invoke-direct {v1, v2, p2, v3}, Landroidx/camera/core/internal/CameraUseCaseAdapter;-><init>(Landroidx/camera/core/impl/CameraInternal;Ljava/util/LinkedHashSet;Landroidx/camera/core/impl/CameraDeviceSurfaceManager;)V

    .line 414
    invoke-virtual {v0, p1, v1}, Landroidx/camera/lifecycle/LifecycleCameraRepository;->createLifecycleCamera(Landroidx/lifecycle/LifecycleOwner;Landroidx/camera/core/internal/CameraUseCaseAdapter;)Landroidx/camera/lifecycle/LifecycleCamera;

    move-result-object v0

    .line 420
    :cond_6
    array-length p1, p4

    if-nez p1, :cond_7

    return-object v0

    .line 424
    :cond_7
    iget-object p1, p0, Landroidx/camera/lifecycle/ProcessCameraProvider;->mLifecycleCameraRepository:Landroidx/camera/lifecycle/LifecycleCameraRepository;

    .line 425
    invoke-static {p4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    .line 424
    invoke-virtual {p1, v0, p3, p2}, Landroidx/camera/lifecycle/LifecycleCameraRepository;->bindToLifecycleCamera(Landroidx/camera/lifecycle/LifecycleCamera;Landroidx/camera/core/ViewPort;Ljava/util/Collection;)V

    return-object v0
.end method

.method public varargs bindToLifecycle(Landroidx/lifecycle/LifecycleOwner;Landroidx/camera/core/CameraSelector;[Landroidx/camera/core/UseCase;)Landroidx/camera/core/Camera;
    .locals 1

    const/4 v0, 0x0

    .line 275
    invoke-virtual {p0, p1, p2, v0, p3}, Landroidx/camera/lifecycle/ProcessCameraProvider;->bindToLifecycle(Landroidx/lifecycle/LifecycleOwner;Landroidx/camera/core/CameraSelector;Landroidx/camera/core/ViewPort;[Landroidx/camera/core/UseCase;)Landroidx/camera/core/Camera;

    move-result-object p1

    return-object p1
.end method

.method public hasCamera(Landroidx/camera/core/CameraSelector;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/camera/core/CameraInfoUnavailableException;
        }
    .end annotation

    .line 487
    invoke-static {p1}, Landroidx/camera/core/CameraX;->hasCamera(Landroidx/camera/core/CameraSelector;)Z

    move-result p1

    return p1
.end method

.method public isBound(Landroidx/camera/core/UseCase;)Z
    .locals 2

    .line 440
    iget-object v0, p0, Landroidx/camera/lifecycle/ProcessCameraProvider;->mLifecycleCameraRepository:Landroidx/camera/lifecycle/LifecycleCameraRepository;

    invoke-virtual {v0}, Landroidx/camera/lifecycle/LifecycleCameraRepository;->getLifecycleCameras()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/camera/lifecycle/LifecycleCamera;

    .line 441
    invoke-virtual {v1, p1}, Landroidx/camera/lifecycle/LifecycleCamera;->isBound(Landroidx/camera/core/UseCase;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public shutdown()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 203
    iget-object v0, p0, Landroidx/camera/lifecycle/ProcessCameraProvider;->mLifecycleCameraRepository:Landroidx/camera/lifecycle/LifecycleCameraRepository;

    invoke-virtual {v0}, Landroidx/camera/lifecycle/LifecycleCameraRepository;->clear()V

    .line 204
    invoke-static {}, Landroidx/camera/core/CameraX;->shutdown()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method public varargs unbind([Landroidx/camera/core/UseCase;)V
    .locals 1

    .line 466
    invoke-static {}, Landroidx/camera/core/impl/utils/Threads;->checkMainThread()V

    .line 467
    iget-object v0, p0, Landroidx/camera/lifecycle/ProcessCameraProvider;->mLifecycleCameraRepository:Landroidx/camera/lifecycle/LifecycleCameraRepository;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/camera/lifecycle/LifecycleCameraRepository;->unbind(Ljava/util/Collection;)V

    return-void
.end method

.method public unbindAll()V
    .locals 1

    .line 480
    invoke-static {}, Landroidx/camera/core/impl/utils/Threads;->checkMainThread()V

    .line 481
    iget-object v0, p0, Landroidx/camera/lifecycle/ProcessCameraProvider;->mLifecycleCameraRepository:Landroidx/camera/lifecycle/LifecycleCameraRepository;

    invoke-virtual {v0}, Landroidx/camera/lifecycle/LifecycleCameraRepository;->unbindAll()V

    return-void
.end method
