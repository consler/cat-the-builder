.class final Landroidx/camera/camera2/internal/Camera2CameraControl$CameraCaptureCallbackSet;
.super Landroidx/camera/core/impl/CameraCaptureCallback;
.source "Camera2CameraControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/camera2/internal/Camera2CameraControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "CameraCaptureCallbackSet"
.end annotation


# instance fields
.field mCallbackExecutors:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroidx/camera/core/impl/CameraCaptureCallback;",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation
.end field

.field mCallbacks:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroidx/camera/core/impl/CameraCaptureCallback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .line 582
    invoke-direct {p0}, Landroidx/camera/core/impl/CameraCaptureCallback;-><init>()V

    .line 583
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroidx/camera/camera2/internal/Camera2CameraControl$CameraCaptureCallbackSet;->mCallbacks:Ljava/util/Set;

    .line 584
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroidx/camera/camera2/internal/Camera2CameraControl$CameraCaptureCallbackSet;->mCallbackExecutors:Ljava/util/Map;

    return-void
.end method

.method static synthetic lambda$onCaptureCancelled$2(Landroidx/camera/core/impl/CameraCaptureCallback;)V
    .locals 0
    .param p0, "callback"    # Landroidx/camera/core/impl/CameraCaptureCallback;

    .line 633
    invoke-virtual {p0}, Landroidx/camera/core/impl/CameraCaptureCallback;->onCaptureCancelled()V

    .line 634
    return-void
.end method

.method static synthetic lambda$onCaptureCompleted$0(Landroidx/camera/core/impl/CameraCaptureCallback;Landroidx/camera/core/impl/CameraCaptureResult;)V
    .locals 0
    .param p0, "callback"    # Landroidx/camera/core/impl/CameraCaptureCallback;
    .param p1, "cameraCaptureResult"    # Landroidx/camera/core/impl/CameraCaptureResult;

    .line 605
    invoke-virtual {p0, p1}, Landroidx/camera/core/impl/CameraCaptureCallback;->onCaptureCompleted(Landroidx/camera/core/impl/CameraCaptureResult;)V

    .line 606
    return-void
.end method

.method static synthetic lambda$onCaptureFailed$1(Landroidx/camera/core/impl/CameraCaptureCallback;Landroidx/camera/core/impl/CameraCaptureFailure;)V
    .locals 0
    .param p0, "callback"    # Landroidx/camera/core/impl/CameraCaptureCallback;
    .param p1, "failure"    # Landroidx/camera/core/impl/CameraCaptureFailure;

    .line 619
    invoke-virtual {p0, p1}, Landroidx/camera/core/impl/CameraCaptureCallback;->onCaptureFailed(Landroidx/camera/core/impl/CameraCaptureFailure;)V

    .line 620
    return-void
.end method


# virtual methods
.method addCaptureCallback(Ljava/util/concurrent/Executor;Landroidx/camera/core/impl/CameraCaptureCallback;)V
    .locals 1
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "callback"    # Landroidx/camera/core/impl/CameraCaptureCallback;

    .line 589
    iget-object v0, p0, Landroidx/camera/camera2/internal/Camera2CameraControl$CameraCaptureCallbackSet;->mCallbacks:Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 590
    iget-object v0, p0, Landroidx/camera/camera2/internal/Camera2CameraControl$CameraCaptureCallbackSet;->mCallbackExecutors:Ljava/util/Map;

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 591
    return-void
.end method

.method public onCaptureCancelled()V
    .locals 5

    .line 630
    iget-object v0, p0, Landroidx/camera/camera2/internal/Camera2CameraControl$CameraCaptureCallbackSet;->mCallbacks:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/camera/core/impl/CameraCaptureCallback;

    .line 632
    .local v1, "callback":Landroidx/camera/core/impl/CameraCaptureCallback;
    :try_start_0
    iget-object v2, p0, Landroidx/camera/camera2/internal/Camera2CameraControl$CameraCaptureCallbackSet;->mCallbackExecutors:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/Executor;

    new-instance v3, Landroidx/camera/camera2/internal/-$$Lambda$Camera2CameraControl$CameraCaptureCallbackSet$rwnowJaR0rTqAvqzQggRKxKF0jc;

    invoke-direct {v3, v1}, Landroidx/camera/camera2/internal/-$$Lambda$Camera2CameraControl$CameraCaptureCallbackSet$rwnowJaR0rTqAvqzQggRKxKF0jc;-><init>(Landroidx/camera/core/impl/CameraCaptureCallback;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 637
    goto :goto_1

    .line 635
    :catch_0
    move-exception v2

    .line 636
    .local v2, "e":Ljava/util/concurrent/RejectedExecutionException;
    const-string v3, "Camera2CameraControl"

    const-string v4, "Executor rejected to invoke onCaptureCancelled."

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 638
    .end local v1    # "callback":Landroidx/camera/core/impl/CameraCaptureCallback;
    .end local v2    # "e":Ljava/util/concurrent/RejectedExecutionException;
    :goto_1
    goto :goto_0

    .line 639
    :cond_0
    return-void
.end method

.method public onCaptureCompleted(Landroidx/camera/core/impl/CameraCaptureResult;)V
    .locals 5
    .param p1, "cameraCaptureResult"    # Landroidx/camera/core/impl/CameraCaptureResult;

    .line 602
    iget-object v0, p0, Landroidx/camera/camera2/internal/Camera2CameraControl$CameraCaptureCallbackSet;->mCallbacks:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/camera/core/impl/CameraCaptureCallback;

    .line 604
    .local v1, "callback":Landroidx/camera/core/impl/CameraCaptureCallback;
    :try_start_0
    iget-object v2, p0, Landroidx/camera/camera2/internal/Camera2CameraControl$CameraCaptureCallbackSet;->mCallbackExecutors:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/Executor;

    new-instance v3, Landroidx/camera/camera2/internal/-$$Lambda$Camera2CameraControl$CameraCaptureCallbackSet$w0Rqa-UkCHSqHwweFl8JeVvrhr4;

    invoke-direct {v3, v1, p1}, Landroidx/camera/camera2/internal/-$$Lambda$Camera2CameraControl$CameraCaptureCallbackSet$w0Rqa-UkCHSqHwweFl8JeVvrhr4;-><init>(Landroidx/camera/core/impl/CameraCaptureCallback;Landroidx/camera/core/impl/CameraCaptureResult;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 609
    goto :goto_1

    .line 607
    :catch_0
    move-exception v2

    .line 608
    .local v2, "e":Ljava/util/concurrent/RejectedExecutionException;
    const-string v3, "Camera2CameraControl"

    const-string v4, "Executor rejected to invoke onCaptureCompleted."

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 610
    .end local v1    # "callback":Landroidx/camera/core/impl/CameraCaptureCallback;
    .end local v2    # "e":Ljava/util/concurrent/RejectedExecutionException;
    :goto_1
    goto :goto_0

    .line 611
    :cond_0
    return-void
.end method

.method public onCaptureFailed(Landroidx/camera/core/impl/CameraCaptureFailure;)V
    .locals 5
    .param p1, "failure"    # Landroidx/camera/core/impl/CameraCaptureFailure;

    .line 616
    iget-object v0, p0, Landroidx/camera/camera2/internal/Camera2CameraControl$CameraCaptureCallbackSet;->mCallbacks:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/camera/core/impl/CameraCaptureCallback;

    .line 618
    .local v1, "callback":Landroidx/camera/core/impl/CameraCaptureCallback;
    :try_start_0
    iget-object v2, p0, Landroidx/camera/camera2/internal/Camera2CameraControl$CameraCaptureCallbackSet;->mCallbackExecutors:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/Executor;

    new-instance v3, Landroidx/camera/camera2/internal/-$$Lambda$Camera2CameraControl$CameraCaptureCallbackSet$PYNNtxWEYACZB4jFztc5CT7l5Us;

    invoke-direct {v3, v1, p1}, Landroidx/camera/camera2/internal/-$$Lambda$Camera2CameraControl$CameraCaptureCallbackSet$PYNNtxWEYACZB4jFztc5CT7l5Us;-><init>(Landroidx/camera/core/impl/CameraCaptureCallback;Landroidx/camera/core/impl/CameraCaptureFailure;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 623
    goto :goto_1

    .line 621
    :catch_0
    move-exception v2

    .line 622
    .local v2, "e":Ljava/util/concurrent/RejectedExecutionException;
    const-string v3, "Camera2CameraControl"

    const-string v4, "Executor rejected to invoke onCaptureFailed."

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 624
    .end local v1    # "callback":Landroidx/camera/core/impl/CameraCaptureCallback;
    .end local v2    # "e":Ljava/util/concurrent/RejectedExecutionException;
    :goto_1
    goto :goto_0

    .line 625
    :cond_0
    return-void
.end method

.method removeCaptureCallback(Landroidx/camera/core/impl/CameraCaptureCallback;)V
    .locals 1
    .param p1, "callback"    # Landroidx/camera/core/impl/CameraCaptureCallback;

    .line 595
    iget-object v0, p0, Landroidx/camera/camera2/internal/Camera2CameraControl$CameraCaptureCallbackSet;->mCallbacks:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 596
    iget-object v0, p0, Landroidx/camera/camera2/internal/Camera2CameraControl$CameraCaptureCallbackSet;->mCallbackExecutors:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 597
    return-void
.end method
