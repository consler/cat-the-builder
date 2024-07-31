.class public Lar/com/hjg/pngj/chunks/ChunksListForWrite;
.super Lar/com/hjg/pngj/chunks/ChunksList;
.source "ChunksListForWrite.java"


# instance fields
.field private alreadyWrittenKeys:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final queuedChunks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lar/com/hjg/pngj/chunks/PngChunk;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lar/com/hjg/pngj/ImageInfo;)V
    .locals 1
    .param p1, "imfinfo"    # Lar/com/hjg/pngj/ImageInfo;

    .line 24
    invoke-direct {p0, p1}, Lar/com/hjg/pngj/chunks/ChunksList;-><init>(Lar/com/hjg/pngj/ImageInfo;)V

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lar/com/hjg/pngj/chunks/ChunksListForWrite;->queuedChunks:Ljava/util/List;

    .line 21
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lar/com/hjg/pngj/chunks/ChunksListForWrite;->alreadyWrittenKeys:Ljava/util/HashMap;

    .line 25
    return-void
.end method

.method private static shouldWrite(Lar/com/hjg/pngj/chunks/PngChunk;I)Z
    .locals 5
    .param p0, "c"    # Lar/com/hjg/pngj/chunks/PngChunk;
    .param p1, "currentGroup"    # I

    .line 109
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 110
    iget-object v0, p0, Lar/com/hjg/pngj/chunks/PngChunk;->id:Ljava/lang/String;

    const-string v1, "PLTE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 111
    :cond_0
    rem-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_8

    .line 114
    invoke-virtual {p0}, Lar/com/hjg/pngj/chunks/PngChunk;->getOrderingConstraint()Lar/com/hjg/pngj/chunks/PngChunk$ChunkOrderingConstraint;

    move-result-object v0

    invoke-virtual {v0}, Lar/com/hjg/pngj/chunks/PngChunk$ChunkOrderingConstraint;->mustGoBeforePLTE()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 115
    move v0, v1

    .local v0, "maxChunkGroup":I
    move v2, v1

    .local v2, "minChunkGroup":I
    goto :goto_1

    .line 116
    .end local v0    # "maxChunkGroup":I
    .end local v2    # "minChunkGroup":I
    :cond_1
    invoke-virtual {p0}, Lar/com/hjg/pngj/chunks/PngChunk;->getOrderingConstraint()Lar/com/hjg/pngj/chunks/PngChunk$ChunkOrderingConstraint;

    move-result-object v0

    invoke-virtual {v0}, Lar/com/hjg/pngj/chunks/PngChunk$ChunkOrderingConstraint;->mustGoBeforeIDAT()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 117
    const/4 v0, 0x3

    .line 118
    .restart local v0    # "maxChunkGroup":I
    invoke-virtual {p0}, Lar/com/hjg/pngj/chunks/PngChunk;->getOrderingConstraint()Lar/com/hjg/pngj/chunks/PngChunk$ChunkOrderingConstraint;

    move-result-object v2

    invoke-virtual {v2}, Lar/com/hjg/pngj/chunks/PngChunk$ChunkOrderingConstraint;->mustGoAfterPLTE()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x3

    goto :goto_0

    :cond_2
    move v2, v1

    .restart local v2    # "minChunkGroup":I
    :goto_0
    goto :goto_1

    .line 122
    .end local v0    # "maxChunkGroup":I
    .end local v2    # "minChunkGroup":I
    :cond_3
    const/4 v0, 0x5

    .line 123
    .restart local v0    # "maxChunkGroup":I
    const/4 v2, 0x1

    .line 126
    .restart local v2    # "minChunkGroup":I
    :goto_1
    move v3, v0

    .line 127
    .local v3, "preferred":I
    invoke-virtual {p0}, Lar/com/hjg/pngj/chunks/PngChunk;->hasPriority()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 128
    move v3, v2

    .line 129
    :cond_4
    invoke-static {p0}, Lar/com/hjg/pngj/chunks/ChunkHelper;->isUnknown(Lar/com/hjg/pngj/chunks/PngChunk;)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {p0}, Lar/com/hjg/pngj/chunks/PngChunk;->getChunkGroup()I

    move-result v4

    if-lez v4, :cond_5

    .line 130
    invoke-virtual {p0}, Lar/com/hjg/pngj/chunks/PngChunk;->getChunkGroup()I

    move-result v3

    .line 131
    :cond_5
    if-ne p1, v3, :cond_6

    .line 132
    return v1

    .line 133
    :cond_6
    if-le p1, v3, :cond_7

    if-gt p1, v0, :cond_7

    .line 134
    return v1

    .line 135
    :cond_7
    const/4 v1, 0x0

    return v1

    .line 112
    .end local v0    # "maxChunkGroup":I
    .end local v2    # "minChunkGroup":I
    .end local v3    # "preferred":I
    :cond_8
    new-instance v0, Lar/com/hjg/pngj/PngjOutputException;

    const-string v1, "bad chunk group?"

    invoke-direct {v0, v1}, Lar/com/hjg/pngj/PngjOutputException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getQueuedById(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p1, "id"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "+",
            "Lar/com/hjg/pngj/chunks/PngChunk;",
            ">;"
        }
    .end annotation

    .line 31
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lar/com/hjg/pngj/chunks/ChunksListForWrite;->getQueuedById(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getQueuedById(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "innerid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "+",
            "Lar/com/hjg/pngj/chunks/PngChunk;",
            ">;"
        }
    .end annotation

    .line 38
    iget-object v0, p0, Lar/com/hjg/pngj/chunks/ChunksListForWrite;->queuedChunks:Ljava/util/List;

    invoke-static {v0, p1, p2}, Lar/com/hjg/pngj/chunks/ChunksListForWrite;->getXById(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getQueuedById1(Ljava/lang/String;)Lar/com/hjg/pngj/chunks/PngChunk;
    .locals 1
    .param p1, "id"    # Ljava/lang/String;

    .line 64
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lar/com/hjg/pngj/chunks/ChunksListForWrite;->getQueuedById1(Ljava/lang/String;Z)Lar/com/hjg/pngj/chunks/PngChunk;

    move-result-object v0

    return-object v0
.end method

.method public getQueuedById1(Ljava/lang/String;Ljava/lang/String;Z)Lar/com/hjg/pngj/chunks/PngChunk;
    .locals 4
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "innerid"    # Ljava/lang/String;
    .param p3, "failIfMultiple"    # Z

    .line 45
    invoke-virtual {p0, p1, p2}, Lar/com/hjg/pngj/chunks/ChunksListForWrite;->getQueuedById(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 46
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<+Lar/com/hjg/pngj/chunks/PngChunk;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 47
    const/4 v1, 0x0

    return-object v1

    .line 48
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_2

    if-nez p3, :cond_1

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lar/com/hjg/pngj/chunks/PngChunk;

    invoke-virtual {v1}, Lar/com/hjg/pngj/chunks/PngChunk;->allowsMultiple()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 49
    :cond_1
    new-instance v1, Lar/com/hjg/pngj/PngjException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unexpected multiple chunks id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lar/com/hjg/pngj/PngjException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 50
    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lar/com/hjg/pngj/chunks/PngChunk;

    return-object v1
.end method

.method public getQueuedById1(Ljava/lang/String;Z)Lar/com/hjg/pngj/chunks/PngChunk;
    .locals 1
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "failIfMultiple"    # Z

    .line 57
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lar/com/hjg/pngj/chunks/ChunksListForWrite;->getQueuedById1(Ljava/lang/String;Ljava/lang/String;Z)Lar/com/hjg/pngj/chunks/PngChunk;

    move-result-object v0

    return-object v0
.end method

.method public getQueuedChunks()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lar/com/hjg/pngj/chunks/PngChunk;",
            ">;"
        }
    .end annotation

    .line 164
    iget-object v0, p0, Lar/com/hjg/pngj/chunks/ChunksListForWrite;->queuedChunks:Ljava/util/List;

    return-object v0
.end method

.method public getQueuedEquivalent(Lar/com/hjg/pngj/chunks/PngChunk;)Ljava/util/List;
    .locals 2
    .param p1, "c2"    # Lar/com/hjg/pngj/chunks/PngChunk;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lar/com/hjg/pngj/chunks/PngChunk;",
            ")",
            "Ljava/util/List<",
            "Lar/com/hjg/pngj/chunks/PngChunk;",
            ">;"
        }
    .end annotation

    .line 74
    iget-object v0, p0, Lar/com/hjg/pngj/chunks/ChunksListForWrite;->queuedChunks:Ljava/util/List;

    new-instance v1, Lar/com/hjg/pngj/chunks/ChunksListForWrite$1;

    invoke-direct {v1, p0, p1}, Lar/com/hjg/pngj/chunks/ChunksListForWrite$1;-><init>(Lar/com/hjg/pngj/chunks/ChunksListForWrite;Lar/com/hjg/pngj/chunks/PngChunk;)V

    invoke-static {v0, v1}, Lar/com/hjg/pngj/chunks/ChunkHelper;->filterList(Ljava/util/List;Lar/com/hjg/pngj/chunks/ChunkPredicate;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public queue(Lar/com/hjg/pngj/chunks/PngChunk;)Z
    .locals 1
    .param p1, "c"    # Lar/com/hjg/pngj/chunks/PngChunk;

    .line 101
    iget-object v0, p0, Lar/com/hjg/pngj/chunks/ChunksListForWrite;->queuedChunks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 102
    const/4 v0, 0x1

    return v0
.end method

.method public removeChunk(Lar/com/hjg/pngj/chunks/PngChunk;)Z
    .locals 1
    .param p1, "c"    # Lar/com/hjg/pngj/chunks/PngChunk;

    .line 88
    if-nez p1, :cond_0

    .line 89
    const/4 v0, 0x0

    return v0

    .line 90
    :cond_0
    iget-object v0, p0, Lar/com/hjg/pngj/chunks/ChunksListForWrite;->queuedChunks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 168
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ChunkList: written: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lar/com/hjg/pngj/chunks/ChunksListForWrite;->getChunks()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " queue: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lar/com/hjg/pngj/chunks/ChunksListForWrite;->queuedChunks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringFull()Ljava/lang/String;
    .locals 6

    .line 175
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lar/com/hjg/pngj/chunks/ChunksListForWrite;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 176
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "\n Written:\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    invoke-virtual {p0}, Lar/com/hjg/pngj/chunks/ChunksListForWrite;->getChunks()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const-string v3, "\n"

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lar/com/hjg/pngj/chunks/PngChunk;

    .line 178
    .local v2, "chunk":Lar/com/hjg/pngj/chunks/PngChunk;
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " G="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lar/com/hjg/pngj/chunks/PngChunk;->getChunkGroup()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    .end local v2    # "chunk":Lar/com/hjg/pngj/chunks/PngChunk;
    goto :goto_0

    .line 180
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_0
    iget-object v1, p0, Lar/com/hjg/pngj/chunks/ChunksListForWrite;->queuedChunks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 181
    const-string v1, " Queued:\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    iget-object v1, p0, Lar/com/hjg/pngj/chunks/ChunksListForWrite;->queuedChunks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1    # "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lar/com/hjg/pngj/chunks/PngChunk;

    .line 183
    .restart local v2    # "chunk":Lar/com/hjg/pngj/chunks/PngChunk;
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    .end local v2    # "chunk":Lar/com/hjg/pngj/chunks/PngChunk;
    goto :goto_1

    .line 187
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeChunks(Ljava/io/OutputStream;I)I
    .locals 8
    .param p1, "os"    # Ljava/io/OutputStream;
    .param p2, "currentGroup"    # I

    .line 139
    const/4 v0, 0x0

    .line 140
    .local v0, "cont":I
    iget-object v1, p0, Lar/com/hjg/pngj/chunks/ChunksListForWrite;->queuedChunks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 141
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lar/com/hjg/pngj/chunks/PngChunk;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 142
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lar/com/hjg/pngj/chunks/PngChunk;

    .line 143
    .local v2, "c":Lar/com/hjg/pngj/chunks/PngChunk;
    invoke-static {v2, p2}, Lar/com/hjg/pngj/chunks/ChunksListForWrite;->shouldWrite(Lar/com/hjg/pngj/chunks/PngChunk;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 144
    goto :goto_0

    .line 145
    :cond_0
    iget-object v3, v2, Lar/com/hjg/pngj/chunks/PngChunk;->id:Ljava/lang/String;

    invoke-static {v3}, Lar/com/hjg/pngj/chunks/ChunkHelper;->isCritical(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, v2, Lar/com/hjg/pngj/chunks/PngChunk;->id:Ljava/lang/String;

    const-string v4, "PLTE"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    .line 146
    :cond_1
    new-instance v3, Lar/com/hjg/pngj/PngjOutputException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "bad chunk queued: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lar/com/hjg/pngj/PngjOutputException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 147
    :cond_2
    :goto_1
    iget-object v3, p0, Lar/com/hjg/pngj/chunks/ChunksListForWrite;->alreadyWrittenKeys:Ljava/util/HashMap;

    iget-object v4, v2, Lar/com/hjg/pngj/chunks/PngChunk;->id:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v2}, Lar/com/hjg/pngj/chunks/PngChunk;->allowsMultiple()Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_2

    .line 148
    :cond_3
    new-instance v3, Lar/com/hjg/pngj/PngjOutputException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "duplicated chunk does not allow multiple: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lar/com/hjg/pngj/PngjOutputException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 149
    :cond_4
    :goto_2
    invoke-virtual {v2, p1}, Lar/com/hjg/pngj/chunks/PngChunk;->write(Ljava/io/OutputStream;)V

    .line 150
    iget-object v3, p0, Lar/com/hjg/pngj/chunks/ChunksListForWrite;->chunks:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 151
    iget-object v3, p0, Lar/com/hjg/pngj/chunks/ChunksListForWrite;->alreadyWrittenKeys:Ljava/util/HashMap;

    iget-object v4, v2, Lar/com/hjg/pngj/chunks/PngChunk;->id:Ljava/lang/String;

    iget-object v5, p0, Lar/com/hjg/pngj/chunks/ChunksListForWrite;->alreadyWrittenKeys:Ljava/util/HashMap;

    iget-object v6, v2, Lar/com/hjg/pngj/chunks/PngChunk;->id:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_5

    iget-object v5, p0, Lar/com/hjg/pngj/chunks/ChunksListForWrite;->alreadyWrittenKeys:Ljava/util/HashMap;

    iget-object v7, v2, Lar/com/hjg/pngj/chunks/PngChunk;->id:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    add-int/2addr v6, v5

    :cond_5
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    invoke-virtual {v2, p2}, Lar/com/hjg/pngj/chunks/PngChunk;->setChunkGroup(I)V

    .line 154
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 155
    nop

    .end local v2    # "c":Lar/com/hjg/pngj/chunks/PngChunk;
    add-int/lit8 v0, v0, 0x1

    .line 156
    goto/16 :goto_0

    .line 157
    :cond_6
    return v0
.end method
