.class public final synthetic Landroidx/camera/core/-$$Lambda$CameraX$PC4SOFGjuqUVT4bexY644vLmWFE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroidx/camera/core/CameraX;

.field public final synthetic f$1:Landroid/content/Context;

.field public final synthetic f$2:Ljava/util/concurrent/Executor;

.field public final synthetic f$3:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/core/CameraX;Landroid/content/Context;Ljava/util/concurrent/Executor;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/core/-$$Lambda$CameraX$PC4SOFGjuqUVT4bexY644vLmWFE;->f$0:Landroidx/camera/core/CameraX;

    iput-object p2, p0, Landroidx/camera/core/-$$Lambda$CameraX$PC4SOFGjuqUVT4bexY644vLmWFE;->f$1:Landroid/content/Context;

    iput-object p3, p0, Landroidx/camera/core/-$$Lambda$CameraX$PC4SOFGjuqUVT4bexY644vLmWFE;->f$2:Ljava/util/concurrent/Executor;

    iput-object p4, p0, Landroidx/camera/core/-$$Lambda$CameraX$PC4SOFGjuqUVT4bexY644vLmWFE;->f$3:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Landroidx/camera/core/-$$Lambda$CameraX$PC4SOFGjuqUVT4bexY644vLmWFE;->f$0:Landroidx/camera/core/CameraX;

    iget-object v1, p0, Landroidx/camera/core/-$$Lambda$CameraX$PC4SOFGjuqUVT4bexY644vLmWFE;->f$1:Landroid/content/Context;

    iget-object v2, p0, Landroidx/camera/core/-$$Lambda$CameraX$PC4SOFGjuqUVT4bexY644vLmWFE;->f$2:Ljava/util/concurrent/Executor;

    iget-object v3, p0, Landroidx/camera/core/-$$Lambda$CameraX$PC4SOFGjuqUVT4bexY644vLmWFE;->f$3:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    invoke-virtual {v0, v1, v2, v3}, Landroidx/camera/core/CameraX;->lambda$initInternal$7$CameraX(Landroid/content/Context;Ljava/util/concurrent/Executor;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)V

    return-void
.end method
