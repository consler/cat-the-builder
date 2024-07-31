.class Landroidx/camera/core/ImageCapture$4;
.super Landroidx/camera/core/ImageCapture$OnImageCapturedCallback;
.source "ImageCapture.java"


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

.field final synthetic val$executor:Ljava/util/concurrent/Executor;

.field final synthetic val$imageSavedCallback:Landroidx/camera/core/ImageCapture$OnImageSavedCallback;

.field final synthetic val$imageSavedCallbackWrapper:Landroidx/camera/core/ImageSaver$OnImageSavedCallback;

.field final synthetic val$outputFileOptions:Landroidx/camera/core/ImageCapture$OutputFileOptions;


# direct methods
.method constructor <init>(Landroidx/camera/core/ImageCapture;Landroidx/camera/core/ImageCapture$OutputFileOptions;Ljava/util/concurrent/Executor;Landroidx/camera/core/ImageSaver$OnImageSavedCallback;Landroidx/camera/core/ImageCapture$OnImageSavedCallback;)V
    .locals 0
    .param p1, "this$0"    # Landroidx/camera/core/ImageCapture;

    .line 685
    iput-object p1, p0, Landroidx/camera/core/ImageCapture$4;->this$0:Landroidx/camera/core/ImageCapture;

    iput-object p2, p0, Landroidx/camera/core/ImageCapture$4;->val$outputFileOptions:Landroidx/camera/core/ImageCapture$OutputFileOptions;

    iput-object p3, p0, Landroidx/camera/core/ImageCapture$4;->val$executor:Ljava/util/concurrent/Executor;

    iput-object p4, p0, Landroidx/camera/core/ImageCapture$4;->val$imageSavedCallbackWrapper:Landroidx/camera/core/ImageSaver$OnImageSavedCallback;

    iput-object p5, p0, Landroidx/camera/core/ImageCapture$4;->val$imageSavedCallback:Landroidx/camera/core/ImageCapture$OnImageSavedCallback;

    invoke-direct {p0}, Landroidx/camera/core/ImageCapture$OnImageCapturedCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onCaptureSuccess(Landroidx/camera/core/ImageProxy;)V
    .locals 8
    .param p1, "image"    # Landroidx/camera/core/ImageProxy;

    .line 688
    iget-object v0, p0, Landroidx/camera/core/ImageCapture$4;->this$0:Landroidx/camera/core/ImageCapture;

    iget-object v0, v0, Landroidx/camera/core/ImageCapture;->mIoExecutor:Ljava/util/concurrent/Executor;

    new-instance v7, Landroidx/camera/core/ImageSaver;

    iget-object v3, p0, Landroidx/camera/core/ImageCapture$4;->val$outputFileOptions:Landroidx/camera/core/ImageCapture$OutputFileOptions;

    .line 692
    invoke-interface {p1}, Landroidx/camera/core/ImageProxy;->getImageInfo()Landroidx/camera/core/ImageInfo;

    move-result-object v1

    invoke-interface {v1}, Landroidx/camera/core/ImageInfo;->getRotationDegrees()I

    move-result v4

    iget-object v5, p0, Landroidx/camera/core/ImageCapture$4;->val$executor:Ljava/util/concurrent/Executor;

    iget-object v6, p0, Landroidx/camera/core/ImageCapture$4;->val$imageSavedCallbackWrapper:Landroidx/camera/core/ImageSaver$OnImageSavedCallback;

    move-object v1, v7

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Landroidx/camera/core/ImageSaver;-><init>(Landroidx/camera/core/ImageProxy;Landroidx/camera/core/ImageCapture$OutputFileOptions;ILjava/util/concurrent/Executor;Landroidx/camera/core/ImageSaver$OnImageSavedCallback;)V

    .line 688
    invoke-interface {v0, v7}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 695
    return-void
.end method

.method public onError(Landroidx/camera/core/ImageCaptureException;)V
    .locals 1
    .param p1, "exception"    # Landroidx/camera/core/ImageCaptureException;

    .line 699
    iget-object v0, p0, Landroidx/camera/core/ImageCapture$4;->val$imageSavedCallback:Landroidx/camera/core/ImageCapture$OnImageSavedCallback;

    invoke-interface {v0, p1}, Landroidx/camera/core/ImageCapture$OnImageSavedCallback;->onError(Landroidx/camera/core/ImageCaptureException;)V

    .line 700
    return-void
.end method
