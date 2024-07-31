.class public final synthetic Landroidx/camera/core/-$$Lambda$ImageCapture$Yn9me8_Get6e1Qr4IQRhjwwSXbs;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/concurrent/futures/CallbackToFutureAdapter$Resolver;


# instance fields
.field public final synthetic f$0:Landroidx/camera/core/ImageCapture;

.field public final synthetic f$1:Landroidx/camera/core/ImageCapture$ImageCaptureRequest;


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/core/ImageCapture;Landroidx/camera/core/ImageCapture$ImageCaptureRequest;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/core/-$$Lambda$ImageCapture$Yn9me8_Get6e1Qr4IQRhjwwSXbs;->f$0:Landroidx/camera/core/ImageCapture;

    iput-object p2, p0, Landroidx/camera/core/-$$Lambda$ImageCapture$Yn9me8_Get6e1Qr4IQRhjwwSXbs;->f$1:Landroidx/camera/core/ImageCapture$ImageCaptureRequest;

    return-void
.end method


# virtual methods
.method public final attachCompleter(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Landroidx/camera/core/-$$Lambda$ImageCapture$Yn9me8_Get6e1Qr4IQRhjwwSXbs;->f$0:Landroidx/camera/core/ImageCapture;

    iget-object v1, p0, Landroidx/camera/core/-$$Lambda$ImageCapture$Yn9me8_Get6e1Qr4IQRhjwwSXbs;->f$1:Landroidx/camera/core/ImageCapture$ImageCaptureRequest;

    invoke-virtual {v0, v1, p1}, Landroidx/camera/core/ImageCapture;->lambda$takePictureInternal$9$ImageCapture(Landroidx/camera/core/ImageCapture$ImageCaptureRequest;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
