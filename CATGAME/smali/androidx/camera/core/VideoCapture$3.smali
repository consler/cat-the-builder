.class Landroidx/camera/core/VideoCapture$3;
.super Ljava/lang/Object;
.source "VideoCapture.java"

# interfaces
.implements Landroidx/camera/core/impl/SessionConfig$ErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/camera/core/VideoCapture;->setupEncoder(Ljava/lang/String;Landroid/util/Size;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/camera/core/VideoCapture;

.field final synthetic val$cameraId:Ljava/lang/String;

.field final synthetic val$resolution:Landroid/util/Size;


# direct methods
.method constructor <init>(Landroidx/camera/core/VideoCapture;Ljava/lang/String;Landroid/util/Size;)V
    .locals 0
    .param p1, "this$0"    # Landroidx/camera/core/VideoCapture;

    .line 524
    iput-object p1, p0, Landroidx/camera/core/VideoCapture$3;->this$0:Landroidx/camera/core/VideoCapture;

    iput-object p2, p0, Landroidx/camera/core/VideoCapture$3;->val$cameraId:Ljava/lang/String;

    iput-object p3, p0, Landroidx/camera/core/VideoCapture$3;->val$resolution:Landroid/util/Size;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroidx/camera/core/impl/SessionConfig;Landroidx/camera/core/impl/SessionConfig$SessionError;)V
    .locals 3
    .param p1, "sessionConfig"    # Landroidx/camera/core/impl/SessionConfig;
    .param p2, "error"    # Landroidx/camera/core/impl/SessionConfig$SessionError;

    .line 531
    iget-object v0, p0, Landroidx/camera/core/VideoCapture$3;->this$0:Landroidx/camera/core/VideoCapture;

    iget-object v1, p0, Landroidx/camera/core/VideoCapture$3;->val$cameraId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroidx/camera/core/VideoCapture;->isCurrentCamera(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 533
    iget-object v0, p0, Landroidx/camera/core/VideoCapture$3;->this$0:Landroidx/camera/core/VideoCapture;

    iget-object v1, p0, Landroidx/camera/core/VideoCapture$3;->val$cameraId:Ljava/lang/String;

    iget-object v2, p0, Landroidx/camera/core/VideoCapture$3;->val$resolution:Landroid/util/Size;

    invoke-virtual {v0, v1, v2}, Landroidx/camera/core/VideoCapture;->setupEncoder(Ljava/lang/String;Landroid/util/Size;)V

    .line 535
    :cond_0
    return-void
.end method
