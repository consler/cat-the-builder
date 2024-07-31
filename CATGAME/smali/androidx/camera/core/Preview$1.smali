.class Landroidx/camera/core/Preview$1;
.super Landroidx/camera/core/impl/CameraCaptureCallback;
.source "Preview.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/camera/core/Preview;->createPipeline(Ljava/lang/String;Landroidx/camera/core/impl/PreviewConfig;Landroid/util/Size;)Landroidx/camera/core/impl/SessionConfig$Builder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/camera/core/Preview;

.field final synthetic val$processor:Landroidx/camera/core/impl/ImageInfoProcessor;


# direct methods
.method constructor <init>(Landroidx/camera/core/Preview;Landroidx/camera/core/impl/ImageInfoProcessor;)V
    .locals 0
    .param p1, "this$0"    # Landroidx/camera/core/Preview;

    .line 222
    iput-object p1, p0, Landroidx/camera/core/Preview$1;->this$0:Landroidx/camera/core/Preview;

    iput-object p2, p0, Landroidx/camera/core/Preview$1;->val$processor:Landroidx/camera/core/impl/ImageInfoProcessor;

    invoke-direct {p0}, Landroidx/camera/core/impl/CameraCaptureCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onCaptureCompleted(Landroidx/camera/core/impl/CameraCaptureResult;)V
    .locals 2
    .param p1, "cameraCaptureResult"    # Landroidx/camera/core/impl/CameraCaptureResult;

    .line 226
    invoke-super {p0, p1}, Landroidx/camera/core/impl/CameraCaptureCallback;->onCaptureCompleted(Landroidx/camera/core/impl/CameraCaptureResult;)V

    .line 227
    iget-object v0, p0, Landroidx/camera/core/Preview$1;->val$processor:Landroidx/camera/core/impl/ImageInfoProcessor;

    new-instance v1, Landroidx/camera/core/internal/CameraCaptureResultImageInfo;

    invoke-direct {v1, p1}, Landroidx/camera/core/internal/CameraCaptureResultImageInfo;-><init>(Landroidx/camera/core/impl/CameraCaptureResult;)V

    invoke-interface {v0, v1}, Landroidx/camera/core/impl/ImageInfoProcessor;->process(Landroidx/camera/core/ImageInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 229
    iget-object v0, p0, Landroidx/camera/core/Preview$1;->this$0:Landroidx/camera/core/Preview;

    invoke-virtual {v0}, Landroidx/camera/core/Preview;->notifyUpdated()V

    .line 231
    :cond_0
    return-void
.end method
