.class public final Landroidx/camera/camera2/Camera2Config;
.super Ljava/lang/Object;
.source "Camera2Config.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/camera2/Camera2Config$DefaultProvider;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    return-void
.end method

.method public static defaultConfig()Landroidx/camera/core/CameraXConfig;
    .locals 5

    .line 54
    sget-object v0, Landroidx/camera/camera2/-$$Lambda$LGbwJFn1EYEiFTe4QSUMXizKEuU;->INSTANCE:Landroidx/camera/camera2/-$$Lambda$LGbwJFn1EYEiFTe4QSUMXizKEuU;

    .line 57
    .local v0, "cameraFactoryProvider":Landroidx/camera/core/impl/CameraFactory$Provider;
    sget-object v1, Landroidx/camera/camera2/-$$Lambda$Camera2Config$mYXXnxW6sa_oF7xhp51ozRSO_ck;->INSTANCE:Landroidx/camera/camera2/-$$Lambda$Camera2Config$mYXXnxW6sa_oF7xhp51ozRSO_ck;

    .line 66
    .local v1, "surfaceManagerProvider":Landroidx/camera/core/impl/CameraDeviceSurfaceManager$Provider;
    sget-object v2, Landroidx/camera/camera2/-$$Lambda$Camera2Config$pKz61QSIMP944Kt2USWec22ELsc;->INSTANCE:Landroidx/camera/camera2/-$$Lambda$Camera2Config$pKz61QSIMP944Kt2USWec22ELsc;

    .line 79
    .local v2, "configFactoryProvider":Landroidx/camera/core/impl/UseCaseConfigFactory$Provider;
    new-instance v3, Landroidx/camera/core/CameraXConfig$Builder;

    invoke-direct {v3}, Landroidx/camera/core/CameraXConfig$Builder;-><init>()V

    .line 81
    invoke-virtual {v3, v0}, Landroidx/camera/core/CameraXConfig$Builder;->setCameraFactoryProvider(Landroidx/camera/core/impl/CameraFactory$Provider;)Landroidx/camera/core/CameraXConfig$Builder;

    move-result-object v3

    .line 82
    invoke-virtual {v3, v1}, Landroidx/camera/core/CameraXConfig$Builder;->setDeviceSurfaceManagerProvider(Landroidx/camera/core/impl/CameraDeviceSurfaceManager$Provider;)Landroidx/camera/core/CameraXConfig$Builder;

    move-result-object v3

    .line 83
    invoke-virtual {v3, v2}, Landroidx/camera/core/CameraXConfig$Builder;->setUseCaseConfigFactoryProvider(Landroidx/camera/core/impl/UseCaseConfigFactory$Provider;)Landroidx/camera/core/CameraXConfig$Builder;

    move-result-object v3

    .line 85
    .local v3, "appConfigBuilder":Landroidx/camera/core/CameraXConfig$Builder;
    invoke-virtual {v3}, Landroidx/camera/core/CameraXConfig$Builder;->build()Landroidx/camera/core/CameraXConfig;

    move-result-object v4

    return-object v4
.end method

.method static synthetic lambda$defaultConfig$0(Landroid/content/Context;)Landroidx/camera/core/impl/CameraDeviceSurfaceManager;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/camera/core/InitializationException;
        }
    .end annotation

    .line 59
    :try_start_0
    new-instance v0, Landroidx/camera/camera2/internal/Camera2DeviceSurfaceManager;

    invoke-direct {v0, p0}, Landroidx/camera/camera2/internal/Camera2DeviceSurfaceManager;-><init>(Landroid/content/Context;)V
    :try_end_0
    .catch Landroidx/camera/core/CameraUnavailableException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 60
    :catch_0
    move-exception v0

    .line 61
    .local v0, "e":Landroidx/camera/core/CameraUnavailableException;
    new-instance v1, Landroidx/camera/core/InitializationException;

    invoke-direct {v1, v0}, Landroidx/camera/core/InitializationException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method static synthetic lambda$defaultConfig$1(Landroid/content/Context;)Landroidx/camera/core/impl/UseCaseConfigFactory;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/camera/core/InitializationException;
        }
    .end annotation

    .line 67
    new-instance v0, Landroidx/camera/core/impl/ExtendableUseCaseConfigFactory;

    invoke-direct {v0}, Landroidx/camera/core/impl/ExtendableUseCaseConfigFactory;-><init>()V

    .line 68
    .local v0, "factory":Landroidx/camera/core/impl/ExtendableUseCaseConfigFactory;
    const-class v1, Landroidx/camera/core/impl/ImageAnalysisConfig;

    new-instance v2, Landroidx/camera/camera2/internal/ImageAnalysisConfigProvider;

    invoke-direct {v2, p0}, Landroidx/camera/camera2/internal/ImageAnalysisConfigProvider;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1, v2}, Landroidx/camera/core/impl/ExtendableUseCaseConfigFactory;->installDefaultProvider(Ljava/lang/Class;Landroidx/camera/core/impl/ConfigProvider;)V

    .line 70
    const-class v1, Landroidx/camera/core/impl/ImageCaptureConfig;

    new-instance v2, Landroidx/camera/camera2/internal/ImageCaptureConfigProvider;

    invoke-direct {v2, p0}, Landroidx/camera/camera2/internal/ImageCaptureConfigProvider;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1, v2}, Landroidx/camera/core/impl/ExtendableUseCaseConfigFactory;->installDefaultProvider(Ljava/lang/Class;Landroidx/camera/core/impl/ConfigProvider;)V

    .line 72
    const-class v1, Landroidx/camera/core/impl/VideoCaptureConfig;

    new-instance v2, Landroidx/camera/camera2/internal/VideoCaptureConfigProvider;

    invoke-direct {v2, p0}, Landroidx/camera/camera2/internal/VideoCaptureConfigProvider;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1, v2}, Landroidx/camera/core/impl/ExtendableUseCaseConfigFactory;->installDefaultProvider(Ljava/lang/Class;Landroidx/camera/core/impl/ConfigProvider;)V

    .line 74
    const-class v1, Landroidx/camera/core/impl/PreviewConfig;

    new-instance v2, Landroidx/camera/camera2/internal/PreviewConfigProvider;

    invoke-direct {v2, p0}, Landroidx/camera/camera2/internal/PreviewConfigProvider;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1, v2}, Landroidx/camera/core/impl/ExtendableUseCaseConfigFactory;->installDefaultProvider(Ljava/lang/Class;Landroidx/camera/core/impl/ConfigProvider;)V

    .line 76
    return-object v0
.end method
