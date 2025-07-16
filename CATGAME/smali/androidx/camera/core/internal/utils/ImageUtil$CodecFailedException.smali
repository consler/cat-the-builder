.class public final Landroidx/camera/core/internal/utils/ImageUtil$CodecFailedException;
.super Ljava/lang/Exception;
.source "ImageUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/core/internal/utils/ImageUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CodecFailedException"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/core/internal/utils/ImageUtil$CodecFailedException$FailureType;
    }
.end annotation


# instance fields
.field private mFailureType:Landroidx/camera/core/internal/utils/ImageUtil$CodecFailedException$FailureType;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 286
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 287
    sget-object p1, Landroidx/camera/core/internal/utils/ImageUtil$CodecFailedException$FailureType;->UNKNOWN:Landroidx/camera/core/internal/utils/ImageUtil$CodecFailedException$FailureType;

    iput-object p1, p0, Landroidx/camera/core/internal/utils/ImageUtil$CodecFailedException;->mFailureType:Landroidx/camera/core/internal/utils/ImageUtil$CodecFailedException$FailureType;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Landroidx/camera/core/internal/utils/ImageUtil$CodecFailedException$FailureType;)V
    .locals 0

    .line 291
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 292
    iput-object p2, p0, Landroidx/camera/core/internal/utils/ImageUtil$CodecFailedException;->mFailureType:Landroidx/camera/core/internal/utils/ImageUtil$CodecFailedException$FailureType;

    return-void
.end method


# virtual methods
.method public getFailureType()Landroidx/camera/core/internal/utils/ImageUtil$CodecFailedException$FailureType;
    .locals 1

    .line 297
    iget-object v0, p0, Landroidx/camera/core/internal/utils/ImageUtil$CodecFailedException;->mFailureType:Landroidx/camera/core/internal/utils/ImageUtil$CodecFailedException$FailureType;

    return-object v0
.end method
