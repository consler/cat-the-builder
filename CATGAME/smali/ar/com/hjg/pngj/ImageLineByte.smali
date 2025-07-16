.class public Lar/com/hjg/pngj/ImageLineByte;
.super Ljava/lang/Object;
.source "ImageLineByte.java"

# interfaces
.implements Lar/com/hjg/pngj/IImageLine;
.implements Lar/com/hjg/pngj/IImageLineArray;


# instance fields
.field protected filterType:Lar/com/hjg/pngj/FilterType;

.field public final imgInfo:Lar/com/hjg/pngj/ImageInfo;

.field final scanline:[B

.field final scanline2:[B

.field final size:I


# direct methods
.method public constructor <init>(Lar/com/hjg/pngj/ImageInfo;)V
    .locals 1

    const/4 v0, 0x0

    .line 24
    invoke-direct {p0, p1, v0}, Lar/com/hjg/pngj/ImageLineByte;-><init>(Lar/com/hjg/pngj/ImageInfo;[B)V

    return-void
.end method

.method public constructor <init>(Lar/com/hjg/pngj/ImageInfo;[B)V
    .locals 2

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lar/com/hjg/pngj/ImageLineByte;->imgInfo:Lar/com/hjg/pngj/ImageInfo;

    .line 29
    sget-object v0, Lar/com/hjg/pngj/FilterType;->FILTER_UNKNOWN:Lar/com/hjg/pngj/FilterType;

    iput-object v0, p0, Lar/com/hjg/pngj/ImageLineByte;->filterType:Lar/com/hjg/pngj/FilterType;

    .line 30
    iget v0, p1, Lar/com/hjg/pngj/ImageInfo;->samplesPerRow:I

    iput v0, p0, Lar/com/hjg/pngj/ImageLineByte;->size:I

    if-eqz p2, :cond_0

    .line 31
    array-length v1, p2

    if-lt v1, v0, :cond_0

    goto :goto_0

    :cond_0
    new-array p2, v0, [B

    :goto_0
    iput-object p2, p0, Lar/com/hjg/pngj/ImageLineByte;->scanline:[B

    .line 32
    iget p1, p1, Lar/com/hjg/pngj/ImageInfo;->bitDepth:I

    const/16 p2, 0x10

    if-ne p1, p2, :cond_1

    new-array p1, v0, [B

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    iput-object p1, p0, Lar/com/hjg/pngj/ImageLineByte;->scanline2:[B

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

    .line 36
    new-instance p0, Lar/com/hjg/pngj/ImageLineByte$1;

    invoke-direct {p0}, Lar/com/hjg/pngj/ImageLineByte$1;-><init>()V

    return-object p0
.end method


# virtual methods
.method public endReadFromPngRaw()V
    .locals 0

    return-void
.end method

.method public getElem(I)I
    .locals 2

    .line 164
    iget-object v0, p0, Lar/com/hjg/pngj/ImageLineByte;->scanline2:[B

    if-nez v0, :cond_0

    iget-object v0, p0, Lar/com/hjg/pngj/ImageLineByte;->scanline:[B

    aget-byte p1, v0, p1

    and-int/lit16 p1, p1, 0xff

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lar/com/hjg/pngj/ImageLineByte;->scanline:[B

    aget-byte v1, v1, p1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    aget-byte p1, v0, p1

    and-int/lit16 p1, p1, 0xff

    or-int/2addr p1, v1

    :goto_0
    return p1
.end method

.method public getFilterType()Lar/com/hjg/pngj/FilterType;
    .locals 1

    .line 177
    iget-object v0, p0, Lar/com/hjg/pngj/ImageLineByte;->filterType:Lar/com/hjg/pngj/FilterType;

    return-object v0
.end method

.method public getFilterUsed()Lar/com/hjg/pngj/FilterType;
    .locals 1

    .line 44
    iget-object v0, p0, Lar/com/hjg/pngj/ImageLineByte;->filterType:Lar/com/hjg/pngj/FilterType;

    return-object v0
.end method

.method public getImageInfo()Lar/com/hjg/pngj/ImageInfo;
    .locals 1

    .line 173
    iget-object v0, p0, Lar/com/hjg/pngj/ImageLineByte;->imgInfo:Lar/com/hjg/pngj/ImageInfo;

    return-object v0
.end method

.method public getScanline()[B
    .locals 1

    .line 169
    iget-object v0, p0, Lar/com/hjg/pngj/ImageLineByte;->scanline:[B

    return-object v0
.end method

.method public getScanlineByte()[B
    .locals 1

    .line 52
    iget-object v0, p0, Lar/com/hjg/pngj/ImageLineByte;->scanline:[B

    return-object v0
.end method

.method public getScanlineByte2()[B
    .locals 1

    .line 61
    iget-object v0, p0, Lar/com/hjg/pngj/ImageLineByte;->scanline2:[B

    return-object v0
.end method

.method public getSize()I
    .locals 1

    .line 160
    iget v0, p0, Lar/com/hjg/pngj/ImageLineByte;->size:I

    return v0
.end method

.method public readFromPngRaw([BIII)V
    .locals 10

    const/4 v0, 0x0

    .line 72
    aget-byte v1, p1, v0

    invoke-static {v1}, Lar/com/hjg/pngj/FilterType;->getByVal(I)Lar/com/hjg/pngj/FilterType;

    move-result-object v1

    iput-object v1, p0, Lar/com/hjg/pngj/ImageLineByte;->filterType:Lar/com/hjg/pngj/FilterType;

    add-int/lit8 v1, p2, -0x1

    add-int/lit8 v2, p4, -0x1

    .line 75
    iget-object v3, p0, Lar/com/hjg/pngj/ImageLineByte;->imgInfo:Lar/com/hjg/pngj/ImageInfo;

    iget v3, v3, Lar/com/hjg/pngj/ImageInfo;->channels:I

    mul-int/2addr v2, v3

    .line 76
    iget-object v3, p0, Lar/com/hjg/pngj/ImageLineByte;->imgInfo:Lar/com/hjg/pngj/ImageInfo;

    iget v3, v3, Lar/com/hjg/pngj/ImageInfo;->bitDepth:I

    const/16 v4, 0x8

    const/4 v5, 0x1

    if-ne v3, v4, :cond_2

    if-ne p4, v5, :cond_0

    .line 78
    iget-object p2, p0, Lar/com/hjg/pngj/ImageLineByte;->scanline:[B

    invoke-static {p1, v5, p2, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto/16 :goto_5

    .line 80
    :cond_0
    iget-object p2, p0, Lar/com/hjg/pngj/ImageLineByte;->imgInfo:Lar/com/hjg/pngj/ImageInfo;

    iget p2, p2, Lar/com/hjg/pngj/ImageInfo;->channels:I

    mul-int/2addr p3, p2

    move p4, v0

    move p2, v5

    :goto_0
    if-gt p2, v1, :cond_a

    .line 81
    iget-object v3, p0, Lar/com/hjg/pngj/ImageLineByte;->scanline:[B

    aget-byte v4, p1, p2

    aput-byte v4, v3, p3

    add-int/2addr p4, v5

    .line 83
    iget-object v3, p0, Lar/com/hjg/pngj/ImageLineByte;->imgInfo:Lar/com/hjg/pngj/ImageInfo;

    iget v3, v3, Lar/com/hjg/pngj/ImageInfo;->channels:I

    if-ne p4, v3, :cond_1

    add-int/2addr p3, v2

    move p4, v0

    :cond_1
    add-int/lit8 p2, p2, 0x1

    add-int/2addr p3, v5

    goto :goto_0

    .line 89
    :cond_2
    iget-object v3, p0, Lar/com/hjg/pngj/ImageLineByte;->imgInfo:Lar/com/hjg/pngj/ImageInfo;

    iget v3, v3, Lar/com/hjg/pngj/ImageInfo;->bitDepth:I

    const/16 v4, 0x10

    if-ne v3, v4, :cond_6

    if-ne p4, v5, :cond_3

    .line 91
    :goto_1
    iget-object p2, p0, Lar/com/hjg/pngj/ImageLineByte;->imgInfo:Lar/com/hjg/pngj/ImageInfo;

    iget p2, p2, Lar/com/hjg/pngj/ImageInfo;->samplesPerRow:I

    if-ge v0, p2, :cond_a

    .line 92
    iget-object p2, p0, Lar/com/hjg/pngj/ImageLineByte;->scanline:[B

    add-int/lit8 p3, v5, 0x1

    aget-byte p4, p1, v5

    aput-byte p4, p2, v0

    .line 93
    iget-object p2, p0, Lar/com/hjg/pngj/ImageLineByte;->scanline2:[B

    add-int/lit8 v5, p3, 0x1

    aget-byte p3, p1, p3

    aput-byte p3, p2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    if-eqz p3, :cond_4

    .line 96
    iget-object p2, p0, Lar/com/hjg/pngj/ImageLineByte;->imgInfo:Lar/com/hjg/pngj/ImageInfo;

    iget p2, p2, Lar/com/hjg/pngj/ImageInfo;->channels:I

    mul-int/2addr p3, p2

    goto :goto_2

    :cond_4
    move p3, v0

    :goto_2
    move p4, v0

    move p2, v5

    :goto_3
    if-gt p2, v1, :cond_a

    .line 97
    iget-object v3, p0, Lar/com/hjg/pngj/ImageLineByte;->scanline:[B

    add-int/lit8 v4, p2, 0x1

    aget-byte p2, p1, p2

    aput-byte p2, v3, p3

    .line 98
    iget-object p2, p0, Lar/com/hjg/pngj/ImageLineByte;->scanline2:[B

    add-int/lit8 v3, v4, 0x1

    aget-byte v4, p1, v4

    aput-byte v4, p2, p3

    add-int/2addr p4, v5

    .line 100
    iget-object p2, p0, Lar/com/hjg/pngj/ImageLineByte;->imgInfo:Lar/com/hjg/pngj/ImageInfo;

    iget p2, p2, Lar/com/hjg/pngj/ImageInfo;->channels:I

    if-ne p4, p2, :cond_5

    add-int/2addr p3, v2

    move p4, v0

    :cond_5
    add-int/2addr p3, v5

    move p2, v3

    goto :goto_3

    .line 108
    :cond_6
    iget-object p4, p0, Lar/com/hjg/pngj/ImageLineByte;->imgInfo:Lar/com/hjg/pngj/ImageInfo;

    iget p4, p4, Lar/com/hjg/pngj/ImageInfo;->bitDepth:I

    .line 109
    invoke-static {p4}, Lar/com/hjg/pngj/ImageLineHelper;->getMaskForPackedFormats(I)I

    move-result v1

    .line 110
    iget-object v3, p0, Lar/com/hjg/pngj/ImageLineByte;->imgInfo:Lar/com/hjg/pngj/ImageInfo;

    iget v3, v3, Lar/com/hjg/pngj/ImageInfo;->channels:I

    mul-int/2addr p3, v3

    move v4, v0

    move v3, v5

    :goto_4
    if-ge v3, p2, :cond_a

    rsub-int/lit8 v6, p4, 0x8

    move v7, v1

    .line 114
    :cond_7
    iget-object v8, p0, Lar/com/hjg/pngj/ImageLineByte;->scanline:[B

    aget-byte v9, p1, v3

    and-int/2addr v9, v7

    shr-int/2addr v9, v6

    int-to-byte v9, v9

    aput-byte v9, v8, p3

    shr-int/2addr v7, p4

    sub-int/2addr v6, p4

    add-int/2addr p3, v5

    add-int/2addr v4, v5

    .line 119
    iget-object v8, p0, Lar/com/hjg/pngj/ImageLineByte;->imgInfo:Lar/com/hjg/pngj/ImageInfo;

    iget v8, v8, Lar/com/hjg/pngj/ImageInfo;->channels:I

    if-ne v4, v8, :cond_8

    add-int/2addr p3, v2

    move v4, v0

    :cond_8
    if-eqz v7, :cond_9

    .line 123
    iget v8, p0, Lar/com/hjg/pngj/ImageLineByte;->size:I

    if-lt p3, v8, :cond_7

    :cond_9
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_a
    :goto_5
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " cols="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lar/com/hjg/pngj/ImageLineByte;->imgInfo:Lar/com/hjg/pngj/ImageInfo;

    iget v1, v1, Lar/com/hjg/pngj/ImageInfo;->cols:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " bpc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lar/com/hjg/pngj/ImageLineByte;->imgInfo:Lar/com/hjg/pngj/ImageInfo;

    iget v1, v1, Lar/com/hjg/pngj/ImageInfo;->bitDepth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lar/com/hjg/pngj/ImageLineByte;->scanline:[B

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToPngRaw([B)V
    .locals 9

    .line 129
    iget-object v0, p0, Lar/com/hjg/pngj/ImageLineByte;->filterType:Lar/com/hjg/pngj/FilterType;

    iget v0, v0, Lar/com/hjg/pngj/FilterType;->val:I

    int-to-byte v0, v0

    const/4 v1, 0x0

    aput-byte v0, p1, v1

    .line 130
    iget-object v0, p0, Lar/com/hjg/pngj/ImageLineByte;->imgInfo:Lar/com/hjg/pngj/ImageInfo;

    iget v0, v0, Lar/com/hjg/pngj/ImageInfo;->bitDepth:I

    const/16 v2, 0x8

    const/4 v3, 0x1

    if-ne v0, v2, :cond_0

    .line 131
    iget-object v0, p0, Lar/com/hjg/pngj/ImageLineByte;->scanline:[B

    iget v2, p0, Lar/com/hjg/pngj/ImageLineByte;->size:I

    invoke-static {v0, v1, p1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 132
    :goto_0
    iget v0, p0, Lar/com/hjg/pngj/ImageLineByte;->size:I

    if-ge v1, v0, :cond_4

    add-int/lit8 v0, v1, 0x1

    .line 133
    iget-object v2, p0, Lar/com/hjg/pngj/ImageLineByte;->scanline:[B

    aget-byte v1, v2, v1

    aput-byte v1, p1, v0

    move v1, v0

    goto :goto_0

    .line 135
    :cond_0
    iget-object v0, p0, Lar/com/hjg/pngj/ImageLineByte;->imgInfo:Lar/com/hjg/pngj/ImageInfo;

    iget v0, v0, Lar/com/hjg/pngj/ImageInfo;->bitDepth:I

    const/16 v2, 0x10

    if-ne v0, v2, :cond_1

    .line 136
    :goto_1
    iget v0, p0, Lar/com/hjg/pngj/ImageLineByte;->size:I

    if-ge v1, v0, :cond_4

    add-int/lit8 v0, v3, 0x1

    .line 137
    iget-object v2, p0, Lar/com/hjg/pngj/ImageLineByte;->scanline:[B

    aget-byte v2, v2, v1

    aput-byte v2, p1, v3

    add-int/lit8 v3, v0, 0x1

    .line 138
    iget-object v2, p0, Lar/com/hjg/pngj/ImageLineByte;->scanline2:[B

    aget-byte v2, v2, v1

    aput-byte v2, p1, v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 142
    :cond_1
    iget-object v0, p0, Lar/com/hjg/pngj/ImageLineByte;->imgInfo:Lar/com/hjg/pngj/ImageInfo;

    iget v0, v0, Lar/com/hjg/pngj/ImageInfo;->bitDepth:I

    rsub-int/lit8 v2, v0, 0x8

    move v4, v1

    move v5, v4

    move v6, v2

    .line 145
    :goto_2
    iget v7, p0, Lar/com/hjg/pngj/ImageLineByte;->size:I

    if-ge v4, v7, :cond_4

    .line 146
    iget-object v8, p0, Lar/com/hjg/pngj/ImageLineByte;->scanline:[B

    aget-byte v8, v8, v4

    shl-int/2addr v8, v6

    or-int/2addr v5, v8

    sub-int/2addr v6, v0

    if-ltz v6, :cond_2

    add-int/lit8 v7, v7, -0x1

    if-ne v4, v7, :cond_3

    :cond_2
    add-int/lit8 v6, v3, 0x1

    int-to-byte v5, v5

    .line 149
    aput-byte v5, p1, v3

    move v5, v1

    move v3, v6

    move v6, v2

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_4
    return-void
.end method
