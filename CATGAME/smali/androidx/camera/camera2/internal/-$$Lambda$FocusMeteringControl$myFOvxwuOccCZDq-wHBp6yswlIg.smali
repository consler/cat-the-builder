.class public final synthetic Landroidx/camera/camera2/internal/-$$Lambda$FocusMeteringControl$myFOvxwuOccCZDq-wHBp6yswlIg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/camera/camera2/internal/Camera2CameraControl$CaptureResultListener;


# instance fields
.field public final synthetic f$0:Landroidx/camera/camera2/internal/FocusMeteringControl;

.field public final synthetic f$1:Z

.field public final synthetic f$2:[Landroid/hardware/camera2/params/MeteringRectangle;

.field public final synthetic f$3:[Landroid/hardware/camera2/params/MeteringRectangle;

.field public final synthetic f$4:[Landroid/hardware/camera2/params/MeteringRectangle;


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/camera2/internal/FocusMeteringControl;Z[Landroid/hardware/camera2/params/MeteringRectangle;[Landroid/hardware/camera2/params/MeteringRectangle;[Landroid/hardware/camera2/params/MeteringRectangle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/camera2/internal/-$$Lambda$FocusMeteringControl$myFOvxwuOccCZDq-wHBp6yswlIg;->f$0:Landroidx/camera/camera2/internal/FocusMeteringControl;

    iput-boolean p2, p0, Landroidx/camera/camera2/internal/-$$Lambda$FocusMeteringControl$myFOvxwuOccCZDq-wHBp6yswlIg;->f$1:Z

    iput-object p3, p0, Landroidx/camera/camera2/internal/-$$Lambda$FocusMeteringControl$myFOvxwuOccCZDq-wHBp6yswlIg;->f$2:[Landroid/hardware/camera2/params/MeteringRectangle;

    iput-object p4, p0, Landroidx/camera/camera2/internal/-$$Lambda$FocusMeteringControl$myFOvxwuOccCZDq-wHBp6yswlIg;->f$3:[Landroid/hardware/camera2/params/MeteringRectangle;

    iput-object p5, p0, Landroidx/camera/camera2/internal/-$$Lambda$FocusMeteringControl$myFOvxwuOccCZDq-wHBp6yswlIg;->f$4:[Landroid/hardware/camera2/params/MeteringRectangle;

    return-void
.end method


# virtual methods
.method public final onCaptureResult(Landroid/hardware/camera2/TotalCaptureResult;)Z
    .locals 6

    iget-object v0, p0, Landroidx/camera/camera2/internal/-$$Lambda$FocusMeteringControl$myFOvxwuOccCZDq-wHBp6yswlIg;->f$0:Landroidx/camera/camera2/internal/FocusMeteringControl;

    iget-boolean v1, p0, Landroidx/camera/camera2/internal/-$$Lambda$FocusMeteringControl$myFOvxwuOccCZDq-wHBp6yswlIg;->f$1:Z

    iget-object v2, p0, Landroidx/camera/camera2/internal/-$$Lambda$FocusMeteringControl$myFOvxwuOccCZDq-wHBp6yswlIg;->f$2:[Landroid/hardware/camera2/params/MeteringRectangle;

    iget-object v3, p0, Landroidx/camera/camera2/internal/-$$Lambda$FocusMeteringControl$myFOvxwuOccCZDq-wHBp6yswlIg;->f$3:[Landroid/hardware/camera2/params/MeteringRectangle;

    iget-object v4, p0, Landroidx/camera/camera2/internal/-$$Lambda$FocusMeteringControl$myFOvxwuOccCZDq-wHBp6yswlIg;->f$4:[Landroid/hardware/camera2/params/MeteringRectangle;

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Landroidx/camera/camera2/internal/FocusMeteringControl;->lambda$executeMeteringAction$3$FocusMeteringControl(Z[Landroid/hardware/camera2/params/MeteringRectangle;[Landroid/hardware/camera2/params/MeteringRectangle;[Landroid/hardware/camera2/params/MeteringRectangle;Landroid/hardware/camera2/TotalCaptureResult;)Z

    move-result p1

    return p1
.end method
