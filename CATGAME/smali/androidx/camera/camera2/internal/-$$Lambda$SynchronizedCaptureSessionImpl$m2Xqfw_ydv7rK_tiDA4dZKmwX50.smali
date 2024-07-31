.class public final synthetic Landroidx/camera/camera2/internal/-$$Lambda$SynchronizedCaptureSessionImpl$m2Xqfw_ydv7rK_tiDA4dZKmwX50;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/camera/core/impl/utils/futures/AsyncFunction;


# instance fields
.field public final synthetic f$0:Landroidx/camera/camera2/internal/SynchronizedCaptureSessionImpl;

.field public final synthetic f$1:Landroid/hardware/camera2/CameraDevice;

.field public final synthetic f$2:Landroidx/camera/camera2/internal/compat/params/SessionConfigurationCompat;


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/camera2/internal/SynchronizedCaptureSessionImpl;Landroid/hardware/camera2/CameraDevice;Landroidx/camera/camera2/internal/compat/params/SessionConfigurationCompat;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/camera2/internal/-$$Lambda$SynchronizedCaptureSessionImpl$m2Xqfw_ydv7rK_tiDA4dZKmwX50;->f$0:Landroidx/camera/camera2/internal/SynchronizedCaptureSessionImpl;

    iput-object p2, p0, Landroidx/camera/camera2/internal/-$$Lambda$SynchronizedCaptureSessionImpl$m2Xqfw_ydv7rK_tiDA4dZKmwX50;->f$1:Landroid/hardware/camera2/CameraDevice;

    iput-object p3, p0, Landroidx/camera/camera2/internal/-$$Lambda$SynchronizedCaptureSessionImpl$m2Xqfw_ydv7rK_tiDA4dZKmwX50;->f$2:Landroidx/camera/camera2/internal/compat/params/SessionConfigurationCompat;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 3

    iget-object v0, p0, Landroidx/camera/camera2/internal/-$$Lambda$SynchronizedCaptureSessionImpl$m2Xqfw_ydv7rK_tiDA4dZKmwX50;->f$0:Landroidx/camera/camera2/internal/SynchronizedCaptureSessionImpl;

    iget-object v1, p0, Landroidx/camera/camera2/internal/-$$Lambda$SynchronizedCaptureSessionImpl$m2Xqfw_ydv7rK_tiDA4dZKmwX50;->f$1:Landroid/hardware/camera2/CameraDevice;

    iget-object v2, p0, Landroidx/camera/camera2/internal/-$$Lambda$SynchronizedCaptureSessionImpl$m2Xqfw_ydv7rK_tiDA4dZKmwX50;->f$2:Landroidx/camera/camera2/internal/compat/params/SessionConfigurationCompat;

    check-cast p1, Ljava/util/List;

    invoke-virtual {v0, v1, v2, p1}, Landroidx/camera/camera2/internal/SynchronizedCaptureSessionImpl;->lambda$openCaptureSession$2$SynchronizedCaptureSessionImpl(Landroid/hardware/camera2/CameraDevice;Landroidx/camera/camera2/internal/compat/params/SessionConfigurationCompat;Ljava/util/List;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method
