.class public Lar/com/hjg/pngj/ImageLineInt;
.super Ljava/lang/Object;
.source "ImageLineInt.java"

# interfaces
.implements Lar/com/hjg/pngj/IImageLine;
.implements Lar/com/hjg/pngj/IImageLineArray;


# instance fields
.field protected filterType:Lar/com/hjg/pngj/FilterType;

.field public final imgInfo:Lar/com/hjg/pngj/ImageInfo;

.field protected final scanline:[I

.field protected final size:I


# direct methods
.method public constructor <init>(Lar/com/hjg/pngj/ImageInfo;)V
    .locals 1
    .param p1, "imgInfo"    # Lar/com/hjg/pngj/ImageInfo;

    .line 39
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lar/com/hjg/pngj/ImageLineInt;-><init>(Lar/com/hjg/pngj/ImageInfo;[I)V

    .line 40
    return-void
.end method

.method public constructor <init>(Lar/com/hjg/pngj/ImageInfo;[I)V
    .locals 2
    .param p1, "imgInfo"    # Lar/com/hjg/pngj/ImageInfo;
    .param p2, "sci"    # [I

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    sget-object v0, Lar/com/hjg/pngj/FilterType;->FILTER_UNKNOWN:Lar/com/hjg/pngj/FilterType;

    iput-object v0, p0, Lar/com/hjg/pngj/ImageLineInt;->filterType:Lar/com/hjg/pngj/FilterType;

    .line 47
    iput-object p1, p0, Lar/com/hjg/pngj/ImageLineInt;->imgInfo:Lar/com/hjg/pngj/ImageInfo;

    .line 48
    sget-object v0, Lar/com/hjg/pngj/FilterType;->FILTER_UNKNOWN:Lar/com/hjg/pngj/FilterType;

    iput-object v0, p0, Lar/com/hjg/pngj/ImageLineInt;->filterType:Lar/com/hjg/pngj/FilterType;

    .line 49
    iget v0, p1, Lar/com/hjg/pngj/ImageInfo;->samplesPerRow:I

    iput v0, p0, Lar/com/hjg/pngj/ImageLineInt;->size:I

    .line 50
    if-eqz p2, :cond_0

    array-length v1, p2

    if-lt v1, v0, :cond_0

    move-object v0, p2

    goto :goto_0

    :cond_0
    iget v0, p0, Lar/com/hjg/pngj/ImageLineInt;->size:I

    new-array v0, v0, [I

    :goto_0
    iput-object v0, p0, Lar/com/hjg/pngj/ImageLineInt;->scanline:[I

    .line 51
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
            "Lar/com/hjg/pngj/ImageLineInt;",
            ">;"
        }
    .end annotation

    .line 187
    new-instance v0, Lar/com/hjg/pngj/ImageLineInt$1;

    invoke-direct {v0}, Lar/com/hjg/pngj/ImageLineInt$1;-><init>()V

    return-object v0
.end method


# virtual methods
.method public endReadFromPngRaw()V
    .locals 0

    .line 157
    return-void
.end method

.method public getElem(I)I
    .locals 1
    .param p1, "i"    # I

    .line 167
    iget-object v0, p0, Lar/com/hjg/pngj/ImageLineInt;->scanline:[I

    aget v0, v0, p1

    return v0
.end method

.method public getFilterType()Lar/com/hjg/pngj/FilterType;
    .locals 1

    .line 54
    iget-object v0, p0, Lar/com/hjg/pngj/ImageLineInt;->filterType:Lar/com/hjg/pngj/FilterType;

    return-object v0
.end method

.method public getImageInfo()Lar/com/hjg/pngj/ImageInfo;
    .locals 1

    .line 178
    iget-object v0, p0, Lar/com/hjg/pngj/ImageLineInt;->imgInfo:Lar/com/hjg/pngj/ImageInfo;

    return-object v0
.end method

.method public getScanline()[I
    .locals 1

    .line 174
    iget-object v0, p0, Lar/com/hjg/pngj/ImageLineInt;->scanline:[I

    return-object v0
.end method

.method public getSize()I
    .locals 1

    .line 163
    iget v0, p0, Lar/com/hjg/pngj/ImageLineInt;->size:I

    return v0
.end method

.method public readFromPngRaw([BIII)V
    .locals 15
    .param p1, "raw"    # [B
    .param p2, "len"    # I
    .param p3, "offset"    # I
    .param p4, "step"    # I

    .line 69
    move-object v0, p0

    move/from16 v1, p2

    move/from16 v2, p4

    const/4 v3, 0x0

    aget-byte v4, p1, v3

    invoke-static {v4}, Lar/com/hjg/pngj/FilterType;->getByVal(I)Lar/com/hjg/pngj/FilterType;

    move-result-object v4

    invoke-virtual {p0, v4}, Lar/com/hjg/pngj/ImageLineInt;->setFilterType(Lar/com/hjg/pngj/FilterType;)V

    .line 70
    add-int/lit8 v4, v1, -0x1

    .line 71
    .local v4, "len1":I
    add-int/lit8 v5, v2, -0x1

    iget-object v6, v0, Lar/com/hjg/pngj/ImageLineInt;->imgInfo:Lar/com/hjg/pngj/ImageInfo;

    iget v6, v6, Lar/com/hjg/pngj/ImageInfo;->channels:I

    mul-int/2addr v5, v6

    .line 72
    .local v5, "step1":I
    iget-object v6, v0, Lar/com/hjg/pngj/ImageLineInt;->imgInfo:Lar/com/hjg/pngj/ImageInfo;

    iget v6, v6, Lar/com/hjg/pngj/ImageInfo;->bitDepth:I

    const/16 v7, 0x8

    const/4 v8, 0x1

    if-ne v6, v7, :cond_4

    .line 73
    if-ne v2, v8, :cond_1

    .line 74
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget v6, v0, Lar/com/hjg/pngj/ImageLineInt;->size:I

    if-ge v3, v6, :cond_0

    .line 75
    iget-object v6, v0, Lar/com/hjg/pngj/ImageLineInt;->scanline:[I

    add-int/lit8 v7, v3, 0x1

    aget-byte v7, p1, v7

    and-int/lit16 v7, v7, 0xff

    aput v7, v6, v3

    .line 74
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .end local v3    # "i":I
    :cond_0
    goto/16 :goto_5

    .line 78
    :cond_1
    const/4 v3, 0x1

    .local v3, "s":I
    const/4 v6, 0x0

    .local v6, "c":I
    iget-object v7, v0, Lar/com/hjg/pngj/ImageLineInt;->imgInfo:Lar/com/hjg/pngj/ImageInfo;

    iget v7, v7, Lar/com/hjg/pngj/ImageInfo;->channels:I

    mul-int v7, v7, p3

    .local v7, "i":I
    :goto_1
    if-gt v3, v4, :cond_3

    .line 79
    iget-object v9, v0, Lar/com/hjg/pngj/ImageLineInt;->scanline:[I

    aget-byte v10, p1, v3

    and-int/lit16 v10, v10, 0xff

    aput v10, v9, v7

    .line 80
    add-int/lit8 v6, v6, 0x1

    .line 81
    iget-object v9, v0, Lar/com/hjg/pngj/ImageLineInt;->imgInfo:Lar/com/hjg/pngj/ImageInfo;

    iget v9, v9, Lar/com/hjg/pngj/ImageInfo;->channels:I

    if-ne v6, v9, :cond_2

    .line 82
    const/4 v6, 0x0

    .line 83
    add-int/2addr v7, v5

    .line 78
    :cond_2
    add-int/lit8 v3, v3, 0x1

    add-int/2addr v7, v8

    goto :goto_1

    .end local v3    # "s":I
    .end local v6    # "c":I
    .end local v7    # "i":I
    :cond_3
    goto/16 :goto_5

    .line 87
    :cond_4
    iget-object v6, v0, Lar/com/hjg/pngj/ImageLineInt;->imgInfo:Lar/com/hjg/pngj/ImageInfo;

    iget v6, v6, Lar/com/hjg/pngj/ImageInfo;->bitDepth:I

    const/16 v9, 0x10

    if-ne v6, v9, :cond_a

    .line 88
    if-ne v2, v8, :cond_6

    .line 89
    const/4 v3, 0x0

    .local v3, "i":I
    const/4 v6, 0x1

    .local v6, "s":I
    :goto_2
    iget v8, v0, Lar/com/hjg/pngj/ImageLineInt;->size:I

    if-ge v3, v8, :cond_5

    .line 90
    iget-object v8, v0, Lar/com/hjg/pngj/ImageLineInt;->scanline:[I

    add-int/lit8 v9, v6, 0x1

    .end local v6    # "s":I
    .local v9, "s":I
    aget-byte v6, p1, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/2addr v6, v7

    add-int/lit8 v10, v9, 0x1

    .end local v9    # "s":I
    .local v10, "s":I
    aget-byte v9, p1, v9

    and-int/lit16 v9, v9, 0xff

    or-int/2addr v6, v9

    aput v6, v8, v3

    .line 89
    add-int/lit8 v3, v3, 0x1

    move v6, v10

    goto :goto_2

    .end local v3    # "i":I
    .end local v10    # "s":I
    :cond_5
    goto :goto_5

    .line 93
    :cond_6
    const/4 v6, 0x1

    .restart local v6    # "s":I
    const/4 v9, 0x0

    .local v9, "c":I
    if-eqz p3, :cond_7

    iget-object v3, v0, Lar/com/hjg/pngj/ImageLineInt;->imgInfo:Lar/com/hjg/pngj/ImageInfo;

    iget v3, v3, Lar/com/hjg/pngj/ImageInfo;->channels:I

    mul-int v3, v3, p3

    .restart local v3    # "i":I
    :cond_7
    :goto_3
    if-gt v6, v4, :cond_9

    .line 94
    iget-object v10, v0, Lar/com/hjg/pngj/ImageLineInt;->scanline:[I

    add-int/lit8 v11, v6, 0x1

    .end local v6    # "s":I
    .local v11, "s":I
    aget-byte v6, p1, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/2addr v6, v7

    aget-byte v12, p1, v11

    and-int/lit16 v12, v12, 0xff

    or-int/2addr v6, v12

    aput v6, v10, v3

    .line 95
    add-int/lit8 v9, v9, 0x1

    .line 96
    iget-object v6, v0, Lar/com/hjg/pngj/ImageLineInt;->imgInfo:Lar/com/hjg/pngj/ImageInfo;

    iget v6, v6, Lar/com/hjg/pngj/ImageInfo;->channels:I

    if-ne v9, v6, :cond_8

    .line 97
    const/4 v6, 0x0

    .line 98
    .end local v9    # "c":I
    .local v6, "c":I
    add-int/2addr v3, v5

    move v9, v6

    .line 93
    .end local v6    # "c":I
    .restart local v9    # "c":I
    :cond_8
    add-int/lit8 v6, v11, 0x1

    .end local v11    # "s":I
    .local v6, "s":I
    add-int/2addr v3, v8

    goto :goto_3

    .end local v3    # "i":I
    .end local v6    # "s":I
    .end local v9    # "c":I
    :cond_9
    goto :goto_5

    .line 104
    :cond_a
    iget-object v3, v0, Lar/com/hjg/pngj/ImageLineInt;->imgInfo:Lar/com/hjg/pngj/ImageInfo;

    iget v3, v3, Lar/com/hjg/pngj/ImageInfo;->bitDepth:I

    .line 105
    .local v3, "bd":I
    invoke-static {v3}, Lar/com/hjg/pngj/ImageLineHelper;->getMaskForPackedFormats(I)I

    move-result v6

    .line 106
    .local v6, "mask0":I
    iget-object v7, v0, Lar/com/hjg/pngj/ImageLineInt;->imgInfo:Lar/com/hjg/pngj/ImageInfo;

    iget v7, v7, Lar/com/hjg/pngj/ImageInfo;->channels:I

    mul-int v7, v7, p3

    .restart local v7    # "i":I
    const/4 v9, 0x1

    .local v9, "r":I
    const/4 v10, 0x0

    .local v10, "c":I
    :goto_4
    if-ge v9, v1, :cond_e

    .line 107
    move v11, v6

    .line 108
    .local v11, "mask":I
    rsub-int/lit8 v12, v3, 0x8

    .line 110
    .local v12, "shi":I
    :cond_b
    iget-object v13, v0, Lar/com/hjg/pngj/ImageLineInt;->scanline:[I

    aget-byte v14, p1, v9

    and-int/2addr v14, v11

    shr-int/2addr v14, v12

    aput v14, v13, v7

    .line 111
    shr-int/2addr v11, v3

    .line 112
    sub-int/2addr v12, v3

    .line 113
    add-int/2addr v7, v8

    .line 114
    add-int/2addr v10, v8

    .line 115
    iget-object v13, v0, Lar/com/hjg/pngj/ImageLineInt;->imgInfo:Lar/com/hjg/pngj/ImageInfo;

    iget v13, v13, Lar/com/hjg/pngj/ImageInfo;->channels:I

    if-ne v10, v13, :cond_c

    .line 116
    const/4 v10, 0x0

    .line 117
    add-int/2addr v7, v5

    .line 119
    :cond_c
    if-eqz v11, :cond_d

    iget v13, v0, Lar/com/hjg/pngj/ImageLineInt;->size:I

    if-lt v7, v13, :cond_b

    .line 106
    :cond_d
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .line 122
    .end local v3    # "bd":I
    .end local v6    # "mask0":I
    .end local v7    # "i":I
    .end local v9    # "r":I
    .end local v10    # "c":I
    .end local v11    # "mask":I
    .end local v12    # "shi":I
    :cond_e
    :goto_5
    return-void
.end method

.method protected setFilterType(Lar/com/hjg/pngj/FilterType;)V
    .locals 0
    .param p1, "ft"    # Lar/com/hjg/pngj/FilterType;

    .line 58
    iput-object p1, p0, Lar/com/hjg/pngj/ImageLineInt;->filterType:Lar/com/hjg/pngj/FilterType;

    .line 59
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " cols="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lar/com/hjg/pngj/ImageLineInt;->imgInfo:Lar/com/hjg/pngj/ImageInfo;

    iget v1, v1, Lar/com/hjg/pngj/ImageInfo;->cols:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " bpc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lar/com/hjg/pngj/ImageLineInt;->imgInfo:Lar/com/hjg/pngj/ImageInfo;

    iget v1, v1, Lar/com/hjg/pngj/ImageInfo;->bitDepth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lar/com/hjg/pngj/ImageLineInt;->scanline:[I

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToPngRaw([B)V
    .locals 7
    .param p1, "raw"    # [B

    .line 125
    iget-object v0, p0, Lar/com/hjg/pngj/ImageLineInt;->filterType:Lar/com/hjg/pngj/FilterType;

    iget v0, v0, Lar/com/hjg/pngj/FilterType;->val:I

    int-to-byte v0, v0

    const/4 v1, 0x0

    aput-byte v0, p1, v1

    .line 126
    iget-object v0, p0, Lar/com/hjg/pngj/ImageLineInt;->imgInfo:Lar/com/hjg/pngj/ImageInfo;

    iget v0, v0, Lar/com/hjg/pngj/ImageInfo;->bitDepth:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    .line 127
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lar/com/hjg/pngj/ImageLineInt;->size:I

    if-ge v0, v1, :cond_0

    .line 128
    add-int/lit8 v1, v0, 0x1

    iget-object v2, p0, Lar/com/hjg/pngj/ImageLineInt;->scanline:[I

    aget v2, v2, v0

    int-to-byte v2, v2

    aput-byte v2, p1, v1

    .line 127
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v0    # "i":I
    :cond_0
    goto :goto_3

    .line 130
    :cond_1
    iget-object v0, p0, Lar/com/hjg/pngj/ImageLineInt;->imgInfo:Lar/com/hjg/pngj/ImageInfo;

    iget v0, v0, Lar/com/hjg/pngj/ImageInfo;->bitDepth:I

    const/16 v2, 0x10

    if-ne v0, v2, :cond_3

    .line 131
    const/4 v0, 0x0

    .restart local v0    # "i":I
    const/4 v2, 0x1

    .local v2, "s":I
    :goto_1
    iget v3, p0, Lar/com/hjg/pngj/ImageLineInt;->size:I

    if-ge v0, v3, :cond_2

    .line 132
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "s":I
    .local v3, "s":I
    iget-object v4, p0, Lar/com/hjg/pngj/ImageLineInt;->scanline:[I

    aget v5, v4, v0

    shr-int/2addr v5, v1

    int-to-byte v5, v5

    aput-byte v5, p1, v2

    .line 133
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "s":I
    .restart local v2    # "s":I
    aget v4, v4, v0

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, p1, v3

    .line 131
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v0    # "i":I
    .end local v2    # "s":I
    :cond_2
    goto :goto_3

    .line 137
    :cond_3
    iget-object v0, p0, Lar/com/hjg/pngj/ImageLineInt;->imgInfo:Lar/com/hjg/pngj/ImageInfo;

    iget v0, v0, Lar/com/hjg/pngj/ImageInfo;->bitDepth:I

    .line 138
    .local v0, "bd":I
    rsub-int/lit8 v1, v0, 0x8

    .line 139
    .local v1, "shi":I
    const/4 v2, 0x0

    .line 140
    .local v2, "v":I
    const/4 v3, 0x0

    .local v3, "i":I
    const/4 v4, 0x1

    .local v4, "r":I
    :goto_2
    iget v5, p0, Lar/com/hjg/pngj/ImageLineInt;->size:I

    if-ge v3, v5, :cond_6

    .line 141
    iget-object v6, p0, Lar/com/hjg/pngj/ImageLineInt;->scanline:[I

    aget v6, v6, v3

    shl-int/2addr v6, v1

    or-int/2addr v2, v6

    .line 142
    sub-int/2addr v1, v0

    .line 143
    if-ltz v1, :cond_4

    add-int/lit8 v5, v5, -0x1

    if-ne v3, v5, :cond_5

    .line 144
    :cond_4
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "r":I
    .local v5, "r":I
    int-to-byte v6, v2

    aput-byte v6, p1, v4

    .line 145
    rsub-int/lit8 v1, v0, 0x8

    .line 146
    const/4 v2, 0x0

    move v4, v5

    .line 140
    .end local v5    # "r":I
    .restart local v4    # "r":I
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 150
    .end local v0    # "bd":I
    .end local v1    # "shi":I
    .end local v2    # "v":I
    .end local v3    # "i":I
    .end local v4    # "r":I
    :cond_6
    :goto_3
    return-void
.end method
