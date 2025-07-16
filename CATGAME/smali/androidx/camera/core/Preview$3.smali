.class Landroidx/camera/core/Preview$3;
.super Ljava/lang/Object;
.source "Preview.java"

# interfaces
.implements Landroidx/camera/core/impl/utils/futures/FutureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/camera/core/Preview;->setUpSurfaceProviderWrap(Landroidx/camera/core/SurfaceRequest;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/camera/core/impl/utils/futures/FutureCallback<",
        "Landroid/util/Pair<",
        "Landroidx/camera/core/Preview$SurfaceProvider;",
        "Ljava/util/concurrent/Executor;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/camera/core/Preview;

.field final synthetic val$surfaceRequest:Landroidx/camera/core/SurfaceRequest;


# direct methods
.method constructor <init>(Landroidx/camera/core/Preview;Landroidx/camera/core/SurfaceRequest;)V
    .locals 0

    .line 275
    iput-object p1, p0, Landroidx/camera/core/Preview$3;->this$0:Landroidx/camera/core/Preview;

    iput-object p2, p0, Landroidx/camera/core/Preview$3;->val$surfaceRequest:Landroidx/camera/core/SurfaceRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$onSuccess$0(Landroidx/camera/core/Preview$SurfaceProvider;Landroidx/camera/core/SurfaceRequest;)V
    .locals 0

    .line 285
    invoke-interface {p0, p1}, Landroidx/camera/core/Preview$SurfaceProvider;->onSurfaceRequested(Landroidx/camera/core/SurfaceRequest;)V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;)V
    .locals 0

    .line 291
    iget-object p1, p0, Landroidx/camera/core/Preview$3;->val$surfaceRequest:Landroidx/camera/core/SurfaceRequest;

    invoke-virtual {p1}, Landroidx/camera/core/SurfaceRequest;->getDeferrableSurface()Landroidx/camera/core/impl/DeferrableSurface;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/camera/core/impl/DeferrableSurface;->close()V

    return-void
.end method

.method public onSuccess(Landroid/util/Pair;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair<",
            "Landroidx/camera/core/Preview$SurfaceProvider;",
            "Ljava/util/concurrent/Executor;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 282
    :cond_0
    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Landroidx/camera/core/Preview$SurfaceProvider;

    .line 283
    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/util/concurrent/Executor;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 285
    iget-object v1, p0, Landroidx/camera/core/Preview$3;->val$surfaceRequest:Landroidx/camera/core/SurfaceRequest;

    new-instance v2, Landroidx/camera/core/Preview$3$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0, v1}, Landroidx/camera/core/Preview$3$$ExternalSyntheticLambda0;-><init>(Landroidx/camera/core/Preview$SurfaceProvider;Landroidx/camera/core/SurfaceRequest;)V

    invoke-interface {p1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 275
    check-cast p1, Landroid/util/Pair;

    invoke-virtual {p0, p1}, Landroidx/camera/core/Preview$3;->onSuccess(Landroid/util/Pair;)V

    return-void
.end method
