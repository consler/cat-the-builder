.class public final Landroidx/camera/camera2/interop/Camera2CameraInfo;
.super Ljava/lang/Object;
.source "Camera2CameraInfo.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static extractCameraId(Landroidx/camera/core/CameraInfo;)Ljava/lang/String;
    .locals 2
    .param p0, "cameraInfo"    # Landroidx/camera/core/CameraInfo;

    .line 43
    instance-of v0, p0, Landroidx/camera/camera2/internal/Camera2CameraInfoImpl;

    const-string v1, "CameraInfo does not contain any Camera2 information."

    invoke-static {v0, v1}, Landroidx/core/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 45
    move-object v0, p0

    check-cast v0, Landroidx/camera/camera2/internal/Camera2CameraInfoImpl;

    .line 46
    .local v0, "impl":Landroidx/camera/camera2/internal/Camera2CameraInfoImpl;
    invoke-virtual {v0}, Landroidx/camera/camera2/internal/Camera2CameraInfoImpl;->getCameraId()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
