.class public final synthetic Landroidx/camera/core/-$$Lambda$CameraX$zGjevt7sTF6HDnDgHdMdO95T0_g;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/camera/core/impl/utils/futures/AsyncFunction;


# instance fields
.field public final synthetic f$0:Landroidx/camera/core/CameraX;

.field public final synthetic f$1:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/core/CameraX;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/core/-$$Lambda$CameraX$zGjevt7sTF6HDnDgHdMdO95T0_g;->f$0:Landroidx/camera/core/CameraX;

    iput-object p2, p0, Landroidx/camera/core/-$$Lambda$CameraX$zGjevt7sTF6HDnDgHdMdO95T0_g;->f$1:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2

    iget-object v0, p0, Landroidx/camera/core/-$$Lambda$CameraX$zGjevt7sTF6HDnDgHdMdO95T0_g;->f$0:Landroidx/camera/core/CameraX;

    iget-object v1, p0, Landroidx/camera/core/-$$Lambda$CameraX$zGjevt7sTF6HDnDgHdMdO95T0_g;->f$1:Landroid/content/Context;

    check-cast p1, Ljava/lang/Void;

    invoke-static {v0, v1, p1}, Landroidx/camera/core/CameraX;->lambda$initializeInstanceLocked$2(Landroidx/camera/core/CameraX;Landroid/content/Context;Ljava/lang/Void;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method
