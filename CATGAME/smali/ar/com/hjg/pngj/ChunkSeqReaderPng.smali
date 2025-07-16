.class public Lar/com/hjg/pngj/ChunkSeqReaderPng;
.super Lar/com/hjg/pngj/ChunkSeqReader;
.source "ChunkSeqReaderPng.java"


# instance fields
.field private bytesChunksLoaded:J

.field protected final callbackMode:Z

.field private checkCrc:Z

.field private chunkFactory:Lar/com/hjg/pngj/IChunkFactory;

.field private chunkLoadBehaviour:Lar/com/hjg/pngj/chunks/ChunkLoadBehaviour;

.field protected chunksList:Lar/com/hjg/pngj/chunks/ChunksList;

.field private chunksToSkip:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected currentChunkGroup:I

.field protected deinterlacer:Lar/com/hjg/pngj/Deinterlacer;

.field protected imageInfo:Lar/com/hjg/pngj/ImageInfo;

.field private includeNonBufferedChunks:Z

.field private maxBytesMetadata:J

.field private maxTotalBytesRead:J

.field private skipChunkMaxSize:J


# direct methods
.method public constructor <init>(Z)V
    .locals 3

    .line 50
    invoke-direct {p0}, Lar/com/hjg/pngj/ChunkSeqReader;-><init>()V

    const/4 v0, -0x1

    .line 28
    iput v0, p0, Lar/com/hjg/pngj/ChunkSeqReaderPng;->currentChunkGroup:I

    const/4 v0, 0x0

    .line 33
    iput-object v0, p0, Lar/com/hjg/pngj/ChunkSeqReaderPng;->chunksList:Lar/com/hjg/pngj/chunks/ChunksList;

    const-wide/16 v0, 0x0

    .line 35
    iput-wide v0, p0, Lar/com/hjg/pngj/ChunkSeqReaderPng;->bytesChunksLoaded:J

    const/4 v2, 0x1

    .line 37
    iput-boolean v2, p0, Lar/com/hjg/pngj/ChunkSeqReaderPng;->checkCrc:Z

    const/4 v2, 0x0

    .line 40
    iput-boolean v2, p0, Lar/com/hjg/pngj/ChunkSeqReaderPng;->includeNonBufferedChunks:Z

    .line 42
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lar/com/hjg/pngj/ChunkSeqReaderPng;->chunksToSkip:Ljava/util/Set;

    .line 43
    iput-wide v0, p0, Lar/com/hjg/pngj/ChunkSeqReaderPng;->maxTotalBytesRead:J

    .line 44
    iput-wide v0, p0, Lar/com/hjg/pngj/ChunkSeqReaderPng;->skipChunkMaxSize:J

    .line 45
    iput-wide v0, p0, Lar/com/hjg/pngj/ChunkSeqReaderPng;->maxBytesMetadata:J

    .line 47
    sget-object v0, Lar/com/hjg/pngj/chunks/ChunkLoadBehaviour;->LOAD_CHUNK_ALWAYS:Lar/com/hjg/pngj/chunks/ChunkLoadBehaviour;

    iput-object v0, p0, Lar/com/hjg/pngj/ChunkSeqReaderPng;->chunkLoadBehaviour:Lar/com/hjg/pngj/chunks/ChunkLoadBehaviour;

    .line 51
    iput-boolean p1, p0, Lar/com/hjg/pngj/ChunkSeqReaderPng;->callbackMode:Z

    .line 52
    new-instance p1, Lar/com/hjg/pngj/chunks/ChunkFactory;

    invoke-direct {p1}, Lar/com/hjg/pngj/chunks/ChunkFactory;-><init>()V

    iput-object p1, p0, Lar/com/hjg/pngj/ChunkSeqReaderPng;->chunkFactory:Lar/com/hjg/pngj/IChunkFactory;

    return-void
.end method

.method private updateAndCheckChunkGroup(Ljava/lang/String;)V
    .locals 4

    const-string v0, "IHDR"

    .line 56
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "unexpected chunk "

    if-eqz v0, :cond_1

    .line 57
    iget v0, p0, Lar/com/hjg/pngj/ChunkSeqReaderPng;->currentChunkGroup:I

    if-gez v0, :cond_0

    const/4 p1, 0x0

    .line 58
    iput p1, p0, Lar/com/hjg/pngj/ChunkSeqReaderPng;->currentChunkGroup:I

    goto/16 :goto_1

    .line 60
    :cond_0
    new-instance v0, Lar/com/hjg/pngj/PngjInputException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lar/com/hjg/pngj/PngjInputException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const-string v0, "PLTE"

    .line 61
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_4

    .line 62
    iget v0, p0, Lar/com/hjg/pngj/ChunkSeqReaderPng;->currentChunkGroup:I

    if-eqz v0, :cond_3

    if-ne v0, v2, :cond_2

    goto :goto_0

    .line 65
    :cond_2
    new-instance v0, Lar/com/hjg/pngj/PngjInputException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lar/com/hjg/pngj/PngjInputException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    :goto_0
    const/4 p1, 0x2

    .line 63
    iput p1, p0, Lar/com/hjg/pngj/ChunkSeqReaderPng;->currentChunkGroup:I

    goto :goto_1

    :cond_4
    const-string v0, "IDAT"

    .line 66
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v3, 0x4

    if-eqz v0, :cond_6

    .line 67
    iget v0, p0, Lar/com/hjg/pngj/ChunkSeqReaderPng;->currentChunkGroup:I

    if-ltz v0, :cond_5

    if-gt v0, v3, :cond_5

    .line 68
    iput v3, p0, Lar/com/hjg/pngj/ChunkSeqReaderPng;->currentChunkGroup:I

    goto :goto_1

    .line 70
    :cond_5
    new-instance v0, Lar/com/hjg/pngj/PngjInputException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lar/com/hjg/pngj/PngjInputException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    const-string v0, "IEND"

    .line 71
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 72
    iget v0, p0, Lar/com/hjg/pngj/ChunkSeqReaderPng;->currentChunkGroup:I

    if-lt v0, v3, :cond_7

    const/4 p1, 0x6

    .line 73
    iput p1, p0, Lar/com/hjg/pngj/ChunkSeqReaderPng;->currentChunkGroup:I

    goto :goto_1

    .line 75
    :cond_7
    new-instance v0, Lar/com/hjg/pngj/PngjInputException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lar/com/hjg/pngj/PngjInputException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 77
    :cond_8
    iget p1, p0, Lar/com/hjg/pngj/ChunkSeqReaderPng;->currentChunkGroup:I

    if-gt p1, v2, :cond_9

    .line 78
    iput v2, p0, Lar/com/hjg/pngj/ChunkSeqReaderPng;->currentChunkGroup:I

    goto :goto_1

    :cond_9
    const/4 v0, 0x3

    if-gt p1, v0, :cond_a

    .line 80
    iput v0, p0, Lar/com/hjg/pngj/ChunkSeqReaderPng;->currentChunkGroup:I

    goto :goto_1

    :cond_a
    const/4 p1, 0x5

    .line 82
    iput p1, p0, Lar/com/hjg/pngj/ChunkSeqReaderPng;->currentChunkGroup:I

    :goto_1
    return-void
.end method


# virtual methods
.method public addChunkToSkip(Ljava/lang/String;)V
    .locals 1

    .line 129
    iget-object v0, p0, Lar/com/hjg/pngj/ChunkSeqReaderPng;->chunksToSkip:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public close()V
    .locals 2

    .line 225
    iget v0, p0, Lar/com/hjg/pngj/ChunkSeqReaderPng;->currentChunkGroup:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    .line 226
    iput v1, p0, Lar/com/hjg/pngj/ChunkSeqReaderPng;->currentChunkGroup:I

    .line 227
    :cond_0
    invoke-super {p0}, Lar/com/hjg/pngj/ChunkSeqReader;->close()V

    return-void
.end method

.method public consume([BII)I
    .locals 0

    .line 185
    invoke-super {p0, p1, p2, p3}, Lar/com/hjg/pngj/ChunkSeqReader;->consume([BII)I

    move-result p1

    return p1
.end method

.method protected createIdatSet(Ljava/lang/String;)Lar/com/hjg/pngj/DeflatedChunksSet;
    .locals 3

    .line 168
    new-instance v0, Lar/com/hjg/pngj/IdatSet;

    iget-object v1, p0, Lar/com/hjg/pngj/ChunkSeqReaderPng;->imageInfo:Lar/com/hjg/pngj/ImageInfo;

    iget-object v2, p0, Lar/com/hjg/pngj/ChunkSeqReaderPng;->deinterlacer:Lar/com/hjg/pngj/Deinterlacer;

    invoke-direct {v0, p1, v1, v2}, Lar/com/hjg/pngj/IdatSet;-><init>(Ljava/lang/String;Lar/com/hjg/pngj/ImageInfo;Lar/com/hjg/pngj/Deinterlacer;)V

    .line 169
    iget-boolean p1, p0, Lar/com/hjg/pngj/ChunkSeqReaderPng;->callbackMode:Z

    invoke-virtual {v0, p1}, Lar/com/hjg/pngj/IdatSet;->setCallbackMode(Z)V

    return-object v0
.end method

.method public firstChunksNotYetRead()Z
    .locals 2

    .line 133
    invoke-virtual {p0}, Lar/com/hjg/pngj/ChunkSeqReaderPng;->getCurrentChunkGroup()I

    move-result v0

    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getBytesChunksLoaded()J
    .locals 2

    .line 115
    iget-wide v0, p0, Lar/com/hjg/pngj/ChunkSeqReaderPng;->bytesChunksLoaded:J

    return-wide v0
.end method

.method public getChunks()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lar/com/hjg/pngj/chunks/PngChunk;",
            ">;"
        }
    .end annotation

    .line 231
    iget-object v0, p0, Lar/com/hjg/pngj/ChunkSeqReaderPng;->chunksList:Lar/com/hjg/pngj/chunks/ChunksList;

    invoke-virtual {v0}, Lar/com/hjg/pngj/chunks/ChunksList;->getChunks()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getChunksToSkip()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 276
    iget-object v0, p0, Lar/com/hjg/pngj/ChunkSeqReaderPng;->chunksToSkip:Ljava/util/Set;

    return-object v0
.end method

.method public getCurrentChunkGroup()I
    .locals 1

    .line 119
    iget v0, p0, Lar/com/hjg/pngj/ChunkSeqReaderPng;->currentChunkGroup:I

    return v0
.end method

.method public getDeinterlacer()Lar/com/hjg/pngj/Deinterlacer;
    .locals 1

    .line 214
    iget-object v0, p0, Lar/com/hjg/pngj/ChunkSeqReaderPng;->deinterlacer:Lar/com/hjg/pngj/Deinterlacer;

    return-object v0
.end method

.method public getIdatSet()Lar/com/hjg/pngj/IdatSet;
    .locals 2

    .line 174
    invoke-virtual {p0}, Lar/com/hjg/pngj/ChunkSeqReaderPng;->getCurReaderDeflatedSet()Lar/com/hjg/pngj/DeflatedChunksSet;

    move-result-object v0

    .line 175
    instance-of v1, v0, Lar/com/hjg/pngj/IdatSet;

    if-eqz v1, :cond_0

    check-cast v0, Lar/com/hjg/pngj/IdatSet;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getImageInfo()Lar/com/hjg/pngj/ImageInfo;
    .locals 1

    .line 206
    iget-object v0, p0, Lar/com/hjg/pngj/ChunkSeqReaderPng;->imageInfo:Lar/com/hjg/pngj/ImageInfo;

    return-object v0
.end method

.method public getMaxBytesMetadata()J
    .locals 2

    .line 247
    iget-wide v0, p0, Lar/com/hjg/pngj/ChunkSeqReaderPng;->maxBytesMetadata:J

    return-wide v0
.end method

.method public getMaxTotalBytesRead()J
    .locals 2

    .line 255
    iget-wide v0, p0, Lar/com/hjg/pngj/ChunkSeqReaderPng;->maxTotalBytesRead:J

    return-wide v0
.end method

.method public getSkipChunkMaxSize()J
    .locals 2

    .line 239
    iget-wide v0, p0, Lar/com/hjg/pngj/ChunkSeqReaderPng;->skipChunkMaxSize:J

    return-wide v0
.end method

.method public isCallbackMode()Z
    .locals 1

    .line 272
    iget-boolean v0, p0, Lar/com/hjg/pngj/ChunkSeqReaderPng;->callbackMode:Z

    return v0
.end method

.method public isCheckCrc()Z
    .locals 1

    .line 264
    iget-boolean v0, p0, Lar/com/hjg/pngj/ChunkSeqReaderPng;->checkCrc:Z

    return v0
.end method

.method protected isIdatKind(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "IDAT"

    .line 180
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public isInterlaced()Z
    .locals 1

    .line 210
    iget-object v0, p0, Lar/com/hjg/pngj/ChunkSeqReaderPng;->deinterlacer:Lar/com/hjg/pngj/Deinterlacer;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected postProcessChunk(Lar/com/hjg/pngj/ChunkReader;)V
    .locals 2

    .line 138
    invoke-super {p0, p1}, Lar/com/hjg/pngj/ChunkSeqReader;->postProcessChunk(Lar/com/hjg/pngj/ChunkReader;)V

    .line 139
    invoke-virtual {p1}, Lar/com/hjg/pngj/ChunkReader;->getChunkRaw()Lar/com/hjg/pngj/chunks/ChunkRaw;

    move-result-object v0

    iget-object v0, v0, Lar/com/hjg/pngj/chunks/ChunkRaw;->id:Ljava/lang/String;

    const-string v1, "IHDR"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 140
    new-instance v0, Lar/com/hjg/pngj/chunks/PngChunkIHDR;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lar/com/hjg/pngj/chunks/PngChunkIHDR;-><init>(Lar/com/hjg/pngj/ImageInfo;)V

    .line 141
    invoke-virtual {p1}, Lar/com/hjg/pngj/ChunkReader;->getChunkRaw()Lar/com/hjg/pngj/chunks/ChunkRaw;

    move-result-object v1

    invoke-virtual {v0, v1}, Lar/com/hjg/pngj/chunks/PngChunkIHDR;->parseFromRaw(Lar/com/hjg/pngj/chunks/ChunkRaw;)V

    .line 142
    invoke-virtual {v0}, Lar/com/hjg/pngj/chunks/PngChunkIHDR;->createImageInfo()Lar/com/hjg/pngj/ImageInfo;

    move-result-object v1

    iput-object v1, p0, Lar/com/hjg/pngj/ChunkSeqReaderPng;->imageInfo:Lar/com/hjg/pngj/ImageInfo;

    .line 143
    invoke-virtual {v0}, Lar/com/hjg/pngj/chunks/PngChunkIHDR;->isInterlaced()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 144
    new-instance v0, Lar/com/hjg/pngj/Deinterlacer;

    iget-object v1, p0, Lar/com/hjg/pngj/ChunkSeqReaderPng;->imageInfo:Lar/com/hjg/pngj/ImageInfo;

    invoke-direct {v0, v1}, Lar/com/hjg/pngj/Deinterlacer;-><init>(Lar/com/hjg/pngj/ImageInfo;)V

    iput-object v0, p0, Lar/com/hjg/pngj/ChunkSeqReaderPng;->deinterlacer:Lar/com/hjg/pngj/Deinterlacer;

    .line 145
    :cond_0
    new-instance v0, Lar/com/hjg/pngj/chunks/ChunksList;

    iget-object v1, p0, Lar/com/hjg/pngj/ChunkSeqReaderPng;->imageInfo:Lar/com/hjg/pngj/ImageInfo;

    invoke-direct {v0, v1}, Lar/com/hjg/pngj/chunks/ChunksList;-><init>(Lar/com/hjg/pngj/ImageInfo;)V

    iput-object v0, p0, Lar/com/hjg/pngj/ChunkSeqReaderPng;->chunksList:Lar/com/hjg/pngj/chunks/ChunksList;

    .line 147
    :cond_1
    iget-object v0, p1, Lar/com/hjg/pngj/ChunkReader;->mode:Lar/com/hjg/pngj/ChunkReader$ChunkReaderMode;

    sget-object v1, Lar/com/hjg/pngj/ChunkReader$ChunkReaderMode;->BUFFER:Lar/com/hjg/pngj/ChunkReader$ChunkReaderMode;

    if-eq v0, v1, :cond_2

    iget-boolean v0, p0, Lar/com/hjg/pngj/ChunkSeqReaderPng;->includeNonBufferedChunks:Z

    if-eqz v0, :cond_3

    .line 148
    :cond_2
    iget-object v0, p0, Lar/com/hjg/pngj/ChunkSeqReaderPng;->chunkFactory:Lar/com/hjg/pngj/IChunkFactory;

    invoke-virtual {p1}, Lar/com/hjg/pngj/ChunkReader;->getChunkRaw()Lar/com/hjg/pngj/chunks/ChunkRaw;

    move-result-object p1

    invoke-virtual {p0}, Lar/com/hjg/pngj/ChunkSeqReaderPng;->getImageInfo()Lar/com/hjg/pngj/ImageInfo;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lar/com/hjg/pngj/IChunkFactory;->createChunk(Lar/com/hjg/pngj/chunks/ChunkRaw;Lar/com/hjg/pngj/ImageInfo;)Lar/com/hjg/pngj/chunks/PngChunk;

    move-result-object p1

    .line 149
    iget-object v0, p0, Lar/com/hjg/pngj/ChunkSeqReaderPng;->chunksList:Lar/com/hjg/pngj/chunks/ChunksList;

    iget v1, p0, Lar/com/hjg/pngj/ChunkSeqReaderPng;->currentChunkGroup:I

    invoke-virtual {v0, p1, v1}, Lar/com/hjg/pngj/chunks/ChunksList;->appendReadChunk(Lar/com/hjg/pngj/chunks/PngChunk;I)V

    .line 151
    :cond_3
    invoke-virtual {p0}, Lar/com/hjg/pngj/ChunkSeqReaderPng;->isDone()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 152
    invoke-virtual {p0}, Lar/com/hjg/pngj/ChunkSeqReaderPng;->processEndPng()V

    :cond_4
    return-void
.end method

.method protected processEndPng()V
    .locals 0

    return-void
.end method

.method public setCheckCrc(Z)V
    .locals 0

    .line 268
    iput-boolean p1, p0, Lar/com/hjg/pngj/ChunkSeqReaderPng;->checkCrc:Z

    return-void
.end method

.method public setChunkFactory(Lar/com/hjg/pngj/IChunkFactory;)V
    .locals 0

    .line 195
    iput-object p1, p0, Lar/com/hjg/pngj/ChunkSeqReaderPng;->chunkFactory:Lar/com/hjg/pngj/IChunkFactory;

    return-void
.end method

.method public setChunkLoadBehaviour(Lar/com/hjg/pngj/chunks/ChunkLoadBehaviour;)V
    .locals 0

    .line 280
    iput-object p1, p0, Lar/com/hjg/pngj/ChunkSeqReaderPng;->chunkLoadBehaviour:Lar/com/hjg/pngj/chunks/ChunkLoadBehaviour;

    return-void
.end method

.method public varargs setChunksToSkip([Ljava/lang/String;)V
    .locals 4

    .line 123
    iget-object v0, p0, Lar/com/hjg/pngj/ChunkSeqReaderPng;->chunksToSkip:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 124
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 125
    iget-object v3, p0, Lar/com/hjg/pngj/ChunkSeqReaderPng;->chunksToSkip:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setIncludeNonBufferedChunks(Z)V
    .locals 0

    .line 294
    iput-boolean p1, p0, Lar/com/hjg/pngj/ChunkSeqReaderPng;->includeNonBufferedChunks:Z

    return-void
.end method

.method public setMaxBytesMetadata(J)V
    .locals 0

    .line 251
    iput-wide p1, p0, Lar/com/hjg/pngj/ChunkSeqReaderPng;->maxBytesMetadata:J

    return-void
.end method

.method public setMaxTotalBytesRead(J)V
    .locals 0

    .line 235
    iput-wide p1, p0, Lar/com/hjg/pngj/ChunkSeqReaderPng;->maxTotalBytesRead:J

    return-void
.end method

.method public setSkipChunkMaxSize(J)V
    .locals 0

    .line 243
    iput-wide p1, p0, Lar/com/hjg/pngj/ChunkSeqReaderPng;->skipChunkMaxSize:J

    return-void
.end method

.method protected shouldCheckCrc(ILjava/lang/String;)Z
    .locals 0

    .line 260
    iget-boolean p1, p0, Lar/com/hjg/pngj/ChunkSeqReaderPng;->checkCrc:Z

    return p1
.end method

.method public shouldSkipContent(ILjava/lang/String;)Z
    .locals 9

    .line 88
    invoke-super {p0, p1, p2}, Lar/com/hjg/pngj/ChunkSeqReader;->shouldSkipContent(ILjava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 90
    :cond_0
    invoke-static {p2}, Lar/com/hjg/pngj/chunks/ChunkHelper;->isCritical(Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    return v2

    .line 92
    :cond_1
    iget-wide v3, p0, Lar/com/hjg/pngj/ChunkSeqReaderPng;->maxTotalBytesRead:J

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-lez v0, :cond_3

    int-to-long v3, p1

    invoke-virtual {p0}, Lar/com/hjg/pngj/ChunkSeqReaderPng;->getBytesCount()J

    move-result-wide v7

    add-long/2addr v3, v7

    iget-wide v7, p0, Lar/com/hjg/pngj/ChunkSeqReaderPng;->maxTotalBytesRead:J

    cmp-long v0, v3, v7

    if-gtz v0, :cond_2

    goto :goto_0

    .line 93
    :cond_2
    new-instance p2, Lar/com/hjg/pngj/PngjInputException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Maximum total bytes to read exceeeded: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lar/com/hjg/pngj/ChunkSeqReaderPng;->maxTotalBytesRead:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " offset:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lar/com/hjg/pngj/ChunkSeqReaderPng;->getBytesCount()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " len="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lar/com/hjg/pngj/PngjInputException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 95
    :cond_3
    :goto_0
    iget-object v0, p0, Lar/com/hjg/pngj/ChunkSeqReaderPng;->chunksToSkip:Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    return v1

    .line 97
    :cond_4
    iget-wide v3, p0, Lar/com/hjg/pngj/ChunkSeqReaderPng;->skipChunkMaxSize:J

    cmp-long v0, v3, v5

    if-lez v0, :cond_5

    int-to-long v7, p1

    cmp-long v0, v7, v3

    if-lez v0, :cond_5

    return v1

    .line 99
    :cond_5
    iget-wide v3, p0, Lar/com/hjg/pngj/ChunkSeqReaderPng;->maxBytesMetadata:J

    cmp-long v0, v3, v5

    if-lez v0, :cond_6

    int-to-long v5, p1

    iget-wide v7, p0, Lar/com/hjg/pngj/ChunkSeqReaderPng;->bytesChunksLoaded:J

    sub-long/2addr v3, v7

    cmp-long p1, v5, v3

    if-lez p1, :cond_6

    return v1

    .line 101
    :cond_6
    sget-object p1, Lar/com/hjg/pngj/ChunkSeqReaderPng$1;->$SwitchMap$ar$com$hjg$pngj$chunks$ChunkLoadBehaviour:[I

    iget-object v0, p0, Lar/com/hjg/pngj/ChunkSeqReaderPng;->chunkLoadBehaviour:Lar/com/hjg/pngj/chunks/ChunkLoadBehaviour;

    invoke-virtual {v0}, Lar/com/hjg/pngj/chunks/ChunkLoadBehaviour;->ordinal()I

    move-result v0

    aget p1, p1, v0

    if-eq p1, v1, :cond_8

    const/4 p2, 0x2

    if-eq p1, p2, :cond_7

    goto :goto_1

    :cond_7
    return v1

    .line 103
    :cond_8
    invoke-static {p2}, Lar/com/hjg/pngj/chunks/ChunkHelper;->isSafeToCopy(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_9

    return v1

    :cond_9
    :goto_1
    return v2
.end method

.method protected startNewChunk(ILjava/lang/String;J)V
    .locals 0

    .line 219
    invoke-direct {p0, p2}, Lar/com/hjg/pngj/ChunkSeqReaderPng;->updateAndCheckChunkGroup(Ljava/lang/String;)V

    .line 220
    invoke-super {p0, p1, p2, p3, p4}, Lar/com/hjg/pngj/ChunkSeqReader;->startNewChunk(ILjava/lang/String;J)V

    return-void
.end method
