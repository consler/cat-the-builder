.class public Lar/com/hjg/pngj/PngWriter;
.super Ljava/lang/Object;
.source "PngWriter.java"


# instance fields
.field private final chunksList:Lar/com/hjg/pngj/chunks/ChunksListForWrite;

.field private copyFromList:Lar/com/hjg/pngj/chunks/ChunksList;

.field private copyFromPredicate:Lar/com/hjg/pngj/chunks/ChunkPredicate;

.field protected currentChunkGroup:I

.field private currentpass:I

.field private datStream:Lar/com/hjg/pngj/PngIDatChunkOutputStream;

.field protected debuginfo:Ljava/lang/StringBuilder;

.field private idatMaxSize:I

.field public final imgInfo:Lar/com/hjg/pngj/ImageInfo;

.field private final metadata:Lar/com/hjg/pngj/chunks/PngMetadata;

.field private final os:Ljava/io/OutputStream;

.field private passes:I

.field protected pixelsWriter:Lar/com/hjg/pngj/pixels/PixelsWriter;

.field protected rowNum:I

.field private shouldCloseStream:Z


# direct methods
.method public constructor <init>(Ljava/io/File;Lar/com/hjg/pngj/ImageInfo;)V
    .locals 1
    .param p1, "file"    # Ljava/io/File;
    .param p2, "imgInfo"    # Lar/com/hjg/pngj/ImageInfo;

    .line 79
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lar/com/hjg/pngj/PngWriter;-><init>(Ljava/io/File;Lar/com/hjg/pngj/ImageInfo;Z)V

    .line 80
    return-void
.end method

.method public constructor <init>(Ljava/io/File;Lar/com/hjg/pngj/ImageInfo;Z)V
    .locals 1
    .param p1, "file"    # Ljava/io/File;
    .param p2, "imgInfo"    # Lar/com/hjg/pngj/ImageInfo;
    .param p3, "allowoverwrite"    # Z

    .line 71
    invoke-static {p1, p3}, Lar/com/hjg/pngj/PngHelperInternal;->ostreamFromFile(Ljava/io/File;Z)Ljava/io/OutputStream;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lar/com/hjg/pngj/PngWriter;-><init>(Ljava/io/OutputStream;Lar/com/hjg/pngj/ImageInfo;)V

    .line 72
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lar/com/hjg/pngj/PngWriter;->setShouldCloseStream(Z)V

    .line 73
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;Lar/com/hjg/pngj/ImageInfo;)V
    .locals 2
    .param p1, "outputStream"    # Ljava/io/OutputStream;
    .param p2, "imgInfo"    # Lar/com/hjg/pngj/ImageInfo;

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const/4 v0, -0x1

    iput v0, p0, Lar/com/hjg/pngj/PngWriter;->rowNum:I

    .line 42
    iput v0, p0, Lar/com/hjg/pngj/PngWriter;->currentChunkGroup:I

    .line 44
    const/4 v0, 0x1

    iput v0, p0, Lar/com/hjg/pngj/PngWriter;->passes:I

    .line 45
    const/4 v1, 0x0

    iput v1, p0, Lar/com/hjg/pngj/PngWriter;->currentpass:I

    .line 47
    iput-boolean v0, p0, Lar/com/hjg/pngj/PngWriter;->shouldCloseStream:Z

    .line 49
    iput v1, p0, Lar/com/hjg/pngj/PngWriter;->idatMaxSize:I

    .line 56
    const/4 v0, 0x0

    iput-object v0, p0, Lar/com/hjg/pngj/PngWriter;->copyFromPredicate:Lar/com/hjg/pngj/chunks/ChunkPredicate;

    .line 57
    iput-object v0, p0, Lar/com/hjg/pngj/PngWriter;->copyFromList:Lar/com/hjg/pngj/chunks/ChunksList;

    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lar/com/hjg/pngj/PngWriter;->debuginfo:Ljava/lang/StringBuilder;

    .line 92
    iput-object p1, p0, Lar/com/hjg/pngj/PngWriter;->os:Ljava/io/OutputStream;

    .line 93
    iput-object p2, p0, Lar/com/hjg/pngj/PngWriter;->imgInfo:Lar/com/hjg/pngj/ImageInfo;

    .line 95
    new-instance v0, Lar/com/hjg/pngj/chunks/ChunksListForWrite;

    invoke-direct {v0, p2}, Lar/com/hjg/pngj/chunks/ChunksListForWrite;-><init>(Lar/com/hjg/pngj/ImageInfo;)V

    iput-object v0, p0, Lar/com/hjg/pngj/PngWriter;->chunksList:Lar/com/hjg/pngj/chunks/ChunksListForWrite;

    .line 96
    new-instance v1, Lar/com/hjg/pngj/chunks/PngMetadata;

    invoke-direct {v1, v0}, Lar/com/hjg/pngj/chunks/PngMetadata;-><init>(Lar/com/hjg/pngj/chunks/ChunksList;)V

    iput-object v1, p0, Lar/com/hjg/pngj/PngWriter;->metadata:Lar/com/hjg/pngj/chunks/PngMetadata;

    .line 97
    invoke-virtual {p0, p2}, Lar/com/hjg/pngj/PngWriter;->createPixelsWriter(Lar/com/hjg/pngj/ImageInfo;)Lar/com/hjg/pngj/pixels/PixelsWriter;

    move-result-object v0

    iput-object v0, p0, Lar/com/hjg/pngj/PngWriter;->pixelsWriter:Lar/com/hjg/pngj/pixels/PixelsWriter;

    .line 98
    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Lar/com/hjg/pngj/PngWriter;->setCompLevel(I)V

    .line 99
    return-void
.end method

.method private initIdat()V
    .locals 3

    .line 102
    new-instance v0, Lar/com/hjg/pngj/PngIDatChunkOutputStream;

    iget-object v1, p0, Lar/com/hjg/pngj/PngWriter;->os:Ljava/io/OutputStream;

    iget v2, p0, Lar/com/hjg/pngj/PngWriter;->idatMaxSize:I

    invoke-direct {v0, v1, v2}, Lar/com/hjg/pngj/PngIDatChunkOutputStream;-><init>(Ljava/io/OutputStream;I)V

    iput-object v0, p0, Lar/com/hjg/pngj/PngWriter;->datStream:Lar/com/hjg/pngj/PngIDatChunkOutputStream;

    .line 103
    iget-object v1, p0, Lar/com/hjg/pngj/PngWriter;->pixelsWriter:Lar/com/hjg/pngj/pixels/PixelsWriter;

    invoke-virtual {v1, v0}, Lar/com/hjg/pngj/pixels/PixelsWriter;->setOs(Ljava/io/OutputStream;)V

    .line 104
    invoke-direct {p0}, Lar/com/hjg/pngj/PngWriter;->writeSignatureAndIHDR()V

    .line 105
    invoke-direct {p0}, Lar/com/hjg/pngj/PngWriter;->writeFirstChunks()V

    .line 106
    return-void
.end method

.method private queueChunksFromOther()V
    .locals 7

    .line 172
    iget-object v0, p0, Lar/com/hjg/pngj/PngWriter;->copyFromList:Lar/com/hjg/pngj/chunks/ChunksList;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lar/com/hjg/pngj/PngWriter;->copyFromPredicate:Lar/com/hjg/pngj/chunks/ChunkPredicate;

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 174
    :cond_0
    iget v0, p0, Lar/com/hjg/pngj/PngWriter;->currentChunkGroup:I

    const/4 v1, 0x4

    if-lt v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 175
    .local v0, "idatDone":Z
    :goto_0
    iget-object v2, p0, Lar/com/hjg/pngj/PngWriter;->copyFromList:Lar/com/hjg/pngj/chunks/ChunksList;

    invoke-virtual {v2}, Lar/com/hjg/pngj/chunks/ChunksList;->getChunks()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lar/com/hjg/pngj/chunks/PngChunk;

    .line 176
    .local v3, "chunk":Lar/com/hjg/pngj/chunks/PngChunk;
    invoke-virtual {v3}, Lar/com/hjg/pngj/chunks/PngChunk;->getRaw()Lar/com/hjg/pngj/chunks/ChunkRaw;

    move-result-object v4

    iget-object v4, v4, Lar/com/hjg/pngj/chunks/ChunkRaw;->data:[B

    if-nez v4, :cond_2

    .line 177
    goto :goto_1

    .line 178
    :cond_2
    invoke-virtual {v3}, Lar/com/hjg/pngj/chunks/PngChunk;->getChunkGroup()I

    move-result v4

    .line 179
    .local v4, "group":I
    if-gt v4, v1, :cond_3

    if-eqz v0, :cond_3

    .line 180
    goto :goto_1

    .line 181
    :cond_3
    if-lt v4, v1, :cond_4

    if-nez v0, :cond_4

    .line 182
    goto :goto_1

    .line 183
    :cond_4
    iget-boolean v5, v3, Lar/com/hjg/pngj/chunks/PngChunk;->crit:Z

    if-eqz v5, :cond_5

    iget-object v5, v3, Lar/com/hjg/pngj/chunks/PngChunk;->id:Ljava/lang/String;

    const-string v6, "PLTE"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 184
    goto :goto_1

    .line 186
    :cond_5
    iget-object v5, p0, Lar/com/hjg/pngj/PngWriter;->copyFromPredicate:Lar/com/hjg/pngj/chunks/ChunkPredicate;

    invoke-interface {v5, v3}, Lar/com/hjg/pngj/chunks/ChunkPredicate;->match(Lar/com/hjg/pngj/chunks/PngChunk;)Z

    move-result v5

    .line 187
    .local v5, "copy":Z
    if-eqz v5, :cond_6

    .line 189
    iget-object v6, p0, Lar/com/hjg/pngj/PngWriter;->chunksList:Lar/com/hjg/pngj/chunks/ChunksListForWrite;

    invoke-virtual {v6, v3}, Lar/com/hjg/pngj/chunks/ChunksListForWrite;->getEquivalent(Lar/com/hjg/pngj/chunks/PngChunk;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_6

    iget-object v6, p0, Lar/com/hjg/pngj/PngWriter;->chunksList:Lar/com/hjg/pngj/chunks/ChunksListForWrite;

    invoke-virtual {v6, v3}, Lar/com/hjg/pngj/chunks/ChunksListForWrite;->getQueuedEquivalent(Lar/com/hjg/pngj/chunks/PngChunk;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 191
    iget-object v6, p0, Lar/com/hjg/pngj/PngWriter;->chunksList:Lar/com/hjg/pngj/chunks/ChunksListForWrite;

    invoke-virtual {v6, v3}, Lar/com/hjg/pngj/chunks/ChunksListForWrite;->queue(Lar/com/hjg/pngj/chunks/PngChunk;)Z

    .line 194
    .end local v3    # "chunk":Lar/com/hjg/pngj/chunks/PngChunk;
    .end local v4    # "group":I
    .end local v5    # "copy":Z
    :cond_6
    goto :goto_1

    .line 195
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_7
    return-void

    .line 173
    .end local v0    # "idatDone":Z
    :cond_8
    :goto_2
    return-void
.end method

.method private writeEndChunk()V
    .locals 3

    .line 109
    new-instance v0, Lar/com/hjg/pngj/chunks/PngChunkIEND;

    iget-object v1, p0, Lar/com/hjg/pngj/PngWriter;->imgInfo:Lar/com/hjg/pngj/ImageInfo;

    invoke-direct {v0, v1}, Lar/com/hjg/pngj/chunks/PngChunkIEND;-><init>(Lar/com/hjg/pngj/ImageInfo;)V

    .line 110
    .local v0, "c":Lar/com/hjg/pngj/chunks/PngChunkIEND;
    invoke-virtual {v0}, Lar/com/hjg/pngj/chunks/PngChunkIEND;->createRawChunk()Lar/com/hjg/pngj/chunks/ChunkRaw;

    move-result-object v1

    iget-object v2, p0, Lar/com/hjg/pngj/PngWriter;->os:Ljava/io/OutputStream;

    invoke-virtual {v1, v2}, Lar/com/hjg/pngj/chunks/ChunkRaw;->writeChunk(Ljava/io/OutputStream;)V

    .line 111
    iget-object v1, p0, Lar/com/hjg/pngj/PngWriter;->chunksList:Lar/com/hjg/pngj/chunks/ChunksListForWrite;

    invoke-virtual {v1}, Lar/com/hjg/pngj/chunks/ChunksListForWrite;->getChunks()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 112
    return-void
.end method

.method private writeFirstChunks()V
    .locals 5

    .line 115
    iget v0, p0, Lar/com/hjg/pngj/PngWriter;->currentChunkGroup:I

    const/4 v1, 0x4

    if-lt v0, v1, :cond_0

    .line 116
    return-void

    .line 117
    :cond_0
    const/4 v0, 0x0

    .line 118
    .local v0, "nw":I
    const/4 v2, 0x1

    iput v2, p0, Lar/com/hjg/pngj/PngWriter;->currentChunkGroup:I

    .line 119
    invoke-direct {p0}, Lar/com/hjg/pngj/PngWriter;->queueChunksFromOther()V

    .line 120
    iget-object v2, p0, Lar/com/hjg/pngj/PngWriter;->chunksList:Lar/com/hjg/pngj/chunks/ChunksListForWrite;

    iget-object v3, p0, Lar/com/hjg/pngj/PngWriter;->os:Ljava/io/OutputStream;

    iget v4, p0, Lar/com/hjg/pngj/PngWriter;->currentChunkGroup:I

    invoke-virtual {v2, v3, v4}, Lar/com/hjg/pngj/chunks/ChunksListForWrite;->writeChunks(Ljava/io/OutputStream;I)I

    move-result v0

    .line 121
    const/4 v2, 0x2

    iput v2, p0, Lar/com/hjg/pngj/PngWriter;->currentChunkGroup:I

    .line 122
    iget-object v3, p0, Lar/com/hjg/pngj/PngWriter;->chunksList:Lar/com/hjg/pngj/chunks/ChunksListForWrite;

    iget-object v4, p0, Lar/com/hjg/pngj/PngWriter;->os:Ljava/io/OutputStream;

    invoke-virtual {v3, v4, v2}, Lar/com/hjg/pngj/chunks/ChunksListForWrite;->writeChunks(Ljava/io/OutputStream;I)I

    move-result v0

    .line 123
    if-lez v0, :cond_2

    iget-object v2, p0, Lar/com/hjg/pngj/PngWriter;->imgInfo:Lar/com/hjg/pngj/ImageInfo;

    iget-boolean v2, v2, Lar/com/hjg/pngj/ImageInfo;->greyscale:Z

    if-nez v2, :cond_1

    goto :goto_0

    .line 124
    :cond_1
    new-instance v1, Lar/com/hjg/pngj/PngjOutputException;

    const-string v2, "cannot write palette for this format"

    invoke-direct {v1, v2}, Lar/com/hjg/pngj/PngjOutputException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 125
    :cond_2
    :goto_0
    if-nez v0, :cond_4

    iget-object v2, p0, Lar/com/hjg/pngj/PngWriter;->imgInfo:Lar/com/hjg/pngj/ImageInfo;

    iget-boolean v2, v2, Lar/com/hjg/pngj/ImageInfo;->indexed:Z

    if-nez v2, :cond_3

    goto :goto_1

    .line 126
    :cond_3
    new-instance v1, Lar/com/hjg/pngj/PngjOutputException;

    const-string v2, "missing palette"

    invoke-direct {v1, v2}, Lar/com/hjg/pngj/PngjOutputException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 127
    :cond_4
    :goto_1
    const/4 v2, 0x3

    iput v2, p0, Lar/com/hjg/pngj/PngWriter;->currentChunkGroup:I

    .line 128
    iget-object v3, p0, Lar/com/hjg/pngj/PngWriter;->chunksList:Lar/com/hjg/pngj/chunks/ChunksListForWrite;

    iget-object v4, p0, Lar/com/hjg/pngj/PngWriter;->os:Ljava/io/OutputStream;

    invoke-virtual {v3, v4, v2}, Lar/com/hjg/pngj/chunks/ChunksListForWrite;->writeChunks(Ljava/io/OutputStream;I)I

    move-result v0

    .line 129
    iput v1, p0, Lar/com/hjg/pngj/PngWriter;->currentChunkGroup:I

    .line 130
    return-void
.end method

.method private writeLastChunks()V
    .locals 4

    .line 133
    invoke-direct {p0}, Lar/com/hjg/pngj/PngWriter;->queueChunksFromOther()V

    .line 134
    const/4 v0, 0x5

    iput v0, p0, Lar/com/hjg/pngj/PngWriter;->currentChunkGroup:I

    .line 135
    iget-object v1, p0, Lar/com/hjg/pngj/PngWriter;->chunksList:Lar/com/hjg/pngj/chunks/ChunksListForWrite;

    iget-object v2, p0, Lar/com/hjg/pngj/PngWriter;->os:Ljava/io/OutputStream;

    invoke-virtual {v1, v2, v0}, Lar/com/hjg/pngj/chunks/ChunksListForWrite;->writeChunks(Ljava/io/OutputStream;I)I

    .line 137
    iget-object v0, p0, Lar/com/hjg/pngj/PngWriter;->chunksList:Lar/com/hjg/pngj/chunks/ChunksListForWrite;

    invoke-virtual {v0}, Lar/com/hjg/pngj/chunks/ChunksListForWrite;->getQueuedChunks()Ljava/util/List;

    move-result-object v0

    .line 138
    .local v0, "pending":Ljava/util/List;, "Ljava/util/List<Lar/com/hjg/pngj/chunks/PngChunk;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 141
    const/4 v1, 0x6

    iput v1, p0, Lar/com/hjg/pngj/PngWriter;->currentChunkGroup:I

    .line 142
    return-void

    .line 139
    :cond_0
    new-instance v1, Lar/com/hjg/pngj/PngjOutputException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " chunks were not written! Eg: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lar/com/hjg/pngj/chunks/PngChunk;

    invoke-virtual {v3}, Lar/com/hjg/pngj/chunks/PngChunk;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lar/com/hjg/pngj/PngjOutputException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private writeSignatureAndIHDR()V
    .locals 4

    .line 148
    const/4 v0, 0x0

    iput v0, p0, Lar/com/hjg/pngj/PngWriter;->currentChunkGroup:I

    .line 150
    iget-object v1, p0, Lar/com/hjg/pngj/PngWriter;->os:Ljava/io/OutputStream;

    invoke-static {}, Lar/com/hjg/pngj/PngHelperInternal;->getPngIdSignature()[B

    move-result-object v2

    invoke-static {v1, v2}, Lar/com/hjg/pngj/PngHelperInternal;->writeBytes(Ljava/io/OutputStream;[B)V

    .line 151
    new-instance v1, Lar/com/hjg/pngj/chunks/PngChunkIHDR;

    iget-object v2, p0, Lar/com/hjg/pngj/PngWriter;->imgInfo:Lar/com/hjg/pngj/ImageInfo;

    invoke-direct {v1, v2}, Lar/com/hjg/pngj/chunks/PngChunkIHDR;-><init>(Lar/com/hjg/pngj/ImageInfo;)V

    .line 153
    .local v1, "ihdr":Lar/com/hjg/pngj/chunks/PngChunkIHDR;
    iget-object v2, p0, Lar/com/hjg/pngj/PngWriter;->imgInfo:Lar/com/hjg/pngj/ImageInfo;

    iget v2, v2, Lar/com/hjg/pngj/ImageInfo;->cols:I

    invoke-virtual {v1, v2}, Lar/com/hjg/pngj/chunks/PngChunkIHDR;->setCols(I)V

    .line 154
    iget-object v2, p0, Lar/com/hjg/pngj/PngWriter;->imgInfo:Lar/com/hjg/pngj/ImageInfo;

    iget v2, v2, Lar/com/hjg/pngj/ImageInfo;->rows:I

    invoke-virtual {v1, v2}, Lar/com/hjg/pngj/chunks/PngChunkIHDR;->setRows(I)V

    .line 155
    iget-object v2, p0, Lar/com/hjg/pngj/PngWriter;->imgInfo:Lar/com/hjg/pngj/ImageInfo;

    iget v2, v2, Lar/com/hjg/pngj/ImageInfo;->bitDepth:I

    invoke-virtual {v1, v2}, Lar/com/hjg/pngj/chunks/PngChunkIHDR;->setBitspc(I)V

    .line 156
    const/4 v2, 0x0

    .line 157
    .local v2, "colormodel":I
    iget-object v3, p0, Lar/com/hjg/pngj/PngWriter;->imgInfo:Lar/com/hjg/pngj/ImageInfo;

    iget-boolean v3, v3, Lar/com/hjg/pngj/ImageInfo;->alpha:Z

    if-eqz v3, :cond_0

    .line 158
    add-int/lit8 v2, v2, 0x4

    .line 159
    :cond_0
    iget-object v3, p0, Lar/com/hjg/pngj/PngWriter;->imgInfo:Lar/com/hjg/pngj/ImageInfo;

    iget-boolean v3, v3, Lar/com/hjg/pngj/ImageInfo;->indexed:Z

    if-eqz v3, :cond_1

    .line 160
    add-int/lit8 v2, v2, 0x1

    .line 161
    :cond_1
    iget-object v3, p0, Lar/com/hjg/pngj/PngWriter;->imgInfo:Lar/com/hjg/pngj/ImageInfo;

    iget-boolean v3, v3, Lar/com/hjg/pngj/ImageInfo;->greyscale:Z

    if-nez v3, :cond_2

    .line 162
    add-int/lit8 v2, v2, 0x2

    .line 163
    :cond_2
    invoke-virtual {v1, v2}, Lar/com/hjg/pngj/chunks/PngChunkIHDR;->setColormodel(I)V

    .line 164
    invoke-virtual {v1, v0}, Lar/com/hjg/pngj/chunks/PngChunkIHDR;->setCompmeth(I)V

    .line 165
    invoke-virtual {v1, v0}, Lar/com/hjg/pngj/chunks/PngChunkIHDR;->setFilmeth(I)V

    .line 166
    invoke-virtual {v1, v0}, Lar/com/hjg/pngj/chunks/PngChunkIHDR;->setInterlaced(I)V

    .line 167
    invoke-virtual {v1}, Lar/com/hjg/pngj/chunks/PngChunkIHDR;->createRawChunk()Lar/com/hjg/pngj/chunks/ChunkRaw;

    move-result-object v0

    iget-object v3, p0, Lar/com/hjg/pngj/PngWriter;->os:Ljava/io/OutputStream;

    invoke-virtual {v0, v3}, Lar/com/hjg/pngj/chunks/ChunkRaw;->writeChunk(Ljava/io/OutputStream;)V

    .line 168
    iget-object v0, p0, Lar/com/hjg/pngj/PngWriter;->chunksList:Lar/com/hjg/pngj/chunks/ChunksListForWrite;

    invoke-virtual {v0}, Lar/com/hjg/pngj/chunks/ChunksListForWrite;->getChunks()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 169
    return-void
.end method


# virtual methods
.method public close()V
    .locals 4

    .line 304
    :try_start_0
    iget-object v0, p0, Lar/com/hjg/pngj/PngWriter;->datStream:Lar/com/hjg/pngj/PngIDatChunkOutputStream;

    if-eqz v0, :cond_0

    .line 305
    iget-object v0, p0, Lar/com/hjg/pngj/PngWriter;->datStream:Lar/com/hjg/pngj/PngIDatChunkOutputStream;

    invoke-virtual {v0}, Lar/com/hjg/pngj/PngIDatChunkOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 308
    :cond_0
    goto :goto_0

    .line 307
    :catch_0
    move-exception v0

    .line 309
    :goto_0
    iget-object v0, p0, Lar/com/hjg/pngj/PngWriter;->pixelsWriter:Lar/com/hjg/pngj/pixels/PixelsWriter;

    if-eqz v0, :cond_1

    .line 310
    invoke-virtual {v0}, Lar/com/hjg/pngj/pixels/PixelsWriter;->close()V

    .line 311
    :cond_1
    iget-boolean v0, p0, Lar/com/hjg/pngj/PngWriter;->shouldCloseStream:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lar/com/hjg/pngj/PngWriter;->os:Ljava/io/OutputStream;

    if-eqz v0, :cond_2

    .line 313
    :try_start_1
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 316
    goto :goto_1

    .line 314
    :catch_1
    move-exception v0

    .line 315
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lar/com/hjg/pngj/PngHelperInternal;->LOGGER:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error closing writer "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 317
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    :goto_1
    return-void
.end method

.method public computeCompressionRatio()D
    .locals 6

    .line 270
    iget v0, p0, Lar/com/hjg/pngj/PngWriter;->currentChunkGroup:I

    const/4 v1, 0x6

    if-lt v0, v1, :cond_0

    .line 272
    iget-object v0, p0, Lar/com/hjg/pngj/PngWriter;->datStream:Lar/com/hjg/pngj/PngIDatChunkOutputStream;

    invoke-virtual {v0}, Lar/com/hjg/pngj/PngIDatChunkOutputStream;->getCountFlushed()J

    move-result-wide v0

    long-to-double v0, v0

    .line 273
    .local v0, "compressed":D
    iget-object v2, p0, Lar/com/hjg/pngj/PngWriter;->imgInfo:Lar/com/hjg/pngj/ImageInfo;

    iget v2, v2, Lar/com/hjg/pngj/ImageInfo;->bytesPerRow:I

    add-int/lit8 v2, v2, 0x1

    iget-object v3, p0, Lar/com/hjg/pngj/PngWriter;->imgInfo:Lar/com/hjg/pngj/ImageInfo;

    iget v3, v3, Lar/com/hjg/pngj/ImageInfo;->rows:I

    mul-int/2addr v2, v3

    int-to-double v2, v2

    .line 274
    .local v2, "raw":D
    div-double v4, v0, v2

    return-wide v4

    .line 271
    .end local v0    # "compressed":D
    .end local v2    # "raw":D
    :cond_0
    new-instance v0, Lar/com/hjg/pngj/PngjOutputException;

    const-string v1, "must be called after end()"

    invoke-direct {v0, v1}, Lar/com/hjg/pngj/PngjOutputException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public copyChunksFrom(Lar/com/hjg/pngj/chunks/ChunksList;)V
    .locals 1
    .param p1, "chunks"    # Lar/com/hjg/pngj/chunks/ChunksList;

    .line 241
    const/16 v0, 0x8

    invoke-virtual {p0, p1, v0}, Lar/com/hjg/pngj/PngWriter;->copyChunksFrom(Lar/com/hjg/pngj/chunks/ChunksList;I)V

    .line 242
    return-void
.end method

.method public copyChunksFrom(Lar/com/hjg/pngj/chunks/ChunksList;I)V
    .locals 1
    .param p1, "chunks"    # Lar/com/hjg/pngj/chunks/ChunksList;
    .param p2, "copyMask"    # I

    .line 234
    iget-object v0, p0, Lar/com/hjg/pngj/PngWriter;->imgInfo:Lar/com/hjg/pngj/ImageInfo;

    invoke-static {p2, v0}, Lar/com/hjg/pngj/chunks/ChunkCopyBehaviour;->createPredicate(ILar/com/hjg/pngj/ImageInfo;)Lar/com/hjg/pngj/chunks/ChunkPredicate;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lar/com/hjg/pngj/PngWriter;->copyChunksFrom(Lar/com/hjg/pngj/chunks/ChunksList;Lar/com/hjg/pngj/chunks/ChunkPredicate;)V

    .line 235
    return-void
.end method

.method public copyChunksFrom(Lar/com/hjg/pngj/chunks/ChunksList;Lar/com/hjg/pngj/chunks/ChunkPredicate;)V
    .locals 2
    .param p1, "chunks"    # Lar/com/hjg/pngj/chunks/ChunksList;
    .param p2, "predicate"    # Lar/com/hjg/pngj/chunks/ChunkPredicate;

    .line 253
    iget-object v0, p0, Lar/com/hjg/pngj/PngWriter;->copyFromList:Lar/com/hjg/pngj/chunks/ChunksList;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 254
    sget-object v0, Lar/com/hjg/pngj/PngHelperInternal;->LOGGER:Ljava/util/logging/Logger;

    const-string v1, "copyChunksFrom should only be called once"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 255
    :cond_0
    if-eqz p2, :cond_1

    .line 257
    iput-object p1, p0, Lar/com/hjg/pngj/PngWriter;->copyFromList:Lar/com/hjg/pngj/chunks/ChunksList;

    .line 258
    iput-object p2, p0, Lar/com/hjg/pngj/PngWriter;->copyFromPredicate:Lar/com/hjg/pngj/chunks/ChunkPredicate;

    .line 259
    return-void

    .line 256
    :cond_1
    new-instance v0, Lar/com/hjg/pngj/PngjOutputException;

    const-string v1, "copyChunksFrom requires a predicate"

    invoke-direct {v0, v1}, Lar/com/hjg/pngj/PngjOutputException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected createPixelsWriter(Lar/com/hjg/pngj/ImageInfo;)Lar/com/hjg/pngj/pixels/PixelsWriter;
    .locals 1
    .param p1, "imginfo"    # Lar/com/hjg/pngj/ImageInfo;

    .line 441
    new-instance v0, Lar/com/hjg/pngj/pixels/PixelsWriterDefault;

    invoke-direct {v0, p1}, Lar/com/hjg/pngj/pixels/PixelsWriterDefault;-><init>(Lar/com/hjg/pngj/ImageInfo;)V

    .line 442
    .local v0, "pw":Lar/com/hjg/pngj/pixels/PixelsWriterDefault;
    return-object v0
.end method

.method public end()V
    .locals 2

    .line 281
    iget v0, p0, Lar/com/hjg/pngj/PngWriter;->rowNum:I

    iget-object v1, p0, Lar/com/hjg/pngj/PngWriter;->imgInfo:Lar/com/hjg/pngj/ImageInfo;

    iget v1, v1, Lar/com/hjg/pngj/ImageInfo;->rows:I

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_0

    .line 284
    :try_start_0
    iget-object v0, p0, Lar/com/hjg/pngj/PngWriter;->datStream:Lar/com/hjg/pngj/PngIDatChunkOutputStream;

    invoke-virtual {v0}, Lar/com/hjg/pngj/PngIDatChunkOutputStream;->flush()V

    .line 285
    invoke-direct {p0}, Lar/com/hjg/pngj/PngWriter;->writeLastChunks()V

    .line 286
    invoke-direct {p0}, Lar/com/hjg/pngj/PngWriter;->writeEndChunk()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 290
    invoke-virtual {p0}, Lar/com/hjg/pngj/PngWriter;->close()V

    .line 291
    nop

    .line 292
    return-void

    .line 290
    :catchall_0
    move-exception v0

    goto :goto_0

    .line 287
    :catch_0
    move-exception v0

    .line 288
    .local v0, "e":Ljava/io/IOException;
    :try_start_1
    new-instance v1, Lar/com/hjg/pngj/PngjOutputException;

    invoke-direct {v1, v0}, Lar/com/hjg/pngj/PngjOutputException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 290
    .end local v0    # "e":Ljava/io/IOException;
    :goto_0
    invoke-virtual {p0}, Lar/com/hjg/pngj/PngWriter;->close()V

    throw v0

    .line 282
    :cond_0
    new-instance v0, Lar/com/hjg/pngj/PngjOutputException;

    const-string v1, "all rows have not been written"

    invoke-direct {v0, v1}, Lar/com/hjg/pngj/PngjOutputException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getChunksList()Lar/com/hjg/pngj/chunks/ChunksListForWrite;
    .locals 1

    .line 323
    iget-object v0, p0, Lar/com/hjg/pngj/PngWriter;->chunksList:Lar/com/hjg/pngj/chunks/ChunksListForWrite;

    return-object v0
.end method

.method public getDebuginfo()Ljava/lang/String;
    .locals 1

    .line 450
    iget-object v0, p0, Lar/com/hjg/pngj/PngWriter;->debuginfo:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMetadata()Lar/com/hjg/pngj/chunks/PngMetadata;
    .locals 1

    .line 330
    iget-object v0, p0, Lar/com/hjg/pngj/PngWriter;->metadata:Lar/com/hjg/pngj/chunks/PngMetadata;

    return-object v0
.end method

.method public final getPixelsWriter()Lar/com/hjg/pngj/pixels/PixelsWriter;
    .locals 1

    .line 446
    iget-object v0, p0, Lar/com/hjg/pngj/PngWriter;->pixelsWriter:Lar/com/hjg/pngj/pixels/PixelsWriter;

    return-object v0
.end method

.method public queueChunk(Lar/com/hjg/pngj/chunks/PngChunk;)V
    .locals 3
    .param p1, "chunk"    # Lar/com/hjg/pngj/chunks/PngChunk;

    .line 207
    iget-object v0, p0, Lar/com/hjg/pngj/PngWriter;->chunksList:Lar/com/hjg/pngj/chunks/ChunksListForWrite;

    invoke-virtual {v0, p1}, Lar/com/hjg/pngj/chunks/ChunksListForWrite;->getQueuedEquivalent(Lar/com/hjg/pngj/chunks/PngChunk;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lar/com/hjg/pngj/chunks/PngChunk;

    .line 208
    .local v1, "other":Lar/com/hjg/pngj/chunks/PngChunk;
    invoke-virtual {p0}, Lar/com/hjg/pngj/PngWriter;->getChunksList()Lar/com/hjg/pngj/chunks/ChunksListForWrite;

    move-result-object v2

    invoke-virtual {v2, v1}, Lar/com/hjg/pngj/chunks/ChunksListForWrite;->removeChunk(Lar/com/hjg/pngj/chunks/PngChunk;)Z

    .line 209
    .end local v1    # "other":Lar/com/hjg/pngj/chunks/PngChunk;
    goto :goto_0

    .line 210
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_0
    iget-object v0, p0, Lar/com/hjg/pngj/PngWriter;->chunksList:Lar/com/hjg/pngj/chunks/ChunksListForWrite;

    invoke-virtual {v0, p1}, Lar/com/hjg/pngj/chunks/ChunksListForWrite;->queue(Lar/com/hjg/pngj/chunks/PngChunk;)Z

    .line 211
    return-void
.end method

.method public setCompLevel(I)V
    .locals 2
    .param p1, "complevel"    # I

    .line 351
    iget-object v0, p0, Lar/com/hjg/pngj/PngWriter;->pixelsWriter:Lar/com/hjg/pngj/pixels/PixelsWriter;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lar/com/hjg/pngj/pixels/PixelsWriter;->setDeflaterCompLevel(Ljava/lang/Integer;)V

    .line 352
    return-void
.end method

.method public setFilterPreserve(Z)V
    .locals 2
    .param p1, "filterPreserve"    # Z

    .line 358
    if-eqz p1, :cond_0

    .line 359
    iget-object v0, p0, Lar/com/hjg/pngj/PngWriter;->pixelsWriter:Lar/com/hjg/pngj/pixels/PixelsWriter;

    sget-object v1, Lar/com/hjg/pngj/FilterType;->FILTER_PRESERVE:Lar/com/hjg/pngj/FilterType;

    invoke-virtual {v0, v1}, Lar/com/hjg/pngj/pixels/PixelsWriter;->setFilterType(Lar/com/hjg/pngj/FilterType;)V

    goto :goto_0

    .line 360
    :cond_0
    iget-object v0, p0, Lar/com/hjg/pngj/PngWriter;->pixelsWriter:Lar/com/hjg/pngj/pixels/PixelsWriter;

    invoke-virtual {v0}, Lar/com/hjg/pngj/pixels/PixelsWriter;->getFilterType()Lar/com/hjg/pngj/FilterType;

    move-result-object v0

    if-nez v0, :cond_1

    .line 361
    iget-object v0, p0, Lar/com/hjg/pngj/PngWriter;->pixelsWriter:Lar/com/hjg/pngj/pixels/PixelsWriter;

    sget-object v1, Lar/com/hjg/pngj/FilterType;->FILTER_DEFAULT:Lar/com/hjg/pngj/FilterType;

    invoke-virtual {v0, v1}, Lar/com/hjg/pngj/pixels/PixelsWriter;->setFilterType(Lar/com/hjg/pngj/FilterType;)V

    .line 362
    :cond_1
    :goto_0
    return-void
.end method

.method public setFilterType(Lar/com/hjg/pngj/FilterType;)V
    .locals 1
    .param p1, "filterType"    # Lar/com/hjg/pngj/FilterType;

    .line 340
    iget-object v0, p0, Lar/com/hjg/pngj/PngWriter;->pixelsWriter:Lar/com/hjg/pngj/pixels/PixelsWriter;

    invoke-virtual {v0, p1}, Lar/com/hjg/pngj/pixels/PixelsWriter;->setFilterType(Lar/com/hjg/pngj/FilterType;)V

    .line 341
    return-void
.end method

.method public setIdatMaxSize(I)V
    .locals 0
    .param p1, "idatMaxSize"    # I

    .line 372
    iput p1, p0, Lar/com/hjg/pngj/PngWriter;->idatMaxSize:I

    .line 373
    return-void
.end method

.method public setShouldCloseStream(Z)V
    .locals 0
    .param p1, "shouldCloseStream"    # Z

    .line 381
    iput-boolean p1, p0, Lar/com/hjg/pngj/PngWriter;->shouldCloseStream:Z

    .line 382
    return-void
.end method

.method public writeRow(Lar/com/hjg/pngj/IImageLine;)V
    .locals 1
    .param p1, "imgline"    # Lar/com/hjg/pngj/IImageLine;

    .line 390
    iget v0, p0, Lar/com/hjg/pngj/PngWriter;->rowNum:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, p1, v0}, Lar/com/hjg/pngj/PngWriter;->writeRow(Lar/com/hjg/pngj/IImageLine;I)V

    .line 391
    return-void
.end method

.method public writeRow(Lar/com/hjg/pngj/IImageLine;I)V
    .locals 3
    .param p1, "imgline"    # Lar/com/hjg/pngj/IImageLine;
    .param p2, "rownumber"    # I

    .line 402
    iget v0, p0, Lar/com/hjg/pngj/PngWriter;->rowNum:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lar/com/hjg/pngj/PngWriter;->rowNum:I

    .line 403
    iget-object v1, p0, Lar/com/hjg/pngj/PngWriter;->imgInfo:Lar/com/hjg/pngj/ImageInfo;

    iget v1, v1, Lar/com/hjg/pngj/ImageInfo;->rows:I

    if-ne v0, v1, :cond_0

    .line 404
    const/4 v0, 0x0

    iput v0, p0, Lar/com/hjg/pngj/PngWriter;->rowNum:I

    .line 405
    :cond_0
    iget-object v0, p0, Lar/com/hjg/pngj/PngWriter;->imgInfo:Lar/com/hjg/pngj/ImageInfo;

    iget v0, v0, Lar/com/hjg/pngj/ImageInfo;->rows:I

    if-ne p2, v0, :cond_1

    .line 406
    const/4 p2, 0x0

    .line 407
    :cond_1
    if-ltz p2, :cond_3

    iget v0, p0, Lar/com/hjg/pngj/PngWriter;->rowNum:I

    if-ne v0, p2, :cond_2

    goto :goto_0

    .line 408
    :cond_2
    new-instance v0, Lar/com/hjg/pngj/PngjOutputException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "rows must be written in order: expected:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lar/com/hjg/pngj/PngWriter;->rowNum:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " passed:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lar/com/hjg/pngj/PngjOutputException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 410
    :cond_3
    :goto_0
    iget v0, p0, Lar/com/hjg/pngj/PngWriter;->rowNum:I

    if-nez v0, :cond_4

    .line 411
    iget v0, p0, Lar/com/hjg/pngj/PngWriter;->currentpass:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lar/com/hjg/pngj/PngWriter;->currentpass:I

    .line 412
    :cond_4
    if-nez p2, :cond_5

    iget v0, p0, Lar/com/hjg/pngj/PngWriter;->currentpass:I

    iget v1, p0, Lar/com/hjg/pngj/PngWriter;->passes:I

    if-ne v0, v1, :cond_5

    .line 413
    invoke-direct {p0}, Lar/com/hjg/pngj/PngWriter;->initIdat()V

    .line 414
    invoke-direct {p0}, Lar/com/hjg/pngj/PngWriter;->writeFirstChunks()V

    .line 416
    :cond_5
    iget-object v0, p0, Lar/com/hjg/pngj/PngWriter;->pixelsWriter:Lar/com/hjg/pngj/pixels/PixelsWriter;

    invoke-virtual {v0}, Lar/com/hjg/pngj/pixels/PixelsWriter;->getRowb()[B

    move-result-object v0

    .line 417
    .local v0, "rowb":[B
    invoke-interface {p1, v0}, Lar/com/hjg/pngj/IImageLine;->writeToPngRaw([B)V

    .line 418
    iget-object v1, p0, Lar/com/hjg/pngj/PngWriter;->pixelsWriter:Lar/com/hjg/pngj/pixels/PixelsWriter;

    invoke-virtual {v1, v0}, Lar/com/hjg/pngj/pixels/PixelsWriter;->processRow([B)V

    .line 420
    return-void
.end method

.method public writeRowInt([I)V
    .locals 2
    .param p1, "buf"    # [I

    .line 426
    new-instance v0, Lar/com/hjg/pngj/ImageLineInt;

    iget-object v1, p0, Lar/com/hjg/pngj/PngWriter;->imgInfo:Lar/com/hjg/pngj/ImageInfo;

    invoke-direct {v0, v1, p1}, Lar/com/hjg/pngj/ImageLineInt;-><init>(Lar/com/hjg/pngj/ImageInfo;[I)V

    invoke-virtual {p0, v0}, Lar/com/hjg/pngj/PngWriter;->writeRow(Lar/com/hjg/pngj/IImageLine;)V

    .line 427
    return-void
.end method

.method public writeRows(Lar/com/hjg/pngj/IImageLineSet;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lar/com/hjg/pngj/IImageLineSet<",
            "+",
            "Lar/com/hjg/pngj/IImageLine;",
            ">;)V"
        }
    .end annotation

    .line 397
    .local p1, "imglines":Lar/com/hjg/pngj/IImageLineSet;, "Lar/com/hjg/pngj/IImageLineSet<+Lar/com/hjg/pngj/IImageLine;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lar/com/hjg/pngj/PngWriter;->imgInfo:Lar/com/hjg/pngj/ImageInfo;

    iget v1, v1, Lar/com/hjg/pngj/ImageInfo;->rows:I

    if-ge v0, v1, :cond_0

    .line 398
    invoke-interface {p1, v0}, Lar/com/hjg/pngj/IImageLineSet;->getImageLine(I)Lar/com/hjg/pngj/IImageLine;

    move-result-object v1

    invoke-virtual {p0, v1}, Lar/com/hjg/pngj/PngWriter;->writeRow(Lar/com/hjg/pngj/IImageLine;)V

    .line 397
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 399
    .end local v0    # "i":I
    :cond_0
    return-void
.end method
