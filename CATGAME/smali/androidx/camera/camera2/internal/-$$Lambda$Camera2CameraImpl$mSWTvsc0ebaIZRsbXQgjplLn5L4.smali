.class public final synthetic Landroidx/camera/camera2/internal/-$$Lambda$Camera2CameraImpl$mSWTvsc0ebaIZRsbXQgjplLn5L4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroidx/camera/camera2/internal/Camera2CameraImpl;

.field public final synthetic f$1:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

.field public final synthetic f$2:Landroidx/camera/core/UseCase;


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/camera2/internal/Camera2CameraImpl;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;Landroidx/camera/core/UseCase;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/camera2/internal/-$$Lambda$Camera2CameraImpl$mSWTvsc0ebaIZRsbXQgjplLn5L4;->f$0:Landroidx/camera/camera2/internal/Camera2CameraImpl;

    iput-object p2, p0, Landroidx/camera/camera2/internal/-$$Lambda$Camera2CameraImpl$mSWTvsc0ebaIZRsbXQgjplLn5L4;->f$1:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    iput-object p3, p0, Landroidx/camera/camera2/internal/-$$Lambda$Camera2CameraImpl$mSWTvsc0ebaIZRsbXQgjplLn5L4;->f$2:Landroidx/camera/core/UseCase;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Landroidx/camera/camera2/internal/-$$Lambda$Camera2CameraImpl$mSWTvsc0ebaIZRsbXQgjplLn5L4;->f$0:Landroidx/camera/camera2/internal/Camera2CameraImpl;

    iget-object v1, p0, Landroidx/camera/camera2/internal/-$$Lambda$Camera2CameraImpl$mSWTvsc0ebaIZRsbXQgjplLn5L4;->f$1:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    iget-object v2, p0, Landroidx/camera/camera2/internal/-$$Lambda$Camera2CameraImpl$mSWTvsc0ebaIZRsbXQgjplLn5L4;->f$2:Landroidx/camera/core/UseCase;

    invoke-virtual {v0, v1, v2}, Landroidx/camera/camera2/internal/Camera2CameraImpl;->lambda$isUseCaseAttached$9$Camera2CameraImpl(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;Landroidx/camera/core/UseCase;)V

    return-void
.end method
