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
    .param p1, "info"    # Lar/com/hjg/pngj/ImageInfo;

    .line 24
    const-string v0, "PLTE"

    invoke-direct {p0, v0, p1}, Lar/com/hjg/pngj/chunks/PngChunkSingle;-><init>(Ljava/lang/String;Lar/com/hjg/pngj/ImageInfo;)V

    .line 17
    const/4 v0, 0x0

    iput v0, p0, Lar/com/hjg/pngj/chunks/PngChunkPLTE;->nentries:I

    .line 25
    return-void
.end method


# virtual methods
.method public createRawChunk()Lar/com/hjg/pngj/chunks/ChunkRaw;
    .locals 9

    .line 34
    iget v0, p0, Lar/com/hjg/pngj/chunks/PngChunkPLTE;->nentries:I

    const/4 v1, 0x3

    mul-int/2addr v0, v1

    .line 35
    .local v0, "len":I
    new-array v1, v1, [I

    .line 36
    .local v1, "rgb":[I
    const/4 v2, 0x1

    invoke-virtual {p0, v0, v2}, Lar/com/hjg/pngj/chunks/PngChunkPLTE;->createEmptyChunk(IZ)Lar/com/hjg/pngj/chunks/ChunkRaw;

    move-result-object v3

    .line 37
    .local v3, "c":Lar/com/hjg/pngj/chunks/ChunkRaw;
    const/4 v4, 0x0

    .local v4, "n":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    iget v6, p0, Lar/com/hjg/pngj/chunks/PngChunkPLTE;->nentries:I

    if-ge v4, v6, :cond_0

    .line 38
    invoke-virtual {p0, v4, v1}, Lar/com/hjg/pngj/chunks/PngChunkPLTE;->getEntryRgb(I[I)V

    .line 39
    iget-object v6, v3, Lar/com/hjg/pngj/chunks/ChunkRaw;->data:[B

    add-int/lit8 v7, v5, 0x1

    .end local v5    # "i":I
    .local v7, "i":I
    const/4 v8, 0x0

    aget v8, v1, v8

    int-to-byte v8, v8

    aput-byte v8, v6, v5

    .line 40
    iget-object v5, v3, Lar/com/hjg/pngj/chunks/ChunkRaw;->data:[B

    add-int/lit8 v6, v7, 0x1

    .end local v7    # "i":I
    .local v6, "i":I
    aget v8, v1, v2

    int-to-byte v8, v8

    aput-byte v8, v5, v7

    .line 41
    iget-object v5, v3, Lar/com/hjg/pngj/chunks/ChunkRaw;->data:[B

    add-int/lit8 v7, v6, 0x1

    .end local v6    # "i":I
    .restart local v7    # "i":I
    const/4 v8, 0x2

    aget v8, v1, v8

    int-to-byte v8, v8

    aput-byte v8, v5, v6

    .line 37
    add-int/lit8 v4, v4, 0x1

    move v5, v7

    goto :goto_0

    .line 43
    .end local v4    # "n":I
    .end local v7    # "i":I
    :cond_0
    return-object v3
.end method

.method public getEntry(I)I
    .locals 1
    .param p1, "n"    # I

    .line 73
    iget-object v0, p0, Lar/com/hjg/pngj/chunks/PngChunkPLTE;->entries:[I

    aget v0, v0, p1

    return v0
.end method

.method public getEntryRgb(I[I)V
    .locals 1
    .param p1, "n"    # I
    .param p2, "rgb"    # [I

    .line 77
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lar/com/hjg/pngj/chunks/PngChunkPLTE;->getEntryRgb(I[II)V

    .line 78
    return-void
.end method

.method public getEntryRgb(I[II)V
    .locals 3
    .param p1, "n"    # I
    .param p2, "rgb"    # [I
    .param p3, "offset"    # I

    .line 81
    iget-object v0, p0, Lar/com/hjg/pngj/chunks/PngChunkPLTE;->entries:[I

    aget v0, v0, p1

    .line 82
    .local v0, "v":I
    add-int/lit8 v1, p3, 0x0

    const/high16 v2, 0xff0000

    and-int/2addr v2, v0

    shr-int/lit8 v2, v2, 0x10

    aput v2, p2, v1

    .line 83
    add-int/lit8 v1, p3, 0x1

    const v2, 0xff00

    and-int/2addr v2, v0

    shr-int/lit8 v2, v2, 0x8

    aput v2, p2, v1

    .line 84
    add-int/lit8 v1, p3, 0x2

    and-int/lit16 v2, v0, 0xff

    aput v2, p2, v1

    .line 85
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

    .line 89
    const/4 v0, 0x1

    return v0

    .line 90
    :cond_0
    const/4 v2, 0x4

    if-gt v0, v2, :cond_1

    .line 91
    return v1

    .line 92
    :cond_1
    const/16 v1, 0x10

    if-gt v0, v1, :cond_2

    .line 93
    return v2

    .line 95
    :cond_2
    const/16 v0, 0x8

    return v0
.end method

.method public parseFromRaw(Lar/com/hjg/pngj/chunks/ChunkRaw;)V
    .locals 6
    .param p1, "chunk"    # Lar/com/hjg/pngj/chunks/ChunkRaw;

    .line 48
    iget v0, p1, Lar/com/hjg/pngj/chunks/ChunkRaw;->len:I

    div-int/lit8 v0, v0, 0x3

    invoke-virtual {p0, v0}, Lar/com/hjg/pngj/chunks/PngChunkPLTE;->setNentries(I)V

    .line 49
    const/4 v0, 0x0

    .local v0, "n":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v2, p0, Lar/com/hjg/pngj/chunks/PngChunkPLTE;->nentries:I

    if-ge v0, v2, :cond_0

    .line 50
    iget-object v2, p1, Lar/com/hjg/pngj/chunks/ChunkRaw;->data:[B

    add-int/lit8 v3, v1, 0x1

    .end local v1    # "i":I
    .local v3, "i":I
    aget-byte v1, v2, v1

    and-int/lit16 v1, v1, 0xff

    iget-object v2, p1, Lar/com/hjg/pngj/chunks/ChunkRaw;->data:[B

    add-int/lit8 v4, v3, 0x1

    .end local v3    # "i":I
    .local v4, "i":I
    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    iget-object v3, p1, Lar/com/hjg/pngj/chunks/ChunkRaw;->data:[B

    add-int/lit8 v5, v4, 0x1

    .end local v4    # "i":I
    .local v5, "i":I
    aget-byte v3, v3, v4

    and-int/lit16 v3, v3, 0xff

    invoke-virtual {p0, v0, v1, v2, v3}, Lar/com/hjg/pngj/chunks/PngChunkPLTE;->setEntry(IIII)V

    .line 49
    add-int/lit8 v0, v0, 0x1

    move v1, v5

    goto :goto_0

    .line 53
    .end local v0    # "n":I
    .end local v5    # "i":I
    :cond_0
    return-void
.end method

.method public setEntry(IIII)V
    .locals 3
    .param p1, "n"    # I
    .param p2, "r"    # I
    .param p3, "g"    # I
    .param p4, "b"    # I

    .line 69
    iget-object v0, p0, Lar/com/hjg/pngj/chunks/PngChunkPLTE;->entries:[I

    shl-int/lit8 v1, p2, 0x10

    shl-int/lit8 v2, p3, 0x8

    or-int/2addr v1, v2

    or-int/2addr v1, p4

    aput v1, v0, p1

    .line 70
    return-void
.end method

.method public setNentries(I)V
    .locals 3
    .param p1, "n"    # I

    .line 56
    iput p1, p0, Lar/com/hjg/pngj/chunks/PngChunkPLTE;->nentries:I

    .line 57
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
    iget v0, p0, Lar/com/hjg/pngj/chunks/PngChunkPLTE;->nentries:I

    new-array v0, v0, [I

    iput-object v0, p0, Lar/com/hjg/pngj/chunks/PngChunkPLTE;->entries:[I

    .line 62
    :cond_1
    return-void

    .line 58
    :cond_2
    new-instance v0, Lar/com/hjg/pngj/PngjException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid pallette - nentries="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lar/com/hjg/pngj/chunks/PngChunkPLTE;->nentries:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lar/com/hjg/pngj/PngjException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
