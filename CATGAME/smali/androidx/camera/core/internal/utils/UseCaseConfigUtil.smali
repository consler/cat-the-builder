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
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/camera/core/impl/UseCaseConfig$Builder<",
            "***>;I)V"
        }
    .end annotation

    .line 44
    invoke-interface {p0}, Landroidx/camera/core/impl/UseCaseConfig$Builder;->getUseCaseConfig()Landroidx/camera/core/impl/UseCaseConfig;

    move-result-object v0

    check-cast v0, Landroidx/camera/core/impl/ImageOutputConfig;

    const/4 v1, -0x1

    .line 45
    invoke-interface {v0, v1}, Landroidx/camera/core/impl/ImageOutputConfig;->getTargetRotation(I)I

    move-result v2

    if-eq v2, v1, :cond_0

    if-eq v2, p1, :cond_1

    .line 48
    :cond_0
    move-object v3, p0

    check-cast v3, Landroidx/camera/core/impl/ImageOutputConfig$Builder;

    invoke-interface {v3, p1}, Landroidx/camera/core/impl/ImageOutputConfig$Builder;->setTargetRotation(I)Ljava/lang/Object;

    :cond_1
    if-eq v2, v1, :cond_4

    if-eq p1, v1, :cond_4

    if-ne v2, p1, :cond_2

    goto :goto_0

    .line 57
    :cond_2
    invoke-static {v2}, Landroidx/camera/core/impl/utils/CameraOrientationUtil;->surfaceRotationToDegrees(I)I

    move-result v1

    .line 58
    invoke-static {p1}, Landroidx/camera/core/impl/utils/CameraOrientationUtil;->surfaceRotationToDegrees(I)I

    move-result p1

    sub-int/2addr p1, v1

    .line 72
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    rem-int/lit16 p1, p1, 0xb4

    const/16 v1, 0x5a

    if-ne p1, v1, :cond_4

    const/4 p1, 0x0

    .line 73
    invoke-interface {v0, p1}, Landroidx/camera/core/impl/ImageOutputConfig;->getTargetResolution(Landroid/util/Size;)Landroid/util/Size;

    move-result-object v1

    .line 74
    invoke-interface {v0, p1}, Landroidx/camera/core/impl/ImageOutputConfig;->getTargetAspectRatioCustom(Landroid/util/Rational;)Landroid/util/Rational;

    move-result-object p1

    if-eqz v1, :cond_3

    .line 79
    move-object v0, p0

    check-cast v0, Landroidx/camera/core/impl/ImageOutputConfig$Builder;

    new-instance v2, Landroid/util/Size;

    .line 80
    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v3

    .line 81
    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v1

    invoke-direct {v2, v3, v1}, Landroid/util/Size;-><init>(II)V

    .line 79
    invoke-interface {v0, v2}, Landroidx/camera/core/impl/ImageOutputConfig$Builder;->setTargetResolution(Landroid/util/Size;)Ljava/lang/Object;

    :cond_3
    if-eqz p1, :cond_4

    .line 90
    check-cast p0, Landroidx/camera/core/impl/ImageOutputConfig$Builder;

    new-instance v0, Landroid/util/Rational;

    .line 92
    invoke-virtual {p1}, Landroid/util/Rational;->getDenominator()I

    move-result v1

    .line 93
    invoke-virtual {p1}, Landroid/util/Rational;->getNumerator()I

    move-result p1

    invoke-direct {v0, v1, p1}, Landroid/util/Rational;-><init>(II)V

    .line 90
    invoke-interface {p0, v0}, Landroidx/camera/core/impl/ImageOutputConfig$Builder;->setTargetAspectRatioCustom(Landroid/util/Rational;)Ljava/lang/Object;

    :cond_4
    :goto_0
    return-void
.end method
