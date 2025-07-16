.class public Lar/com/hjg/pngj/PngReader;
.super Ljava/lang/Object;
.source "PngReader.java"


# static fields
.field public static final MAX_BYTES_METADATA_DEFAULT:J = 0x4ca918L

.field public static final MAX_CHUNK_SIZE_SKIP:J = 0x1ee258L

.field public static final MAX_TOTAL_BYTES_READ_DEFAULT:J = 0x35b42f29L


# instance fields
.field protected chunkseq:Lar/com/hjg/pngj/ChunkSeqReaderPng;

.field idatCrca:Ljava/util/zip/CRC32;

.field idatCrcb:Ljava/util/zip/Adler32;

.field private imageLineSetFactory:Lar/com/hjg/pngj/IImageLineSetFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lar/com/hjg/pngj/IImageLineSetFactory<",
            "+",
            "Lar/com/hjg/pngj/IImageLine;",
            ">;"
        }
    .end annotation
.end field

.field public final imgInfo:Lar/com/hjg/pngj/ImageInfo;

.field protected imlinesSet:Lar/com/hjg/pngj/IImageLineSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lar/com/hjg/pngj/IImageLineSet<",
            "+",
            "Lar/com/hjg/pngj/IImageLine;",
            ">;"
        }
    .end annotation
.end field

.field public final interlaced:Z

.field protected final metadata:Lar/com/hjg/pngj/chunks/PngMetadata;

.field protected rowNum:I

.field protected streamFeeder:Lar/com/hjg/pngj/BufferedStreamFeeder;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 1

    .line 147
    invoke-static {p1}, Lar/com/hjg/pngj/PngHelperInternal;->istreamFromFile(Ljava/io/File;)Ljava/io/InputStream;

    move-result-object p1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lar/com/hjg/pngj/PngReader;-><init>(Ljava/io/InputStream;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1

    const/4 v0, 0x1

    .line 106
    invoke-direct {p0, p1, v0}, Lar/com/hjg/pngj/PngReader;-><init>(Ljava/io/InputStream;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Z)V
    .locals 4

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 79
    iput v0, p0, Lar/com/hjg/pngj/PngReader;->rowNum:I

    .line 117
    :try_start_0
    new-instance v1, Lar/com/hjg/pngj/BufferedStreamFeeder;

    invoke-direct {v1, p1}, Lar/com/hjg/pngj/BufferedStreamFeeder;-><init>(Ljava/io/InputStream;)V

    iput-object v1, p0, Lar/com/hjg/pngj/PngReader;->streamFeeder:Lar/com/hjg/pngj/BufferedStreamFeeder;

    .line 118
    invoke-virtual {v1, p2}, Lar/com/hjg/pngj/BufferedStreamFeeder;->setCloseStream(Z)V

    .line 119
    new-instance p1, Lar/com/hjg/pngj/ChunkSeqReaderPng;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Lar/com/hjg/pngj/ChunkSeqReaderPng;-><init>(Z)V

    iput-object p1, p0, Lar/com/hjg/pngj/PngReader;->chunkseq:Lar/com/hjg/pngj/ChunkSeqReaderPng;

    .line 120
    iget-object p1, p0, Lar/com/hjg/pngj/PngReader;->streamFeeder:Lar/com/hjg/pngj/BufferedStreamFeeder;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lar/com/hjg/pngj/BufferedStreamFeeder;->setFailIfNoFeed(Z)V

    .line 121
    iget-object p1, p0, Lar/com/hjg/pngj/PngReader;->streamFeeder:Lar/com/hjg/pngj/BufferedStreamFeeder;

    iget-object v2, p0, Lar/com/hjg/pngj/PngReader;->chunkseq:Lar/com/hjg/pngj/ChunkSeqReaderPng;

    const/16 v3, 0x24

    invoke-virtual {p1, v2, v3}, Lar/com/hjg/pngj/BufferedStreamFeeder;->feedFixed(Lar/com/hjg/pngj/IBytesConsumer;I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 123
    iget-object p1, p0, Lar/com/hjg/pngj/PngReader;->chunkseq:Lar/com/hjg/pngj/ChunkSeqReaderPng;

    invoke-virtual {p1}, Lar/com/hjg/pngj/ChunkSeqReaderPng;->getImageInfo()Lar/com/hjg/pngj/ImageInfo;

    move-result-object p1

    iput-object p1, p0, Lar/com/hjg/pngj/PngReader;->imgInfo:Lar/com/hjg/pngj/ImageInfo;

    .line 124
    iget-object p1, p0, Lar/com/hjg/pngj/PngReader;->chunkseq:Lar/com/hjg/pngj/ChunkSeqReaderPng;

    invoke-virtual {p1}, Lar/com/hjg/pngj/ChunkSeqReaderPng;->getDeinterlacer()Lar/com/hjg/pngj/Deinterlacer;

    move-result-object p1

    if-eqz p1, :cond_0

    move p2, v1

    :cond_0
    iput-boolean p2, p0, Lar/com/hjg/pngj/PngReader;->interlaced:Z

    const-wide/32 p1, 0x4ca918

    .line 125
    invoke-virtual {p0, p1, p2}, Lar/com/hjg/pngj/PngReader;->setMaxBytesMetadata(J)V

    const-wide/32 p1, 0x35b42f29

    .line 126
    invoke-virtual {p0, p1, p2}, Lar/com/hjg/pngj/PngReader;->setMaxTotalBytesRead(J)V

    const-wide/32 p1, 0x1ee258    # 1.0000007E-317

    .line 127
    invoke-virtual {p0, p1, p2}, Lar/com/hjg/pngj/PngReader;->setSkipChunkMaxSize(J)V

    .line 128
    new-instance p1, Lar/com/hjg/pngj/chunks/PngMetadata;

    iget-object p2, p0, Lar/com/hjg/pngj/PngReader;->chunkseq:Lar/com/hjg/pngj/ChunkSeqReaderPng;

    iget-object p2, p2, Lar/com/hjg/pngj/ChunkSeqReaderPng;->chunksList:Lar/com/hjg/pngj/chunks/ChunksList;

    invoke-direct {p1, p2}, Lar/com/hjg/pngj/chunks/PngMetadata;-><init>(Lar/com/hjg/pngj/chunks/ChunksList;)V

    iput-object p1, p0, Lar/com/hjg/pngj/PngReader;->metadata:Lar/com/hjg/pngj/chunks/PngMetadata;

    .line 131
    invoke-static {}, Lar/com/hjg/pngj/ImageLineSetDefault;->getFactoryInt()Lar/com/hjg/pngj/IImageLineSetFactory;

    move-result-object p1

    invoke-virtual {p0, p1}, Lar/com/hjg/pngj/PngReader;->setLineSetFactory(Lar/com/hjg/pngj/IImageLineSetFactory;)V

    .line 132
    iput v0, p0, Lar/com/hjg/pngj/PngReader;->rowNum:I

    return-void

    .line 122
    :cond_1
    new-instance p1, Lar/com/hjg/pngj/PngjInputException;

    const-string p2, "error reading first 21 bytes"

    invoke-direct {p1, p2}, Lar/com/hjg/pngj/PngjInputException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 134
    iget-object p2, p0, Lar/com/hjg/pngj/PngReader;->streamFeeder:Lar/com/hjg/pngj/BufferedStreamFeeder;

    invoke-virtual {p2}, Lar/com/hjg/pngj/BufferedStreamFeeder;->close()V

    .line 135
    iget-object p2, p0, Lar/com/hjg/pngj/PngReader;->chunkseq:Lar/com/hjg/pngj/ChunkSeqReaderPng;

    if-eqz p2, :cond_2

    .line 136
    invoke-virtual {p2}, Lar/com/hjg/pngj/ChunkSeqReaderPng;->close()V

    .line 137
    :cond_2
    throw p1
.end method


# virtual methods
.method public addChunkToSkip(Ljava/lang/String;)V
    .locals 1

    .line 399
    iget-object v0, p0, Lar/com/hjg/pngj/PngReader;->chunkseq:Lar/com/hjg/pngj/ChunkSeqReaderPng;

    invoke-virtual {v0, p1}, Lar/com/hjg/pngj/ChunkSeqReaderPng;->addChunkToSkip(Ljava/lang/String;)V

    return-void
.end method

.method public close()V
    .locals 4

    .line 441
    :try_start_0
    iget-object v0, p0, Lar/com/hjg/pngj/PngReader;->chunkseq:Lar/com/hjg/pngj/ChunkSeqReaderPng;

    if-eqz v0, :cond_0

    .line 442
    invoke-virtual {v0}, Lar/com/hjg/pngj/ChunkSeqReaderPng;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 444
    sget-object v1, Lar/com/hjg/pngj/PngHelperInternal;->LOGGER:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "error closing chunk sequence:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 446
    :cond_0
    :goto_0
    iget-object v0, p0, Lar/com/hjg/pngj/PngReader;->streamFeeder:Lar/com/hjg/pngj/BufferedStreamFeeder;

    if-eqz v0, :cond_1

    .line 447
    invoke-virtual {v0}, Lar/com/hjg/pngj/BufferedStreamFeeder;->close()V

    :cond_1
    return-void
.end method

.method protected createLineSet(ZIII)Lar/com/hjg/pngj/IImageLineSet;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZIII)",
            "Lar/com/hjg/pngj/IImageLineSet<",
            "+",
            "Lar/com/hjg/pngj/IImageLine;",
            ">;"
        }
    .end annotation

    .line 330
    iget-object v0, p0, Lar/com/hjg/pngj/PngReader;->imageLineSetFactory:Lar/com/hjg/pngj/IImageLineSetFactory;

    iget-object v1, p0, Lar/com/hjg/pngj/PngReader;->imgInfo:Lar/com/hjg/pngj/ImageInfo;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-interface/range {v0 .. v5}, Lar/com/hjg/pngj/IImageLineSetFactory;->create(Lar/com/hjg/pngj/ImageInfo;ZIII)Lar/com/hjg/pngj/IImageLineSet;

    move-result-object p1

    return-object p1
.end method

.method public end()V
    .locals 2

    .line 423
    :try_start_0
    iget-object v0, p0, Lar/com/hjg/pngj/PngReader;->chunkseq:Lar/com/hjg/pngj/ChunkSeqReaderPng;

    invoke-virtual {v0}, Lar/com/hjg/pngj/ChunkSeqReaderPng;->firstChunksNotYetRead()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 424
    invoke-virtual {p0}, Lar/com/hjg/pngj/PngReader;->readFirstChunks()V

    .line 425
    :cond_0
    iget-object v0, p0, Lar/com/hjg/pngj/PngReader;->chunkseq:Lar/com/hjg/pngj/ChunkSeqReaderPng;

    invoke-virtual {v0}, Lar/com/hjg/pngj/ChunkSeqReaderPng;->getIdatSet()Lar/com/hjg/pngj/IdatSet;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lar/com/hjg/pngj/PngReader;->chunkseq:Lar/com/hjg/pngj/ChunkSeqReaderPng;

    invoke-virtual {v0}, Lar/com/hjg/pngj/ChunkSeqReaderPng;->getIdatSet()Lar/com/hjg/pngj/IdatSet;

    move-result-object v0

    invoke-virtual {v0}, Lar/com/hjg/pngj/IdatSet;->isDone()Z

    move-result v0

    if-nez v0, :cond_1

    .line 426
    iget-object v0, p0, Lar/com/hjg/pngj/PngReader;->chunkseq:Lar/com/hjg/pngj/ChunkSeqReaderPng;

    invoke-virtual {v0}, Lar/com/hjg/pngj/ChunkSeqReaderPng;->getIdatSet()Lar/com/hjg/pngj/IdatSet;

    move-result-object v0

    invoke-virtual {v0}, Lar/com/hjg/pngj/IdatSet;->done()V

    .line 427
    :cond_1
    :goto_0
    iget-object v0, p0, Lar/com/hjg/pngj/PngReader;->chunkseq:Lar/com/hjg/pngj/ChunkSeqReaderPng;

    invoke-virtual {v0}, Lar/com/hjg/pngj/ChunkSeqReaderPng;->isDone()Z

    move-result v0

    if-nez v0, :cond_2

    .line 428
    iget-object v0, p0, Lar/com/hjg/pngj/PngReader;->streamFeeder:Lar/com/hjg/pngj/BufferedStreamFeeder;

    iget-object v1, p0, Lar/com/hjg/pngj/PngReader;->chunkseq:Lar/com/hjg/pngj/ChunkSeqReaderPng;

    invoke-virtual {v0, v1}, Lar/com/hjg/pngj/BufferedStreamFeeder;->feed(Lar/com/hjg/pngj/IBytesConsumer;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 430
    :cond_2
    invoke-virtual {p0}, Lar/com/hjg/pngj/PngReader;->close()V

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lar/com/hjg/pngj/PngReader;->close()V

    throw v0
.end method

.method public getChunksList()Lar/com/hjg/pngj/chunks/ChunksList;
    .locals 1

    .line 188
    iget-object v0, p0, Lar/com/hjg/pngj/PngReader;->chunkseq:Lar/com/hjg/pngj/ChunkSeqReaderPng;

    invoke-virtual {v0}, Lar/com/hjg/pngj/ChunkSeqReaderPng;->firstChunksNotYetRead()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 189
    invoke-virtual {p0}, Lar/com/hjg/pngj/PngReader;->readFirstChunks()V

    .line 190
    :cond_0
    iget-object v0, p0, Lar/com/hjg/pngj/PngReader;->chunkseq:Lar/com/hjg/pngj/ChunkSeqReaderPng;

    iget-object v0, v0, Lar/com/hjg/pngj/ChunkSeqReaderPng;->chunksList:Lar/com/hjg/pngj/chunks/ChunksList;

    return-object v0
.end method

.method public getChunkseq()Lar/com/hjg/pngj/ChunkSeqReaderPng;
    .locals 1

    .line 468
    iget-object v0, p0, Lar/com/hjg/pngj/PngReader;->chunkseq:Lar/com/hjg/pngj/ChunkSeqReaderPng;

    return-object v0
.end method

.method getCurrentChunkGroup()I
    .locals 1

    .line 194
    iget-object v0, p0, Lar/com/hjg/pngj/PngReader;->chunkseq:Lar/com/hjg/pngj/ChunkSeqReaderPng;

    iget v0, v0, Lar/com/hjg/pngj/ChunkSeqReaderPng;->currentChunkGroup:I

    return v0
.end method

.method public getMetadata()Lar/com/hjg/pngj/chunks/PngMetadata;
    .locals 1

    .line 203
    iget-object v0, p0, Lar/com/hjg/pngj/PngReader;->chunkseq:Lar/com/hjg/pngj/ChunkSeqReaderPng;

    invoke-virtual {v0}, Lar/com/hjg/pngj/ChunkSeqReaderPng;->firstChunksNotYetRead()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 204
    invoke-virtual {p0}, Lar/com/hjg/pngj/PngReader;->readFirstChunks()V

    .line 205
    :cond_0
    iget-object v0, p0, Lar/com/hjg/pngj/PngReader;->metadata:Lar/com/hjg/pngj/chunks/PngMetadata;

    return-object v0
.end method

.method getSimpleDigest()J
    .locals 5

    .line 498
    iget-object v0, p0, Lar/com/hjg/pngj/PngReader;->idatCrca:Ljava/util/zip/CRC32;

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    .line 501
    :cond_0
    invoke-virtual {v0}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v0

    iget-object v2, p0, Lar/com/hjg/pngj/PngReader;->idatCrcb:Ljava/util/zip/Adler32;

    invoke-virtual {v2}, Ljava/util/zip/Adler32;->getValue()J

    move-result-wide v2

    const/16 v4, 0x1f

    shl-long/2addr v2, v4

    xor-long/2addr v0, v2

    return-wide v0
.end method

.method public getSimpleDigestHex()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 513
    invoke-virtual {p0}, Lar/com/hjg/pngj/PngReader;->getSimpleDigest()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "%016X"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasMoreRows()Z
    .locals 3

    .line 223
    iget v0, p0, Lar/com/hjg/pngj/PngReader;->rowNum:I

    iget-object v1, p0, Lar/com/hjg/pngj/PngReader;->imgInfo:Lar/com/hjg/pngj/ImageInfo;

    iget v1, v1, Lar/com/hjg/pngj/ImageInfo;->rows:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    if-ge v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method public isInterlaced()Z
    .locals 1

    .line 454
    iget-boolean v0, p0, Lar/com/hjg/pngj/PngReader;->interlaced:Z

    return v0
.end method

.method protected loadAllInterlaced(III)V
    .locals 8

    .line 334
    iget-object v0, p0, Lar/com/hjg/pngj/PngReader;->chunkseq:Lar/com/hjg/pngj/ChunkSeqReaderPng;

    invoke-virtual {v0}, Lar/com/hjg/pngj/ChunkSeqReaderPng;->getIdatSet()Lar/com/hjg/pngj/IdatSet;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    .line 337
    :cond_0
    :goto_0
    iget-object v3, p0, Lar/com/hjg/pngj/PngReader;->chunkseq:Lar/com/hjg/pngj/ChunkSeqReaderPng;

    invoke-virtual {v3}, Lar/com/hjg/pngj/ChunkSeqReaderPng;->getIdatSet()Lar/com/hjg/pngj/IdatSet;

    move-result-object v3

    invoke-virtual {v3}, Lar/com/hjg/pngj/IdatSet;->isRowReady()Z

    move-result v3

    if-nez v3, :cond_1

    .line 338
    iget-object v3, p0, Lar/com/hjg/pngj/PngReader;->streamFeeder:Lar/com/hjg/pngj/BufferedStreamFeeder;

    iget-object v4, p0, Lar/com/hjg/pngj/PngReader;->chunkseq:Lar/com/hjg/pngj/ChunkSeqReaderPng;

    invoke-virtual {v3, v4}, Lar/com/hjg/pngj/BufferedStreamFeeder;->feed(Lar/com/hjg/pngj/IBytesConsumer;)I

    goto :goto_0

    .line 339
    :cond_1
    iget-object v3, p0, Lar/com/hjg/pngj/PngReader;->chunkseq:Lar/com/hjg/pngj/ChunkSeqReaderPng;

    invoke-virtual {v3}, Lar/com/hjg/pngj/ChunkSeqReaderPng;->getIdatSet()Lar/com/hjg/pngj/IdatSet;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/util/zip/Checksum;

    iget-object v5, p0, Lar/com/hjg/pngj/PngReader;->idatCrca:Ljava/util/zip/CRC32;

    aput-object v5, v4, v1

    iget-object v5, p0, Lar/com/hjg/pngj/PngReader;->idatCrcb:Ljava/util/zip/Adler32;

    const/4 v6, 0x1

    aput-object v5, v4, v6

    invoke-virtual {v3, v4}, Lar/com/hjg/pngj/IdatSet;->updateCrcs([Ljava/util/zip/Checksum;)V

    .line 340
    iget-object v3, v0, Lar/com/hjg/pngj/IdatSet;->rowinfo:Lar/com/hjg/pngj/RowInfo;

    iget v3, v3, Lar/com/hjg/pngj/RowInfo;->rowNreal:I

    sub-int v4, v3, p2

    .line 341
    rem-int/2addr v4, p3

    if-nez v4, :cond_2

    goto :goto_1

    :cond_2
    move v6, v1

    :goto_1
    if-eqz v6, :cond_3

    .line 343
    iget-object v4, p0, Lar/com/hjg/pngj/PngReader;->imlinesSet:Lar/com/hjg/pngj/IImageLineSet;

    invoke-interface {v4, v3}, Lar/com/hjg/pngj/IImageLineSet;->getImageLine(I)Lar/com/hjg/pngj/IImageLine;

    move-result-object v3

    invoke-virtual {v0}, Lar/com/hjg/pngj/IdatSet;->getUnfilteredRow()[B

    move-result-object v4

    iget-object v5, v0, Lar/com/hjg/pngj/IdatSet;->rowinfo:Lar/com/hjg/pngj/RowInfo;

    iget v5, v5, Lar/com/hjg/pngj/RowInfo;->buflen:I

    iget-object v6, v0, Lar/com/hjg/pngj/IdatSet;->rowinfo:Lar/com/hjg/pngj/RowInfo;

    iget v6, v6, Lar/com/hjg/pngj/RowInfo;->oX:I

    iget-object v7, v0, Lar/com/hjg/pngj/IdatSet;->rowinfo:Lar/com/hjg/pngj/RowInfo;

    iget v7, v7, Lar/com/hjg/pngj/RowInfo;->dX:I

    invoke-interface {v3, v4, v5, v6, v7}, Lar/com/hjg/pngj/IImageLine;->readFromPngRaw([BIII)V

    add-int/lit8 v2, v2, 0x1

    .line 347
    :cond_3
    invoke-virtual {v0}, Lar/com/hjg/pngj/IdatSet;->advanceToNextRow()I

    if-lt v2, p1, :cond_0

    .line 348
    invoke-virtual {v0}, Lar/com/hjg/pngj/IdatSet;->isDone()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 349
    invoke-virtual {v0}, Lar/com/hjg/pngj/IdatSet;->done()V

    :goto_2
    if-ge v1, p1, :cond_4

    .line 351
    iget-object v0, p0, Lar/com/hjg/pngj/PngReader;->imlinesSet:Lar/com/hjg/pngj/IImageLineSet;

    invoke-interface {v0, p2}, Lar/com/hjg/pngj/IImageLineSet;->getImageLine(I)Lar/com/hjg/pngj/IImageLine;

    move-result-object v0

    invoke-interface {v0}, Lar/com/hjg/pngj/IImageLine;->endReadFromPngRaw()V

    add-int/lit8 v1, v1, 0x1

    add-int/2addr p2, p3

    goto :goto_2

    :cond_4
    return-void
.end method

.method public prepareSimpleDigestComputation()V
    .locals 2

    .line 475
    iget-object v0, p0, Lar/com/hjg/pngj/PngReader;->idatCrca:Ljava/util/zip/CRC32;

    if-nez v0, :cond_0

    .line 476
    new-instance v0, Ljava/util/zip/CRC32;

    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    iput-object v0, p0, Lar/com/hjg/pngj/PngReader;->idatCrca:Ljava/util/zip/CRC32;

    goto :goto_0

    .line 478
    :cond_0
    invoke-virtual {v0}, Ljava/util/zip/CRC32;->reset()V

    .line 479
    :goto_0
    iget-object v0, p0, Lar/com/hjg/pngj/PngReader;->idatCrcb:Ljava/util/zip/Adler32;

    if-nez v0, :cond_1

    .line 480
    new-instance v0, Ljava/util/zip/Adler32;

    invoke-direct {v0}, Ljava/util/zip/Adler32;-><init>()V

    iput-object v0, p0, Lar/com/hjg/pngj/PngReader;->idatCrcb:Ljava/util/zip/Adler32;

    goto :goto_1

    .line 482
    :cond_1
    invoke-virtual {v0}, Ljava/util/zip/Adler32;->reset()V

    .line 483
    :goto_1
    iget-object v0, p0, Lar/com/hjg/pngj/PngReader;->idatCrca:Ljava/util/zip/CRC32;

    iget-object v1, p0, Lar/com/hjg/pngj/PngReader;->imgInfo:Lar/com/hjg/pngj/ImageInfo;

    iget v1, v1, Lar/com/hjg/pngj/ImageInfo;->rows:I

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Ljava/util/zip/CRC32;->update(I)V

    .line 484
    iget-object v0, p0, Lar/com/hjg/pngj/PngReader;->idatCrca:Ljava/util/zip/CRC32;

    iget-object v1, p0, Lar/com/hjg/pngj/PngReader;->imgInfo:Lar/com/hjg/pngj/ImageInfo;

    iget v1, v1, Lar/com/hjg/pngj/ImageInfo;->rows:I

    shr-int/lit8 v1, v1, 0x8

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Ljava/util/zip/CRC32;->update(I)V

    .line 485
    iget-object v0, p0, Lar/com/hjg/pngj/PngReader;->idatCrca:Ljava/util/zip/CRC32;

    iget-object v1, p0, Lar/com/hjg/pngj/PngReader;->imgInfo:Lar/com/hjg/pngj/ImageInfo;

    iget v1, v1, Lar/com/hjg/pngj/ImageInfo;->rows:I

    shr-int/lit8 v1, v1, 0x10

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Ljava/util/zip/CRC32;->update(I)V

    .line 486
    iget-object v0, p0, Lar/com/hjg/pngj/PngReader;->idatCrca:Ljava/util/zip/CRC32;

    iget-object v1, p0, Lar/com/hjg/pngj/PngReader;->imgInfo:Lar/com/hjg/pngj/ImageInfo;

    iget v1, v1, Lar/com/hjg/pngj/ImageInfo;->cols:I

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Ljava/util/zip/CRC32;->update(I)V

    .line 487
    iget-object v0, p0, Lar/com/hjg/pngj/PngReader;->idatCrca:Ljava/util/zip/CRC32;

    iget-object v1, p0, Lar/com/hjg/pngj/PngReader;->imgInfo:Lar/com/hjg/pngj/ImageInfo;

    iget v1, v1, Lar/com/hjg/pngj/ImageInfo;->cols:I

    shr-int/lit8 v1, v1, 0x8

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Ljava/util/zip/CRC32;->update(I)V

    .line 488
    iget-object v0, p0, Lar/com/hjg/pngj/PngReader;->idatCrca:Ljava/util/zip/CRC32;

    iget-object v1, p0, Lar/com/hjg/pngj/PngReader;->imgInfo:Lar/com/hjg/pngj/ImageInfo;

    iget v1, v1, Lar/com/hjg/pngj/ImageInfo;->cols:I

    shr-int/lit8 v1, v1, 0x10

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Ljava/util/zip/CRC32;->update(I)V

    .line 489
    iget-object v0, p0, Lar/com/hjg/pngj/PngReader;->idatCrca:Ljava/util/zip/CRC32;

    iget-object v1, p0, Lar/com/hjg/pngj/PngReader;->imgInfo:Lar/com/hjg/pngj/ImageInfo;

    iget v1, v1, Lar/com/hjg/pngj/ImageInfo;->channels:I

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Ljava/util/zip/CRC32;->update(I)V

    .line 490
    iget-object v0, p0, Lar/com/hjg/pngj/PngReader;->idatCrca:Ljava/util/zip/CRC32;

    iget-object v1, p0, Lar/com/hjg/pngj/PngReader;->imgInfo:Lar/com/hjg/pngj/ImageInfo;

    iget v1, v1, Lar/com/hjg/pngj/ImageInfo;->bitDepth:I

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Ljava/util/zip/CRC32;->update(I)V

    .line 491
    iget-object v0, p0, Lar/com/hjg/pngj/PngReader;->idatCrca:Ljava/util/zip/CRC32;

    iget-object v1, p0, Lar/com/hjg/pngj/PngReader;->imgInfo:Lar/com/hjg/pngj/ImageInfo;

    iget-boolean v1, v1, Lar/com/hjg/pngj/ImageInfo;->indexed:Z

    if-eqz v1, :cond_2

    const/16 v1, 0xa

    goto :goto_2

    :cond_2
    const/16 v1, 0x14

    :goto_2
    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Ljava/util/zip/CRC32;->update(I)V

    .line 492
    iget-object v0, p0, Lar/com/hjg/pngj/PngReader;->idatCrcb:Ljava/util/zip/Adler32;

    iget-object v1, p0, Lar/com/hjg/pngj/PngReader;->imgInfo:Lar/com/hjg/pngj/ImageInfo;

    iget v1, v1, Lar/com/hjg/pngj/ImageInfo;->bytesPerRow:I

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Ljava/util/zip/Adler32;->update(I)V

    .line 493
    iget-object v0, p0, Lar/com/hjg/pngj/PngReader;->idatCrcb:Ljava/util/zip/Adler32;

    iget-object v1, p0, Lar/com/hjg/pngj/PngReader;->imgInfo:Lar/com/hjg/pngj/ImageInfo;

    iget v1, v1, Lar/com/hjg/pngj/ImageInfo;->channels:I

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Ljava/util/zip/Adler32;->update(I)V

    .line 494
    iget-object v0, p0, Lar/com/hjg/pngj/PngReader;->idatCrcb:Ljava/util/zip/Adler32;

    iget-object v1, p0, Lar/com/hjg/pngj/PngReader;->imgInfo:Lar/com/hjg/pngj/ImageInfo;

    iget v1, v1, Lar/com/hjg/pngj/ImageInfo;->rows:I

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Ljava/util/zip/Adler32;->update(I)V

    return-void
.end method

.method protected readFirstChunks()V
    .locals 2

    .line 163
    :goto_0
    iget-object v0, p0, Lar/com/hjg/pngj/PngReader;->chunkseq:Lar/com/hjg/pngj/ChunkSeqReaderPng;

    iget v0, v0, Lar/com/hjg/pngj/ChunkSeqReaderPng;->currentChunkGroup:I

    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    .line 164
    iget-object v0, p0, Lar/com/hjg/pngj/PngReader;->streamFeeder:Lar/com/hjg/pngj/BufferedStreamFeeder;

    iget-object v1, p0, Lar/com/hjg/pngj/PngReader;->chunkseq:Lar/com/hjg/pngj/ChunkSeqReaderPng;

    invoke-virtual {v0, v1}, Lar/com/hjg/pngj/BufferedStreamFeeder;->feed(Lar/com/hjg/pngj/IBytesConsumer;)I

    goto :goto_0

    :cond_0
    return-void
.end method

.method public readRow()Lar/com/hjg/pngj/IImageLine;
    .locals 1

    .line 216
    iget v0, p0, Lar/com/hjg/pngj/PngReader;->rowNum:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lar/com/hjg/pngj/PngReader;->readRow(I)Lar/com/hjg/pngj/IImageLine;

    move-result-object v0

    return-object v0
.end method

.method public readRow(I)Lar/com/hjg/pngj/IImageLine;
    .locals 6

    .line 230
    iget-object v0, p0, Lar/com/hjg/pngj/PngReader;->chunkseq:Lar/com/hjg/pngj/ChunkSeqReaderPng;

    invoke-virtual {v0}, Lar/com/hjg/pngj/ChunkSeqReaderPng;->firstChunksNotYetRead()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 231
    invoke-virtual {p0}, Lar/com/hjg/pngj/PngReader;->readFirstChunks()V

    .line 232
    :cond_0
    iget-boolean v0, p0, Lar/com/hjg/pngj/PngReader;->interlaced:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_7

    .line 233
    iget-object v0, p0, Lar/com/hjg/pngj/PngReader;->imlinesSet:Lar/com/hjg/pngj/IImageLineSet;

    if-nez v0, :cond_1

    .line 234
    invoke-virtual {p0, v2, v2, v1, v2}, Lar/com/hjg/pngj/PngReader;->createLineSet(ZIII)Lar/com/hjg/pngj/IImageLineSet;

    move-result-object v0

    iput-object v0, p0, Lar/com/hjg/pngj/PngReader;->imlinesSet:Lar/com/hjg/pngj/IImageLineSet;

    .line 235
    :cond_1
    iget-object v0, p0, Lar/com/hjg/pngj/PngReader;->imlinesSet:Lar/com/hjg/pngj/IImageLineSet;

    invoke-interface {v0, p1}, Lar/com/hjg/pngj/IImageLineSet;->getImageLine(I)Lar/com/hjg/pngj/IImageLine;

    move-result-object v0

    .line 236
    iget v3, p0, Lar/com/hjg/pngj/PngReader;->rowNum:I

    if-ne p1, v3, :cond_2

    return-object v0

    :cond_2
    if-lt p1, v3, :cond_6

    .line 240
    :goto_0
    iget v3, p0, Lar/com/hjg/pngj/PngReader;->rowNum:I

    if-ge v3, p1, :cond_5

    .line 241
    :goto_1
    iget-object v3, p0, Lar/com/hjg/pngj/PngReader;->chunkseq:Lar/com/hjg/pngj/ChunkSeqReaderPng;

    invoke-virtual {v3}, Lar/com/hjg/pngj/ChunkSeqReaderPng;->getIdatSet()Lar/com/hjg/pngj/IdatSet;

    move-result-object v3

    invoke-virtual {v3}, Lar/com/hjg/pngj/IdatSet;->isRowReady()Z

    move-result v3

    if-nez v3, :cond_3

    .line 242
    iget-object v3, p0, Lar/com/hjg/pngj/PngReader;->streamFeeder:Lar/com/hjg/pngj/BufferedStreamFeeder;

    iget-object v4, p0, Lar/com/hjg/pngj/PngReader;->chunkseq:Lar/com/hjg/pngj/ChunkSeqReaderPng;

    invoke-virtual {v3, v4}, Lar/com/hjg/pngj/BufferedStreamFeeder;->feed(Lar/com/hjg/pngj/IBytesConsumer;)I

    goto :goto_1

    .line 243
    :cond_3
    iget v3, p0, Lar/com/hjg/pngj/PngReader;->rowNum:I

    add-int/2addr v3, v2

    iput v3, p0, Lar/com/hjg/pngj/PngReader;->rowNum:I

    .line 244
    iget-object v3, p0, Lar/com/hjg/pngj/PngReader;->chunkseq:Lar/com/hjg/pngj/ChunkSeqReaderPng;

    invoke-virtual {v3}, Lar/com/hjg/pngj/ChunkSeqReaderPng;->getIdatSet()Lar/com/hjg/pngj/IdatSet;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/util/zip/Checksum;

    iget-object v5, p0, Lar/com/hjg/pngj/PngReader;->idatCrca:Ljava/util/zip/CRC32;

    aput-object v5, v4, v1

    iget-object v5, p0, Lar/com/hjg/pngj/PngReader;->idatCrcb:Ljava/util/zip/Adler32;

    aput-object v5, v4, v2

    invoke-virtual {v3, v4}, Lar/com/hjg/pngj/IdatSet;->updateCrcs([Ljava/util/zip/Checksum;)V

    .line 245
    iget v3, p0, Lar/com/hjg/pngj/PngReader;->rowNum:I

    if-ne v3, p1, :cond_4

    .line 246
    iget-object v3, p0, Lar/com/hjg/pngj/PngReader;->chunkseq:Lar/com/hjg/pngj/ChunkSeqReaderPng;

    invoke-virtual {v3}, Lar/com/hjg/pngj/ChunkSeqReaderPng;->getIdatSet()Lar/com/hjg/pngj/IdatSet;

    move-result-object v3

    invoke-virtual {v3}, Lar/com/hjg/pngj/IdatSet;->getUnfilteredRow()[B

    move-result-object v3

    iget-object v4, p0, Lar/com/hjg/pngj/PngReader;->imgInfo:Lar/com/hjg/pngj/ImageInfo;

    iget v4, v4, Lar/com/hjg/pngj/ImageInfo;->bytesPerRow:I

    add-int/2addr v4, v2

    invoke-interface {v0, v3, v4, v1, v2}, Lar/com/hjg/pngj/IImageLine;->readFromPngRaw([BIII)V

    .line 248
    invoke-interface {v0}, Lar/com/hjg/pngj/IImageLine;->endReadFromPngRaw()V

    .line 250
    :cond_4
    iget-object v3, p0, Lar/com/hjg/pngj/PngReader;->chunkseq:Lar/com/hjg/pngj/ChunkSeqReaderPng;

    invoke-virtual {v3}, Lar/com/hjg/pngj/ChunkSeqReaderPng;->getIdatSet()Lar/com/hjg/pngj/IdatSet;

    move-result-object v3

    invoke-virtual {v3}, Lar/com/hjg/pngj/IdatSet;->advanceToNextRow()I

    goto :goto_0

    :cond_5
    return-object v0

    .line 239
    :cond_6
    new-instance v0, Lar/com/hjg/pngj/PngjInputException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "rows must be read in increasing order: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lar/com/hjg/pngj/PngjInputException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 254
    :cond_7
    iget-object v0, p0, Lar/com/hjg/pngj/PngReader;->imlinesSet:Lar/com/hjg/pngj/IImageLineSet;

    if-nez v0, :cond_8

    .line 255
    iget-object v0, p0, Lar/com/hjg/pngj/PngReader;->imgInfo:Lar/com/hjg/pngj/ImageInfo;

    iget v0, v0, Lar/com/hjg/pngj/ImageInfo;->rows:I

    invoke-virtual {p0, v1, v0, v1, v2}, Lar/com/hjg/pngj/PngReader;->createLineSet(ZIII)Lar/com/hjg/pngj/IImageLineSet;

    move-result-object v0

    iput-object v0, p0, Lar/com/hjg/pngj/PngReader;->imlinesSet:Lar/com/hjg/pngj/IImageLineSet;

    .line 256
    iget-object v0, p0, Lar/com/hjg/pngj/PngReader;->imgInfo:Lar/com/hjg/pngj/ImageInfo;

    iget v0, v0, Lar/com/hjg/pngj/ImageInfo;->rows:I

    invoke-virtual {p0, v0, v1, v2}, Lar/com/hjg/pngj/PngReader;->loadAllInterlaced(III)V

    .line 258
    :cond_8
    iput p1, p0, Lar/com/hjg/pngj/PngReader;->rowNum:I

    .line 259
    iget-object v0, p0, Lar/com/hjg/pngj/PngReader;->imlinesSet:Lar/com/hjg/pngj/IImageLineSet;

    invoke-interface {v0, p1}, Lar/com/hjg/pngj/IImageLineSet;->getImageLine(I)Lar/com/hjg/pngj/IImageLine;

    move-result-object p1

    return-object p1
.end method

.method public readRows()Lar/com/hjg/pngj/IImageLineSet;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lar/com/hjg/pngj/IImageLineSet<",
            "+",
            "Lar/com/hjg/pngj/IImageLine;",
            ">;"
        }
    .end annotation

    .line 268
    iget-object v0, p0, Lar/com/hjg/pngj/PngReader;->imgInfo:Lar/com/hjg/pngj/ImageInfo;

    iget v0, v0, Lar/com/hjg/pngj/ImageInfo;->rows:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lar/com/hjg/pngj/PngReader;->readRows(III)Lar/com/hjg/pngj/IImageLineSet;

    move-result-object v0

    return-object v0
.end method

.method public readRows(III)Lar/com/hjg/pngj/IImageLineSet;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III)",
            "Lar/com/hjg/pngj/IImageLineSet<",
            "+",
            "Lar/com/hjg/pngj/IImageLine;",
            ">;"
        }
    .end annotation

    .line 281
    iget-object v0, p0, Lar/com/hjg/pngj/PngReader;->chunkseq:Lar/com/hjg/pngj/ChunkSeqReaderPng;

    invoke-virtual {v0}, Lar/com/hjg/pngj/ChunkSeqReaderPng;->firstChunksNotYetRead()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 282
    invoke-virtual {p0}, Lar/com/hjg/pngj/PngReader;->readFirstChunks()V

    :cond_0
    if-gez p1, :cond_1

    .line 284
    iget-object p1, p0, Lar/com/hjg/pngj/PngReader;->imgInfo:Lar/com/hjg/pngj/ImageInfo;

    iget p1, p1, Lar/com/hjg/pngj/ImageInfo;->rows:I

    sub-int/2addr p1, p2

    div-int/2addr p1, p3

    :cond_1
    const/4 v0, 0x1

    if-lt p3, v0, :cond_7

    if-ltz p2, :cond_7

    if-eqz p1, :cond_7

    mul-int v1, p1, p3

    add-int/2addr v1, p2

    .line 285
    iget-object v2, p0, Lar/com/hjg/pngj/PngReader;->imgInfo:Lar/com/hjg/pngj/ImageInfo;

    iget v2, v2, Lar/com/hjg/pngj/ImageInfo;->rows:I

    if-gt v1, v2, :cond_7

    .line 287
    iget v1, p0, Lar/com/hjg/pngj/PngReader;->rowNum:I

    if-gez v1, :cond_6

    const/4 v1, 0x0

    .line 289
    invoke-virtual {p0, v1, p1, p2, p3}, Lar/com/hjg/pngj/PngReader;->createLineSet(ZIII)Lar/com/hjg/pngj/IImageLineSet;

    move-result-object v2

    iput-object v2, p0, Lar/com/hjg/pngj/PngReader;->imlinesSet:Lar/com/hjg/pngj/IImageLineSet;

    .line 290
    iget-boolean v2, p0, Lar/com/hjg/pngj/PngReader;->interlaced:Z

    if-nez v2, :cond_4

    const/4 v2, -0x1

    :goto_0
    add-int/lit8 v3, p1, -0x1

    if-ge v2, v3, :cond_5

    .line 293
    :goto_1
    iget-object v2, p0, Lar/com/hjg/pngj/PngReader;->chunkseq:Lar/com/hjg/pngj/ChunkSeqReaderPng;

    invoke-virtual {v2}, Lar/com/hjg/pngj/ChunkSeqReaderPng;->getIdatSet()Lar/com/hjg/pngj/IdatSet;

    move-result-object v2

    invoke-virtual {v2}, Lar/com/hjg/pngj/IdatSet;->isRowReady()Z

    move-result v2

    if-nez v2, :cond_2

    .line 294
    iget-object v2, p0, Lar/com/hjg/pngj/PngReader;->streamFeeder:Lar/com/hjg/pngj/BufferedStreamFeeder;

    iget-object v3, p0, Lar/com/hjg/pngj/PngReader;->chunkseq:Lar/com/hjg/pngj/ChunkSeqReaderPng;

    invoke-virtual {v2, v3}, Lar/com/hjg/pngj/BufferedStreamFeeder;->feed(Lar/com/hjg/pngj/IBytesConsumer;)I

    goto :goto_1

    .line 295
    :cond_2
    iget v2, p0, Lar/com/hjg/pngj/PngReader;->rowNum:I

    add-int/2addr v2, v0

    iput v2, p0, Lar/com/hjg/pngj/PngReader;->rowNum:I

    .line 296
    iget-object v2, p0, Lar/com/hjg/pngj/PngReader;->chunkseq:Lar/com/hjg/pngj/ChunkSeqReaderPng;

    invoke-virtual {v2}, Lar/com/hjg/pngj/ChunkSeqReaderPng;->getIdatSet()Lar/com/hjg/pngj/IdatSet;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/util/zip/Checksum;

    iget-object v4, p0, Lar/com/hjg/pngj/PngReader;->idatCrca:Ljava/util/zip/CRC32;

    aput-object v4, v3, v1

    iget-object v4, p0, Lar/com/hjg/pngj/PngReader;->idatCrcb:Ljava/util/zip/Adler32;

    aput-object v4, v3, v0

    invoke-virtual {v2, v3}, Lar/com/hjg/pngj/IdatSet;->updateCrcs([Ljava/util/zip/Checksum;)V

    .line 297
    iget v2, p0, Lar/com/hjg/pngj/PngReader;->rowNum:I

    sub-int v3, v2, p2

    div-int/2addr v3, p3

    if-lt v2, p2, :cond_3

    mul-int v4, p3, v3

    add-int/2addr v4, p2

    if-ne v4, v2, :cond_3

    .line 299
    iget-object v4, p0, Lar/com/hjg/pngj/PngReader;->imlinesSet:Lar/com/hjg/pngj/IImageLineSet;

    invoke-interface {v4, v2}, Lar/com/hjg/pngj/IImageLineSet;->getImageLine(I)Lar/com/hjg/pngj/IImageLine;

    move-result-object v2

    .line 300
    iget-object v4, p0, Lar/com/hjg/pngj/PngReader;->chunkseq:Lar/com/hjg/pngj/ChunkSeqReaderPng;

    invoke-virtual {v4}, Lar/com/hjg/pngj/ChunkSeqReaderPng;->getIdatSet()Lar/com/hjg/pngj/IdatSet;

    move-result-object v4

    invoke-virtual {v4}, Lar/com/hjg/pngj/IdatSet;->getUnfilteredRow()[B

    move-result-object v4

    iget-object v5, p0, Lar/com/hjg/pngj/PngReader;->imgInfo:Lar/com/hjg/pngj/ImageInfo;

    iget v5, v5, Lar/com/hjg/pngj/ImageInfo;->bytesPerRow:I

    add-int/2addr v5, v0

    invoke-interface {v2, v4, v5, v1, v0}, Lar/com/hjg/pngj/IImageLine;->readFromPngRaw([BIII)V

    .line 302
    invoke-interface {v2}, Lar/com/hjg/pngj/IImageLine;->endReadFromPngRaw()V

    .line 304
    :cond_3
    iget-object v2, p0, Lar/com/hjg/pngj/PngReader;->chunkseq:Lar/com/hjg/pngj/ChunkSeqReaderPng;

    invoke-virtual {v2}, Lar/com/hjg/pngj/ChunkSeqReaderPng;->getIdatSet()Lar/com/hjg/pngj/IdatSet;

    move-result-object v2

    invoke-virtual {v2}, Lar/com/hjg/pngj/IdatSet;->advanceToNextRow()I

    move v2, v3

    goto :goto_0

    .line 307
    :cond_4
    invoke-virtual {p0, p1, p2, p3}, Lar/com/hjg/pngj/PngReader;->loadAllInterlaced(III)V

    .line 309
    :cond_5
    iget-object p1, p0, Lar/com/hjg/pngj/PngReader;->chunkseq:Lar/com/hjg/pngj/ChunkSeqReaderPng;

    invoke-virtual {p1}, Lar/com/hjg/pngj/ChunkSeqReaderPng;->getIdatSet()Lar/com/hjg/pngj/IdatSet;

    move-result-object p1

    invoke-virtual {p1}, Lar/com/hjg/pngj/IdatSet;->done()V

    .line 310
    invoke-virtual {p0}, Lar/com/hjg/pngj/PngReader;->end()V

    .line 311
    iget-object p1, p0, Lar/com/hjg/pngj/PngReader;->imlinesSet:Lar/com/hjg/pngj/IImageLineSet;

    return-object p1

    .line 288
    :cond_6
    new-instance p1, Lar/com/hjg/pngj/PngjInputException;

    const-string p2, "readRows cannot be mixed with readRow"

    invoke-direct {p1, p2}, Lar/com/hjg/pngj/PngjInputException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 286
    :cond_7
    new-instance p1, Lar/com/hjg/pngj/PngjInputException;

    const-string p2, "bad args"

    invoke-direct {p1, p2}, Lar/com/hjg/pngj/PngjInputException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public readSkippingAllRows()V
    .locals 2

    .line 360
    iget-object v0, p0, Lar/com/hjg/pngj/PngReader;->chunkseq:Lar/com/hjg/pngj/ChunkSeqReaderPng;

    const-string v1, "IDAT"

    invoke-virtual {v0, v1}, Lar/com/hjg/pngj/ChunkSeqReaderPng;->addChunkToSkip(Ljava/lang/String;)V

    .line 361
    iget-object v0, p0, Lar/com/hjg/pngj/PngReader;->chunkseq:Lar/com/hjg/pngj/ChunkSeqReaderPng;

    invoke-virtual {v0}, Lar/com/hjg/pngj/ChunkSeqReaderPng;->firstChunksNotYetRead()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 362
    invoke-virtual {p0}, Lar/com/hjg/pngj/PngReader;->readFirstChunks()V

    .line 363
    :cond_0
    invoke-virtual {p0}, Lar/com/hjg/pngj/PngReader;->end()V

    return-void
.end method

.method public setChunkLoadBehaviour(Lar/com/hjg/pngj/chunks/ChunkLoadBehaviour;)V
    .locals 1

    .line 176
    iget-object v0, p0, Lar/com/hjg/pngj/PngReader;->chunkseq:Lar/com/hjg/pngj/ChunkSeqReaderPng;

    invoke-virtual {v0, p1}, Lar/com/hjg/pngj/ChunkSeqReaderPng;->setChunkLoadBehaviour(Lar/com/hjg/pngj/chunks/ChunkLoadBehaviour;)V

    return-void
.end method

.method public varargs setChunksToSkip([Ljava/lang/String;)V
    .locals 1

    .line 395
    iget-object v0, p0, Lar/com/hjg/pngj/PngReader;->chunkseq:Lar/com/hjg/pngj/ChunkSeqReaderPng;

    invoke-virtual {v0, p1}, Lar/com/hjg/pngj/ChunkSeqReaderPng;->setChunksToSkip([Ljava/lang/String;)V

    return-void
.end method

.method public setCrcCheckDisabled()V
    .locals 2

    .line 461
    iget-object v0, p0, Lar/com/hjg/pngj/PngReader;->chunkseq:Lar/com/hjg/pngj/ChunkSeqReaderPng;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lar/com/hjg/pngj/ChunkSeqReaderPng;->setCheckCrc(Z)V

    return-void
.end method

.method public setLineSetFactory(Lar/com/hjg/pngj/IImageLineSetFactory;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lar/com/hjg/pngj/IImageLineSetFactory<",
            "+",
            "Lar/com/hjg/pngj/IImageLine;",
            ">;)V"
        }
    .end annotation

    .line 322
    iput-object p1, p0, Lar/com/hjg/pngj/PngReader;->imageLineSetFactory:Lar/com/hjg/pngj/IImageLineSetFactory;

    return-void
.end method

.method public setMaxBytesMetadata(J)V
    .locals 1

    .line 379
    iget-object v0, p0, Lar/com/hjg/pngj/PngReader;->chunkseq:Lar/com/hjg/pngj/ChunkSeqReaderPng;

    invoke-virtual {v0, p1, p2}, Lar/com/hjg/pngj/ChunkSeqReaderPng;->setMaxBytesMetadata(J)V

    return-void
.end method

.method public setMaxTotalBytesRead(J)V
    .locals 1

    .line 371
    iget-object v0, p0, Lar/com/hjg/pngj/PngReader;->chunkseq:Lar/com/hjg/pngj/ChunkSeqReaderPng;

    invoke-virtual {v0, p1, p2}, Lar/com/hjg/pngj/ChunkSeqReaderPng;->setMaxTotalBytesRead(J)V

    return-void
.end method

.method public setShouldCloseStream(Z)V
    .locals 1

    .line 408
    iget-object v0, p0, Lar/com/hjg/pngj/PngReader;->streamFeeder:Lar/com/hjg/pngj/BufferedStreamFeeder;

    invoke-virtual {v0, p1}, Lar/com/hjg/pngj/BufferedStreamFeeder;->setCloseStream(Z)V

    return-void
.end method

.method public setSkipChunkMaxSize(J)V
    .locals 1

    .line 387
    iget-object v0, p0, Lar/com/hjg/pngj/PngReader;->chunkseq:Lar/com/hjg/pngj/ChunkSeqReaderPng;

    invoke-virtual {v0, p1, p2}, Lar/com/hjg/pngj/ChunkSeqReaderPng;->setSkipChunkMaxSize(J)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 520
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lar/com/hjg/pngj/PngReader;->imgInfo:Lar/com/hjg/pngj/ImageInfo;

    invoke-virtual {v1}, Lar/com/hjg/pngj/ImageInfo;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " interlaced="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lar/com/hjg/pngj/PngReader;->interlaced:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringCompact()Ljava/lang/String;
    .locals 2

    .line 528
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lar/com/hjg/pngj/PngReader;->imgInfo:Lar/com/hjg/pngj/ImageInfo;

    invoke-virtual {v1}, Lar/com/hjg/pngj/ImageInfo;->toStringBrief()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lar/com/hjg/pngj/PngReader;->interlaced:Z

    if-eqz v1, :cond_0

    const-string v1, "i"

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
