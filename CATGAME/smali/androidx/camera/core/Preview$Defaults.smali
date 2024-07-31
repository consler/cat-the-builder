.class public final Landroidx/camera/core/Preview$Defaults;
.super Ljava/lang/Object;
.source "Preview.java"

# interfaces
.implements Landroidx/camera/core/impl/ConfigProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/core/Preview;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Defaults"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/camera/core/impl/ConfigProvider<",
        "Landroidx/camera/core/impl/PreviewConfig;",
        ">;"
    }
.end annotation


# static fields
.field private static final DEFAULT_CONFIG:Landroidx/camera/core/impl/PreviewConfig;

.field private static final DEFAULT_MAX_RESOLUTION:Landroid/util/Size;

.field private static final DEFAULT_SURFACE_OCCUPANCY_PRIORITY:I = 0x2


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 536
    invoke-static {}, Landroidx/camera/core/CameraX;->getSurfaceManager()Landroidx/camera/core/impl/CameraDeviceSurfaceManager;

    move-result-object v0

    invoke-interface {v0}, Landroidx/camera/core/impl/CameraDeviceSurfaceManager;->getPreviewSize()Landroid/util/Size;

    move-result-object v0

    sput-object v0, Landroidx/camera/core/Preview$Defaults;->DEFAULT_MAX_RESOLUTION:Landroid/util/Size;

    .line 542
    new-instance v0, Landroidx/camera/core/Preview$Builder;

    invoke-direct {v0}, Landroidx/camera/core/Preview$Builder;-><init>()V

    sget-object v1, Landroidx/camera/core/Preview$Defaults;->DEFAULT_MAX_RESOLUTION:Landroid/util/Size;

    .line 544
    invoke-virtual {v0, v1}, Landroidx/camera/core/Preview$Builder;->setMaxResolution(Landroid/util/Size;)Landroidx/camera/core/Preview$Builder;

    move-result-object v0

    .line 545
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroidx/camera/core/Preview$Builder;->setSurfaceOccupancyPriority(I)Landroidx/camera/core/Preview$Builder;

    move-result-object v0

    .line 546
    .local v0, "builder":Landroidx/camera/core/Preview$Builder;
    invoke-virtual {v0}, Landroidx/camera/core/Preview$Builder;->getUseCaseConfig()Landroidx/camera/core/impl/PreviewConfig;

    move-result-object v1

    sput-object v1, Landroidx/camera/core/Preview$Defaults;->DEFAULT_CONFIG:Landroidx/camera/core/impl/PreviewConfig;

    .line 547
    .end local v0    # "builder":Landroidx/camera/core/Preview$Builder;
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 534
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic getConfig(Landroidx/camera/core/CameraInfo;)Landroidx/camera/core/impl/Config;
    .locals 0

    .line 533
    invoke-virtual {p0, p1}, Landroidx/camera/core/Preview$Defaults;->getConfig(Landroidx/camera/core/CameraInfo;)Landroidx/camera/core/impl/PreviewConfig;

    move-result-object p1

    return-object p1
.end method

.method public getConfig(Landroidx/camera/core/CameraInfo;)Landroidx/camera/core/impl/PreviewConfig;
    .locals 1
    .param p1, "cameraInfo"    # Landroidx/camera/core/CameraInfo;

    .line 552
    sget-object v0, Landroidx/camera/core/Preview$Defaults;->DEFAULT_CONFIG:Landroidx/camera/core/impl/PreviewConfig;

    return-object v0
.end method
