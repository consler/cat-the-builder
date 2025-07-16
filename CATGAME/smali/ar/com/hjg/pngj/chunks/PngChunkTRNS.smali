.class public Lar/com/hjg/pngj/chunks/PngChunkTRNS;
.super Lar/com/hjg/pngj/chunks/PngChunkSingle;
.source "PngChunkTRNS.java"


# static fields
.field public static final ID:Ljava/lang/String; = "tRNS"


# instance fields
.field private blue:I

.field private gray:I

.field private green:I

.field private paletteAlpha:[I

.field private red:I


# direct methods
.method public constructor <init>(Lar/com/hjg/pngj/ImageInfo;)V
    .locals 1

    const-string v0, "tRNS"

    .line 25
    invoke-direct {p0, v0, p1}, Lar/com/hjg/pngj/chunks/PngChunkSingle;-><init>(Ljava/lang/String;Lar/com/hjg/pngj/ImageInfo;)V

    const/4 p1, 0x0

    new-array p1, p1, [I

    .line 22
    iput-object p1, p0, Lar/com/hjg/pngj/chunks/PngChunkTRNS;->paletteAlpha:[I

    return-void
.end method


# virtual methods
.method public createRawChunk()Lar/com/hjg/pngj/chunks/ChunkRaw;
    .locals 4

    .line 36
    iget-object v0, p0, Lar/com/hjg/pngj/chunks/PngChunkTRNS;->imgInfo:Lar/com/hjg/pngj/ImageInfo;

    iget-boolean v0, v0, Lar/com/hjg/pngj/ImageInfo;->greyscale:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    .line 37
    invoke-virtual {p0, v0, v1}, Lar/com/hjg/pngj/chunks/PngChunkTRNS;->createEmptyChunk(IZ)Lar/com/hjg/pngj/chunks/ChunkRaw;

    move-result-object v0

    .line 38
    iget v1, p0, Lar/com/hjg/pngj/chunks/PngChunkTRNS;->gray:I

    iget-object v3, v0, Lar/com/hjg/pngj/chunks/ChunkRaw;->data:[B

    invoke-static {v1, v3, v2}, Lar/com/hjg/pngj/PngHelperInternal;->writeInt2tobytes(I[BI)V

    goto :goto_1

    .line 39
    :cond_0
    iget-object v0, p0, Lar/com/hjg/pngj/chunks/PngChunkTRNS;->imgInfo:Lar/com/hjg/pngj/ImageInfo;

    iget-boolean v0, v0, Lar/com/hjg/pngj/ImageInfo;->indexed:Z

    if-eqz v0, :cond_1

    .line 40
    iget-object v0, p0, Lar/com/hjg/pngj/chunks/PngChunkTRNS;->paletteAlpha:[I

    array-length v0, v0

    invoke-virtual {p0, v0, v1}, Lar/com/hjg/pngj/chunks/PngChunkTRNS;->createEmptyChunk(IZ)Lar/com/hjg/pngj/chunks/ChunkRaw;

    move-result-object v0

    .line 41
    :goto_0
    iget v1, v0, Lar/com/hjg/pngj/chunks/ChunkRaw;->len:I

    if-ge v2, v1, :cond_2

    .line 42
    iget-object v1, v0, Lar/com/hjg/pngj/chunks/ChunkRaw;->data:[B

    iget-object v3, p0, Lar/com/hjg/pngj/chunks/PngChunkTRNS;->paletteAlpha:[I

    aget v3, v3, v2

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x6

    .line 45
    invoke-virtual {p0, v0, v1}, Lar/com/hjg/pngj/chunks/PngChunkTRNS;->createEmptyChunk(IZ)Lar/com/hjg/pngj/chunks/ChunkRaw;

    move-result-object v0

    .line 46
    iget v1, p0, Lar/com/hjg/pngj/chunks/PngChunkTRNS;->red:I

    iget-object v3, v0, Lar/com/hjg/pngj/chunks/ChunkRaw;->data:[B

    invoke-static {v1, v3, v2}, Lar/com/hjg/pngj/PngHelperInternal;->writeInt2tobytes(I[BI)V

    .line 47
    iget v1, p0, Lar/com/hjg/pngj/chunks/PngChunkTRNS;->green:I

    iget-object v3, v0, Lar/com/hjg/pngj/chunks/ChunkRaw;->data:[B

    invoke-static {v1, v3, v2}, Lar/com/hjg/pngj/PngHelperInternal;->writeInt2tobytes(I[BI)V

    .line 48
    iget v1, p0, Lar/com/hjg/pngj/chunks/PngChunkTRNS;->blue:I

    iget-object v3, v0, Lar/com/hjg/pngj/chunks/ChunkRaw;->data:[B

    invoke-static {v1, v3, v2}, Lar/com/hjg/pngj/PngHelperInternal;->writeInt2tobytes(I[BI)V

    :cond_2
    :goto_1
    return-object v0
.end method

.method public getGray()I
    .locals 2

    .line 101
    iget-object v0, p0, Lar/com/hjg/pngj/chunks/PngChunkTRNS;->imgInfo:Lar/com/hjg/pngj/ImageInfo;

    iget-boolean v0, v0, Lar/com/hjg/pngj/ImageInfo;->greyscale:Z

    if-eqz v0, :cond_0

    .line 103
    iget v0, p0, Lar/com/hjg/pngj/chunks/PngChunkTRNS;->gray:I

    return v0

    .line 102
    :cond_0
    new-instance v0, Lar/com/hjg/pngj/PngjException;

    const-string v1, "only grayscale images support this"

    invoke-direct {v0, v1}, Lar/com/hjg/pngj/PngjException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getOrderingConstraint()Lar/com/hjg/pngj/chunks/PngChunk$ChunkOrderingConstraint;
    .locals 1

    .line 30
    sget-object v0, Lar/com/hjg/pngj/chunks/PngChunk$ChunkOrderingConstraint;->AFTER_PLTE_BEFORE_IDAT:Lar/com/hjg/pngj/chunks/PngChunk$ChunkOrderingConstraint;

    return-object v0
.end method

.method public getPalletteAlpha()[I
    .locals 1

    .line 131
    iget-object v0, p0, Lar/com/hjg/pngj/chunks/PngChunkTRNS;->paletteAlpha:[I

    return-object v0
.end method

.method public getRGB()[I
    .locals 3

    .line 83
    iget-object v0, p0, Lar/com/hjg/pngj/chunks/PngChunkTRNS;->imgInfo:Lar/com/hjg/pngj/ImageInfo;

    iget-boolean v0, v0, Lar/com/hjg/pngj/ImageInfo;->greyscale:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lar/com/hjg/pngj/chunks/PngChunkTRNS;->imgInfo:Lar/com/hjg/pngj/ImageInfo;

    iget-boolean v0, v0, Lar/com/hjg/pngj/ImageInfo;->indexed:Z

    if-nez v0, :cond_0

    const/4 v0, 0x3

    new-array v0, v0, [I

    const/4 v1, 0x0

    .line 85
    iget v2, p0, Lar/com/hjg/pngj/chunks/PngChunkTRNS;->red:I

    aput v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Lar/com/hjg/pngj/chunks/PngChunkTRNS;->green:I

    aput v2, v0, v1

    const/4 v1, 0x2

    iget v2, p0, Lar/com/hjg/pngj/chunks/PngChunkTRNS;->blue:I

    aput v2, v0, v1

    return-object v0

    .line 84
    :cond_0
    new-instance v0, Lar/com/hjg/pngj/PngjException;

    const-string v1, "only rgb or rgba images support this"

    invoke-direct {v0, v1}, Lar/com/hjg/pngj/PngjException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getRGB888()I
    .locals 2

    .line 89
    iget-object v0, p0, Lar/com/hjg/pngj/chunks/PngChunkTRNS;->imgInfo:Lar/com/hjg/pngj/ImageInfo;

    iget-boolean v0, v0, Lar/com/hjg/pngj/ImageInfo;->greyscale:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lar/com/hjg/pngj/chunks/PngChunkTRNS;->imgInfo:Lar/com/hjg/pngj/ImageInfo;

    iget-boolean v0, v0, Lar/com/hjg/pngj/ImageInfo;->indexed:Z

    if-nez v0, :cond_0

    .line 91
    iget v0, p0, Lar/com/hjg/pngj/chunks/PngChunkTRNS;->red:I

    shl-int/lit8 v0, v0, 0x10

    iget v1, p0, Lar/com/hjg/pngj/chunks/PngChunkTRNS;->green:I

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    iget v1, p0, Lar/com/hjg/pngj/chunks/PngChunkTRNS;->blue:I

    or-int/2addr v0, v1

    return v0

    .line 90
    :cond_0
    new-instance v0, Lar/com/hjg/pngj/PngjException;

    const-string v1, "only rgb or rgba images support this"

    invoke-direct {v0, v1}, Lar/com/hjg/pngj/PngjException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public parseFromRaw(Lar/com/hjg/pngj/chunks/ChunkRaw;)V
    .locals 4

    .line 55
    iget-object v0, p0, Lar/com/hjg/pngj/chunks/PngChunkTRNS;->imgInfo:Lar/com/hjg/pngj/ImageInfo;

    iget-boolean v0, v0, Lar/com/hjg/pngj/ImageInfo;->greyscale:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 56
    iget-object p1, p1, Lar/com/hjg/pngj/chunks/ChunkRaw;->data:[B

    invoke-static {p1, v1}, Lar/com/hjg/pngj/PngHelperInternal;->readInt2fromBytes([BI)I

    move-result p1

    iput p1, p0, Lar/com/hjg/pngj/chunks/PngChunkTRNS;->gray:I

    goto :goto_1

    .line 57
    :cond_0
    iget-object v0, p0, Lar/com/hjg/pngj/chunks/PngChunkTRNS;->imgInfo:Lar/com/hjg/pngj/ImageInfo;

    iget-boolean v0, v0, Lar/com/hjg/pngj/ImageInfo;->indexed:Z

    if-eqz v0, :cond_1

    .line 58
    iget-object v0, p1, Lar/com/hjg/pngj/chunks/ChunkRaw;->data:[B

    array-length v0, v0

    .line 59
    new-array v2, v0, [I

    iput-object v2, p0, Lar/com/hjg/pngj/chunks/PngChunkTRNS;->paletteAlpha:[I

    :goto_0
    if-ge v1, v0, :cond_2

    .line 61
    iget-object v2, p0, Lar/com/hjg/pngj/chunks/PngChunkTRNS;->paletteAlpha:[I

    iget-object v3, p1, Lar/com/hjg/pngj/chunks/ChunkRaw;->data:[B

    aget-byte v3, v3, v1

    and-int/lit16 v3, v3, 0xff

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 64
    :cond_1
    iget-object v0, p1, Lar/com/hjg/pngj/chunks/ChunkRaw;->data:[B

    invoke-static {v0, v1}, Lar/com/hjg/pngj/PngHelperInternal;->readInt2fromBytes([BI)I

    move-result v0

    iput v0, p0, Lar/com/hjg/pngj/chunks/PngChunkTRNS;->red:I

    .line 65
    iget-object v0, p1, Lar/com/hjg/pngj/chunks/ChunkRaw;->data:[B

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lar/com/hjg/pngj/PngHelperInternal;->readInt2fromBytes([BI)I

    move-result v0

    iput v0, p0, Lar/com/hjg/pngj/chunks/PngChunkTRNS;->green:I

    .line 66
    iget-object p1, p1, Lar/com/hjg/pngj/chunks/ChunkRaw;->data:[B

    const/4 v0, 0x4

    invoke-static {p1, v0}, Lar/com/hjg/pngj/PngHelperInternal;->readInt2fromBytes([BI)I

    move-result p1

    iput p1, p0, Lar/com/hjg/pngj/chunks/PngChunkTRNS;->blue:I

    :cond_2
    :goto_1
    return-void
.end method

.method public setGray(I)V
    .locals 1

    .line 95
    iget-object v0, p0, Lar/com/hjg/pngj/chunks/PngChunkTRNS;->imgInfo:Lar/com/hjg/pngj/ImageInfo;

    iget-boolean v0, v0, Lar/com/hjg/pngj/ImageInfo;->greyscale:Z

    if-eqz v0, :cond_0

    .line 97
    iput p1, p0, Lar/com/hjg/pngj/chunks/PngChunkTRNS;->gray:I

    return-void

    .line 96
    :cond_0
    new-instance p1, Lar/com/hjg/pngj/PngjException;

    const-string v0, "only grayscale images support this"

    invoke-direct {p1, v0}, Lar/com/hjg/pngj/PngjException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setIndexEntryAsTransparent(I)V
    .locals 4

    .line 119
    iget-object v0, p0, Lar/com/hjg/pngj/chunks/PngChunkTRNS;->imgInfo:Lar/com/hjg/pngj/ImageInfo;

    iget-boolean v0, v0, Lar/com/hjg/pngj/ImageInfo;->indexed:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    new-array v0, v0, [I

    add-int/lit8 v1, p1, 0x1

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 121
    iput-object v0, p0, Lar/com/hjg/pngj/chunks/PngChunkTRNS;->paletteAlpha:[I

    move v0, v2

    :goto_0
    if-ge v0, p1, :cond_0

    .line 123
    iget-object v1, p0, Lar/com/hjg/pngj/chunks/PngChunkTRNS;->paletteAlpha:[I

    const/16 v3, 0xff

    aput v3, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 124
    :cond_0
    iget-object v0, p0, Lar/com/hjg/pngj/chunks/PngChunkTRNS;->paletteAlpha:[I

    aput v2, v0, p1

    return-void

    .line 120
    :cond_1
    new-instance p1, Lar/com/hjg/pngj/PngjException;

    const-string v0, "only indexed images support this"

    invoke-direct {p1, v0}, Lar/com/hjg/pngj/PngjException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setPalletteAlpha([I)V
    .locals 1

    .line 110
    iget-object v0, p0, Lar/com/hjg/pngj/chunks/PngChunkTRNS;->imgInfo:Lar/com/hjg/pngj/ImageInfo;

    iget-boolean v0, v0, Lar/com/hjg/pngj/ImageInfo;->indexed:Z

    if-eqz v0, :cond_0

    .line 112
    iput-object p1, p0, Lar/com/hjg/pngj/chunks/PngChunkTRNS;->paletteAlpha:[I

    return-void

    .line 111
    :cond_0
    new-instance p1, Lar/com/hjg/pngj/PngjException;

    const-string v0, "only indexed images support this"

    invoke-direct {p1, v0}, Lar/com/hjg/pngj/PngjException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setRGB(III)V
    .locals 1

    .line 75
    iget-object v0, p0, Lar/com/hjg/pngj/chunks/PngChunkTRNS;->imgInfo:Lar/com/hjg/pngj/ImageInfo;

    iget-boolean v0, v0, Lar/com/hjg/pngj/ImageInfo;->greyscale:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lar/com/hjg/pngj/chunks/PngChunkTRNS;->imgInfo:Lar/com/hjg/pngj/ImageInfo;

    iget-boolean v0, v0, Lar/com/hjg/pngj/ImageInfo;->indexed:Z

    if-nez v0, :cond_0

    .line 77
    iput p1, p0, Lar/com/hjg/pngj/chunks/PngChunkTRNS;->red:I

    .line 78
    iput p2, p0, Lar/com/hjg/pngj/chunks/PngChunkTRNS;->green:I

    .line 79
    iput p3, p0, Lar/com/hjg/pngj/chunks/PngChunkTRNS;->blue:I

    return-void

    .line 76
    :cond_0
    new-instance p1, Lar/com/hjg/pngj/PngjException;

    const-string p2, "only rgb or rgba images support this"

    invoke-direct {p1, p2}, Lar/com/hjg/pngj/PngjException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
