.class Landroidx/camera/core/ImageCapture$6;
.super Ljava/lang/Object;
.source "ImageCapture.java"

# interfaces
.implements Landroidx/camera/core/ImageCapture$CaptureCallbackChecker$CaptureResultChecker;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/camera/core/ImageCapture;->getPreCaptureStateIfNeeded()Lcom/google/common/util/concurrent/ListenableFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/camera/core/ImageCapture$CaptureCallbackChecker$CaptureResultChecker<",
        "Landroidx/camera/core/impl/CameraCaptureResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/camera/core/ImageCapture;


# direct methods
.method constructor <init>(Landroidx/camera/core/ImageCapture;)V
    .locals 0

    .line 1088
    iput-object p1, p0, Landroidx/camera/core/ImageCapture$6;->this$0:Landroidx/camera/core/ImageCapture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public check(Landroidx/camera/core/impl/CameraCaptureResult;)Landroidx/camera/core/impl/CameraCaptureResult;
    .locals 2

    .line 1092
    sget-boolean v0, Landroidx/camera/core/ImageCapture;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 1093
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "preCaptureState, AE="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Landroidx/camera/core/impl/CameraCaptureResult;->getAeState()Landroidx/camera/core/impl/CameraCaptureMetaData$AeState;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AF ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1094
    invoke-interface {p1}, Landroidx/camera/core/impl/CameraCaptureResult;->getAfState()Landroidx/camera/core/impl/CameraCaptureMetaData$AfState;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AWB="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1095
    invoke-interface {p1}, Landroidx/camera/core/impl/CameraCaptureResult;->getAwbState()Landroidx/camera/core/impl/CameraCaptureMetaData$AwbState;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImageCapture"

    .line 1093
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-object p1
.end method

.method public bridge synthetic check(Landroidx/camera/core/impl/CameraCaptureResult;)Ljava/lang/Object;
    .locals 0

    .line 1088
    invoke-virtual {p0, p1}, Landroidx/camera/core/ImageCapture$6;->check(Landroidx/camera/core/impl/CameraCaptureResult;)Landroidx/camera/core/impl/CameraCaptureResult;

    move-result-object p1

    return-object p1
.end method
