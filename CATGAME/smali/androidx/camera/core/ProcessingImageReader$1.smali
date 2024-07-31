.class Landroidx/camera/core/ProcessingImageReader$1;
.super Ljava/lang/Object;
.source "ProcessingImageReader.java"

# interfaces
.implements Landroidx/camera/core/impl/ImageReaderProxy$OnImageAvailableListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/core/ProcessingImageReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/camera/core/ProcessingImageReader;


# direct methods
.method constructor <init>(Landroidx/camera/core/ProcessingImageReader;)V
    .locals 0
    .param p1, "this$0"    # Landroidx/camera/core/ProcessingImageReader;

    .line 59
    iput-object p1, p0, Landroidx/camera/core/ProcessingImageReader$1;->this$0:Landroidx/camera/core/ProcessingImageReader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onImageAvailable(Landroidx/camera/core/impl/ImageReaderProxy;)V
    .locals 1
    .param p1, "reader"    # Landroidx/camera/core/impl/ImageReaderProxy;

    .line 62
    iget-object v0, p0, Landroidx/camera/core/ProcessingImageReader$1;->this$0:Landroidx/camera/core/ProcessingImageReader;

    invoke-virtual {v0, p1}, Landroidx/camera/core/ProcessingImageReader;->imageIncoming(Landroidx/camera/core/impl/ImageReaderProxy;)V

    .line 63
    return-void
.end method
