.class Landroidx/camera/core/ImageCapture$3;
.super Ljava/lang/Object;
.source "ImageCapture.java"

# interfaces
.implements Landroidx/camera/core/ImageSaver$OnImageSavedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/camera/core/ImageCapture;->takePicture(Landroidx/camera/core/ImageCapture$OutputFileOptions;Ljava/util/concurrent/Executor;Landroidx/camera/core/ImageCapture$OnImageSavedCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/camera/core/ImageCapture;

.field final synthetic val$imageSavedCallback:Landroidx/camera/core/ImageCapture$OnImageSavedCallback;


# direct methods
.method constructor <init>(Landroidx/camera/core/ImageCapture;Landroidx/camera/core/ImageCapture$OnImageSavedCallback;)V
    .locals 0
    .param p1, "this$0"    # Landroidx/camera/core/ImageCapture;

    .line 658
    iput-object p1, p0, Landroidx/camera/core/ImageCapture$3;->this$0:Landroidx/camera/core/ImageCapture;

    iput-object p2, p0, Landroidx/camera/core/ImageCapture$3;->val$imageSavedCallback:Landroidx/camera/core/ImageCapture$OnImageSavedCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroidx/camera/core/ImageSaver$SaveError;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "error"    # Landroidx/camera/core/ImageSaver$SaveError;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "cause"    # Ljava/lang/Throwable;

    .line 667
    const/4 v0, 0x0

    .line 668
    .local v0, "imageCaptureError":I
    sget-object v1, Landroidx/camera/core/ImageCapture$9;->$SwitchMap$androidx$camera$core$ImageSaver$SaveError:[I

    invoke-virtual {p1}, Landroidx/camera/core/ImageSaver$SaveError;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    goto :goto_0

    .line 670
    :cond_0
    const/4 v0, 0x1

    .line 671
    nop

    .line 677
    :goto_0
    iget-object v1, p0, Landroidx/camera/core/ImageCapture$3;->val$imageSavedCallback:Landroidx/camera/core/ImageCapture$OnImageSavedCallback;

    new-instance v2, Landroidx/camera/core/ImageCaptureException;

    invoke-direct {v2, v0, p2, p3}, Landroidx/camera/core/ImageCaptureException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {v1, v2}, Landroidx/camera/core/ImageCapture$OnImageSavedCallback;->onError(Landroidx/camera/core/ImageCaptureException;)V

    .line 679
    return-void
.end method

.method public onImageSaved(Landroidx/camera/core/ImageCapture$OutputFileResults;)V
    .locals 1
    .param p1, "outputFileResults"    # Landroidx/camera/core/ImageCapture$OutputFileResults;

    .line 661
    iget-object v0, p0, Landroidx/camera/core/ImageCapture$3;->val$imageSavedCallback:Landroidx/camera/core/ImageCapture$OnImageSavedCallback;

    invoke-interface {v0, p1}, Landroidx/camera/core/ImageCapture$OnImageSavedCallback;->onImageSaved(Landroidx/camera/core/ImageCapture$OutputFileResults;)V

    .line 662
    return-void
.end method
