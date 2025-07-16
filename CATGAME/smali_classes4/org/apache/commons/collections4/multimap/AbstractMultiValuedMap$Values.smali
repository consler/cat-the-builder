.class Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap$Values;
.super Ljava/util/AbstractCollection;
.source "AbstractMultiValuedMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap;
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
.field final synthetic this$0:Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap;


# direct methods
.method private constructor <init>(Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap;)V
    .locals 0

    .line 723
    iput-object p1, p0, Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap$Values;->this$0:Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap;

    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap;Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap$1;)V
    .locals 0

    .line 723
    invoke-direct {p0, p1}, Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap$Values;-><init>(Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap;)V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 740
    iget-object v0, p0, Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap$Values;->this$0:Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap;

    invoke-virtual {v0}, Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap;->clear()V

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

    .line 726
    new-instance v0, Lorg/apache/commons/collections4/iterators/IteratorChain;

    invoke-direct {v0}, Lorg/apache/commons/collections4/iterators/IteratorChain;-><init>()V

    .line 727
    iget-object v1, p0, Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap$Values;->this$0:Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap;

    invoke-virtual {v1}, Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 728
    new-instance v3, Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap$ValuesIterator;

    iget-object v4, p0, Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap$Values;->this$0:Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap;

    invoke-direct {v3, v4, v2}, Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap$ValuesIterator;-><init>(Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap;Ljava/lang/Object;)V

    invoke-virtual {v0, v3}, Lorg/apache/commons/collections4/iterators/IteratorChain;->addIterator(Ljava/util/Iterator;)V

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public size()I
    .locals 1

    .line 735
    iget-object v0, p0, Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap$Values;->this$0:Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap;

    invoke-virtual {v0}, Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap;->size()I

    move-result v0

    return v0
.end method
