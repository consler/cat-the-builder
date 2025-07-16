.class public Lar/com/hjg/pngj/chunks/PngChunkBKGD;
.super Lar/com/hjg/pngj/chunks/PngChunkSingle;
.source "PngChunkBKGD.java"


# static fields
.field public static final ID:Ljava/lang/String; = "bKGD"


# instance fields
.field private blue:I

.field private gray:I

.field private green:I

.field private paletteIndex:I

.field private red:I


# direct methods
.method public constructor <init>(Lar/com/hjg/pngj/ImageInfo;)V
    .locals 1

    const-string v0, "bKGD"

    .line 22
    invoke-direct {p0, v0, p1}, Lar/com/hjg/pngj/chunks/PngChunkSingle;-><init>(Ljava/lang/String;Lar/com/hjg/pngj/ImageInfo;)V

    return-void
.end method


# virtual methods
.method public createRawChunk()Lar/com/hjg/pngj/chunks/ChunkRaw;
    .locals 4

    .line 33
    iget-object v0, p0, Lar/com/hjg/pngj/chunks/PngChunkBKGD;->imgInfo:Lar/com/hjg/pngj/ImageInfo;

    iget-boolean v0, v0, Lar/com/hjg/pngj/ImageInfo;->greyscale:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    .line 34
    invoke-virtual {p0, v0, v1}, Lar/com/hjg/pngj/chunks/PngChunkBKGD;->createEmptyChunk(IZ)Lar/com/hjg/pngj/chunks/ChunkRaw;

    move-result-object v0

    .line 35
    iget v1, p0, Lar/com/hjg/pngj/chunks/PngChunkBKGD;->gray:I

    iget-object v3, v0, Lar/com/hjg/pngj/chunks/ChunkRaw;->data:[B

    invoke-static {v1, v3, v2}, Lar/com/hjg/pngj/PngHelperInternal;->writeInt2tobytes(I[BI)V

    goto :goto_0

    .line 36
    :cond_0
    iget-object v0, p0, Lar/com/hjg/pngj/chunks/PngChunkBKGD;->imgInfo:Lar/com/hjg/pngj/ImageInfo;

    iget-boolean v0, v0, Lar/com/hjg/pngj/ImageInfo;->indexed:Z

    if-eqz v0, :cond_1

    .line 37
    invoke-virtual {p0, v1, v1}, Lar/com/hjg/pngj/chunks/PngChunkBKGD;->createEmptyChunk(IZ)Lar/com/hjg/pngj/chunks/ChunkRaw;

    move-result-object v0

    .line 38
    iget-object v1, v0, Lar/com/hjg/pngj/chunks/ChunkRaw;->data:[B

    iget v3, p0, Lar/com/hjg/pngj/chunks/PngChunkBKGD;->paletteIndex:I

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    goto :goto_0

    :cond_1
    const/4 v0, 0x6

    .line 40
    invoke-virtual {p0, v0, v1}, Lar/com/hjg/pngj/chunks/PngChunkBKGD;->createEmptyChunk(IZ)Lar/com/hjg/pngj/chunks/ChunkRaw;

    move-result-object v0

    .line 41
    iget v1, p0, Lar/com/hjg/pngj/chunks/PngChunkBKGD;->red:I

    iget-object v3, v0, Lar/com/hjg/pngj/chunks/ChunkRaw;->data:[B

    invoke-static {v1, v3, v2}, Lar/com/hjg/pngj/PngHelperInternal;->writeInt2tobytes(I[BI)V

    .line 42
    iget v1, p0, Lar/com/hjg/pngj/chunks/PngChunkBKGD;->green:I

    iget-object v3, v0, Lar/com/hjg/pngj/chunks/ChunkRaw;->data:[B

    invoke-static {v1, v3, v2}, Lar/com/hjg/pngj/PngHelperInternal;->writeInt2tobytes(I[BI)V

    .line 43
    iget v1, p0, Lar/com/hjg/pngj/chunks/PngChunkBKGD;->blue:I

    iget-object v3, v0, Lar/com/hjg/pngj/chunks/ChunkRaw;->data:[B

    invoke-static {v1, v3, v2}, Lar/com/hjg/pngj/PngHelperInternal;->writeInt2tobytes(I[BI)V

    :goto_0
    return-object v0
.end method

.method public getGray()I
    .locals 2

    .line 73
    iget-object v0, p0, Lar/com/hjg/pngj/chunks/PngChunkBKGD;->imgInfo:Lar/com/hjg/pngj/ImageInfo;

    iget-boolean v0, v0, Lar/com/hjg/pngj/ImageInfo;->greyscale:Z

    if-eqz v0, :cond_0

    .line 75
    iget v0, p0, Lar/com/hjg/pngj/chunks/PngChunkBKGD;->gray:I

    return v0

    .line 74
    :cond_0
    new-instance v0, Lar/com/hjg/pngj/PngjException;

    const-string v1, "only gray images support this"

    invoke-direct {v0, v1}, Lar/com/hjg/pngj/PngjException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getOrderingConstraint()Lar/com/hjg/pngj/chunks/PngChunk$ChunkOrderingConstraint;
    .locals 1

    .line 27
    sget-object v0, Lar/com/hjg/pngj/chunks/PngChunk$ChunkOrderingConstraint;->AFTER_PLTE_BEFORE_IDAT:Lar/com/hjg/pngj/chunks/PngChunk$ChunkOrderingConstraint;

    return-object v0
.end method

.method public getPaletteIndex()I
    .locals 2

    .line 89
    iget-object v0, p0, Lar/com/hjg/pngj/chunks/PngChunkBKGD;->imgInfo:Lar/com/hjg/pngj/ImageInfo;

    iget-boolean v0, v0, Lar/com/hjg/pngj/ImageInfo;->indexed:Z

    if-eqz v0, :cond_0

    .line 91
    iget v0, p0, Lar/com/hjg/pngj/chunks/PngChunkBKGD;->paletteIndex:I

    return v0

    .line 90
    :cond_0
    new-instance v0, Lar/com/hjg/pngj/PngjException;

    const-string v1, "only indexed (pallete) images support this"

    invoke-direct {v0, v1}, Lar/com/hjg/pngj/PngjException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getRGB()[I
    .locals 3

    .line 107
    iget-object v0, p0, Lar/com/hjg/pngj/chunks/PngChunkBKGD;->imgInfo:Lar/com/hjg/pngj/ImageInfo;

    iget-boolean v0, v0, Lar/com/hjg/pngj/ImageInfo;->greyscale:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lar/com/hjg/pngj/chunks/PngChunkBKGD;->imgInfo:Lar/com/hjg/pngj/ImageInfo;

    iget-boolean v0, v0, Lar/com/hjg/pngj/ImageInfo;->indexed:Z

    if-nez v0, :cond_0

    const/4 v0, 0x3

    new-array v0, v0, [I

    const/4 v1, 0x0

    .line 109
    iget v2, p0, Lar/com/hjg/pngj/chunks/PngChunkBKGD;->red:I

    aput v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Lar/com/hjg/pngj/chunks/PngChunkBKGD;->green:I

    aput v2, v0, v1

    const/4 v1, 0x2

    iget v2, p0, Lar/com/hjg/pngj/chunks/PngChunkBKGD;->blue:I

    aput v2, v0, v1

    return-object v0

    .line 108
    :cond_0
    new-instance v0, Lar/com/hjg/pngj/PngjException;

    const-string v1, "only rgb or rgba images support this"

    invoke-direct {v0, v1}, Lar/com/hjg/pngj/PngjException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public parseFromRaw(Lar/com/hjg/pngj/chunks/ChunkRaw;)V
    .locals 2

    .line 50
    iget-object v0, p0, Lar/com/hjg/pngj/chunks/PngChunkBKGD;->imgInfo:Lar/com/hjg/pngj/ImageInfo;

    iget-boolean v0, v0, Lar/com/hjg/pngj/ImageInfo;->greyscale:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 51
    iget-object p1, p1, Lar/com/hjg/pngj/chunks/ChunkRaw;->data:[B

    invoke-static {p1, v1}, Lar/com/hjg/pngj/PngHelperInternal;->readInt2fromBytes([BI)I

    move-result p1

    iput p1, p0, Lar/com/hjg/pngj/chunks/PngChunkBKGD;->gray:I

    goto :goto_0

    .line 52
    :cond_0
    iget-object v0, p0, Lar/com/hjg/pngj/chunks/PngChunkBKGD;->imgInfo:Lar/com/hjg/pngj/ImageInfo;

    iget-boolean v0, v0, Lar/com/hjg/pngj/ImageInfo;->indexed:Z

    if-eqz v0, :cond_1

    .line 53
    iget-object p1, p1, Lar/com/hjg/pngj/chunks/ChunkRaw;->data:[B

    aget-byte p1, p1, v1

    and-int/lit16 p1, p1, 0xff

    iput p1, p0, Lar/com/hjg/pngj/chunks/PngChunkBKGD;->paletteIndex:I

    goto :goto_0

    .line 55
    :cond_1
    iget-object v0, p1, Lar/com/hjg/pngj/chunks/ChunkRaw;->data:[B

    invoke-static {v0, v1}, Lar/com/hjg/pngj/PngHelperInternal;->readInt2fromBytes([BI)I

    move-result v0

    iput v0, p0, Lar/com/hjg/pngj/chunks/PngChunkBKGD;->red:I

    .line 56
    iget-object v0, p1, Lar/com/hjg/pngj/chunks/ChunkRaw;->data:[B

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lar/com/hjg/pngj/PngHelperInternal;->readInt2fromBytes([BI)I

    move-result v0

    iput v0, p0, Lar/com/hjg/pngj/chunks/PngChunkBKGD;->green:I

    .line 57
    iget-object p1, p1, Lar/com/hjg/pngj/chunks/ChunkRaw;->data:[B

    const/4 v0, 0x4

    invoke-static {p1, v0}, Lar/com/hjg/pngj/PngHelperInternal;->readInt2fromBytes([BI)I

    move-result p1

    iput p1, p0, Lar/com/hjg/pngj/chunks/PngChunkBKGD;->blue:I

    :goto_0
    return-void
.end method

.method public setGray(I)V
    .locals 1

    .line 67
    iget-object v0, p0, Lar/com/hjg/pngj/chunks/PngChunkBKGD;->imgInfo:Lar/com/hjg/pngj/ImageInfo;

    iget-boolean v0, v0, Lar/com/hjg/pngj/ImageInfo;->greyscale:Z

    if-eqz v0, :cond_0

    .line 69
    iput p1, p0, Lar/com/hjg/pngj/chunks/PngChunkBKGD;->gray:I

    return-void

    .line 68
    :cond_0
    new-instance p1, Lar/com/hjg/pngj/PngjException;

    const-string v0, "only gray images support this"

    invoke-direct {p1, v0}, Lar/com/hjg/pngj/PngjException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setPaletteIndex(I)V
    .locals 1

    .line 83
    iget-object v0, p0, Lar/com/hjg/pngj/chunks/PngChunkBKGD;->imgInfo:Lar/com/hjg/pngj/ImageInfo;

    iget-boolean v0, v0, Lar/com/hjg/pngj/ImageInfo;->indexed:Z

    if-eqz v0, :cond_0

    .line 85
    iput p1, p0, Lar/com/hjg/pngj/chunks/PngChunkBKGD;->paletteIndex:I

    return-void

    .line 84
    :cond_0
    new-instance p1, Lar/com/hjg/pngj/PngjException;

    const-string v0, "only indexed (pallete) images support this"

    invoke-direct {p1, v0}, Lar/com/hjg/pngj/PngjException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setRGB(III)V
    .locals 1

    .line 99
    iget-object v0, p0, Lar/com/hjg/pngj/chunks/PngChunkBKGD;->imgInfo:Lar/com/hjg/pngj/ImageInfo;

    iget-boolean v0, v0, Lar/com/hjg/pngj/ImageInfo;->greyscale:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lar/com/hjg/pngj/chunks/PngChunkBKGD;->imgInfo:Lar/com/hjg/pngj/ImageInfo;

    iget-boolean v0, v0, Lar/com/hjg/pngj/ImageInfo;->indexed:Z

    if-nez v0, :cond_0

    .line 101
    iput p1, p0, Lar/com/hjg/pngj/chunks/PngChunkBKGD;->red:I

    .line 102
    iput p2, p0, Lar/com/hjg/pngj/chunks/PngChunkBKGD;->green:I

    .line 103
    iput p3, p0, Lar/com/hjg/pngj/chunks/PngChunkBKGD;->blue:I

    return-void

    .line 100
    :cond_0
    new-instance p1, Lar/com/hjg/pngj/PngjException;

    const-string p2, "only rgb or rgba images support this"

    invoke-direct {p1, p2}, Lar/com/hjg/pngj/PngjException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
