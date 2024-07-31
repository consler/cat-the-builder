.class Landroidx/camera/core/ImageCapture$ImageCaptureRequest;
.super Ljava/lang/Object;
.source "ImageCapture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/core/ImageCapture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ImageCaptureRequest"
.end annotation


# instance fields
.field private final mCallback:Landroidx/camera/core/ImageCapture$OnImageCapturedCallback;

.field mDispatched:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final mJpegQuality:I

.field private final mListenerExecutor:Ljava/util/concurrent/Executor;

.field final mRotationDegrees:I

.field private final mTargetRatio:Landroid/util/Rational;

.field private final mViewPortCropRect:Landroid/graphics/Rect;


# direct methods
.method constructor <init>(IILandroid/util/Rational;Landroid/graphics/Rect;Ljava/util/concurrent/Executor;Landroidx/camera/core/ImageCapture$OnImageCapturedCallback;)V
    .locals 4
    .param p1, "rotationDegrees"    # I
    .param p2, "jpegQuality"    # I
    .param p3, "targetRatio"    # Landroid/util/Rational;
    .param p4, "viewPortCropRect"    # Landroid/graphics/Rect;
    .param p5, "executor"    # Ljava/util/concurrent/Executor;
    .param p6, "callback"    # Landroidx/camera/core/ImageCapture$OnImageCapturedCallback;

    .line 1923
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1906
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Landroidx/camera/core/ImageCapture$ImageCaptureRequest;->mDispatched:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 1924
    iput p1, p0, Landroidx/camera/core/ImageCapture$ImageCaptureRequest;->mRotationDegrees:I

    .line 1925
    iput p2, p0, Landroidx/camera/core/ImageCapture$ImageCaptureRequest;->mJpegQuality:I

    .line 1926
    if-eqz p3, :cond_1

    .line 1927
    invoke-virtual {p3}, Landroid/util/Rational;->isZero()Z

    move-result v0

    const/4 v2, 0x1

    xor-int/2addr v0, v2

    const-string v3, "Target ratio cannot be zero"

    invoke-static {v0, v3}, Landroidx/core/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 1928
    invoke-virtual {p3}, Landroid/util/Rational;->floatValue()F

    move-result v0

    const/4 v3, 0x0

    cmpl-float v0, v0, v3

    if-lez v0, :cond_0

    move v1, v2

    :cond_0
    const-string v0, "Target ratio must be positive"

    invoke-static {v1, v0}, Landroidx/core/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 1931
    :cond_1
    iput-object p3, p0, Landroidx/camera/core/ImageCapture$ImageCaptureRequest;->mTargetRatio:Landroid/util/Rational;

    .line 1932
    iput-object p4, p0, Landroidx/camera/core/ImageCapture$ImageCaptureRequest;->mViewPortCropRect:Landroid/graphics/Rect;

    .line 1933
    iput-object p5, p0, Landroidx/camera/core/ImageCapture$ImageCaptureRequest;->mListenerExecutor:Ljava/util/concurrent/Executor;

    .line 1934
    iput-object p6, p0, Landroidx/camera/core/ImageCapture$ImageCaptureRequest;->mCallback:Landroidx/camera/core/ImageCapture$OnImageCapturedCallback;

    .line 1935
    return-void
.end method


# virtual methods
.method dispatchImage(Landroidx/camera/core/ImageProxy;)V
    .locals 10
    .param p1, "image"    # Landroidx/camera/core/ImageProxy;

    .line 1939
    iget-object v0, p0, Landroidx/camera/core/ImageCapture$ImageCaptureRequest;->mDispatched:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1940
    invoke-interface {p1}, Landroidx/camera/core/ImageProxy;->close()V

    .line 1941
    return-void

    .line 1944
    :cond_0
    const/4 v0, 0x0

    .line 1945
    .local v0, "dispatchResolution":Landroid/util/Size;
    const/4 v3, 0x0

    .line 1947
    .local v3, "dispatchRotation":I
    invoke-interface {p1}, Landroidx/camera/core/ImageProxy;->getFormat()I

    move-result v4

    const/16 v5, 0x100

    if-ne v4, v5, :cond_1

    .line 1950
    :try_start_0
    invoke-interface {p1}, Landroidx/camera/core/ImageProxy;->getPlanes()[Landroidx/camera/core/ImageProxy$PlaneProxy;

    move-result-object v4

    .line 1951
    .local v4, "planes":[Landroidx/camera/core/ImageProxy$PlaneProxy;
    aget-object v1, v4, v1

    invoke-interface {v1}, Landroidx/camera/core/ImageProxy$PlaneProxy;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 1954
    .local v1, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 1956
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v5

    new-array v5, v5, [B

    .line 1957
    .local v5, "data":[B
    invoke-virtual {v1, v5}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 1958
    new-instance v6, Ljava/io/ByteArrayInputStream;

    invoke-direct {v6, v5}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {v6}, Landroidx/camera/core/impl/utils/Exif;->createFromInputStream(Ljava/io/InputStream;)Landroidx/camera/core/impl/utils/Exif;

    move-result-object v6

    .line 1959
    .local v6, "exif":Landroidx/camera/core/impl/utils/Exif;
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 1961
    new-instance v7, Landroid/util/Size;

    invoke-virtual {v6}, Landroidx/camera/core/impl/utils/Exif;->getWidth()I

    move-result v8

    invoke-virtual {v6}, Landroidx/camera/core/impl/utils/Exif;->getHeight()I

    move-result v9

    invoke-direct {v7, v8, v9}, Landroid/util/Size;-><init>(II)V

    move-object v0, v7

    .line 1962
    invoke-virtual {v6}, Landroidx/camera/core/impl/utils/Exif;->getRotation()I

    move-result v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v2

    .line 1967
    .end local v3    # "dispatchRotation":I
    .end local v4    # "planes":[Landroidx/camera/core/ImageProxy$PlaneProxy;
    .end local v5    # "data":[B
    .end local v6    # "exif":Landroidx/camera/core/impl/utils/Exif;
    .local v1, "dispatchRotation":I
    goto :goto_0

    .line 1963
    .end local v1    # "dispatchRotation":I
    .restart local v3    # "dispatchRotation":I
    :catch_0
    move-exception v1

    .line 1964
    .local v1, "e":Ljava/io/IOException;
    const-string v4, "Unable to parse JPEG exif"

    invoke-virtual {p0, v2, v4, v1}, Landroidx/camera/core/ImageCapture$ImageCaptureRequest;->notifyCallbackError(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 1965
    invoke-interface {p1}, Landroidx/camera/core/ImageProxy;->close()V

    .line 1966
    return-void

    .line 1970
    .end local v1    # "e":Ljava/io/IOException;
    :cond_1
    iget v1, p0, Landroidx/camera/core/ImageCapture$ImageCaptureRequest;->mRotationDegrees:I

    .line 1974
    .end local v3    # "dispatchRotation":I
    .local v1, "dispatchRotation":I
    :goto_0
    nop

    .line 1975
    invoke-interface {p1}, Landroidx/camera/core/ImageProxy;->getImageInfo()Landroidx/camera/core/ImageInfo;

    move-result-object v2

    invoke-interface {v2}, Landroidx/camera/core/ImageInfo;->getTag()Ljava/lang/Object;

    move-result-object v2

    .line 1976
    invoke-interface {p1}, Landroidx/camera/core/ImageProxy;->getImageInfo()Landroidx/camera/core/ImageInfo;

    move-result-object v3

    invoke-interface {v3}, Landroidx/camera/core/ImageInfo;->getTimestamp()J

    move-result-wide v3

    .line 1974
    invoke-static {v2, v3, v4, v1}, Landroidx/camera/core/ImmutableImageInfo;->create(Ljava/lang/Object;JI)Landroidx/camera/core/ImageInfo;

    move-result-object v2

    .line 1978
    .local v2, "imageInfo":Landroidx/camera/core/ImageInfo;
    new-instance v3, Landroidx/camera/core/SettableImageProxy;

    invoke-direct {v3, p1, v0, v2}, Landroidx/camera/core/SettableImageProxy;-><init>(Landroidx/camera/core/ImageProxy;Landroid/util/Size;Landroidx/camera/core/ImageInfo;)V

    .line 1984
    .local v3, "dispatchedImageProxy":Landroidx/camera/core/ImageProxy;
    iget-object v4, p0, Landroidx/camera/core/ImageCapture$ImageCaptureRequest;->mViewPortCropRect:Landroid/graphics/Rect;

    if-eqz v4, :cond_2

    .line 1986
    invoke-interface {v3, v4}, Landroidx/camera/core/ImageProxy;->setCropRect(Landroid/graphics/Rect;)V

    goto :goto_1

    .line 1987
    :cond_2
    iget-object v4, p0, Landroidx/camera/core/ImageCapture$ImageCaptureRequest;->mTargetRatio:Landroid/util/Rational;

    if-eqz v4, :cond_4

    .line 1989
    iget-object v4, p0, Landroidx/camera/core/ImageCapture$ImageCaptureRequest;->mTargetRatio:Landroid/util/Rational;

    .line 1990
    .local v4, "dispatchRatio":Landroid/util/Rational;
    rem-int/lit16 v5, v1, 0xb4

    if-eqz v5, :cond_3

    .line 1991
    new-instance v5, Landroid/util/Rational;

    iget-object v6, p0, Landroidx/camera/core/ImageCapture$ImageCaptureRequest;->mTargetRatio:Landroid/util/Rational;

    .line 1992
    invoke-virtual {v6}, Landroid/util/Rational;->getDenominator()I

    move-result v6

    iget-object v7, p0, Landroidx/camera/core/ImageCapture$ImageCaptureRequest;->mTargetRatio:Landroid/util/Rational;

    .line 1993
    invoke-virtual {v7}, Landroid/util/Rational;->getNumerator()I

    move-result v7

    invoke-direct {v5, v6, v7}, Landroid/util/Rational;-><init>(II)V

    move-object v4, v5

    .line 1995
    :cond_3
    new-instance v5, Landroid/util/Size;

    invoke-interface {v3}, Landroidx/camera/core/ImageProxy;->getWidth()I

    move-result v6

    .line 1996
    invoke-interface {v3}, Landroidx/camera/core/ImageProxy;->getHeight()I

    move-result v7

    invoke-direct {v5, v6, v7}, Landroid/util/Size;-><init>(II)V

    .line 1997
    .local v5, "sourceSize":Landroid/util/Size;
    invoke-static {v5, v4}, Landroidx/camera/core/internal/utils/ImageUtil;->isAspectRatioValid(Landroid/util/Size;Landroid/util/Rational;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1998
    nop

    .line 1999
    invoke-static {v5, v4}, Landroidx/camera/core/internal/utils/ImageUtil;->computeCropRectFromAspectRatio(Landroid/util/Size;Landroid/util/Rational;)Landroid/graphics/Rect;

    move-result-object v6

    .line 1998
    invoke-interface {v3, v6}, Landroidx/camera/core/ImageProxy;->setCropRect(Landroid/graphics/Rect;)V

    .line 2005
    .end local v4    # "dispatchRatio":Landroid/util/Rational;
    .end local v5    # "sourceSize":Landroid/util/Size;
    :cond_4
    :goto_1
    :try_start_1
    iget-object v4, p0, Landroidx/camera/core/ImageCapture$ImageCaptureRequest;->mListenerExecutor:Ljava/util/concurrent/Executor;

    new-instance v5, Landroidx/camera/core/-$$Lambda$ImageCapture$ImageCaptureRequest$E13UUGhRx8PID5WbaCuwcGP87BA;

    invoke-direct {v5, p0, v3}, Landroidx/camera/core/-$$Lambda$ImageCapture$ImageCaptureRequest$E13UUGhRx8PID5WbaCuwcGP87BA;-><init>(Landroidx/camera/core/ImageCapture$ImageCaptureRequest;Landroidx/camera/core/ImageProxy;)V

    invoke-interface {v4, v5}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_1 .. :try_end_1} :catch_1

    .line 2013
    goto :goto_2

    .line 2008
    :catch_1
    move-exception v4

    .line 2009
    .local v4, "e":Ljava/util/concurrent/RejectedExecutionException;
    const-string v5, "ImageCapture"

    const-string v6, "Unable to post to the supplied executor."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2012
    invoke-interface {p1}, Landroidx/camera/core/ImageProxy;->close()V

    .line 2014
    .end local v4    # "e":Ljava/util/concurrent/RejectedExecutionException;
    :goto_2
    return-void
.end method

.method public synthetic lambda$dispatchImage$0$ImageCapture$ImageCaptureRequest(Landroidx/camera/core/ImageProxy;)V
    .locals 1
    .param p1, "dispatchedImageProxy"    # Landroidx/camera/core/ImageProxy;

    .line 2006
    iget-object v0, p0, Landroidx/camera/core/ImageCapture$ImageCaptureRequest;->mCallback:Landroidx/camera/core/ImageCapture$OnImageCapturedCallback;

    invoke-virtual {v0, p1}, Landroidx/camera/core/ImageCapture$OnImageCapturedCallback;->onCaptureSuccess(Landroidx/camera/core/ImageProxy;)V

    .line 2007
    return-void
.end method

.method public synthetic lambda$notifyCallbackError$1$ImageCapture$ImageCaptureRequest(ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "imageCaptureError"    # I
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "cause"    # Ljava/lang/Throwable;

    .line 2024
    iget-object v0, p0, Landroidx/camera/core/ImageCapture$ImageCaptureRequest;->mCallback:Landroidx/camera/core/ImageCapture$OnImageCapturedCallback;

    new-instance v1, Landroidx/camera/core/ImageCaptureException;

    invoke-direct {v1, p1, p2, p3}, Landroidx/camera/core/ImageCaptureException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Landroidx/camera/core/ImageCapture$OnImageCapturedCallback;->onError(Landroidx/camera/core/ImageCaptureException;)V

    return-void
.end method

.method notifyCallbackError(ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "imageCaptureError"    # I
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "cause"    # Ljava/lang/Throwable;

    .line 2019
    iget-object v0, p0, Landroidx/camera/core/ImageCapture$ImageCaptureRequest;->mDispatched:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2020
    return-void

    .line 2024
    :cond_0
    :try_start_0
    iget-object v0, p0, Landroidx/camera/core/ImageCapture$ImageCaptureRequest;->mListenerExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroidx/camera/core/-$$Lambda$ImageCapture$ImageCaptureRequest$1G7WSvt8TANxhZtOyewefm68pg4;

    invoke-direct {v1, p0, p1, p2, p3}, Landroidx/camera/core/-$$Lambda$ImageCapture$ImageCaptureRequest$1G7WSvt8TANxhZtOyewefm68pg4;-><init>(Landroidx/camera/core/ImageCapture$ImageCaptureRequest;ILjava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2028
    goto :goto_0

    .line 2026
    :catch_0
    move-exception v0

    .line 2027
    .local v0, "e":Ljava/util/concurrent/RejectedExecutionException;
    const-string v1, "ImageCapture"

    const-string v2, "Unable to post to the supplied executor."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2029
    .end local v0    # "e":Ljava/util/concurrent/RejectedExecutionException;
    :goto_0
    return-void
.end method
