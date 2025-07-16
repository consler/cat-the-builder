.class Landroidx/camera/camera2/internal/compat/CameraManagerCompatApi28Impl;
.super Landroidx/camera/camera2/internal/compat/CameraManagerCompatBaseImpl;
.source "CameraManagerCompatApi28Impl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/camera2/internal/compat/CameraManagerCompatApi28Impl$CameraManagerCompatParamsApi28;
    }
.end annotation


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/Object;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1, p2}, Landroidx/camera/camera2/internal/compat/CameraManagerCompatBaseImpl;-><init>(Landroid/content/Context;Ljava/lang/Object;)V

    return-void
.end method

.method static create(Landroid/content/Context;)Landroidx/camera/camera2/internal/compat/CameraManagerCompatApi28Impl;
    .locals 2

    .line 44
    new-instance v0, Landroidx/camera/camera2/internal/compat/CameraManagerCompatApi28Impl;

    new-instance v1, Landroidx/camera/camera2/internal/compat/CameraManagerCompatApi28Impl$CameraManagerCompatParamsApi28;

    invoke-direct {v1}, Landroidx/camera/camera2/internal/compat/CameraManagerCompatApi28Impl$CameraManagerCompatParamsApi28;-><init>()V

    invoke-direct {v0, p0, v1}, Landroidx/camera/camera2/internal/compat/CameraManagerCompatApi28Impl;-><init>(Landroid/content/Context;Ljava/lang/Object;)V

    return-object v0
.end method

.method private isDndFailCase(Ljava/lang/Throwable;)Z
    .locals 2

    .line 129
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-ne v0, v1, :cond_0

    invoke-static {p1}, Landroidx/camera/camera2/internal/compat/CameraManagerCompatApi28Impl;->isDndRuntimeException(Ljava/lang/Throwable;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private static isDndRuntimeException(Ljava/lang/Throwable;)Z
    .locals 2

    .line 148
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 150
    invoke-virtual {p0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object p0

    if-eqz p0, :cond_1

    array-length v0, p0

    if-gez v0, :cond_0

    goto :goto_0

    .line 154
    :cond_0
    aget-object p0, p0, v1

    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "_enableShutterSound"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    return v1
.end method

.method private throwDndException(Ljava/lang/Throwable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/camera/camera2/internal/compat/CameraAccessExceptionCompat;
        }
    .end annotation

    .line 120
    new-instance v0, Landroidx/camera/camera2/internal/compat/CameraAccessExceptionCompat;

    const/16 v1, 0x2711

    invoke-direct {v0, v1, p1}, Landroidx/camera/camera2/internal/compat/CameraAccessExceptionCompat;-><init>(ILjava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/camera/camera2/internal/compat/CameraAccessExceptionCompat;
        }
    .end annotation

    .line 90
    :try_start_0
    invoke-super {p0, p1}, Landroidx/camera/camera2/internal/compat/CameraManagerCompatBaseImpl;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v0

    .line 92
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    if-ne v1, v2, :cond_1

    .line 94
    sget-object v1, Landroidx/camera/camera2/internal/compat/CameraManagerCompatApi28Impl$CameraManagerCompatParamsApi28;->sCameraCharacteristicsMap:Ljava/util/Map;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    :try_start_1
    sget-object v2, Landroidx/camera/camera2/internal/compat/CameraManagerCompatApi28Impl$CameraManagerCompatParamsApi28;->sCameraCharacteristicsMap:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 97
    sget-object v2, Landroidx/camera/camera2/internal/compat/CameraManagerCompatApi28Impl$CameraManagerCompatParamsApi28;->sCameraCharacteristicsMap:Ljava/util/Map;

    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_1
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    .line 103
    invoke-direct {p0, v0}, Landroidx/camera/camera2/internal/compat/CameraManagerCompatApi28Impl;->isDndFailCase(Ljava/lang/Throwable;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 105
    sget-object v1, Landroidx/camera/camera2/internal/compat/CameraManagerCompatApi28Impl$CameraManagerCompatParamsApi28;->sCameraCharacteristicsMap:Ljava/util/Map;

    monitor-enter v1

    .line 106
    :try_start_3
    sget-object v2, Landroidx/camera/camera2/internal/compat/CameraManagerCompatApi28Impl$CameraManagerCompatParamsApi28;->sCameraCharacteristicsMap:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 108
    sget-object v0, Landroidx/camera/camera2/internal/compat/CameraManagerCompatApi28Impl$CameraManagerCompatParamsApi28;->sCameraCharacteristicsMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/camera2/CameraCharacteristics;

    monitor-exit v1

    return-object p1

    .line 111
    :cond_2
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 112
    invoke-direct {p0, v0}, Landroidx/camera/camera2/internal/compat/CameraManagerCompatApi28Impl;->throwDndException(Ljava/lang/Throwable;)V

    goto :goto_1

    :catchall_1
    move-exception p1

    .line 111
    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p1

    .line 114
    :cond_3
    :goto_1
    throw v0
.end method

.method public openCamera(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraDevice$StateCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/camera/camera2/internal/compat/CameraAccessExceptionCompat;
        }
    .end annotation

    .line 70
    :try_start_0
    iget-object v0, p0, Landroidx/camera/camera2/internal/compat/CameraManagerCompatApi28Impl;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    invoke-virtual {v0, p1, p2, p3}, Landroid/hardware/camera2/CameraManager;->openCamera(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraDevice$StateCallback;)V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 77
    invoke-direct {p0, p1}, Landroidx/camera/camera2/internal/compat/CameraManagerCompatApi28Impl;->isDndFailCase(Ljava/lang/Throwable;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 78
    invoke-direct {p0, p1}, Landroidx/camera/camera2/internal/compat/CameraManagerCompatApi28Impl;->throwDndException(Ljava/lang/Throwable;)V

    .line 80
    :cond_0
    throw p1

    :catch_1
    move-exception p1

    goto :goto_0

    :catch_2
    move-exception p1

    .line 75
    :goto_0
    throw p1

    :catch_3
    move-exception p1

    .line 72
    invoke-static {p1}, Landroidx/camera/camera2/internal/compat/CameraAccessExceptionCompat;->toCameraAccessExceptionCompat(Landroid/hardware/camera2/CameraAccessException;)Landroidx/camera/camera2/internal/compat/CameraAccessExceptionCompat;

    move-result-object p1

    throw p1
.end method

.method public registerAvailabilityCallback(Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraManager$AvailabilityCallback;)V
    .locals 1

    .line 52
    iget-object v0, p0, Landroidx/camera/camera2/internal/compat/CameraManagerCompatApi28Impl;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    invoke-virtual {v0, p1, p2}, Landroid/hardware/camera2/CameraManager;->registerAvailabilityCallback(Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraManager$AvailabilityCallback;)V

    return-void
.end method

.method public unregisterAvailabilityCallback(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;)V
    .locals 1

    .line 60
    iget-object v0, p0, Landroidx/camera/camera2/internal/compat/CameraManagerCompatApi28Impl;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    invoke-virtual {v0, p1}, Landroid/hardware/camera2/CameraManager;->unregisterAvailabilityCallback(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;)V

    return-void
.end method
