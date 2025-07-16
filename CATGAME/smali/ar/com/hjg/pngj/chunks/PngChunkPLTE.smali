.class public Lar/com/hjg/pngj/chunks/PngChunkPLTE;
.super Lar/com/hjg/pngj/chunks/PngChunkSingle;
.source "PngChunkPLTE.java"


# static fields
.field public static final ID:Ljava/lang/String; = "PLTE"


# instance fields
.field private entries:[I

.field private nentries:I


# direct methods
.method public constructor <init>(Lar/com/hjg/pngj/ImageInfo;)V
    .locals 1

    const-string v0, "PLTE"

    .line 24
    invoke-direct {p0, v0, p1}, Lar/com/hjg/pngj/chunks/PngChunkSingle;-><init>(Ljava/lang/String;Lar/com/hjg/pngj/ImageInfo;)V

    const/4 p1, 0x0

    .line 17
    iput p1, p0, Lar/com/hjg/pngj/chunks/PngChunkPLTE;->nentries:I

    return-void
.end method


# virtual methods
.method public createRawChunk()Lar/com/hjg/pngj/chunks/ChunkRaw;
    .locals 9

    .line 34
    iget v0, p0, Lar/com/hjg/pngj/chunks/PngChunkPLTE;->nentries:I

    const/4 v1, 0x3

    mul-int/2addr v0, v1

    new-array v1, v1, [I

    const/4 v2, 0x1

    .line 36
    invoke-virtual {p0, v0, v2}, Lar/com/hjg/pngj/chunks/PngChunkPLTE;->createEmptyChunk(IZ)Lar/com/hjg/pngj/chunks/ChunkRaw;

    move-result-object v0

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    .line 37
    :goto_0
    iget v6, p0, Lar/com/hjg/pngj/chunks/PngChunkPLTE;->nentries:I

    if-ge v4, v6, :cond_0

    .line 38
    invoke-virtual {p0, v4, v1}, Lar/com/hjg/pngj/chunks/PngChunkPLTE;->getEntryRgb(I[I)V

    .line 39
    iget-object v6, v0, Lar/com/hjg/pngj/chunks/ChunkRaw;->data:[B

    add-int/lit8 v7, v5, 0x1

    aget v8, v1, v3

    int-to-byte v8, v8

    aput-byte v8, v6, v5

    .line 40
    iget-object v5, v0, Lar/com/hjg/pngj/chunks/ChunkRaw;->data:[B

    add-int/lit8 v6, v7, 0x1

    aget v8, v1, v2

    int-to-byte v8, v8

    aput-byte v8, v5, v7

    .line 41
    iget-object v5, v0, Lar/com/hjg/pngj/chunks/ChunkRaw;->data:[B

    add-int/lit8 v7, v6, 0x1

    const/4 v8, 0x2

    aget v8, v1, v8

    int-to-byte v8, v8

    aput-byte v8, v5, v6

    add-int/lit8 v4, v4, 0x1

    move v5, v7

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getEntry(I)I
    .locals 1

    .line 73
    iget-object v0, p0, Lar/com/hjg/pngj/chunks/PngChunkPLTE;->entries:[I

    aget p1, v0, p1

    return p1
.end method

.method public getEntryRgb(I[I)V
    .locals 1

    const/4 v0, 0x0

    .line 77
    invoke-virtual {p0, p1, p2, v0}, Lar/com/hjg/pngj/chunks/PngChunkPLTE;->getEntryRgb(I[II)V

    return-void
.end method

.method public getEntryRgb(I[II)V
    .locals 2

    .line 81
    iget-object v0, p0, Lar/com/hjg/pngj/chunks/PngChunkPLTE;->entries:[I

    aget p1, v0, p1

    add-int/lit8 v0, p3, 0x0

    const/high16 v1, 0xff0000

    and-int/2addr v1, p1

    shr-int/lit8 v1, v1, 0x10

    .line 82
    aput v1, p2, v0

    add-int/lit8 v0, p3, 0x1

    const v1, 0xff00

    and-int/2addr v1, p1

    shr-int/lit8 v1, v1, 0x8

    .line 83
    aput v1, p2, v0

    add-int/lit8 p3, p3, 0x2

    and-int/lit16 p1, p1, 0xff

    .line 84
    aput p1, p2, p3

    return-void
.end method

.method public getNentries()I
    .locals 1

    .line 65
    iget v0, p0, Lar/com/hjg/pngj/chunks/PngChunkPLTE;->nentries:I

    return v0
.end method

.method public getOrderingConstraint()Lar/com/hjg/pngj/chunks/PngChunk$ChunkOrderingConstraint;
    .locals 1

    .line 29
    sget-object v0, Lar/com/hjg/pngj/chunks/PngChunk$ChunkOrderingConstraint;->NA:Lar/com/hjg/pngj/chunks/PngChunk$ChunkOrderingConstraint;

    return-object v0
.end method

.method public minBitDepth()I
    .locals 3

    .line 88
    iget v0, p0, Lar/com/hjg/pngj/chunks/PngChunkPLTE;->nentries:I

    const/4 v1, 0x2

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v2, 0x4

    if-gt v0, v2, :cond_1

    return v1

    :cond_1
    const/16 v1, 0x10

    if-gt v0, v1, :cond_2

    return v2

    :cond_2
    const/16 v0, 0x8

    return v0
.end method

.method public parseFromRaw(Lar/com/hjg/pngj/chunks/ChunkRaw;)V
    .locals 6

    .line 48
    iget v0, p1, Lar/com/hjg/pngj/chunks/ChunkRaw;->len:I

    div-int/lit8 v0, v0, 0x3

    invoke-virtual {p0, v0}, Lar/com/hjg/pngj/chunks/PngChunkPLTE;->setNentries(I)V

    const/4 v0, 0x0

    move v1, v0

    .line 49
    :goto_0
    iget v2, p0, Lar/com/hjg/pngj/chunks/PngChunkPLTE;->nentries:I

    if-ge v0, v2, :cond_0

    .line 50
    iget-object v2, p1, Lar/com/hjg/pngj/chunks/ChunkRaw;->data:[B

    add-int/lit8 v3, v1, 0x1

    aget-byte v1, v2, v1

    and-int/lit16 v1, v1, 0xff

    iget-object v2, p1, Lar/com/hjg/pngj/chunks/ChunkRaw;->data:[B

    add-int/lit8 v4, v3, 0x1

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    iget-object v3, p1, Lar/com/hjg/pngj/chunks/ChunkRaw;->data:[B

    add-int/lit8 v5, v4, 0x1

    aget-byte v3, v3, v4

    and-int/lit16 v3, v3, 0xff

    invoke-virtual {p0, v0, v1, v2, v3}, Lar/com/hjg/pngj/chunks/PngChunkPLTE;->setEntry(IIII)V

    add-int/lit8 v0, v0, 0x1

    move v1, v5

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setEntry(IIII)V
    .locals 1

    .line 69
    iget-object v0, p0, Lar/com/hjg/pngj/chunks/PngChunkPLTE;->entries:[I

    shl-int/lit8 p2, p2, 0x10

    shl-int/lit8 p3, p3, 0x8

    or-int/2addr p2, p3

    or-int/2addr p2, p4

    aput p2, v0, p1

    return-void
.end method

.method public setNentries(I)V
    .locals 2

    .line 56
    iput p1, p0, Lar/com/hjg/pngj/chunks/PngChunkPLTE;->nentries:I

    const/4 v0, 0x1

    if-lt p1, v0, :cond_2

    const/16 v0, 0x100

    if-gt p1, v0, :cond_2

    .line 59
    iget-object v0, p0, Lar/com/hjg/pngj/chunks/PngChunkPLTE;->entries:[I

    if-eqz v0, :cond_0

    array-length v0, v0

    if-eq v0, p1, :cond_1

    .line 60
    :cond_0
    new-array p1, p1, [I

    iput-object p1, p0, Lar/com/hjg/pngj/chunks/PngChunkPLTE;->entries:[I

    :cond_1
    return-void

    .line 58
    :cond_2
    new-instance p1, Lar/com/hjg/pngj/PngjException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "invalid pallette - nentries="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lar/com/hjg/pngj/chunks/PngChunkPLTE;->nentries:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lar/com/hjg/pngj/PngjException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
