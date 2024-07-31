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
    .locals 2
    .param p1, "imgInfo"    # Lar/com/hjg/pngj/ImageInfo;
    .param p2, "bi"    # Ljava/awt/image/BufferedImage;
    .param p3, "bytesdata"    # [B

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const/4 v0, -0x1

    iput v0, p0, Lar/com/hjg/pngj/pixels/ImageLineARGBbi;->rowNumber:I

    .line 25
    iput-object p1, p0, Lar/com/hjg/pngj/pixels/ImageLineARGBbi;->imgInfo:Lar/com/hjg/pngj/ImageInfo;

    .line 26
    iput-object p2, p0, Lar/com/hjg/pngj/pixels/ImageLineARGBbi;->image:Ljava/awt/image/BufferedImage;

    .line 27
    iput-object p3, p0, Lar/com/hjg/pngj/pixels/ImageLineARGBbi;->bytes:[B

    .line 29
    invoke-virtual {p2}, Ljava/awt/image/BufferedImage;->getColorModel()Ljava/awt/image/ColorModel;

    move-result-object v0

    invoke-virtual {v0}, Ljava/awt/image/ColorModel;->hasAlpha()Z

    move-result v0

    iput-boolean v0, p0, Lar/com/hjg/pngj/pixels/ImageLineARGBbi;->hasAlpha:Z

    .line 30
    if-eqz v0, :cond_0

    .line 31
    iget-object v0, p0, Lar/com/hjg/pngj/pixels/ImageLineARGBbi;->image:Ljava/awt/image/BufferedImage;

    invoke-virtual {v0}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v0

    mul-int/lit8 v0, v0, 0x4

    iput v0, p0, Lar/com/hjg/pngj/pixels/ImageLineARGBbi;->rowLength:I

    goto :goto_0

    .line 33
    :cond_0
    iget-object v0, p0, Lar/com/hjg/pngj/pixels/ImageLineARGBbi;->image:Ljava/awt/image/BufferedImage;

    invoke-virtual {v0}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    iput v0, p0, Lar/com/hjg/pngj/pixels/ImageLineARGBbi;->rowLength:I

    .line 35
    :goto_0
    iget-object v0, p0, Lar/com/hjg/pngj/pixels/ImageLineARGBbi;->image:Ljava/awt/image/BufferedImage;

    invoke-virtual {v0}, Ljava/awt/image/BufferedImage;->getSampleModel()Ljava/awt/image/SampleModel;

    move-result-object v0

    check-cast v0, Ljava/awt/image/ComponentSampleModel;

    invoke-virtual {v0}, Ljava/awt/image/ComponentSampleModel;->getBandOffsets()[I

    move-result-object v0

    const/4 v1, 0x0

    aget v0, v0, v1

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    iput-boolean v1, p0, Lar/com/hjg/pngj/pixels/ImageLineARGBbi;->bgrOrder:Z

    .line 36
    return-void
.end method

.method public static getFactory(Lar/com/hjg/pngj/ImageInfo;)Lar/com/hjg/pngj/IImageLineFactory;
    .locals 1
    .param p0, "iminfo"    # Lar/com/hjg/pngj/ImageInfo;
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
    new-instance v0, Lar/com/hjg/pngj/pixels/ImageLineARGBbi$1;

    invoke-direct {v0}, Lar/com/hjg/pngj/pixels/ImageLineARGBbi$1;-><init>()V

    return-object v0
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
    .locals 2
    .param p1, "raw"    # [B
    .param p2, "len"    # I
    .param p3, "offset"    # I
    .param p4, "step"    # I

    .line 47
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "not implemented"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setRowNumber(I)V
    .locals 0
    .param p1, "rowNumber"    # I

    .line 109
    iput p1, p0, Lar/com/hjg/pngj/pixels/ImageLineARGBbi;->rowNumber:I

    .line 110
    return-void
.end method

.method public writeToPngRaw([B)V
    .locals 7
    .param p1, "raw"    # [B

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

    .line 58
    .local v0, "bytesIdx":I
    const/4 v1, 0x1

    .line 59
    .local v1, "i":I
    iget-boolean v2, p0, Lar/com/hjg/pngj/pixels/ImageLineARGBbi;->hasAlpha:Z

    if-eqz v2, :cond_1

    .line 60
    iget-boolean v2, p0, Lar/com/hjg/pngj/pixels/ImageLineARGBbi;->bgrOrder:Z

    if-eqz v2, :cond_0

    .line 61
    :goto_0
    iget v2, p0, Lar/com/hjg/pngj/pixels/ImageLineARGBbi;->rowLength:I

    if-gt v1, v2, :cond_3

    .line 62
    iget-object v2, p0, Lar/com/hjg/pngj/pixels/ImageLineARGBbi;->bytes:[B

    add-int/lit8 v3, v0, 0x1

    .end local v0    # "bytesIdx":I
    .local v3, "bytesIdx":I
    aget-byte v0, v2, v0

    .line 63
    .local v0, "a":B
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "bytesIdx":I
    .local v4, "bytesIdx":I
    aget-byte v3, v2, v3

    .line 64
    .local v3, "b":B
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "bytesIdx":I
    .local v5, "bytesIdx":I
    aget-byte v4, v2, v4

    .line 65
    .local v4, "g":B
    add-int/lit8 v6, v5, 0x1

    .end local v5    # "bytesIdx":I
    .local v6, "bytesIdx":I
    aget-byte v2, v2, v5

    .line 66
    .local v2, "r":B
    add-int/lit8 v5, v1, 0x1

    .end local v1    # "i":I
    .local v5, "i":I
    aput-byte v2, p1, v1

    .line 67
    add-int/lit8 v1, v5, 0x1

    .end local v5    # "i":I
    .restart local v1    # "i":I
    aput-byte v4, p1, v5

    .line 68
    add-int/lit8 v5, v1, 0x1

    .end local v1    # "i":I
    .restart local v5    # "i":I
    aput-byte v3, p1, v1

    .line 69
    add-int/lit8 v1, v5, 0x1

    .end local v5    # "i":I
    .restart local v1    # "i":I
    aput-byte v0, p1, v5

    .line 70
    .end local v0    # "a":B
    .end local v2    # "r":B
    .end local v3    # "b":B
    .end local v4    # "g":B
    move v0, v6

    goto :goto_0

    .line 72
    .end local v6    # "bytesIdx":I
    .local v0, "bytesIdx":I
    :cond_0
    :goto_1
    iget v2, p0, Lar/com/hjg/pngj/pixels/ImageLineARGBbi;->rowLength:I

    if-gt v1, v2, :cond_3

    .line 73
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "i":I
    .local v2, "i":I
    iget-object v3, p0, Lar/com/hjg/pngj/pixels/ImageLineARGBbi;->bytes:[B

    add-int/lit8 v4, v0, 0x1

    .end local v0    # "bytesIdx":I
    .local v4, "bytesIdx":I
    aget-byte v0, v3, v0

    aput-byte v0, p1, v1

    .line 74
    add-int/lit8 v0, v2, 0x1

    .end local v2    # "i":I
    .local v0, "i":I
    add-int/lit8 v1, v4, 0x1

    .end local v4    # "bytesIdx":I
    .local v1, "bytesIdx":I
    aget-byte v4, v3, v4

    aput-byte v4, p1, v2

    .line 75
    add-int/lit8 v2, v0, 0x1

    .end local v0    # "i":I
    .restart local v2    # "i":I
    add-int/lit8 v4, v1, 0x1

    .end local v1    # "bytesIdx":I
    .restart local v4    # "bytesIdx":I
    aget-byte v1, v3, v1

    aput-byte v1, p1, v0

    .line 76
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "i":I
    .local v1, "i":I
    add-int/lit8 v0, v4, 0x1

    .end local v4    # "bytesIdx":I
    .local v0, "bytesIdx":I
    aget-byte v3, v3, v4

    aput-byte v3, p1, v2

    goto :goto_1

    .line 80
    :cond_1
    iget-boolean v2, p0, Lar/com/hjg/pngj/pixels/ImageLineARGBbi;->bgrOrder:Z

    if-eqz v2, :cond_2

    .line 81
    :goto_2
    iget v2, p0, Lar/com/hjg/pngj/pixels/ImageLineARGBbi;->rowLength:I

    if-gt v1, v2, :cond_3

    .line 82
    iget-object v2, p0, Lar/com/hjg/pngj/pixels/ImageLineARGBbi;->bytes:[B

    add-int/lit8 v3, v0, 0x1

    .end local v0    # "bytesIdx":I
    .local v3, "bytesIdx":I
    aget-byte v0, v2, v0

    .line 83
    .local v0, "b":B
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "bytesIdx":I
    .restart local v4    # "bytesIdx":I
    aget-byte v3, v2, v3

    .line 84
    .local v3, "g":B
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "bytesIdx":I
    .local v5, "bytesIdx":I
    aget-byte v2, v2, v4

    .line 85
    .local v2, "r":B
    add-int/lit8 v4, v1, 0x1

    .end local v1    # "i":I
    .local v4, "i":I
    aput-byte v2, p1, v1

    .line 86
    add-int/lit8 v1, v4, 0x1

    .end local v4    # "i":I
    .restart local v1    # "i":I
    aput-byte v3, p1, v4

    .line 87
    add-int/lit8 v4, v1, 0x1

    .end local v1    # "i":I
    .restart local v4    # "i":I
    aput-byte v0, p1, v1

    .line 88
    .end local v0    # "b":B
    .end local v2    # "r":B
    .end local v3    # "g":B
    move v1, v4

    move v0, v5

    goto :goto_2

    .line 90
    .end local v4    # "i":I
    .end local v5    # "bytesIdx":I
    .local v0, "bytesIdx":I
    .restart local v1    # "i":I
    :cond_2
    :goto_3
    iget v2, p0, Lar/com/hjg/pngj/pixels/ImageLineARGBbi;->rowLength:I

    if-gt v1, v2, :cond_3

    .line 91
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "i":I
    .local v2, "i":I
    iget-object v3, p0, Lar/com/hjg/pngj/pixels/ImageLineARGBbi;->bytes:[B

    add-int/lit8 v4, v0, 0x1

    .end local v0    # "bytesIdx":I
    .local v4, "bytesIdx":I
    aget-byte v0, v3, v0

    aput-byte v0, p1, v1

    .line 92
    add-int/lit8 v0, v2, 0x1

    .end local v2    # "i":I
    .local v0, "i":I
    add-int/lit8 v1, v4, 0x1

    .end local v4    # "bytesIdx":I
    .local v1, "bytesIdx":I
    aget-byte v4, v3, v4

    aput-byte v4, p1, v2

    .line 93
    add-int/lit8 v2, v0, 0x1

    .end local v0    # "i":I
    .restart local v2    # "i":I
    add-int/lit8 v4, v1, 0x1

    .end local v1    # "bytesIdx":I
    .restart local v4    # "bytesIdx":I
    aget-byte v1, v3, v1

    aput-byte v1, p1, v0

    move v1, v2

    move v0, v4

    goto :goto_3

    .line 98
    .end local v2    # "i":I
    .end local v4    # "bytesIdx":I
    .local v0, "bytesIdx":I
    .local v1, "i":I
    :cond_3
    return-void

    .line 55
    .end local v0    # "bytesIdx":I
    .end local v1    # "i":I
    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "???"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 53
    :cond_5
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "??"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
