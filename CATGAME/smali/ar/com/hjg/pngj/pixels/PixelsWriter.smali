.class public abstract Lar/com/hjg/pngj/pixels/PixelsWriter;
.super Ljava/lang/Object;
.source "PixelsWriter.java"


# instance fields
.field protected final buflen:I

.field protected final bytesPixel:I

.field protected final bytesRow:I

.field private compressorStream:Lar/com/hjg/pngj/pixels/CompressorStream;

.field protected currentRow:I

.field protected deflaterCompLevel:I

.field protected deflaterStrategy:I

.field protected filterType:Lar/com/hjg/pngj/FilterType;

.field private filtersUsed:[I

.field protected final imgInfo:Lar/com/hjg/pngj/ImageInfo;

.field protected initdone:Z

.field private os:Ljava/io/OutputStream;


# direct methods
.method public constructor <init>(Lar/com/hjg/pngj/ImageInfo;)V
    .locals 1

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x6

    .line 31
    iput v0, p0, Lar/com/hjg/pngj/pixels/PixelsWriter;->deflaterCompLevel:I

    const/4 v0, 0x0

    .line 32
    iput v0, p0, Lar/com/hjg/pngj/pixels/PixelsWriter;->deflaterStrategy:I

    .line 34
    iput-boolean v0, p0, Lar/com/hjg/pngj/pixels/PixelsWriter;->initdone:Z

    const/4 v0, 0x5

    new-array v0, v0, [I

    .line 42
    iput-object v0, p0, Lar/com/hjg/pngj/pixels/PixelsWriter;->filtersUsed:[I

    .line 52
    iput-object p1, p0, Lar/com/hjg/pngj/pixels/PixelsWriter;->imgInfo:Lar/com/hjg/pngj/ImageInfo;

    .line 53
    iget v0, p1, Lar/com/hjg/pngj/ImageInfo;->bytesPerRow:I

    iput v0, p0, Lar/com/hjg/pngj/pixels/PixelsWriter;->bytesRow:I

    add-int/lit8 v0, v0, 0x1

    .line 54
    iput v0, p0, Lar/com/hjg/pngj/pixels/PixelsWriter;->buflen:I

    .line 55
    iget p1, p1, Lar/com/hjg/pngj/ImageInfo;->bytesPixel:I

    iput p1, p0, Lar/com/hjg/pngj/pixels/PixelsWriter;->bytesPixel:I

    const/4 p1, -0x1

    .line 56
    iput p1, p0, Lar/com/hjg/pngj/pixels/PixelsWriter;->currentRow:I

    .line 57
    sget-object p1, Lar/com/hjg/pngj/FilterType;->FILTER_DEFAULT:Lar/com/hjg/pngj/FilterType;

    iput-object p1, p0, Lar/com/hjg/pngj/pixels/PixelsWriter;->filterType:Lar/com/hjg/pngj/FilterType;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 161
    iget-object v0, p0, Lar/com/hjg/pngj/pixels/PixelsWriter;->compressorStream:Lar/com/hjg/pngj/pixels/CompressorStream;

    if-eqz v0, :cond_0

    .line 162
    invoke-virtual {v0}, Lar/com/hjg/pngj/pixels/CompressorStream;->close()V

    :cond_0
    return-void
.end method

.method protected abstract filterAndWrite([B)V
.end method

.method protected final filterRowWithFilterType(Lar/com/hjg/pngj/FilterType;[B[B[B)[B
    .locals 6

    .line 97
    sget-object v0, Lar/com/hjg/pngj/FilterType;->FILTER_NONE:Lar/com/hjg/pngj/FilterType;

    if-ne p1, v0, :cond_0

    move-object p4, p2

    .line 99
    :cond_0
    iget v0, p1, Lar/com/hjg/pngj/FilterType;->val:I

    int-to-byte v0, v0

    const/4 v1, 0x0

    aput-byte v0, p4, v1

    .line 101
    sget-object v0, Lar/com/hjg/pngj/pixels/PixelsWriter$1;->$SwitchMap$ar$com$hjg$pngj$FilterType:[I

    invoke-virtual {p1}, Lar/com/hjg/pngj/FilterType;->ordinal()I

    move-result v2

    aget v0, v0, v2

    const/4 v2, 0x1

    if-eq v0, v2, :cond_8

    const/4 v3, 0x2

    if-eq v0, v3, :cond_6

    const/4 v1, 0x3

    if-eq v0, v1, :cond_4

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    .line 126
    :goto_0
    iget p1, p0, Lar/com/hjg/pngj/pixels/PixelsWriter;->bytesRow:I

    if-gt v2, p1, :cond_8

    .line 127
    aget-byte p1, p2, v2

    aget-byte v0, p3, v2

    sub-int/2addr p1, v0

    int-to-byte p1, p1

    aput-byte p1, p4, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 130
    :cond_1
    new-instance p2, Lar/com/hjg/pngj/PngjOutputException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "Filter type not recognized: "

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lar/com/hjg/pngj/PngjOutputException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_2
    move p1, v2

    .line 120
    :goto_1
    iget v0, p0, Lar/com/hjg/pngj/pixels/PixelsWriter;->bytesPixel:I

    if-gt p1, v0, :cond_3

    .line 121
    aget-byte v0, p2, p1

    aget-byte v1, p3, p1

    and-int/lit16 v1, v1, 0xff

    div-int/2addr v1, v3

    sub-int/2addr v0, v1

    int-to-byte v0, v0

    aput-byte v0, p4, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_3
    add-int/2addr v0, v2

    move p1, v2

    .line 122
    :goto_2
    iget v1, p0, Lar/com/hjg/pngj/pixels/PixelsWriter;->bytesRow:I

    if-gt v0, v1, :cond_8

    .line 123
    aget-byte v1, p2, v0

    aget-byte v4, p3, v0

    and-int/lit16 v4, v4, 0xff

    aget-byte v5, p2, p1

    and-int/lit16 v5, v5, 0xff

    add-int/2addr v4, v5

    div-int/2addr v4, v3

    sub-int/2addr v1, v4

    int-to-byte v1, v1

    aput-byte v1, p4, v0

    add-int/lit8 v0, v0, 0x1

    add-int/2addr p1, v2

    goto :goto_2

    :cond_4
    move p1, v2

    .line 114
    :goto_3
    iget p3, p0, Lar/com/hjg/pngj/pixels/PixelsWriter;->bytesPixel:I

    if-gt p1, p3, :cond_5

    .line 115
    aget-byte p3, p2, p1

    aput-byte p3, p4, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    :cond_5
    add-int/2addr p3, v2

    move p1, v2

    .line 116
    :goto_4
    iget v0, p0, Lar/com/hjg/pngj/pixels/PixelsWriter;->bytesRow:I

    if-gt p3, v0, :cond_8

    .line 117
    aget-byte v0, p2, p3

    aget-byte v1, p2, p1

    sub-int/2addr v0, v1

    int-to-byte v0, v0

    aput-byte v0, p4, p3

    add-int/lit8 p3, p3, 0x1

    add-int/2addr p1, v2

    goto :goto_4

    :cond_6
    move p1, v2

    .line 106
    :goto_5
    iget v0, p0, Lar/com/hjg/pngj/pixels/PixelsWriter;->bytesPixel:I

    if-gt p1, v0, :cond_7

    .line 107
    aget-byte v0, p2, p1

    aget-byte v3, p3, p1

    and-int/lit16 v3, v3, 0xff

    invoke-static {v0, v1, v3, v1}, Lar/com/hjg/pngj/PngHelperInternal;->filterRowPaeth(IIII)I

    move-result v0

    int-to-byte v0, v0

    aput-byte v0, p4, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_5

    :cond_7
    add-int/2addr v0, v2

    move p1, v2

    .line 108
    :goto_6
    iget v1, p0, Lar/com/hjg/pngj/pixels/PixelsWriter;->bytesRow:I

    if-gt v0, v1, :cond_8

    .line 109
    aget-byte v1, p2, v0

    aget-byte v3, p2, p1

    and-int/lit16 v3, v3, 0xff

    aget-byte v4, p3, v0

    and-int/lit16 v4, v4, 0xff

    aget-byte v5, p3, p1

    and-int/lit16 v5, v5, 0xff

    invoke-static {v1, v3, v4, v5}, Lar/com/hjg/pngj/PngHelperInternal;->filterRowPaeth(IIII)I

    move-result v1

    int-to-byte v1, v1

    aput-byte v1, p4, v0

    add-int/lit8 v0, v0, 0x1

    add-int/2addr p1, v2

    goto :goto_6

    :cond_8
    return-object p4
.end method

.method public getCompression()D
    .locals 2

    .line 205
    iget-object v0, p0, Lar/com/hjg/pngj/pixels/PixelsWriter;->compressorStream:Lar/com/hjg/pngj/pixels/CompressorStream;

    invoke-virtual {v0}, Lar/com/hjg/pngj/pixels/CompressorStream;->isDone()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lar/com/hjg/pngj/pixels/PixelsWriter;->compressorStream:Lar/com/hjg/pngj/pixels/CompressorStream;

    invoke-virtual {v0}, Lar/com/hjg/pngj/pixels/CompressorStream;->getCompressionRatio()D

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    :goto_0
    return-wide v0
.end method

.method protected getDefaultFilter()Lar/com/hjg/pngj/FilterType;
    .locals 4

    .line 221
    iget-object v0, p0, Lar/com/hjg/pngj/pixels/PixelsWriter;->imgInfo:Lar/com/hjg/pngj/ImageInfo;

    iget-boolean v0, v0, Lar/com/hjg/pngj/ImageInfo;->indexed:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lar/com/hjg/pngj/pixels/PixelsWriter;->imgInfo:Lar/com/hjg/pngj/ImageInfo;

    iget v0, v0, Lar/com/hjg/pngj/ImageInfo;->bitDepth:I

    const/16 v1, 0x8

    if-ge v0, v1, :cond_0

    goto :goto_0

    .line 223
    :cond_0
    iget-object v0, p0, Lar/com/hjg/pngj/pixels/PixelsWriter;->imgInfo:Lar/com/hjg/pngj/ImageInfo;

    invoke-virtual {v0}, Lar/com/hjg/pngj/ImageInfo;->getTotalPixels()J

    move-result-wide v0

    const-wide/16 v2, 0x400

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    .line 224
    sget-object v0, Lar/com/hjg/pngj/FilterType;->FILTER_NONE:Lar/com/hjg/pngj/FilterType;

    return-object v0

    .line 225
    :cond_1
    iget-object v0, p0, Lar/com/hjg/pngj/pixels/PixelsWriter;->imgInfo:Lar/com/hjg/pngj/ImageInfo;

    iget v0, v0, Lar/com/hjg/pngj/ImageInfo;->rows:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 226
    sget-object v0, Lar/com/hjg/pngj/FilterType;->FILTER_SUB:Lar/com/hjg/pngj/FilterType;

    return-object v0

    .line 227
    :cond_2
    iget-object v0, p0, Lar/com/hjg/pngj/pixels/PixelsWriter;->imgInfo:Lar/com/hjg/pngj/ImageInfo;

    iget v0, v0, Lar/com/hjg/pngj/ImageInfo;->cols:I

    if-ne v0, v1, :cond_3

    .line 228
    sget-object v0, Lar/com/hjg/pngj/FilterType;->FILTER_UP:Lar/com/hjg/pngj/FilterType;

    return-object v0

    .line 230
    :cond_3
    sget-object v0, Lar/com/hjg/pngj/FilterType;->FILTER_PAETH:Lar/com/hjg/pngj/FilterType;

    return-object v0

    .line 222
    :cond_4
    :goto_0
    sget-object v0, Lar/com/hjg/pngj/FilterType;->FILTER_NONE:Lar/com/hjg/pngj/FilterType;

    return-object v0
.end method

.method public getDeflaterCompLevel()Ljava/lang/Integer;
    .locals 1

    .line 181
    iget v0, p0, Lar/com/hjg/pngj/pixels/PixelsWriter;->deflaterCompLevel:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public final getFilterType()Lar/com/hjg/pngj/FilterType;
    .locals 1

    .line 195
    iget-object v0, p0, Lar/com/hjg/pngj/pixels/PixelsWriter;->filterType:Lar/com/hjg/pngj/FilterType;

    return-object v0
.end method

.method public final getFiltersUsed()Ljava/lang/String;
    .locals 11

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    .line 235
    iget-object v1, p0, Lar/com/hjg/pngj/pixels/PixelsWriter;->filtersUsed:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    int-to-double v3, v1

    const-wide/high16 v5, 0x4059000000000000L    # 100.0

    mul-double/2addr v3, v5

    iget-object v1, p0, Lar/com/hjg/pngj/pixels/PixelsWriter;->imgInfo:Lar/com/hjg/pngj/ImageInfo;

    iget v1, v1, Lar/com/hjg/pngj/ImageInfo;->rows:I

    int-to-double v7, v1

    div-double/2addr v3, v7

    const-wide/high16 v7, 0x3fe0000000000000L    # 0.5

    add-double/2addr v3, v7

    double-to-int v1, v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    iget-object v1, p0, Lar/com/hjg/pngj/pixels/PixelsWriter;->filtersUsed:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    int-to-double v3, v1

    mul-double/2addr v3, v5

    iget-object v1, p0, Lar/com/hjg/pngj/pixels/PixelsWriter;->imgInfo:Lar/com/hjg/pngj/ImageInfo;

    iget v1, v1, Lar/com/hjg/pngj/ImageInfo;->rows:I

    int-to-double v9, v1

    div-double/2addr v3, v9

    add-double/2addr v3, v7

    double-to-int v1, v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    iget-object v1, p0, Lar/com/hjg/pngj/pixels/PixelsWriter;->filtersUsed:[I

    const/4 v2, 0x2

    aget v1, v1, v2

    int-to-double v3, v1

    mul-double/2addr v3, v5

    iget-object v1, p0, Lar/com/hjg/pngj/pixels/PixelsWriter;->imgInfo:Lar/com/hjg/pngj/ImageInfo;

    iget v1, v1, Lar/com/hjg/pngj/ImageInfo;->rows:I

    int-to-double v9, v1

    div-double/2addr v3, v9

    add-double/2addr v3, v7

    double-to-int v1, v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    iget-object v1, p0, Lar/com/hjg/pngj/pixels/PixelsWriter;->filtersUsed:[I

    const/4 v2, 0x3

    aget v1, v1, v2

    int-to-double v3, v1

    mul-double/2addr v3, v5

    iget-object v1, p0, Lar/com/hjg/pngj/pixels/PixelsWriter;->imgInfo:Lar/com/hjg/pngj/ImageInfo;

    iget v1, v1, Lar/com/hjg/pngj/ImageInfo;->rows:I

    int-to-double v9, v1

    div-double/2addr v3, v9

    add-double/2addr v3, v7

    double-to-int v1, v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    iget-object v1, p0, Lar/com/hjg/pngj/pixels/PixelsWriter;->filtersUsed:[I

    const/4 v2, 0x4

    aget v1, v1, v2

    int-to-double v3, v1

    mul-double/2addr v3, v5

    iget-object v1, p0, Lar/com/hjg/pngj/pixels/PixelsWriter;->imgInfo:Lar/com/hjg/pngj/ImageInfo;

    iget v1, v1, Lar/com/hjg/pngj/ImageInfo;->rows:I

    int-to-double v5, v1

    div-double/2addr v3, v5

    add-double/2addr v3, v7

    double-to-int v1, v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    const-string v1, "%d,%d,%d,%d,%d"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOs()Ljava/io/OutputStream;
    .locals 1

    .line 190
    iget-object v0, p0, Lar/com/hjg/pngj/pixels/PixelsWriter;->os:Ljava/io/OutputStream;

    return-object v0
.end method

.method public abstract getRowb()[B
.end method

.method public getTotalBytesToWrite()J
    .locals 2

    .line 213
    iget-object v0, p0, Lar/com/hjg/pngj/pixels/PixelsWriter;->imgInfo:Lar/com/hjg/pngj/ImageInfo;

    invoke-virtual {v0}, Lar/com/hjg/pngj/ImageInfo;->getTotalRawBytes()J

    move-result-wide v0

    return-wide v0
.end method

.method protected final init()V
    .locals 1

    .line 145
    iget-boolean v0, p0, Lar/com/hjg/pngj/pixels/PixelsWriter;->initdone:Z

    if-nez v0, :cond_0

    .line 146
    invoke-virtual {p0}, Lar/com/hjg/pngj/pixels/PixelsWriter;->initParams()V

    const/4 v0, 0x1

    .line 147
    iput-boolean v0, p0, Lar/com/hjg/pngj/pixels/PixelsWriter;->initdone:Z

    :cond_0
    return-void
.end method

.method protected initParams()V
    .locals 8

    .line 153
    iget-object v0, p0, Lar/com/hjg/pngj/pixels/PixelsWriter;->compressorStream:Lar/com/hjg/pngj/pixels/CompressorStream;

    if-nez v0, :cond_0

    .line 154
    new-instance v0, Lar/com/hjg/pngj/pixels/CompressorStreamDeflater;

    iget-object v2, p0, Lar/com/hjg/pngj/pixels/PixelsWriter;->os:Ljava/io/OutputStream;

    iget v3, p0, Lar/com/hjg/pngj/pixels/PixelsWriter;->buflen:I

    iget-object v1, p0, Lar/com/hjg/pngj/pixels/PixelsWriter;->imgInfo:Lar/com/hjg/pngj/ImageInfo;

    invoke-virtual {v1}, Lar/com/hjg/pngj/ImageInfo;->getTotalRawBytes()J

    move-result-wide v4

    iget v6, p0, Lar/com/hjg/pngj/pixels/PixelsWriter;->deflaterCompLevel:I

    iget v7, p0, Lar/com/hjg/pngj/pixels/PixelsWriter;->deflaterStrategy:I

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lar/com/hjg/pngj/pixels/CompressorStreamDeflater;-><init>(Ljava/io/OutputStream;IJII)V

    iput-object v0, p0, Lar/com/hjg/pngj/pixels/PixelsWriter;->compressorStream:Lar/com/hjg/pngj/pixels/CompressorStream;

    :cond_0
    return-void
.end method

.method public final processRow([B)V
    .locals 1

    .line 63
    iget-boolean v0, p0, Lar/com/hjg/pngj/pixels/PixelsWriter;->initdone:Z

    if-nez v0, :cond_0

    .line 64
    invoke-virtual {p0}, Lar/com/hjg/pngj/pixels/PixelsWriter;->init()V

    .line 65
    :cond_0
    iget v0, p0, Lar/com/hjg/pngj/pixels/PixelsWriter;->currentRow:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lar/com/hjg/pngj/pixels/PixelsWriter;->currentRow:I

    .line 66
    invoke-virtual {p0, p1}, Lar/com/hjg/pngj/pixels/PixelsWriter;->filterAndWrite([B)V

    return-void
.end method

.method protected sendToCompressedStream([B)V
    .locals 3

    .line 70
    iget-object v0, p0, Lar/com/hjg/pngj/pixels/PixelsWriter;->compressorStream:Lar/com/hjg/pngj/pixels/CompressorStream;

    array-length v1, p1

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2, v1}, Lar/com/hjg/pngj/pixels/CompressorStream;->write([BII)V

    .line 71
    iget-object v0, p0, Lar/com/hjg/pngj/pixels/PixelsWriter;->filtersUsed:[I

    aget-byte p1, p1, v2

    aget v1, v0, p1

    add-int/lit8 v1, v1, 0x1

    aput v1, v0, p1

    return-void
.end method

.method public setCompressorStream(Lar/com/hjg/pngj/pixels/CompressorStream;)V
    .locals 0

    .line 209
    iput-object p1, p0, Lar/com/hjg/pngj/pixels/PixelsWriter;->compressorStream:Lar/com/hjg/pngj/pixels/CompressorStream;

    return-void
.end method

.method public setDeflaterCompLevel(Ljava/lang/Integer;)V
    .locals 0

    .line 177
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lar/com/hjg/pngj/pixels/PixelsWriter;->deflaterCompLevel:I

    return-void
.end method

.method public setDeflaterStrategy(Ljava/lang/Integer;)V
    .locals 0

    .line 170
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lar/com/hjg/pngj/pixels/PixelsWriter;->deflaterStrategy:I

    return-void
.end method

.method public final setFilterType(Lar/com/hjg/pngj/FilterType;)V
    .locals 0

    .line 200
    iput-object p1, p0, Lar/com/hjg/pngj/pixels/PixelsWriter;->filterType:Lar/com/hjg/pngj/FilterType;

    return-void
.end method

.method public final setOs(Ljava/io/OutputStream;)V
    .locals 0

    .line 186
    iput-object p1, p0, Lar/com/hjg/pngj/pixels/PixelsWriter;->os:Ljava/io/OutputStream;

    return-void
.end method
