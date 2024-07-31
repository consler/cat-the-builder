.class public final synthetic Landroidx/camera/camera2/internal/-$$Lambda$ZoomControl$Drb-7VorNRO23tcp0rNs8amFoh4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/concurrent/futures/CallbackToFutureAdapter$Resolver;


# instance fields
.field public final synthetic f$0:Landroidx/camera/camera2/internal/ZoomControl;

.field public final synthetic f$1:Landroid/graphics/Rect;


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/camera2/internal/ZoomControl;Landroid/graphics/Rect;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/camera2/internal/-$$Lambda$ZoomControl$Drb-7VorNRO23tcp0rNs8amFoh4;->f$0:Landroidx/camera/camera2/internal/ZoomControl;

    iput-object p2, p0, Landroidx/camera/camera2/internal/-$$Lambda$ZoomControl$Drb-7VorNRO23tcp0rNs8amFoh4;->f$1:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public final attachCompleter(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Landroidx/camera/camera2/internal/-$$Lambda$ZoomControl$Drb-7VorNRO23tcp0rNs8amFoh4;->f$0:Landroidx/camera/camera2/internal/ZoomControl;

    iget-object v1, p0, Landroidx/camera/camera2/internal/-$$Lambda$ZoomControl$Drb-7VorNRO23tcp0rNs8amFoh4;->f$1:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, p1}, Landroidx/camera/camera2/internal/ZoomControl;->lambda$submitCameraZoomRatio$0$ZoomControl(Landroid/graphics/Rect;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
