.class public final synthetic Landroidx/camera/camera2/internal/-$$Lambda$FocusMeteringControl$vgaNwg87Tv3HiROj1CRAp20PA-Q;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/camera/camera2/internal/Camera2CameraControl$CaptureResultListener;


# instance fields
.field public final synthetic f$0:Landroidx/camera/camera2/internal/FocusMeteringControl;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/camera2/internal/FocusMeteringControl;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/camera2/internal/-$$Lambda$FocusMeteringControl$vgaNwg87Tv3HiROj1CRAp20PA-Q;->f$0:Landroidx/camera/camera2/internal/FocusMeteringControl;

    iput p2, p0, Landroidx/camera/camera2/internal/-$$Lambda$FocusMeteringControl$vgaNwg87Tv3HiROj1CRAp20PA-Q;->f$1:I

    return-void
.end method


# virtual methods
.method public final onCaptureResult(Landroid/hardware/camera2/TotalCaptureResult;)Z
    .locals 2

    iget-object v0, p0, Landroidx/camera/camera2/internal/-$$Lambda$FocusMeteringControl$vgaNwg87Tv3HiROj1CRAp20PA-Q;->f$0:Landroidx/camera/camera2/internal/FocusMeteringControl;

    iget v1, p0, Landroidx/camera/camera2/internal/-$$Lambda$FocusMeteringControl$vgaNwg87Tv3HiROj1CRAp20PA-Q;->f$1:I

    invoke-virtual {v0, v1, p1}, Landroidx/camera/camera2/internal/FocusMeteringControl;->lambda$cancelFocusAndMeteringInternal$8$FocusMeteringControl(ILandroid/hardware/camera2/TotalCaptureResult;)Z

    move-result p1

    return p1
.end method
