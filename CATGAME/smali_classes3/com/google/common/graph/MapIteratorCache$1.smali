.class Lcom/google/common/graph/MapIteratorCache$1;
.super Ljava/util/AbstractSet;
.source "MapIteratorCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/graph/MapIteratorCache;->unmodifiableKeySet()Ljava/util/Set;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet<",
        "TK;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/graph/MapIteratorCache;


# direct methods
.method constructor <init>(Lcom/google/common/graph/MapIteratorCache;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/common/graph/MapIteratorCache;

    .line 93
    .local p0, "this":Lcom/google/common/graph/MapIteratorCache$1;, "Lcom/google/common/graph/MapIteratorCache$1;"
    iput-object p1, p0, Lcom/google/common/graph/MapIteratorCache$1;->this$0:Lcom/google/common/graph/MapIteratorCache;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 120
    .local p0, "this":Lcom/google/common/graph/MapIteratorCache$1;, "Lcom/google/common/graph/MapIteratorCache$1;"
    iget-object v0, p0, Lcom/google/common/graph/MapIteratorCache$1;->this$0:Lcom/google/common/graph/MapIteratorCache;

    invoke-virtual {v0, p1}, Lcom/google/common/graph/MapIteratorCache;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public iterator()Lcom/google/common/collect/UnmodifiableIterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/UnmodifiableIterator<",
            "TK;>;"
        }
    .end annotation

    .line 96
    .local p0, "this":Lcom/google/common/graph/MapIteratorCache$1;, "Lcom/google/common/graph/MapIteratorCache$1;"
    iget-object v0, p0, Lcom/google/common/graph/MapIteratorCache$1;->this$0:Lcom/google/common/graph/MapIteratorCache;

    invoke-static {v0}, Lcom/google/common/graph/MapIteratorCache;->access$000(Lcom/google/common/graph/MapIteratorCache;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 98
    .local v0, "entryIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<TK;TV;>;>;"
    new-instance v1, Lcom/google/common/graph/MapIteratorCache$1$1;

    invoke-direct {v1, p0, v0}, Lcom/google/common/graph/MapIteratorCache$1$1;-><init>(Lcom/google/common/graph/MapIteratorCache$1;Ljava/util/Iterator;)V

    return-object v1
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .line 93
    .local p0, "this":Lcom/google/common/graph/MapIteratorCache$1;, "Lcom/google/common/graph/MapIteratorCache$1;"
    invoke-virtual {p0}, Lcom/google/common/graph/MapIteratorCache$1;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .line 115
    .local p0, "this":Lcom/google/common/graph/MapIteratorCache$1;, "Lcom/google/common/graph/MapIteratorCache$1;"
    iget-object v0, p0, Lcom/google/common/graph/MapIteratorCache$1;->this$0:Lcom/google/common/graph/MapIteratorCache;

    invoke-static {v0}, Lcom/google/common/graph/MapIteratorCache;->access$000(Lcom/google/common/graph/MapIteratorCache;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method
