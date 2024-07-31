.class public Landroidx/camera/core/impl/LensFacingCameraFilter;
.super Ljava/lang/Object;
.source "LensFacingCameraFilter.java"

# interfaces
.implements Landroidx/camera/core/CameraFilter;


# instance fields
.field private mLensFacing:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "lensFacing"    # I

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput p1, p0, Landroidx/camera/core/impl/LensFacingCameraFilter;->mLensFacing:I

    .line 39
    return-void
.end method


# virtual methods
.method public filter(Ljava/util/LinkedHashSet;)Ljava/util/LinkedHashSet;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedHashSet<",
            "Landroidx/camera/core/Camera;",
            ">;)",
            "Ljava/util/LinkedHashSet<",
            "Landroidx/camera/core/Camera;",
            ">;"
        }
    .end annotation

    .line 44
    .local p1, "cameras":Ljava/util/LinkedHashSet;, "Ljava/util/LinkedHashSet<Landroidx/camera/core/Camera;>;"
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 45
    .local v0, "resultCameras":Ljava/util/LinkedHashSet;, "Ljava/util/LinkedHashSet<Landroidx/camera/core/Camera;>;"
    invoke-virtual {p1}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/camera/core/Camera;

    .line 46
    .local v2, "camera":Landroidx/camera/core/Camera;
    instance-of v3, v2, Landroidx/camera/core/impl/CameraInternal;

    const-string v4, "The camera doesn\'t contain internal implementation."

    invoke-static {v3, v4}, Landroidx/core/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 48
    move-object v3, v2

    check-cast v3, Landroidx/camera/core/impl/CameraInternal;

    invoke-interface {v3}, Landroidx/camera/core/impl/CameraInternal;->getCameraInfoInternal()Landroidx/camera/core/impl/CameraInfoInternal;

    move-result-object v3

    invoke-interface {v3}, Landroidx/camera/core/impl/CameraInfoInternal;->getLensFacing()Ljava/lang/Integer;

    move-result-object v3

    .line 49
    .local v3, "lensFacing":Ljava/lang/Integer;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget v5, p0, Landroidx/camera/core/impl/LensFacingCameraFilter;->mLensFacing:I

    if-ne v4, v5, :cond_0

    .line 50
    invoke-virtual {v0, v2}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 52
    .end local v2    # "camera":Landroidx/camera/core/Camera;
    .end local v3    # "lensFacing":Ljava/lang/Integer;
    :cond_0
    goto :goto_0

    .line 54
    :cond_1
    return-object v0
.end method

.method public getLensFacing()I
    .locals 1

    .line 60
    iget v0, p0, Landroidx/camera/core/impl/LensFacingCameraFilter;->mLensFacing:I

    return v0
.end method
