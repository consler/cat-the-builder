.class Lar/com/hjg/pngj/ChunkSeqReader$2;
.super Lar/com/hjg/pngj/ChunkReader;
.source "ChunkSeqReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lar/com/hjg/pngj/ChunkSeqReader;->createChunkReaderForNewChunk(Ljava/lang/String;IJZ)Lar/com/hjg/pngj/ChunkReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lar/com/hjg/pngj/ChunkSeqReader;


# direct methods
.method constructor <init>(Lar/com/hjg/pngj/ChunkSeqReader;ILjava/lang/String;JLar/com/hjg/pngj/ChunkReader$ChunkReaderMode;)V
    .locals 6

    .line 190
    iput-object p1, p0, Lar/com/hjg/pngj/ChunkSeqReader$2;->this$0:Lar/com/hjg/pngj/ChunkSeqReader;

    move-object v0, p0

    move v1, p2

    move-object v2, p3

    move-wide v3, p4

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lar/com/hjg/pngj/ChunkReader;-><init>(ILjava/lang/String;JLar/com/hjg/pngj/ChunkReader$ChunkReaderMode;)V

    return-void
.end method


# virtual methods
.method protected chunkDone()V
    .locals 1

    .line 193
    iget-object v0, p0, Lar/com/hjg/pngj/ChunkSeqReader$2;->this$0:Lar/com/hjg/pngj/ChunkSeqReader;

    invoke-virtual {v0, p0}, Lar/com/hjg/pngj/ChunkSeqReader;->postProcessChunk(Lar/com/hjg/pngj/ChunkReader;)V

    return-void
.end method

.method protected processData(I[BII)V
    .locals 0

    .line 198
    new-instance p1, Lar/com/hjg/pngj/PngjExceptionInternal;

    const-string p2, "should never happen"

    invoke-direct {p1, p2}, Lar/com/hjg/pngj/PngjExceptionInternal;-><init>(Ljava/lang/String;)V

    throw p1
.end method
