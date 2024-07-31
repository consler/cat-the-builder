.class public final Landroidx/camera/camera2/interop/Camera2CameraFilter;
.super Ljava/lang/Object;
.source "Camera2CameraFilter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/camera2/interop/Camera2CameraFilter$Camera2Filter;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createCameraFilter(Landroidx/camera/camera2/interop/Camera2CameraFilter$Camera2Filter;)Landroidx/camera/core/CameraFilter;
    .locals 1
    .param p0, "filter"    # Landroidx/camera/camera2/interop/Camera2CameraFilter$Camera2Filter;

    .line 44
    new-instance v0, Landroidx/camera/camera2/interop/-$$Lambda$Camera2CameraFilter$mh7N2Lu6R4FWWbPCYNntr5DkJdE;

    invoke-direct {v0, p0}, Landroidx/camera/camera2/interop/-$$Lambda$Camera2CameraFilter$mh7N2Lu6R4FWWbPCYNntr5DkJdE;-><init>(Landroidx/camera/camera2/interop/Camera2CameraFilter$Camera2Filter;)V

    return-object v0
.end method

.method static synthetic lambda$createCameraFilter$0(Landroidx/camera/camera2/interop/Camera2CameraFilter$Camera2Filter;Ljava/util/LinkedHashSet;)Ljava/util/LinkedHashSet;
    .locals 8
    .param p0, "filter"    # Landroidx/camera/camera2/interop/Camera2CameraFilter$Camera2Filter;
    .param p1, "cameras"    # Ljava/util/LinkedHashSet;

    .line 45
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 46
    .local v0, "cameraMap":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Landroidx/camera/core/Camera;>;"
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 48
    .local v1, "characteristicsMap":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Landroid/hardware/camera2/CameraCharacteristics;>;"
    invoke-virtual {p1}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/camera/core/Camera;

    .line 49
    .local v3, "camera":Landroidx/camera/core/Camera;
    invoke-interface {v3}, Landroidx/camera/core/Camera;->getCameraInfo()Landroidx/camera/core/CameraInfo;

    move-result-object v4

    .line 50
    .local v4, "cameraInfo":Landroidx/camera/core/CameraInfo;
    instance-of v5, v4, Landroidx/camera/camera2/internal/Camera2CameraInfoImpl;

    const-string v6, "CameraInfo does not contain any Camera2 information."

    invoke-static {v5, v6}, Landroidx/core/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 52
    move-object v5, v4

    check-cast v5, Landroidx/camera/camera2/internal/Camera2CameraInfoImpl;

    .line 54
    .local v5, "camera2CameraInfoImpl":Landroidx/camera/camera2/internal/Camera2CameraInfoImpl;
    invoke-virtual {v5}, Landroidx/camera/camera2/internal/Camera2CameraInfoImpl;->getCameraId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    invoke-virtual {v5}, Landroidx/camera/camera2/internal/Camera2CameraInfoImpl;->getCameraId()Ljava/lang/String;

    move-result-object v6

    .line 56
    invoke-virtual {v5}, Landroidx/camera/camera2/internal/Camera2CameraInfoImpl;->getCameraCharacteristics()Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v7

    .line 55
    invoke-virtual {v1, v6, v7}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    .end local v3    # "camera":Landroidx/camera/core/Camera;
    .end local v4    # "cameraInfo":Landroidx/camera/core/CameraInfo;
    .end local v5    # "camera2CameraInfoImpl":Landroidx/camera/camera2/internal/Camera2CameraInfoImpl;
    goto :goto_0

    .line 59
    :cond_0
    invoke-interface {p0, v1}, Landroidx/camera/camera2/interop/Camera2CameraFilter$Camera2Filter;->filter(Ljava/util/LinkedHashMap;)Ljava/util/LinkedHashMap;

    move-result-object v2

    .line 62
    .local v2, "resultMap":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Landroid/hardware/camera2/CameraCharacteristics;>;"
    new-instance v3, Ljava/util/LinkedHashSet;

    invoke-direct {v3}, Ljava/util/LinkedHashSet;-><init>()V

    .line 63
    .local v3, "resultCameras":Ljava/util/LinkedHashSet;, "Ljava/util/LinkedHashSet<Landroidx/camera/core/Camera;>;"
    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 64
    .local v5, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/hardware/camera2/CameraCharacteristics;>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 66
    .local v6, "cameraId":Ljava/lang/String;
    invoke-virtual {v0, v6}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 67
    invoke-virtual {v0, v6}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/camera/core/Camera;

    invoke-virtual {v3, v7}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 72
    .end local v5    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/hardware/camera2/CameraCharacteristics;>;"
    .end local v6    # "cameraId":Ljava/lang/String;
    goto :goto_1

    .line 69
    .restart local v5    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/hardware/camera2/CameraCharacteristics;>;"
    .restart local v6    # "cameraId":Ljava/lang/String;
    :cond_1
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v7, "There are camera IDs not contained in the original camera map."

    invoke-direct {v4, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 74
    .end local v5    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/hardware/camera2/CameraCharacteristics;>;"
    .end local v6    # "cameraId":Ljava/lang/String;
    :cond_2
    return-object v3
.end method
