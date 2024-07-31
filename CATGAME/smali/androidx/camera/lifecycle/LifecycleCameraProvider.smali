.class interface abstract Landroidx/camera/lifecycle/LifecycleCameraProvider;
.super Ljava/lang/Object;
.source "LifecycleCameraProvider.java"


# virtual methods
.method public abstract hasCamera(Landroidx/camera/core/CameraSelector;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/camera/core/CameraInfoUnavailableException;
        }
    .end annotation
.end method

.method public abstract isBound(Landroidx/camera/core/UseCase;)Z
.end method

.method public varargs abstract unbind([Landroidx/camera/core/UseCase;)V
.end method

.method public abstract unbindAll()V
.end method
