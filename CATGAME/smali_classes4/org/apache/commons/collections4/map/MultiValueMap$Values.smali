.class Lorg/apache/commons/collections4/map/MultiValueMap$Values;
.super Ljava/util/AbstractCollection;
.source "MultiValueMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections4/map/MultiValueMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Values"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractCollection<",
        "TV;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/commons/collections4/map/MultiValueMap;


# direct methods
.method private constructor <init>(Lorg/apache/commons/collections4/map/MultiValueMap;)V
    .locals 0

    .line 496
    .local p0, "this":Lorg/apache/commons/collections4/map/MultiValueMap$Values;, "Lorg/apache/commons/collections4/map/MultiValueMap<TK;TV;>.Values;"
    iput-object p1, p0, Lorg/apache/commons/collections4/map/MultiValueMap$Values;->this$0:Lorg/apache/commons/collections4/map/MultiValueMap;

    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/commons/collections4/map/MultiValueMap;Lorg/apache/commons/collections4/map/MultiValueMap$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/commons/collections4/map/MultiValueMap;
    .param p2, "x1"    # Lorg/apache/commons/collections4/map/MultiValueMap$1;

    .line 496
    .local p0, "this":Lorg/apache/commons/collections4/map/MultiValueMap$Values;, "Lorg/apache/commons/collections4/map/MultiValueMap<TK;TV;>.Values;"
    invoke-direct {p0, p1}, Lorg/apache/commons/collections4/map/MultiValueMap$Values;-><init>(Lorg/apache/commons/collections4/map/MultiValueMap;)V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 513
    .local p0, "this":Lorg/apache/commons/collections4/map/MultiValueMap$Values;, "Lorg/apache/commons/collections4/map/MultiValueMap<TK;TV;>.Values;"
    iget-object v0, p0, Lorg/apache/commons/collections4/map/MultiValueMap$Values;->this$0:Lorg/apache/commons/collections4/map/MultiValueMap;

    invoke-virtual {v0}, Lorg/apache/commons/collections4/map/MultiValueMap;->clear()V

    .line 514
    return-void
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TV;>;"
        }
    .end annotation

    .line 499
    .local p0, "this":Lorg/apache/commons/collections4/map/MultiValueMap$Values;, "Lorg/apache/commons/collections4/map/MultiValueMap<TK;TV;>.Values;"
    new-instance v0, Lorg/apache/commons/collections4/iterators/IteratorChain;

    invoke-direct {v0}, Lorg/apache/commons/collections4/iterators/IteratorChain;-><init>()V

    .line 500
    .local v0, "chain":Lorg/apache/commons/collections4/iterators/IteratorChain;, "Lorg/apache/commons/collections4/iterators/IteratorChain<TV;>;"
    iget-object v1, p0, Lorg/apache/commons/collections4/map/MultiValueMap$Values;->this$0:Lorg/apache/commons/collections4/map/MultiValueMap;

    invoke-virtual {v1}, Lorg/apache/commons/collections4/map/MultiValueMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 501
    .local v2, "k":Ljava/lang/Object;, "TK;"
    new-instance v3, Lorg/apache/commons/collections4/map/MultiValueMap$ValuesIterator;

    iget-object v4, p0, Lorg/apache/commons/collections4/map/MultiValueMap$Values;->this$0:Lorg/apache/commons/collections4/map/MultiValueMap;

    invoke-direct {v3, v4, v2}, Lorg/apache/commons/collections4/map/MultiValueMap$ValuesIterator;-><init>(Lorg/apache/commons/collections4/map/MultiValueMap;Ljava/lang/Object;)V

    invoke-virtual {v0, v3}, Lorg/apache/commons/collections4/iterators/IteratorChain;->addIterator(Ljava/util/Iterator;)V

    .line 502
    .end local v2    # "k":Ljava/lang/Object;, "TK;"
    goto :goto_0

    .line 503
    :cond_0
    return-object v0
.end method

.method public size()I
    .locals 1

    .line 508
    .local p0, "this":Lorg/apache/commons/collections4/map/MultiValueMap$Values;, "Lorg/apache/commons/collections4/map/MultiValueMap<TK;TV;>.Values;"
    iget-object v0, p0, Lorg/apache/commons/collections4/map/MultiValueMap$Values;->this$0:Lorg/apache/commons/collections4/map/MultiValueMap;

    invoke-virtual {v0}, Lorg/apache/commons/collections4/map/MultiValueMap;->totalSize()I

    move-result v0

    return v0
.end method
