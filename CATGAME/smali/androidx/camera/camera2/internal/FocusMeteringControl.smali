.class Landroidx/camera/camera2/internal/FocusMeteringControl;
.super Ljava/lang/Object;
.source "FocusMeteringControl.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "FocusMeteringControl"


# instance fields
.field private mAeRects:[Landroid/hardware/camera2/params/MeteringRectangle;

.field private mAfRects:[Landroid/hardware/camera2/params/MeteringRectangle;

.field private mAutoCancelHandle:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field

.field private mAwbRects:[Landroid/hardware/camera2/params/MeteringRectangle;

.field private final mCameraControl:Landroidx/camera/camera2/internal/Camera2CameraControl;

.field mCurrentAfState:Ljava/lang/Integer;

.field mDefaultAeRects:[Landroid/hardware/camera2/params/MeteringRectangle;

.field mDefaultAfRects:[Landroid/hardware/camera2/params/MeteringRectangle;

.field mDefaultAwbRects:[Landroid/hardware/camera2/params/MeteringRectangle;

.field final mExecutor:Ljava/util/concurrent/Executor;

.field mFocusTimeoutCounter:J

.field private volatile mIsActive:Z

.field mIsAutoFocusCompleted:Z

.field mIsFocusSuccessful:Z

.field private mIsInAfAutoMode:Z

.field mRunningActionCompleter:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer<",
            "Landroidx/camera/core/FocusMeteringResult;",
            ">;"
        }
    .end annotation
.end field

.field mRunningCancelCompleter:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private final mScheduler:Ljava/util/concurrent/ScheduledExecutorService;

.field private mSessionListenerForCancel:Landroidx/camera/camera2/internal/Camera2CameraControl$CaptureResultListener;

.field private mSessionListenerForFocus:Landroidx/camera/camera2/internal/Camera2CameraControl$CaptureResultListener;


# direct methods
.method constructor <init>(Landroidx/camera/camera2/internal/Camera2CameraControl;Ljava/util/concurrent/ScheduledExecutorService;Ljava/util/concurrent/Executor;)V
    .locals 3
    .param p1, "cameraControl"    # Landroidx/camera/camera2/internal/Camera2CameraControl;
    .param p2, "scheduler"    # Ljava/util/concurrent/ScheduledExecutorService;
    .param p3, "executor"    # Ljava/util/concurrent/Executor;

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/camera/camera2/internal/FocusMeteringControl;->mIsActive:Z

    .line 84
    iput-boolean v0, p0, Landroidx/camera/camera2/internal/FocusMeteringControl;->mIsInAfAutoMode:Z

    .line 85
    nop

    .line 87
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Landroidx/camera/camera2/internal/FocusMeteringControl;->mCurrentAfState:Ljava/lang/Integer;

    .line 89
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Landroidx/camera/camera2/internal/FocusMeteringControl;->mFocusTimeoutCounter:J

    .line 91
    iput-boolean v0, p0, Landroidx/camera/camera2/internal/FocusMeteringControl;->mIsAutoFocusCompleted:Z

    .line 93
    iput-boolean v0, p0, Landroidx/camera/camera2/internal/FocusMeteringControl;->mIsFocusSuccessful:Z

    .line 96
    const/4 v1, 0x0

    iput-object v1, p0, Landroidx/camera/camera2/internal/FocusMeteringControl;->mSessionListenerForFocus:Landroidx/camera/camera2/internal/Camera2CameraControl$CaptureResultListener;

    .line 97
    iput-object v1, p0, Landroidx/camera/camera2/internal/FocusMeteringControl;->mSessionListenerForCancel:Landroidx/camera/camera2/internal/Camera2CameraControl$CaptureResultListener;

    .line 98
    new-array v2, v0, [Landroid/hardware/camera2/params/MeteringRectangle;

    iput-object v2, p0, Landroidx/camera/camera2/internal/FocusMeteringControl;->mAfRects:[Landroid/hardware/camera2/params/MeteringRectangle;

    .line 99
    new-array v2, v0, [Landroid/hardware/camera2/params/MeteringRectangle;

    iput-object v2, p0, Landroidx/camera/camera2/internal/FocusMeteringControl;->mAeRects:[Landroid/hardware/camera2/params/MeteringRectangle;

    .line 100
    new-array v2, v0, [Landroid/hardware/camera2/params/MeteringRectangle;

    iput-object v2, p0, Landroidx/camera/camera2/internal/FocusMeteringControl;->mAwbRects:[Landroid/hardware/camera2/params/MeteringRectangle;

    .line 102
    new-array v2, v0, [Landroid/hardware/camera2/params/MeteringRectangle;

    iput-object v2, p0, Landroidx/camera/camera2/internal/FocusMeteringControl;->mDefaultAfRects:[Landroid/hardware/camera2/params/MeteringRectangle;

    .line 104
    new-array v2, v0, [Landroid/hardware/camera2/params/MeteringRectangle;

    iput-object v2, p0, Landroidx/camera/camera2/internal/FocusMeteringControl;->mDefaultAeRects:[Landroid/hardware/camera2/params/MeteringRectangle;

    .line 106
    new-array v0, v0, [Landroid/hardware/camera2/params/MeteringRectangle;

    iput-object v0, p0, Landroidx/camera/camera2/internal/FocusMeteringControl;->mDefaultAwbRects:[Landroid/hardware/camera2/params/MeteringRectangle;

    .line 109
    iput-object v1, p0, Landroidx/camera/camera2/internal/FocusMeteringControl;->mRunningActionCompleter:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    .line 110
    iput-object v1, p0, Landroidx/camera/camera2/internal/FocusMeteringControl;->mRunningCancelCompleter:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    .line 126
    iput-object p1, p0, Landroidx/camera/camera2/internal/FocusMeteringControl;->mCameraControl:Landroidx/camera/camera2/internal/Camera2CameraControl;

    .line 127
    iput-object p3, p0, Landroidx/camera/camera2/internal/FocusMeteringControl;->mExecutor:Ljava/util/concurrent/Executor;

    .line 128
    iput-object p2, p0, Landroidx/camera/camera2/internal/FocusMeteringControl;->mScheduler:Ljava/util/concurrent/ScheduledExecutorService;

    .line 129
    return-void
.end method

.method private completeActionFuture(Z)V
    .locals 2
    .param p1, "isFocusSuccessful"    # Z

    .line 558
    iget-object v0, p0, Landroidx/camera/camera2/internal/FocusMeteringControl;->mRunningActionCompleter:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    if-eqz v0, :cond_0

    .line 559
    invoke-static {p1}, Landroidx/camera/core/FocusMeteringResult;->create(Z)Landroidx/camera/core/FocusMeteringResult;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->set(Ljava/lang/Object;)Z

    .line 560
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/camera/camera2/internal/FocusMeteringControl;->mRunningActionCompleter:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    .line 562
    :cond_0
    return-void
.end method

.method private completeCancelFuture()V
    .locals 2

    .line 586
    iget-object v0, p0, Landroidx/camera/camera2/internal/FocusMeteringControl;->mRunningCancelCompleter:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    if-eqz v0, :cond_0

    .line 587
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->set(Ljava/lang/Object;)Z

    .line 588
    iput-object v1, p0, Landroidx/camera/camera2/internal/FocusMeteringControl;->mRunningCancelCompleter:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    .line 590
    :cond_0
    return-void
.end method

.method private disableAutoCancel()V
    .locals 2

    .line 518
    iget-object v0, p0, Landroidx/camera/camera2/internal/FocusMeteringControl;->mAutoCancelHandle:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_0

    .line 519
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 520
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/camera/camera2/internal/FocusMeteringControl;->mAutoCancelHandle:Ljava/util/concurrent/ScheduledFuture;

    .line 522
    :cond_0
    return-void
.end method

.method private executeMeteringAction([Landroid/hardware/camera2/params/MeteringRectangle;[Landroid/hardware/camera2/params/MeteringRectangle;[Landroid/hardware/camera2/params/MeteringRectangle;Landroidx/camera/core/FocusMeteringAction;)V
    .locals 8
    .param p1, "afRects"    # [Landroid/hardware/camera2/params/MeteringRectangle;
    .param p2, "aeRects"    # [Landroid/hardware/camera2/params/MeteringRectangle;
    .param p3, "awbRects"    # [Landroid/hardware/camera2/params/MeteringRectangle;
    .param p4, "focusMeteringAction"    # Landroidx/camera/core/FocusMeteringAction;

    .line 598
    iget-object v0, p0, Landroidx/camera/camera2/internal/FocusMeteringControl;->mCameraControl:Landroidx/camera/camera2/internal/Camera2CameraControl;

    iget-object v1, p0, Landroidx/camera/camera2/internal/FocusMeteringControl;->mSessionListenerForFocus:Landroidx/camera/camera2/internal/Camera2CameraControl$CaptureResultListener;

    invoke-virtual {v0, v1}, Landroidx/camera/camera2/internal/Camera2CameraControl;->removeCaptureResultListener(Landroidx/camera/camera2/internal/Camera2CameraControl$CaptureResultListener;)V

    .line 600
    invoke-direct {p0}, Landroidx/camera/camera2/internal/FocusMeteringControl;->disableAutoCancel()V

    .line 602
    iput-object p1, p0, Landroidx/camera/camera2/internal/FocusMeteringControl;->mAfRects:[Landroid/hardware/camera2/params/MeteringRectangle;

    .line 603
    iput-object p2, p0, Landroidx/camera/camera2/internal/FocusMeteringControl;->mAeRects:[Landroid/hardware/camera2/params/MeteringRectangle;

    .line 604
    iput-object p3, p0, Landroidx/camera/camera2/internal/FocusMeteringControl;->mAwbRects:[Landroid/hardware/camera2/params/MeteringRectangle;

    .line 607
    invoke-direct {p0}, Landroidx/camera/camera2/internal/FocusMeteringControl;->shouldTriggerAF()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 608
    iput-boolean v1, p0, Landroidx/camera/camera2/internal/FocusMeteringControl;->mIsInAfAutoMode:Z

    .line 609
    iput-boolean v2, p0, Landroidx/camera/camera2/internal/FocusMeteringControl;->mIsAutoFocusCompleted:Z

    .line 610
    iput-boolean v2, p0, Landroidx/camera/camera2/internal/FocusMeteringControl;->mIsFocusSuccessful:Z

    .line 611
    iget-object v0, p0, Landroidx/camera/camera2/internal/FocusMeteringControl;->mCameraControl:Landroidx/camera/camera2/internal/Camera2CameraControl;

    invoke-virtual {v0}, Landroidx/camera/camera2/internal/Camera2CameraControl;->updateSessionConfig()V

    .line 612
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/camera/camera2/internal/FocusMeteringControl;->triggerAf(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)V

    goto :goto_0

    .line 614
    :cond_0
    iput-boolean v2, p0, Landroidx/camera/camera2/internal/FocusMeteringControl;->mIsInAfAutoMode:Z

    .line 615
    iput-boolean v1, p0, Landroidx/camera/camera2/internal/FocusMeteringControl;->mIsAutoFocusCompleted:Z

    .line 616
    iput-boolean v2, p0, Landroidx/camera/camera2/internal/FocusMeteringControl;->mIsFocusSuccessful:Z

    .line 617
    iget-object v0, p0, Landroidx/camera/camera2/internal/FocusMeteringControl;->mCameraControl:Landroidx/camera/camera2/internal/Camera2CameraControl;

    invoke-virtual {v0}, Landroidx/camera/camera2/internal/Camera2CameraControl;->updateSessionConfig()V

    .line 620
    :goto_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Landroidx/camera/camera2/internal/FocusMeteringControl;->mCurrentAfState:Ljava/lang/Integer;

    .line 621
    invoke-direct {p0}, Landroidx/camera/camera2/internal/FocusMeteringControl;->isAfModeSupported()Z

    move-result v0

    .line 624
    .local v0, "isAfModeSupported":Z
    new-instance v7, Landroidx/camera/camera2/internal/-$$Lambda$FocusMeteringControl$myFOvxwuOccCZDq-wHBp6yswlIg;

    move-object v1, v7

    move-object v2, p0

    move v3, v0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Landroidx/camera/camera2/internal/-$$Lambda$FocusMeteringControl$myFOvxwuOccCZDq-wHBp6yswlIg;-><init>(Landroidx/camera/camera2/internal/FocusMeteringControl;Z[Landroid/hardware/camera2/params/MeteringRectangle;[Landroid/hardware/camera2/params/MeteringRectangle;[Landroid/hardware/camera2/params/MeteringRectangle;)V

    iput-object v7, p0, Landroidx/camera/camera2/internal/FocusMeteringControl;->mSessionListenerForFocus:Landroidx/camera/camera2/internal/Camera2CameraControl$CaptureResultListener;

    .line 673
    iget-object v1, p0, Landroidx/camera/camera2/internal/FocusMeteringControl;->mCameraControl:Landroidx/camera/camera2/internal/Camera2CameraControl;

    invoke-virtual {v1, v7}, Landroidx/camera/camera2/internal/Camera2CameraControl;->addCaptureResultListener(Landroidx/camera/camera2/internal/Camera2CameraControl$CaptureResultListener;)V

    .line 675
    invoke-virtual {p4}, Landroidx/camera/core/FocusMeteringAction;->isAutoCancelEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 676
    iget-wide v1, p0, Landroidx/camera/camera2/internal/FocusMeteringControl;->mFocusTimeoutCounter:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, p0, Landroidx/camera/camera2/internal/FocusMeteringControl;->mFocusTimeoutCounter:J

    .line 677
    .local v1, "timeoutId":J
    new-instance v3, Landroidx/camera/camera2/internal/-$$Lambda$FocusMeteringControl$d6WwVXBeWXIsWhvPS-3v3isXXpE;

    .local v3, "autoCancelRunnable":Ljava/lang/Runnable;
    invoke-direct {v3, p0, v1, v2}, Landroidx/camera/camera2/internal/-$$Lambda$FocusMeteringControl$d6WwVXBeWXIsWhvPS-3v3isXXpE;-><init>(Landroidx/camera/camera2/internal/FocusMeteringControl;J)V

    .line 683
    iget-object v4, p0, Landroidx/camera/camera2/internal/FocusMeteringControl;->mScheduler:Ljava/util/concurrent/ScheduledExecutorService;

    .line 684
    invoke-virtual {p4}, Landroidx/camera/core/FocusMeteringAction;->getAutoCancelDurationInMillis()J

    move-result-wide v5

    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 683
    invoke-interface {v4, v3, v5, v6, v7}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v4

    iput-object v4, p0, Landroidx/camera/camera2/internal/FocusMeteringControl;->mAutoCancelHandle:Ljava/util/concurrent/ScheduledFuture;

    .line 687
    .end local v1    # "timeoutId":J
    .end local v3    # "autoCancelRunnable":Ljava/lang/Runnable;
    :cond_1
    return-void
.end method

.method private failActionFuture(Ljava/lang/String;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;

    .line 566
    iget-object v0, p0, Landroidx/camera/camera2/internal/FocusMeteringControl;->mCameraControl:Landroidx/camera/camera2/internal/Camera2CameraControl;

    iget-object v1, p0, Landroidx/camera/camera2/internal/FocusMeteringControl;->mSessionListenerForFocus:Landroidx/camera/camera2/internal/Camera2CameraControl$CaptureResultListener;

    invoke-virtual {v0, v1}, Landroidx/camera/camera2/internal/Camera2CameraControl;->removeCaptureResultListener(Landroidx/camera/camera2/internal/Camera2CameraControl$CaptureResultListener;)V

    .line 567
    iget-object v0, p0, Landroidx/camera/camera2/internal/FocusMeteringControl;->mRunningActionCompleter:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    if-eqz v0, :cond_0

    .line 568
    new-instance v1, Landroidx/camera/core/CameraControl$OperationCanceledException;

    invoke-direct {v1, p1}, Landroidx/camera/core/CameraControl$OperationCanceledException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->setException(Ljava/lang/Throwable;)Z

    .line 570
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/camera/camera2/internal/FocusMeteringControl;->mRunningActionCompleter:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    .line 572
    :cond_0
    return-void
.end method

.method private failCancelFuture(Ljava/lang/String;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;

    .line 576
    iget-object v0, p0, Landroidx/camera/camera2/internal/FocusMeteringControl;->mCameraControl:Landroidx/camera/camera2/internal/Camera2CameraControl;

    iget-object v1, p0, Landroidx/camera/camera2/internal/FocusMeteringControl;->mSessionListenerForCancel:Landroidx/camera/camera2/internal/Camera2CameraControl$CaptureResultListener;

    invoke-virtual {v0, v1}, Landroidx/camera/camera2/internal/Camera2CameraControl;->removeCaptureResultListener(Landroidx/camera/camera2/internal/Camera2CameraControl$CaptureResultListener;)V

    .line 577
    iget-object v0, p0, Landroidx/camera/camera2/internal/FocusMeteringControl;->mRunningCancelCompleter:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    if-eqz v0, :cond_0

    .line 578
    new-instance v1, Landroidx/camera/core/CameraControl$OperationCanceledException;

    invoke-direct {v1, p1}, Landroidx/camera/core/CameraControl$OperationCanceledException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->setException(Ljava/lang/Throwable;)Z

    .line 580
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/camera/camera2/internal/FocusMeteringControl;->mRunningCancelCompleter:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    .line 582
    :cond_0
    return-void
.end method

.method private getDefaultTemplate()I
    .locals 1

    .line 387
    const/4 v0, 0x1

    return v0
.end method

.method private getFovAdjustedPoint(Landroidx/camera/core/MeteringPoint;Landroid/util/Rational;Landroid/util/Rational;)Landroid/graphics/PointF;
    .locals 12
    .param p1, "meteringPoint"    # Landroidx/camera/core/MeteringPoint;
    .param p2, "cropRegionAspectRatio"    # Landroid/util/Rational;
    .param p3, "defaultAspectRatio"    # Landroid/util/Rational;

    .line 199
    move-object v0, p3

    .line 200
    .local v0, "fovAspectRatio":Landroid/util/Rational;
    invoke-virtual {p1}, Landroidx/camera/core/MeteringPoint;->getSurfaceAspectRatio()Landroid/util/Rational;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 201
    invoke-virtual {p1}, Landroidx/camera/core/MeteringPoint;->getSurfaceAspectRatio()Landroid/util/Rational;

    move-result-object v0

    .line 204
    :cond_0
    new-instance v1, Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroidx/camera/core/MeteringPoint;->getX()F

    move-result v2

    .line 205
    invoke-virtual {p1}, Landroidx/camera/core/MeteringPoint;->getY()F

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/graphics/PointF;-><init>(FF)V

    .line 206
    .local v1, "adjustedPoint":Landroid/graphics/PointF;
    invoke-virtual {v0, p2}, Landroid/util/Rational;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 208
    invoke-virtual {v0, p2}, Landroid/util/Rational;->compareTo(Landroid/util/Rational;)I

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    if-lez v2, :cond_1

    .line 210
    nop

    .line 211
    invoke-virtual {v0}, Landroid/util/Rational;->doubleValue()D

    move-result-wide v8

    .line 212
    invoke-virtual {p2}, Landroid/util/Rational;->doubleValue()D

    move-result-wide v10

    div-double/2addr v8, v10

    double-to-float v2, v8

    .line 213
    .local v2, "heightOfCropRegion":F
    float-to-double v8, v2

    sub-double/2addr v8, v6

    div-double/2addr v8, v4

    double-to-float v4, v8

    .line 214
    .local v4, "top_padding":F
    iget v5, v1, Landroid/graphics/PointF;->y:F

    add-float/2addr v5, v4

    div-float/2addr v3, v2

    mul-float/2addr v5, v3

    iput v5, v1, Landroid/graphics/PointF;->y:F

    .line 216
    .end local v2    # "heightOfCropRegion":F
    .end local v4    # "top_padding":F
    goto :goto_0

    .line 218
    :cond_1
    nop

    .line 219
    invoke-virtual {p2}, Landroid/util/Rational;->doubleValue()D

    move-result-wide v8

    .line 220
    invoke-virtual {v0}, Landroid/util/Rational;->doubleValue()D

    move-result-wide v10

    div-double/2addr v8, v10

    double-to-float v2, v8

    .line 221
    .local v2, "widthOfCropRegion":F
    float-to-double v8, v2

    sub-double/2addr v8, v6

    div-double/2addr v8, v4

    double-to-float v4, v8

    .line 222
    .local v4, "left_padding":F
    iget v5, v1, Landroid/graphics/PointF;->x:F

    add-float/2addr v5, v4

    div-float/2addr v3, v2

    mul-float/2addr v5, v3

    iput v5, v1, Landroid/graphics/PointF;->x:F

    .line 226
    .end local v2    # "widthOfCropRegion":F
    .end local v4    # "left_padding":F
    :cond_2
    :goto_0
    return-object v1
.end method

.method private getMeteringRect(Landroidx/camera/core/MeteringPoint;Landroid/graphics/PointF;Landroid/graphics/Rect;)Landroid/hardware/camera2/params/MeteringRectangle;
    .locals 9
    .param p1, "meteringPoint"    # Landroidx/camera/core/MeteringPoint;
    .param p2, "adjustedPoint"    # Landroid/graphics/PointF;
    .param p3, "cropRegion"    # Landroid/graphics/Rect;

    .line 232
    iget v0, p3, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    iget v1, p2, Landroid/graphics/PointF;->x:F

    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    float-to-int v0, v0

    .line 233
    .local v0, "centerX":I
    iget v1, p3, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    iget v2, p2, Landroid/graphics/PointF;->y:F

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    float-to-int v1, v1

    .line 235
    .local v1, "centerY":I
    invoke-virtual {p1}, Landroidx/camera/core/MeteringPoint;->getSize()F

    move-result v2

    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v2, v3

    float-to-int v2, v2

    .line 236
    .local v2, "width":I
    invoke-virtual {p1}, Landroidx/camera/core/MeteringPoint;->getSize()F

    move-result v3

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v3, v4

    float-to-int v3, v3

    .line 238
    .local v3, "height":I
    new-instance v4, Landroid/graphics/Rect;

    div-int/lit8 v5, v2, 0x2

    sub-int v5, v0, v5

    div-int/lit8 v6, v3, 0x2

    sub-int v6, v1, v6

    div-int/lit8 v7, v2, 0x2

    add-int/2addr v7, v0

    div-int/lit8 v8, v3, 0x2

    add-int/2addr v8, v1

    invoke-direct {v4, v5, v6, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 241
    .local v4, "focusRect":Landroid/graphics/Rect;
    iget v5, v4, Landroid/graphics/Rect;->left:I

    iget v6, p3, Landroid/graphics/Rect;->right:I

    iget v7, p3, Landroid/graphics/Rect;->left:I

    invoke-direct {p0, v5, v6, v7}, Landroidx/camera/camera2/internal/FocusMeteringControl;->rangeLimit(III)I

    move-result v5

    iput v5, v4, Landroid/graphics/Rect;->left:I

    .line 242
    iget v5, v4, Landroid/graphics/Rect;->right:I

    iget v6, p3, Landroid/graphics/Rect;->right:I

    iget v7, p3, Landroid/graphics/Rect;->left:I

    invoke-direct {p0, v5, v6, v7}, Landroidx/camera/camera2/internal/FocusMeteringControl;->rangeLimit(III)I

    move-result v5

    iput v5, v4, Landroid/graphics/Rect;->right:I

    .line 243
    iget v5, v4, Landroid/graphics/Rect;->top:I

    iget v6, p3, Landroid/graphics/Rect;->bottom:I

    iget v7, p3, Landroid/graphics/Rect;->top:I

    invoke-direct {p0, v5, v6, v7}, Landroidx/camera/camera2/internal/FocusMeteringControl;->rangeLimit(III)I

    move-result v5

    iput v5, v4, Landroid/graphics/Rect;->top:I

    .line 244
    iget v5, v4, Landroid/graphics/Rect;->bottom:I

    iget v6, p3, Landroid/graphics/Rect;->bottom:I

    iget v7, p3, Landroid/graphics/Rect;->top:I

    invoke-direct {p0, v5, v6, v7}, Landroidx/camera/camera2/internal/FocusMeteringControl;->rangeLimit(III)I

    move-result v5

    iput v5, v4, Landroid/graphics/Rect;->bottom:I

    .line 246
    new-instance v5, Landroid/hardware/camera2/params/MeteringRectangle;

    const/16 v6, 0x3e8

    invoke-direct {v5, v4, v6}, Landroid/hardware/camera2/params/MeteringRectangle;-><init>(Landroid/graphics/Rect;I)V

    return-object v5
.end method

.method private static getRegionCount([Landroid/hardware/camera2/params/MeteringRectangle;)I
    .locals 1
    .param p0, "regions"    # [Landroid/hardware/camera2/params/MeteringRectangle;

    .line 525
    if-nez p0, :cond_0

    .line 526
    const/4 v0, 0x0

    return v0

    .line 528
    :cond_0
    array-length v0, p0

    return v0
.end method

.method private static hasEqualRegions([Landroid/hardware/camera2/params/MeteringRectangle;[Landroid/hardware/camera2/params/MeteringRectangle;)Z
    .locals 5
    .param p0, "regions1"    # [Landroid/hardware/camera2/params/MeteringRectangle;
    .param p1, "regions2"    # [Landroid/hardware/camera2/params/MeteringRectangle;

    .line 533
    invoke-static {p0}, Landroidx/camera/camera2/internal/FocusMeteringControl;->getRegionCount([Landroid/hardware/camera2/params/MeteringRectangle;)I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    invoke-static {p1}, Landroidx/camera/camera2/internal/FocusMeteringControl;->getRegionCount([Landroid/hardware/camera2/params/MeteringRectangle;)I

    move-result v0

    if-nez v0, :cond_0

    .line 534
    return v1

    .line 537
    :cond_0
    invoke-static {p0}, Landroidx/camera/camera2/internal/FocusMeteringControl;->getRegionCount([Landroid/hardware/camera2/params/MeteringRectangle;)I

    move-result v0

    invoke-static {p1}, Landroidx/camera/camera2/internal/FocusMeteringControl;->getRegionCount([Landroid/hardware/camera2/params/MeteringRectangle;)I

    move-result v2

    const/4 v3, 0x0

    if-eq v0, v2, :cond_1

    .line 538
    return v3

    .line 541
    :cond_1
    if-eqz p0, :cond_3

    if-eqz p1, :cond_3

    .line 542
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_3

    .line 543
    aget-object v2, p0, v0

    aget-object v4, p1, v0

    invoke-virtual {v2, v4}, Landroid/hardware/camera2/params/MeteringRectangle;->equals(Landroid/hardware/camera2/params/MeteringRectangle;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 544
    return v3

    .line 542
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 548
    .end local v0    # "i":I
    :cond_3
    return v1
.end method

.method private isAfModeSupported()Z
    .locals 2

    .line 552
    iget-object v0, p0, Landroidx/camera/camera2/internal/FocusMeteringControl;->mCameraControl:Landroidx/camera/camera2/internal/Camera2CameraControl;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/camera/camera2/internal/Camera2CameraControl;->getSupportedAfMode(I)I

    move-result v0

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private isValid(Landroidx/camera/core/MeteringPoint;)Z
    .locals 3
    .param p1, "pt"    # Landroidx/camera/core/MeteringPoint;

    .line 191
    invoke-virtual {p1}, Landroidx/camera/core/MeteringPoint;->getX()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    invoke-virtual {p1}, Landroidx/camera/core/MeteringPoint;->getX()F

    move-result v0

    const/high16 v2, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v2

    if-gtz v0, :cond_0

    invoke-virtual {p1}, Landroidx/camera/core/MeteringPoint;->getY()F

    move-result v0

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    invoke-virtual {p1}, Landroidx/camera/core/MeteringPoint;->getY()F

    move-result v0

    cmpg-float v0, v0, v2

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private rangeLimit(III)I
    .locals 1
    .param p1, "val"    # I
    .param p2, "max"    # I
    .param p3, "min"    # I

    .line 251
    invoke-static {p1, p3}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method private shouldTriggerAF()Z
    .locals 1

    .line 691
    iget-object v0, p0, Landroidx/camera/camera2/internal/FocusMeteringControl;->mAfRects:[Landroid/hardware/camera2/params/MeteringRectangle;

    array-length v0, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method addFocusMeteringOptions(Landroidx/camera/camera2/impl/Camera2ImplConfig$Builder;)V
    .locals 3
    .param p1, "configBuilder"    # Landroidx/camera/camera2/impl/Camera2ImplConfig$Builder;

    .line 169
    iget-boolean v0, p0, Landroidx/camera/camera2/internal/FocusMeteringControl;->mIsInAfAutoMode:Z

    if-eqz v0, :cond_0

    .line 170
    const/4 v0, 0x1

    goto :goto_0

    .line 171
    :cond_0
    const/4 v0, 0x4

    :goto_0
    nop

    .line 173
    .local v0, "afMode":I
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    iget-object v2, p0, Landroidx/camera/camera2/internal/FocusMeteringControl;->mCameraControl:Landroidx/camera/camera2/internal/Camera2CameraControl;

    .line 174
    invoke-virtual {v2, v0}, Landroidx/camera/camera2/internal/Camera2CameraControl;->getSupportedAfMode(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 173
    invoke-virtual {p1, v1, v2}, Landroidx/camera/camera2/impl/Camera2ImplConfig$Builder;->setCaptureRequestOption(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Landroidx/camera/camera2/impl/Camera2ImplConfig$Builder;

    .line 176
    iget-object v1, p0, Landroidx/camera/camera2/internal/FocusMeteringControl;->mAfRects:[Landroid/hardware/camera2/params/MeteringRectangle;

    array-length v1, v1

    if-eqz v1, :cond_1

    .line 177
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_REGIONS:Landroid/hardware/camera2/CaptureRequest$Key;

    iget-object v2, p0, Landroidx/camera/camera2/internal/FocusMeteringControl;->mAfRects:[Landroid/hardware/camera2/params/MeteringRectangle;

    invoke-virtual {p1, v1, v2}, Landroidx/camera/camera2/impl/Camera2ImplConfig$Builder;->setCaptureRequestOption(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Landroidx/camera/camera2/impl/Camera2ImplConfig$Builder;

    .line 180
    :cond_1
    iget-object v1, p0, Landroidx/camera/camera2/internal/FocusMeteringControl;->mAeRects:[Landroid/hardware/camera2/params/MeteringRectangle;

    array-length v1, v1

    if-eqz v1, :cond_2

    .line 181
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_REGIONS:Landroid/hardware/camera2/CaptureRequest$Key;

    iget-object v2, p0, Landroidx/camera/camera2/internal/FocusMeteringControl;->mAeRects:[Landroid/hardware/camera2/params/MeteringRectangle;

    invoke-virtual {p1, v1, v2}, Landroidx/camera/camera2/impl/Camera2ImplConfig$Builder;->setCaptureRequestOption(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Landroidx/camera/camera2/impl/Camera2ImplConfig$Builder;

    .line 184
    :cond_2
    iget-object v1, p0, Landroidx/camera/camera2/internal/FocusMeteringControl;->mAwbRects:[Landroid/hardware/camera2/params/MeteringRectangle;

    array-length v1, v1

    if-eqz v1, :cond_3

    .line 185
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AWB_REGIONS:Landroid/hardware/camera2/CaptureRequest$Key;

    iget-object v2, p0, Landroidx/camera/camera2/internal/FocusMeteringControl;->mAwbRects:[Landroid/hardware/camera2/params/MeteringRectangle;

    invoke-virtual {p1, v1, v2}, Landroidx/camera/camera2/impl/Camera2ImplConfig$Builder;->setCaptureRequestOption(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Landroidx/camera/camera2/impl/Camera2ImplConfig$Builder;

    .line 188
    :cond_3
    return-void
.end method

.method cancelAfAeTrigger(ZZ)V
    .locals 5
    .param p1, "cancelAfTrigger"    # Z
    .param p2, "cancelAePrecaptureTrigger"    # Z

    .line 494
    iget-boolean v0, p0, Landroidx/camera/camera2/internal/FocusMeteringControl;->mIsActive:Z

    if-nez v0, :cond_0

    .line 495
    return-void

    .line 498
    :cond_0
    new-instance v0, Landroidx/camera/core/impl/CaptureConfig$Builder;

    invoke-direct {v0}, Landroidx/camera/core/impl/CaptureConfig$Builder;-><init>()V

    .line 499
    .local v0, "builder":Landroidx/camera/core/impl/CaptureConfig$Builder;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/camera/core/impl/CaptureConfig$Builder;->setUseRepeatingSurface(Z)V

    .line 500
    invoke-direct {p0}, Landroidx/camera/camera2/internal/FocusMeteringControl;->getDefaultTemplate()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/camera/core/impl/CaptureConfig$Builder;->setTemplateType(I)V

    .line 502
    new-instance v1, Landroidx/camera/camera2/impl/Camera2ImplConfig$Builder;

    invoke-direct {v1}, Landroidx/camera/camera2/impl/Camera2ImplConfig$Builder;-><init>()V

    .line 503
    .local v1, "configBuilder":Landroidx/camera/camera2/impl/Camera2ImplConfig$Builder;
    const/4 v2, 0x2

    if-eqz p1, :cond_1

    .line 504
    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 505
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 504
    invoke-virtual {v1, v3, v4}, Landroidx/camera/camera2/impl/Camera2ImplConfig$Builder;->setCaptureRequestOption(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Landroidx/camera/camera2/impl/Camera2ImplConfig$Builder;

    .line 507
    :cond_1
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x17

    if-lt v3, v4, :cond_2

    if-eqz p2, :cond_2

    .line 508
    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_PRECAPTURE_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 509
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 508
    invoke-virtual {v1, v3, v2}, Landroidx/camera/camera2/impl/Camera2ImplConfig$Builder;->setCaptureRequestOption(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Landroidx/camera/camera2/impl/Camera2ImplConfig$Builder;

    .line 511
    :cond_2
    invoke-virtual {v1}, Landroidx/camera/camera2/impl/Camera2ImplConfig$Builder;->build()Landroidx/camera/camera2/impl/Camera2ImplConfig;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/camera/core/impl/CaptureConfig$Builder;->addImplementationOptions(Landroidx/camera/core/impl/Config;)V

    .line 512
    iget-object v2, p0, Landroidx/camera/camera2/internal/FocusMeteringControl;->mCameraControl:Landroidx/camera/camera2/internal/Camera2CameraControl;

    invoke-virtual {v0}, Landroidx/camera/core/impl/CaptureConfig$Builder;->build()Landroidx/camera/core/impl/CaptureConfig;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/camera/camera2/internal/Camera2CameraControl;->submitCaptureRequestsInternal(Ljava/util/List;)V

    .line 513
    return-void
.end method

.method cancelFocusAndMetering()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 695
    new-instance v0, Landroidx/camera/camera2/internal/-$$Lambda$FocusMeteringControl$FJquylG-HqkA7eofMN5jopP8hJg;

    invoke-direct {v0, p0}, Landroidx/camera/camera2/internal/-$$Lambda$FocusMeteringControl$FJquylG-HqkA7eofMN5jopP8hJg;-><init>(Landroidx/camera/camera2/internal/FocusMeteringControl;)V

    invoke-static {v0}, Landroidx/concurrent/futures/CallbackToFutureAdapter;->getFuture(Landroidx/concurrent/futures/CallbackToFutureAdapter$Resolver;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method cancelFocusAndMeteringInternal(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .line 710
    .local p1, "completer":Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;, "Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer<Ljava/lang/Void;>;"
    const-string v0, "Cancelled by another cancelFocusAndMetering()"

    invoke-direct {p0, v0}, Landroidx/camera/camera2/internal/FocusMeteringControl;->failCancelFuture(Ljava/lang/String;)V

    .line 711
    const-string v0, "Cancelled by cancelFocusAndMetering()"

    invoke-direct {p0, v0}, Landroidx/camera/camera2/internal/FocusMeteringControl;->failActionFuture(Ljava/lang/String;)V

    .line 712
    iput-object p1, p0, Landroidx/camera/camera2/internal/FocusMeteringControl;->mRunningCancelCompleter:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    .line 713
    invoke-direct {p0}, Landroidx/camera/camera2/internal/FocusMeteringControl;->disableAutoCancel()V

    .line 715
    iget-object v0, p0, Landroidx/camera/camera2/internal/FocusMeteringControl;->mRunningCancelCompleter:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    if-eqz v0, :cond_0

    .line 716
    iget-object v0, p0, Landroidx/camera/camera2/internal/FocusMeteringControl;->mCameraControl:Landroidx/camera/camera2/internal/Camera2CameraControl;

    const/4 v1, 0x4

    .line 717
    invoke-virtual {v0, v1}, Landroidx/camera/camera2/internal/Camera2CameraControl;->getSupportedAfMode(I)I

    move-result v0

    .line 719
    .local v0, "targetAfMode":I
    new-instance v1, Landroidx/camera/camera2/internal/-$$Lambda$FocusMeteringControl$vgaNwg87Tv3HiROj1CRAp20PA-Q;

    invoke-direct {v1, p0, v0}, Landroidx/camera/camera2/internal/-$$Lambda$FocusMeteringControl$vgaNwg87Tv3HiROj1CRAp20PA-Q;-><init>(Landroidx/camera/camera2/internal/FocusMeteringControl;I)V

    iput-object v1, p0, Landroidx/camera/camera2/internal/FocusMeteringControl;->mSessionListenerForCancel:Landroidx/camera/camera2/internal/Camera2CameraControl$CaptureResultListener;

    .line 741
    iget-object v2, p0, Landroidx/camera/camera2/internal/FocusMeteringControl;->mCameraControl:Landroidx/camera/camera2/internal/Camera2CameraControl;

    invoke-virtual {v2, v1}, Landroidx/camera/camera2/internal/Camera2CameraControl;->addCaptureResultListener(Landroidx/camera/camera2/internal/Camera2CameraControl$CaptureResultListener;)V

    .line 744
    .end local v0    # "targetAfMode":I
    :cond_0
    invoke-direct {p0}, Landroidx/camera/camera2/internal/FocusMeteringControl;->shouldTriggerAF()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 745
    const/4 v0, 0x1

    invoke-virtual {p0, v0, v1}, Landroidx/camera/camera2/internal/FocusMeteringControl;->cancelAfAeTrigger(ZZ)V

    .line 747
    :cond_1
    new-array v0, v1, [Landroid/hardware/camera2/params/MeteringRectangle;

    iput-object v0, p0, Landroidx/camera/camera2/internal/FocusMeteringControl;->mAfRects:[Landroid/hardware/camera2/params/MeteringRectangle;

    .line 748
    new-array v0, v1, [Landroid/hardware/camera2/params/MeteringRectangle;

    iput-object v0, p0, Landroidx/camera/camera2/internal/FocusMeteringControl;->mAeRects:[Landroid/hardware/camera2/params/MeteringRectangle;

    .line 749
    new-array v0, v1, [Landroid/hardware/camera2/params/MeteringRectangle;

    iput-object v0, p0, Landroidx/camera/camera2/internal/FocusMeteringControl;->mAwbRects:[Landroid/hardware/camera2/params/MeteringRectangle;

    .line 751
    iput-boolean v1, p0, Landroidx/camera/camera2/internal/FocusMeteringControl;->mIsInAfAutoMode:Z

    .line 752
    iget-object v0, p0, Landroidx/camera/camera2/internal/FocusMeteringControl;->mCameraControl:Landroidx/camera/camera2/internal/Camera2CameraControl;

    invoke-virtual {v0}, Landroidx/camera/camera2/internal/Camera2CameraControl;->updateSessionConfig()V

    .line 753
    return-void
.end method

.method cancelFocusAndMeteringWithoutAsyncResult()V
    .locals 1

    .line 704
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/camera/camera2/internal/FocusMeteringControl;->cancelFocusAndMeteringInternal(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)V

    .line 705
    return-void
.end method

.method public synthetic lambda$cancelFocusAndMetering$6$FocusMeteringControl(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)V
    .locals 0
    .param p1, "completer"    # Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    .line 697
    invoke-virtual {p0, p1}, Landroidx/camera/camera2/internal/FocusMeteringControl;->cancelFocusAndMeteringInternal(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)V

    return-void
.end method

.method public synthetic lambda$cancelFocusAndMetering$7$FocusMeteringControl(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;
    .locals 2
    .param p1, "completer"    # Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 697
    iget-object v0, p0, Landroidx/camera/camera2/internal/FocusMeteringControl;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroidx/camera/camera2/internal/-$$Lambda$FocusMeteringControl$Bui6vmx_a8rzc50QrH6J8MZ0kh0;

    invoke-direct {v1, p0, p1}, Landroidx/camera/camera2/internal/-$$Lambda$FocusMeteringControl$Bui6vmx_a8rzc50QrH6J8MZ0kh0;-><init>(Landroidx/camera/camera2/internal/FocusMeteringControl;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 698
    const-string v0, "cancelFocusAndMetering"

    return-object v0
.end method

.method public synthetic lambda$cancelFocusAndMeteringInternal$8$FocusMeteringControl(ILandroid/hardware/camera2/TotalCaptureResult;)Z
    .locals 6
    .param p1, "targetAfMode"    # I
    .param p2, "captureResult"    # Landroid/hardware/camera2/TotalCaptureResult;

    .line 721
    sget-object v0, Landroid/hardware/camera2/CaptureResult;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p2, v0}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 722
    .local v0, "afMode":Ljava/lang/Integer;
    invoke-virtual {p2}, Landroid/hardware/camera2/TotalCaptureResult;->getRequest()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v1

    .line 724
    .local v1, "request":Landroid/hardware/camera2/CaptureRequest;
    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_REGIONS:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v1, v2}, Landroid/hardware/camera2/CaptureRequest;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/hardware/camera2/params/MeteringRectangle;

    .line 726
    .local v2, "afRegions":[Landroid/hardware/camera2/params/MeteringRectangle;
    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_REGIONS:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v1, v3}, Landroid/hardware/camera2/CaptureRequest;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/hardware/camera2/params/MeteringRectangle;

    .line 728
    .local v3, "aeRegions":[Landroid/hardware/camera2/params/MeteringRectangle;
    sget-object v4, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AWB_REGIONS:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 729
    invoke-virtual {v1, v4}, Landroid/hardware/camera2/CaptureRequest;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/hardware/camera2/params/MeteringRectangle;

    .line 731
    .local v4, "awbRegions":[Landroid/hardware/camera2/params/MeteringRectangle;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v5, p1, :cond_0

    iget-object v5, p0, Landroidx/camera/camera2/internal/FocusMeteringControl;->mDefaultAfRects:[Landroid/hardware/camera2/params/MeteringRectangle;

    .line 732
    invoke-static {v2, v5}, Landroidx/camera/camera2/internal/FocusMeteringControl;->hasEqualRegions([Landroid/hardware/camera2/params/MeteringRectangle;[Landroid/hardware/camera2/params/MeteringRectangle;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Landroidx/camera/camera2/internal/FocusMeteringControl;->mDefaultAeRects:[Landroid/hardware/camera2/params/MeteringRectangle;

    .line 733
    invoke-static {v3, v5}, Landroidx/camera/camera2/internal/FocusMeteringControl;->hasEqualRegions([Landroid/hardware/camera2/params/MeteringRectangle;[Landroid/hardware/camera2/params/MeteringRectangle;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Landroidx/camera/camera2/internal/FocusMeteringControl;->mDefaultAwbRects:[Landroid/hardware/camera2/params/MeteringRectangle;

    .line 734
    invoke-static {v4, v5}, Landroidx/camera/camera2/internal/FocusMeteringControl;->hasEqualRegions([Landroid/hardware/camera2/params/MeteringRectangle;[Landroid/hardware/camera2/params/MeteringRectangle;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 735
    invoke-direct {p0}, Landroidx/camera/camera2/internal/FocusMeteringControl;->completeCancelFuture()V

    .line 736
    const/4 v5, 0x1

    return v5

    .line 738
    :cond_0
    const/4 v5, 0x0

    return v5
.end method

.method public synthetic lambda$executeMeteringAction$3$FocusMeteringControl(Z[Landroid/hardware/camera2/params/MeteringRectangle;[Landroid/hardware/camera2/params/MeteringRectangle;[Landroid/hardware/camera2/params/MeteringRectangle;Landroid/hardware/camera2/TotalCaptureResult;)Z
    .locals 8
    .param p1, "isAfModeSupported"    # Z
    .param p2, "afRects"    # [Landroid/hardware/camera2/params/MeteringRectangle;
    .param p3, "aeRects"    # [Landroid/hardware/camera2/params/MeteringRectangle;
    .param p4, "awbRects"    # [Landroid/hardware/camera2/params/MeteringRectangle;
    .param p5, "result"    # Landroid/hardware/camera2/TotalCaptureResult;

    .line 626
    sget-object v0, Landroid/hardware/camera2/CaptureResult;->CONTROL_AF_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p5, v0}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 627
    .local v0, "afState":Ljava/lang/Integer;
    invoke-direct {p0}, Landroidx/camera/camera2/internal/FocusMeteringControl;->shouldTriggerAF()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_3

    .line 628
    if-eqz p1, :cond_2

    if-nez v0, :cond_0

    goto :goto_0

    .line 632
    :cond_0
    iget-object v1, p0, Landroidx/camera/camera2/internal/FocusMeteringControl;->mCurrentAfState:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v4, 0x3

    if-ne v1, v4, :cond_3

    .line 633
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v4, 0x4

    if-ne v1, v4, :cond_1

    .line 634
    iput-boolean v3, p0, Landroidx/camera/camera2/internal/FocusMeteringControl;->mIsFocusSuccessful:Z

    .line 635
    iput-boolean v3, p0, Landroidx/camera/camera2/internal/FocusMeteringControl;->mIsAutoFocusCompleted:Z

    goto :goto_1

    .line 636
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v4, 0x5

    if-ne v1, v4, :cond_3

    .line 638
    iput-boolean v2, p0, Landroidx/camera/camera2/internal/FocusMeteringControl;->mIsFocusSuccessful:Z

    .line 639
    iput-boolean v3, p0, Landroidx/camera/camera2/internal/FocusMeteringControl;->mIsAutoFocusCompleted:Z

    goto :goto_1

    .line 630
    :cond_2
    :goto_0
    iput-boolean v3, p0, Landroidx/camera/camera2/internal/FocusMeteringControl;->mIsFocusSuccessful:Z

    .line 631
    iput-boolean v3, p0, Landroidx/camera/camera2/internal/FocusMeteringControl;->mIsAutoFocusCompleted:Z

    .line 645
    :cond_3
    :goto_1
    iget-boolean v1, p0, Landroidx/camera/camera2/internal/FocusMeteringControl;->mIsAutoFocusCompleted:Z

    if-eqz v1, :cond_7

    invoke-virtual {p5}, Landroid/hardware/camera2/TotalCaptureResult;->getRequest()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 647
    array-length v1, p2

    if-eqz v1, :cond_4

    move-object v1, p2

    goto :goto_2

    :cond_4
    iget-object v1, p0, Landroidx/camera/camera2/internal/FocusMeteringControl;->mDefaultAfRects:[Landroid/hardware/camera2/params/MeteringRectangle;

    .line 649
    .local v1, "toMatchAfRegions":[Landroid/hardware/camera2/params/MeteringRectangle;
    :goto_2
    array-length v4, p3

    if-eqz v4, :cond_5

    move-object v4, p3

    goto :goto_3

    :cond_5
    iget-object v4, p0, Landroidx/camera/camera2/internal/FocusMeteringControl;->mDefaultAeRects:[Landroid/hardware/camera2/params/MeteringRectangle;

    .line 651
    .local v4, "toMatchAeRegions":[Landroid/hardware/camera2/params/MeteringRectangle;
    :goto_3
    array-length v5, p4

    if-eqz v5, :cond_6

    move-object v5, p4

    goto :goto_4

    :cond_6
    iget-object v5, p0, Landroidx/camera/camera2/internal/FocusMeteringControl;->mDefaultAwbRects:[Landroid/hardware/camera2/params/MeteringRectangle;

    .line 653
    .local v5, "toMatchAwbRegions":[Landroid/hardware/camera2/params/MeteringRectangle;
    :goto_4
    invoke-virtual {p5}, Landroid/hardware/camera2/TotalCaptureResult;->getRequest()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v6

    .line 654
    .local v6, "request":Landroid/hardware/camera2/CaptureRequest;
    sget-object v7, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_REGIONS:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v6, v7}, Landroid/hardware/camera2/CaptureRequest;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Landroid/hardware/camera2/params/MeteringRectangle;

    invoke-static {v7, v1}, Landroidx/camera/camera2/internal/FocusMeteringControl;->hasEqualRegions([Landroid/hardware/camera2/params/MeteringRectangle;[Landroid/hardware/camera2/params/MeteringRectangle;)Z

    move-result v7

    if-eqz v7, :cond_7

    sget-object v7, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_REGIONS:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 657
    invoke-virtual {v6, v7}, Landroid/hardware/camera2/CaptureRequest;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Landroid/hardware/camera2/params/MeteringRectangle;

    .line 656
    invoke-static {v7, v4}, Landroidx/camera/camera2/internal/FocusMeteringControl;->hasEqualRegions([Landroid/hardware/camera2/params/MeteringRectangle;[Landroid/hardware/camera2/params/MeteringRectangle;)Z

    move-result v7

    if-eqz v7, :cond_7

    sget-object v7, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AWB_REGIONS:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 659
    invoke-virtual {v6, v7}, Landroid/hardware/camera2/CaptureRequest;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Landroid/hardware/camera2/params/MeteringRectangle;

    .line 658
    invoke-static {v7, v5}, Landroidx/camera/camera2/internal/FocusMeteringControl;->hasEqualRegions([Landroid/hardware/camera2/params/MeteringRectangle;[Landroid/hardware/camera2/params/MeteringRectangle;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 662
    iget-boolean v2, p0, Landroidx/camera/camera2/internal/FocusMeteringControl;->mIsFocusSuccessful:Z

    invoke-direct {p0, v2}, Landroidx/camera/camera2/internal/FocusMeteringControl;->completeActionFuture(Z)V

    .line 663
    return v3

    .line 667
    .end local v1    # "toMatchAfRegions":[Landroid/hardware/camera2/params/MeteringRectangle;
    .end local v4    # "toMatchAeRegions":[Landroid/hardware/camera2/params/MeteringRectangle;
    .end local v5    # "toMatchAwbRegions":[Landroid/hardware/camera2/params/MeteringRectangle;
    .end local v6    # "request":Landroid/hardware/camera2/CaptureRequest;
    :cond_7
    iget-object v1, p0, Landroidx/camera/camera2/internal/FocusMeteringControl;->mCurrentAfState:Ljava/lang/Integer;

    invoke-virtual {v1, v0}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    if-eqz v0, :cond_8

    .line 668
    iput-object v0, p0, Landroidx/camera/camera2/internal/FocusMeteringControl;->mCurrentAfState:Ljava/lang/Integer;

    .line 670
    :cond_8
    return v2
.end method

.method public synthetic lambda$executeMeteringAction$4$FocusMeteringControl(J)V
    .locals 2
    .param p1, "timeoutId"    # J

    .line 678
    iget-wide v0, p0, Landroidx/camera/camera2/internal/FocusMeteringControl;->mFocusTimeoutCounter:J

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 679
    invoke-virtual {p0}, Landroidx/camera/camera2/internal/FocusMeteringControl;->cancelFocusAndMeteringWithoutAsyncResult()V

    .line 681
    :cond_0
    return-void
.end method

.method public synthetic lambda$executeMeteringAction$5$FocusMeteringControl(J)V
    .locals 2
    .param p1, "timeoutId"    # J

    .line 677
    iget-object v0, p0, Landroidx/camera/camera2/internal/FocusMeteringControl;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroidx/camera/camera2/internal/-$$Lambda$FocusMeteringControl$QDQ_s-ak03R5p4E1-ZO3ShzW4qo;

    invoke-direct {v1, p0, p1, p2}, Landroidx/camera/camera2/internal/-$$Lambda$FocusMeteringControl$QDQ_s-ak03R5p4E1-ZO3ShzW4qo;-><init>(Landroidx/camera/camera2/internal/FocusMeteringControl;J)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public synthetic lambda$setActive$0$FocusMeteringControl()V
    .locals 0

    .line 158
    invoke-virtual {p0}, Landroidx/camera/camera2/internal/FocusMeteringControl;->cancelFocusAndMeteringWithoutAsyncResult()V

    .line 159
    return-void
.end method

.method public synthetic lambda$startFocusAndMetering$1$FocusMeteringControl(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;Landroidx/camera/core/FocusMeteringAction;Landroid/util/Rational;)V
    .locals 0
    .param p1, "completer"    # Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;
    .param p2, "action"    # Landroidx/camera/core/FocusMeteringAction;
    .param p3, "defaultAspectRatio"    # Landroid/util/Rational;

    .line 258
    invoke-virtual {p0, p1, p2, p3}, Landroidx/camera/camera2/internal/FocusMeteringControl;->startFocusAndMeteringInternal(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;Landroidx/camera/core/FocusMeteringAction;Landroid/util/Rational;)V

    return-void
.end method

.method public synthetic lambda$startFocusAndMetering$2$FocusMeteringControl(Landroidx/camera/core/FocusMeteringAction;Landroid/util/Rational;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;
    .locals 2
    .param p1, "action"    # Landroidx/camera/core/FocusMeteringAction;
    .param p2, "defaultAspectRatio"    # Landroid/util/Rational;
    .param p3, "completer"    # Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 257
    iget-object v0, p0, Landroidx/camera/camera2/internal/FocusMeteringControl;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroidx/camera/camera2/internal/-$$Lambda$FocusMeteringControl$op3EKNHLPc_PTEcZjXwaEiMKsWc;

    invoke-direct {v1, p0, p3, p1, p2}, Landroidx/camera/camera2/internal/-$$Lambda$FocusMeteringControl$op3EKNHLPc_PTEcZjXwaEiMKsWc;-><init>(Landroidx/camera/camera2/internal/FocusMeteringControl;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;Landroidx/camera/core/FocusMeteringAction;Landroid/util/Rational;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 259
    const-string v0, "startFocusAndMetering"

    return-object v0
.end method

.method setActive(Z)V
    .locals 2
    .param p1, "isActive"    # Z

    .line 150
    iget-boolean v0, p0, Landroidx/camera/camera2/internal/FocusMeteringControl;->mIsActive:Z

    if-ne p1, v0, :cond_0

    .line 151
    return-void

    .line 154
    :cond_0
    iput-boolean p1, p0, Landroidx/camera/camera2/internal/FocusMeteringControl;->mIsActive:Z

    .line 156
    iget-boolean v0, p0, Landroidx/camera/camera2/internal/FocusMeteringControl;->mIsActive:Z

    if-nez v0, :cond_1

    .line 157
    iget-object v0, p0, Landroidx/camera/camera2/internal/FocusMeteringControl;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroidx/camera/camera2/internal/-$$Lambda$FocusMeteringControl$Fo24HuX4QgnBob7n82jQvBqN3XU;

    invoke-direct {v1, p0}, Landroidx/camera/camera2/internal/-$$Lambda$FocusMeteringControl$Fo24HuX4QgnBob7n82jQvBqN3XU;-><init>(Landroidx/camera/camera2/internal/FocusMeteringControl;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 161
    :cond_1
    return-void
.end method

.method setDefaultRequestBuilder(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 1
    .param p1, "builder"    # Landroid/hardware/camera2/CaptureRequest$Builder;

    .line 137
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_REGIONS:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/hardware/camera2/params/MeteringRectangle;

    iput-object v0, p0, Landroidx/camera/camera2/internal/FocusMeteringControl;->mDefaultAfRects:[Landroid/hardware/camera2/params/MeteringRectangle;

    .line 138
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_REGIONS:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/hardware/camera2/params/MeteringRectangle;

    iput-object v0, p0, Landroidx/camera/camera2/internal/FocusMeteringControl;->mDefaultAeRects:[Landroid/hardware/camera2/params/MeteringRectangle;

    .line 139
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AWB_REGIONS:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/hardware/camera2/params/MeteringRectangle;

    iput-object v0, p0, Landroidx/camera/camera2/internal/FocusMeteringControl;->mDefaultAwbRects:[Landroid/hardware/camera2/params/MeteringRectangle;

    .line 140
    return-void
.end method

.method startFocusAndMetering(Landroidx/camera/core/FocusMeteringAction;Landroid/util/Rational;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1
    .param p1, "action"    # Landroidx/camera/core/FocusMeteringAction;
    .param p2, "defaultAspectRatio"    # Landroid/util/Rational;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/camera/core/FocusMeteringAction;",
            "Landroid/util/Rational;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroidx/camera/core/FocusMeteringResult;",
            ">;"
        }
    .end annotation

    .line 256
    new-instance v0, Landroidx/camera/camera2/internal/-$$Lambda$FocusMeteringControl$Gz_st8wNW3AE79rbLhzPR3lH1sM;

    invoke-direct {v0, p0, p1, p2}, Landroidx/camera/camera2/internal/-$$Lambda$FocusMeteringControl$Gz_st8wNW3AE79rbLhzPR3lH1sM;-><init>(Landroidx/camera/camera2/internal/FocusMeteringControl;Landroidx/camera/core/FocusMeteringAction;Landroid/util/Rational;)V

    invoke-static {v0}, Landroidx/concurrent/futures/CallbackToFutureAdapter;->getFuture(Landroidx/concurrent/futures/CallbackToFutureAdapter$Resolver;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method startFocusAndMeteringInternal(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;Landroidx/camera/core/FocusMeteringAction;Landroid/util/Rational;)V
    .locals 20
    .param p2, "action"    # Landroidx/camera/core/FocusMeteringAction;
    .param p3, "defaultAspectRatio"    # Landroid/util/Rational;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer<",
            "Landroidx/camera/core/FocusMeteringResult;",
            ">;",
            "Landroidx/camera/core/FocusMeteringAction;",
            "Landroid/util/Rational;",
            ")V"
        }
    .end annotation

    .line 267
    .local p1, "completer":Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;, "Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer<Landroidx/camera/core/FocusMeteringResult;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-boolean v2, v0, Landroidx/camera/camera2/internal/FocusMeteringControl;->mIsActive:Z

    if-nez v2, :cond_0

    .line 268
    new-instance v2, Landroidx/camera/core/CameraControl$OperationCanceledException;

    const-string v3, "Camera is not active."

    invoke-direct {v2, v3}, Landroidx/camera/core/CameraControl$OperationCanceledException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->setException(Ljava/lang/Throwable;)Z

    .line 270
    return-void

    .line 273
    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroidx/camera/core/FocusMeteringAction;->getMeteringPointsAf()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 274
    invoke-virtual/range {p2 .. p2}, Landroidx/camera/core/FocusMeteringAction;->getMeteringPointsAe()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 275
    invoke-virtual/range {p2 .. p2}, Landroidx/camera/core/FocusMeteringAction;->getMeteringPointsAwb()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 276
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "No AF/AE/AWB MeteringPoints are added."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->setException(Ljava/lang/Throwable;)Z

    .line 278
    return-void

    .line 281
    :cond_1
    invoke-virtual/range {p2 .. p2}, Landroidx/camera/core/FocusMeteringAction;->getMeteringPointsAf()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    iget-object v3, v0, Landroidx/camera/camera2/internal/FocusMeteringControl;->mCameraControl:Landroidx/camera/camera2/internal/Camera2CameraControl;

    .line 282
    invoke-virtual {v3}, Landroidx/camera/camera2/internal/Camera2CameraControl;->getMaxAfRegionCount()I

    move-result v3

    .line 281
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 283
    .local v2, "supportedAfCount":I
    invoke-virtual/range {p2 .. p2}, Landroidx/camera/core/FocusMeteringAction;->getMeteringPointsAe()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    iget-object v4, v0, Landroidx/camera/camera2/internal/FocusMeteringControl;->mCameraControl:Landroidx/camera/camera2/internal/Camera2CameraControl;

    .line 284
    invoke-virtual {v4}, Landroidx/camera/camera2/internal/Camera2CameraControl;->getMaxAeRegionCount()I

    move-result v4

    .line 283
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 285
    .local v3, "supportedAeCount":I
    invoke-virtual/range {p2 .. p2}, Landroidx/camera/core/FocusMeteringAction;->getMeteringPointsAwb()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    iget-object v5, v0, Landroidx/camera/camera2/internal/FocusMeteringControl;->mCameraControl:Landroidx/camera/camera2/internal/Camera2CameraControl;

    .line 286
    invoke-virtual {v5}, Landroidx/camera/camera2/internal/Camera2CameraControl;->getMaxAwbRegionCount()I

    move-result v5

    .line 285
    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 287
    .local v4, "supportedAwbCount":I
    add-int v5, v2, v3

    add-int/2addr v5, v4

    .line 288
    .local v5, "totalSupportedCount":I
    if-gtz v5, :cond_2

    .line 289
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "None of the specified AF/AE/AWB MeteringPoints is supported on this camera."

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->setException(Ljava/lang/Throwable;)Z

    .line 292
    return-void

    .line 295
    :cond_2
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 296
    .local v6, "meteringPointListAF":Ljava/util/List;, "Ljava/util/List<Landroidx/camera/core/MeteringPoint;>;"
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 297
    .local v7, "meteringPointListAE":Ljava/util/List;, "Ljava/util/List<Landroidx/camera/core/MeteringPoint;>;"
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 298
    .local v8, "meteringPointListAWB":Ljava/util/List;, "Ljava/util/List<Landroidx/camera/core/MeteringPoint;>;"
    const/4 v9, 0x0

    if-lez v2, :cond_3

    .line 299
    invoke-virtual/range {p2 .. p2}, Landroidx/camera/core/FocusMeteringAction;->getMeteringPointsAf()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10, v9, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v10

    invoke-interface {v6, v10}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 301
    :cond_3
    if-lez v3, :cond_4

    .line 302
    invoke-virtual/range {p2 .. p2}, Landroidx/camera/core/FocusMeteringAction;->getMeteringPointsAe()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10, v9, v3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v10

    invoke-interface {v7, v10}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 304
    :cond_4
    if-lez v4, :cond_5

    .line 305
    invoke-virtual/range {p2 .. p2}, Landroidx/camera/core/FocusMeteringAction;->getMeteringPointsAwb()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10, v9, v4}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v10

    invoke-interface {v8, v10}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 309
    :cond_5
    iget-object v10, v0, Landroidx/camera/camera2/internal/FocusMeteringControl;->mCameraControl:Landroidx/camera/camera2/internal/Camera2CameraControl;

    invoke-virtual {v10}, Landroidx/camera/camera2/internal/Camera2CameraControl;->getCropSensorRegion()Landroid/graphics/Rect;

    move-result-object v10

    .line 310
    .local v10, "cropSensorRegion":Landroid/graphics/Rect;
    new-instance v11, Landroid/util/Rational;

    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    move-result v12

    .line 311
    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    move-result v13

    invoke-direct {v11, v12, v13}, Landroid/util/Rational;-><init>(II)V

    .line 313
    .local v11, "cropRegionAspectRatio":Landroid/util/Rational;
    if-nez p3, :cond_6

    .line 314
    move-object v12, v11

    .end local p3    # "defaultAspectRatio":Landroid/util/Rational;
    .local v12, "defaultAspectRatio":Landroid/util/Rational;
    goto :goto_0

    .line 313
    .end local v12    # "defaultAspectRatio":Landroid/util/Rational;
    .restart local p3    # "defaultAspectRatio":Landroid/util/Rational;
    :cond_6
    move-object/from16 v12, p3

    .line 317
    .end local p3    # "defaultAspectRatio":Landroid/util/Rational;
    .restart local v12    # "defaultAspectRatio":Landroid/util/Rational;
    :goto_0
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 318
    .local v13, "meteringRectanglesListAF":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/params/MeteringRectangle;>;"
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 319
    .local v14, "meteringRectanglesListAE":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/params/MeteringRectangle;>;"
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 321
    .local v15, "meteringRectanglesListAWB":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/params/MeteringRectangle;>;"
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_1
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_a

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v9, v17

    check-cast v9, Landroidx/camera/core/MeteringPoint;

    .line 322
    .local v9, "meteringPoint":Landroidx/camera/core/MeteringPoint;
    invoke-direct {v0, v9}, Landroidx/camera/camera2/internal/FocusMeteringControl;->isValid(Landroidx/camera/core/MeteringPoint;)Z

    move-result v17

    if-nez v17, :cond_7

    .line 323
    const/4 v9, 0x0

    goto :goto_1

    .line 325
    :cond_7
    move/from16 v17, v2

    .end local v2    # "supportedAfCount":I
    .local v17, "supportedAfCount":I
    invoke-direct {v0, v9, v11, v12}, Landroidx/camera/camera2/internal/FocusMeteringControl;->getFovAdjustedPoint(Landroidx/camera/core/MeteringPoint;Landroid/util/Rational;Landroid/util/Rational;)Landroid/graphics/PointF;

    move-result-object v2

    .line 327
    .local v2, "adjustedPoint":Landroid/graphics/PointF;
    move/from16 v18, v3

    .end local v3    # "supportedAeCount":I
    .local v18, "supportedAeCount":I
    invoke-direct {v0, v9, v2, v10}, Landroidx/camera/camera2/internal/FocusMeteringControl;->getMeteringRect(Landroidx/camera/core/MeteringPoint;Landroid/graphics/PointF;Landroid/graphics/Rect;)Landroid/hardware/camera2/params/MeteringRectangle;

    move-result-object v3

    .line 329
    .local v3, "meteringRectangle":Landroid/hardware/camera2/params/MeteringRectangle;
    invoke-virtual {v3}, Landroid/hardware/camera2/params/MeteringRectangle;->getWidth()I

    move-result v19

    if-eqz v19, :cond_9

    invoke-virtual {v3}, Landroid/hardware/camera2/params/MeteringRectangle;->getHeight()I

    move-result v19

    if-nez v19, :cond_8

    .line 330
    move/from16 v2, v17

    move/from16 v3, v18

    const/4 v9, 0x0

    goto :goto_1

    .line 332
    :cond_8
    invoke-interface {v13, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 333
    .end local v2    # "adjustedPoint":Landroid/graphics/PointF;
    .end local v3    # "meteringRectangle":Landroid/hardware/camera2/params/MeteringRectangle;
    .end local v9    # "meteringPoint":Landroidx/camera/core/MeteringPoint;
    move/from16 v2, v17

    move/from16 v3, v18

    const/4 v9, 0x0

    goto :goto_1

    .line 329
    .restart local v2    # "adjustedPoint":Landroid/graphics/PointF;
    .restart local v3    # "meteringRectangle":Landroid/hardware/camera2/params/MeteringRectangle;
    .restart local v9    # "meteringPoint":Landroidx/camera/core/MeteringPoint;
    :cond_9
    move/from16 v2, v17

    move/from16 v3, v18

    const/4 v9, 0x0

    goto :goto_1

    .line 335
    .end local v9    # "meteringPoint":Landroidx/camera/core/MeteringPoint;
    .end local v17    # "supportedAfCount":I
    .end local v18    # "supportedAeCount":I
    .local v2, "supportedAfCount":I
    .local v3, "supportedAeCount":I
    :cond_a
    move/from16 v17, v2

    move/from16 v18, v3

    .end local v2    # "supportedAfCount":I
    .end local v3    # "supportedAeCount":I
    .restart local v17    # "supportedAfCount":I
    .restart local v18    # "supportedAeCount":I
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/camera/core/MeteringPoint;

    .line 336
    .local v3, "meteringPoint":Landroidx/camera/core/MeteringPoint;
    invoke-direct {v0, v3}, Landroidx/camera/camera2/internal/FocusMeteringControl;->isValid(Landroidx/camera/core/MeteringPoint;)Z

    move-result v9

    if-nez v9, :cond_b

    .line 337
    goto :goto_2

    .line 339
    :cond_b
    invoke-direct {v0, v3, v11, v12}, Landroidx/camera/camera2/internal/FocusMeteringControl;->getFovAdjustedPoint(Landroidx/camera/core/MeteringPoint;Landroid/util/Rational;Landroid/util/Rational;)Landroid/graphics/PointF;

    move-result-object v9

    .line 341
    .local v9, "adjustedPoint":Landroid/graphics/PointF;
    move-object/from16 p3, v2

    invoke-direct {v0, v3, v9, v10}, Landroidx/camera/camera2/internal/FocusMeteringControl;->getMeteringRect(Landroidx/camera/core/MeteringPoint;Landroid/graphics/PointF;Landroid/graphics/Rect;)Landroid/hardware/camera2/params/MeteringRectangle;

    move-result-object v2

    .line 343
    .local v2, "meteringRectangle":Landroid/hardware/camera2/params/MeteringRectangle;
    invoke-virtual {v2}, Landroid/hardware/camera2/params/MeteringRectangle;->getWidth()I

    move-result v16

    if-eqz v16, :cond_d

    invoke-virtual {v2}, Landroid/hardware/camera2/params/MeteringRectangle;->getHeight()I

    move-result v16

    if-nez v16, :cond_c

    .line 344
    move-object/from16 v2, p3

    goto :goto_2

    .line 346
    :cond_c
    invoke-interface {v14, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 347
    .end local v2    # "meteringRectangle":Landroid/hardware/camera2/params/MeteringRectangle;
    .end local v3    # "meteringPoint":Landroidx/camera/core/MeteringPoint;
    .end local v9    # "adjustedPoint":Landroid/graphics/PointF;
    move-object/from16 v2, p3

    goto :goto_2

    .line 343
    .restart local v2    # "meteringRectangle":Landroid/hardware/camera2/params/MeteringRectangle;
    .restart local v3    # "meteringPoint":Landroidx/camera/core/MeteringPoint;
    .restart local v9    # "adjustedPoint":Landroid/graphics/PointF;
    :cond_d
    move-object/from16 v2, p3

    goto :goto_2

    .line 349
    .end local v2    # "meteringRectangle":Landroid/hardware/camera2/params/MeteringRectangle;
    .end local v3    # "meteringPoint":Landroidx/camera/core/MeteringPoint;
    .end local v9    # "adjustedPoint":Landroid/graphics/PointF;
    :cond_e
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_12

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/camera/core/MeteringPoint;

    .line 350
    .restart local v3    # "meteringPoint":Landroidx/camera/core/MeteringPoint;
    invoke-direct {v0, v3}, Landroidx/camera/camera2/internal/FocusMeteringControl;->isValid(Landroidx/camera/core/MeteringPoint;)Z

    move-result v9

    if-nez v9, :cond_f

    .line 351
    goto :goto_3

    .line 353
    :cond_f
    invoke-direct {v0, v3, v11, v12}, Landroidx/camera/camera2/internal/FocusMeteringControl;->getFovAdjustedPoint(Landroidx/camera/core/MeteringPoint;Landroid/util/Rational;Landroid/util/Rational;)Landroid/graphics/PointF;

    move-result-object v9

    .line 355
    .restart local v9    # "adjustedPoint":Landroid/graphics/PointF;
    move-object/from16 p3, v2

    invoke-direct {v0, v3, v9, v10}, Landroidx/camera/camera2/internal/FocusMeteringControl;->getMeteringRect(Landroidx/camera/core/MeteringPoint;Landroid/graphics/PointF;Landroid/graphics/Rect;)Landroid/hardware/camera2/params/MeteringRectangle;

    move-result-object v2

    .line 357
    .restart local v2    # "meteringRectangle":Landroid/hardware/camera2/params/MeteringRectangle;
    invoke-virtual {v2}, Landroid/hardware/camera2/params/MeteringRectangle;->getWidth()I

    move-result v16

    if-eqz v16, :cond_11

    invoke-virtual {v2}, Landroid/hardware/camera2/params/MeteringRectangle;->getHeight()I

    move-result v16

    if-nez v16, :cond_10

    .line 358
    move-object/from16 v2, p3

    goto :goto_3

    .line 360
    :cond_10
    invoke-interface {v15, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 361
    .end local v2    # "meteringRectangle":Landroid/hardware/camera2/params/MeteringRectangle;
    .end local v3    # "meteringPoint":Landroidx/camera/core/MeteringPoint;
    .end local v9    # "adjustedPoint":Landroid/graphics/PointF;
    move-object/from16 v2, p3

    goto :goto_3

    .line 357
    .restart local v2    # "meteringRectangle":Landroid/hardware/camera2/params/MeteringRectangle;
    .restart local v3    # "meteringPoint":Landroidx/camera/core/MeteringPoint;
    .restart local v9    # "adjustedPoint":Landroid/graphics/PointF;
    :cond_11
    move-object/from16 v2, p3

    goto :goto_3

    .line 363
    .end local v2    # "meteringRectangle":Landroid/hardware/camera2/params/MeteringRectangle;
    .end local v3    # "meteringPoint":Landroidx/camera/core/MeteringPoint;
    .end local v9    # "adjustedPoint":Landroid/graphics/PointF;
    :cond_12
    invoke-interface {v13}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_13

    .line 364
    invoke-interface {v14}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_13

    .line 365
    invoke-interface {v15}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_13

    .line 366
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "None of the specified AF/AE/AWB MeteringPoints are valid."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->setException(Ljava/lang/Throwable;)Z

    .line 369
    return-void

    .line 372
    :cond_13
    const-string v2, "Cancelled by another startFocusAndMetering()"

    invoke-direct {v0, v2}, Landroidx/camera/camera2/internal/FocusMeteringControl;->failActionFuture(Ljava/lang/String;)V

    .line 373
    invoke-direct {v0, v2}, Landroidx/camera/camera2/internal/FocusMeteringControl;->failCancelFuture(Ljava/lang/String;)V

    .line 374
    invoke-direct/range {p0 .. p0}, Landroidx/camera/camera2/internal/FocusMeteringControl;->disableAutoCancel()V

    .line 375
    iput-object v1, v0, Landroidx/camera/camera2/internal/FocusMeteringControl;->mRunningActionCompleter:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    .line 377
    const/4 v2, 0x0

    new-array v3, v2, [Landroid/hardware/camera2/params/MeteringRectangle;

    .line 378
    invoke-interface {v13, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/hardware/camera2/params/MeteringRectangle;

    new-array v9, v2, [Landroid/hardware/camera2/params/MeteringRectangle;

    .line 379
    invoke-interface {v14, v9}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Landroid/hardware/camera2/params/MeteringRectangle;

    new-array v2, v2, [Landroid/hardware/camera2/params/MeteringRectangle;

    .line 380
    invoke-interface {v15, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/hardware/camera2/params/MeteringRectangle;

    .line 377
    move-object/from16 v1, p2

    invoke-direct {v0, v3, v9, v2, v1}, Landroidx/camera/camera2/internal/FocusMeteringControl;->executeMeteringAction([Landroid/hardware/camera2/params/MeteringRectangle;[Landroid/hardware/camera2/params/MeteringRectangle;[Landroid/hardware/camera2/params/MeteringRectangle;Landroidx/camera/core/FocusMeteringAction;)V

    .line 383
    return-void
.end method

.method triggerAePrecapture(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer<",
            "Landroidx/camera/core/impl/CameraCaptureResult;",
            ">;)V"
        }
    .end annotation

    .line 449
    .local p1, "completer":Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;, "Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer<Landroidx/camera/core/impl/CameraCaptureResult;>;"
    iget-boolean v0, p0, Landroidx/camera/camera2/internal/FocusMeteringControl;->mIsActive:Z

    if-nez v0, :cond_1

    .line 450
    if-eqz p1, :cond_0

    .line 451
    new-instance v0, Landroidx/camera/core/CameraControl$OperationCanceledException;

    const-string v1, "Camera is not active."

    invoke-direct {v0, v1}, Landroidx/camera/core/CameraControl$OperationCanceledException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->setException(Ljava/lang/Throwable;)Z

    .line 454
    :cond_0
    return-void

    .line 457
    :cond_1
    new-instance v0, Landroidx/camera/core/impl/CaptureConfig$Builder;

    invoke-direct {v0}, Landroidx/camera/core/impl/CaptureConfig$Builder;-><init>()V

    .line 458
    .local v0, "builder":Landroidx/camera/core/impl/CaptureConfig$Builder;
    invoke-direct {p0}, Landroidx/camera/camera2/internal/FocusMeteringControl;->getDefaultTemplate()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/camera/core/impl/CaptureConfig$Builder;->setTemplateType(I)V

    .line 459
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/camera/core/impl/CaptureConfig$Builder;->setUseRepeatingSurface(Z)V

    .line 460
    new-instance v2, Landroidx/camera/camera2/impl/Camera2ImplConfig$Builder;

    invoke-direct {v2}, Landroidx/camera/camera2/impl/Camera2ImplConfig$Builder;-><init>()V

    .line 461
    .local v2, "configBuilder":Landroidx/camera/camera2/impl/Camera2ImplConfig$Builder;
    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_PRECAPTURE_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 462
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 461
    invoke-virtual {v2, v3, v1}, Landroidx/camera/camera2/impl/Camera2ImplConfig$Builder;->setCaptureRequestOption(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Landroidx/camera/camera2/impl/Camera2ImplConfig$Builder;

    .line 463
    invoke-virtual {v2}, Landroidx/camera/camera2/impl/Camera2ImplConfig$Builder;->build()Landroidx/camera/camera2/impl/Camera2ImplConfig;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/camera/core/impl/CaptureConfig$Builder;->addImplementationOptions(Landroidx/camera/core/impl/Config;)V

    .line 464
    new-instance v1, Landroidx/camera/camera2/internal/FocusMeteringControl$2;

    invoke-direct {v1, p0, p1}, Landroidx/camera/camera2/internal/FocusMeteringControl$2;-><init>(Landroidx/camera/camera2/internal/FocusMeteringControl;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)V

    invoke-virtual {v0, v1}, Landroidx/camera/core/impl/CaptureConfig$Builder;->addCameraCaptureCallback(Landroidx/camera/core/impl/CameraCaptureCallback;)V

    .line 488
    iget-object v1, p0, Landroidx/camera/camera2/internal/FocusMeteringControl;->mCameraControl:Landroidx/camera/camera2/internal/Camera2CameraControl;

    invoke-virtual {v0}, Landroidx/camera/core/impl/CaptureConfig$Builder;->build()Landroidx/camera/core/impl/CaptureConfig;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroidx/camera/camera2/internal/Camera2CameraControl;->submitCaptureRequestsInternal(Ljava/util/List;)V

    .line 489
    return-void
.end method

.method triggerAf(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer<",
            "Landroidx/camera/core/impl/CameraCaptureResult;",
            ">;)V"
        }
    .end annotation

    .line 398
    .local p1, "completer":Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;, "Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer<Landroidx/camera/core/impl/CameraCaptureResult;>;"
    iget-boolean v0, p0, Landroidx/camera/camera2/internal/FocusMeteringControl;->mIsActive:Z

    if-nez v0, :cond_1

    .line 399
    if-eqz p1, :cond_0

    .line 400
    new-instance v0, Landroidx/camera/core/CameraControl$OperationCanceledException;

    const-string v1, "Camera is not active."

    invoke-direct {v0, v1}, Landroidx/camera/core/CameraControl$OperationCanceledException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->setException(Ljava/lang/Throwable;)Z

    .line 403
    :cond_0
    return-void

    .line 406
    :cond_1
    new-instance v0, Landroidx/camera/core/impl/CaptureConfig$Builder;

    invoke-direct {v0}, Landroidx/camera/core/impl/CaptureConfig$Builder;-><init>()V

    .line 407
    .local v0, "builder":Landroidx/camera/core/impl/CaptureConfig$Builder;
    invoke-direct {p0}, Landroidx/camera/camera2/internal/FocusMeteringControl;->getDefaultTemplate()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/camera/core/impl/CaptureConfig$Builder;->setTemplateType(I)V

    .line 408
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/camera/core/impl/CaptureConfig$Builder;->setUseRepeatingSurface(Z)V

    .line 409
    new-instance v2, Landroidx/camera/camera2/impl/Camera2ImplConfig$Builder;

    invoke-direct {v2}, Landroidx/camera/camera2/impl/Camera2ImplConfig$Builder;-><init>()V

    .line 410
    .local v2, "configBuilder":Landroidx/camera/camera2/impl/Camera2ImplConfig$Builder;
    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 411
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 410
    invoke-virtual {v2, v3, v1}, Landroidx/camera/camera2/impl/Camera2ImplConfig$Builder;->setCaptureRequestOption(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Landroidx/camera/camera2/impl/Camera2ImplConfig$Builder;

    .line 412
    invoke-virtual {v2}, Landroidx/camera/camera2/impl/Camera2ImplConfig$Builder;->build()Landroidx/camera/camera2/impl/Camera2ImplConfig;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/camera/core/impl/CaptureConfig$Builder;->addImplementationOptions(Landroidx/camera/core/impl/Config;)V

    .line 413
    new-instance v1, Landroidx/camera/camera2/internal/FocusMeteringControl$1;

    invoke-direct {v1, p0, p1}, Landroidx/camera/camera2/internal/FocusMeteringControl$1;-><init>(Landroidx/camera/camera2/internal/FocusMeteringControl;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)V

    invoke-virtual {v0, v1}, Landroidx/camera/core/impl/CaptureConfig$Builder;->addCameraCaptureCallback(Landroidx/camera/core/impl/CameraCaptureCallback;)V

    .line 438
    iget-object v1, p0, Landroidx/camera/camera2/internal/FocusMeteringControl;->mCameraControl:Landroidx/camera/camera2/internal/Camera2CameraControl;

    invoke-virtual {v0}, Landroidx/camera/core/impl/CaptureConfig$Builder;->build()Landroidx/camera/core/impl/CaptureConfig;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroidx/camera/camera2/internal/Camera2CameraControl;->submitCaptureRequestsInternal(Ljava/util/List;)V

    .line 439
    return-void
.end method
