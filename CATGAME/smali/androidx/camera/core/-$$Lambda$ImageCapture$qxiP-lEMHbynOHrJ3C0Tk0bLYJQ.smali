.class public final synthetic Landroidx/camera/core/-$$Lambda$ImageCapture$qxiP-lEMHbynOHrJ3C0Tk0bLYJQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/camera/core/impl/utils/futures/AsyncFunction;


# instance fields
.field public final synthetic f$0:Landroidx/camera/core/ImageCapture;

.field public final synthetic f$1:Landroidx/camera/core/ImageCapture$TakePictureState;


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/core/ImageCapture;Landroidx/camera/core/ImageCapture$TakePictureState;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/core/-$$Lambda$ImageCapture$qxiP-lEMHbynOHrJ3C0Tk0bLYJQ;->f$0:Landroidx/camera/core/ImageCapture;

    iput-object p2, p0, Landroidx/camera/core/-$$Lambda$ImageCapture$qxiP-lEMHbynOHrJ3C0Tk0bLYJQ;->f$1:Landroidx/camera/core/ImageCapture$TakePictureState;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2

    iget-object v0, p0, Landroidx/camera/core/-$$Lambda$ImageCapture$qxiP-lEMHbynOHrJ3C0Tk0bLYJQ;->f$0:Landroidx/camera/core/ImageCapture;

    iget-object v1, p0, Landroidx/camera/core/-$$Lambda$ImageCapture$qxiP-lEMHbynOHrJ3C0Tk0bLYJQ;->f$1:Landroidx/camera/core/ImageCapture$TakePictureState;

    check-cast p1, Landroidx/camera/core/impl/CameraCaptureResult;

    invoke-virtual {v0, v1, p1}, Landroidx/camera/core/ImageCapture;->lambda$preTakePicture$11$ImageCapture(Landroidx/camera/core/ImageCapture$TakePictureState;Landroidx/camera/core/impl/CameraCaptureResult;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method
