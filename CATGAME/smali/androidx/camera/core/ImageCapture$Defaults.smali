.class public final Landroidx/camera/core/ImageCapture$Defaults;
.super Ljava/lang/Object;
.source "ImageCapture.java"

# interfaces
.implements Landroidx/camera/core/impl/ConfigProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/core/ImageCapture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Defaults"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/camera/core/impl/ConfigProvider<",
        "Landroidx/camera/core/impl/ImageCaptureConfig;",
        ">;"
    }
.end annotation


# static fields
.field private static final DEFAULT_CAPTURE_MODE:I = 0x1

.field private static final DEFAULT_CONFIG:Landroidx/camera/core/impl/ImageCaptureConfig;

.field private static final DEFAULT_FLASH_MODE:I = 0x2

.field private static final DEFAULT_SURFACE_OCCUPANCY_PRIORITY:I = 0x4


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1470
    new-instance v0, Landroidx/camera/core/ImageCapture$Builder;

    invoke-direct {v0}, Landroidx/camera/core/ImageCapture$Builder;-><init>()V

    const/4 v1, 0x1

    .line 1472
    invoke-virtual {v0, v1}, Landroidx/camera/core/ImageCapture$Builder;->setCaptureMode(I)Landroidx/camera/core/ImageCapture$Builder;

    move-result-object v0

    const/4 v1, 0x2

    .line 1473
    invoke-virtual {v0, v1}, Landroidx/camera/core/ImageCapture$Builder;->setFlashMode(I)Landroidx/camera/core/ImageCapture$Builder;

    move-result-object v0

    const/4 v1, 0x4

    .line 1474
    invoke-virtual {v0, v1}, Landroidx/camera/core/ImageCapture$Builder;->setSurfaceOccupancyPriority(I)Landroidx/camera/core/ImageCapture$Builder;

    move-result-object v0

    .line 1476
    invoke-virtual {v0}, Landroidx/camera/core/ImageCapture$Builder;->getUseCaseConfig()Landroidx/camera/core/impl/ImageCaptureConfig;

    move-result-object v0

    sput-object v0, Landroidx/camera/core/ImageCapture$Defaults;->DEFAULT_CONFIG:Landroidx/camera/core/impl/ImageCaptureConfig;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1459
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic getConfig(Landroidx/camera/core/CameraInfo;)Landroidx/camera/core/impl/Config;
    .locals 0

    .line 1458
    invoke-virtual {p0, p1}, Landroidx/camera/core/ImageCapture$Defaults;->getConfig(Landroidx/camera/core/CameraInfo;)Landroidx/camera/core/impl/ImageCaptureConfig;

    move-result-object p1

    return-object p1
.end method

.method public getConfig(Landroidx/camera/core/CameraInfo;)Landroidx/camera/core/impl/ImageCaptureConfig;
    .locals 0

    .line 1482
    sget-object p1, Landroidx/camera/core/ImageCapture$Defaults;->DEFAULT_CONFIG:Landroidx/camera/core/impl/ImageCaptureConfig;

    return-object p1
.end method
