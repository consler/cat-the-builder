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
    .param p1, "imgInfo"    # Lar/com/hjg/pngj/ImageInfo;

    .line 24
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lar/com/hjg/pngj/ImageLineByte;-><init>(Lar/com/hjg/pngj/ImageInfo;[B)V

    .line 25
    return-void
.end method

.method public constructor <init>(Lar/com/hjg/pngj/ImageInfo;[B)V
    .locals 2
    .param p1, "imgInfo"    # Lar/com/hjg/pngj/ImageInfo;
    .param p2, "sci"    # [B

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

    .line 31
    if-eqz p2, :cond_0

    array-length v1, p2

    if-lt v1, v0, :cond_0

    move-object v0, p2

    goto :goto_0

    :cond_0
    iget v0, p0, Lar/com/hjg/pngj/ImageLineByte;->size:I

    new-array v0, v0, [B

    :goto_0
    iput-object v0, p0, Lar/com/hjg/pngj/ImageLineByte;->scanline:[B

    .line 32
    iget v0, p1, Lar/com/hjg/pngj/ImageInfo;->bitDepth:I

    const/16 v1, 0x10

    if-ne v0, v1, :cond_1

    iget v0, p0, Lar/com/hjg/pngj/ImageLineByte;->size:I

    new-array v0, v0, [B

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    iput-object v0, p0, Lar/com/hjg/pngj/ImageLineByte;->scanline2:[B

    .line 33
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

    .line 36
    new-instance v0, Lar/com/hjg/pngj/ImageLineByte$1;

    invoke-direct {v0}, Lar/com/hjg/pngj/ImageLineByte$1;-><init>()V

    return-object v0
.end method


# virtual methods
.method public endReadFromPngRaw()V
    .locals 0

    .line 157
    return-void
.end method

.method public getElem(I)I
    .locals 2
    .param p1, "i"    # I

    .line 164
    iget-object v0, p0, Lar/com/hjg/pngj/ImageLineByte;->scanline2:[B

    if-nez v0, :cond_0

    iget-object v0, p0, Lar/com/hjg/pngj/ImageLineByte;->scanline:[B

    aget-byte v0, v0, p1

    and-int/lit16 v0, v0, 0xff

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lar/com/hjg/pngj/ImageLineByte;->scanline:[B

    aget-byte v1, v1, p1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    aget-byte v0, v0, p1

    and-int/lit16 v0, v0, 0xff

    or-int/2addr v0, v1

    :goto_0
    return v0
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
    .locals 16
    .param p1, "raw"    # [B
    .param p2, "len"    # I
    .param p3, "offset"    # I
    .param p4, "step"    # I

    .line 72
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p4

    const/4 v4, 0x0

    aget-byte v5, v1, v4

    invoke-static {v5}, Lar/com/hjg/pngj/FilterType;->getByVal(I)Lar/com/hjg/pngj/FilterType;

    move-result-object v5

    iput-object v5, v0, Lar/com/hjg/pngj/ImageLineByte;->filterType:Lar/com/hjg/pngj/FilterType;

    .line 74
    add-int/lit8 v5, v2, -0x1

    .line 75
    .local v5, "len1":I
    add-int/lit8 v6, v3, -0x1

    iget-object v7, v0, Lar/com/hjg/pngj/ImageLineByte;->imgInfo:Lar/com/hjg/pngj/ImageInfo;

    iget v7, v7, Lar/com/hjg/pngj/ImageInfo;->channels:I

    mul-int/2addr v6, v7

    .line 76
    .local v6, "step1":I
    iget-object v7, v0, Lar/com/hjg/pngj/ImageLineByte;->imgInfo:Lar/com/hjg/pngj/ImageInfo;

    iget v7, v7, Lar/com/hjg/pngj/ImageInfo;->bitDepth:I

    const/16 v8, 0x8

    const/4 v9, 0x1

    if-ne v7, v8, :cond_3

    .line 77
    if-ne v3, v9, :cond_0

    .line 78
    iget-object v7, v0, Lar/com/hjg/pngj/ImageLineByte;->scanline:[B

    invoke-static {v1, v9, v7, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto/16 :goto_4

    .line 80
    :cond_0
    const/4 v4, 0x1

    .local v4, "s":I
    const/4 v7, 0x0

    .local v7, "c":I
    iget-object v8, v0, Lar/com/hjg/pngj/ImageLineByte;->imgInfo:Lar/com/hjg/pngj/ImageInfo;

    iget v8, v8, Lar/com/hjg/pngj/ImageInfo;->channels:I

    mul-int v8, v8, p3

    .local v8, "i":I
    :goto_0
    if-gt v4, v5, :cond_2

    .line 81
    iget-object v10, v0, Lar/com/hjg/pngj/ImageLineByte;->scanline:[B

    aget-byte v11, v1, v4

    aput-byte v11, v10, v8

    .line 82
    add-int/lit8 v7, v7, 0x1

    .line 83
    iget-object v10, v0, Lar/com/hjg/pngj/ImageLineByte;->imgInfo:Lar/com/hjg/pngj/ImageInfo;

    iget v10, v10, Lar/com/hjg/pngj/ImageInfo;->channels:I

    if-ne v7, v10, :cond_1

    .line 84
    const/4 v7, 0x0

    .line 85
    add-int/2addr v8, v6

    .line 80
    :cond_1
    add-int/lit8 v4, v4, 0x1

    add-int/2addr v8, v9

    goto :goto_0

    .end local v4    # "s":I
    .end local v7    # "c":I
    .end local v8    # "i":I
    :cond_2
    goto/16 :goto_4

    .line 89
    :cond_3
    iget-object v7, v0, Lar/com/hjg/pngj/ImageLineByte;->imgInfo:Lar/com/hjg/pngj/ImageInfo;

    iget v7, v7, Lar/com/hjg/pngj/ImageInfo;->bitDepth:I

    const/16 v8, 0x10

    if-ne v7, v8, :cond_9

    .line 90
    if-ne v3, v9, :cond_5

    .line 91
    const/4 v4, 0x0

    .local v4, "i":I
    const/4 v7, 0x1

    .local v7, "s":I
    :goto_1
    iget-object v8, v0, Lar/com/hjg/pngj/ImageLineByte;->imgInfo:Lar/com/hjg/pngj/ImageInfo;

    iget v8, v8, Lar/com/hjg/pngj/ImageInfo;->samplesPerRow:I

    if-ge v4, v8, :cond_4

    .line 92
    iget-object v8, v0, Lar/com/hjg/pngj/ImageLineByte;->scanline:[B

    add-int/lit8 v9, v7, 0x1

    .end local v7    # "s":I
    .local v9, "s":I
    aget-byte v7, v1, v7

    aput-byte v7, v8, v4

    .line 93
    iget-object v7, v0, Lar/com/hjg/pngj/ImageLineByte;->scanline2:[B

    add-int/lit8 v8, v9, 0x1

    .end local v9    # "s":I
    .local v8, "s":I
    aget-byte v9, v1, v9

    aput-byte v9, v7, v4

    .line 91
    add-int/lit8 v4, v4, 0x1

    move v7, v8

    goto :goto_1

    .end local v4    # "i":I
    .end local v8    # "s":I
    :cond_4
    goto :goto_4

    .line 96
    :cond_5
    const/4 v7, 0x1

    .restart local v7    # "s":I
    const/4 v8, 0x0

    .local v8, "c":I
    if-eqz p3, :cond_6

    iget-object v4, v0, Lar/com/hjg/pngj/ImageLineByte;->imgInfo:Lar/com/hjg/pngj/ImageInfo;

    iget v4, v4, Lar/com/hjg/pngj/ImageInfo;->channels:I

    mul-int v4, v4, p3

    .restart local v4    # "i":I
    :cond_6
    :goto_2
    if-gt v7, v5, :cond_8

    .line 97
    iget-object v10, v0, Lar/com/hjg/pngj/ImageLineByte;->scanline:[B

    add-int/lit8 v11, v7, 0x1

    .end local v7    # "s":I
    .local v11, "s":I
    aget-byte v7, v1, v7

    aput-byte v7, v10, v4

    .line 98
    iget-object v7, v0, Lar/com/hjg/pngj/ImageLineByte;->scanline2:[B

    add-int/lit8 v10, v11, 0x1

    .end local v11    # "s":I
    .local v10, "s":I
    aget-byte v11, v1, v11

    aput-byte v11, v7, v4

    .line 99
    add-int/lit8 v8, v8, 0x1

    .line 100
    iget-object v7, v0, Lar/com/hjg/pngj/ImageLineByte;->imgInfo:Lar/com/hjg/pngj/ImageInfo;

    iget v7, v7, Lar/com/hjg/pngj/ImageInfo;->channels:I

    if-ne v8, v7, :cond_7

    .line 101
    const/4 v7, 0x0

    .line 102
    .end local v8    # "c":I
    .local v7, "c":I
    add-int/2addr v4, v6

    move v8, v7

    .line 96
    .end local v7    # "c":I
    .restart local v8    # "c":I
    :cond_7
    add-int/2addr v4, v9

    move v7, v10

    goto :goto_2

    .end local v4    # "i":I
    .end local v8    # "c":I
    .end local v10    # "s":I
    :cond_8
    goto :goto_4

    .line 108
    :cond_9
    iget-object v4, v0, Lar/com/hjg/pngj/ImageLineByte;->imgInfo:Lar/com/hjg/pngj/ImageInfo;

    iget v4, v4, Lar/com/hjg/pngj/ImageInfo;->bitDepth:I

    .line 109
    .local v4, "bd":I
    invoke-static {v4}, Lar/com/hjg/pngj/ImageLineHelper;->getMaskForPackedFormats(I)I

    move-result v7

    .line 110
    .local v7, "mask0":I
    iget-object v8, v0, Lar/com/hjg/pngj/ImageLineByte;->imgInfo:Lar/com/hjg/pngj/ImageInfo;

    iget v8, v8, Lar/com/hjg/pngj/ImageInfo;->channels:I

    mul-int v8, v8, p3

    .local v8, "i":I
    const/4 v10, 0x1

    .local v10, "r":I
    const/4 v11, 0x0

    .local v11, "c":I
    :goto_3
    if-ge v10, v2, :cond_d

    .line 111
    move v12, v7

    .line 112
    .local v12, "mask":I
    rsub-int/lit8 v13, v4, 0x8

    .line 114
    .local v13, "shi":I
    :cond_a
    iget-object v14, v0, Lar/com/hjg/pngj/ImageLineByte;->scanline:[B

    aget-byte v15, v1, v10

    and-int/2addr v15, v12

    shr-int/2addr v15, v13

    int-to-byte v15, v15

    aput-byte v15, v14, v8

    .line 115
    shr-int/2addr v12, v4

    .line 116
    sub-int/2addr v13, v4

    .line 117
    add-int/2addr v8, v9

    .line 118
    add-int/2addr v11, v9

    .line 119
    iget-object v14, v0, Lar/com/hjg/pngj/ImageLineByte;->imgInfo:Lar/com/hjg/pngj/ImageInfo;

    iget v14, v14, Lar/com/hjg/pngj/ImageInfo;->channels:I

    if-ne v11, v14, :cond_b

    .line 120
    const/4 v11, 0x0

    .line 121
    add-int/2addr v8, v6

    .line 123
    :cond_b
    if-eqz v12, :cond_c

    iget v14, v0, Lar/com/hjg/pngj/ImageLineByte;->size:I

    if-lt v8, v14, :cond_a

    .line 110
    :cond_c
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 126
    .end local v4    # "bd":I
    .end local v7    # "mask0":I
    .end local v8    # "i":I
    .end local v10    # "r":I
    .end local v11    # "c":I
    .end local v12    # "mask":I
    .end local v13    # "shi":I
    :cond_d
    :goto_4
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " cols="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lar/com/hjg/pngj/ImageLineByte;->imgInfo:Lar/com/hjg/pngj/ImageInfo;

    iget v1, v1, Lar/com/hjg/pngj/ImageInfo;->cols:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " bpc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lar/com/hjg/pngj/ImageLineByte;->imgInfo:Lar/com/hjg/pngj/ImageInfo;

    iget v1, v1, Lar/com/hjg/pngj/ImageInfo;->bitDepth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lar/com/hjg/pngj/ImageLineByte;->scanline:[B

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToPngRaw([B)V
    .locals 7
    .param p1, "raw"    # [B

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

    if-ne v0, v2, :cond_1

    .line 131
    iget-object v0, p0, Lar/com/hjg/pngj/ImageLineByte;->scanline:[B

    iget v2, p0, Lar/com/hjg/pngj/ImageLineByte;->size:I

    const/4 v3, 0x1

    invoke-static {v0, v1, p1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 132
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lar/com/hjg/pngj/ImageLineByte;->size:I

    if-ge v0, v1, :cond_0

    .line 133
    add-int/lit8 v1, v0, 0x1

    iget-object v2, p0, Lar/com/hjg/pngj/ImageLineByte;->scanline:[B

    aget-byte v2, v2, v0

    aput-byte v2, p1, v1

    .line 132
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v0    # "i":I
    :cond_0
    goto :goto_3

    .line 135
    :cond_1
    iget-object v0, p0, Lar/com/hjg/pngj/ImageLineByte;->imgInfo:Lar/com/hjg/pngj/ImageInfo;

    iget v0, v0, Lar/com/hjg/pngj/ImageInfo;->bitDepth:I

    const/16 v1, 0x10

    if-ne v0, v1, :cond_3

    .line 136
    const/4 v0, 0x0

    .restart local v0    # "i":I
    const/4 v1, 0x1

    .local v1, "s":I
    :goto_1
    iget v2, p0, Lar/com/hjg/pngj/ImageLineByte;->size:I

    if-ge v0, v2, :cond_2

    .line 137
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "s":I
    .local v2, "s":I
    iget-object v3, p0, Lar/com/hjg/pngj/ImageLineByte;->scanline:[B

    aget-byte v3, v3, v0

    aput-byte v3, p1, v1

    .line 138
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "s":I
    .restart local v1    # "s":I
    iget-object v3, p0, Lar/com/hjg/pngj/ImageLineByte;->scanline2:[B

    aget-byte v3, v3, v0

    aput-byte v3, p1, v2

    .line 136
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v0    # "i":I
    .end local v1    # "s":I
    :cond_2
    goto :goto_3

    .line 142
    :cond_3
    iget-object v0, p0, Lar/com/hjg/pngj/ImageLineByte;->imgInfo:Lar/com/hjg/pngj/ImageInfo;

    iget v0, v0, Lar/com/hjg/pngj/ImageInfo;->bitDepth:I

    .line 143
    .local v0, "bd":I
    rsub-int/lit8 v1, v0, 0x8

    .line 144
    .local v1, "shi":I
    const/4 v2, 0x0

    .line 145
    .local v2, "v":I
    const/4 v3, 0x0

    .local v3, "i":I
    const/4 v4, 0x1

    .local v4, "r":I
    :goto_2
    iget v5, p0, Lar/com/hjg/pngj/ImageLineByte;->size:I

    if-ge v3, v5, :cond_6

    .line 146
    iget-object v6, p0, Lar/com/hjg/pngj/ImageLineByte;->scanline:[B

    aget-byte v6, v6, v3

    shl-int/2addr v6, v1

    or-int/2addr v2, v6

    .line 147
    sub-int/2addr v1, v0

    .line 148
    if-ltz v1, :cond_4

    add-int/lit8 v5, v5, -0x1

    if-ne v3, v5, :cond_5

    .line 149
    :cond_4
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "r":I
    .local v5, "r":I
    int-to-byte v6, v2

    aput-byte v6, p1, v4

    .line 150
    rsub-int/lit8 v1, v0, 0x8

    .line 151
    const/4 v2, 0x0

    move v4, v5

    .line 145
    .end local v5    # "r":I
    .restart local v4    # "r":I
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 155
    .end local v0    # "bd":I
    .end local v1    # "shi":I
    .end local v2    # "v":I
    .end local v3    # "i":I
    .end local v4    # "r":I
    :cond_6
    :goto_3
    return-void
.end method
