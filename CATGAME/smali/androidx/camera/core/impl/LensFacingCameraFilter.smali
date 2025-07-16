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

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput p1, p0, Landroidx/camera/core/impl/LensFacingCameraFilter;->mLensFacing:I

    return-void
.end method


# virtual methods
.method public filter(Ljava/util/LinkedHashSet;)Ljava/util/LinkedHashSet;
    .locals 4
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
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 45
    invoke-virtual {p1}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/camera/core/Camera;

    .line 46
    instance-of v2, v1, Landroidx/camera/core/impl/CameraInternal;

    const-string v3, "The camera doesn\'t contain internal implementation."

    invoke-static {v2, v3}, Landroidx/core/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 48
    move-object v2, v1

    check-cast v2, Landroidx/camera/core/impl/CameraInternal;

    invoke-interface {v2}, Landroidx/camera/core/impl/CameraInternal;->getCameraInfoInternal()Landroidx/camera/core/impl/CameraInfoInternal;

    move-result-object v2

    invoke-interface {v2}, Landroidx/camera/core/impl/CameraInfoInternal;->getLensFacing()Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 49
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget v3, p0, Landroidx/camera/core/impl/LensFacingCameraFilter;->mLensFacing:I

    if-ne v2, v3, :cond_0

    .line 50
    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getLensFacing()I
    .locals 1

    .line 60
    iget v0, p0, Landroidx/camera/core/impl/LensFacingCameraFilter;->mLensFacing:I

    return v0
.end method
