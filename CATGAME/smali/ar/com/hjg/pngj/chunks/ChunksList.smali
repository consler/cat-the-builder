.class public Lar/com/hjg/pngj/chunks/ChunksList;
.super Ljava/lang/Object;
.source "ChunksList.java"


# static fields
.field public static final CHUNK_GROUP_0_IDHR:I = 0x0

.field public static final CHUNK_GROUP_1_AFTERIDHR:I = 0x1

.field public static final CHUNK_GROUP_2_PLTE:I = 0x2

.field public static final CHUNK_GROUP_3_AFTERPLTE:I = 0x3

.field public static final CHUNK_GROUP_4_IDAT:I = 0x4

.field public static final CHUNK_GROUP_5_AFTERIDAT:I = 0x5

.field public static final CHUNK_GROUP_6_END:I = 0x6


# instance fields
.field chunks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lar/com/hjg/pngj/chunks/PngChunk;",
            ">;"
        }
    .end annotation
.end field

.field final imageInfo:Lar/com/hjg/pngj/ImageInfo;

.field withPlte:Z


# direct methods
.method public constructor <init>(Lar/com/hjg/pngj/ImageInfo;)V
    .locals 1
    .param p1, "imfinfo"    # Lar/com/hjg/pngj/ImageInfo;

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lar/com/hjg/pngj/chunks/ChunksList;->chunks:Ljava/util/List;

    .line 35
    const/4 v0, 0x0

    iput-boolean v0, p0, Lar/com/hjg/pngj/chunks/ChunksList;->withPlte:Z

    .line 38
    iput-object p1, p0, Lar/com/hjg/pngj/chunks/ChunksList;->imageInfo:Lar/com/hjg/pngj/ImageInfo;

    .line 39
    return-void
.end method

.method protected static getXById(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "innerid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lar/com/hjg/pngj/chunks/PngChunk;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lar/com/hjg/pngj/chunks/PngChunk;",
            ">;"
        }
    .end annotation

    .line 51
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<Lar/com/hjg/pngj/chunks/PngChunk;>;"
    if-nez p2, :cond_0

    .line 52
    new-instance v0, Lar/com/hjg/pngj/chunks/ChunksList$1;

    invoke-direct {v0, p1}, Lar/com/hjg/pngj/chunks/ChunksList$1;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0}, Lar/com/hjg/pngj/chunks/ChunkHelper;->filterList(Ljava/util/List;Lar/com/hjg/pngj/chunks/ChunkPredicate;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 58
    :cond_0
    new-instance v0, Lar/com/hjg/pngj/chunks/ChunksList$2;

    invoke-direct {v0, p1, p2}, Lar/com/hjg/pngj/chunks/ChunksList$2;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, v0}, Lar/com/hjg/pngj/chunks/ChunkHelper;->filterList(Ljava/util/List;Lar/com/hjg/pngj/chunks/ChunkPredicate;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public appendReadChunk(Lar/com/hjg/pngj/chunks/PngChunk;I)V
    .locals 2
    .param p1, "chunk"    # Lar/com/hjg/pngj/chunks/PngChunk;
    .param p2, "chunkGroup"    # I

    .line 75
    invoke-virtual {p1, p2}, Lar/com/hjg/pngj/chunks/PngChunk;->setChunkGroup(I)V

    .line 76
    iget-object v0, p0, Lar/com/hjg/pngj/chunks/ChunksList;->chunks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 77
    iget-object v0, p1, Lar/com/hjg/pngj/chunks/PngChunk;->id:Ljava/lang/String;

    const-string v1, "PLTE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    const/4 v0, 0x1

    iput-boolean v0, p0, Lar/com/hjg/pngj/chunks/ChunksList;->withPlte:Z

    .line 79
    :cond_0
    return-void
.end method

.method public getById(Ljava/lang/String;)Ljava/util/List;
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

    .line 88
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lar/com/hjg/pngj/chunks/ChunksList;->getById(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getById(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
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

    .line 99
    iget-object v0, p0, Lar/com/hjg/pngj/chunks/ChunksList;->chunks:Ljava/util/List;

    invoke-static {v0, p1, p2}, Lar/com/hjg/pngj/chunks/ChunksList;->getXById(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getById1(Ljava/lang/String;)Lar/com/hjg/pngj/chunks/PngChunk;
    .locals 1
    .param p1, "id"    # Ljava/lang/String;

    .line 109
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lar/com/hjg/pngj/chunks/ChunksList;->getById1(Ljava/lang/String;Z)Lar/com/hjg/pngj/chunks/PngChunk;

    move-result-object v0

    return-object v0
.end method

.method public getById1(Ljava/lang/String;Ljava/lang/String;Z)Lar/com/hjg/pngj/chunks/PngChunk;
    .locals 4
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "innerid"    # Ljava/lang/String;
    .param p3, "failIfMultiple"    # Z

    .line 129
    invoke-virtual {p0, p1, p2}, Lar/com/hjg/pngj/chunks/ChunksList;->getById(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 130
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<+Lar/com/hjg/pngj/chunks/PngChunk;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 131
    const/4 v1, 0x0

    return-object v1

    .line 132
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

    .line 133
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

    .line 134
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

.method public getById1(Ljava/lang/String;Z)Lar/com/hjg/pngj/chunks/PngChunk;
    .locals 1
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "failIfMultiple"    # Z

    .line 119
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lar/com/hjg/pngj/chunks/ChunksList;->getById1(Ljava/lang/String;Ljava/lang/String;Z)Lar/com/hjg/pngj/chunks/PngChunk;

    move-result-object v0

    return-object v0
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

    .line 46
    iget-object v0, p0, Lar/com/hjg/pngj/chunks/ChunksList;->chunks:Ljava/util/List;

    return-object v0
.end method

.method public getEquivalent(Lar/com/hjg/pngj/chunks/PngChunk;)Ljava/util/List;
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

    .line 144
    iget-object v0, p0, Lar/com/hjg/pngj/chunks/ChunksList;->chunks:Ljava/util/List;

    new-instance v1, Lar/com/hjg/pngj/chunks/ChunksList$3;

    invoke-direct {v1, p0, p1}, Lar/com/hjg/pngj/chunks/ChunksList$3;-><init>(Lar/com/hjg/pngj/chunks/ChunksList;Lar/com/hjg/pngj/chunks/PngChunk;)V

    invoke-static {v0, v1}, Lar/com/hjg/pngj/chunks/ChunkHelper;->filterList(Ljava/util/List;Lar/com/hjg/pngj/chunks/ChunkPredicate;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 152
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ChunkList: read: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lar/com/hjg/pngj/chunks/ChunksList;->chunks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringFull()Ljava/lang/String;
    .locals 5

    .line 159
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lar/com/hjg/pngj/chunks/ChunksList;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 160
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "\n Read:\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    iget-object v1, p0, Lar/com/hjg/pngj/chunks/ChunksList;->chunks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lar/com/hjg/pngj/chunks/PngChunk;

    .line 162
    .local v2, "chunk":Lar/com/hjg/pngj/chunks/PngChunk;
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " G="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lar/com/hjg/pngj/chunks/PngChunk;->getChunkGroup()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    .end local v2    # "chunk":Lar/com/hjg/pngj/chunks/PngChunk;
    goto :goto_0

    .line 164
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
