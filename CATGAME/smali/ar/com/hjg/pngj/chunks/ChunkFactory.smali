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

    const/4 v0, 0x1

    .line 17
    invoke-direct {p0, v0}, Lar/com/hjg/pngj/chunks/ChunkFactory;-><init>(Z)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-boolean p1, p0, Lar/com/hjg/pngj/chunks/ChunkFactory;->parse:Z

    return-void
.end method


# virtual methods
.method public final createChunk(Lar/com/hjg/pngj/chunks/ChunkRaw;Lar/com/hjg/pngj/ImageInfo;)Lar/com/hjg/pngj/chunks/PngChunk;
    .locals 1

    .line 25
    iget-object v0, p1, Lar/com/hjg/pngj/chunks/ChunkRaw;->id:Ljava/lang/String;

    invoke-virtual {p0, v0, p2}, Lar/com/hjg/pngj/chunks/ChunkFactory;->createEmptyChunkKnown(Ljava/lang/String;Lar/com/hjg/pngj/ImageInfo;)Lar/com/hjg/pngj/chunks/PngChunk;

    move-result-object v0

    if-nez v0, :cond_0

    .line 27
    iget-object v0, p1, Lar/com/hjg/pngj/chunks/ChunkRaw;->id:Ljava/lang/String;

    invoke-virtual {p0, v0, p2}, Lar/com/hjg/pngj/chunks/ChunkFactory;->createEmptyChunkExtended(Ljava/lang/String;Lar/com/hjg/pngj/ImageInfo;)Lar/com/hjg/pngj/chunks/PngChunk;

    move-result-object v0

    :cond_0
    if-nez v0, :cond_1

    .line 29
    iget-object v0, p1, Lar/com/hjg/pngj/chunks/ChunkRaw;->id:Ljava/lang/String;

    invoke-virtual {p0, v0, p2}, Lar/com/hjg/pngj/chunks/ChunkFactory;->createEmptyChunkUnknown(Ljava/lang/String;Lar/com/hjg/pngj/ImageInfo;)Lar/com/hjg/pngj/chunks/PngChunk;

    move-result-object v0

    .line 30
    :cond_1
    invoke-virtual {v0, p1}, Lar/com/hjg/pngj/chunks/PngChunk;->setRaw(Lar/com/hjg/pngj/chunks/ChunkRaw;)V

    .line 31
    iget-boolean p2, p0, Lar/com/hjg/pngj/chunks/ChunkFactory;->parse:Z

    if-eqz p2, :cond_2

    iget-object p2, p1, Lar/com/hjg/pngj/chunks/ChunkRaw;->data:[B

    if-eqz p2, :cond_2

    .line 32
    invoke-virtual {v0, p1}, Lar/com/hjg/pngj/chunks/PngChunk;->parseFromRaw(Lar/com/hjg/pngj/chunks/ChunkRaw;)V

    :cond_2
    return-object v0
.end method

.method protected createEmptyChunkExtended(Ljava/lang/String;Lar/com/hjg/pngj/ImageInfo;)Lar/com/hjg/pngj/chunks/PngChunk;
    .locals 1

    const-string v0, "oFFs"

    .line 95
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    new-instance p1, Lar/com/hjg/pngj/chunks/PngChunkOFFS;

    invoke-direct {p1, p2}, Lar/com/hjg/pngj/chunks/PngChunkOFFS;-><init>(Lar/com/hjg/pngj/ImageInfo;)V

    return-object p1

    :cond_0
    const-string v0, "sTER"

    .line 97
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 98
    new-instance p1, Lar/com/hjg/pngj/chunks/PngChunkSTER;

    invoke-direct {p1, p2}, Lar/com/hjg/pngj/chunks/PngChunkSTER;-><init>(Lar/com/hjg/pngj/ImageInfo;)V

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method protected final createEmptyChunkKnown(Ljava/lang/String;Lar/com/hjg/pngj/ImageInfo;)Lar/com/hjg/pngj/chunks/PngChunk;
    .locals 1

    const-string v0, "IDAT"

    .line 37
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 38
    new-instance p1, Lar/com/hjg/pngj/chunks/PngChunkIDAT;

    invoke-direct {p1, p2}, Lar/com/hjg/pngj/chunks/PngChunkIDAT;-><init>(Lar/com/hjg/pngj/ImageInfo;)V

    return-object p1

    :cond_0
    const-string v0, "IHDR"

    .line 39
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 40
    new-instance p1, Lar/com/hjg/pngj/chunks/PngChunkIHDR;

    invoke-direct {p1, p2}, Lar/com/hjg/pngj/chunks/PngChunkIHDR;-><init>(Lar/com/hjg/pngj/ImageInfo;)V

    return-object p1

    :cond_1
    const-string v0, "PLTE"

    .line 41
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 42
    new-instance p1, Lar/com/hjg/pngj/chunks/PngChunkPLTE;

    invoke-direct {p1, p2}, Lar/com/hjg/pngj/chunks/PngChunkPLTE;-><init>(Lar/com/hjg/pngj/ImageInfo;)V

    return-object p1

    :cond_2
    const-string v0, "IEND"

    .line 43
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 44
    new-instance p1, Lar/com/hjg/pngj/chunks/PngChunkIEND;

    invoke-direct {p1, p2}, Lar/com/hjg/pngj/chunks/PngChunkIEND;-><init>(Lar/com/hjg/pngj/ImageInfo;)V

    return-object p1

    :cond_3
    const-string v0, "tEXt"

    .line 45
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 46
    new-instance p1, Lar/com/hjg/pngj/chunks/PngChunkTEXT;

    invoke-direct {p1, p2}, Lar/com/hjg/pngj/chunks/PngChunkTEXT;-><init>(Lar/com/hjg/pngj/ImageInfo;)V

    return-object p1

    :cond_4
    const-string v0, "iTXt"

    .line 47
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 48
    new-instance p1, Lar/com/hjg/pngj/chunks/PngChunkITXT;

    invoke-direct {p1, p2}, Lar/com/hjg/pngj/chunks/PngChunkITXT;-><init>(Lar/com/hjg/pngj/ImageInfo;)V

    return-object p1

    :cond_5
    const-string v0, "zTXt"

    .line 49
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 50
    new-instance p1, Lar/com/hjg/pngj/chunks/PngChunkZTXT;

    invoke-direct {p1, p2}, Lar/com/hjg/pngj/chunks/PngChunkZTXT;-><init>(Lar/com/hjg/pngj/ImageInfo;)V

    return-object p1

    :cond_6
    const-string v0, "bKGD"

    .line 51
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 52
    new-instance p1, Lar/com/hjg/pngj/chunks/PngChunkBKGD;

    invoke-direct {p1, p2}, Lar/com/hjg/pngj/chunks/PngChunkBKGD;-><init>(Lar/com/hjg/pngj/ImageInfo;)V

    return-object p1

    :cond_7
    const-string v0, "gAMA"

    .line 53
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 54
    new-instance p1, Lar/com/hjg/pngj/chunks/PngChunkGAMA;

    invoke-direct {p1, p2}, Lar/com/hjg/pngj/chunks/PngChunkGAMA;-><init>(Lar/com/hjg/pngj/ImageInfo;)V

    return-object p1

    :cond_8
    const-string v0, "pHYs"

    .line 55
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 56
    new-instance p1, Lar/com/hjg/pngj/chunks/PngChunkPHYS;

    invoke-direct {p1, p2}, Lar/com/hjg/pngj/chunks/PngChunkPHYS;-><init>(Lar/com/hjg/pngj/ImageInfo;)V

    return-object p1

    :cond_9
    const-string v0, "iCCP"

    .line 57
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 58
    new-instance p1, Lar/com/hjg/pngj/chunks/PngChunkICCP;

    invoke-direct {p1, p2}, Lar/com/hjg/pngj/chunks/PngChunkICCP;-><init>(Lar/com/hjg/pngj/ImageInfo;)V

    return-object p1

    :cond_a
    const-string v0, "tIME"

    .line 59
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 60
    new-instance p1, Lar/com/hjg/pngj/chunks/PngChunkTIME;

    invoke-direct {p1, p2}, Lar/com/hjg/pngj/chunks/PngChunkTIME;-><init>(Lar/com/hjg/pngj/ImageInfo;)V

    return-object p1

    :cond_b
    const-string v0, "tRNS"

    .line 61
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 62
    new-instance p1, Lar/com/hjg/pngj/chunks/PngChunkTRNS;

    invoke-direct {p1, p2}, Lar/com/hjg/pngj/chunks/PngChunkTRNS;-><init>(Lar/com/hjg/pngj/ImageInfo;)V

    return-object p1

    :cond_c
    const-string v0, "cHRM"

    .line 63
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 64
    new-instance p1, Lar/com/hjg/pngj/chunks/PngChunkCHRM;

    invoke-direct {p1, p2}, Lar/com/hjg/pngj/chunks/PngChunkCHRM;-><init>(Lar/com/hjg/pngj/ImageInfo;)V

    return-object p1

    :cond_d
    const-string v0, "sBIT"

    .line 65
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 66
    new-instance p1, Lar/com/hjg/pngj/chunks/PngChunkSBIT;

    invoke-direct {p1, p2}, Lar/com/hjg/pngj/chunks/PngChunkSBIT;-><init>(Lar/com/hjg/pngj/ImageInfo;)V

    return-object p1

    :cond_e
    const-string v0, "sRGB"

    .line 67
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 68
    new-instance p1, Lar/com/hjg/pngj/chunks/PngChunkSRGB;

    invoke-direct {p1, p2}, Lar/com/hjg/pngj/chunks/PngChunkSRGB;-><init>(Lar/com/hjg/pngj/ImageInfo;)V

    return-object p1

    :cond_f
    const-string v0, "hIST"

    .line 69
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 70
    new-instance p1, Lar/com/hjg/pngj/chunks/PngChunkHIST;

    invoke-direct {p1, p2}, Lar/com/hjg/pngj/chunks/PngChunkHIST;-><init>(Lar/com/hjg/pngj/ImageInfo;)V

    return-object p1

    :cond_10
    const-string v0, "sPLT"

    .line 71
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_11

    .line 72
    new-instance p1, Lar/com/hjg/pngj/chunks/PngChunkSPLT;

    invoke-direct {p1, p2}, Lar/com/hjg/pngj/chunks/PngChunkSPLT;-><init>(Lar/com/hjg/pngj/ImageInfo;)V

    return-object p1

    :cond_11
    const/4 p1, 0x0

    return-object p1
.end method

.method protected final createEmptyChunkUnknown(Ljava/lang/String;Lar/com/hjg/pngj/ImageInfo;)Lar/com/hjg/pngj/chunks/PngChunk;
    .locals 1

    .line 83
    new-instance v0, Lar/com/hjg/pngj/chunks/PngChunkUNKNOWN;

    invoke-direct {v0, p1, p2}, Lar/com/hjg/pngj/chunks/PngChunkUNKNOWN;-><init>(Ljava/lang/String;Lar/com/hjg/pngj/ImageInfo;)V

    return-object v0
.end method
