.class public final synthetic Landroidx/camera/camera2/internal/-$$Lambda$Camera2CameraControl$AcQVRm560m_YEuLhBqozdwsBVNM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroidx/camera/camera2/internal/Camera2CameraControl;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/camera2/internal/Camera2CameraControl;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/camera2/internal/-$$Lambda$Camera2CameraControl$AcQVRm560m_YEuLhBqozdwsBVNM;->f$0:Landroidx/camera/camera2/internal/Camera2CameraControl;

    iput-boolean p2, p0, Landroidx/camera/camera2/internal/-$$Lambda$Camera2CameraControl$AcQVRm560m_YEuLhBqozdwsBVNM;->f$1:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Landroidx/camera/camera2/internal/-$$Lambda$Camera2CameraControl$AcQVRm560m_YEuLhBqozdwsBVNM;->f$0:Landroidx/camera/camera2/internal/Camera2CameraControl;

    iget-boolean v1, p0, Landroidx/camera/camera2/internal/-$$Lambda$Camera2CameraControl$AcQVRm560m_YEuLhBqozdwsBVNM;->f$1:Z

    invoke-virtual {v0, v1}, Landroidx/camera/camera2/internal/Camera2CameraControl;->lambda$enableTorchInternal$9$Camera2CameraControl(Z)V

    return-void
.end method
