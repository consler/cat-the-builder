.class public Lar/com/hjg/pngj/chunks/PngChunkOFFS;
.super Lar/com/hjg/pngj/chunks/PngChunkSingle;
.source "PngChunkOFFS.java"


# static fields
.field public static final ID:Ljava/lang/String; = "oFFs"


# instance fields
.field private posX:J

.field private posY:J

.field private units:I


# direct methods
.method public constructor <init>(Lar/com/hjg/pngj/ImageInfo;)V
    .locals 1

    const-string v0, "oFFs"

    .line 21
    invoke-direct {p0, v0, p1}, Lar/com/hjg/pngj/chunks/PngChunkSingle;-><init>(Ljava/lang/String;Lar/com/hjg/pngj/ImageInfo;)V

    return-void
.end method


# virtual methods
.method public createRawChunk()Lar/com/hjg/pngj/chunks/ChunkRaw;
    .locals 4

    const/16 v0, 0x9

    const/4 v1, 0x1

    .line 31
    invoke-virtual {p0, v0, v1}, Lar/com/hjg/pngj/chunks/PngChunkOFFS;->createEmptyChunk(IZ)Lar/com/hjg/pngj/chunks/ChunkRaw;

    move-result-object v0

    .line 32
    iget-wide v1, p0, Lar/com/hjg/pngj/chunks/PngChunkOFFS;->posX:J

    long-to-int v1, v1

    iget-object v2, v0, Lar/com/hjg/pngj/chunks/ChunkRaw;->data:[B

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lar/com/hjg/pngj/PngHelperInternal;->writeInt4tobytes(I[BI)V

    .line 33
    iget-wide v1, p0, Lar/com/hjg/pngj/chunks/PngChunkOFFS;->posY:J

    long-to-int v1, v1

    iget-object v2, v0, Lar/com/hjg/pngj/chunks/ChunkRaw;->data:[B

    const/4 v3, 0x4

    invoke-static {v1, v2, v3}, Lar/com/hjg/pngj/PngHelperInternal;->writeInt4tobytes(I[BI)V

    .line 34
    iget-object v1, v0, Lar/com/hjg/pngj/chunks/ChunkRaw;->data:[B

    iget v2, p0, Lar/com/hjg/pngj/chunks/PngChunkOFFS;->units:I

    int-to-byte v2, v2

    const/16 v3, 0x8

    aput-byte v2, v1, v3

    return-object v0
.end method

.method public getOrderingConstraint()Lar/com/hjg/pngj/chunks/PngChunk$ChunkOrderingConstraint;
    .locals 1

    .line 26
    sget-object v0, Lar/com/hjg/pngj/chunks/PngChunk$ChunkOrderingConstraint;->BEFORE_IDAT:Lar/com/hjg/pngj/chunks/PngChunk$ChunkOrderingConstraint;

    return-object v0
.end method

.method public getPosX()J
    .locals 2

    .line 66
    iget-wide v0, p0, Lar/com/hjg/pngj/chunks/PngChunkOFFS;->posX:J

    return-wide v0
.end method

.method public getPosY()J
    .locals 2

    .line 74
    iget-wide v0, p0, Lar/com/hjg/pngj/chunks/PngChunkOFFS;->posY:J

    return-wide v0
.end method

.method public getUnits()I
    .locals 1

    .line 55
    iget v0, p0, Lar/com/hjg/pngj/chunks/PngChunkOFFS;->units:I

    return v0
.end method

.method public parseFromRaw(Lar/com/hjg/pngj/chunks/ChunkRaw;)V
    .locals 7

    .line 40
    iget v0, p1, Lar/com/hjg/pngj/chunks/ChunkRaw;->len:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_2

    .line 42
    iget-object v0, p1, Lar/com/hjg/pngj/chunks/ChunkRaw;->data:[B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lar/com/hjg/pngj/PngHelperInternal;->readInt4fromBytes([BI)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lar/com/hjg/pngj/chunks/PngChunkOFFS;->posX:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    const-wide v5, 0x100000000L

    if-gez v4, :cond_0

    add-long/2addr v0, v5

    .line 44
    iput-wide v0, p0, Lar/com/hjg/pngj/chunks/PngChunkOFFS;->posX:J

    .line 45
    :cond_0
    iget-object v0, p1, Lar/com/hjg/pngj/chunks/ChunkRaw;->data:[B

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lar/com/hjg/pngj/PngHelperInternal;->readInt4fromBytes([BI)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lar/com/hjg/pngj/chunks/PngChunkOFFS;->posY:J

    cmp-long v2, v0, v2

    if-gez v2, :cond_1

    add-long/2addr v0, v5

    .line 47
    iput-wide v0, p0, Lar/com/hjg/pngj/chunks/PngChunkOFFS;->posY:J

    .line 48
    :cond_1
    iget-object p1, p1, Lar/com/hjg/pngj/chunks/ChunkRaw;->data:[B

    const/16 v0, 0x8

    invoke-static {p1, v0}, Lar/com/hjg/pngj/PngHelperInternal;->readInt1fromByte([BI)I

    move-result p1

    iput p1, p0, Lar/com/hjg/pngj/chunks/PngChunkOFFS;->units:I

    return-void

    .line 41
    :cond_2
    new-instance v0, Lar/com/hjg/pngj/PngjException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "bad chunk length "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lar/com/hjg/pngj/PngjException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setPosX(J)V
    .locals 0

    .line 70
    iput-wide p1, p0, Lar/com/hjg/pngj/chunks/PngChunkOFFS;->posX:J

    return-void
.end method

.method public setPosY(J)V
    .locals 0

    .line 78
    iput-wide p1, p0, Lar/com/hjg/pngj/chunks/PngChunkOFFS;->posY:J

    return-void
.end method

.method public setUnits(I)V
    .locals 0

    .line 62
    iput p1, p0, Lar/com/hjg/pngj/chunks/PngChunkOFFS;->units:I

    return-void
.end method
