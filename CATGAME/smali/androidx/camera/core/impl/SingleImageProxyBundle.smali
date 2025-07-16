.class public final Landroidx/camera/core/impl/SingleImageProxyBundle;
.super Ljava/lang/Object;
.source "SingleImageProxyBundle.java"

# interfaces
.implements Landroidx/camera/core/impl/ImageProxyBundle;


# instance fields
.field private final mCaptureId:I

.field private final mImageProxy:Landroidx/camera/core/ImageProxy;


# direct methods
.method public constructor <init>(Landroidx/camera/core/ImageProxy;)V
    .locals 2

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    invoke-interface {p1}, Landroidx/camera/core/ImageProxy;->getImageInfo()Landroidx/camera/core/ImageInfo;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 49
    invoke-interface {v0}, Landroidx/camera/core/ImageInfo;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 55
    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 59
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Landroidx/camera/core/impl/SingleImageProxyBundle;->mCaptureId:I

    .line 60
    iput-object p1, p0, Landroidx/camera/core/impl/SingleImageProxyBundle;->mImageProxy:Landroidx/camera/core/ImageProxy;

    return-void

    .line 56
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "ImageProxy has tag that isn\'t an integer"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 52
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "ImageProxy has no associated tag"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 46
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "ImageProxy has no associated ImageInfo"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method constructor <init>(Landroidx/camera/core/ImageProxy;I)V
    .locals 0

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput p2, p0, Landroidx/camera/core/impl/SingleImageProxyBundle;->mCaptureId:I

    .line 69
    iput-object p1, p0, Landroidx/camera/core/impl/SingleImageProxyBundle;->mImageProxy:Landroidx/camera/core/ImageProxy;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 74
    iget-object v0, p0, Landroidx/camera/core/impl/SingleImageProxyBundle;->mImageProxy:Landroidx/camera/core/ImageProxy;

    invoke-interface {v0}, Landroidx/camera/core/ImageProxy;->close()V

    return-void
.end method

.method public getCaptureIds()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 90
    iget v0, p0, Landroidx/camera/core/impl/SingleImageProxyBundle;->mCaptureId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getImageProxy(I)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroidx/camera/core/ImageProxy;",
            ">;"
        }
    .end annotation

    .line 80
    iget v0, p0, Landroidx/camera/core/impl/SingleImageProxyBundle;->mCaptureId:I

    if-eq p1, v0, :cond_0

    .line 81
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Capture id does not exist in the bundle"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Landroidx/camera/core/impl/utils/futures/Futures;->immediateFailedFuture(Ljava/lang/Throwable;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1

    .line 84
    :cond_0
    iget-object p1, p0, Landroidx/camera/core/impl/SingleImageProxyBundle;->mImageProxy:Landroidx/camera/core/ImageProxy;

    invoke-static {p1}, Landroidx/camera/core/impl/utils/futures/Futures;->immediateFuture(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method
