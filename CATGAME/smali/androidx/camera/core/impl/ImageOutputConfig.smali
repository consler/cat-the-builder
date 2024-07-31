.class public interface abstract Landroidx/camera/core/impl/ImageOutputConfig;
.super Ljava/lang/Object;
.source "ImageOutputConfig.java"

# interfaces
.implements Landroidx/camera/core/impl/ReadableConfig;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/core/impl/ImageOutputConfig$RotationValue;,
        Landroidx/camera/core/impl/ImageOutputConfig$Builder;
    }
.end annotation


# static fields
.field public static final DEFAULT_ASPECT_RATIO_LANDSCAPE:Landroid/util/Rational;

.field public static final DEFAULT_ASPECT_RATIO_PORTRAIT:Landroid/util/Rational;

.field public static final INVALID_ROTATION:I = -0x1

.field public static final OPTION_DEFAULT_RESOLUTION:Landroidx/camera/core/impl/Config$Option;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/camera/core/impl/Config$Option<",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation
.end field

.field public static final OPTION_MAX_RESOLUTION:Landroidx/camera/core/impl/Config$Option;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/camera/core/impl/Config$Option<",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation
.end field

.field public static final OPTION_SUPPORTED_RESOLUTIONS:Landroidx/camera/core/impl/Config$Option;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/camera/core/impl/Config$Option<",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "[",
            "Landroid/util/Size;",
            ">;>;>;"
        }
    .end annotation
.end field

.field public static final OPTION_TARGET_ASPECT_RATIO:Landroidx/camera/core/impl/Config$Option;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/camera/core/impl/Config$Option<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final OPTION_TARGET_ASPECT_RATIO_CUSTOM:Landroidx/camera/core/impl/Config$Option;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/camera/core/impl/Config$Option<",
            "Landroid/util/Rational;",
            ">;"
        }
    .end annotation
.end field

.field public static final OPTION_TARGET_RESOLUTION:Landroidx/camera/core/impl/Config$Option;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/camera/core/impl/Config$Option<",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation
.end field

.field public static final OPTION_TARGET_ROTATION:Landroidx/camera/core/impl/Config$Option;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/camera/core/impl/Config$Option<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 41
    new-instance v0, Landroid/util/Rational;

    const/4 v1, 0x4

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Landroid/util/Rational;-><init>(II)V

    sput-object v0, Landroidx/camera/core/impl/ImageOutputConfig;->DEFAULT_ASPECT_RATIO_LANDSCAPE:Landroid/util/Rational;

    .line 42
    new-instance v0, Landroid/util/Rational;

    invoke-direct {v0, v2, v1}, Landroid/util/Rational;-><init>(II)V

    sput-object v0, Landroidx/camera/core/impl/ImageOutputConfig;->DEFAULT_ASPECT_RATIO_PORTRAIT:Landroid/util/Rational;

    .line 55
    const-class v0, Landroid/util/Rational;

    .line 56
    const-string v1, "camerax.core.imageOutput.targetAspectRatioCustom"

    invoke-static {v1, v0}, Landroidx/camera/core/impl/Config$Option;->create(Ljava/lang/String;Ljava/lang/Class;)Landroidx/camera/core/impl/Config$Option;

    move-result-object v0

    sput-object v0, Landroidx/camera/core/impl/ImageOutputConfig;->OPTION_TARGET_ASPECT_RATIO_CUSTOM:Landroidx/camera/core/impl/Config$Option;

    .line 61
    const-class v0, Landroidx/camera/core/AspectRatio;

    .line 62
    const-string v1, "camerax.core.imageOutput.targetAspectRatio"

    invoke-static {v1, v0}, Landroidx/camera/core/impl/Config$Option;->create(Ljava/lang/String;Ljava/lang/Class;)Landroidx/camera/core/impl/Config$Option;

    move-result-object v0

    sput-object v0, Landroidx/camera/core/impl/ImageOutputConfig;->OPTION_TARGET_ASPECT_RATIO:Landroidx/camera/core/impl/Config$Option;

    .line 67
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 68
    const-string v1, "camerax.core.imageOutput.targetRotation"

    invoke-static {v1, v0}, Landroidx/camera/core/impl/Config$Option;->create(Ljava/lang/String;Ljava/lang/Class;)Landroidx/camera/core/impl/Config$Option;

    move-result-object v0

    sput-object v0, Landroidx/camera/core/impl/ImageOutputConfig;->OPTION_TARGET_ROTATION:Landroidx/camera/core/impl/Config$Option;

    .line 72
    const-class v0, Landroid/util/Size;

    .line 73
    const-string v1, "camerax.core.imageOutput.targetResolution"

    invoke-static {v1, v0}, Landroidx/camera/core/impl/Config$Option;->create(Ljava/lang/String;Ljava/lang/Class;)Landroidx/camera/core/impl/Config$Option;

    move-result-object v0

    sput-object v0, Landroidx/camera/core/impl/ImageOutputConfig;->OPTION_TARGET_RESOLUTION:Landroidx/camera/core/impl/Config$Option;

    .line 77
    const-class v0, Landroid/util/Size;

    .line 78
    const-string v1, "camerax.core.imageOutput.defaultResolution"

    invoke-static {v1, v0}, Landroidx/camera/core/impl/Config$Option;->create(Ljava/lang/String;Ljava/lang/Class;)Landroidx/camera/core/impl/Config$Option;

    move-result-object v0

    sput-object v0, Landroidx/camera/core/impl/ImageOutputConfig;->OPTION_DEFAULT_RESOLUTION:Landroidx/camera/core/impl/Config$Option;

    .line 82
    const-class v0, Landroid/util/Size;

    .line 83
    const-string v1, "camerax.core.imageOutput.maxResolution"

    invoke-static {v1, v0}, Landroidx/camera/core/impl/Config$Option;->create(Ljava/lang/String;Ljava/lang/Class;)Landroidx/camera/core/impl/Config$Option;

    move-result-object v0

    sput-object v0, Landroidx/camera/core/impl/ImageOutputConfig;->OPTION_MAX_RESOLUTION:Landroidx/camera/core/impl/Config$Option;

    .line 87
    const-class v0, Ljava/util/List;

    .line 88
    const-string v1, "camerax.core.imageOutput.supportedResolutions"

    invoke-static {v1, v0}, Landroidx/camera/core/impl/Config$Option;->create(Ljava/lang/String;Ljava/lang/Class;)Landroidx/camera/core/impl/Config$Option;

    move-result-object v0

    sput-object v0, Landroidx/camera/core/impl/ImageOutputConfig;->OPTION_SUPPORTED_RESOLUTIONS:Landroidx/camera/core/impl/Config$Option;

    .line 87
    return-void
.end method


# virtual methods
.method public abstract getDefaultResolution()Landroid/util/Size;
.end method

.method public abstract getDefaultResolution(Landroid/util/Size;)Landroid/util/Size;
.end method

.method public abstract getMaxResolution()Landroid/util/Size;
.end method

.method public abstract getMaxResolution(Landroid/util/Size;)Landroid/util/Size;
.end method

.method public abstract getSupportedResolutions()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "[",
            "Landroid/util/Size;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract getSupportedResolutions(Ljava/util/List;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "[",
            "Landroid/util/Size;",
            ">;>;)",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "[",
            "Landroid/util/Size;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract getTargetAspectRatio()I
.end method

.method public abstract getTargetAspectRatioCustom()Landroid/util/Rational;
.end method

.method public abstract getTargetAspectRatioCustom(Landroid/util/Rational;)Landroid/util/Rational;
.end method

.method public abstract getTargetResolution()Landroid/util/Size;
.end method

.method public abstract getTargetResolution(Landroid/util/Size;)Landroid/util/Size;
.end method

.method public abstract getTargetRotation()I
.end method

.method public abstract getTargetRotation(I)I
.end method

.method public abstract hasTargetAspectRatio()Z
.end method
