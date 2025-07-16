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
    .locals 2

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

    if-eqz p3, :cond_1

    .line 1927
    invoke-virtual {p3}, Landroid/util/Rational;->isZero()Z

    move-result p1

    const/4 p2, 0x1

    xor-int/2addr p1, p2

    const-string v0, "Target ratio cannot be zero"

    invoke-static {p1, v0}, Landroidx/core/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 1928
    invoke-virtual {p3}, Landroid/util/Rational;->floatValue()F

    move-result p1

    const/4 v0, 0x0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_0

    move v1, p2

    :cond_0
    const-string p1, "Target ratio must be positive"

    invoke-static {v1, p1}, Landroidx/core/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 1931
    :cond_1
    iput-object p3, p0, Landroidx/camera/core/ImageCapture$ImageCaptureRequest;->mTargetRatio:Landroid/util/Rational;

    .line 1932
    iput-object p4, p0, Landroidx/camera/core/ImageCapture$ImageCaptureRequest;->mViewPortCropRect:Landroid/graphics/Rect;

    .line 1933
    iput-object p5, p0, Landroidx/camera/core/ImageCapture$ImageCaptureRequest;->mListenerExecutor:Ljava/util/concurrent/Executor;

    .line 1934
    iput-object p6, p0, Landroidx/camera/core/ImageCapture$ImageCaptureRequest;->mCallback:Landroidx/camera/core/ImageCapture$OnImageCapturedCallback;

    return-void
.end method


# virtual methods
.method dispatchImage(Landroidx/camera/core/ImageProxy;)V
    .locals 5

    .line 1939
    iget-object v0, p0, Landroidx/camera/core/ImageCapture$ImageCaptureRequest;->mDispatched:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1940
    invoke-interface {p1}, Landroidx/camera/core/ImageProxy;->close()V

    return-void

    .line 1947
    :cond_0
    invoke-interface {p1}, Landroidx/camera/core/ImageProxy;->getFormat()I

    move-result v0

    const/16 v3, 0x100

    if-ne v0, v3, :cond_1

    .line 1950
    :try_start_0
    invoke-interface {p1}, Landroidx/camera/core/ImageProxy;->getPlanes()[Landroidx/camera/core/ImageProxy$PlaneProxy;

    move-result-object v0

    .line 1951
    aget-object v0, v0, v1

    invoke-interface {v0}, Landroidx/camera/core/ImageProxy$PlaneProxy;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 1954
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 1956
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    new-array v1, v1, [B

    .line 1957
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 1958
    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {v3}, Landroidx/camera/core/impl/utils/Exif;->createFromInputStream(Ljava/io/InputStream;)Landroidx/camera/core/impl/utils/Exif;

    move-result-object v1

    .line 1959
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 1961
    new-instance v0, Landroid/util/Size;

    invoke-virtual {v1}, Landroidx/camera/core/impl/utils/Exif;->getWidth()I

    move-result v3

    invoke-virtual {v1}, Landroidx/camera/core/impl/utils/Exif;->getHeight()I

    move-result v4

    invoke-direct {v0, v3, v4}, Landroid/util/Size;-><init>(II)V

    .line 1962
    invoke-virtual {v1}, Landroidx/camera/core/impl/utils/Exif;->getRotation()I

    move-result v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Unable to parse JPEG exif"

    .line 1964
    invoke-virtual {p0, v2, v1, v0}, Landroidx/camera/core/ImageCapture$ImageCaptureRequest;->notifyCallbackError(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 1965
    invoke-interface {p1}, Landroidx/camera/core/ImageProxy;->close()V

    return-void

    .line 1970
    :cond_1
    iget v1, p0, Landroidx/camera/core/ImageCapture$ImageCaptureRequest;->mRotationDegrees:I

    const/4 v0, 0x0

    .line 1975
    :goto_0
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
    new-instance v3, Landroidx/camera/core/SettableImageProxy;

    invoke-direct {v3, p1, v0, v2}, Landroidx/camera/core/SettableImageProxy;-><init>(Landroidx/camera/core/ImageProxy;Landroid/util/Size;Landroidx/camera/core/ImageInfo;)V

    .line 1984
    iget-object v0, p0, Landroidx/camera/core/ImageCapture$ImageCaptureRequest;->mViewPortCropRect:Landroid/graphics/Rect;

    if-eqz v0, :cond_2

    .line 1986
    invoke-interface {v3, v0}, Landroidx/camera/core/ImageProxy;->setCropRect(Landroid/graphics/Rect;)V

    goto :goto_1

    .line 1987
    :cond_2
    iget-object v0, p0, Landroidx/camera/core/ImageCapture$ImageCaptureRequest;->mTargetRatio:Landroid/util/Rational;

    if-eqz v0, :cond_4

    .line 1990
    rem-int/lit16 v1, v1, 0xb4

    if-eqz v1, :cond_3

    .line 1991
    new-instance v0, Landroid/util/Rational;

    iget-object v1, p0, Landroidx/camera/core/ImageCapture$ImageCaptureRequest;->mTargetRatio:Landroid/util/Rational;

    .line 1992
    invoke-virtual {v1}, Landroid/util/Rational;->getDenominator()I

    move-result v1

    iget-object v2, p0, Landroidx/camera/core/ImageCapture$ImageCaptureRequest;->mTargetRatio:Landroid/util/Rational;

    .line 1993
    invoke-virtual {v2}, Landroid/util/Rational;->getNumerator()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/util/Rational;-><init>(II)V

    .line 1995
    :cond_3
    new-instance v1, Landroid/util/Size;

    invoke-interface {v3}, Landroidx/camera/core/ImageProxy;->getWidth()I

    move-result v2

    .line 1996
    invoke-interface {v3}, Landroidx/camera/core/ImageProxy;->getHeight()I

    move-result v4

    invoke-direct {v1, v2, v4}, Landroid/util/Size;-><init>(II)V

    .line 1997
    invoke-static {v1, v0}, Landroidx/camera/core/internal/utils/ImageUtil;->isAspectRatioValid(Landroid/util/Size;Landroid/util/Rational;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1999
    invoke-static {v1, v0}, Landroidx/camera/core/internal/utils/ImageUtil;->computeCropRectFromAspectRatio(Landroid/util/Size;Landroid/util/Rational;)Landroid/graphics/Rect;

    move-result-object v0

    .line 1998
    invoke-interface {v3, v0}, Landroidx/camera/core/ImageProxy;->setCropRect(Landroid/graphics/Rect;)V

    .line 2005
    :cond_4
    :goto_1
    :try_start_1
    iget-object v0, p0, Landroidx/camera/core/ImageCapture$ImageCaptureRequest;->mListenerExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroidx/camera/core/ImageCapture$ImageCaptureRequest$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, v3}, Landroidx/camera/core/ImageCapture$ImageCaptureRequest$$ExternalSyntheticLambda1;-><init>(Landroidx/camera/core/ImageCapture$ImageCaptureRequest;Landroidx/camera/core/ImageProxy;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    const-string v0, "ImageCapture"

    const-string v1, "Unable to post to the supplied executor."

    .line 2009
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2012
    invoke-interface {p1}, Landroidx/camera/core/ImageProxy;->close()V

    :goto_2
    return-void
.end method

.method synthetic lambda$dispatchImage$0$androidx-camera-core-ImageCapture$ImageCaptureRequest(Landroidx/camera/core/ImageProxy;)V
    .locals 1

    .line 2006
    iget-object v0, p0, Landroidx/camera/core/ImageCapture$ImageCaptureRequest;->mCallback:Landroidx/camera/core/ImageCapture$OnImageCapturedCallback;

    invoke-virtual {v0, p1}, Landroidx/camera/core/ImageCapture$OnImageCapturedCallback;->onCaptureSuccess(Landroidx/camera/core/ImageProxy;)V

    return-void
.end method

.method synthetic lambda$notifyCallbackError$1$androidx-camera-core-ImageCapture$ImageCaptureRequest(ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    .line 2024
    iget-object v0, p0, Landroidx/camera/core/ImageCapture$ImageCaptureRequest;->mCallback:Landroidx/camera/core/ImageCapture$OnImageCapturedCallback;

    new-instance v1, Landroidx/camera/core/ImageCaptureException;

    invoke-direct {v1, p1, p2, p3}, Landroidx/camera/core/ImageCaptureException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Landroidx/camera/core/ImageCapture$OnImageCapturedCallback;->onError(Landroidx/camera/core/ImageCaptureException;)V

    return-void
.end method

.method notifyCallbackError(ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 3

    .line 2019
    iget-object v0, p0, Landroidx/camera/core/ImageCapture$ImageCaptureRequest;->mDispatched:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2024
    :cond_0
    :try_start_0
    iget-object v0, p0, Landroidx/camera/core/ImageCapture$ImageCaptureRequest;->mListenerExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroidx/camera/core/ImageCapture$ImageCaptureRequest$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2, p3}, Landroidx/camera/core/ImageCapture$ImageCaptureRequest$$ExternalSyntheticLambda0;-><init>(Landroidx/camera/core/ImageCapture$ImageCaptureRequest;ILjava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "ImageCapture"

    const-string p2, "Unable to post to the supplied executor."

    .line 2027
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
