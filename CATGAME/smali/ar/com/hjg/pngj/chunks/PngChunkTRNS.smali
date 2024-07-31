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
    .param p1, "info"    # Lar/com/hjg/pngj/ImageInfo;

    .line 25
    const-string v0, "tRNS"

    invoke-direct {p0, v0, p1}, Lar/com/hjg/pngj/chunks/PngChunkSingle;-><init>(Ljava/lang/String;Lar/com/hjg/pngj/ImageInfo;)V

    .line 22
    const/4 v0, 0x0

    new-array v0, v0, [I

    iput-object v0, p0, Lar/com/hjg/pngj/chunks/PngChunkTRNS;->paletteAlpha:[I

    .line 26
    return-void
.end method


# virtual methods
.method public createRawChunk()Lar/com/hjg/pngj/chunks/ChunkRaw;
    .locals 4

    .line 35
    const/4 v0, 0x0

    .line 36
    .local v0, "c":Lar/com/hjg/pngj/chunks/ChunkRaw;
    iget-object v1, p0, Lar/com/hjg/pngj/chunks/PngChunkTRNS;->imgInfo:Lar/com/hjg/pngj/ImageInfo;

    iget-boolean v1, v1, Lar/com/hjg/pngj/ImageInfo;->greyscale:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    .line 37
    const/4 v1, 0x2

    invoke-virtual {p0, v1, v3}, Lar/com/hjg/pngj/chunks/PngChunkTRNS;->createEmptyChunk(IZ)Lar/com/hjg/pngj/chunks/ChunkRaw;

    move-result-object v0

    .line 38
    iget v1, p0, Lar/com/hjg/pngj/chunks/PngChunkTRNS;->gray:I

    iget-object v3, v0, Lar/com/hjg/pngj/chunks/ChunkRaw;->data:[B

    invoke-static {v1, v3, v2}, Lar/com/hjg/pngj/PngHelperInternal;->writeInt2tobytes(I[BI)V

    goto :goto_1

    .line 39
    :cond_0
    iget-object v1, p0, Lar/com/hjg/pngj/chunks/PngChunkTRNS;->imgInfo:Lar/com/hjg/pngj/ImageInfo;

    iget-boolean v1, v1, Lar/com/hjg/pngj/ImageInfo;->indexed:Z

    if-eqz v1, :cond_2

    .line 40
    iget-object v1, p0, Lar/com/hjg/pngj/chunks/PngChunkTRNS;->paletteAlpha:[I

    array-length v1, v1

    invoke-virtual {p0, v1, v3}, Lar/com/hjg/pngj/chunks/PngChunkTRNS;->createEmptyChunk(IZ)Lar/com/hjg/pngj/chunks/ChunkRaw;

    move-result-object v0

    .line 41
    const/4 v1, 0x0

    .local v1, "n":I
    :goto_0
    iget v2, v0, Lar/com/hjg/pngj/chunks/ChunkRaw;->len:I

    if-ge v1, v2, :cond_1

    .line 42
    iget-object v2, v0, Lar/com/hjg/pngj/chunks/ChunkRaw;->data:[B

    iget-object v3, p0, Lar/com/hjg/pngj/chunks/PngChunkTRNS;->paletteAlpha:[I

    aget v3, v3, v1

    int-to-byte v3, v3

    aput-byte v3, v2, v1

    .line 41
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v1    # "n":I
    :cond_1
    goto :goto_1

    .line 45
    :cond_2
    const/4 v1, 0x6

    invoke-virtual {p0, v1, v3}, Lar/com/hjg/pngj/chunks/PngChunkTRNS;->createEmptyChunk(IZ)Lar/com/hjg/pngj/chunks/ChunkRaw;

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

    .line 50
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

    .line 85
    const/4 v0, 0x3

    new-array v0, v0, [I

    const/4 v1, 0x0

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
    .param p1, "c"    # Lar/com/hjg/pngj/chunks/ChunkRaw;

    .line 55
    iget-object v0, p0, Lar/com/hjg/pngj/chunks/PngChunkTRNS;->imgInfo:Lar/com/hjg/pngj/ImageInfo;

    iget-boolean v0, v0, Lar/com/hjg/pngj/ImageInfo;->greyscale:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p1, Lar/com/hjg/pngj/chunks/ChunkRaw;->data:[B

    invoke-static {v0, v1}, Lar/com/hjg/pngj/PngHelperInternal;->readInt2fromBytes([BI)I

    move-result v0

    iput v0, p0, Lar/com/hjg/pngj/chunks/PngChunkTRNS;->gray:I

    goto :goto_1

    .line 57
    :cond_0
    iget-object v0, p0, Lar/com/hjg/pngj/chunks/PngChunkTRNS;->imgInfo:Lar/com/hjg/pngj/ImageInfo;

    iget-boolean v0, v0, Lar/com/hjg/pngj/ImageInfo;->indexed:Z

    if-eqz v0, :cond_2

    .line 58
    iget-object v0, p1, Lar/com/hjg/pngj/chunks/ChunkRaw;->data:[B

    array-length v0, v0

    .line 59
    .local v0, "nentries":I
    new-array v1, v0, [I

    iput-object v1, p0, Lar/com/hjg/pngj/chunks/PngChunkTRNS;->paletteAlpha:[I

    .line 60
    const/4 v1, 0x0

    .local v1, "n":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 61
    iget-object v2, p0, Lar/com/hjg/pngj/chunks/PngChunkTRNS;->paletteAlpha:[I

    iget-object v3, p1, Lar/com/hjg/pngj/chunks/ChunkRaw;->data:[B

    aget-byte v3, v3, v1

    and-int/lit16 v3, v3, 0xff

    aput v3, v2, v1

    .line 60
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 63
    .end local v0    # "nentries":I
    .end local v1    # "n":I
    :cond_1
    goto :goto_1

    .line 64
    :cond_2
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
    iget-object v0, p1, Lar/com/hjg/pngj/chunks/ChunkRaw;->data:[B

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lar/com/hjg/pngj/PngHelperInternal;->readInt2fromBytes([BI)I

    move-result v0

    iput v0, p0, Lar/com/hjg/pngj/chunks/PngChunkTRNS;->blue:I

    .line 68
    :goto_1
    return-void
.end method

.method public setGray(I)V
    .locals 2
    .param p1, "g"    # I

    .line 95
    iget-object v0, p0, Lar/com/hjg/pngj/chunks/PngChunkTRNS;->imgInfo:Lar/com/hjg/pngj/ImageInfo;

    iget-boolean v0, v0, Lar/com/hjg/pngj/ImageInfo;->greyscale:Z

    if-eqz v0, :cond_0

    .line 97
    iput p1, p0, Lar/com/hjg/pngj/chunks/PngChunkTRNS;->gray:I

    .line 98
    return-void

    .line 96
    :cond_0
    new-instance v0, Lar/com/hjg/pngj/PngjException;

    const-string v1, "only grayscale images support this"

    invoke-direct {v0, v1}, Lar/com/hjg/pngj/PngjException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setIndexEntryAsTransparent(I)V
    .locals 4
    .param p1, "palAlphaIndex"    # I

    .line 119
    iget-object v0, p0, Lar/com/hjg/pngj/chunks/PngChunkTRNS;->imgInfo:Lar/com/hjg/pngj/ImageInfo;

    iget-boolean v0, v0, Lar/com/hjg/pngj/ImageInfo;->indexed:Z

    if-eqz v0, :cond_1

    .line 121
    const/4 v0, 0x1

    new-array v0, v0, [I

    add-int/lit8 v1, p1, 0x1

    const/4 v2, 0x0

    aput v1, v0, v2

    iput-object v0, p0, Lar/com/hjg/pngj/chunks/PngChunkTRNS;->paletteAlpha:[I

    .line 122
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p1, :cond_0

    .line 123
    iget-object v1, p0, Lar/com/hjg/pngj/chunks/PngChunkTRNS;->paletteAlpha:[I

    const/16 v3, 0xff

    aput v3, v1, v0

    .line 122
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 124
    .end local v0    # "i":I
    :cond_0
    iget-object v0, p0, Lar/com/hjg/pngj/chunks/PngChunkTRNS;->paletteAlpha:[I

    aput v2, v0, p1

    .line 125
    return-void

    .line 120
    :cond_1
    new-instance v0, Lar/com/hjg/pngj/PngjException;

    const-string v1, "only indexed images support this"

    invoke-direct {v0, v1}, Lar/com/hjg/pngj/PngjException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setPalletteAlpha([I)V
    .locals 2
    .param p1, "palAlpha"    # [I

    .line 110
    iget-object v0, p0, Lar/com/hjg/pngj/chunks/PngChunkTRNS;->imgInfo:Lar/com/hjg/pngj/ImageInfo;

    iget-boolean v0, v0, Lar/com/hjg/pngj/ImageInfo;->indexed:Z

    if-eqz v0, :cond_0

    .line 112
    iput-object p1, p0, Lar/com/hjg/pngj/chunks/PngChunkTRNS;->paletteAlpha:[I

    .line 113
    return-void

    .line 111
    :cond_0
    new-instance v0, Lar/com/hjg/pngj/PngjException;

    const-string v1, "only indexed images support this"

    invoke-direct {v0, v1}, Lar/com/hjg/pngj/PngjException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setRGB(III)V
    .locals 2
    .param p1, "r"    # I
    .param p2, "g"    # I
    .param p3, "b"    # I

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

    .line 80
    return-void

    .line 76
    :cond_0
    new-instance v0, Lar/com/hjg/pngj/PngjException;

    const-string v1, "only rgb or rgba images support this"

    invoke-direct {v0, v1}, Lar/com/hjg/pngj/PngjException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
