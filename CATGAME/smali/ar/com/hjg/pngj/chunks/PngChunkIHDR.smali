.class public Lar/com/hjg/pngj/chunks/PngChunkIHDR;
.super Lar/com/hjg/pngj/chunks/PngChunkSingle;
.source "PngChunkIHDR.java"


# static fields
.field public static final ID:Ljava/lang/String; = "IHDR"


# instance fields
.field private bitspc:I

.field private colormodel:I

.field private cols:I

.field private compmeth:I

.field private filmeth:I

.field private interlaced:I

.field private rows:I


# direct methods
.method public constructor <init>(Lar/com/hjg/pngj/ImageInfo;)V
    .locals 1
    .param p1, "info"    # Lar/com/hjg/pngj/ImageInfo;

    .line 31
    const-string v0, "IHDR"

    invoke-direct {p0, v0, p1}, Lar/com/hjg/pngj/chunks/PngChunkSingle;-><init>(Ljava/lang/String;Lar/com/hjg/pngj/ImageInfo;)V

    .line 32
    return-void
.end method


# virtual methods
.method public check()V
    .locals 7

    .line 141
    iget v0, p0, Lar/com/hjg/pngj/chunks/PngChunkIHDR;->cols:I

    const/4 v1, 0x1

    if-lt v0, v1, :cond_a

    iget v0, p0, Lar/com/hjg/pngj/chunks/PngChunkIHDR;->rows:I

    if-lt v0, v1, :cond_a

    iget v0, p0, Lar/com/hjg/pngj/chunks/PngChunkIHDR;->compmeth:I

    if-nez v0, :cond_a

    iget v0, p0, Lar/com/hjg/pngj/chunks/PngChunkIHDR;->filmeth:I

    if-nez v0, :cond_a

    .line 143
    iget v0, p0, Lar/com/hjg/pngj/chunks/PngChunkIHDR;->bitspc:I

    const/16 v2, 0x8

    const/4 v3, 0x4

    const/4 v4, 0x2

    const-string v5, "bad IHDR: bitdepth invalid"

    const/16 v6, 0x10

    if-eq v0, v1, :cond_1

    if-eq v0, v4, :cond_1

    if-eq v0, v3, :cond_1

    if-eq v0, v2, :cond_1

    if-ne v0, v6, :cond_0

    goto :goto_0

    .line 144
    :cond_0
    new-instance v0, Lar/com/hjg/pngj/PngjInputException;

    invoke-direct {v0, v5}, Lar/com/hjg/pngj/PngjInputException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 145
    :cond_1
    :goto_0
    iget v0, p0, Lar/com/hjg/pngj/chunks/PngChunkIHDR;->interlaced:I

    if-ltz v0, :cond_9

    if-gt v0, v1, :cond_9

    .line 147
    iget v0, p0, Lar/com/hjg/pngj/chunks/PngChunkIHDR;->colormodel:I

    if-eqz v0, :cond_7

    const/4 v1, 0x6

    if-eq v0, v1, :cond_5

    if-eq v0, v4, :cond_5

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    if-ne v0, v3, :cond_2

    goto :goto_1

    .line 161
    :cond_2
    new-instance v0, Lar/com/hjg/pngj/PngjInputException;

    const-string v1, "bad IHDR: invalid colormodel"

    invoke-direct {v0, v1}, Lar/com/hjg/pngj/PngjInputException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 151
    :cond_3
    iget v0, p0, Lar/com/hjg/pngj/chunks/PngChunkIHDR;->bitspc:I

    if-eq v0, v6, :cond_4

    goto :goto_2

    .line 152
    :cond_4
    new-instance v0, Lar/com/hjg/pngj/PngjInputException;

    invoke-direct {v0, v5}, Lar/com/hjg/pngj/PngjInputException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 157
    :cond_5
    :goto_1
    iget v0, p0, Lar/com/hjg/pngj/chunks/PngChunkIHDR;->bitspc:I

    if-eq v0, v2, :cond_8

    if-ne v0, v6, :cond_6

    goto :goto_2

    .line 158
    :cond_6
    new-instance v0, Lar/com/hjg/pngj/PngjInputException;

    invoke-direct {v0, v5}, Lar/com/hjg/pngj/PngjInputException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 149
    :cond_7
    nop

    .line 163
    :cond_8
    :goto_2
    return-void

    .line 146
    :cond_9
    new-instance v0, Lar/com/hjg/pngj/PngjInputException;

    const-string v1, "bad IHDR: interlace invalid"

    invoke-direct {v0, v1}, Lar/com/hjg/pngj/PngjInputException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 142
    :cond_a
    new-instance v0, Lar/com/hjg/pngj/PngjInputException;

    const-string v1, "bad IHDR: col/row/compmethod/filmethod invalid"

    invoke-direct {v0, v1}, Lar/com/hjg/pngj/PngjInputException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public createImageInfo()Lar/com/hjg/pngj/ImageInfo;
    .locals 11

    .line 132
    invoke-virtual {p0}, Lar/com/hjg/pngj/chunks/PngChunkIHDR;->check()V

    .line 133
    invoke-virtual {p0}, Lar/com/hjg/pngj/chunks/PngChunkIHDR;->getColormodel()I

    move-result v0

    const/4 v1, 0x4

    and-int/2addr v0, v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_0

    move v8, v3

    goto :goto_0

    :cond_0
    move v8, v2

    .line 134
    .local v8, "alpha":Z
    :goto_0
    invoke-virtual {p0}, Lar/com/hjg/pngj/chunks/PngChunkIHDR;->getColormodel()I

    move-result v0

    and-int/2addr v0, v3

    if-eqz v0, :cond_1

    move v10, v3

    goto :goto_1

    :cond_1
    move v10, v2

    .line 135
    .local v10, "palette":Z
    :goto_1
    invoke-virtual {p0}, Lar/com/hjg/pngj/chunks/PngChunkIHDR;->getColormodel()I

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lar/com/hjg/pngj/chunks/PngChunkIHDR;->getColormodel()I

    move-result v0

    if-ne v0, v1, :cond_2

    goto :goto_2

    :cond_2
    move v9, v2

    goto :goto_3

    :cond_3
    :goto_2
    move v9, v3

    .line 137
    .local v9, "grayscale":Z
    :goto_3
    new-instance v0, Lar/com/hjg/pngj/ImageInfo;

    invoke-virtual {p0}, Lar/com/hjg/pngj/chunks/PngChunkIHDR;->getCols()I

    move-result v5

    invoke-virtual {p0}, Lar/com/hjg/pngj/chunks/PngChunkIHDR;->getRows()I

    move-result v6

    invoke-virtual {p0}, Lar/com/hjg/pngj/chunks/PngChunkIHDR;->getBitspc()I

    move-result v7

    move-object v4, v0

    invoke-direct/range {v4 .. v10}, Lar/com/hjg/pngj/ImageInfo;-><init>(IIIZZZ)V

    return-object v0
.end method

.method public createRawChunk()Lar/com/hjg/pngj/chunks/ChunkRaw;
    .locals 5

    .line 41
    new-instance v0, Lar/com/hjg/pngj/chunks/ChunkRaw;

    sget-object v1, Lar/com/hjg/pngj/chunks/ChunkHelper;->b_IHDR:[B

    const/16 v2, 0xd

    const/4 v3, 0x1

    invoke-direct {v0, v2, v1, v3}, Lar/com/hjg/pngj/chunks/ChunkRaw;-><init>(I[BZ)V

    .line 42
    .local v0, "c":Lar/com/hjg/pngj/chunks/ChunkRaw;
    const/4 v1, 0x0

    .line 43
    .local v1, "offset":I
    iget v2, p0, Lar/com/hjg/pngj/chunks/PngChunkIHDR;->cols:I

    iget-object v3, v0, Lar/com/hjg/pngj/chunks/ChunkRaw;->data:[B

    invoke-static {v2, v3, v1}, Lar/com/hjg/pngj/PngHelperInternal;->writeInt4tobytes(I[BI)V

    .line 44
    add-int/lit8 v1, v1, 0x4

    .line 45
    iget v2, p0, Lar/com/hjg/pngj/chunks/PngChunkIHDR;->rows:I

    iget-object v3, v0, Lar/com/hjg/pngj/chunks/ChunkRaw;->data:[B

    invoke-static {v2, v3, v1}, Lar/com/hjg/pngj/PngHelperInternal;->writeInt4tobytes(I[BI)V

    .line 46
    add-int/lit8 v1, v1, 0x4

    .line 47
    iget-object v2, v0, Lar/com/hjg/pngj/chunks/ChunkRaw;->data:[B

    add-int/lit8 v3, v1, 0x1

    .end local v1    # "offset":I
    .local v3, "offset":I
    iget v4, p0, Lar/com/hjg/pngj/chunks/PngChunkIHDR;->bitspc:I

    int-to-byte v4, v4

    aput-byte v4, v2, v1

    .line 48
    iget-object v1, v0, Lar/com/hjg/pngj/chunks/ChunkRaw;->data:[B

    add-int/lit8 v2, v3, 0x1

    .end local v3    # "offset":I
    .local v2, "offset":I
    iget v4, p0, Lar/com/hjg/pngj/chunks/PngChunkIHDR;->colormodel:I

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    .line 49
    iget-object v1, v0, Lar/com/hjg/pngj/chunks/ChunkRaw;->data:[B

    add-int/lit8 v3, v2, 0x1

    .end local v2    # "offset":I
    .restart local v3    # "offset":I
    iget v4, p0, Lar/com/hjg/pngj/chunks/PngChunkIHDR;->compmeth:I

    int-to-byte v4, v4

    aput-byte v4, v1, v2

    .line 50
    iget-object v1, v0, Lar/com/hjg/pngj/chunks/ChunkRaw;->data:[B

    add-int/lit8 v2, v3, 0x1

    .end local v3    # "offset":I
    .restart local v2    # "offset":I
    iget v4, p0, Lar/com/hjg/pngj/chunks/PngChunkIHDR;->filmeth:I

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    .line 51
    iget-object v1, v0, Lar/com/hjg/pngj/chunks/ChunkRaw;->data:[B

    add-int/lit8 v3, v2, 0x1

    .end local v2    # "offset":I
    .restart local v3    # "offset":I
    iget v4, p0, Lar/com/hjg/pngj/chunks/PngChunkIHDR;->interlaced:I

    int-to-byte v4, v4

    aput-byte v4, v1, v2

    .line 52
    return-object v0
.end method

.method public getBitspc()I
    .locals 1

    .line 87
    iget v0, p0, Lar/com/hjg/pngj/chunks/PngChunkIHDR;->bitspc:I

    return v0
.end method

.method public getColormodel()I
    .locals 1

    .line 95
    iget v0, p0, Lar/com/hjg/pngj/chunks/PngChunkIHDR;->colormodel:I

    return v0
.end method

.method public getCols()I
    .locals 1

    .line 71
    iget v0, p0, Lar/com/hjg/pngj/chunks/PngChunkIHDR;->cols:I

    return v0
.end method

.method public getCompmeth()I
    .locals 1

    .line 103
    iget v0, p0, Lar/com/hjg/pngj/chunks/PngChunkIHDR;->compmeth:I

    return v0
.end method

.method public getFilmeth()I
    .locals 1

    .line 111
    iget v0, p0, Lar/com/hjg/pngj/chunks/PngChunkIHDR;->filmeth:I

    return v0
.end method

.method public getInterlaced()I
    .locals 1

    .line 119
    iget v0, p0, Lar/com/hjg/pngj/chunks/PngChunkIHDR;->interlaced:I

    return v0
.end method

.method public getOrderingConstraint()Lar/com/hjg/pngj/chunks/PngChunk$ChunkOrderingConstraint;
    .locals 1

    .line 36
    sget-object v0, Lar/com/hjg/pngj/chunks/PngChunk$ChunkOrderingConstraint;->NA:Lar/com/hjg/pngj/chunks/PngChunk$ChunkOrderingConstraint;

    return-object v0
.end method

.method public getRows()I
    .locals 1

    .line 79
    iget v0, p0, Lar/com/hjg/pngj/chunks/PngChunkIHDR;->rows:I

    return v0
.end method

.method public isInterlaced()Z
    .locals 2

    .line 127
    invoke-virtual {p0}, Lar/com/hjg/pngj/chunks/PngChunkIHDR;->getInterlaced()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public parseFromRaw(Lar/com/hjg/pngj/chunks/ChunkRaw;)V
    .locals 3
    .param p1, "c"    # Lar/com/hjg/pngj/chunks/ChunkRaw;

    .line 57
    iget v0, p1, Lar/com/hjg/pngj/chunks/ChunkRaw;->len:I

    const/16 v1, 0xd

    if-ne v0, v1, :cond_0

    .line 59
    invoke-virtual {p1}, Lar/com/hjg/pngj/chunks/ChunkRaw;->getAsByteStream()Ljava/io/ByteArrayInputStream;

    move-result-object v0

    .line 60
    .local v0, "st":Ljava/io/ByteArrayInputStream;
    invoke-static {v0}, Lar/com/hjg/pngj/PngHelperInternal;->readInt4(Ljava/io/InputStream;)I

    move-result v1

    iput v1, p0, Lar/com/hjg/pngj/chunks/PngChunkIHDR;->cols:I

    .line 61
    invoke-static {v0}, Lar/com/hjg/pngj/PngHelperInternal;->readInt4(Ljava/io/InputStream;)I

    move-result v1

    iput v1, p0, Lar/com/hjg/pngj/chunks/PngChunkIHDR;->rows:I

    .line 63
    invoke-static {v0}, Lar/com/hjg/pngj/PngHelperInternal;->readByte(Ljava/io/InputStream;)I

    move-result v1

    iput v1, p0, Lar/com/hjg/pngj/chunks/PngChunkIHDR;->bitspc:I

    .line 64
    invoke-static {v0}, Lar/com/hjg/pngj/PngHelperInternal;->readByte(Ljava/io/InputStream;)I

    move-result v1

    iput v1, p0, Lar/com/hjg/pngj/chunks/PngChunkIHDR;->colormodel:I

    .line 65
    invoke-static {v0}, Lar/com/hjg/pngj/PngHelperInternal;->readByte(Ljava/io/InputStream;)I

    move-result v1

    iput v1, p0, Lar/com/hjg/pngj/chunks/PngChunkIHDR;->compmeth:I

    .line 66
    invoke-static {v0}, Lar/com/hjg/pngj/PngHelperInternal;->readByte(Ljava/io/InputStream;)I

    move-result v1

    iput v1, p0, Lar/com/hjg/pngj/chunks/PngChunkIHDR;->filmeth:I

    .line 67
    invoke-static {v0}, Lar/com/hjg/pngj/PngHelperInternal;->readByte(Ljava/io/InputStream;)I

    move-result v1

    iput v1, p0, Lar/com/hjg/pngj/chunks/PngChunkIHDR;->interlaced:I

    .line 68
    return-void

    .line 58
    .end local v0    # "st":Ljava/io/ByteArrayInputStream;
    :cond_0
    new-instance v0, Lar/com/hjg/pngj/PngjException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad IDHR len "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lar/com/hjg/pngj/chunks/ChunkRaw;->len:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lar/com/hjg/pngj/PngjException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setBitspc(I)V
    .locals 0
    .param p1, "bitspc"    # I

    .line 91
    iput p1, p0, Lar/com/hjg/pngj/chunks/PngChunkIHDR;->bitspc:I

    .line 92
    return-void
.end method

.method public setColormodel(I)V
    .locals 0
    .param p1, "colormodel"    # I

    .line 99
    iput p1, p0, Lar/com/hjg/pngj/chunks/PngChunkIHDR;->colormodel:I

    .line 100
    return-void
.end method

.method public setCols(I)V
    .locals 0
    .param p1, "cols"    # I

    .line 75
    iput p1, p0, Lar/com/hjg/pngj/chunks/PngChunkIHDR;->cols:I

    .line 76
    return-void
.end method

.method public setCompmeth(I)V
    .locals 0
    .param p1, "compmeth"    # I

    .line 107
    iput p1, p0, Lar/com/hjg/pngj/chunks/PngChunkIHDR;->compmeth:I

    .line 108
    return-void
.end method

.method public setFilmeth(I)V
    .locals 0
    .param p1, "filmeth"    # I

    .line 115
    iput p1, p0, Lar/com/hjg/pngj/chunks/PngChunkIHDR;->filmeth:I

    .line 116
    return-void
.end method

.method public setInterlaced(I)V
    .locals 0
    .param p1, "interlaced"    # I

    .line 123
    iput p1, p0, Lar/com/hjg/pngj/chunks/PngChunkIHDR;->interlaced:I

    .line 124
    return-void
.end method

.method public setRows(I)V
    .locals 0
    .param p1, "rows"    # I

    .line 83
    iput p1, p0, Lar/com/hjg/pngj/chunks/PngChunkIHDR;->rows:I

    .line 84
    return-void
.end method
