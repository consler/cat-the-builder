.class public final synthetic Landroidx/camera/core/-$$Lambda$ImageCapture$vo2FN-NBh2zJowDghO6l4OnBl-M;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/camera/core/impl/SessionConfig$ErrorListener;


# instance fields
.field public final synthetic f$0:Landroidx/camera/core/ImageCapture;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Landroidx/camera/core/impl/ImageCaptureConfig;

.field public final synthetic f$3:Landroid/util/Size;


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/core/ImageCapture;Ljava/lang/String;Landroidx/camera/core/impl/ImageCaptureConfig;Landroid/util/Size;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/core/-$$Lambda$ImageCapture$vo2FN-NBh2zJowDghO6l4OnBl-M;->f$0:Landroidx/camera/core/ImageCapture;

    iput-object p2, p0, Landroidx/camera/core/-$$Lambda$ImageCapture$vo2FN-NBh2zJowDghO6l4OnBl-M;->f$1:Ljava/lang/String;

    iput-object p3, p0, Landroidx/camera/core/-$$Lambda$ImageCapture$vo2FN-NBh2zJowDghO6l4OnBl-M;->f$2:Landroidx/camera/core/impl/ImageCaptureConfig;

    iput-object p4, p0, Landroidx/camera/core/-$$Lambda$ImageCapture$vo2FN-NBh2zJowDghO6l4OnBl-M;->f$3:Landroid/util/Size;

    return-void
.end method


# virtual methods
.method public final onError(Landroidx/camera/core/impl/SessionConfig;Landroidx/camera/core/impl/SessionConfig$SessionError;)V
    .locals 6

    iget-object v0, p0, Landroidx/camera/core/-$$Lambda$ImageCapture$vo2FN-NBh2zJowDghO6l4OnBl-M;->f$0:Landroidx/camera/core/ImageCapture;

    iget-object v1, p0, Landroidx/camera/core/-$$Lambda$ImageCapture$vo2FN-NBh2zJowDghO6l4OnBl-M;->f$1:Ljava/lang/String;

    iget-object v2, p0, Landroidx/camera/core/-$$Lambda$ImageCapture$vo2FN-NBh2zJowDghO6l4OnBl-M;->f$2:Landroidx/camera/core/impl/ImageCaptureConfig;

    iget-object v3, p0, Landroidx/camera/core/-$$Lambda$ImageCapture$vo2FN-NBh2zJowDghO6l4OnBl-M;->f$3:Landroid/util/Size;

    move-object v4, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Landroidx/camera/core/ImageCapture;->lambda$createPipeline$2$ImageCapture(Ljava/lang/String;Landroidx/camera/core/impl/ImageCaptureConfig;Landroid/util/Size;Landroidx/camera/core/impl/SessionConfig;Landroidx/camera/core/impl/SessionConfig$SessionError;)V

    return-void
.end method
