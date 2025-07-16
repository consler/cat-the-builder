.class Landroidx/camera/camera2/internal/Camera2CameraImpl$StateCallback$ScheduledReopen;
.super Ljava/lang/Object;
.source "Camera2CameraImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/camera2/internal/Camera2CameraImpl$StateCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ScheduledReopen"
.end annotation


# instance fields
.field private mCancelled:Z

.field private mExecutor:Ljava/util/concurrent/Executor;

.field final synthetic this$1:Landroidx/camera/camera2/internal/Camera2CameraImpl$StateCallback;


# direct methods
.method constructor <init>(Landroidx/camera/camera2/internal/Camera2CameraImpl$StateCallback;Ljava/util/concurrent/Executor;)V
    .locals 0

    .line 1444
    iput-object p1, p0, Landroidx/camera/camera2/internal/Camera2CameraImpl$StateCallback$ScheduledReopen;->this$1:Landroidx/camera/camera2/internal/Camera2CameraImpl$StateCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 1442
    iput-boolean p1, p0, Landroidx/camera/camera2/internal/Camera2CameraImpl$StateCallback$ScheduledReopen;->mCancelled:Z

    .line 1445
    iput-object p2, p0, Landroidx/camera/camera2/internal/Camera2CameraImpl$StateCallback$ScheduledReopen;->mExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method cancel()V
    .locals 1

    const/4 v0, 0x1

    .line 1449
    iput-boolean v0, p0, Landroidx/camera/camera2/internal/Camera2CameraImpl$StateCallback$ScheduledReopen;->mCancelled:Z

    return-void
.end method

.method synthetic lambda$run$0$androidx-camera-camera2-internal-Camera2CameraImpl$StateCallback$ScheduledReopen()V
    .locals 2

    .line 1457
    iget-boolean v0, p0, Landroidx/camera/camera2/internal/Camera2CameraImpl$StateCallback$ScheduledReopen;->mCancelled:Z

    if-nez v0, :cond_1

    .line 1458
    iget-object v0, p0, Landroidx/camera/camera2/internal/Camera2CameraImpl$StateCallback$ScheduledReopen;->this$1:Landroidx/camera/camera2/internal/Camera2CameraImpl$StateCallback;

    iget-object v0, v0, Landroidx/camera/camera2/internal/Camera2CameraImpl$StateCallback;->this$0:Landroidx/camera/camera2/internal/Camera2CameraImpl;

    iget-object v0, v0, Landroidx/camera/camera2/internal/Camera2CameraImpl;->mState:Landroidx/camera/camera2/internal/Camera2CameraImpl$InternalState;

    sget-object v1, Landroidx/camera/camera2/internal/Camera2CameraImpl$InternalState;->REOPENING:Landroidx/camera/camera2/internal/Camera2CameraImpl$InternalState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Landroidx/core/util/Preconditions;->checkState(Z)V

    .line 1459
    iget-object v0, p0, Landroidx/camera/camera2/internal/Camera2CameraImpl$StateCallback$ScheduledReopen;->this$1:Landroidx/camera/camera2/internal/Camera2CameraImpl$StateCallback;

    iget-object v0, v0, Landroidx/camera/camera2/internal/Camera2CameraImpl$StateCallback;->this$0:Landroidx/camera/camera2/internal/Camera2CameraImpl;

    invoke-virtual {v0}, Landroidx/camera/camera2/internal/Camera2CameraImpl;->openCameraDevice()V

    :cond_1
    return-void
.end method

.method public run()V
    .locals 2

    .line 1454
    iget-object v0, p0, Landroidx/camera/camera2/internal/Camera2CameraImpl$StateCallback$ScheduledReopen;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroidx/camera/camera2/internal/Camera2CameraImpl$StateCallback$ScheduledReopen$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Landroidx/camera/camera2/internal/Camera2CameraImpl$StateCallback$ScheduledReopen$$ExternalSyntheticLambda0;-><init>(Landroidx/camera/camera2/internal/Camera2CameraImpl$StateCallback$ScheduledReopen;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
