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
    .locals 0

    .line 600
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    invoke-direct {p0, p2}, Lorg/apache/commons/collections/iterators/AbstractIteratorDecorator;-><init>(Ljava/util/Iterator;)V

    const/4 p2, 0x0

    .line 597
    iput-object p2, p0, Lorg/apache/commons/collections/map/ListOrderedMap$ListOrderedIterator;->last:Ljava/lang/Object;

    .line 601
    iput-object p1, p0, Lorg/apache/commons/collections/map/ListOrderedMap$ListOrderedIterator;->parent:Lorg/apache/commons/collections/map/ListOrderedMap;

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
    new-instance v0, Lorg/apache/commons/collections/map/ListOrderedMap$ListOrderedMapEntry;

    iget-object v1, p0, Lorg/apache/commons/collections/map/ListOrderedMap$ListOrderedIterator;->parent:Lorg/apache/commons/collections/map/ListOrderedMap;

    iget-object v2, p0, Lorg/apache/commons/collections/map/ListOrderedMap$ListOrderedIterator;->last:Ljava/lang/Object;

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/collections/map/ListOrderedMap$ListOrderedMapEntry;-><init>(Lorg/apache/commons/collections/map/ListOrderedMap;Ljava/lang/Object;)V

    return-object v0
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

    return-void
.end method
