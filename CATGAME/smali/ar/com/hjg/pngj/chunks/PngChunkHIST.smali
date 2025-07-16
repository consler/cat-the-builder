.class public Lar/com/hjg/pngj/chunks/PngChunkHIST;
.super Lar/com/hjg/pngj/chunks/PngChunkSingle;
.source "PngChunkHIST.java"


# static fields
.field public static final ID:Ljava/lang/String; = "hIST"


# instance fields
.field private hist:[I


# direct methods
.method public constructor <init>(Lar/com/hjg/pngj/ImageInfo;)V
    .locals 1

    const-string v0, "hIST"

    .line 19
    invoke-direct {p0, v0, p1}, Lar/com/hjg/pngj/chunks/PngChunkSingle;-><init>(Ljava/lang/String;Lar/com/hjg/pngj/ImageInfo;)V

    const/4 p1, 0x0

    new-array p1, p1, [I

    .line 16
    iput-object p1, p0, Lar/com/hjg/pngj/chunks/PngChunkHIST;->hist:[I

    return-void
.end method


# virtual methods
.method public createRawChunk()Lar/com/hjg/pngj/chunks/ChunkRaw;
    .locals 5

    .line 40
    iget-object v0, p0, Lar/com/hjg/pngj/chunks/PngChunkHIST;->imgInfo:Lar/com/hjg/pngj/ImageInfo;

    iget-boolean v0, v0, Lar/com/hjg/pngj/ImageInfo;->indexed:Z

    if-eqz v0, :cond_1

    .line 43
    iget-object v0, p0, Lar/com/hjg/pngj/chunks/PngChunkHIST;->hist:[I

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lar/com/hjg/pngj/chunks/PngChunkHIST;->createEmptyChunk(IZ)Lar/com/hjg/pngj/chunks/ChunkRaw;

    move-result-object v0

    const/4 v1, 0x0

    .line 44
    :goto_0
    iget-object v2, p0, Lar/com/hjg/pngj/chunks/PngChunkHIST;->hist:[I

    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 45
    aget v2, v2, v1

    iget-object v3, v0, Lar/com/hjg/pngj/chunks/ChunkRaw;->data:[B

    mul-int/lit8 v4, v1, 0x2

    invoke-static {v2, v3, v4}, Lar/com/hjg/pngj/PngHelperInternal;->writeInt2tobytes(I[BI)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0

    .line 41
    :cond_1
    new-instance v0, Lar/com/hjg/pngj/PngjException;

    const-string v1, "only indexed images accept a HIST chunk"

    invoke-direct {v0, v1}, Lar/com/hjg/pngj/PngjException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getHist()[I
    .locals 1

    .line 51
    iget-object v0, p0, Lar/com/hjg/pngj/chunks/PngChunkHIST;->hist:[I

    return-object v0
.end method

.method public getOrderingConstraint()Lar/com/hjg/pngj/chunks/PngChunk$ChunkOrderingConstraint;
    .locals 1

    .line 24
    sget-object v0, Lar/com/hjg/pngj/chunks/PngChunk$ChunkOrderingConstraint;->AFTER_PLTE_BEFORE_IDAT:Lar/com/hjg/pngj/chunks/PngChunk$ChunkOrderingConstraint;

    return-object v0
.end method

.method public parseFromRaw(Lar/com/hjg/pngj/chunks/ChunkRaw;)V
    .locals 4

    .line 29
    iget-object v0, p0, Lar/com/hjg/pngj/chunks/PngChunkHIST;->imgInfo:Lar/com/hjg/pngj/ImageInfo;

    iget-boolean v0, v0, Lar/com/hjg/pngj/ImageInfo;->indexed:Z

    if-eqz v0, :cond_1

    .line 31
    iget-object v0, p1, Lar/com/hjg/pngj/chunks/ChunkRaw;->data:[B

    array-length v0, v0

    div-int/lit8 v0, v0, 0x2

    .line 32
    new-array v0, v0, [I

    iput-object v0, p0, Lar/com/hjg/pngj/chunks/PngChunkHIST;->hist:[I

    const/4 v0, 0x0

    .line 33
    :goto_0
    iget-object v1, p0, Lar/com/hjg/pngj/chunks/PngChunkHIST;->hist:[I

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 34
    iget-object v2, p1, Lar/com/hjg/pngj/chunks/ChunkRaw;->data:[B

    mul-int/lit8 v3, v0, 0x2

    invoke-static {v2, v3}, Lar/com/hjg/pngj/PngHelperInternal;->readInt2fromBytes([BI)I

    move-result v2

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void

    .line 30
    :cond_1
    new-instance p1, Lar/com/hjg/pngj/PngjException;

    const-string v0, "only indexed images accept a HIST chunk"

    invoke-direct {p1, v0}, Lar/com/hjg/pngj/PngjException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setHist([I)V
    .locals 0

    .line 55
    iput-object p1, p0, Lar/com/hjg/pngj/chunks/PngChunkHIST;->hist:[I

    return-void
.end method
