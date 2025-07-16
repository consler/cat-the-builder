.class final Landroidx/camera/camera2/internal/ImageCaptureOptionUnpacker;
.super Landroidx/camera/camera2/internal/Camera2CaptureOptionUnpacker;
.source "ImageCaptureOptionUnpacker.java"


# static fields
.field static final INSTANCE:Landroidx/camera/camera2/internal/ImageCaptureOptionUnpacker;


# instance fields
.field private mDeviceProperties:Landroidx/camera/core/impl/DeviceProperties;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 38
    new-instance v0, Landroidx/camera/camera2/internal/ImageCaptureOptionUnpacker;

    invoke-direct {v0}, Landroidx/camera/camera2/internal/ImageCaptureOptionUnpacker;-><init>()V

    sput-object v0, Landroidx/camera/camera2/internal/ImageCaptureOptionUnpacker;->INSTANCE:Landroidx/camera/camera2/internal/ImageCaptureOptionUnpacker;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 36
    invoke-direct {p0}, Landroidx/camera/camera2/internal/Camera2CaptureOptionUnpacker;-><init>()V

    .line 40
    invoke-static {}, Landroidx/camera/core/impl/DeviceProperties;->create()Landroidx/camera/core/impl/DeviceProperties;

    move-result-object v0

    iput-object v0, p0, Landroidx/camera/camera2/internal/ImageCaptureOptionUnpacker;->mDeviceProperties:Landroidx/camera/core/impl/DeviceProperties;

    return-void
.end method

.method private applyPixelHdrPlusChangeForCaptureMode(ILandroidx/camera/camera2/impl/Camera2ImplConfig$Builder;)V
    .locals 2

    .line 71
    iget-object v0, p0, Landroidx/camera/camera2/internal/ImageCaptureOptionUnpacker;->mDeviceProperties:Landroidx/camera/core/impl/DeviceProperties;

    invoke-virtual {v0}, Landroidx/camera/core/impl/DeviceProperties;->manufacturer()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Google"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroidx/camera/camera2/internal/ImageCaptureOptionUnpacker;->mDeviceProperties:Landroidx/camera/core/impl/DeviceProperties;

    .line 72
    invoke-virtual {v0}, Landroidx/camera/core/impl/DeviceProperties;->model()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Pixel 2"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/camera/camera2/internal/ImageCaptureOptionUnpacker;->mDeviceProperties:Landroidx/camera/core/impl/DeviceProperties;

    .line 73
    invoke-virtual {v0}, Landroidx/camera/core/impl/DeviceProperties;->model()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Pixel 3"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 74
    :cond_0
    iget-object v0, p0, Landroidx/camera/camera2/internal/ImageCaptureOptionUnpacker;->mDeviceProperties:Landroidx/camera/core/impl/DeviceProperties;

    invoke-virtual {v0}, Landroidx/camera/core/impl/DeviceProperties;->sdkVersion()I

    move-result v0

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_3

    const/4 v0, 0x1

    if-eqz p1, :cond_2

    if-eq p1, v0, :cond_1

    goto :goto_0

    .line 83
    :cond_1
    sget-object p1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_ENABLE_ZSL:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v0, 0x0

    .line 84
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 83
    invoke-virtual {p2, p1, v0}, Landroidx/camera/camera2/impl/Camera2ImplConfig$Builder;->setCaptureRequestOption(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Landroidx/camera/camera2/impl/Camera2ImplConfig$Builder;

    goto :goto_0

    .line 78
    :cond_2
    sget-object p1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_ENABLE_ZSL:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 79
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 78
    invoke-virtual {p2, p1, v0}, Landroidx/camera/camera2/impl/Camera2ImplConfig$Builder;->setCaptureRequestOption(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Landroidx/camera/camera2/impl/Camera2ImplConfig$Builder;

    :cond_3
    :goto_0
    return-void
.end method


# virtual methods
.method setDeviceProperty(Landroidx/camera/core/impl/DeviceProperties;)V
    .locals 0

    .line 63
    iput-object p1, p0, Landroidx/camera/camera2/internal/ImageCaptureOptionUnpacker;->mDeviceProperties:Landroidx/camera/core/impl/DeviceProperties;

    return-void
.end method

.method public unpack(Landroidx/camera/core/impl/UseCaseConfig;Landroidx/camera/core/impl/CaptureConfig$Builder;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/camera/core/impl/UseCaseConfig<",
            "*>;",
            "Landroidx/camera/core/impl/CaptureConfig$Builder;",
            ")V"
        }
    .end annotation

    .line 45
    invoke-super {p0, p1, p2}, Landroidx/camera/camera2/internal/Camera2CaptureOptionUnpacker;->unpack(Landroidx/camera/core/impl/UseCaseConfig;Landroidx/camera/core/impl/CaptureConfig$Builder;)V

    .line 47
    instance-of v0, p1, Landroidx/camera/core/impl/ImageCaptureConfig;

    if-eqz v0, :cond_1

    .line 50
    check-cast p1, Landroidx/camera/core/impl/ImageCaptureConfig;

    .line 52
    new-instance v0, Landroidx/camera/camera2/impl/Camera2ImplConfig$Builder;

    invoke-direct {v0}, Landroidx/camera/camera2/impl/Camera2ImplConfig$Builder;-><init>()V

    .line 54
    invoke-virtual {p1}, Landroidx/camera/core/impl/ImageCaptureConfig;->hasCaptureMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 55
    invoke-virtual {p1}, Landroidx/camera/core/impl/ImageCaptureConfig;->getCaptureMode()I

    move-result p1

    invoke-direct {p0, p1, v0}, Landroidx/camera/camera2/internal/ImageCaptureOptionUnpacker;->applyPixelHdrPlusChangeForCaptureMode(ILandroidx/camera/camera2/impl/Camera2ImplConfig$Builder;)V

    .line 59
    :cond_0
    invoke-virtual {v0}, Landroidx/camera/camera2/impl/Camera2ImplConfig$Builder;->build()Landroidx/camera/camera2/impl/Camera2ImplConfig;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroidx/camera/core/impl/CaptureConfig$Builder;->addImplementationOptions(Landroidx/camera/core/impl/Config;)V

    return-void

    .line 48
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "config is not ImageCaptureConfig"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
