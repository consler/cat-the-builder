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

    .line 44
    new-instance v0, Landroidx/camera/camera2/interop/Camera2CameraFilter$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Landroidx/camera/camera2/interop/Camera2CameraFilter$$ExternalSyntheticLambda0;-><init>(Landroidx/camera/camera2/interop/Camera2CameraFilter$Camera2Filter;)V

    return-object v0
.end method

.method static synthetic lambda$createCameraFilter$0(Landroidx/camera/camera2/interop/Camera2CameraFilter$Camera2Filter;Ljava/util/LinkedHashSet;)Ljava/util/LinkedHashSet;
    .locals 6

    .line 45
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 46
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 48
    invoke-virtual {p1}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/camera/core/Camera;

    .line 49
    invoke-interface {v2}, Landroidx/camera/core/Camera;->getCameraInfo()Landroidx/camera/core/CameraInfo;

    move-result-object v3

    .line 50
    instance-of v4, v3, Landroidx/camera/camera2/internal/Camera2CameraInfoImpl;

    const-string v5, "CameraInfo does not contain any Camera2 information."

    invoke-static {v4, v5}, Landroidx/core/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 52
    check-cast v3, Landroidx/camera/camera2/internal/Camera2CameraInfoImpl;

    .line 54
    invoke-virtual {v3}, Landroidx/camera/camera2/internal/Camera2CameraInfoImpl;->getCameraId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    invoke-virtual {v3}, Landroidx/camera/camera2/internal/Camera2CameraInfoImpl;->getCameraId()Ljava/lang/String;

    move-result-object v2

    .line 56
    invoke-virtual {v3}, Landroidx/camera/camera2/internal/Camera2CameraInfoImpl;->getCameraCharacteristics()Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v3

    .line 55
    invoke-virtual {v1, v2, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 59
    :cond_0
    invoke-interface {p0, v1}, Landroidx/camera/camera2/interop/Camera2CameraFilter$Camera2Filter;->filter(Ljava/util/LinkedHashMap;)Ljava/util/LinkedHashMap;

    move-result-object p0

    .line 62
    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    .line 63
    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 64
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 66
    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 67
    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/camera/core/Camera;

    invoke-virtual {p1, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 69
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "There are camera IDs not contained in the original camera map."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    return-object p1
.end method
