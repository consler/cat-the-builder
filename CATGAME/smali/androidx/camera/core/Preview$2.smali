.class Landroidx/camera/core/Preview$2;
.super Ljava/lang/Object;
.source "Preview.java"

# interfaces
.implements Landroidx/camera/core/impl/SessionConfig$ErrorListener;


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

.field final synthetic val$cameraId:Ljava/lang/String;

.field final synthetic val$config:Landroidx/camera/core/impl/PreviewConfig;

.field final synthetic val$resolution:Landroid/util/Size;


# direct methods
.method constructor <init>(Landroidx/camera/core/Preview;Ljava/lang/String;Landroidx/camera/core/impl/PreviewConfig;Landroid/util/Size;)V
    .locals 0
    .param p1, "this$0"    # Landroidx/camera/core/Preview;

    .line 237
    iput-object p1, p0, Landroidx/camera/core/Preview$2;->this$0:Landroidx/camera/core/Preview;

    iput-object p2, p0, Landroidx/camera/core/Preview$2;->val$cameraId:Ljava/lang/String;

    iput-object p3, p0, Landroidx/camera/core/Preview$2;->val$config:Landroidx/camera/core/impl/PreviewConfig;

    iput-object p4, p0, Landroidx/camera/core/Preview$2;->val$resolution:Landroid/util/Size;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroidx/camera/core/impl/SessionConfig;Landroidx/camera/core/impl/SessionConfig$SessionError;)V
    .locals 4
    .param p1, "sessionConfig"    # Landroidx/camera/core/impl/SessionConfig;
    .param p2, "error"    # Landroidx/camera/core/impl/SessionConfig$SessionError;

    .line 245
    iget-object v0, p0, Landroidx/camera/core/Preview$2;->this$0:Landroidx/camera/core/Preview;

    iget-object v1, p0, Landroidx/camera/core/Preview$2;->val$cameraId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroidx/camera/core/Preview;->isCurrentCamera(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 247
    iget-object v0, p0, Landroidx/camera/core/Preview$2;->this$0:Landroidx/camera/core/Preview;

    iget-object v1, p0, Landroidx/camera/core/Preview$2;->val$cameraId:Ljava/lang/String;

    iget-object v2, p0, Landroidx/camera/core/Preview$2;->val$config:Landroidx/camera/core/impl/PreviewConfig;

    iget-object v3, p0, Landroidx/camera/core/Preview$2;->val$resolution:Landroid/util/Size;

    invoke-virtual {v0, v1, v2, v3}, Landroidx/camera/core/Preview;->createPipeline(Ljava/lang/String;Landroidx/camera/core/impl/PreviewConfig;Landroid/util/Size;)Landroidx/camera/core/impl/SessionConfig$Builder;

    move-result-object v0

    .line 250
    .local v0, "sessionConfigBuilder":Landroidx/camera/core/impl/SessionConfig$Builder;
    iget-object v1, p0, Landroidx/camera/core/Preview$2;->this$0:Landroidx/camera/core/Preview;

    invoke-virtual {v0}, Landroidx/camera/core/impl/SessionConfig$Builder;->build()Landroidx/camera/core/impl/SessionConfig;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/camera/core/Preview;->updateSessionConfig(Landroidx/camera/core/impl/SessionConfig;)V

    .line 251
    iget-object v1, p0, Landroidx/camera/core/Preview$2;->this$0:Landroidx/camera/core/Preview;

    invoke-virtual {v1}, Landroidx/camera/core/Preview;->notifyReset()V

    .line 253
    .end local v0    # "sessionConfigBuilder":Landroidx/camera/core/impl/SessionConfig$Builder;
    :cond_0
    return-void
.end method
