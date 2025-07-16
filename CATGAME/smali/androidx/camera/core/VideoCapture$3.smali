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

    .line 524
    iput-object p1, p0, Landroidx/camera/core/VideoCapture$3;->this$0:Landroidx/camera/core/VideoCapture;

    iput-object p2, p0, Landroidx/camera/core/VideoCapture$3;->val$cameraId:Ljava/lang/String;

    iput-object p3, p0, Landroidx/camera/core/VideoCapture$3;->val$resolution:Landroid/util/Size;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroidx/camera/core/impl/SessionConfig;Landroidx/camera/core/impl/SessionConfig$SessionError;)V
    .locals 1

    .line 531
    iget-object p1, p0, Landroidx/camera/core/VideoCapture$3;->this$0:Landroidx/camera/core/VideoCapture;

    iget-object p2, p0, Landroidx/camera/core/VideoCapture$3;->val$cameraId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroidx/camera/core/VideoCapture;->isCurrentCamera(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 533
    iget-object p1, p0, Landroidx/camera/core/VideoCapture$3;->this$0:Landroidx/camera/core/VideoCapture;

    iget-object p2, p0, Landroidx/camera/core/VideoCapture$3;->val$cameraId:Ljava/lang/String;

    iget-object v0, p0, Landroidx/camera/core/VideoCapture$3;->val$resolution:Landroid/util/Size;

    invoke-virtual {p1, p2, v0}, Landroidx/camera/core/VideoCapture;->setupEncoder(Ljava/lang/String;Landroid/util/Size;)V

    :cond_0
    return-void
.end method
