.class public final synthetic Landroidx/camera/camera2/interop/-$$Lambda$Camera2CameraFilter$mh7N2Lu6R4FWWbPCYNntr5DkJdE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/camera/core/CameraFilter;


# instance fields
.field public final synthetic f$0:Landroidx/camera/camera2/interop/Camera2CameraFilter$Camera2Filter;


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/camera2/interop/Camera2CameraFilter$Camera2Filter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/camera2/interop/-$$Lambda$Camera2CameraFilter$mh7N2Lu6R4FWWbPCYNntr5DkJdE;->f$0:Landroidx/camera/camera2/interop/Camera2CameraFilter$Camera2Filter;

    return-void
.end method


# virtual methods
.method public final filter(Ljava/util/LinkedHashSet;)Ljava/util/LinkedHashSet;
    .locals 1

    iget-object v0, p0, Landroidx/camera/camera2/interop/-$$Lambda$Camera2CameraFilter$mh7N2Lu6R4FWWbPCYNntr5DkJdE;->f$0:Landroidx/camera/camera2/interop/Camera2CameraFilter$Camera2Filter;

    invoke-static {v0, p1}, Landroidx/camera/camera2/interop/Camera2CameraFilter;->lambda$createCameraFilter$0(Landroidx/camera/camera2/interop/Camera2CameraFilter$Camera2Filter;Ljava/util/LinkedHashSet;)Ljava/util/LinkedHashSet;

    move-result-object p1

    return-object p1
.end method
