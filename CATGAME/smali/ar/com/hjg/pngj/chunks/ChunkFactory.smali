.class public Lar/com/hjg/pngj/chunks/ChunkFactory;
.super Ljava/lang/Object;
.source "ChunkFactory.java"

# interfaces
.implements Lar/com/hjg/pngj/IChunkFactory;


# instance fields
.field parse:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 17
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lar/com/hjg/pngj/chunks/ChunkFactory;-><init>(Z)V

    .line 18
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0
    .param p1, "parse"    # Z

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-boolean p1, p0, Lar/com/hjg/pngj/chunks/ChunkFactory;->parse:Z

    .line 22
    return-void
.end method


# virtual methods
.method public final createChunk(Lar/com/hjg/pngj/chunks/ChunkRaw;Lar/com/hjg/pngj/ImageInfo;)Lar/com/hjg/pngj/chunks/PngChunk;
    .locals 2
    .param p1, "chunkRaw"    # Lar/com/hjg/pngj/chunks/ChunkRaw;
    .param p2, "imgInfo"    # Lar/com/hjg/pngj/ImageInfo;

    .line 25
    iget-object v0, p1, Lar/com/hjg/pngj/chunks/ChunkRaw;->id:Ljava/lang/String;

    invoke-virtual {p0, v0, p2}, Lar/com/hjg/pngj/chunks/ChunkFactory;->createEmptyChunkKnown(Ljava/lang/String;Lar/com/hjg/pngj/ImageInfo;)Lar/com/hjg/pngj/chunks/PngChunk;

    move-result-object v0

    .line 26
    .local v0, "c":Lar/com/hjg/pngj/chunks/PngChunk;
    if-nez v0, :cond_0

    .line 27
    iget-object v1, p1, Lar/com/hjg/pngj/chunks/ChunkRaw;->id:Ljava/lang/String;

    invoke-virtual {p0, v1, p2}, Lar/com/hjg/pngj/chunks/ChunkFactory;->createEmptyChunkExtended(Ljava/lang/String;Lar/com/hjg/pngj/ImageInfo;)Lar/com/hjg/pngj/chunks/PngChunk;

    move-result-object v0

    .line 28
    :cond_0
    if-nez v0, :cond_1

    .line 29
    iget-object v1, p1, Lar/com/hjg/pngj/chunks/ChunkRaw;->id:Ljava/lang/String;

    invoke-virtual {p0, v1, p2}, Lar/com/hjg/pngj/chunks/ChunkFactory;->createEmptyChunkUnknown(Ljava/lang/String;Lar/com/hjg/pngj/ImageInfo;)Lar/com/hjg/pngj/chunks/PngChunk;

    move-result-object v0

    .line 30
    :cond_1
    invoke-virtual {v0, p1}, Lar/com/hjg/pngj/chunks/PngChunk;->setRaw(Lar/com/hjg/pngj/chunks/ChunkRaw;)V

    .line 31
    iget-boolean v1, p0, Lar/com/hjg/pngj/chunks/ChunkFactory;->parse:Z

    if-eqz v1, :cond_2

    iget-object v1, p1, Lar/com/hjg/pngj/chunks/ChunkRaw;->data:[B

    if-eqz v1, :cond_2

    .line 32
    invoke-virtual {v0, p1}, Lar/com/hjg/pngj/chunks/PngChunk;->parseFromRaw(Lar/com/hjg/pngj/chunks/ChunkRaw;)V

    .line 33
    :cond_2
    return-object v0
.end method

.method protected createEmptyChunkExtended(Ljava/lang/String;Lar/com/hjg/pngj/ImageInfo;)Lar/com/hjg/pngj/chunks/PngChunk;
    .locals 1
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "imgInfo"    # Lar/com/hjg/pngj/ImageInfo;

    .line 95
    const-string v0, "oFFs"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    new-instance v0, Lar/com/hjg/pngj/chunks/PngChunkOFFS;

    invoke-direct {v0, p2}, Lar/com/hjg/pngj/chunks/PngChunkOFFS;-><init>(Lar/com/hjg/pngj/ImageInfo;)V

    return-object v0

    .line 97
    :cond_0
    const-string v0, "sTER"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 98
    new-instance v0, Lar/com/hjg/pngj/chunks/PngChunkSTER;

    invoke-direct {v0, p2}, Lar/com/hjg/pngj/chunks/PngChunkSTER;-><init>(Lar/com/hjg/pngj/ImageInfo;)V

    return-object v0

    .line 99
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method protected final createEmptyChunkKnown(Ljava/lang/String;Lar/com/hjg/pngj/ImageInfo;)Lar/com/hjg/pngj/chunks/PngChunk;
    .locals 1
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "imgInfo"    # Lar/com/hjg/pngj/ImageInfo;

    .line 37
    const-string v0, "IDAT"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 38
    new-instance v0, Lar/com/hjg/pngj/chunks/PngChunkIDAT;

    invoke-direct {v0, p2}, Lar/com/hjg/pngj/chunks/PngChunkIDAT;-><init>(Lar/com/hjg/pngj/ImageInfo;)V

    return-object v0

    .line 39
    :cond_0
    const-string v0, "IHDR"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 40
    new-instance v0, Lar/com/hjg/pngj/chunks/PngChunkIHDR;

    invoke-direct {v0, p2}, Lar/com/hjg/pngj/chunks/PngChunkIHDR;-><init>(Lar/com/hjg/pngj/ImageInfo;)V

    return-object v0

    .line 41
    :cond_1
    const-string v0, "PLTE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 42
    new-instance v0, Lar/com/hjg/pngj/chunks/PngChunkPLTE;

    invoke-direct {v0, p2}, Lar/com/hjg/pngj/chunks/PngChunkPLTE;-><init>(Lar/com/hjg/pngj/ImageInfo;)V

    return-object v0

    .line 43
    :cond_2
    const-string v0, "IEND"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 44
    new-instance v0, Lar/com/hjg/pngj/chunks/PngChunkIEND;

    invoke-direct {v0, p2}, Lar/com/hjg/pngj/chunks/PngChunkIEND;-><init>(Lar/com/hjg/pngj/ImageInfo;)V

    return-object v0

    .line 45
    :cond_3
    const-string v0, "tEXt"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 46
    new-instance v0, Lar/com/hjg/pngj/chunks/PngChunkTEXT;

    invoke-direct {v0, p2}, Lar/com/hjg/pngj/chunks/PngChunkTEXT;-><init>(Lar/com/hjg/pngj/ImageInfo;)V

    return-object v0

    .line 47
    :cond_4
    const-string v0, "iTXt"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 48
    new-instance v0, Lar/com/hjg/pngj/chunks/PngChunkITXT;

    invoke-direct {v0, p2}, Lar/com/hjg/pngj/chunks/PngChunkITXT;-><init>(Lar/com/hjg/pngj/ImageInfo;)V

    return-object v0

    .line 49
    :cond_5
    const-string/jumbo v0, "zTXt"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 50
    new-instance v0, Lar/com/hjg/pngj/chunks/PngChunkZTXT;

    invoke-direct {v0, p2}, Lar/com/hjg/pngj/chunks/PngChunkZTXT;-><init>(Lar/com/hjg/pngj/ImageInfo;)V

    return-object v0

    .line 51
    :cond_6
    const-string v0, "bKGD"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 52
    new-instance v0, Lar/com/hjg/pngj/chunks/PngChunkBKGD;

    invoke-direct {v0, p2}, Lar/com/hjg/pngj/chunks/PngChunkBKGD;-><init>(Lar/com/hjg/pngj/ImageInfo;)V

    return-object v0

    .line 53
    :cond_7
    const-string v0, "gAMA"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 54
    new-instance v0, Lar/com/hjg/pngj/chunks/PngChunkGAMA;

    invoke-direct {v0, p2}, Lar/com/hjg/pngj/chunks/PngChunkGAMA;-><init>(Lar/com/hjg/pngj/ImageInfo;)V

    return-object v0

    .line 55
    :cond_8
    const-string v0, "pHYs"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 56
    new-instance v0, Lar/com/hjg/pngj/chunks/PngChunkPHYS;

    invoke-direct {v0, p2}, Lar/com/hjg/pngj/chunks/PngChunkPHYS;-><init>(Lar/com/hjg/pngj/ImageInfo;)V

    return-object v0

    .line 57
    :cond_9
    const-string v0, "iCCP"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 58
    new-instance v0, Lar/com/hjg/pngj/chunks/PngChunkICCP;

    invoke-direct {v0, p2}, Lar/com/hjg/pngj/chunks/PngChunkICCP;-><init>(Lar/com/hjg/pngj/ImageInfo;)V

    return-object v0

    .line 59
    :cond_a
    const-string v0, "tIME"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 60
    new-instance v0, Lar/com/hjg/pngj/chunks/PngChunkTIME;

    invoke-direct {v0, p2}, Lar/com/hjg/pngj/chunks/PngChunkTIME;-><init>(Lar/com/hjg/pngj/ImageInfo;)V

    return-object v0

    .line 61
    :cond_b
    const-string v0, "tRNS"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 62
    new-instance v0, Lar/com/hjg/pngj/chunks/PngChunkTRNS;

    invoke-direct {v0, p2}, Lar/com/hjg/pngj/chunks/PngChunkTRNS;-><init>(Lar/com/hjg/pngj/ImageInfo;)V

    return-object v0

    .line 63
    :cond_c
    const-string v0, "cHRM"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 64
    new-instance v0, Lar/com/hjg/pngj/chunks/PngChunkCHRM;

    invoke-direct {v0, p2}, Lar/com/hjg/pngj/chunks/PngChunkCHRM;-><init>(Lar/com/hjg/pngj/ImageInfo;)V

    return-object v0

    .line 65
    :cond_d
    const-string v0, "sBIT"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 66
    new-instance v0, Lar/com/hjg/pngj/chunks/PngChunkSBIT;

    invoke-direct {v0, p2}, Lar/com/hjg/pngj/chunks/PngChunkSBIT;-><init>(Lar/com/hjg/pngj/ImageInfo;)V

    return-object v0

    .line 67
    :cond_e
    const-string v0, "sRGB"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 68
    new-instance v0, Lar/com/hjg/pngj/chunks/PngChunkSRGB;

    invoke-direct {v0, p2}, Lar/com/hjg/pngj/chunks/PngChunkSRGB;-><init>(Lar/com/hjg/pngj/ImageInfo;)V

    return-object v0

    .line 69
    :cond_f
    const-string v0, "hIST"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 70
    new-instance v0, Lar/com/hjg/pngj/chunks/PngChunkHIST;

    invoke-direct {v0, p2}, Lar/com/hjg/pngj/chunks/PngChunkHIST;-><init>(Lar/com/hjg/pngj/ImageInfo;)V

    return-object v0

    .line 71
    :cond_10
    const-string v0, "sPLT"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 72
    new-instance v0, Lar/com/hjg/pngj/chunks/PngChunkSPLT;

    invoke-direct {v0, p2}, Lar/com/hjg/pngj/chunks/PngChunkSPLT;-><init>(Lar/com/hjg/pngj/ImageInfo;)V

    return-object v0

    .line 74
    :cond_11
    const/4 v0, 0x0

    return-object v0
.end method

.method protected final createEmptyChunkUnknown(Ljava/lang/String;Lar/com/hjg/pngj/ImageInfo;)Lar/com/hjg/pngj/chunks/PngChunk;
    .locals 1
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "imgInfo"    # Lar/com/hjg/pngj/ImageInfo;

    .line 83
    new-instance v0, Lar/com/hjg/pngj/chunks/PngChunkUNKNOWN;

    invoke-direct {v0, p1, p2}, Lar/com/hjg/pngj/chunks/PngChunkUNKNOWN;-><init>(Ljava/lang/String;Lar/com/hjg/pngj/ImageInfo;)V

    return-object v0
.end method
