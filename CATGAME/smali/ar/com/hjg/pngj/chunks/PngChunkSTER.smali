.class public Lar/com/hjg/pngj/chunks/PngChunkSTER;
.super Lar/com/hjg/pngj/chunks/PngChunkSingle;
.source "PngChunkSTER.java"


# static fields
.field public static final ID:Ljava/lang/String; = "sTER"


# instance fields
.field private mode:B


# direct methods
.method public constructor <init>(Lar/com/hjg/pngj/ImageInfo;)V
    .locals 1

    const-string v0, "sTER"

    .line 18
    invoke-direct {p0, v0, p1}, Lar/com/hjg/pngj/chunks/PngChunkSingle;-><init>(Ljava/lang/String;Lar/com/hjg/pngj/ImageInfo;)V

    return-void
.end method


# virtual methods
.method public createRawChunk()Lar/com/hjg/pngj/chunks/ChunkRaw;
    .locals 4

    const/4 v0, 0x1

    .line 28
    invoke-virtual {p0, v0, v0}, Lar/com/hjg/pngj/chunks/PngChunkSTER;->createEmptyChunk(IZ)Lar/com/hjg/pngj/chunks/ChunkRaw;

    move-result-object v0

    .line 29
    iget-object v1, v0, Lar/com/hjg/pngj/chunks/ChunkRaw;->data:[B

    const/4 v2, 0x0

    iget-byte v3, p0, Lar/com/hjg/pngj/chunks/PngChunkSTER;->mode:B

    aput-byte v3, v1, v2

    return-object v0
.end method

.method public getMode()B
    .locals 1

    .line 44
    iget-byte v0, p0, Lar/com/hjg/pngj/chunks/PngChunkSTER;->mode:B

    return v0
.end method

.method public getOrderingConstraint()Lar/com/hjg/pngj/chunks/PngChunk$ChunkOrderingConstraint;
    .locals 1

    .line 23
    sget-object v0, Lar/com/hjg/pngj/chunks/PngChunk$ChunkOrderingConstraint;->BEFORE_IDAT:Lar/com/hjg/pngj/chunks/PngChunk$ChunkOrderingConstraint;

    return-object v0
.end method

.method public parseFromRaw(Lar/com/hjg/pngj/chunks/ChunkRaw;)V
    .locals 3

    .line 35
    iget v0, p1, Lar/com/hjg/pngj/chunks/ChunkRaw;->len:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 37
    iget-object p1, p1, Lar/com/hjg/pngj/chunks/ChunkRaw;->data:[B

    const/4 v0, 0x0

    aget-byte p1, p1, v0

    iput-byte p1, p0, Lar/com/hjg/pngj/chunks/PngChunkSTER;->mode:B

    return-void

    .line 36
    :cond_0
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

.method public setMode(B)V
    .locals 0

    .line 51
    iput-byte p1, p0, Lar/com/hjg/pngj/chunks/PngChunkSTER;->mode:B

    return-void
.end method
