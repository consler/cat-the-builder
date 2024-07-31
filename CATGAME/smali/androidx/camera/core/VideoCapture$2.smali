.class Landroidx/camera/core/VideoCapture$2;
.super Ljava/lang/Object;
.source "VideoCapture.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/camera/core/VideoCapture;->startRecording(Ljava/io/File;Landroidx/camera/core/VideoCapture$Metadata;Ljava/util/concurrent/Executor;Landroidx/camera/core/VideoCapture$OnVideoSavedCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/camera/core/VideoCapture;

.field final synthetic val$cameraId:Ljava/lang/String;

.field final synthetic val$postListener:Landroidx/camera/core/VideoCapture$OnVideoSavedCallback;

.field final synthetic val$resolution:Landroid/util/Size;

.field final synthetic val$saveLocation:Ljava/io/File;


# direct methods
.method constructor <init>(Landroidx/camera/core/VideoCapture;Landroidx/camera/core/VideoCapture$OnVideoSavedCallback;Ljava/lang/String;Landroid/util/Size;Ljava/io/File;)V
    .locals 0
    .param p1, "this$0"    # Landroidx/camera/core/VideoCapture;

    .line 389
    iput-object p1, p0, Landroidx/camera/core/VideoCapture$2;->this$0:Landroidx/camera/core/VideoCapture;

    iput-object p2, p0, Landroidx/camera/core/VideoCapture$2;->val$postListener:Landroidx/camera/core/VideoCapture$OnVideoSavedCallback;

    iput-object p3, p0, Landroidx/camera/core/VideoCapture$2;->val$cameraId:Ljava/lang/String;

    iput-object p4, p0, Landroidx/camera/core/VideoCapture$2;->val$resolution:Landroid/util/Size;

    iput-object p5, p0, Landroidx/camera/core/VideoCapture$2;->val$saveLocation:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 392
    iget-object v0, p0, Landroidx/camera/core/VideoCapture$2;->this$0:Landroidx/camera/core/VideoCapture;

    iget-object v1, p0, Landroidx/camera/core/VideoCapture$2;->val$postListener:Landroidx/camera/core/VideoCapture$OnVideoSavedCallback;

    iget-object v2, p0, Landroidx/camera/core/VideoCapture$2;->val$cameraId:Ljava/lang/String;

    iget-object v3, p0, Landroidx/camera/core/VideoCapture$2;->val$resolution:Landroid/util/Size;

    invoke-virtual {v0, v1, v2, v3}, Landroidx/camera/core/VideoCapture;->videoEncode(Landroidx/camera/core/VideoCapture$OnVideoSavedCallback;Ljava/lang/String;Landroid/util/Size;)Z

    move-result v0

    .line 394
    .local v0, "errorOccurred":Z
    if-nez v0, :cond_0

    .line 395
    iget-object v1, p0, Landroidx/camera/core/VideoCapture$2;->val$postListener:Landroidx/camera/core/VideoCapture$OnVideoSavedCallback;

    iget-object v2, p0, Landroidx/camera/core/VideoCapture$2;->val$saveLocation:Ljava/io/File;

    invoke-interface {v1, v2}, Landroidx/camera/core/VideoCapture$OnVideoSavedCallback;->onVideoSaved(Ljava/io/File;)V

    .line 397
    :cond_0
    return-void
.end method
