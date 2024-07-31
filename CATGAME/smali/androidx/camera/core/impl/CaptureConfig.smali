.class public final Landroidx/camera/core/impl/CaptureConfig;
.super Ljava/lang/Object;
.source "CaptureConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/core/impl/CaptureConfig$Builder;,
        Landroidx/camera/core/impl/CaptureConfig$OptionUnpacker;
    }
.end annotation


# static fields
.field public static final OPTION_JPEG_QUALITY:Landroidx/camera/core/impl/Config$Option;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/camera/core/impl/Config$Option<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final OPTION_ROTATION:Landroidx/camera/core/impl/Config$Option;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/camera/core/impl/Config$Option<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final mCameraCaptureCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/camera/core/impl/CameraCaptureCallback;",
            ">;"
        }
    .end annotation
.end field

.field final mImplementationOptions:Landroidx/camera/core/impl/Config;

.field final mSurfaces:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/camera/core/impl/DeferrableSurface;",
            ">;"
        }
    .end annotation
.end field

.field private final mTag:Ljava/lang/Object;

.field final mTemplateType:I

.field private final mUseRepeatingSurface:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 49
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 50
    const-string v1, "camerax.core.captureConfig.rotation"

    invoke-static {v1, v0}, Landroidx/camera/core/impl/Config$Option;->create(Ljava/lang/String;Ljava/lang/Class;)Landroidx/camera/core/impl/Config$Option;

    move-result-object v0

    sput-object v0, Landroidx/camera/core/impl/CaptureConfig;->OPTION_ROTATION:Landroidx/camera/core/impl/Config$Option;

    .line 59
    const-class v0, Ljava/lang/Integer;

    .line 60
    const-string v1, "camerax.core.captureConfig.jpegQuality"

    invoke-static {v1, v0}, Landroidx/camera/core/impl/Config$Option;->create(Ljava/lang/String;Ljava/lang/Class;)Landroidx/camera/core/impl/Config$Option;

    move-result-object v0

    sput-object v0, Landroidx/camera/core/impl/CaptureConfig;->OPTION_JPEG_QUALITY:Landroidx/camera/core/impl/Config$Option;

    .line 59
    return-void
.end method

.method constructor <init>(Ljava/util/List;Landroidx/camera/core/impl/Config;ILjava/util/List;ZLjava/lang/Object;)V
    .locals 1
    .param p2, "implementationOptions"    # Landroidx/camera/core/impl/Config;
    .param p3, "templateType"    # I
    .param p5, "useRepeatingSurface"    # Z
    .param p6, "tag"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/camera/core/impl/DeferrableSurface;",
            ">;",
            "Landroidx/camera/core/impl/Config;",
            "I",
            "Ljava/util/List<",
            "Landroidx/camera/core/impl/CameraCaptureCallback;",
            ">;Z",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 101
    .local p1, "surfaces":Ljava/util/List;, "Ljava/util/List<Landroidx/camera/core/impl/DeferrableSurface;>;"
    .local p4, "cameraCaptureCallbacks":Ljava/util/List;, "Ljava/util/List<Landroidx/camera/core/impl/CameraCaptureCallback;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    iput-object p1, p0, Landroidx/camera/core/impl/CaptureConfig;->mSurfaces:Ljava/util/List;

    .line 103
    iput-object p2, p0, Landroidx/camera/core/impl/CaptureConfig;->mImplementationOptions:Landroidx/camera/core/impl/Config;

    .line 104
    iput p3, p0, Landroidx/camera/core/impl/CaptureConfig;->mTemplateType:I

    .line 105
    invoke-static {p4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroidx/camera/core/impl/CaptureConfig;->mCameraCaptureCallbacks:Ljava/util/List;

    .line 106
    iput-boolean p5, p0, Landroidx/camera/core/impl/CaptureConfig;->mUseRepeatingSurface:Z

    .line 107
    iput-object p6, p0, Landroidx/camera/core/impl/CaptureConfig;->mTag:Ljava/lang/Object;

    .line 108
    return-void
.end method

.method public static defaultEmptyCaptureConfig()Landroidx/camera/core/impl/CaptureConfig;
    .locals 1

    .line 113
    new-instance v0, Landroidx/camera/core/impl/CaptureConfig$Builder;

    invoke-direct {v0}, Landroidx/camera/core/impl/CaptureConfig$Builder;-><init>()V

    invoke-virtual {v0}, Landroidx/camera/core/impl/CaptureConfig$Builder;->build()Landroidx/camera/core/impl/CaptureConfig;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getCameraCaptureCallbacks()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/camera/core/impl/CameraCaptureCallback;",
            ">;"
        }
    .end annotation

    .line 138
    iget-object v0, p0, Landroidx/camera/core/impl/CaptureConfig;->mCameraCaptureCallbacks:Ljava/util/List;

    return-object v0
.end method

.method public getImplementationOptions()Landroidx/camera/core/impl/Config;
    .locals 1

    .line 124
    iget-object v0, p0, Landroidx/camera/core/impl/CaptureConfig;->mImplementationOptions:Landroidx/camera/core/impl/Config;

    return-object v0
.end method

.method public getSurfaces()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/camera/core/impl/DeferrableSurface;",
            ">;"
        }
    .end annotation

    .line 119
    iget-object v0, p0, Landroidx/camera/core/impl/CaptureConfig;->mSurfaces:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getTag()Ljava/lang/Object;
    .locals 1

    .line 143
    iget-object v0, p0, Landroidx/camera/core/impl/CaptureConfig;->mTag:Ljava/lang/Object;

    return-object v0
.end method

.method public getTemplateType()I
    .locals 1

    .line 128
    iget v0, p0, Landroidx/camera/core/impl/CaptureConfig;->mTemplateType:I

    return v0
.end method

.method public isUseRepeatingSurface()Z
    .locals 1

    .line 132
    iget-boolean v0, p0, Landroidx/camera/core/impl/CaptureConfig;->mUseRepeatingSurface:Z

    return v0
.end method
