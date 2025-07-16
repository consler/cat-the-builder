.class public abstract Lar/com/hjg/pngj/chunks/PngChunkSingle;
.super Lar/com/hjg/pngj/chunks/PngChunk;
.source "PngChunkSingle.java"


# direct methods
.method protected constructor <init>(Ljava/lang/String;Lar/com/hjg/pngj/ImageInfo;)V
    .locals 0

    .line 11
    invoke-direct {p0, p1, p2}, Lar/com/hjg/pngj/chunks/PngChunk;-><init>(Ljava/lang/String;Lar/com/hjg/pngj/ImageInfo;)V

    return-void
.end method


# virtual methods
.method public final allowsMultiple()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    .line 32
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    return v1

    .line 34
    :cond_2
    check-cast p1, Lar/com/hjg/pngj/chunks/PngChunkSingle;

    .line 35
    iget-object v2, p0, Lar/com/hjg/pngj/chunks/PngChunkSingle;->id:Ljava/lang/String;

    if-nez v2, :cond_3

    .line 36
    iget-object p1, p1, Lar/com/hjg/pngj/chunks/PngChunkSingle;->id:Ljava/lang/String;

    if-eqz p1, :cond_4

    return v1

    .line 38
    :cond_3
    iget-object v2, p0, Lar/com/hjg/pngj/chunks/PngChunkSingle;->id:Ljava/lang/String;

    iget-object p1, p1, Lar/com/hjg/pngj/chunks/PngChunkSingle;->id:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    return v1

    :cond_4
    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 22
    iget-object v0, p0, Lar/com/hjg/pngj/chunks/PngChunkSingle;->id:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lar/com/hjg/pngj/chunks/PngChunkSingle;->id:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    const/16 v1, 0x1f

    add-int/2addr v1, v0

    return v1
.end method
