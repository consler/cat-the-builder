.class public final synthetic Landroidx/camera/camera2/internal/-$$Lambda$Camera2CameraImpl$c55wJ4MPpfiWkHRPerKOlb9dxzY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/camera2/internal/-$$Lambda$Camera2CameraImpl$c55wJ4MPpfiWkHRPerKOlb9dxzY;->f$0:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Landroidx/camera/camera2/internal/-$$Lambda$Camera2CameraImpl$c55wJ4MPpfiWkHRPerKOlb9dxzY;->f$0:Ljava/util/List;

    invoke-static {v0}, Landroidx/camera/camera2/internal/Camera2CameraImpl;->lambda$notifyStateDetachedToUseCases$13(Ljava/util/List;)V

    return-void
.end method
