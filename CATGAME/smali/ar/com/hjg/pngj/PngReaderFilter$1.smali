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

    .line 36
    iput-object p1, p0, Lar/com/hjg/pngj/PngReaderFilter$1;->this$0:Lar/com/hjg/pngj/PngReaderFilter;

    invoke-direct {p0, p2}, Lar/com/hjg/pngj/ChunkSeqReaderPng;-><init>(Z)V

    return-void
.end method


# virtual methods
.method protected postProcessChunk(Lar/com/hjg/pngj/ChunkReader;)V
    .locals 0

    .line 49
    invoke-super {p0, p1}, Lar/com/hjg/pngj/ChunkSeqReaderPng;->postProcessChunk(Lar/com/hjg/pngj/ChunkReader;)V

    return-void
.end method

.method protected shouldCheckCrc(ILjava/lang/String;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public shouldSkipContent(ILjava/lang/String;)Z
    .locals 0

    .line 39
    invoke-super {p0, p1, p2}, Lar/com/hjg/pngj/ChunkSeqReaderPng;->shouldSkipContent(ILjava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "IDAT"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method
