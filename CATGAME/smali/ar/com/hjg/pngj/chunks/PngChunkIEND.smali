.class public Lar/com/hjg/pngj/chunks/PngChunkIEND;
.super Lar/com/hjg/pngj/chunks/PngChunkSingle;
.source "PngChunkIEND.java"


# static fields
.field public static final ID:Ljava/lang/String; = "IEND"


# direct methods
.method public constructor <init>(Lar/com/hjg/pngj/ImageInfo;)V
    .locals 1
    .param p1, "info"    # Lar/com/hjg/pngj/ImageInfo;

    .line 16
    const-string v0, "IEND"

    invoke-direct {p0, v0, p1}, Lar/com/hjg/pngj/chunks/PngChunkSingle;-><init>(Ljava/lang/String;Lar/com/hjg/pngj/ImageInfo;)V

    .line 17
    return-void
.end method


# virtual methods
.method public createRawChunk()Lar/com/hjg/pngj/chunks/ChunkRaw;
    .locals 3

    .line 26
    new-instance v0, Lar/com/hjg/pngj/chunks/ChunkRaw;

    sget-object v1, Lar/com/hjg/pngj/chunks/ChunkHelper;->b_IEND:[B

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1, v2}, Lar/com/hjg/pngj/chunks/ChunkRaw;-><init>(I[BZ)V

    .line 27
    .local v0, "c":Lar/com/hjg/pngj/chunks/ChunkRaw;
    return-object v0
.end method

.method public getOrderingConstraint()Lar/com/hjg/pngj/chunks/PngChunk$ChunkOrderingConstraint;
    .locals 1

    .line 21
    sget-object v0, Lar/com/hjg/pngj/chunks/PngChunk$ChunkOrderingConstraint;->NA:Lar/com/hjg/pngj/chunks/PngChunk$ChunkOrderingConstraint;

    return-object v0
.end method

.method public parseFromRaw(Lar/com/hjg/pngj/chunks/ChunkRaw;)V
    .locals 0
    .param p1, "c"    # Lar/com/hjg/pngj/chunks/ChunkRaw;

    .line 33
    return-void
.end method
