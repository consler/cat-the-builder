.class public final Landroidx/camera/core/DisplayOrientedMeteringPointFactory;
.super Landroidx/camera/core/MeteringPointFactory;
.source "DisplayOrientedMeteringPointFactory.java"


# instance fields
.field private final mCameraInfo:Landroidx/camera/core/impl/CameraInfoInternal;

.field private final mCameraSelector:Landroidx/camera/core/CameraSelector;

.field private final mDisplay:Landroid/view/Display;

.field private final mHeight:F

.field private final mWidth:F


# direct methods
.method public constructor <init>(Landroid/view/Display;Landroidx/camera/core/CameraSelector;FF)V
    .locals 0

    .line 87
    invoke-direct {p0}, Landroidx/camera/core/MeteringPointFactory;-><init>()V

    .line 88
    iput p3, p0, Landroidx/camera/core/DisplayOrientedMeteringPointFactory;->mWidth:F

    .line 89
    iput p4, p0, Landroidx/camera/core/DisplayOrientedMeteringPointFactory;->mHeight:F

    .line 90
    iput-object p2, p0, Landroidx/camera/core/DisplayOrientedMeteringPointFactory;->mCameraSelector:Landroidx/camera/core/CameraSelector;

    .line 91
    iput-object p1, p0, Landroidx/camera/core/DisplayOrientedMeteringPointFactory;->mDisplay:Landroid/view/Display;

    .line 93
    :try_start_0
    invoke-static {p2}, Landroidx/camera/core/CameraX;->getCameraWithCameraSelector(Landroidx/camera/core/CameraSelector;)Landroidx/camera/core/impl/CameraInternal;

    move-result-object p1

    .line 94
    invoke-interface {p1}, Landroidx/camera/core/impl/CameraInternal;->getCameraInfoInternal()Landroidx/camera/core/impl/CameraInfoInternal;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/core/DisplayOrientedMeteringPointFactory;->mCameraInfo:Landroidx/camera/core/impl/CameraInfoInternal;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 96
    new-instance p2, Ljava/lang/IllegalArgumentException;

    const-string p3, "Unable to get camera id for the CameraSelector."

    invoke-direct {p2, p3, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method private getLensFacing()Ljava/lang/Integer;
    .locals 1

    .line 103
    iget-object v0, p0, Landroidx/camera/core/DisplayOrientedMeteringPointFactory;->mCameraInfo:Landroidx/camera/core/impl/CameraInfoInternal;

    invoke-interface {v0}, Landroidx/camera/core/impl/CameraInfoInternal;->getLensFacing()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method private getRelativeCameraOrientation(Z)I
    .locals 2

    .line 166
    :try_start_0
    iget-object v0, p0, Landroidx/camera/core/DisplayOrientedMeteringPointFactory;->mDisplay:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    .line 167
    iget-object v1, p0, Landroidx/camera/core/DisplayOrientedMeteringPointFactory;->mCameraInfo:Landroidx/camera/core/impl/CameraInfoInternal;

    invoke-interface {v1, v0}, Landroidx/camera/core/impl/CameraInfoInternal;->getSensorRotationDegrees(I)I

    move-result v0

    if-eqz p1, :cond_0

    rsub-int p1, v0, 0x168

    .line 169
    rem-int/lit16 v0, p1, 0x168
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    :cond_0
    :goto_0
    return v0
.end method


# virtual methods
.method protected convertPoint(FF)Landroid/graphics/PointF;
    .locals 8

    .line 115
    iget v0, p0, Landroidx/camera/core/DisplayOrientedMeteringPointFactory;->mWidth:F

    .line 116
    iget v1, p0, Landroidx/camera/core/DisplayOrientedMeteringPointFactory;->mHeight:F

    .line 118
    invoke-direct {p0}, Landroidx/camera/core/DisplayOrientedMeteringPointFactory;->getLensFacing()Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 120
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 121
    :goto_0
    invoke-direct {p0, v2}, Landroidx/camera/core/DisplayOrientedMeteringPointFactory;->getRelativeCameraOrientation(Z)I

    move-result v3

    const/16 v4, 0x10e

    const/16 v5, 0x5a

    if-eq v3, v5, :cond_2

    if-ne v3, v4, :cond_1

    goto :goto_1

    :cond_1
    move v6, p2

    move p2, p1

    move p1, v6

    move v7, v1

    move v1, v0

    move v0, v7

    :cond_2
    :goto_1
    if-eq v3, v5, :cond_5

    const/16 v5, 0xb4

    if-eq v3, v5, :cond_4

    if-eq v3, v4, :cond_3

    goto :goto_2

    :cond_3
    sub-float p2, v1, p2

    goto :goto_2

    :cond_4
    sub-float p2, v1, p2

    :cond_5
    sub-float p1, v0, p1

    :goto_2
    if-eqz v2, :cond_6

    sub-float p2, v1, p2

    :cond_6
    div-float/2addr p2, v1

    div-float/2addr p1, v0

    .line 160
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0, p2, p1}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v0
.end method
