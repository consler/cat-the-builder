.class public abstract Lar/com/hjg/pngj/chunks/PngChunkSingle;
.super Lar/com/hjg/pngj/chunks/PngChunk;
.source "PngChunkSingle.java"


# direct methods
.method protected constructor <init>(Ljava/lang/String;Lar/com/hjg/pngj/ImageInfo;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "imgInfo"    # Lar/com/hjg/pngj/ImageInfo;

    .line 11
    invoke-direct {p0, p1, p2}, Lar/com/hjg/pngj/chunks/PngChunk;-><init>(Ljava/lang/String;Lar/com/hjg/pngj/ImageInfo;)V

    .line 12
    return-void
.end method


# virtual methods
.method public final allowsMultiple()Z
    .locals 1

    .line 15
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 28
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 29
    return v0

    .line 30
    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    .line 31
    return v1

    .line 32
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    .line 33
    return v1

    .line 34
    :cond_2
    move-object v2, p1

    check-cast v2, Lar/com/hjg/pngj/chunks/PngChunkSingle;

    .line 35
    .local v2, "other":Lar/com/hjg/pngj/chunks/PngChunkSingle;
    iget-object v3, p0, Lar/com/hjg/pngj/chunks/PngChunkSingle;->id:Ljava/lang/String;

    if-nez v3, :cond_3

    .line 36
    iget-object v3, v2, Lar/com/hjg/pngj/chunks/PngChunkSingle;->id:Ljava/lang/String;

    if-eqz v3, :cond_4

    .line 37
    return v1

    .line 38
    :cond_3
    iget-object v3, p0, Lar/com/hjg/pngj/chunks/PngChunkSingle;->id:Ljava/lang/String;

    iget-object v4, v2, Lar/com/hjg/pngj/chunks/PngChunkSingle;->id:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 39
    return v1

    .line 40
    :cond_4
    return v0
.end method

.method public hashCode()I
    .locals 4

    .line 20
    const/16 v0, 0x1f

    .line 21
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 22
    .local v1, "result":I
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Lar/com/hjg/pngj/chunks/PngChunkSingle;->id:Ljava/lang/String;

    if-nez v3, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lar/com/hjg/pngj/chunks/PngChunkSingle;->id:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_0
    add-int/2addr v2, v3

    .line 23
    .end local v1    # "result":I
    .local v2, "result":I
    return v2
.end method
