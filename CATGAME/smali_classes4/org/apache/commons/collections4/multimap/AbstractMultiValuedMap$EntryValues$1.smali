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
    .locals 1

    .line 618
    iput-object p1, p0, Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap$EntryValues$1;->this$1:Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap$EntryValues;

    invoke-direct {p0}, Lorg/apache/commons/collections4/iterators/LazyIteratorChain;-><init>()V

    .line 620
    new-instance v0, Ljava/util/ArrayList;

    iget-object p1, p1, Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap$EntryValues;->this$0:Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap;

    invoke-virtual {p1}, Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap;->getMap()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap$EntryValues$1;->keysCol:Ljava/util/Collection;

    .line 621
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap$EntryValues$1;->keyIterator:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method protected nextIterator(I)Ljava/util/Iterator;
    .locals 4
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
    iget-object p1, p0, Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap$EntryValues$1;->keyIterator:Ljava/util/Iterator;

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 628
    :cond_0
    iget-object p1, p0, Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap$EntryValues$1;->keyIterator:Ljava/util/Iterator;

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    .line 629
    new-instance v0, Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap$EntryValues$1$1;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap$EntryValues$1$1;-><init>(Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap$EntryValues$1;Ljava/lang/Object;)V

    .line 637
    new-instance v1, Lorg/apache/commons/collections4/iterators/TransformIterator;

    new-instance v2, Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap$ValuesIterator;

    iget-object v3, p0, Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap$EntryValues$1;->this$1:Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap$EntryValues;

    iget-object v3, v3, Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap$EntryValues;->this$0:Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap;

    invoke-direct {v2, v3, p1}, Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap$ValuesIterator;-><init>(Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap;Ljava/lang/Object;)V

    invoke-direct {v1, v2, v0}, Lorg/apache/commons/collections4/iterators/TransformIterator;-><init>(Ljava/util/Iterator;Lorg/apache/commons/collections4/Transformer;)V

    return-object v1
.end method
