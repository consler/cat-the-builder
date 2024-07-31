.class public Lar/com/hjg/pngj/ChunkSeqReader;
.super Ljava/lang/Object;
.source "ChunkSeqReader.java"

# interfaces
.implements Lar/com/hjg/pngj/IBytesConsumer;


# static fields
.field protected static final SIGNATURE_LEN:I = 0x8


# instance fields
.field private buf0:[B

.field private buf0len:I

.field private bytesCount:J

.field private chunkCount:I

.field private curChunkReader:Lar/com/hjg/pngj/ChunkReader;

.field private curReaderDeflatedSet:Lar/com/hjg/pngj/DeflatedChunksSet;

.field private done:Z

.field private idatBytes:J

.field private signatureDone:Z

.field protected final withSignature:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 43
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lar/com/hjg/pngj/ChunkSeqReader;-><init>(Z)V

    .line 44
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 2
    .param p1, "withSignature"    # Z

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const/16 v0, 0x8

    new-array v0, v0, [B

    iput-object v0, p0, Lar/com/hjg/pngj/ChunkSeqReader;->buf0:[B

    .line 23
    const/4 v0, 0x0

    iput v0, p0, Lar/com/hjg/pngj/ChunkSeqReader;->buf0len:I

    .line 25
    iput-boolean v0, p0, Lar/com/hjg/pngj/ChunkSeqReader;->signatureDone:Z

    .line 26
    iput-boolean v0, p0, Lar/com/hjg/pngj/ChunkSeqReader;->done:Z

    .line 28
    iput v0, p0, Lar/com/hjg/pngj/ChunkSeqReader;->chunkCount:I

    .line 30
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lar/com/hjg/pngj/ChunkSeqReader;->bytesCount:J

    .line 50
    iput-boolean p1, p0, Lar/com/hjg/pngj/ChunkSeqReader;->withSignature:Z

    .line 51
    xor-int/lit8 v0, p1, 0x1

    iput-boolean v0, p0, Lar/com/hjg/pngj/ChunkSeqReader;->signatureDone:Z

    .line 52
    return-void
.end method


# virtual methods
.method protected checkSignature([B)V
    .locals 2
    .param p1, "buf"    # [B

    .line 260
    invoke-static {}, Lar/com/hjg/pngj/PngHelperInternal;->getPngIdSignature()[B

    move-result-object v0

    invoke-static {p1, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 262
    return-void

    .line 261
    :cond_0
    new-instance v0, Lar/com/hjg/pngj/PngjInputException;

    const-string v1, "Bad PNG signature"

    invoke-direct {v0, v1}, Lar/com/hjg/pngj/PngjInputException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public close()V
    .locals 1

    .line 314
    iget-object v0, p0, Lar/com/hjg/pngj/ChunkSeqReader;->curReaderDeflatedSet:Lar/com/hjg/pngj/DeflatedChunksSet;

    if-eqz v0, :cond_0

    .line 315
    invoke-virtual {v0}, Lar/com/hjg/pngj/DeflatedChunksSet;->close()V

    .line 316
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lar/com/hjg/pngj/ChunkSeqReader;->done:Z

    .line 317
    return-void
.end method

.method public consume([BII)I
    .locals 10
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "len"    # I

    .line 73
    iget-boolean v0, p0, Lar/com/hjg/pngj/ChunkSeqReader;->done:Z

    if-eqz v0, :cond_0

    .line 74
    const/4 v0, -0x1

    return v0

    .line 75
    :cond_0
    const/4 v0, 0x0

    if-nez p3, :cond_1

    .line 76
    return v0

    .line 77
    :cond_1
    if-ltz p3, :cond_9

    .line 79
    const/4 v1, 0x0

    .line 80
    .local v1, "processed":I
    iget-boolean v2, p0, Lar/com/hjg/pngj/ChunkSeqReader;->signatureDone:Z

    const/4 v3, 0x1

    const/16 v4, 0x8

    if-eqz v2, :cond_6

    .line 81
    iget-object v2, p0, Lar/com/hjg/pngj/ChunkSeqReader;->curChunkReader:Lar/com/hjg/pngj/ChunkReader;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lar/com/hjg/pngj/ChunkReader;->isDone()Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    .line 99
    :cond_2
    iget-object v0, p0, Lar/com/hjg/pngj/ChunkSeqReader;->curChunkReader:Lar/com/hjg/pngj/ChunkReader;

    invoke-virtual {v0, p1, p2, p3}, Lar/com/hjg/pngj/ChunkReader;->feedBytes([BII)I

    move-result v0

    .line 100
    .local v0, "read1":I
    add-int/2addr v1, v0

    .line 101
    iget-wide v2, p0, Lar/com/hjg/pngj/ChunkSeqReader;->bytesCount:J

    int-to-long v4, v0

    add-long/2addr v2, v4

    iput-wide v2, p0, Lar/com/hjg/pngj/ChunkSeqReader;->bytesCount:J

    .line 102
    .end local v0    # "read1":I
    goto :goto_1

    .line 82
    :cond_3
    :goto_0
    iget v2, p0, Lar/com/hjg/pngj/ChunkSeqReader;->buf0len:I

    rsub-int/lit8 v2, v2, 0x8

    .line 83
    .local v2, "read0":I
    if-le v2, p3, :cond_4

    .line 84
    move v2, p3

    .line 85
    :cond_4
    iget-object v5, p0, Lar/com/hjg/pngj/ChunkSeqReader;->buf0:[B

    iget v6, p0, Lar/com/hjg/pngj/ChunkSeqReader;->buf0len:I

    invoke-static {p1, p2, v5, v6, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 86
    iget v5, p0, Lar/com/hjg/pngj/ChunkSeqReader;->buf0len:I

    add-int/2addr v5, v2

    iput v5, p0, Lar/com/hjg/pngj/ChunkSeqReader;->buf0len:I

    .line 87
    add-int/2addr v1, v2

    .line 88
    iget-wide v6, p0, Lar/com/hjg/pngj/ChunkSeqReader;->bytesCount:J

    int-to-long v8, v2

    add-long/2addr v6, v8

    iput-wide v6, p0, Lar/com/hjg/pngj/ChunkSeqReader;->bytesCount:J

    .line 89
    sub-int/2addr p3, v2

    .line 90
    add-int/2addr p2, v2

    .line 91
    if-ne v5, v4, :cond_5

    .line 92
    iget v4, p0, Lar/com/hjg/pngj/ChunkSeqReader;->chunkCount:I

    add-int/2addr v4, v3

    iput v4, p0, Lar/com/hjg/pngj/ChunkSeqReader;->chunkCount:I

    .line 93
    iget-object v3, p0, Lar/com/hjg/pngj/ChunkSeqReader;->buf0:[B

    invoke-static {v3, v0}, Lar/com/hjg/pngj/PngHelperInternal;->readInt4fromBytes([BI)I

    move-result v3

    .line 94
    .local v3, "clen":I
    iget-object v4, p0, Lar/com/hjg/pngj/ChunkSeqReader;->buf0:[B

    const/4 v5, 0x4

    invoke-static {v4, v5, v5}, Lar/com/hjg/pngj/chunks/ChunkHelper;->toString([BII)Ljava/lang/String;

    move-result-object v4

    .line 95
    .local v4, "cid":Ljava/lang/String;
    iget-wide v5, p0, Lar/com/hjg/pngj/ChunkSeqReader;->bytesCount:J

    const-wide/16 v7, 0x8

    sub-long/2addr v5, v7

    invoke-virtual {p0, v3, v4, v5, v6}, Lar/com/hjg/pngj/ChunkSeqReader;->startNewChunk(ILjava/lang/String;J)V

    .line 96
    iput v0, p0, Lar/com/hjg/pngj/ChunkSeqReader;->buf0len:I

    .line 98
    .end local v2    # "read0":I
    .end local v3    # "clen":I
    .end local v4    # "cid":Ljava/lang/String;
    :cond_5
    goto :goto_1

    .line 104
    :cond_6
    iget v2, p0, Lar/com/hjg/pngj/ChunkSeqReader;->buf0len:I

    rsub-int/lit8 v2, v2, 0x8

    .line 105
    .local v2, "read":I
    if-le v2, p3, :cond_7

    .line 106
    move v2, p3

    .line 107
    :cond_7
    iget-object v5, p0, Lar/com/hjg/pngj/ChunkSeqReader;->buf0:[B

    iget v6, p0, Lar/com/hjg/pngj/ChunkSeqReader;->buf0len:I

    invoke-static {p1, p2, v5, v6, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 108
    iget v5, p0, Lar/com/hjg/pngj/ChunkSeqReader;->buf0len:I

    add-int/2addr v5, v2

    iput v5, p0, Lar/com/hjg/pngj/ChunkSeqReader;->buf0len:I

    .line 109
    if-ne v5, v4, :cond_8

    .line 110
    iget-object v4, p0, Lar/com/hjg/pngj/ChunkSeqReader;->buf0:[B

    invoke-virtual {p0, v4}, Lar/com/hjg/pngj/ChunkSeqReader;->checkSignature([B)V

    .line 111
    iput v0, p0, Lar/com/hjg/pngj/ChunkSeqReader;->buf0len:I

    .line 112
    iput-boolean v3, p0, Lar/com/hjg/pngj/ChunkSeqReader;->signatureDone:Z

    .line 114
    :cond_8
    add-int/2addr v1, v2

    .line 115
    iget-wide v3, p0, Lar/com/hjg/pngj/ChunkSeqReader;->bytesCount:J

    int-to-long v5, v2

    add-long/2addr v3, v5

    iput-wide v3, p0, Lar/com/hjg/pngj/ChunkSeqReader;->bytesCount:J

    .line 117
    .end local v2    # "read":I
    :goto_1
    return v1

    .line 78
    .end local v1    # "processed":I
    :cond_9
    new-instance v0, Lar/com/hjg/pngj/PngjInputException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad len: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lar/com/hjg/pngj/PngjInputException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected createChunkReaderForNewChunk(Ljava/lang/String;IJZ)Lar/com/hjg/pngj/ChunkReader;
    .locals 8
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "len"    # I
    .param p3, "offset"    # J
    .param p5, "skip"    # Z

    .line 190
    new-instance v7, Lar/com/hjg/pngj/ChunkSeqReader$2;

    if-eqz p5, :cond_0

    sget-object v0, Lar/com/hjg/pngj/ChunkReader$ChunkReaderMode;->SKIP:Lar/com/hjg/pngj/ChunkReader$ChunkReaderMode;

    goto :goto_0

    :cond_0
    sget-object v0, Lar/com/hjg/pngj/ChunkReader$ChunkReaderMode;->BUFFER:Lar/com/hjg/pngj/ChunkReader$ChunkReaderMode;

    :goto_0
    move-object v6, v0

    move-object v0, v7

    move-object v1, p0

    move v2, p2

    move-object v3, p1

    move-wide v4, p3

    invoke-direct/range {v0 .. v6}, Lar/com/hjg/pngj/ChunkSeqReader$2;-><init>(Lar/com/hjg/pngj/ChunkSeqReader;ILjava/lang/String;JLar/com/hjg/pngj/ChunkReader$ChunkReaderMode;)V

    return-object v7
.end method

.method protected createIdatSet(Ljava/lang/String;)Lar/com/hjg/pngj/DeflatedChunksSet;
    .locals 2
    .param p1, "id"    # Ljava/lang/String;

    .line 225
    new-instance v0, Lar/com/hjg/pngj/DeflatedChunksSet;

    const/16 v1, 0x400

    invoke-direct {v0, p1, v1, v1}, Lar/com/hjg/pngj/DeflatedChunksSet;-><init>(Ljava/lang/String;II)V

    return-object v0
.end method

.method protected endChunkId()Ljava/lang/String;
    .locals 1

    .line 351
    const-string v0, "IEND"

    return-object v0
.end method

.method public feedAll([BII)Z
    .locals 2
    .param p1, "buf"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I

    .line 128
    :goto_0
    const/4 v0, 0x1

    if-lez p3, :cond_1

    .line 129
    invoke-virtual {p0, p1, p2, p3}, Lar/com/hjg/pngj/ChunkSeqReader;->consume([BII)I

    move-result v1

    .line 130
    .local v1, "n":I
    if-ge v1, v0, :cond_0

    .line 131
    const/4 v0, 0x0

    return v0

    .line 132
    :cond_0
    sub-int/2addr p3, v1

    .line 133
    add-int/2addr p2, v1

    .line 134
    .end local v1    # "n":I
    goto :goto_0

    .line 135
    :cond_1
    return v0
.end method

.method public feedFromFile(Ljava/io/File;)V
    .locals 3
    .param p1, "f"    # Ljava/io/File;

    .line 359
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lar/com/hjg/pngj/ChunkSeqReader;->feedFromInputStream(Ljava/io/InputStream;Z)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 362
    nop

    .line 363
    return-void

    .line 360
    :catch_0
    move-exception v0

    .line 361
    .local v0, "e":Ljava/io/FileNotFoundException;
    new-instance v1, Lar/com/hjg/pngj/PngjInputException;

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lar/com/hjg/pngj/PngjInputException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public feedFromInputStream(Ljava/io/InputStream;)V
    .locals 1
    .param p1, "is"    # Ljava/io/InputStream;

    .line 384
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lar/com/hjg/pngj/ChunkSeqReader;->feedFromInputStream(Ljava/io/InputStream;Z)V

    .line 385
    return-void
.end method

.method public feedFromInputStream(Ljava/io/InputStream;Z)V
    .locals 2
    .param p1, "is"    # Ljava/io/InputStream;
    .param p2, "closeStream"    # Z

    .line 372
    new-instance v0, Lar/com/hjg/pngj/BufferedStreamFeeder;

    invoke-direct {v0, p1}, Lar/com/hjg/pngj/BufferedStreamFeeder;-><init>(Ljava/io/InputStream;)V

    .line 373
    .local v0, "sf":Lar/com/hjg/pngj/BufferedStreamFeeder;
    invoke-virtual {v0, p2}, Lar/com/hjg/pngj/BufferedStreamFeeder;->setCloseStream(Z)V

    .line 375
    :goto_0
    :try_start_0
    invoke-virtual {v0}, Lar/com/hjg/pngj/BufferedStreamFeeder;->hasMoreToFeed()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 376
    invoke-virtual {v0, p0}, Lar/com/hjg/pngj/BufferedStreamFeeder;->feed(Lar/com/hjg/pngj/IBytesConsumer;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 378
    :cond_0
    invoke-virtual {p0}, Lar/com/hjg/pngj/ChunkSeqReader;->close()V

    .line 379
    invoke-virtual {v0}, Lar/com/hjg/pngj/BufferedStreamFeeder;->close()V

    .line 380
    nop

    .line 381
    return-void

    .line 378
    :catchall_0
    move-exception v1

    invoke-virtual {p0}, Lar/com/hjg/pngj/ChunkSeqReader;->close()V

    .line 379
    invoke-virtual {v0}, Lar/com/hjg/pngj/BufferedStreamFeeder;->close()V

    throw v1
.end method

.method protected firstChunkId()Ljava/lang/String;
    .locals 1

    .line 333
    const-string v0, "IHDR"

    return-object v0
.end method

.method public getBytesCount()J
    .locals 2

    .line 284
    iget-wide v0, p0, Lar/com/hjg/pngj/ChunkSeqReader;->bytesCount:J

    return-wide v0
.end method

.method public getChunkCount()I
    .locals 1

    .line 291
    iget v0, p0, Lar/com/hjg/pngj/ChunkSeqReader;->chunkCount:I

    return v0
.end method

.method public getCurChunkReader()Lar/com/hjg/pngj/ChunkReader;
    .locals 1

    .line 300
    iget-object v0, p0, Lar/com/hjg/pngj/ChunkSeqReader;->curChunkReader:Lar/com/hjg/pngj/ChunkReader;

    return-object v0
.end method

.method public getCurReaderDeflatedSet()Lar/com/hjg/pngj/DeflatedChunksSet;
    .locals 1

    .line 307
    iget-object v0, p0, Lar/com/hjg/pngj/ChunkSeqReader;->curReaderDeflatedSet:Lar/com/hjg/pngj/DeflatedChunksSet;

    return-object v0
.end method

.method public getIdatBytes()J
    .locals 2

    .line 342
    iget-wide v0, p0, Lar/com/hjg/pngj/ChunkSeqReader;->idatBytes:J

    return-wide v0
.end method

.method public isAtChunkBoundary()Z
    .locals 4

    .line 323
    iget-wide v0, p0, Lar/com/hjg/pngj/ChunkSeqReader;->bytesCount:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_1

    const-wide/16 v2, 0x8

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lar/com/hjg/pngj/ChunkSeqReader;->done:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lar/com/hjg/pngj/ChunkSeqReader;->curChunkReader:Lar/com/hjg/pngj/ChunkReader;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lar/com/hjg/pngj/ChunkReader;->isDone()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isDone()Z
    .locals 1

    .line 277
    iget-boolean v0, p0, Lar/com/hjg/pngj/ChunkSeqReader;->done:Z

    return v0
.end method

.method protected isIdatKind(Ljava/lang/String;)Z
    .locals 1
    .param p1, "id"    # Ljava/lang/String;

    .line 237
    const/4 v0, 0x0

    return v0
.end method

.method public isSignatureDone()Z
    .locals 1

    .line 270
    iget-boolean v0, p0, Lar/com/hjg/pngj/ChunkSeqReader;->signatureDone:Z

    return v0
.end method

.method protected postProcessChunk(Lar/com/hjg/pngj/ChunkReader;)V
    .locals 4
    .param p1, "chunkR"    # Lar/com/hjg/pngj/ChunkReader;

    .line 211
    iget v0, p0, Lar/com/hjg/pngj/ChunkSeqReader;->chunkCount:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 212
    invoke-virtual {p0}, Lar/com/hjg/pngj/ChunkSeqReader;->firstChunkId()Ljava/lang/String;

    move-result-object v0

    .line 213
    .local v0, "cid":Ljava/lang/String;
    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lar/com/hjg/pngj/ChunkReader;->getChunkRaw()Lar/com/hjg/pngj/chunks/ChunkRaw;

    move-result-object v2

    iget-object v2, v2, Lar/com/hjg/pngj/chunks/ChunkRaw;->id:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 214
    :cond_0
    new-instance v1, Lar/com/hjg/pngj/PngjInputException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bad first chunk: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lar/com/hjg/pngj/ChunkReader;->getChunkRaw()Lar/com/hjg/pngj/chunks/ChunkRaw;

    move-result-object v3

    iget-object v3, v3, Lar/com/hjg/pngj/chunks/ChunkRaw;->id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " expected: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lar/com/hjg/pngj/ChunkSeqReader;->firstChunkId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lar/com/hjg/pngj/PngjInputException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 217
    .end local v0    # "cid":Ljava/lang/String;
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lar/com/hjg/pngj/ChunkReader;->getChunkRaw()Lar/com/hjg/pngj/chunks/ChunkRaw;

    move-result-object v0

    iget-object v0, v0, Lar/com/hjg/pngj/chunks/ChunkRaw;->id:Ljava/lang/String;

    invoke-virtual {p0}, Lar/com/hjg/pngj/ChunkSeqReader;->endChunkId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 218
    iput-boolean v1, p0, Lar/com/hjg/pngj/ChunkSeqReader;->done:Z

    .line 219
    :cond_2
    return-void
.end method

.method protected shouldCheckCrc(ILjava/lang/String;)Z
    .locals 1
    .param p1, "len"    # I
    .param p2, "id"    # Ljava/lang/String;

    .line 251
    const/4 v0, 0x1

    return v0
.end method

.method protected shouldSkipContent(ILjava/lang/String;)Z
    .locals 1
    .param p1, "len"    # I
    .param p2, "id"    # Ljava/lang/String;

    .line 247
    const/4 v0, 0x0

    return v0
.end method

.method protected startNewChunk(ILjava/lang/String;J)V
    .locals 16
    .param p1, "len"    # I
    .param p2, "id"    # Ljava/lang/String;
    .param p3, "offset"    # J

    .line 150
    move-object/from16 v8, p0

    move-object/from16 v9, p2

    const-string v0, "IDAT"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 151
    iget-wide v0, v8, Lar/com/hjg/pngj/ChunkSeqReader;->idatBytes:J

    move/from16 v10, p1

    int-to-long v2, v10

    add-long/2addr v0, v2

    iput-wide v0, v8, Lar/com/hjg/pngj/ChunkSeqReader;->idatBytes:J

    goto :goto_0

    .line 150
    :cond_0
    move/from16 v10, p1

    .line 152
    :goto_0
    invoke-virtual/range {p0 .. p2}, Lar/com/hjg/pngj/ChunkSeqReader;->shouldCheckCrc(ILjava/lang/String;)Z

    move-result v11

    .line 153
    .local v11, "checkCrc":Z
    invoke-virtual/range {p0 .. p2}, Lar/com/hjg/pngj/ChunkSeqReader;->shouldSkipContent(ILjava/lang/String;)Z

    move-result v12

    .line 154
    .local v12, "skip":Z
    invoke-virtual {v8, v9}, Lar/com/hjg/pngj/ChunkSeqReader;->isIdatKind(Ljava/lang/String;)Z

    move-result v13

    .line 156
    .local v13, "isIdatType":Z
    const/4 v0, 0x0

    .line 157
    .local v0, "forCurrentIdatSet":Z
    iget-object v1, v8, Lar/com/hjg/pngj/ChunkSeqReader;->curReaderDeflatedSet:Lar/com/hjg/pngj/DeflatedChunksSet;

    if-eqz v1, :cond_1

    .line 158
    invoke-virtual {v1, v9}, Lar/com/hjg/pngj/DeflatedChunksSet;->ackNextChunkId(Ljava/lang/String;)Z

    move-result v0

    move v14, v0

    goto :goto_1

    .line 157
    :cond_1
    move v14, v0

    .line 159
    .end local v0    # "forCurrentIdatSet":Z
    .local v14, "forCurrentIdatSet":Z
    :goto_1
    if-eqz v13, :cond_4

    if-nez v12, :cond_4

    .line 160
    if-nez v14, :cond_3

    .line 161
    iget-object v0, v8, Lar/com/hjg/pngj/ChunkSeqReader;->curReaderDeflatedSet:Lar/com/hjg/pngj/DeflatedChunksSet;

    if-nez v0, :cond_2

    .line 163
    invoke-virtual {v8, v9}, Lar/com/hjg/pngj/ChunkSeqReader;->createIdatSet(Ljava/lang/String;)Lar/com/hjg/pngj/DeflatedChunksSet;

    move-result-object v0

    iput-object v0, v8, Lar/com/hjg/pngj/ChunkSeqReader;->curReaderDeflatedSet:Lar/com/hjg/pngj/DeflatedChunksSet;

    goto :goto_2

    .line 162
    :cond_2
    new-instance v0, Lar/com/hjg/pngj/PngjInputException;

    const-string/jumbo v1, "too many IDAT (or idatlike) chunks"

    invoke-direct {v0, v1}, Lar/com/hjg/pngj/PngjInputException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 165
    :cond_3
    :goto_2
    new-instance v15, Lar/com/hjg/pngj/ChunkSeqReader$1;

    iget-object v7, v8, Lar/com/hjg/pngj/ChunkSeqReader;->curReaderDeflatedSet:Lar/com/hjg/pngj/DeflatedChunksSet;

    move-object v0, v15

    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v3, p2

    move v4, v11

    move-wide/from16 v5, p3

    invoke-direct/range {v0 .. v7}, Lar/com/hjg/pngj/ChunkSeqReader$1;-><init>(Lar/com/hjg/pngj/ChunkSeqReader;ILjava/lang/String;ZJLar/com/hjg/pngj/DeflatedChunksSet;)V

    iput-object v15, v8, Lar/com/hjg/pngj/ChunkSeqReader;->curChunkReader:Lar/com/hjg/pngj/ChunkReader;

    goto :goto_3

    .line 172
    :cond_4
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p1

    move-wide/from16 v3, p3

    move v5, v12

    invoke-virtual/range {v0 .. v5}, Lar/com/hjg/pngj/ChunkSeqReader;->createChunkReaderForNewChunk(Ljava/lang/String;IJZ)Lar/com/hjg/pngj/ChunkReader;

    move-result-object v0

    iput-object v0, v8, Lar/com/hjg/pngj/ChunkSeqReader;->curChunkReader:Lar/com/hjg/pngj/ChunkReader;

    .line 173
    if-nez v11, :cond_5

    .line 174
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lar/com/hjg/pngj/ChunkReader;->setCrcCheck(Z)V

    .line 176
    :cond_5
    :goto_3
    return-void
.end method
