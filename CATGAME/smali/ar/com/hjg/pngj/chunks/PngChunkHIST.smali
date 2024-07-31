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
    .param p1, "info"    # Lar/com/hjg/pngj/ImageInfo;

    .line 19
    const-string v0, "hIST"

    invoke-direct {p0, v0, p1}, Lar/com/hjg/pngj/chunks/PngChunkSingle;-><init>(Ljava/lang/String;Lar/com/hjg/pngj/ImageInfo;)V

    .line 16
    const/4 v0, 0x0

    new-array v0, v0, [I

    iput-object v0, p0, Lar/com/hjg/pngj/chunks/PngChunkHIST;->hist:[I

    .line 20
    return-void
.end method


# virtual methods
.method public createRawChunk()Lar/com/hjg/pngj/chunks/ChunkRaw;
    .locals 5

    .line 40
    iget-object v0, p0, Lar/com/hjg/pngj/chunks/PngChunkHIST;->imgInfo:Lar/com/hjg/pngj/ImageInfo;

    iget-boolean v0, v0, Lar/com/hjg/pngj/ImageInfo;->indexed:Z

    if-eqz v0, :cond_1

    .line 42
    const/4 v0, 0x0

    .line 43
    .local v0, "c":Lar/com/hjg/pngj/chunks/ChunkRaw;
    iget-object v1, p0, Lar/com/hjg/pngj/chunks/PngChunkHIST;->hist:[I

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lar/com/hjg/pngj/chunks/PngChunkHIST;->createEmptyChunk(IZ)Lar/com/hjg/pngj/chunks/ChunkRaw;

    move-result-object v0

    .line 44
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lar/com/hjg/pngj/chunks/PngChunkHIST;->hist:[I

    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 45
    aget v2, v2, v1

    iget-object v3, v0, Lar/com/hjg/pngj/chunks/ChunkRaw;->data:[B

    mul-int/lit8 v4, v1, 0x2

    invoke-static {v2, v3, v4}, Lar/com/hjg/pngj/PngHelperInternal;->writeInt2tobytes(I[BI)V

    .line 44
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 47
    .end local v1    # "i":I
    :cond_0
    return-object v0

    .line 41
    .end local v0    # "c":Lar/com/hjg/pngj/chunks/ChunkRaw;
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
    .locals 5
    .param p1, "c"    # Lar/com/hjg/pngj/chunks/ChunkRaw;

    .line 29
    iget-object v0, p0, Lar/com/hjg/pngj/chunks/PngChunkHIST;->imgInfo:Lar/com/hjg/pngj/ImageInfo;

    iget-boolean v0, v0, Lar/com/hjg/pngj/ImageInfo;->indexed:Z

    if-eqz v0, :cond_1

    .line 31
    iget-object v0, p1, Lar/com/hjg/pngj/chunks/ChunkRaw;->data:[B

    array-length v0, v0

    div-int/lit8 v0, v0, 0x2

    .line 32
    .local v0, "nentries":I
    new-array v1, v0, [I

    iput-object v1, p0, Lar/com/hjg/pngj/chunks/PngChunkHIST;->hist:[I

    .line 33
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lar/com/hjg/pngj/chunks/PngChunkHIST;->hist:[I

    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 34
    iget-object v3, p1, Lar/com/hjg/pngj/chunks/ChunkRaw;->data:[B

    mul-int/lit8 v4, v1, 0x2

    invoke-static {v3, v4}, Lar/com/hjg/pngj/PngHelperInternal;->readInt2fromBytes([BI)I

    move-result v3

    aput v3, v2, v1

    .line 33
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 36
    .end local v1    # "i":I
    :cond_0
    return-void

    .line 30
    .end local v0    # "nentries":I
    :cond_1
    new-instance v0, Lar/com/hjg/pngj/PngjException;

    const-string v1, "only indexed images accept a HIST chunk"

    invoke-direct {v0, v1}, Lar/com/hjg/pngj/PngjException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setHist([I)V
    .locals 0
    .param p1, "hist"    # [I

    .line 55
    iput-object p1, p0, Lar/com/hjg/pngj/chunks/PngChunkHIST;->hist:[I

    .line 56
    return-void
.end method
