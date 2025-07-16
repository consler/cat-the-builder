.class final Landroidx/camera/core/ImageCapture$TakePictureState;
.super Ljava/lang/Object;
.source "ImageCapture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/core/ImageCapture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "TakePictureState"
.end annotation


# instance fields
.field mIsAePrecaptureTriggered:Z

.field mIsAfTriggered:Z

.field mPreCaptureState:Landroidx/camera/core/impl/CameraCaptureResult;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 1755
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1756
    invoke-static {}, Landroidx/camera/core/impl/CameraCaptureResult$EmptyCameraCaptureResult;->create()Landroidx/camera/core/impl/CameraCaptureResult;

    move-result-object v0

    iput-object v0, p0, Landroidx/camera/core/ImageCapture$TakePictureState;->mPreCaptureState:Landroidx/camera/core/impl/CameraCaptureResult;

    const/4 v0, 0x0

    .line 1757
    iput-boolean v0, p0, Landroidx/camera/core/ImageCapture$TakePictureState;->mIsAfTriggered:Z

    .line 1758
    iput-boolean v0, p0, Landroidx/camera/core/ImageCapture$TakePictureState;->mIsAePrecaptureTriggered:Z

    return-void
.end method
