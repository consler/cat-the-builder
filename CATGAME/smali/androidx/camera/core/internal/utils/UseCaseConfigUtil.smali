.class public final Landroidx/camera/core/internal/utils/UseCaseConfigUtil;
.super Ljava/lang/Object;
.source "UseCaseConfigUtil.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static updateTargetRotationAndRelatedConfigs(Landroidx/camera/core/impl/UseCaseConfig$Builder;I)V
    .locals 10
    .param p1, "newRotation"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/camera/core/impl/UseCaseConfig$Builder<",
            "***>;I)V"
        }
    .end annotation

    .line 44
    .local p0, "builder":Landroidx/camera/core/impl/UseCaseConfig$Builder;, "Landroidx/camera/core/impl/UseCaseConfig$Builder<***>;"
    invoke-interface {p0}, Landroidx/camera/core/impl/UseCaseConfig$Builder;->getUseCaseConfig()Landroidx/camera/core/impl/UseCaseConfig;

    move-result-object v0

    check-cast v0, Landroidx/camera/core/impl/ImageOutputConfig;

    .line 45
    .local v0, "config":Landroidx/camera/core/impl/ImageOutputConfig;
    const/4 v1, -0x1

    invoke-interface {v0, v1}, Landroidx/camera/core/impl/ImageOutputConfig;->getTargetRotation(I)I

    move-result v2

    .line 47
    .local v2, "oldRotation":I
    if-eq v2, v1, :cond_0

    if-eq v2, p1, :cond_1

    .line 48
    :cond_0
    move-object v3, p0

    check-cast v3, Landroidx/camera/core/impl/ImageOutputConfig$Builder;

    invoke-interface {v3, p1}, Landroidx/camera/core/impl/ImageOutputConfig$Builder;->setTargetRotation(I)Ljava/lang/Object;

    .line 51
    :cond_1
    if-eq v2, v1, :cond_5

    if-eq p1, v1, :cond_5

    if-ne v2, p1, :cond_2

    goto :goto_0

    .line 57
    :cond_2
    invoke-static {v2}, Landroidx/camera/core/impl/utils/CameraOrientationUtil;->surfaceRotationToDegrees(I)I

    move-result v1

    .line 58
    .local v1, "oldRotationDegrees":I
    invoke-static {p1}, Landroidx/camera/core/impl/utils/CameraOrientationUtil;->surfaceRotationToDegrees(I)I

    move-result v3

    .line 72
    .local v3, "newRotationDegrees":I
    sub-int v4, v3, v1

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    rem-int/lit16 v4, v4, 0xb4

    const/16 v5, 0x5a

    if-ne v4, v5, :cond_4

    .line 73
    const/4 v4, 0x0

    invoke-interface {v0, v4}, Landroidx/camera/core/impl/ImageOutputConfig;->getTargetResolution(Landroid/util/Size;)Landroid/util/Size;

    move-result-object v5

    .line 74
    .local v5, "targetResolution":Landroid/util/Size;
    invoke-interface {v0, v4}, Landroidx/camera/core/impl/ImageOutputConfig;->getTargetAspectRatioCustom(Landroid/util/Rational;)Landroid/util/Rational;

    move-result-object v4

    .line 76
    .local v4, "targetAspectRatioCustom":Landroid/util/Rational;
    if-eqz v5, :cond_3

    .line 79
    move-object v6, p0

    check-cast v6, Landroidx/camera/core/impl/ImageOutputConfig$Builder;

    new-instance v7, Landroid/util/Size;

    .line 80
    invoke-virtual {v5}, Landroid/util/Size;->getHeight()I

    move-result v8

    .line 81
    invoke-virtual {v5}, Landroid/util/Size;->getWidth()I

    move-result v9

    invoke-direct {v7, v8, v9}, Landroid/util/Size;-><init>(II)V

    .line 79
    invoke-interface {v6, v7}, Landroidx/camera/core/impl/ImageOutputConfig$Builder;->setTargetResolution(Landroid/util/Size;)Ljava/lang/Object;

    .line 89
    :cond_3
    if-eqz v4, :cond_4

    .line 90
    move-object v6, p0

    check-cast v6, Landroidx/camera/core/impl/ImageOutputConfig$Builder;

    new-instance v7, Landroid/util/Rational;

    .line 92
    invoke-virtual {v4}, Landroid/util/Rational;->getDenominator()I

    move-result v8

    .line 93
    invoke-virtual {v4}, Landroid/util/Rational;->getNumerator()I

    move-result v9

    invoke-direct {v7, v8, v9}, Landroid/util/Rational;-><init>(II)V

    .line 90
    invoke-interface {v6, v7}, Landroidx/camera/core/impl/ImageOutputConfig$Builder;->setTargetAspectRatioCustom(Landroid/util/Rational;)Ljava/lang/Object;

    .line 96
    .end local v4    # "targetAspectRatioCustom":Landroid/util/Rational;
    .end local v5    # "targetResolution":Landroid/util/Size;
    :cond_4
    return-void

    .line 54
    .end local v1    # "oldRotationDegrees":I
    .end local v3    # "newRotationDegrees":I
    :cond_5
    :goto_0
    return-void
.end method
