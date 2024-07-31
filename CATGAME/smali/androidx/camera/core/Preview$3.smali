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
    .param p1, "this$0"    # Landroidx/camera/core/Preview;

    .line 275
    iput-object p1, p0, Landroidx/camera/core/Preview$3;->this$0:Landroidx/camera/core/Preview;

    iput-object p2, p0, Landroidx/camera/core/Preview$3;->val$surfaceRequest:Landroidx/camera/core/SurfaceRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$onSuccess$0(Landroidx/camera/core/Preview$SurfaceProvider;Landroidx/camera/core/SurfaceRequest;)V
    .locals 0
    .param p0, "surfaceProvider"    # Landroidx/camera/core/Preview$SurfaceProvider;
    .param p1, "surfaceRequest"    # Landroidx/camera/core/SurfaceRequest;

    .line 285
    invoke-interface {p0, p1}, Landroidx/camera/core/Preview$SurfaceProvider;->onSurfaceRequested(Landroidx/camera/core/SurfaceRequest;)V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "t"    # Ljava/lang/Throwable;

    .line 291
    iget-object v0, p0, Landroidx/camera/core/Preview$3;->val$surfaceRequest:Landroidx/camera/core/SurfaceRequest;

    invoke-virtual {v0}, Landroidx/camera/core/SurfaceRequest;->getDeferrableSurface()Landroidx/camera/core/impl/DeferrableSurface;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/camera/core/impl/DeferrableSurface;->close()V

    .line 292
    return-void
.end method

.method public onSuccess(Landroid/util/Pair;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair<",
            "Landroidx/camera/core/Preview$SurfaceProvider;",
            "Ljava/util/concurrent/Executor;",
            ">;)V"
        }
    .end annotation

    .line 278
    .local p1, "result":Landroid/util/Pair;, "Landroid/util/Pair<Landroidx/camera/core/Preview$SurfaceProvider;Ljava/util/concurrent/Executor;>;"
    if-nez p1, :cond_0

    .line 279
    return-void

    .line 282
    :cond_0
    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Landroidx/camera/core/Preview$SurfaceProvider;

    .line 283
    .local v0, "surfaceProvider":Landroidx/camera/core/Preview$SurfaceProvider;
    iget-object v1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/util/concurrent/Executor;

    .line 284
    .local v1, "executor":Ljava/util/concurrent/Executor;
    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    .line 285
    iget-object v2, p0, Landroidx/camera/core/Preview$3;->val$surfaceRequest:Landroidx/camera/core/SurfaceRequest;

    new-instance v3, Landroidx/camera/core/-$$Lambda$Preview$3$4Z76LKiBtW3vebT-a72VPXQU9_4;

    invoke-direct {v3, v0, v2}, Landroidx/camera/core/-$$Lambda$Preview$3$4Z76LKiBtW3vebT-a72VPXQU9_4;-><init>(Landroidx/camera/core/Preview$SurfaceProvider;Landroidx/camera/core/SurfaceRequest;)V

    invoke-interface {v1, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 287
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
