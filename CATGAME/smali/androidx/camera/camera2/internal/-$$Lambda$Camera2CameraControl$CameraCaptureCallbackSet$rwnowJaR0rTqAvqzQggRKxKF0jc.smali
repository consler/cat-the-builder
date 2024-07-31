.class public final synthetic Landroidx/camera/camera2/internal/-$$Lambda$Camera2CameraControl$CameraCaptureCallbackSet$rwnowJaR0rTqAvqzQggRKxKF0jc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroidx/camera/core/impl/CameraCaptureCallback;


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/core/impl/CameraCaptureCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/camera2/internal/-$$Lambda$Camera2CameraControl$CameraCaptureCallbackSet$rwnowJaR0rTqAvqzQggRKxKF0jc;->f$0:Landroidx/camera/core/impl/CameraCaptureCallback;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Landroidx/camera/camera2/internal/-$$Lambda$Camera2CameraControl$CameraCaptureCallbackSet$rwnowJaR0rTqAvqzQggRKxKF0jc;->f$0:Landroidx/camera/core/impl/CameraCaptureCallback;

    invoke-static {v0}, Landroidx/camera/camera2/internal/Camera2CameraControl$CameraCaptureCallbackSet;->lambda$onCaptureCancelled$2(Landroidx/camera/core/impl/CameraCaptureCallback;)V

    return-void
.end method
