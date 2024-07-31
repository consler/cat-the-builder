.class Lar/com/hjg/pngj/PngReaderFilter$1;
.super Lar/com/hjg/pngj/ChunkSeqReaderPng;
.source "PngReaderFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lar/com/hjg/pngj/PngReaderFilter;->createChunkSequenceReader()Lar/com/hjg/pngj/ChunkSeqReaderPng;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lar/com/hjg/pngj/PngReaderFilter;


# direct methods
.method constructor <init>(Lar/com/hjg/pngj/PngReaderFilter;Z)V
    .locals 0
    .param p2, "x0"    # Z

    .line 36
    iput-object p1, p0, Lar/com/hjg/pngj/PngReaderFilter$1;->this$0:Lar/com/hjg/pngj/PngReaderFilter;

    invoke-direct {p0, p2}, Lar/com/hjg/pngj/ChunkSeqReaderPng;-><init>(Z)V

    return-void
.end method


# virtual methods
.method protected postProcessChunk(Lar/com/hjg/pngj/ChunkReader;)V
    .locals 0
    .param p1, "chunkR"    # Lar/com/hjg/pngj/ChunkReader;

    .line 49
    invoke-super {p0, p1}, Lar/com/hjg/pngj/ChunkSeqReaderPng;->postProcessChunk(Lar/com/hjg/pngj/ChunkReader;)V

    .line 51
    return-void
.end method

.method protected shouldCheckCrc(ILjava/lang/String;)Z
    .locals 1
    .param p1, "len"    # I
    .param p2, "id"    # Ljava/lang/String;

    .line 44
    const/4 v0, 0x0

    return v0
.end method

.method public shouldSkipContent(ILjava/lang/String;)Z
    .locals 1
    .param p1, "len"    # I
    .param p2, "id"    # Ljava/lang/String;

    .line 39
    invoke-super {p0, p1, p2}, Lar/com/hjg/pngj/ChunkSeqReaderPng;->shouldSkipContent(ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "IDAT"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method
