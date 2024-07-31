.class final Landroidx/camera/core/AndroidImageProxy$PlaneProxy;
.super Ljava/lang/Object;
.source "AndroidImageProxy.java"

# interfaces
.implements Landroidx/camera/core/ImageProxy$PlaneProxy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/core/AndroidImageProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PlaneProxy"
.end annotation


# instance fields
.field private final mPlane:Landroid/media/Image$Plane;


# direct methods
.method constructor <init>(Landroid/media/Image$Plane;)V
    .locals 0
    .param p1, "plane"    # Landroid/media/Image$Plane;

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    iput-object p1, p0, Landroidx/camera/core/AndroidImageProxy$PlaneProxy;->mPlane:Landroid/media/Image$Plane;

    .line 104
    return-void
.end method


# virtual methods
.method public declared-synchronized getBuffer()Ljava/nio/ByteBuffer;
    .locals 1

    monitor-enter p0

    .line 119
    :try_start_0
    iget-object v0, p0, Landroidx/camera/core/AndroidImageProxy$PlaneProxy;->mPlane:Landroid/media/Image$Plane;

    invoke-virtual {v0}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 119
    .end local p0    # "this":Landroidx/camera/core/AndroidImageProxy$PlaneProxy;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getPixelStride()I
    .locals 1

    monitor-enter p0

    .line 113
    :try_start_0
    iget-object v0, p0, Landroidx/camera/core/AndroidImageProxy$PlaneProxy;->mPlane:Landroid/media/Image$Plane;

    invoke-virtual {v0}, Landroid/media/Image$Plane;->getPixelStride()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 113
    .end local p0    # "this":Landroidx/camera/core/AndroidImageProxy$PlaneProxy;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getRowStride()I
    .locals 1

    monitor-enter p0

    .line 108
    :try_start_0
    iget-object v0, p0, Landroidx/camera/core/AndroidImageProxy$PlaneProxy;->mPlane:Landroid/media/Image$Plane;

    invoke-virtual {v0}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 108
    .end local p0    # "this":Landroidx/camera/core/AndroidImageProxy$PlaneProxy;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
