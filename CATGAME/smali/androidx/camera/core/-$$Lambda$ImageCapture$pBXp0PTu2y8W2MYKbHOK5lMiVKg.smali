.class public final synthetic Landroidx/camera/core/-$$Lambda$ImageCapture$pBXp0PTu2y8W2MYKbHOK5lMiVKg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroidx/camera/core/ImageCapture;

.field public final synthetic f$1:Landroidx/camera/core/ImageCapture$OnImageCapturedCallback;


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/core/ImageCapture;Landroidx/camera/core/ImageCapture$OnImageCapturedCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/core/-$$Lambda$ImageCapture$pBXp0PTu2y8W2MYKbHOK5lMiVKg;->f$0:Landroidx/camera/core/ImageCapture;

    iput-object p2, p0, Landroidx/camera/core/-$$Lambda$ImageCapture$pBXp0PTu2y8W2MYKbHOK5lMiVKg;->f$1:Landroidx/camera/core/ImageCapture$OnImageCapturedCallback;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Landroidx/camera/core/-$$Lambda$ImageCapture$pBXp0PTu2y8W2MYKbHOK5lMiVKg;->f$0:Landroidx/camera/core/ImageCapture;

    iget-object v1, p0, Landroidx/camera/core/-$$Lambda$ImageCapture$pBXp0PTu2y8W2MYKbHOK5lMiVKg;->f$1:Landroidx/camera/core/ImageCapture$OnImageCapturedCallback;

    invoke-virtual {v0, v1}, Landroidx/camera/core/ImageCapture;->lambda$sendImageCaptureRequest$5$ImageCapture(Landroidx/camera/core/ImageCapture$OnImageCapturedCallback;)V

    return-void
.end method
