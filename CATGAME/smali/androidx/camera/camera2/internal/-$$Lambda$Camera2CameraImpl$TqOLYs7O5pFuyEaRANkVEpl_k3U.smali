.class public final synthetic Landroidx/camera/camera2/internal/-$$Lambda$Camera2CameraImpl$TqOLYs7O5pFuyEaRANkVEpl_k3U;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroidx/camera/camera2/internal/Camera2CameraImpl;

.field public final synthetic f$1:Landroidx/camera/core/UseCase;


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/camera2/internal/Camera2CameraImpl;Landroidx/camera/core/UseCase;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/camera2/internal/-$$Lambda$Camera2CameraImpl$TqOLYs7O5pFuyEaRANkVEpl_k3U;->f$0:Landroidx/camera/camera2/internal/Camera2CameraImpl;

    iput-object p2, p0, Landroidx/camera/camera2/internal/-$$Lambda$Camera2CameraImpl$TqOLYs7O5pFuyEaRANkVEpl_k3U;->f$1:Landroidx/camera/core/UseCase;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Landroidx/camera/camera2/internal/-$$Lambda$Camera2CameraImpl$TqOLYs7O5pFuyEaRANkVEpl_k3U;->f$0:Landroidx/camera/camera2/internal/Camera2CameraImpl;

    iget-object v1, p0, Landroidx/camera/camera2/internal/-$$Lambda$Camera2CameraImpl$TqOLYs7O5pFuyEaRANkVEpl_k3U;->f$1:Landroidx/camera/core/UseCase;

    invoke-virtual {v0, v1}, Landroidx/camera/camera2/internal/Camera2CameraImpl;->lambda$onUseCaseActive$5$Camera2CameraImpl(Landroidx/camera/core/UseCase;)V

    return-void
.end method
