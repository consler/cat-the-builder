.class Lar/com/hjg/pngj/ChunkSeqReader$1;
.super Lar/com/hjg/pngj/DeflatedChunkReader;
.source "ChunkSeqReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lar/com/hjg/pngj/ChunkSeqReader;->startNewChunk(ILjava/lang/String;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lar/com/hjg/pngj/ChunkSeqReader;


# direct methods
.method constructor <init>(Lar/com/hjg/pngj/ChunkSeqReader;ILjava/lang/String;ZJLar/com/hjg/pngj/DeflatedChunksSet;)V
    .locals 7

    .line 165
    iput-object p1, p0, Lar/com/hjg/pngj/ChunkSeqReader$1;->this$0:Lar/com/hjg/pngj/ChunkSeqReader;

    move-object v0, p0

    move v1, p2

    move-object v2, p3

    move v3, p4

    move-wide v4, p5

    move-object v6, p7

    invoke-direct/range {v0 .. v6}, Lar/com/hjg/pngj/DeflatedChunkReader;-><init>(ILjava/lang/String;ZJLar/com/hjg/pngj/DeflatedChunksSet;)V

    return-void
.end method


# virtual methods
.method protected chunkDone()V
    .locals 1

    .line 168
    iget-object v0, p0, Lar/com/hjg/pngj/ChunkSeqReader$1;->this$0:Lar/com/hjg/pngj/ChunkSeqReader;

    invoke-virtual {v0, p0}, Lar/com/hjg/pngj/ChunkSeqReader;->postProcessChunk(Lar/com/hjg/pngj/ChunkReader;)V

    return-void
.end method
