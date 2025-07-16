.class final Landroidx/camera/camera2/internal/CaptureCallbackConverter;
.super Ljava/lang/Object;
.source "CaptureCallbackConverter.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static toCaptureCallback(Landroidx/camera/core/impl/CameraCaptureCallback;)Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 43
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 44
    invoke-static {p0, v0}, Landroidx/camera/camera2/internal/CaptureCallbackConverter;->toCaptureCallback(Landroidx/camera/core/impl/CameraCaptureCallback;Ljava/util/List;)V

    .line 45
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_1

    const/4 p0, 0x0

    .line 46
    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    goto :goto_0

    .line 47
    :cond_1
    invoke-static {v0}, Landroidx/camera/camera2/internal/Camera2CaptureCallbacks;->createComboCallback(Ljava/util/List;)Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method static toCaptureCallback(Landroidx/camera/core/impl/CameraCaptureCallback;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/camera/core/impl/CameraCaptureCallback;",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;",
            ">;)V"
        }
    .end annotation

    .line 63
    instance-of v0, p0, Landroidx/camera/core/impl/CameraCaptureCallbacks$ComboCameraCaptureCallback;

    if-eqz v0, :cond_0

    .line 65
    check-cast p0, Landroidx/camera/core/impl/CameraCaptureCallbacks$ComboCameraCaptureCallback;

    .line 67
    invoke-virtual {p0}, Landroidx/camera/core/impl/CameraCaptureCallbacks$ComboCameraCaptureCallback;->getCallbacks()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/camera/core/impl/CameraCaptureCallback;

    .line 68
    invoke-static {v0, p1}, Landroidx/camera/camera2/internal/CaptureCallbackConverter;->toCaptureCallback(Landroidx/camera/core/impl/CameraCaptureCallback;Ljava/util/List;)V

    goto :goto_0

    .line 70
    :cond_0
    instance-of v0, p0, Landroidx/camera/camera2/internal/CaptureCallbackContainer;

    if-eqz v0, :cond_1

    .line 72
    check-cast p0, Landroidx/camera/camera2/internal/CaptureCallbackContainer;

    .line 74
    invoke-virtual {p0}, Landroidx/camera/camera2/internal/CaptureCallbackContainer;->getCaptureCallback()Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 77
    :cond_1
    new-instance v0, Landroidx/camera/camera2/internal/CaptureCallbackAdapter;

    invoke-direct {v0, p0}, Landroidx/camera/camera2/internal/CaptureCallbackAdapter;-><init>(Landroidx/camera/core/impl/CameraCaptureCallback;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_1
    return-void
.end method
