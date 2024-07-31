.class Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap$EntryValues$1;
.super Lorg/apache/commons/collections4/iterators/LazyIteratorChain;
.source "AbstractMultiValuedMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap$EntryValues;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/commons/collections4/iterators/LazyIteratorChain<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final keyIterator:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "TK;>;"
        }
    .end annotation
.end field

.field final keysCol:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "TK;>;"
        }
    .end annotation
.end field

.field final synthetic this$1:Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap$EntryValues;


# direct methods
.method constructor <init>(Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap$EntryValues;)V
    .locals 2
    .param p1, "this$1"    # Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap$EntryValues;

    .line 618
    .local p0, "this":Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap$EntryValues$1;, "Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap$EntryValues$1;"
    iput-object p1, p0, Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap$EntryValues$1;->this$1:Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap$EntryValues;

    invoke-direct {p0}, Lorg/apache/commons/collections4/iterators/LazyIteratorChain;-><init>()V

    .line 620
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap$EntryValues$1;->this$1:Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap$EntryValues;

    iget-object v1, v1, Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap$EntryValues;->this$0:Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap;

    invoke-virtual {v1}, Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap;->getMap()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap$EntryValues$1;->keysCol:Ljava/util/Collection;

    .line 621
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap$EntryValues$1;->keyIterator:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method protected nextIterator(I)Ljava/util/Iterator;
    .locals 5
    .param p1, "count"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Iterator<",
            "+",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 625
    .local p0, "this":Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap$EntryValues$1;, "Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap$EntryValues$1;"
    iget-object v0, p0, Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap$EntryValues$1;->keyIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 626
    const/4 v0, 0x0

    return-object v0

    .line 628
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap$EntryValues$1;->keyIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 629
    .local v0, "key":Ljava/lang/Object;, "TK;"
    new-instance v1, Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap$EntryValues$1$1;

    invoke-direct {v1, p0, v0}, Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap$EntryValues$1$1;-><init>(Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap$EntryValues$1;Ljava/lang/Object;)V

    .line 637
    .local v1, "entryTransformer":Lorg/apache/commons/collections4/Transformer;, "Lorg/apache/commons/collections4/Transformer<TV;Ljava/util/Map$Entry<TK;TV;>;>;"
    new-instance v2, Lorg/apache/commons/collections4/iterators/TransformIterator;

    new-instance v3, Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap$ValuesIterator;

    iget-object v4, p0, Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap$EntryValues$1;->this$1:Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap$EntryValues;

    iget-object v4, v4, Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap$EntryValues;->this$0:Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap;

    invoke-direct {v3, v4, v0}, Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap$ValuesIterator;-><init>(Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap;Ljava/lang/Object;)V

    invoke-direct {v2, v3, v1}, Lorg/apache/commons/collections4/iterators/TransformIterator;-><init>(Ljava/util/Iterator;Lorg/apache/commons/collections4/Transformer;)V

    return-object v2
.end method
