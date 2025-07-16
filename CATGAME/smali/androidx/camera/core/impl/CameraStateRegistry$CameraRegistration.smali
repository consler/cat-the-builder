.class Landroidx/camera/core/impl/CameraStateRegistry$CameraRegistration;
.super Ljava/lang/Object;
.source "CameraStateRegistry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/core/impl/CameraStateRegistry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CameraRegistration"
.end annotation


# instance fields
.field private final mCameraAvailableListener:Landroidx/camera/core/impl/CameraStateRegistry$OnOpenAvailableListener;

.field private final mNotifyExecutor:Ljava/util/concurrent/Executor;

.field private mState:Landroidx/camera/core/impl/CameraInternal$State;


# direct methods
.method constructor <init>(Landroidx/camera/core/impl/CameraInternal$State;Ljava/util/concurrent/Executor;Landroidx/camera/core/impl/CameraStateRegistry$OnOpenAvailableListener;)V
    .locals 0

    .line 295
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 296
    iput-object p1, p0, Landroidx/camera/core/impl/CameraStateRegistry$CameraRegistration;->mState:Landroidx/camera/core/impl/CameraInternal$State;

    .line 297
    iput-object p2, p0, Landroidx/camera/core/impl/CameraStateRegistry$CameraRegistration;->mNotifyExecutor:Ljava/util/concurrent/Executor;

    .line 298
    iput-object p3, p0, Landroidx/camera/core/impl/CameraStateRegistry$CameraRegistration;->mCameraAvailableListener:Landroidx/camera/core/impl/CameraStateRegistry$OnOpenAvailableListener;

    return-void
.end method


# virtual methods
.method getState()Landroidx/camera/core/impl/CameraInternal$State;
    .locals 1

    .line 308
    iget-object v0, p0, Landroidx/camera/core/impl/CameraStateRegistry$CameraRegistration;->mState:Landroidx/camera/core/impl/CameraInternal$State;

    return-object v0
.end method

.method notifyListener()V
    .locals 3

    .line 313
    :try_start_0
    iget-object v0, p0, Landroidx/camera/core/impl/CameraStateRegistry$CameraRegistration;->mNotifyExecutor:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Landroidx/camera/core/impl/CameraStateRegistry$CameraRegistration;->mCameraAvailableListener:Landroidx/camera/core/impl/CameraStateRegistry$OnOpenAvailableListener;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Landroidx/camera/core/impl/CameraStateRegistry$CameraRegistration$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1}, Landroidx/camera/core/impl/CameraStateRegistry$CameraRegistration$$ExternalSyntheticLambda0;-><init>(Landroidx/camera/core/impl/CameraStateRegistry$OnOpenAvailableListener;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "CameraStateRegistry"

    const-string v2, "Unable to notify camera."

    .line 315
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method setState(Landroidx/camera/core/impl/CameraInternal$State;)Landroidx/camera/core/impl/CameraInternal$State;
    .locals 1

    .line 302
    iget-object v0, p0, Landroidx/camera/core/impl/CameraStateRegistry$CameraRegistration;->mState:Landroidx/camera/core/impl/CameraInternal$State;

    .line 303
    iput-object p1, p0, Landroidx/camera/core/impl/CameraStateRegistry$CameraRegistration;->mState:Landroidx/camera/core/impl/CameraInternal$State;

    return-object v0
.end method
