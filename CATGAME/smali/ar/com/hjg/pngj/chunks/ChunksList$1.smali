.class final Lar/com/hjg/pngj/chunks/ChunksList$1;
.super Ljava/lang/Object;
.source "ChunksList.java"

# interfaces
.implements Lar/com/hjg/pngj/chunks/ChunkPredicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lar/com/hjg/pngj/chunks/ChunksList;->getXById(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$id:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lar/com/hjg/pngj/chunks/ChunksList$1;->val$id:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public match(Lar/com/hjg/pngj/chunks/PngChunk;)Z
    .locals 1

    .line 54
    iget-object p1, p1, Lar/com/hjg/pngj/chunks/PngChunk;->id:Ljava/lang/String;

    iget-object v0, p0, Lar/com/hjg/pngj/chunks/ChunksList$1;->val$id:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
