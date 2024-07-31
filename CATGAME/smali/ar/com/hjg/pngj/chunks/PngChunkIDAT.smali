.class public Lar/com/hjg/pngj/chunks/PngChunkIDAT;
.super Lar/com/hjg/pngj/chunks/PngChunkMultiple;
.source "PngChunkIDAT.java"


# static fields
.field public static final ID:Ljava/lang/String; = "IDAT"


# direct methods
.method public constructor <init>(Lar/com/hjg/pngj/ImageInfo;)V
    .locals 1
    .param p1, "i"    # Lar/com/hjg/pngj/ImageInfo;

    .line 17
    const-string v0, "IDAT"

    invoke-direct {p0, v0, p1}, Lar/com/hjg/pngj/chunks/PngChunkMultiple;-><init>(Ljava/lang/String;Lar/com/hjg/pngj/ImageInfo;)V

    .line 18
    return-void
.end method


# virtual methods
.method public createRawChunk()Lar/com/hjg/pngj/chunks/ChunkRaw;
    .locals 1

    .line 27
    const/4 v0, 0x0

    return-object v0
.end method

.method public getOrderingConstraint()Lar/com/hjg/pngj/chunks/PngChunk$ChunkOrderingConstraint;
    .locals 1

    .line 22
    sget-object v0, Lar/com/hjg/pngj/chunks/PngChunk$ChunkOrderingConstraint;->NA:Lar/com/hjg/pngj/chunks/PngChunk$ChunkOrderingConstraint;

    return-object v0
.end method

.method public parseFromRaw(Lar/com/hjg/pngj/chunks/ChunkRaw;)V
    .locals 0
    .param p1, "c"    # Lar/com/hjg/pngj/chunks/ChunkRaw;

    .line 32
    return-void
.end method
