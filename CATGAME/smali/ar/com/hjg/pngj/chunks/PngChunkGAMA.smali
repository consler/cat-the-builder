.class public Lar/com/hjg/pngj/chunks/PngChunkGAMA;
.super Lar/com/hjg/pngj/chunks/PngChunkSingle;
.source "PngChunkGAMA.java"


# static fields
.field public static final ID:Ljava/lang/String; = "gAMA"


# instance fields
.field private gamma:D


# direct methods
.method public constructor <init>(Lar/com/hjg/pngj/ImageInfo;)V
    .locals 1

    const-string v0, "gAMA"

    .line 19
    invoke-direct {p0, v0, p1}, Lar/com/hjg/pngj/chunks/PngChunkSingle;-><init>(Ljava/lang/String;Lar/com/hjg/pngj/ImageInfo;)V

    return-void
.end method


# virtual methods
.method public createRawChunk()Lar/com/hjg/pngj/chunks/ChunkRaw;
    .locals 5

    const/4 v0, 0x4

    const/4 v1, 0x1

    .line 29
    invoke-virtual {p0, v0, v1}, Lar/com/hjg/pngj/chunks/PngChunkGAMA;->createEmptyChunk(IZ)Lar/com/hjg/pngj/chunks/ChunkRaw;

    move-result-object v0

    .line 30
    iget-wide v1, p0, Lar/com/hjg/pngj/chunks/PngChunkGAMA;->gamma:D

    const-wide v3, 0x40f86a0000000000L    # 100000.0

    mul-double/2addr v1, v3

    const-wide/high16 v3, 0x3fe0000000000000L    # 0.5

    add-double/2addr v1, v3

    double-to-int v1, v1

    .line 31
    iget-object v2, v0, Lar/com/hjg/pngj/chunks/ChunkRaw;->data:[B

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lar/com/hjg/pngj/PngHelperInternal;->writeInt4tobytes(I[BI)V

    return-object v0
.end method

.method public getGamma()D
    .locals 2

    .line 44
    iget-wide v0, p0, Lar/com/hjg/pngj/chunks/PngChunkGAMA;->gamma:D

    return-wide v0
.end method

.method public getOrderingConstraint()Lar/com/hjg/pngj/chunks/PngChunk$ChunkOrderingConstraint;
    .locals 1

    .line 24
    sget-object v0, Lar/com/hjg/pngj/chunks/PngChunk$ChunkOrderingConstraint;->BEFORE_PLTE_AND_IDAT:Lar/com/hjg/pngj/chunks/PngChunk$ChunkOrderingConstraint;

    return-object v0
.end method

.method public parseFromRaw(Lar/com/hjg/pngj/chunks/ChunkRaw;)V
    .locals 4

    .line 37
    iget v0, p1, Lar/com/hjg/pngj/chunks/ChunkRaw;->len:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 39
    iget-object p1, p1, Lar/com/hjg/pngj/chunks/ChunkRaw;->data:[B

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lar/com/hjg/pngj/PngHelperInternal;->readInt4fromBytes([BI)I

    move-result p1

    int-to-double v0, p1

    const-wide v2, 0x40f86a0000000000L    # 100000.0

    div-double/2addr v0, v2

    .line 40
    iput-wide v0, p0, Lar/com/hjg/pngj/chunks/PngChunkGAMA;->gamma:D

    return-void

    .line 38
    :cond_0
    new-instance v0, Lar/com/hjg/pngj/PngjException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "bad chunk "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lar/com/hjg/pngj/PngjException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setGamma(D)V
    .locals 0

    .line 48
    iput-wide p1, p0, Lar/com/hjg/pngj/chunks/PngChunkGAMA;->gamma:D

    return-void
.end method
