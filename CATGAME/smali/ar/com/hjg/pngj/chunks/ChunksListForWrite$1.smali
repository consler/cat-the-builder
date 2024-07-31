.class Lar/com/hjg/pngj/chunks/ChunksListForWrite$1;
.super Ljava/lang/Object;
.source "ChunksListForWrite.java"

# interfaces
.implements Lar/com/hjg/pngj/chunks/ChunkPredicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lar/com/hjg/pngj/chunks/ChunksListForWrite;->getQueuedEquivalent(Lar/com/hjg/pngj/chunks/PngChunk;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lar/com/hjg/pngj/chunks/ChunksListForWrite;

.field final synthetic val$c2:Lar/com/hjg/pngj/chunks/PngChunk;


# direct methods
.method constructor <init>(Lar/com/hjg/pngj/chunks/ChunksListForWrite;Lar/com/hjg/pngj/chunks/PngChunk;)V
    .locals 0

    .line 74
    iput-object p1, p0, Lar/com/hjg/pngj/chunks/ChunksListForWrite$1;->this$0:Lar/com/hjg/pngj/chunks/ChunksListForWrite;

    iput-object p2, p0, Lar/com/hjg/pngj/chunks/ChunksListForWrite$1;->val$c2:Lar/com/hjg/pngj/chunks/PngChunk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public match(Lar/com/hjg/pngj/chunks/PngChunk;)Z
    .locals 1
    .param p1, "c"    # Lar/com/hjg/pngj/chunks/PngChunk;

    .line 76
    iget-object v0, p0, Lar/com/hjg/pngj/chunks/ChunksListForWrite$1;->val$c2:Lar/com/hjg/pngj/chunks/PngChunk;

    invoke-static {p1, v0}, Lar/com/hjg/pngj/chunks/ChunkHelper;->equivalent(Lar/com/hjg/pngj/chunks/PngChunk;Lar/com/hjg/pngj/chunks/PngChunk;)Z

    move-result v0

    return v0
.end method
