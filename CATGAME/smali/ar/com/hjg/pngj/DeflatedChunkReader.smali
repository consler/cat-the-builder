.class public Lar/com/hjg/pngj/DeflatedChunkReader;
.super Lar/com/hjg/pngj/ChunkReader;
.source "DeflatedChunkReader.java"


# instance fields
.field protected alsoBuffer:Z

.field protected final deflatedChunksSet:Lar/com/hjg/pngj/DeflatedChunksSet;


# direct methods
.method public constructor <init>(ILjava/lang/String;ZJLar/com/hjg/pngj/DeflatedChunksSet;)V
    .locals 6
    .param p1, "clen"    # I
    .param p2, "chunkid"    # Ljava/lang/String;
    .param p3, "checkCrc"    # Z
    .param p4, "offsetInPng"    # J
    .param p6, "iDatSet"    # Lar/com/hjg/pngj/DeflatedChunksSet;

    .line 15
    sget-object v5, Lar/com/hjg/pngj/ChunkReader$ChunkReaderMode;->PROCESS:Lar/com/hjg/pngj/ChunkReader$ChunkReaderMode;

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-wide v3, p4

    invoke-direct/range {v0 .. v5}, Lar/com/hjg/pngj/ChunkReader;-><init>(ILjava/lang/String;JLar/com/hjg/pngj/ChunkReader$ChunkReaderMode;)V

    .line 11
    const/4 v0, 0x0

    iput-boolean v0, p0, Lar/com/hjg/pngj/DeflatedChunkReader;->alsoBuffer:Z

    .line 16
    iput-object p6, p0, Lar/com/hjg/pngj/DeflatedChunkReader;->deflatedChunksSet:Lar/com/hjg/pngj/DeflatedChunksSet;

    .line 17
    invoke-virtual {p6, p0}, Lar/com/hjg/pngj/DeflatedChunksSet;->appendNewChunk(Lar/com/hjg/pngj/DeflatedChunkReader;)V

    .line 18
    return-void
.end method


# virtual methods
.method protected chunkDone()V
    .locals 0

    .line 39
    return-void
.end method

.method protected processData(I[BII)V
    .locals 2
    .param p1, "offsetInchunk"    # I
    .param p2, "buf"    # [B
    .param p3, "off"    # I
    .param p4, "len"    # I

    .line 25
    if-lez p4, :cond_0

    .line 26
    iget-object v0, p0, Lar/com/hjg/pngj/DeflatedChunkReader;->deflatedChunksSet:Lar/com/hjg/pngj/DeflatedChunksSet;

    invoke-virtual {v0, p2, p3, p4}, Lar/com/hjg/pngj/DeflatedChunksSet;->processBytes([BII)V

    .line 27
    iget-boolean v0, p0, Lar/com/hjg/pngj/DeflatedChunkReader;->alsoBuffer:Z

    if-eqz v0, :cond_0

    .line 28
    invoke-virtual {p0}, Lar/com/hjg/pngj/DeflatedChunkReader;->getChunkRaw()Lar/com/hjg/pngj/chunks/ChunkRaw;

    move-result-object v0

    iget-object v0, v0, Lar/com/hjg/pngj/chunks/ChunkRaw;->data:[B

    iget v1, p0, Lar/com/hjg/pngj/DeflatedChunkReader;->read:I

    invoke-static {p2, p3, v0, v1, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 31
    :cond_0
    return-void
.end method

.method public setAlsoBuffer()V
    .locals 2

    .line 45
    iget v0, p0, Lar/com/hjg/pngj/DeflatedChunkReader;->read:I

    if-gtz v0, :cond_0

    .line 47
    const/4 v0, 0x1

    iput-boolean v0, p0, Lar/com/hjg/pngj/DeflatedChunkReader;->alsoBuffer:Z

    .line 48
    invoke-virtual {p0}, Lar/com/hjg/pngj/DeflatedChunkReader;->getChunkRaw()Lar/com/hjg/pngj/chunks/ChunkRaw;

    move-result-object v0

    invoke-virtual {v0}, Lar/com/hjg/pngj/chunks/ChunkRaw;->allocData()V

    .line 49
    return-void

    .line 46
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "too late"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
