.class Landroidx/camera/core/VideoCapture$1;
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

.field final synthetic val$postListener:Landroidx/camera/core/VideoCapture$OnVideoSavedCallback;


# direct methods
.method constructor <init>(Landroidx/camera/core/VideoCapture;Landroidx/camera/core/VideoCapture$OnVideoSavedCallback;)V
    .locals 0
    .param p1, "this$0"    # Landroidx/camera/core/VideoCapture;

    .line 381
    iput-object p1, p0, Landroidx/camera/core/VideoCapture$1;->this$0:Landroidx/camera/core/VideoCapture;

    iput-object p2, p0, Landroidx/camera/core/VideoCapture$1;->val$postListener:Landroidx/camera/core/VideoCapture$OnVideoSavedCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 384
    iget-object v0, p0, Landroidx/camera/core/VideoCapture$1;->this$0:Landroidx/camera/core/VideoCapture;

    iget-object v1, p0, Landroidx/camera/core/VideoCapture$1;->val$postListener:Landroidx/camera/core/VideoCapture$OnVideoSavedCallback;

    invoke-virtual {v0, v1}, Landroidx/camera/core/VideoCapture;->audioEncode(Landroidx/camera/core/VideoCapture$OnVideoSavedCallback;)Z

    .line 385
    return-void
.end method
