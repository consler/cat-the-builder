.class public final synthetic Landroidx/camera/core/-$$Lambda$ImageCapture$Q2natJasV8R7bZpCzT-XPmy4R_4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/camera/core/impl/utils/futures/AsyncFunction;


# instance fields
.field public final synthetic f$0:Landroidx/camera/core/ImageCapture;

.field public final synthetic f$1:Landroidx/camera/core/ImageCapture$ImageCaptureRequest;


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/core/ImageCapture;Landroidx/camera/core/ImageCapture$ImageCaptureRequest;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/core/-$$Lambda$ImageCapture$Q2natJasV8R7bZpCzT-XPmy4R_4;->f$0:Landroidx/camera/core/ImageCapture;

    iput-object p2, p0, Landroidx/camera/core/-$$Lambda$ImageCapture$Q2natJasV8R7bZpCzT-XPmy4R_4;->f$1:Landroidx/camera/core/ImageCapture$ImageCaptureRequest;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2

    iget-object v0, p0, Landroidx/camera/core/-$$Lambda$ImageCapture$Q2natJasV8R7bZpCzT-XPmy4R_4;->f$0:Landroidx/camera/core/ImageCapture;

    iget-object v1, p0, Landroidx/camera/core/-$$Lambda$ImageCapture$Q2natJasV8R7bZpCzT-XPmy4R_4;->f$1:Landroidx/camera/core/ImageCapture$ImageCaptureRequest;

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {v0, v1, p1}, Landroidx/camera/core/ImageCapture;->lambda$takePictureInternal$7$ImageCapture(Landroidx/camera/core/ImageCapture$ImageCaptureRequest;Ljava/lang/Void;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method
