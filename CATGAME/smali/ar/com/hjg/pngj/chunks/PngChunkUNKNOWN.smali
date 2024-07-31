.class public Lar/com/hjg/pngj/chunks/PngChunkUNKNOWN;
.super Lar/com/hjg/pngj/chunks/PngChunkMultiple;
.source "PngChunkUNKNOWN.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;Lar/com/hjg/pngj/ImageInfo;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "info"    # Lar/com/hjg/pngj/ImageInfo;

    .line 13
    invoke-direct {p0, p1, p2}, Lar/com/hjg/pngj/chunks/PngChunkMultiple;-><init>(Ljava/lang/String;Lar/com/hjg/pngj/ImageInfo;)V

    .line 14
    return-void
.end method


# virtual methods
.method public createRawChunk()Lar/com/hjg/pngj/chunks/ChunkRaw;
    .locals 1

    .line 23
    iget-object v0, p0, Lar/com/hjg/pngj/chunks/PngChunkUNKNOWN;->raw:Lar/com/hjg/pngj/chunks/ChunkRaw;

    return-object v0
.end method

.method public getData()[B
    .locals 1

    .line 33
    iget-object v0, p0, Lar/com/hjg/pngj/chunks/PngChunkUNKNOWN;->raw:Lar/com/hjg/pngj/chunks/ChunkRaw;

    iget-object v0, v0, Lar/com/hjg/pngj/chunks/ChunkRaw;->data:[B

    return-object v0
.end method

.method public getOrderingConstraint()Lar/com/hjg/pngj/chunks/PngChunk$ChunkOrderingConstraint;
    .locals 1

    .line 18
    sget-object v0, Lar/com/hjg/pngj/chunks/PngChunk$ChunkOrderingConstraint;->NONE:Lar/com/hjg/pngj/chunks/PngChunk$ChunkOrderingConstraint;

    return-object v0
.end method

.method public parseFromRaw(Lar/com/hjg/pngj/chunks/ChunkRaw;)V
    .locals 0
    .param p1, "c"    # Lar/com/hjg/pngj/chunks/ChunkRaw;

    .line 29
    return-void
.end method

.method public setData([B)V
    .locals 1
    .param p1, "data"    # [B

    .line 38
    iget-object v0, p0, Lar/com/hjg/pngj/chunks/PngChunkUNKNOWN;->raw:Lar/com/hjg/pngj/chunks/ChunkRaw;

    iput-object p1, v0, Lar/com/hjg/pngj/chunks/ChunkRaw;->data:[B

    .line 39
    return-void
.end method
