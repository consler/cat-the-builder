.class public final Landroidx/camera/core/SurfaceRequest;
.super Ljava/lang/Object;
.source "SurfaceRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/core/SurfaceRequest$Result;,
        Landroidx/camera/core/SurfaceRequest$RequestCancelledException;
    }
.end annotation


# instance fields
.field private final mCamera:Landroidx/camera/core/Camera;

.field private mInternalDeferrableSurface:Landroidx/camera/core/impl/DeferrableSurface;

.field private final mRequestCancellationCompleter:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private final mResolution:Landroid/util/Size;

.field private final mSessionStatusFuture:Lcom/google/common/util/concurrent/ListenableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private final mSurfaceCompleter:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer<",
            "Landroid/view/Surface;",
            ">;"
        }
    .end annotation
.end field

.field final mSurfaceFuture:Lcom/google/common/util/concurrent/ListenableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroid/view/Surface;",
            ">;"
        }
    .end annotation
.end field

.field private final mViewPortRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/util/Size;Landroidx/camera/core/Camera;Landroid/graphics/Rect;)V
    .locals 4

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    iput-object p1, p0, Landroidx/camera/core/SurfaceRequest;->mResolution:Landroid/util/Size;

    .line 89
    iput-object p2, p0, Landroidx/camera/core/SurfaceRequest;->mCamera:Landroidx/camera/core/Camera;

    if-eqz p3, :cond_0

    goto :goto_0

    .line 91
    :cond_0
    new-instance p3, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result p2

    .line 92
    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p3, v1, v1, p2, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    :goto_0
    iput-object p3, p0, Landroidx/camera/core/SurfaceRequest;->mViewPortRect:Landroid/graphics/Rect;

    .line 101
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "SurfaceRequest[size: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ", id: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 102
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "]"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 103
    new-instance p2, Ljava/util/concurrent/atomic/AtomicReference;

    const/4 p3, 0x0

    invoke-direct {p2, p3}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    .line 105
    new-instance v0, Landroidx/camera/core/SurfaceRequest$$ExternalSyntheticLambda2;

    invoke-direct {v0, p2, p1}, Landroidx/camera/core/SurfaceRequest$$ExternalSyntheticLambda2;-><init>(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/String;)V

    .line 106
    invoke-static {v0}, Landroidx/concurrent/futures/CallbackToFutureAdapter;->getFuture(Landroidx/concurrent/futures/CallbackToFutureAdapter$Resolver;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    .line 111
    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    invoke-static {p2}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    .line 112
    iput-object p2, p0, Landroidx/camera/core/SurfaceRequest;->mRequestCancellationCompleter:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    .line 116
    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v1, p3}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    .line 118
    new-instance v2, Landroidx/camera/core/SurfaceRequest$$ExternalSyntheticLambda3;

    invoke-direct {v2, v1, p1}, Landroidx/camera/core/SurfaceRequest$$ExternalSyntheticLambda3;-><init>(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/String;)V

    invoke-static {v2}, Landroidx/concurrent/futures/CallbackToFutureAdapter;->getFuture(Landroidx/concurrent/futures/CallbackToFutureAdapter$Resolver;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v2

    iput-object v2, p0, Landroidx/camera/core/SurfaceRequest;->mSessionStatusFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 123
    new-instance v3, Landroidx/camera/core/SurfaceRequest$1;

    invoke-direct {v3, p0, p2, v0}, Landroidx/camera/core/SurfaceRequest$1;-><init>(Landroidx/camera/core/SurfaceRequest;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;Lcom/google/common/util/concurrent/ListenableFuture;)V

    .line 143
    invoke-static {}, Landroidx/camera/core/impl/utils/executor/CameraXExecutors;->directExecutor()Ljava/util/concurrent/Executor;

    move-result-object p2

    .line 123
    invoke-static {v2, v3, p2}, Landroidx/camera/core/impl/utils/futures/Futures;->addCallback(Lcom/google/common/util/concurrent/ListenableFuture;Landroidx/camera/core/impl/utils/futures/FutureCallback;Ljava/util/concurrent/Executor;)V

    .line 148
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    invoke-static {p2}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    .line 149
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0, p3}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    .line 151
    new-instance p3, Landroidx/camera/core/SurfaceRequest$$ExternalSyntheticLambda4;

    invoke-direct {p3, v0, p1}, Landroidx/camera/core/SurfaceRequest$$ExternalSyntheticLambda4;-><init>(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/String;)V

    invoke-static {p3}, Landroidx/concurrent/futures/CallbackToFutureAdapter;->getFuture(Landroidx/concurrent/futures/CallbackToFutureAdapter$Resolver;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p3

    iput-object p3, p0, Landroidx/camera/core/SurfaceRequest;->mSurfaceFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 155
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    invoke-static {v0}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    iput-object v0, p0, Landroidx/camera/core/SurfaceRequest;->mSurfaceCompleter:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    .line 159
    new-instance v0, Landroidx/camera/core/SurfaceRequest$2;

    invoke-direct {v0, p0}, Landroidx/camera/core/SurfaceRequest$2;-><init>(Landroidx/camera/core/SurfaceRequest;)V

    iput-object v0, p0, Landroidx/camera/core/SurfaceRequest;->mInternalDeferrableSurface:Landroidx/camera/core/impl/DeferrableSurface;

    .line 167
    invoke-virtual {v0}, Landroidx/camera/core/impl/DeferrableSurface;->getTerminationFuture()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    .line 170
    new-instance v1, Landroidx/camera/core/SurfaceRequest$3;

    invoke-direct {v1, p0, v0, p2, p1}, Landroidx/camera/core/SurfaceRequest$3;-><init>(Landroidx/camera/core/SurfaceRequest;Lcom/google/common/util/concurrent/ListenableFuture;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;Ljava/lang/String;)V

    .line 194
    invoke-static {}, Landroidx/camera/core/impl/utils/executor/CameraXExecutors;->directExecutor()Ljava/util/concurrent/Executor;

    move-result-object p1

    .line 170
    invoke-static {p3, v1, p1}, Landroidx/camera/core/impl/utils/futures/Futures;->addCallback(Lcom/google/common/util/concurrent/ListenableFuture;Landroidx/camera/core/impl/utils/futures/FutureCallback;Ljava/util/concurrent/Executor;)V

    .line 201
    new-instance p1, Landroidx/camera/core/SurfaceRequest$$ExternalSyntheticLambda5;

    invoke-direct {p1, p0}, Landroidx/camera/core/SurfaceRequest$$ExternalSyntheticLambda5;-><init>(Landroidx/camera/core/SurfaceRequest;)V

    .line 202
    invoke-static {}, Landroidx/camera/core/impl/utils/executor/CameraXExecutors;->directExecutor()Ljava/util/concurrent/Executor;

    move-result-object p2

    .line 201
    invoke-interface {v0, p1, p2}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method static synthetic lambda$new$0(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/String;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 107
    invoke-virtual {p0, p2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 108
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, "-cancellation"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$new$1(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/String;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 119
    invoke-virtual {p0, p2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 120
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, "-status"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$new$2(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/String;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 152
    invoke-virtual {p0, p2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 153
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, "-Surface"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$provideSurface$4(Landroidx/core/util/Consumer;Landroid/view/Surface;)V
    .locals 1

    const/4 v0, 0x3

    .line 322
    invoke-static {v0, p1}, Landroidx/camera/core/SurfaceRequest$Result;->of(ILandroid/view/Surface;)Landroidx/camera/core/SurfaceRequest$Result;

    move-result-object p1

    .line 321
    invoke-interface {p0, p1}, Landroidx/core/util/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$provideSurface$5(Landroidx/core/util/Consumer;Landroid/view/Surface;)V
    .locals 1

    const/4 v0, 0x4

    .line 326
    invoke-static {v0, p1}, Landroidx/camera/core/SurfaceRequest$Result;->of(ILandroid/view/Surface;)Landroidx/camera/core/SurfaceRequest$Result;

    move-result-object p1

    .line 325
    invoke-interface {p0, p1}, Landroidx/core/util/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public addRequestCancellationListener(Ljava/util/concurrent/Executor;Ljava/lang/Runnable;)V
    .locals 1

    .line 395
    iget-object v0, p0, Landroidx/camera/core/SurfaceRequest;->mRequestCancellationCompleter:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    invoke-virtual {v0, p2, p1}, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->addCancellationListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public getCamera()Landroidx/camera/core/Camera;
    .locals 1

    .line 242
    iget-object v0, p0, Landroidx/camera/core/SurfaceRequest;->mCamera:Landroidx/camera/core/Camera;

    return-object v0
.end method

.method public getCropRect()Landroid/graphics/Rect;
    .locals 1

    .line 261
    iget-object v0, p0, Landroidx/camera/core/SurfaceRequest;->mViewPortRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getDeferrableSurface()Landroidx/camera/core/impl/DeferrableSurface;
    .locals 1

    .line 214
    iget-object v0, p0, Landroidx/camera/core/SurfaceRequest;->mInternalDeferrableSurface:Landroidx/camera/core/impl/DeferrableSurface;

    return-object v0
.end method

.method public getResolution()Landroid/util/Size;
    .locals 1

    .line 231
    iget-object v0, p0, Landroidx/camera/core/SurfaceRequest;->mResolution:Landroid/util/Size;

    return-object v0
.end method

.method synthetic lambda$new$3$androidx-camera-core-SurfaceRequest()V
    .locals 2

    .line 201
    iget-object v0, p0, Landroidx/camera/core/SurfaceRequest;->mSurfaceFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/google/common/util/concurrent/ListenableFuture;->cancel(Z)Z

    return-void
.end method

.method public provideSurface(Landroid/view/Surface;Ljava/util/concurrent/Executor;Landroidx/core/util/Consumer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/Surface;",
            "Ljava/util/concurrent/Executor;",
            "Landroidx/core/util/Consumer<",
            "Landroidx/camera/core/SurfaceRequest$Result;",
            ">;)V"
        }
    .end annotation

    .line 296
    iget-object v0, p0, Landroidx/camera/core/SurfaceRequest;->mSurfaceCompleter:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    invoke-virtual {v0, p1}, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->set(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroidx/camera/core/SurfaceRequest;->mSurfaceFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-interface {v0}, Lcom/google/common/util/concurrent/ListenableFuture;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 316
    :cond_0
    iget-object v0, p0, Landroidx/camera/core/SurfaceRequest;->mSurfaceFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-interface {v0}, Lcom/google/common/util/concurrent/ListenableFuture;->isDone()Z

    move-result v0

    invoke-static {v0}, Landroidx/core/util/Preconditions;->checkState(Z)V

    .line 318
    :try_start_0
    iget-object v0, p0, Landroidx/camera/core/SurfaceRequest;->mSurfaceFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-interface {v0}, Lcom/google/common/util/concurrent/ListenableFuture;->get()Ljava/lang/Object;

    .line 320
    new-instance v0, Landroidx/camera/core/SurfaceRequest$$ExternalSyntheticLambda0;

    invoke-direct {v0, p3, p1}, Landroidx/camera/core/SurfaceRequest$$ExternalSyntheticLambda0;-><init>(Landroidx/core/util/Consumer;Landroid/view/Surface;)V

    invoke-interface {p2, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 324
    :catch_0
    new-instance v0, Landroidx/camera/core/SurfaceRequest$$ExternalSyntheticLambda1;

    invoke-direct {v0, p3, p1}, Landroidx/camera/core/SurfaceRequest$$ExternalSyntheticLambda1;-><init>(Landroidx/core/util/Consumer;Landroid/view/Surface;)V

    invoke-interface {p2, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 299
    :cond_1
    :goto_0
    iget-object v0, p0, Landroidx/camera/core/SurfaceRequest;->mSessionStatusFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    new-instance v1, Landroidx/camera/core/SurfaceRequest$4;

    invoke-direct {v1, p0, p3, p1}, Landroidx/camera/core/SurfaceRequest$4;-><init>(Landroidx/camera/core/SurfaceRequest;Landroidx/core/util/Consumer;Landroid/view/Surface;)V

    invoke-static {v0, v1, p2}, Landroidx/camera/core/impl/utils/futures/Futures;->addCallback(Lcom/google/common/util/concurrent/ListenableFuture;Landroidx/camera/core/impl/utils/futures/FutureCallback;Ljava/util/concurrent/Executor;)V

    :goto_1
    return-void
.end method

.method public willNotProvideSurface()Z
    .locals 3

    .line 354
    iget-object v0, p0, Landroidx/camera/core/SurfaceRequest;->mSurfaceCompleter:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    new-instance v1, Landroidx/camera/core/impl/DeferrableSurface$SurfaceUnavailableException;

    const-string v2, "Surface request will not complete."

    invoke-direct {v1, v2}, Landroidx/camera/core/impl/DeferrableSurface$SurfaceUnavailableException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->setException(Ljava/lang/Throwable;)Z

    move-result v0

    return v0
.end method
