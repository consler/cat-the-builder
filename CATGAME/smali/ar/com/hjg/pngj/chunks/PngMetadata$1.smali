.class Lar/com/hjg/pngj/chunks/PngMetadata$1;
.super Ljava/lang/Object;
.source "PngMetadata.java"

# interfaces
.implements Lar/com/hjg/pngj/chunks/ChunkPredicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lar/com/hjg/pngj/chunks/PngMetadata;->queueChunk(Lar/com/hjg/pngj/chunks/PngChunk;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lar/com/hjg/pngj/chunks/PngMetadata;

.field final synthetic val$c:Lar/com/hjg/pngj/chunks/PngChunk;


# direct methods
.method constructor <init>(Lar/com/hjg/pngj/chunks/PngMetadata;Lar/com/hjg/pngj/chunks/PngChunk;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lar/com/hjg/pngj/chunks/PngMetadata$1;->this$0:Lar/com/hjg/pngj/chunks/PngMetadata;

    iput-object p2, p0, Lar/com/hjg/pngj/chunks/PngMetadata$1;->val$c:Lar/com/hjg/pngj/chunks/PngChunk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public match(Lar/com/hjg/pngj/chunks/PngChunk;)Z
    .locals 1
    .param p1, "c2"    # Lar/com/hjg/pngj/chunks/PngChunk;

    .line 43
    iget-object v0, p0, Lar/com/hjg/pngj/chunks/PngMetadata$1;->val$c:Lar/com/hjg/pngj/chunks/PngChunk;

    invoke-static {v0, p1}, Lar/com/hjg/pngj/chunks/ChunkHelper;->equivalent(Lar/com/hjg/pngj/chunks/PngChunk;Lar/com/hjg/pngj/chunks/PngChunk;)Z

    move-result v0

    return v0
.end method
