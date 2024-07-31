.class Lorg/apache/commons/collections/map/ListOrderedMap$ListOrderedIterator;
.super Lorg/apache/commons/collections/iterators/AbstractIteratorDecorator;
.source "ListOrderedMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections/map/ListOrderedMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ListOrderedIterator"
.end annotation


# instance fields
.field private last:Ljava/lang/Object;

.field private final parent:Lorg/apache/commons/collections/map/ListOrderedMap;


# direct methods
.method constructor <init>(Lorg/apache/commons/collections/map/ListOrderedMap;Ljava/util/List;)V
    .locals 1
    .param p1, "parent"    # Lorg/apache/commons/collections/map/ListOrderedMap;
    .param p2, "insertOrder"    # Ljava/util/List;

    .line 600
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/commons/collections/iterators/AbstractIteratorDecorator;-><init>(Ljava/util/Iterator;)V

    .line 597
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/collections/map/ListOrderedMap$ListOrderedIterator;->last:Ljava/lang/Object;

    .line 601
    iput-object p1, p0, Lorg/apache/commons/collections/map/ListOrderedMap$ListOrderedIterator;->parent:Lorg/apache/commons/collections/map/ListOrderedMap;

    .line 602
    return-void
.end method


# virtual methods
.method public next()Ljava/lang/Object;
    .locals 3

    .line 605
    invoke-super {p0}, Lorg/apache/commons/collections/iterators/AbstractIteratorDecorator;->next()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/collections/map/ListOrderedMap$ListOrderedIterator;->last:Ljava/lang/Object;

    .line 606
    new-instance v1, Lorg/apache/commons/collections/map/ListOrderedMap$ListOrderedMapEntry;

    iget-object v2, p0, Lorg/apache/commons/collections/map/ListOrderedMap$ListOrderedIterator;->parent:Lorg/apache/commons/collections/map/ListOrderedMap;

    invoke-direct {v1, v2, v0}, Lorg/apache/commons/collections/map/ListOrderedMap$ListOrderedMapEntry;-><init>(Lorg/apache/commons/collections/map/ListOrderedMap;Ljava/lang/Object;)V

    return-object v1
.end method

.method public remove()V
    .locals 2

    .line 610
    invoke-super {p0}, Lorg/apache/commons/collections/iterators/AbstractIteratorDecorator;->remove()V

    .line 611
    iget-object v0, p0, Lorg/apache/commons/collections/map/ListOrderedMap$ListOrderedIterator;->parent:Lorg/apache/commons/collections/map/ListOrderedMap;

    invoke-virtual {v0}, Lorg/apache/commons/collections/map/ListOrderedMap;->getMap()Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/commons/collections/map/ListOrderedMap$ListOrderedIterator;->last:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 612
    return-void
.end method
