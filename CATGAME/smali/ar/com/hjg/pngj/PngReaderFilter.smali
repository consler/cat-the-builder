.class public Lar/com/hjg/pngj/PngReaderFilter;
.super Ljava/io/FilterInputStream;
.source "PngReaderFilter.java"


# instance fields
.field private chunkseq:Lar/com/hjg/pngj/ChunkSeqReaderPng;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 32
    invoke-virtual {p0}, Lar/com/hjg/pngj/PngReaderFilter;->createChunkSequenceReader()Lar/com/hjg/pngj/ChunkSeqReaderPng;

    move-result-object p1

    iput-object p1, p0, Lar/com/hjg/pngj/PngReaderFilter;->chunkseq:Lar/com/hjg/pngj/ChunkSeqReaderPng;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 57
    invoke-super {p0}, Ljava/io/FilterInputStream;->close()V

    .line 58
    iget-object v0, p0, Lar/com/hjg/pngj/PngReaderFilter;->chunkseq:Lar/com/hjg/pngj/ChunkSeqReaderPng;

    invoke-virtual {v0}, Lar/com/hjg/pngj/ChunkSeqReaderPng;->close()V

    return-void
.end method

.method protected createChunkSequenceReader()Lar/com/hjg/pngj/ChunkSeqReaderPng;
    .locals 2

    .line 36
    new-instance v0, Lar/com/hjg/pngj/PngReaderFilter$1;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lar/com/hjg/pngj/PngReaderFilter$1;-><init>(Lar/com/hjg/pngj/PngReaderFilter;Z)V

    return-object v0
.end method

.method public getChunksList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lar/com/hjg/pngj/chunks/PngChunk;",
            ">;"
        }
    .end annotation

    .line 93
    iget-object v0, p0, Lar/com/hjg/pngj/PngReaderFilter;->chunkseq:Lar/com/hjg/pngj/ChunkSeqReaderPng;

    invoke-virtual {v0}, Lar/com/hjg/pngj/ChunkSeqReaderPng;->getChunks()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getChunkseq()Lar/com/hjg/pngj/ChunkSeqReaderPng;
    .locals 1

    .line 97
    iget-object v0, p0, Lar/com/hjg/pngj/PngReaderFilter;->chunkseq:Lar/com/hjg/pngj/ChunkSeqReaderPng;

    return-object v0
.end method

.method public read()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 63
    invoke-super {p0}, Ljava/io/FilterInputStream;->read()I

    move-result v0

    if-lez v0, :cond_0

    .line 65
    iget-object v1, p0, Lar/com/hjg/pngj/PngReaderFilter;->chunkseq:Lar/com/hjg/pngj/ChunkSeqReaderPng;

    const/4 v2, 0x1

    new-array v3, v2, [B

    int-to-byte v4, v0

    const/4 v5, 0x0

    aput-byte v4, v3, v5

    invoke-virtual {v1, v3, v5, v2}, Lar/com/hjg/pngj/ChunkSeqReaderPng;->feedAll([BII)Z

    :cond_0
    return v0
.end method

.method public read([B)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 79
    invoke-super {p0, p1}, Ljava/io/FilterInputStream;->read([B)I

    move-result v0

    if-lez v0, :cond_0

    .line 81
    iget-object v1, p0, Lar/com/hjg/pngj/PngReaderFilter;->chunkseq:Lar/com/hjg/pngj/ChunkSeqReaderPng;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2, v0}, Lar/com/hjg/pngj/ChunkSeqReaderPng;->feedAll([BII)Z

    :cond_0
    return v0
.end method

.method public read([BII)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 71
    invoke-super {p0, p1, p2, p3}, Ljava/io/FilterInputStream;->read([BII)I

    move-result p3

    if-lez p3, :cond_0

    .line 73
    iget-object v0, p0, Lar/com/hjg/pngj/PngReaderFilter;->chunkseq:Lar/com/hjg/pngj/ChunkSeqReaderPng;

    invoke-virtual {v0, p1, p2, p3}, Lar/com/hjg/pngj/ChunkSeqReaderPng;->feedAll([BII)Z

    :cond_0
    return p3
.end method

.method public readUntilEndAndClose()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 86
    new-instance v0, Lar/com/hjg/pngj/BufferedStreamFeeder;

    iget-object v1, p0, Lar/com/hjg/pngj/PngReaderFilter;->in:Ljava/io/InputStream;

    invoke-direct {v0, v1}, Lar/com/hjg/pngj/BufferedStreamFeeder;-><init>(Ljava/io/InputStream;)V

    .line 87
    :goto_0
    iget-object v1, p0, Lar/com/hjg/pngj/PngReaderFilter;->chunkseq:Lar/com/hjg/pngj/ChunkSeqReaderPng;

    invoke-virtual {v1}, Lar/com/hjg/pngj/ChunkSeqReaderPng;->isDone()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lar/com/hjg/pngj/BufferedStreamFeeder;->hasMoreToFeed()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 88
    iget-object v1, p0, Lar/com/hjg/pngj/PngReaderFilter;->chunkseq:Lar/com/hjg/pngj/ChunkSeqReaderPng;

    invoke-virtual {v0, v1}, Lar/com/hjg/pngj/BufferedStreamFeeder;->feed(Lar/com/hjg/pngj/IBytesConsumer;)I

    goto :goto_0

    .line 89
    :cond_0
    invoke-virtual {p0}, Lar/com/hjg/pngj/PngReaderFilter;->close()V

    return-void
.end method
