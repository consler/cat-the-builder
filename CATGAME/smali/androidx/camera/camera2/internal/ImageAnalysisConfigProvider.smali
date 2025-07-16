.class public final Landroidx/camera/camera2/internal/ImageAnalysisConfigProvider;
.super Ljava/lang/Object;
.source "ImageAnalysisConfigProvider.java"

# interfaces
.implements Landroidx/camera/core/impl/ConfigProvider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/camera/core/impl/ConfigProvider<",
        "Landroidx/camera/core/impl/ImageAnalysisConfig;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ImageAnalysisProvider"


# instance fields
.field private final mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "window"

    .line 44
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    iput-object p1, p0, Landroidx/camera/camera2/internal/ImageAnalysisConfigProvider;->mWindowManager:Landroid/view/WindowManager;

    return-void
.end method


# virtual methods
.method public bridge synthetic getConfig(Landroidx/camera/core/CameraInfo;)Landroidx/camera/core/impl/Config;
    .locals 0

    .line 38
    invoke-virtual {p0, p1}, Landroidx/camera/camera2/internal/ImageAnalysisConfigProvider;->getConfig(Landroidx/camera/core/CameraInfo;)Landroidx/camera/core/impl/ImageAnalysisConfig;

    move-result-object p1

    return-object p1
.end method

.method public getConfig(Landroidx/camera/core/CameraInfo;)Landroidx/camera/core/impl/ImageAnalysisConfig;
    .locals 3

    .line 51
    sget-object v0, Landroidx/camera/core/ImageAnalysis;->DEFAULT_CONFIG:Landroidx/camera/core/ImageAnalysis$Defaults;

    .line 52
    invoke-virtual {v0, p1}, Landroidx/camera/core/ImageAnalysis$Defaults;->getConfig(Landroidx/camera/core/CameraInfo;)Landroidx/camera/core/impl/ImageAnalysisConfig;

    move-result-object v0

    .line 51
    invoke-static {v0}, Landroidx/camera/core/ImageAnalysis$Builder;->fromConfig(Landroidx/camera/core/impl/ImageAnalysisConfig;)Landroidx/camera/core/ImageAnalysis$Builder;

    move-result-object v0

    .line 55
    new-instance v1, Landroidx/camera/core/impl/SessionConfig$Builder;

    invoke-direct {v1}, Landroidx/camera/core/impl/SessionConfig$Builder;-><init>()V

    const/4 v2, 0x1

    .line 57
    invoke-virtual {v1, v2}, Landroidx/camera/core/impl/SessionConfig$Builder;->setTemplateType(I)V

    .line 60
    invoke-virtual {v1}, Landroidx/camera/core/impl/SessionConfig$Builder;->build()Landroidx/camera/core/impl/SessionConfig;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/camera/core/ImageAnalysis$Builder;->setDefaultSessionConfig(Landroidx/camera/core/impl/SessionConfig;)Landroidx/camera/core/ImageAnalysis$Builder;

    .line 61
    sget-object v1, Landroidx/camera/camera2/internal/Camera2SessionOptionUnpacker;->INSTANCE:Landroidx/camera/camera2/internal/Camera2SessionOptionUnpacker;

    invoke-virtual {v0, v1}, Landroidx/camera/core/ImageAnalysis$Builder;->setSessionOptionUnpacker(Landroidx/camera/core/impl/SessionConfig$OptionUnpacker;)Landroidx/camera/core/ImageAnalysis$Builder;

    .line 63
    new-instance v1, Landroidx/camera/core/impl/CaptureConfig$Builder;

    invoke-direct {v1}, Landroidx/camera/core/impl/CaptureConfig$Builder;-><init>()V

    .line 64
    invoke-virtual {v1, v2}, Landroidx/camera/core/impl/CaptureConfig$Builder;->setTemplateType(I)V

    .line 65
    invoke-virtual {v1}, Landroidx/camera/core/impl/CaptureConfig$Builder;->build()Landroidx/camera/core/impl/CaptureConfig;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/camera/core/ImageAnalysis$Builder;->setDefaultCaptureConfig(Landroidx/camera/core/impl/CaptureConfig;)Landroidx/camera/core/ImageAnalysis$Builder;

    .line 66
    sget-object v1, Landroidx/camera/camera2/internal/Camera2CaptureOptionUnpacker;->INSTANCE:Landroidx/camera/camera2/internal/Camera2CaptureOptionUnpacker;

    invoke-virtual {v0, v1}, Landroidx/camera/core/ImageAnalysis$Builder;->setCaptureOptionUnpacker(Landroidx/camera/core/impl/CaptureConfig$OptionUnpacker;)Landroidx/camera/core/ImageAnalysis$Builder;

    .line 68
    iget-object v1, p0, Landroidx/camera/camera2/internal/ImageAnalysisConfigProvider;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v1

    .line 69
    invoke-virtual {v0, v1}, Landroidx/camera/core/ImageAnalysis$Builder;->setTargetRotation(I)Landroidx/camera/core/ImageAnalysis$Builder;

    if-eqz p1, :cond_3

    .line 73
    invoke-interface {p1, v1}, Landroidx/camera/core/CameraInfo;->getSensorRotationDegrees(I)I

    move-result p1

    const/16 v1, 0x5a

    if-eq p1, v1, :cond_1

    const/16 v1, 0x10e

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :cond_1
    :goto_0
    if-eqz v2, :cond_2

    .line 75
    sget-object p1, Landroidx/camera/core/impl/ImageOutputConfig;->DEFAULT_ASPECT_RATIO_PORTRAIT:Landroid/util/Rational;

    goto :goto_1

    .line 76
    :cond_2
    sget-object p1, Landroidx/camera/core/impl/ImageOutputConfig;->DEFAULT_ASPECT_RATIO_LANDSCAPE:Landroid/util/Rational;

    .line 75
    :goto_1
    invoke-virtual {v0, p1}, Landroidx/camera/core/ImageAnalysis$Builder;->setTargetAspectRatioCustom(Landroid/util/Rational;)Landroidx/camera/core/ImageAnalysis$Builder;

    .line 79
    :cond_3
    invoke-virtual {v0}, Landroidx/camera/core/ImageAnalysis$Builder;->getUseCaseConfig()Landroidx/camera/core/impl/ImageAnalysisConfig;

    move-result-object p1

    return-object p1
.end method
