.class public final synthetic Landroidx/camera/core/-$$Lambda$CameraX$RpN6H_GOvlkTaYOxBF7oFPOEV_4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/concurrent/futures/CallbackToFutureAdapter$Resolver;


# instance fields
.field public final synthetic f$0:Landroidx/camera/core/CameraX;


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/core/CameraX;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/core/-$$Lambda$CameraX$RpN6H_GOvlkTaYOxBF7oFPOEV_4;->f$0:Landroidx/camera/core/CameraX;

    return-void
.end method


# virtual methods
.method public final attachCompleter(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroidx/camera/core/-$$Lambda$CameraX$RpN6H_GOvlkTaYOxBF7oFPOEV_4;->f$0:Landroidx/camera/core/CameraX;

    invoke-static {v0, p1}, Landroidx/camera/core/CameraX;->lambda$shutdownLocked$5(Landroidx/camera/core/CameraX;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
