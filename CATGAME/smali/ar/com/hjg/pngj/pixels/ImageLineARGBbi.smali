.class public Lar/com/hjg/pngj/pixels/ImageLineARGBbi;
.super Ljava/lang/Object;
.source "ImageLineARGBbi.java"

# interfaces
.implements Lar/com/hjg/pngj/IImageLine;


# instance fields
.field private bgrOrder:Z

.field private bytes:[B

.field private hasAlpha:Z

.field private final image:Ljava/awt/image/BufferedImage;

.field public final imgInfo:Lar/com/hjg/pngj/ImageInfo;

.field private rowLength:I

.field private rowNumber:I


# direct methods
.method public constructor <init>(Lar/com/hjg/pngj/ImageInfo;Ljava/awt/image/BufferedImage;[B)V
    .locals 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 18
    iput v0, p0, Lar/com/hjg/pngj/pixels/ImageLineARGBbi;->rowNumber:I

    .line 25
    iput-object p1, p0, Lar/com/hjg/pngj/pixels/ImageLineARGBbi;->imgInfo:Lar/com/hjg/pngj/ImageInfo;

    .line 26
    iput-object p2, p0, Lar/com/hjg/pngj/pixels/ImageLineARGBbi;->image:Ljava/awt/image/BufferedImage;

    .line 27
    iput-object p3, p0, Lar/com/hjg/pngj/pixels/ImageLineARGBbi;->bytes:[B

    .line 29
    invoke-virtual {p2}, Ljava/awt/image/BufferedImage;->getColorModel()Ljava/awt/image/ColorModel;

    move-result-object p1

    invoke-virtual {p1}, Ljava/awt/image/ColorModel;->hasAlpha()Z

    move-result p1

    iput-boolean p1, p0, Lar/com/hjg/pngj/pixels/ImageLineARGBbi;->hasAlpha:Z

    if-eqz p1, :cond_0

    .line 31
    invoke-virtual {p2}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result p1

    mul-int/lit8 p1, p1, 0x4

    iput p1, p0, Lar/com/hjg/pngj/pixels/ImageLineARGBbi;->rowLength:I

    goto :goto_0

    .line 33
    :cond_0
    invoke-virtual {p2}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result p1

    mul-int/lit8 p1, p1, 0x3

    iput p1, p0, Lar/com/hjg/pngj/pixels/ImageLineARGBbi;->rowLength:I

    .line 35
    :goto_0
    invoke-virtual {p2}, Ljava/awt/image/BufferedImage;->getSampleModel()Ljava/awt/image/SampleModel;

    move-result-object p1

    check-cast p1, Ljava/awt/image/ComponentSampleModel;

    invoke-virtual {p1}, Ljava/awt/image/ComponentSampleModel;->getBandOffsets()[I

    move-result-object p1

    const/4 p2, 0x0

    aget p1, p1, p2

    if-eqz p1, :cond_1

    const/4 p2, 0x1

    :cond_1
    iput-boolean p2, p0, Lar/com/hjg/pngj/pixels/ImageLineARGBbi;->bgrOrder:Z

    return-void
.end method

.method public static getFactory(Lar/com/hjg/pngj/ImageInfo;)Lar/com/hjg/pngj/IImageLineFactory;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lar/com/hjg/pngj/ImageInfo;",
            ")",
            "Lar/com/hjg/pngj/IImageLineFactory<",
            "Lar/com/hjg/pngj/ImageLineByte;",
            ">;"
        }
    .end annotation

    .line 39
    new-instance p0, Lar/com/hjg/pngj/pixels/ImageLineARGBbi$1;

    invoke-direct {p0}, Lar/com/hjg/pngj/pixels/ImageLineARGBbi$1;-><init>()V

    return-object p0
.end method


# virtual methods
.method public endReadFromPngRaw()V
    .locals 2

    .line 101
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "not implemented"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getRowNumber()I
    .locals 1

    .line 105
    iget v0, p0, Lar/com/hjg/pngj/pixels/ImageLineARGBbi;->rowNumber:I

    return v0
.end method

.method public readFromPngRaw([BIII)V
    .locals 0

    .line 47
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "not implemented"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setRowNumber(I)V
    .locals 0

    .line 109
    iput p1, p0, Lar/com/hjg/pngj/pixels/ImageLineARGBbi;->rowNumber:I

    return-void
.end method

.method public writeToPngRaw([B)V
    .locals 7

    .line 52
    iget-object v0, p0, Lar/com/hjg/pngj/pixels/ImageLineARGBbi;->imgInfo:Lar/com/hjg/pngj/ImageInfo;

    iget v0, v0, Lar/com/hjg/pngj/ImageInfo;->bytesPerRow:I

    iget v1, p0, Lar/com/hjg/pngj/pixels/ImageLineARGBbi;->rowLength:I

    if-ne v0, v1, :cond_5

    .line 54
    iget v0, p0, Lar/com/hjg/pngj/pixels/ImageLineARGBbi;->rowNumber:I

    if-ltz v0, :cond_4

    iget-object v1, p0, Lar/com/hjg/pngj/pixels/ImageLineARGBbi;->imgInfo:Lar/com/hjg/pngj/ImageInfo;

    iget v1, v1, Lar/com/hjg/pngj/ImageInfo;->rows:I

    if-ge v0, v1, :cond_4

    .line 57
    iget v0, p0, Lar/com/hjg/pngj/pixels/ImageLineARGBbi;->rowLength:I

    iget v1, p0, Lar/com/hjg/pngj/pixels/ImageLineARGBbi;->rowNumber:I

    mul-int/2addr v0, v1

    .line 59
    iget-boolean v1, p0, Lar/com/hjg/pngj/pixels/ImageLineARGBbi;->hasAlpha:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 60
    iget-boolean v1, p0, Lar/com/hjg/pngj/pixels/ImageLineARGBbi;->bgrOrder:Z

    if-eqz v1, :cond_0

    .line 61
    :goto_0
    iget v1, p0, Lar/com/hjg/pngj/pixels/ImageLineARGBbi;->rowLength:I

    if-gt v2, v1, :cond_3

    .line 62
    iget-object v1, p0, Lar/com/hjg/pngj/pixels/ImageLineARGBbi;->bytes:[B

    add-int/lit8 v3, v0, 0x1

    aget-byte v0, v1, v0

    add-int/lit8 v4, v3, 0x1

    .line 63
    aget-byte v3, v1, v3

    add-int/lit8 v5, v4, 0x1

    .line 64
    aget-byte v4, v1, v4

    add-int/lit8 v6, v5, 0x1

    .line 65
    aget-byte v1, v1, v5

    add-int/lit8 v5, v2, 0x1

    .line 66
    aput-byte v1, p1, v2

    add-int/lit8 v1, v5, 0x1

    .line 67
    aput-byte v4, p1, v5

    add-int/lit8 v2, v1, 0x1

    .line 68
    aput-byte v3, p1, v1

    add-int/lit8 v1, v2, 0x1

    .line 69
    aput-byte v0, p1, v2

    move v2, v1

    move v0, v6

    goto :goto_0

    .line 72
    :cond_0
    :goto_1
    iget v1, p0, Lar/com/hjg/pngj/pixels/ImageLineARGBbi;->rowLength:I

    if-gt v2, v1, :cond_3

    add-int/lit8 v1, v2, 0x1

    .line 73
    iget-object v3, p0, Lar/com/hjg/pngj/pixels/ImageLineARGBbi;->bytes:[B

    add-int/lit8 v4, v0, 0x1

    aget-byte v0, v3, v0

    aput-byte v0, p1, v2

    add-int/lit8 v0, v1, 0x1

    add-int/lit8 v2, v4, 0x1

    .line 74
    aget-byte v4, v3, v4

    aput-byte v4, p1, v1

    add-int/lit8 v1, v0, 0x1

    add-int/lit8 v4, v2, 0x1

    .line 75
    aget-byte v2, v3, v2

    aput-byte v2, p1, v0

    add-int/lit8 v2, v1, 0x1

    add-int/lit8 v0, v4, 0x1

    .line 76
    aget-byte v3, v3, v4

    aput-byte v3, p1, v1

    goto :goto_1

    .line 80
    :cond_1
    iget-boolean v1, p0, Lar/com/hjg/pngj/pixels/ImageLineARGBbi;->bgrOrder:Z

    if-eqz v1, :cond_2

    .line 81
    :goto_2
    iget v1, p0, Lar/com/hjg/pngj/pixels/ImageLineARGBbi;->rowLength:I

    if-gt v2, v1, :cond_3

    .line 82
    iget-object v1, p0, Lar/com/hjg/pngj/pixels/ImageLineARGBbi;->bytes:[B

    add-int/lit8 v3, v0, 0x1

    aget-byte v0, v1, v0

    add-int/lit8 v4, v3, 0x1

    .line 83
    aget-byte v3, v1, v3

    add-int/lit8 v5, v4, 0x1

    .line 84
    aget-byte v1, v1, v4

    add-int/lit8 v4, v2, 0x1

    .line 85
    aput-byte v1, p1, v2

    add-int/lit8 v1, v4, 0x1

    .line 86
    aput-byte v3, p1, v4

    add-int/lit8 v2, v1, 0x1

    .line 87
    aput-byte v0, p1, v1

    move v0, v5

    goto :goto_2

    .line 90
    :cond_2
    :goto_3
    iget v1, p0, Lar/com/hjg/pngj/pixels/ImageLineARGBbi;->rowLength:I

    if-gt v2, v1, :cond_3

    add-int/lit8 v1, v2, 0x1

    .line 91
    iget-object v3, p0, Lar/com/hjg/pngj/pixels/ImageLineARGBbi;->bytes:[B

    add-int/lit8 v4, v0, 0x1

    aget-byte v0, v3, v0

    aput-byte v0, p1, v2

    add-int/lit8 v0, v1, 0x1

    add-int/lit8 v2, v4, 0x1

    .line 92
    aget-byte v4, v3, v4

    aput-byte v4, p1, v1

    add-int/lit8 v1, v0, 0x1

    add-int/lit8 v4, v2, 0x1

    .line 93
    aget-byte v2, v3, v2

    aput-byte v2, p1, v0

    move v2, v1

    move v0, v4

    goto :goto_3

    :cond_3
    return-void

    .line 55
    :cond_4
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "???"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 53
    :cond_5
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "??"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
