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
    .param p2, "x0"    # I
    .param p3, "x1"    # Ljava/lang/String;
    .param p4, "x2"    # J
    .param p6, "x3"    # Lar/com/hjg/pngj/ChunkReader$ChunkReaderMode;

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

    .line 194
    return-void
.end method

.method protected processData(I[BII)V
    .locals 2
    .param p1, "offsetinChhunk"    # I
    .param p2, "buf"    # [B
    .param p3, "off"    # I
    .param p4, "len"    # I

    .line 198
    new-instance v0, Lar/com/hjg/pngj/PngjExceptionInternal;

    const-string v1, "should never happen"

    invoke-direct {v0, v1}, Lar/com/hjg/pngj/PngjExceptionInternal;-><init>(Ljava/lang/String;)V

    throw v0
.end method
