.class public final synthetic Landroidx/camera/camera2/internal/-$$Lambda$Camera2CameraControl$EsEFplJTwKSf-WUUvRmZFH6Z3NE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroidx/camera/camera2/internal/Camera2CameraControl;

.field public final synthetic f$1:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/camera2/internal/Camera2CameraControl;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/camera2/internal/-$$Lambda$Camera2CameraControl$EsEFplJTwKSf-WUUvRmZFH6Z3NE;->f$0:Landroidx/camera/camera2/internal/Camera2CameraControl;

    iput-object p2, p0, Landroidx/camera/camera2/internal/-$$Lambda$Camera2CameraControl$EsEFplJTwKSf-WUUvRmZFH6Z3NE;->f$1:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Landroidx/camera/camera2/internal/-$$Lambda$Camera2CameraControl$EsEFplJTwKSf-WUUvRmZFH6Z3NE;->f$0:Landroidx/camera/camera2/internal/Camera2CameraControl;

    iget-object v1, p0, Landroidx/camera/camera2/internal/-$$Lambda$Camera2CameraControl$EsEFplJTwKSf-WUUvRmZFH6Z3NE;->f$1:Ljava/util/List;

    invoke-virtual {v0, v1}, Landroidx/camera/camera2/internal/Camera2CameraControl;->lambda$submitCaptureRequests$6$Camera2CameraControl(Ljava/util/List;)V

    return-void
.end method
