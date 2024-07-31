.class public final Landroidx/camera/camera2/internal/ImageCaptureConfigProvider;
.super Ljava/lang/Object;
.source "ImageCaptureConfigProvider.java"

# interfaces
.implements Landroidx/camera/core/impl/ConfigProvider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/camera/core/impl/ConfigProvider<",
        "Landroidx/camera/core/impl/ImageCaptureConfig;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ImageCaptureProvider"


# instance fields
.field private final mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const-string/jumbo v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Landroidx/camera/camera2/internal/ImageCaptureConfigProvider;->mWindowManager:Landroid/view/WindowManager;

    .line 45
    return-void
.end method


# virtual methods
.method public bridge synthetic getConfig(Landroidx/camera/core/CameraInfo;)Landroidx/camera/core/impl/Config;
    .locals 0

    .line 38
    invoke-virtual {p0, p1}, Landroidx/camera/camera2/internal/ImageCaptureConfigProvider;->getConfig(Landroidx/camera/core/CameraInfo;)Landroidx/camera/core/impl/ImageCaptureConfig;

    move-result-object p1

    return-object p1
.end method

.method public getConfig(Landroidx/camera/core/CameraInfo;)Landroidx/camera/core/impl/ImageCaptureConfig;
    .locals 7
    .param p1, "cameraInfo"    # Landroidx/camera/core/CameraInfo;

    .line 51
    sget-object v0, Landroidx/camera/core/ImageCapture;->DEFAULT_CONFIG:Landroidx/camera/core/ImageCapture$Defaults;

    .line 52
    invoke-virtual {v0, p1}, Landroidx/camera/core/ImageCapture$Defaults;->getConfig(Landroidx/camera/core/CameraInfo;)Landroidx/camera/core/impl/ImageCaptureConfig;

    move-result-object v0

    .line 51
    invoke-static {v0}, Landroidx/camera/core/ImageCapture$Builder;->fromConfig(Landroidx/camera/core/impl/ImageCaptureConfig;)Landroidx/camera/core/ImageCapture$Builder;

    move-result-object v0

    .line 55
    .local v0, "builder":Landroidx/camera/core/ImageCapture$Builder;
    new-instance v1, Landroidx/camera/core/impl/SessionConfig$Builder;

    invoke-direct {v1}, Landroidx/camera/core/impl/SessionConfig$Builder;-><init>()V

    .line 57
    .local v1, "sessionBuilder":Landroidx/camera/core/impl/SessionConfig$Builder;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroidx/camera/core/impl/SessionConfig$Builder;->setTemplateType(I)V

    .line 60
    invoke-virtual {v1}, Landroidx/camera/core/impl/SessionConfig$Builder;->build()Landroidx/camera/core/impl/SessionConfig;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroidx/camera/core/ImageCapture$Builder;->setDefaultSessionConfig(Landroidx/camera/core/impl/SessionConfig;)Landroidx/camera/core/ImageCapture$Builder;

    .line 61
    sget-object v3, Landroidx/camera/camera2/internal/Camera2SessionOptionUnpacker;->INSTANCE:Landroidx/camera/camera2/internal/Camera2SessionOptionUnpacker;

    invoke-virtual {v0, v3}, Landroidx/camera/core/ImageCapture$Builder;->setSessionOptionUnpacker(Landroidx/camera/core/impl/SessionConfig$OptionUnpacker;)Landroidx/camera/core/ImageCapture$Builder;

    .line 63
    new-instance v3, Landroidx/camera/core/impl/CaptureConfig$Builder;

    invoke-direct {v3}, Landroidx/camera/core/impl/CaptureConfig$Builder;-><init>()V

    .line 64
    .local v3, "captureConfig":Landroidx/camera/core/impl/CaptureConfig$Builder;
    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroidx/camera/core/impl/CaptureConfig$Builder;->setTemplateType(I)V

    .line 65
    invoke-virtual {v3}, Landroidx/camera/core/impl/CaptureConfig$Builder;->build()Landroidx/camera/core/impl/CaptureConfig;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroidx/camera/core/ImageCapture$Builder;->setDefaultCaptureConfig(Landroidx/camera/core/impl/CaptureConfig;)Landroidx/camera/core/ImageCapture$Builder;

    .line 66
    sget-object v4, Landroidx/camera/camera2/internal/ImageCaptureOptionUnpacker;->INSTANCE:Landroidx/camera/camera2/internal/ImageCaptureOptionUnpacker;

    invoke-virtual {v0, v4}, Landroidx/camera/core/ImageCapture$Builder;->setCaptureOptionUnpacker(Landroidx/camera/core/impl/CaptureConfig$OptionUnpacker;)Landroidx/camera/core/ImageCapture$Builder;

    .line 68
    iget-object v4, p0, Landroidx/camera/camera2/internal/ImageCaptureConfigProvider;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Display;->getRotation()I

    move-result v4

    .line 69
    .local v4, "targetRotation":I
    invoke-virtual {v0, v4}, Landroidx/camera/core/ImageCapture$Builder;->setTargetRotation(I)Landroidx/camera/core/ImageCapture$Builder;

    .line 72
    if-eqz p1, :cond_3

    .line 73
    invoke-interface {p1, v4}, Landroidx/camera/core/CameraInfo;->getSensorRotationDegrees(I)I

    move-result v5

    .line 74
    .local v5, "rotationDegrees":I
    const/16 v6, 0x5a

    if-eq v5, v6, :cond_1

    const/16 v6, 0x10e

    if-ne v5, v6, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 75
    .local v2, "isRotateNeeded":Z
    :cond_1
    :goto_0
    if-eqz v2, :cond_2

    sget-object v6, Landroidx/camera/core/impl/ImageOutputConfig;->DEFAULT_ASPECT_RATIO_PORTRAIT:Landroid/util/Rational;

    goto :goto_1

    .line 76
    :cond_2
    sget-object v6, Landroidx/camera/core/impl/ImageOutputConfig;->DEFAULT_ASPECT_RATIO_LANDSCAPE:Landroid/util/Rational;

    .line 75
    :goto_1
    invoke-virtual {v0, v6}, Landroidx/camera/core/ImageCapture$Builder;->setTargetAspectRatioCustom(Landroid/util/Rational;)Landroidx/camera/core/ImageCapture$Builder;

    .line 79
    .end local v2    # "isRotateNeeded":Z
    .end local v5    # "rotationDegrees":I
    :cond_3
    invoke-virtual {v0}, Landroidx/camera/core/ImageCapture$Builder;->getUseCaseConfig()Landroidx/camera/core/impl/ImageCaptureConfig;

    move-result-object v2

    return-object v2
.end method
