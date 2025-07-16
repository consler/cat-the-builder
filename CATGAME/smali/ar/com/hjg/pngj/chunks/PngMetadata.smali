.class public Lar/com/hjg/pngj/chunks/PngMetadata;
.super Ljava/lang/Object;
.source "PngMetadata.java"


# instance fields
.field private final chunkList:Lar/com/hjg/pngj/chunks/ChunksList;

.field private final readonly:Z


# direct methods
.method public constructor <init>(Lar/com/hjg/pngj/chunks/ChunksList;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lar/com/hjg/pngj/chunks/PngMetadata;->chunkList:Lar/com/hjg/pngj/chunks/ChunksList;

    .line 23
    instance-of p1, p1, Lar/com/hjg/pngj/chunks/ChunksListForWrite;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 24
    iput-boolean p1, p0, Lar/com/hjg/pngj/chunks/PngMetadata;->readonly:Z

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 26
    iput-boolean p1, p0, Lar/com/hjg/pngj/chunks/PngMetadata;->readonly:Z

    :goto_0
    return-void
.end method

.method private getChunkListW()Lar/com/hjg/pngj/chunks/ChunksListForWrite;
    .locals 1

    .line 55
    iget-object v0, p0, Lar/com/hjg/pngj/chunks/PngMetadata;->chunkList:Lar/com/hjg/pngj/chunks/ChunksList;

    check-cast v0, Lar/com/hjg/pngj/chunks/ChunksListForWrite;

    return-object v0
.end method


# virtual methods
.method public createPLTEChunk()Lar/com/hjg/pngj/chunks/PngChunkPLTE;
    .locals 2

    .line 208
    new-instance v0, Lar/com/hjg/pngj/chunks/PngChunkPLTE;

    iget-object v1, p0, Lar/com/hjg/pngj/chunks/PngMetadata;->chunkList:Lar/com/hjg/pngj/chunks/ChunksList;

    iget-object v1, v1, Lar/com/hjg/pngj/chunks/ChunksList;->imageInfo:Lar/com/hjg/pngj/ImageInfo;

    invoke-direct {v0, v1}, Lar/com/hjg/pngj/chunks/PngChunkPLTE;-><init>(Lar/com/hjg/pngj/ImageInfo;)V

    .line 209
    invoke-virtual {p0, v0}, Lar/com/hjg/pngj/chunks/PngMetadata;->queueChunk(Lar/com/hjg/pngj/chunks/PngChunk;)V

    return-object v0
.end method

.method public createTRNSChunk()Lar/com/hjg/pngj/chunks/PngChunkTRNS;
    .locals 2

    .line 227
    new-instance v0, Lar/com/hjg/pngj/chunks/PngChunkTRNS;

    iget-object v1, p0, Lar/com/hjg/pngj/chunks/PngMetadata;->chunkList:Lar/com/hjg/pngj/chunks/ChunksList;

    iget-object v1, v1, Lar/com/hjg/pngj/chunks/ChunksList;->imageInfo:Lar/com/hjg/pngj/ImageInfo;

    invoke-direct {v0, v1}, Lar/com/hjg/pngj/chunks/PngChunkTRNS;-><init>(Lar/com/hjg/pngj/ImageInfo;)V

    .line 228
    invoke-virtual {p0, v0}, Lar/com/hjg/pngj/chunks/PngMetadata;->queueChunk(Lar/com/hjg/pngj/chunks/PngChunk;)V

    return-object v0
.end method

.method public getDpi()[D
    .locals 3

    .line 66
    iget-object v0, p0, Lar/com/hjg/pngj/chunks/PngMetadata;->chunkList:Lar/com/hjg/pngj/chunks/ChunksList;

    const-string v1, "pHYs"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lar/com/hjg/pngj/chunks/ChunksList;->getById1(Ljava/lang/String;Z)Lar/com/hjg/pngj/chunks/PngChunk;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x2

    new-array v0, v0, [D

    .line 68
    fill-array-data v0, :array_0

    return-object v0

    .line 70
    :cond_0
    check-cast v0, Lar/com/hjg/pngj/chunks/PngChunkPHYS;

    invoke-virtual {v0}, Lar/com/hjg/pngj/chunks/PngChunkPHYS;->getAsDpi2()[D

    move-result-object v0

    return-object v0

    nop

    :array_0
    .array-data 8
        -0x4010000000000000L    # -1.0
        -0x4010000000000000L    # -1.0
    .end array-data
.end method

.method public getPLTE()Lar/com/hjg/pngj/chunks/PngChunkPLTE;
    .locals 2

    .line 200
    iget-object v0, p0, Lar/com/hjg/pngj/chunks/PngMetadata;->chunkList:Lar/com/hjg/pngj/chunks/ChunksList;

    const-string v1, "PLTE"

    invoke-virtual {v0, v1}, Lar/com/hjg/pngj/chunks/ChunksList;->getById1(Ljava/lang/String;)Lar/com/hjg/pngj/chunks/PngChunk;

    move-result-object v0

    check-cast v0, Lar/com/hjg/pngj/chunks/PngChunkPLTE;

    return-object v0
.end method

.method public getTRNS()Lar/com/hjg/pngj/chunks/PngChunkTRNS;
    .locals 2

    .line 219
    iget-object v0, p0, Lar/com/hjg/pngj/chunks/PngMetadata;->chunkList:Lar/com/hjg/pngj/chunks/ChunksList;

    const-string v1, "tRNS"

    invoke-virtual {v0, v1}, Lar/com/hjg/pngj/chunks/ChunksList;->getById1(Ljava/lang/String;)Lar/com/hjg/pngj/chunks/PngChunk;

    move-result-object v0

    check-cast v0, Lar/com/hjg/pngj/chunks/PngChunkTRNS;

    return-object v0
.end method

.method public getTime()Lar/com/hjg/pngj/chunks/PngChunkTIME;
    .locals 2

    .line 119
    iget-object v0, p0, Lar/com/hjg/pngj/chunks/PngMetadata;->chunkList:Lar/com/hjg/pngj/chunks/ChunksList;

    const-string v1, "tIME"

    invoke-virtual {v0, v1}, Lar/com/hjg/pngj/chunks/ChunksList;->getById1(Ljava/lang/String;)Lar/com/hjg/pngj/chunks/PngChunk;

    move-result-object v0

    check-cast v0, Lar/com/hjg/pngj/chunks/PngChunkTIME;

    return-object v0
.end method

.method public getTimeAsString()Ljava/lang/String;
    .locals 1

    .line 123
    invoke-virtual {p0}, Lar/com/hjg/pngj/chunks/PngMetadata;->getTime()Lar/com/hjg/pngj/chunks/PngChunkTIME;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    goto :goto_0

    .line 124
    :cond_0
    invoke-virtual {v0}, Lar/com/hjg/pngj/chunks/PngChunkTIME;->getAsString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getTxtForKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 185
    invoke-virtual {p0, p1}, Lar/com/hjg/pngj/chunks/PngMetadata;->getTxtsForKey(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 186
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, ""

    return-object p1

    .line 188
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 189
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lar/com/hjg/pngj/chunks/PngChunkTextVar;

    .line 190
    invoke-virtual {v1}, Lar/com/hjg/pngj/chunks/PngChunkTextVar;->getVal()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 191
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getTxtsForKey(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "+",
            "Lar/com/hjg/pngj/chunks/PngChunkTextVar;",
            ">;"
        }
    .end annotation

    .line 172
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 173
    iget-object v1, p0, Lar/com/hjg/pngj/chunks/PngMetadata;->chunkList:Lar/com/hjg/pngj/chunks/ChunksList;

    const-string v2, "tEXt"

    invoke-virtual {v1, v2, p1}, Lar/com/hjg/pngj/chunks/ChunksList;->getById(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 174
    iget-object v1, p0, Lar/com/hjg/pngj/chunks/PngMetadata;->chunkList:Lar/com/hjg/pngj/chunks/ChunksList;

    const-string v2, "zTXt"

    invoke-virtual {v1, v2, p1}, Lar/com/hjg/pngj/chunks/ChunksList;->getById(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 175
    iget-object v1, p0, Lar/com/hjg/pngj/chunks/PngMetadata;->chunkList:Lar/com/hjg/pngj/chunks/ChunksList;

    const-string v2, "iTXt"

    invoke-virtual {v1, v2, p1}, Lar/com/hjg/pngj/chunks/ChunksList;->getById(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method public queueChunk(Lar/com/hjg/pngj/chunks/PngChunk;)V
    .locals 1

    const/4 v0, 0x1

    .line 51
    invoke-virtual {p0, p1, v0}, Lar/com/hjg/pngj/chunks/PngMetadata;->queueChunk(Lar/com/hjg/pngj/chunks/PngChunk;Z)V

    return-void
.end method

.method public queueChunk(Lar/com/hjg/pngj/chunks/PngChunk;Z)V
    .locals 2

    .line 37
    invoke-direct {p0}, Lar/com/hjg/pngj/chunks/PngMetadata;->getChunkListW()Lar/com/hjg/pngj/chunks/ChunksListForWrite;

    move-result-object v0

    .line 38
    iget-boolean v1, p0, Lar/com/hjg/pngj/chunks/PngMetadata;->readonly:Z

    if-nez v1, :cond_1

    if-eqz p2, :cond_0

    .line 41
    invoke-virtual {v0}, Lar/com/hjg/pngj/chunks/ChunksListForWrite;->getQueuedChunks()Ljava/util/List;

    move-result-object p2

    new-instance v1, Lar/com/hjg/pngj/chunks/PngMetadata$1;

    invoke-direct {v1, p0, p1}, Lar/com/hjg/pngj/chunks/PngMetadata$1;-><init>(Lar/com/hjg/pngj/chunks/PngMetadata;Lar/com/hjg/pngj/chunks/PngChunk;)V

    invoke-static {p2, v1}, Lar/com/hjg/pngj/chunks/ChunkHelper;->trimList(Ljava/util/List;Lar/com/hjg/pngj/chunks/ChunkPredicate;)I

    .line 47
    :cond_0
    invoke-virtual {v0, p1}, Lar/com/hjg/pngj/chunks/ChunksListForWrite;->queue(Lar/com/hjg/pngj/chunks/PngChunk;)Z

    return-void

    .line 39
    :cond_1
    new-instance p1, Lar/com/hjg/pngj/PngjException;

    const-string p2, "cannot set chunk : readonly metadata"

    invoke-direct {p1, p2}, Lar/com/hjg/pngj/PngjException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setDpi(D)V
    .locals 0

    .line 74
    invoke-virtual {p0, p1, p2, p1, p2}, Lar/com/hjg/pngj/chunks/PngMetadata;->setDpi(DD)V

    return-void
.end method

.method public setDpi(DD)V
    .locals 2

    .line 78
    new-instance v0, Lar/com/hjg/pngj/chunks/PngChunkPHYS;

    iget-object v1, p0, Lar/com/hjg/pngj/chunks/PngMetadata;->chunkList:Lar/com/hjg/pngj/chunks/ChunksList;

    iget-object v1, v1, Lar/com/hjg/pngj/chunks/ChunksList;->imageInfo:Lar/com/hjg/pngj/ImageInfo;

    invoke-direct {v0, v1}, Lar/com/hjg/pngj/chunks/PngChunkPHYS;-><init>(Lar/com/hjg/pngj/ImageInfo;)V

    .line 79
    invoke-virtual {v0, p1, p2, p3, p4}, Lar/com/hjg/pngj/chunks/PngChunkPHYS;->setAsDpi2(DD)V

    .line 80
    invoke-virtual {p0, v0}, Lar/com/hjg/pngj/chunks/PngMetadata;->queueChunk(Lar/com/hjg/pngj/chunks/PngChunk;)V

    return-void
.end method

.method public setText(Ljava/lang/String;Ljava/lang/String;)Lar/com/hjg/pngj/chunks/PngChunkTextVar;
    .locals 1

    const/4 v0, 0x0

    .line 159
    invoke-virtual {p0, p1, p2, v0, v0}, Lar/com/hjg/pngj/chunks/PngMetadata;->setText(Ljava/lang/String;Ljava/lang/String;ZZ)Lar/com/hjg/pngj/chunks/PngChunkTextVar;

    move-result-object p1

    return-object p1
.end method

.method public setText(Ljava/lang/String;Ljava/lang/String;ZZ)Lar/com/hjg/pngj/chunks/PngChunkTextVar;
    .locals 0

    if-eqz p4, :cond_1

    if-eqz p3, :cond_0

    goto :goto_0

    .line 141
    :cond_0
    new-instance p1, Lar/com/hjg/pngj/PngjException;

    const-string p2, "cannot compress non latin text"

    invoke-direct {p1, p2}, Lar/com/hjg/pngj/PngjException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    if-eqz p3, :cond_3

    if-eqz p4, :cond_2

    .line 145
    new-instance p3, Lar/com/hjg/pngj/chunks/PngChunkZTXT;

    iget-object p4, p0, Lar/com/hjg/pngj/chunks/PngMetadata;->chunkList:Lar/com/hjg/pngj/chunks/ChunksList;

    iget-object p4, p4, Lar/com/hjg/pngj/chunks/ChunksList;->imageInfo:Lar/com/hjg/pngj/ImageInfo;

    invoke-direct {p3, p4}, Lar/com/hjg/pngj/chunks/PngChunkZTXT;-><init>(Lar/com/hjg/pngj/ImageInfo;)V

    goto :goto_1

    .line 147
    :cond_2
    new-instance p3, Lar/com/hjg/pngj/chunks/PngChunkTEXT;

    iget-object p4, p0, Lar/com/hjg/pngj/chunks/PngMetadata;->chunkList:Lar/com/hjg/pngj/chunks/ChunksList;

    iget-object p4, p4, Lar/com/hjg/pngj/chunks/ChunksList;->imageInfo:Lar/com/hjg/pngj/ImageInfo;

    invoke-direct {p3, p4}, Lar/com/hjg/pngj/chunks/PngChunkTEXT;-><init>(Lar/com/hjg/pngj/ImageInfo;)V

    goto :goto_1

    .line 150
    :cond_3
    new-instance p3, Lar/com/hjg/pngj/chunks/PngChunkITXT;

    iget-object p4, p0, Lar/com/hjg/pngj/chunks/PngMetadata;->chunkList:Lar/com/hjg/pngj/chunks/ChunksList;

    iget-object p4, p4, Lar/com/hjg/pngj/chunks/ChunksList;->imageInfo:Lar/com/hjg/pngj/ImageInfo;

    invoke-direct {p3, p4}, Lar/com/hjg/pngj/chunks/PngChunkITXT;-><init>(Lar/com/hjg/pngj/ImageInfo;)V

    .line 151
    move-object p4, p3

    check-cast p4, Lar/com/hjg/pngj/chunks/PngChunkITXT;

    invoke-virtual {p3, p1}, Lar/com/hjg/pngj/chunks/PngChunkITXT;->setLangtag(Ljava/lang/String;)V

    .line 153
    :goto_1
    invoke-virtual {p3, p1, p2}, Lar/com/hjg/pngj/chunks/PngChunkTextVar;->setKeyVal(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 154
    invoke-virtual {p0, p3, p1}, Lar/com/hjg/pngj/chunks/PngMetadata;->queueChunk(Lar/com/hjg/pngj/chunks/PngChunk;Z)V

    return-object p3
.end method

.method public setTimeNow()Lar/com/hjg/pngj/chunks/PngChunkTIME;
    .locals 1

    const/4 v0, 0x0

    .line 99
    invoke-virtual {p0, v0}, Lar/com/hjg/pngj/chunks/PngMetadata;->setTimeNow(I)Lar/com/hjg/pngj/chunks/PngChunkTIME;

    move-result-object v0

    return-object v0
.end method

.method public setTimeNow(I)Lar/com/hjg/pngj/chunks/PngChunkTIME;
    .locals 2

    .line 92
    new-instance v0, Lar/com/hjg/pngj/chunks/PngChunkTIME;

    iget-object v1, p0, Lar/com/hjg/pngj/chunks/PngMetadata;->chunkList:Lar/com/hjg/pngj/chunks/ChunksList;

    iget-object v1, v1, Lar/com/hjg/pngj/chunks/ChunksList;->imageInfo:Lar/com/hjg/pngj/ImageInfo;

    invoke-direct {v0, v1}, Lar/com/hjg/pngj/chunks/PngChunkTIME;-><init>(Lar/com/hjg/pngj/ImageInfo;)V

    .line 93
    invoke-virtual {v0, p1}, Lar/com/hjg/pngj/chunks/PngChunkTIME;->setNow(I)V

    .line 94
    invoke-virtual {p0, v0}, Lar/com/hjg/pngj/chunks/PngMetadata;->queueChunk(Lar/com/hjg/pngj/chunks/PngChunk;)V

    return-object v0
.end method

.method public setTimeYMDHMS(IIIIII)Lar/com/hjg/pngj/chunks/PngChunkTIME;
    .locals 8

    .line 109
    new-instance v7, Lar/com/hjg/pngj/chunks/PngChunkTIME;

    iget-object v0, p0, Lar/com/hjg/pngj/chunks/PngMetadata;->chunkList:Lar/com/hjg/pngj/chunks/ChunksList;

    iget-object v0, v0, Lar/com/hjg/pngj/chunks/ChunksList;->imageInfo:Lar/com/hjg/pngj/ImageInfo;

    invoke-direct {v7, v0}, Lar/com/hjg/pngj/chunks/PngChunkTIME;-><init>(Lar/com/hjg/pngj/ImageInfo;)V

    move-object v0, v7

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    .line 110
    invoke-virtual/range {v0 .. v6}, Lar/com/hjg/pngj/chunks/PngChunkTIME;->setYMDHMS(IIIIII)V

    const/4 p1, 0x1

    .line 111
    invoke-virtual {p0, v7, p1}, Lar/com/hjg/pngj/chunks/PngMetadata;->queueChunk(Lar/com/hjg/pngj/chunks/PngChunk;Z)V

    return-object v7
.end method
