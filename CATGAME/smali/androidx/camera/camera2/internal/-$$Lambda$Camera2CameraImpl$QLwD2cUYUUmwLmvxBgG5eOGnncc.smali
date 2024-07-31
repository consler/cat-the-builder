.class public final synthetic Landroidx/camera/camera2/internal/-$$Lambda$Camera2CameraImpl$QLwD2cUYUUmwLmvxBgG5eOGnncc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/concurrent/futures/CallbackToFutureAdapter$Resolver;


# instance fields
.field public final synthetic f$0:Landroidx/camera/camera2/internal/Camera2CameraImpl;

.field public final synthetic f$1:Landroidx/camera/core/UseCase;


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/camera2/internal/Camera2CameraImpl;Landroidx/camera/core/UseCase;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/camera2/internal/-$$Lambda$Camera2CameraImpl$QLwD2cUYUUmwLmvxBgG5eOGnncc;->f$0:Landroidx/camera/camera2/internal/Camera2CameraImpl;

    iput-object p2, p0, Landroidx/camera/camera2/internal/-$$Lambda$Camera2CameraImpl$QLwD2cUYUUmwLmvxBgG5eOGnncc;->f$1:Landroidx/camera/core/UseCase;

    return-void
.end method


# virtual methods
.method public final attachCompleter(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Landroidx/camera/camera2/internal/-$$Lambda$Camera2CameraImpl$QLwD2cUYUUmwLmvxBgG5eOGnncc;->f$0:Landroidx/camera/camera2/internal/Camera2CameraImpl;

    iget-object v1, p0, Landroidx/camera/camera2/internal/-$$Lambda$Camera2CameraImpl$QLwD2cUYUUmwLmvxBgG5eOGnncc;->f$1:Landroidx/camera/core/UseCase;

    invoke-virtual {v0, v1, p1}, Landroidx/camera/camera2/internal/Camera2CameraImpl;->lambda$isUseCaseAttached$10$Camera2CameraImpl(Landroidx/camera/core/UseCase;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
