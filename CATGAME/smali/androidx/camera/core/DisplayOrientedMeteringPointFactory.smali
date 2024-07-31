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
    .locals 3
    .param p1, "display"    # Landroid/view/Display;
    .param p2, "cameraSelector"    # Landroidx/camera/core/CameraSelector;
    .param p3, "width"    # F
    .param p4, "height"    # F

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

    move-result-object v0

    .line 94
    .local v0, "camera":Landroidx/camera/core/impl/CameraInternal;
    invoke-interface {v0}, Landroidx/camera/core/impl/CameraInternal;->getCameraInfoInternal()Landroidx/camera/core/impl/CameraInfoInternal;

    move-result-object v1

    iput-object v1, p0, Landroidx/camera/core/DisplayOrientedMeteringPointFactory;->mCameraInfo:Landroidx/camera/core/impl/CameraInfoInternal;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    .end local v0    # "camera":Landroidx/camera/core/impl/CameraInternal;
    nop

    .line 99
    return-void

    .line 95
    :catch_0
    move-exception v0

    .line 96
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Unable to get camera id for the CameraSelector."

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
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
    .locals 3
    .param p1, "compensateForMirroring"    # Z

    .line 166
    :try_start_0
    iget-object v0, p0, Landroidx/camera/core/DisplayOrientedMeteringPointFactory;->mDisplay:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    .line 167
    .local v0, "displayRotation":I
    iget-object v1, p0, Landroidx/camera/core/DisplayOrientedMeteringPointFactory;->mCameraInfo:Landroidx/camera/core/impl/CameraInfoInternal;

    invoke-interface {v1, v0}, Landroidx/camera/core/impl/CameraInfoInternal;->getSensorRotationDegrees(I)I

    move-result v1

    .line 168
    .local v1, "rotationDegrees":I
    if-eqz p1, :cond_0

    .line 169
    rsub-int v2, v1, 0x168

    rem-int/lit16 v2, v2, 0x168
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v2

    .line 173
    .end local v0    # "displayRotation":I
    :cond_0
    goto :goto_0

    .line 171
    .end local v1    # "rotationDegrees":I
    :catch_0
    move-exception v0

    .line 172
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    .line 174
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "rotationDegrees":I
    :goto_0
    return v1
.end method


# virtual methods
.method protected convertPoint(FF)Landroid/graphics/PointF;
    .locals 11
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 115
    iget v0, p0, Landroidx/camera/core/DisplayOrientedMeteringPointFactory;->mWidth:F

    .line 116
    .local v0, "width":F
    iget v1, p0, Landroidx/camera/core/DisplayOrientedMeteringPointFactory;->mHeight:F

    .line 118
    .local v1, "height":F
    invoke-direct {p0}, Landroidx/camera/core/DisplayOrientedMeteringPointFactory;->getLensFacing()Ljava/lang/Integer;

    move-result-object v2

    .line 119
    .local v2, "lensFacing":Ljava/lang/Integer;
    if-eqz v2, :cond_0

    .line 120
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-nez v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 121
    .local v3, "compensateForMirroring":Z
    :goto_0
    invoke-direct {p0, v3}, Landroidx/camera/core/DisplayOrientedMeteringPointFactory;->getRelativeCameraOrientation(Z)I

    move-result v4

    .line 122
    .local v4, "relativeCameraOrientation":I
    move v5, p1

    .line 123
    .local v5, "outputX":F
    move v6, p2

    .line 124
    .local v6, "outputY":F
    move v7, v0

    .line 125
    .local v7, "outputWidth":F
    move v8, v1

    .line 127
    .local v8, "outputHeight":F
    const/16 v9, 0x10e

    const/16 v10, 0x5a

    if-eq v4, v10, :cond_1

    if-ne v4, v9, :cond_2

    .line 129
    :cond_1
    move v5, p2

    .line 130
    move v6, p1

    .line 131
    move v7, v1

    .line 132
    move v8, v0

    .line 135
    :cond_2
    if-eq v4, v10, :cond_5

    const/16 v10, 0xb4

    if-eq v4, v10, :cond_4

    if-eq v4, v9, :cond_3

    goto :goto_1

    .line 145
    :cond_3
    sub-float v5, v7, v5

    .line 146
    goto :goto_1

    .line 141
    :cond_4
    sub-float v5, v7, v5

    .line 142
    sub-float v6, v8, v6

    .line 143
    goto :goto_1

    .line 138
    :cond_5
    sub-float v6, v8, v6

    .line 139
    nop

    .line 152
    :goto_1
    if-eqz v3, :cond_6

    .line 153
    sub-float v5, v7, v5

    .line 157
    :cond_6
    div-float/2addr v5, v7

    .line 158
    div-float/2addr v6, v8

    .line 160
    new-instance v9, Landroid/graphics/PointF;

    invoke-direct {v9, v5, v6}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v9
.end method
