.class public final synthetic Landroidx/camera/camera2/internal/-$$Lambda$Camera2CameraControl$SH_MDi-RNYlrIOaQQ35VpXd0Zlk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroidx/camera/camera2/internal/Camera2CameraControl;

.field public final synthetic f$1:Z

.field public final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/camera2/internal/Camera2CameraControl;ZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/camera2/internal/-$$Lambda$Camera2CameraControl$SH_MDi-RNYlrIOaQQ35VpXd0Zlk;->f$0:Landroidx/camera/camera2/internal/Camera2CameraControl;

    iput-boolean p2, p0, Landroidx/camera/camera2/internal/-$$Lambda$Camera2CameraControl$SH_MDi-RNYlrIOaQQ35VpXd0Zlk;->f$1:Z

    iput-boolean p3, p0, Landroidx/camera/camera2/internal/-$$Lambda$Camera2CameraControl$SH_MDi-RNYlrIOaQQ35VpXd0Zlk;->f$2:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Landroidx/camera/camera2/internal/-$$Lambda$Camera2CameraControl$SH_MDi-RNYlrIOaQQ35VpXd0Zlk;->f$0:Landroidx/camera/camera2/internal/Camera2CameraControl;

    iget-boolean v1, p0, Landroidx/camera/camera2/internal/-$$Lambda$Camera2CameraControl$SH_MDi-RNYlrIOaQQ35VpXd0Zlk;->f$1:Z

    iget-boolean v2, p0, Landroidx/camera/camera2/internal/-$$Lambda$Camera2CameraControl$SH_MDi-RNYlrIOaQQ35VpXd0Zlk;->f$2:Z

    invoke-virtual {v0, v1, v2}, Landroidx/camera/camera2/internal/Camera2CameraControl;->lambda$cancelAfAeTrigger$5$Camera2CameraControl(ZZ)V

    return-void
.end method
