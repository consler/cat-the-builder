.class public final Landroidx/camera/core/ImageAnalysis$Defaults;
.super Ljava/lang/Object;
.source "ImageAnalysis.java"

# interfaces
.implements Landroidx/camera/core/impl/ConfigProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/core/ImageAnalysis;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Defaults"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/camera/core/impl/ConfigProvider<",
        "Landroidx/camera/core/impl/ImageAnalysisConfig;",
        ">;"
    }
.end annotation


# static fields
.field private static final DEFAULT_BACKPRESSURE_STRATEGY:I = 0x0

.field private static final DEFAULT_CONFIG:Landroidx/camera/core/impl/ImageAnalysisConfig;

.field private static final DEFAULT_IMAGE_QUEUE_DEPTH:I = 0x6

.field private static final DEFAULT_MAX_RESOLUTION:Landroid/util/Size;

.field private static final DEFAULT_SURFACE_OCCUPANCY_PRIORITY:I = 0x1

.field private static final DEFAULT_TARGET_RESOLUTION:Landroid/util/Size;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 571
    new-instance v0, Landroid/util/Size;

    const/16 v1, 0x280

    const/16 v2, 0x1e0

    invoke-direct {v0, v1, v2}, Landroid/util/Size;-><init>(II)V

    sput-object v0, Landroidx/camera/core/ImageAnalysis$Defaults;->DEFAULT_TARGET_RESOLUTION:Landroid/util/Size;

    .line 572
    new-instance v0, Landroid/util/Size;

    const/16 v1, 0x780

    const/16 v2, 0x438

    invoke-direct {v0, v1, v2}, Landroid/util/Size;-><init>(II)V

    sput-object v0, Landroidx/camera/core/ImageAnalysis$Defaults;->DEFAULT_MAX_RESOLUTION:Landroid/util/Size;

    .line 578
    new-instance v0, Landroidx/camera/core/ImageAnalysis$Builder;

    invoke-direct {v0}, Landroidx/camera/core/ImageAnalysis$Builder;-><init>()V

    .line 579
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/camera/core/ImageAnalysis$Builder;->setBackpressureStrategy(I)Landroidx/camera/core/ImageAnalysis$Builder;

    move-result-object v0

    .line 580
    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroidx/camera/core/ImageAnalysis$Builder;->setImageQueueDepth(I)Landroidx/camera/core/ImageAnalysis$Builder;

    move-result-object v0

    sget-object v1, Landroidx/camera/core/ImageAnalysis$Defaults;->DEFAULT_TARGET_RESOLUTION:Landroid/util/Size;

    .line 581
    invoke-virtual {v0, v1}, Landroidx/camera/core/ImageAnalysis$Builder;->setDefaultResolution(Landroid/util/Size;)Landroidx/camera/core/ImageAnalysis$Builder;

    move-result-object v0

    sget-object v1, Landroidx/camera/core/ImageAnalysis$Defaults;->DEFAULT_MAX_RESOLUTION:Landroid/util/Size;

    .line 582
    invoke-virtual {v0, v1}, Landroidx/camera/core/ImageAnalysis$Builder;->setMaxResolution(Landroid/util/Size;)Landroidx/camera/core/ImageAnalysis$Builder;

    move-result-object v0

    .line 583
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/camera/core/ImageAnalysis$Builder;->setSurfaceOccupancyPriority(I)Landroidx/camera/core/ImageAnalysis$Builder;

    move-result-object v0

    .line 585
    .local v0, "builder":Landroidx/camera/core/ImageAnalysis$Builder;
    invoke-virtual {v0}, Landroidx/camera/core/ImageAnalysis$Builder;->getUseCaseConfig()Landroidx/camera/core/impl/ImageAnalysisConfig;

    move-result-object v1

    sput-object v1, Landroidx/camera/core/ImageAnalysis$Defaults;->DEFAULT_CONFIG:Landroidx/camera/core/impl/ImageAnalysisConfig;

    .line 586
    .end local v0    # "builder":Landroidx/camera/core/ImageAnalysis$Builder;
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 567
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic getConfig(Landroidx/camera/core/CameraInfo;)Landroidx/camera/core/impl/Config;
    .locals 0

    .line 566
    invoke-virtual {p0, p1}, Landroidx/camera/core/ImageAnalysis$Defaults;->getConfig(Landroidx/camera/core/CameraInfo;)Landroidx/camera/core/impl/ImageAnalysisConfig;

    move-result-object p1

    return-object p1
.end method

.method public getConfig(Landroidx/camera/core/CameraInfo;)Landroidx/camera/core/impl/ImageAnalysisConfig;
    .locals 1
    .param p1, "cameraInfo"    # Landroidx/camera/core/CameraInfo;

    .line 591
    sget-object v0, Landroidx/camera/core/ImageAnalysis$Defaults;->DEFAULT_CONFIG:Landroidx/camera/core/impl/ImageAnalysisConfig;

    return-object v0
.end method
