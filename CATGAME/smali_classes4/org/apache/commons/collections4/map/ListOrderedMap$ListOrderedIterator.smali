.class Lorg/apache/commons/collections4/map/ListOrderedMap$ListOrderedIterator;
.super Lorg/apache/commons/collections4/iterators/AbstractUntypedIteratorDecorator;
.source "ListOrderedMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections4/map/ListOrderedMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ListOrderedIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/commons/collections4/iterators/AbstractUntypedIteratorDecorator<",
        "TK;",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field private last:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field private final parent:Lorg/apache/commons/collections4/map/ListOrderedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/collections4/map/ListOrderedMap<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lorg/apache/commons/collections4/map/ListOrderedMap;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/map/ListOrderedMap<",
            "TK;TV;>;",
            "Ljava/util/List<",
            "TK;>;)V"
        }
    .end annotation

    .line 684
    .local p0, "this":Lorg/apache/commons/collections4/map/ListOrderedMap$ListOrderedIterator;, "Lorg/apache/commons/collections4/map/ListOrderedMap$ListOrderedIterator<TK;TV;>;"
    .local p1, "parent":Lorg/apache/commons/collections4/map/ListOrderedMap;, "Lorg/apache/commons/collections4/map/ListOrderedMap<TK;TV;>;"
    .local p2, "insertOrder":Ljava/util/List;, "Ljava/util/List<TK;>;"
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/commons/collections4/iterators/AbstractUntypedIteratorDecorator;-><init>(Ljava/util/Iterator;)V

    .line 681
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/collections4/map/ListOrderedMap$ListOrderedIterator;->last:Ljava/lang/Object;

    .line 685
    iput-object p1, p0, Lorg/apache/commons/collections4/map/ListOrderedMap$ListOrderedIterator;->parent:Lorg/apache/commons/collections4/map/ListOrderedMap;

    .line 686
    return-void
.end method


# virtual methods
.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 679
    .local p0, "this":Lorg/apache/commons/collections4/map/ListOrderedMap$ListOrderedIterator;, "Lorg/apache/commons/collections4/map/ListOrderedMap$ListOrderedIterator<TK;TV;>;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/ListOrderedMap$ListOrderedIterator;->next()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljava/util/Map$Entry;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 690
    .local p0, "this":Lorg/apache/commons/collections4/map/ListOrderedMap$ListOrderedIterator;, "Lorg/apache/commons/collections4/map/ListOrderedMap$ListOrderedIterator<TK;TV;>;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/ListOrderedMap$ListOrderedIterator;->getIterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/collections4/map/ListOrderedMap$ListOrderedIterator;->last:Ljava/lang/Object;

    .line 691
    new-instance v1, Lorg/apache/commons/collections4/map/ListOrderedMap$ListOrderedMapEntry;

    iget-object v2, p0, Lorg/apache/commons/collections4/map/ListOrderedMap$ListOrderedIterator;->parent:Lorg/apache/commons/collections4/map/ListOrderedMap;

    invoke-direct {v1, v2, v0}, Lorg/apache/commons/collections4/map/ListOrderedMap$ListOrderedMapEntry;-><init>(Lorg/apache/commons/collections4/map/ListOrderedMap;Ljava/lang/Object;)V

    return-object v1
.end method

.method public remove()V
    .locals 2

    .line 696
    .local p0, "this":Lorg/apache/commons/collections4/map/ListOrderedMap$ListOrderedIterator;, "Lorg/apache/commons/collections4/map/ListOrderedMap$ListOrderedIterator<TK;TV;>;"
    invoke-super {p0}, Lorg/apache/commons/collections4/iterators/AbstractUntypedIteratorDecorator;->remove()V

    .line 697
    iget-object v0, p0, Lorg/apache/commons/collections4/map/ListOrderedMap$ListOrderedIterator;->parent:Lorg/apache/commons/collections4/map/ListOrderedMap;

    invoke-virtual {v0}, Lorg/apache/commons/collections4/map/ListOrderedMap;->decorated()Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/commons/collections4/map/ListOrderedMap$ListOrderedIterator;->last:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 698
    return-void
.end method
