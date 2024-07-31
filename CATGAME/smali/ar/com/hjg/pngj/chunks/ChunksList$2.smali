.class final Lar/com/hjg/pngj/chunks/ChunksList$2;
.super Ljava/lang/Object;
.source "ChunksList.java"

# interfaces
.implements Lar/com/hjg/pngj/chunks/ChunkPredicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lar/com/hjg/pngj/chunks/ChunksList;->getXById(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$id:Ljava/lang/String;

.field final synthetic val$innerid:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lar/com/hjg/pngj/chunks/ChunksList$2;->val$id:Ljava/lang/String;

    iput-object p2, p0, Lar/com/hjg/pngj/chunks/ChunksList$2;->val$innerid:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public match(Lar/com/hjg/pngj/chunks/PngChunk;)Z
    .locals 3
    .param p1, "c"    # Lar/com/hjg/pngj/chunks/PngChunk;

    .line 60
    iget-object v0, p1, Lar/com/hjg/pngj/chunks/PngChunk;->id:Ljava/lang/String;

    iget-object v1, p0, Lar/com/hjg/pngj/chunks/ChunksList$2;->val$id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 61
    return v1

    .line 62
    :cond_0
    instance-of v0, p1, Lar/com/hjg/pngj/chunks/PngChunkTextVar;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lar/com/hjg/pngj/chunks/PngChunkTextVar;

    invoke-virtual {v0}, Lar/com/hjg/pngj/chunks/PngChunkTextVar;->getKey()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lar/com/hjg/pngj/chunks/ChunksList$2;->val$innerid:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 63
    return v1

    .line 64
    :cond_1
    instance-of v0, p1, Lar/com/hjg/pngj/chunks/PngChunkSPLT;

    if-eqz v0, :cond_2

    move-object v0, p1

    check-cast v0, Lar/com/hjg/pngj/chunks/PngChunkSPLT;

    invoke-virtual {v0}, Lar/com/hjg/pngj/chunks/PngChunkSPLT;->getPalName()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lar/com/hjg/pngj/chunks/ChunksList$2;->val$innerid:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 65
    return v1

    .line 66
    :cond_2
    const/4 v0, 0x1

    return v0
.end method
