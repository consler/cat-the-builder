.class final Landroidx/camera/core/ImageReaderProxys;
.super Ljava/lang/Object;
.source "ImageReaderProxys.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static createIsolatedReader(IIII)Landroidx/camera/core/impl/ImageReaderProxy;
    .locals 0

    .line 44
    invoke-static {p0, p1, p2, p3}, Landroid/media/ImageReader;->newInstance(IIII)Landroid/media/ImageReader;

    move-result-object p0

    .line 45
    new-instance p1, Landroidx/camera/core/AndroidImageReaderProxy;

    invoke-direct {p1, p0}, Landroidx/camera/core/AndroidImageReaderProxy;-><init>(Landroid/media/ImageReader;)V

    return-object p1
.end method
