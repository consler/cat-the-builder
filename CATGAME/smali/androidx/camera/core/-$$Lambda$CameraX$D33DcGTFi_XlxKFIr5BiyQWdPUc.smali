.class public final synthetic Landroidx/camera/core/-$$Lambda$CameraX$D33DcGTFi_XlxKFIr5BiyQWdPUc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/concurrent/futures/CallbackToFutureAdapter$Resolver;


# instance fields
.field public final synthetic f$0:Landroidx/camera/core/CameraX;

.field public final synthetic f$1:Ljava/util/concurrent/Executor;

.field public final synthetic f$2:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/core/CameraX;Ljava/util/concurrent/Executor;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/core/-$$Lambda$CameraX$D33DcGTFi_XlxKFIr5BiyQWdPUc;->f$0:Landroidx/camera/core/CameraX;

    iput-object p2, p0, Landroidx/camera/core/-$$Lambda$CameraX$D33DcGTFi_XlxKFIr5BiyQWdPUc;->f$1:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Landroidx/camera/core/-$$Lambda$CameraX$D33DcGTFi_XlxKFIr5BiyQWdPUc;->f$2:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final attachCompleter(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Landroidx/camera/core/-$$Lambda$CameraX$D33DcGTFi_XlxKFIr5BiyQWdPUc;->f$0:Landroidx/camera/core/CameraX;

    iget-object v1, p0, Landroidx/camera/core/-$$Lambda$CameraX$D33DcGTFi_XlxKFIr5BiyQWdPUc;->f$1:Ljava/util/concurrent/Executor;

    iget-object v2, p0, Landroidx/camera/core/-$$Lambda$CameraX$D33DcGTFi_XlxKFIr5BiyQWdPUc;->f$2:Landroid/content/Context;

    invoke-virtual {v0, v1, v2, p1}, Landroidx/camera/core/CameraX;->lambda$initInternal$8$CameraX(Ljava/util/concurrent/Executor;Landroid/content/Context;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
