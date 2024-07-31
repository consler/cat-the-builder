.class public abstract Lorg/apache/commons/collections/map/AbstractOrderedMapDecorator;
.super Lorg/apache/commons/collections/map/AbstractMapDecorator;
.source "AbstractOrderedMapDecorator.java"

# interfaces
.implements Lorg/apache/commons/collections/OrderedMap;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 48
    invoke-direct {p0}, Lorg/apache/commons/collections/map/AbstractMapDecorator;-><init>()V

    .line 49
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/collections/OrderedMap;)V
    .locals 0
    .param p1, "map"    # Lorg/apache/commons/collections/OrderedMap;

    .line 58
    invoke-direct {p0, p1}, Lorg/apache/commons/collections/map/AbstractMapDecorator;-><init>(Ljava/util/Map;)V

    .line 59
    return-void
.end method


# virtual methods
.method public firstKey()Ljava/lang/Object;
    .locals 1

    .line 72
    invoke-virtual {p0}, Lorg/apache/commons/collections/map/AbstractOrderedMapDecorator;->getOrderedMap()Lorg/apache/commons/collections/OrderedMap;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/collections/OrderedMap;->firstKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected getOrderedMap()Lorg/apache/commons/collections/OrderedMap;
    .locals 1

    .line 67
    iget-object v0, p0, Lorg/apache/commons/collections/map/AbstractOrderedMapDecorator;->map:Ljava/util/Map;

    check-cast v0, Lorg/apache/commons/collections/OrderedMap;

    return-object v0
.end method

.method public lastKey()Ljava/lang/Object;
    .locals 1

    .line 76
    invoke-virtual {p0}, Lorg/apache/commons/collections/map/AbstractOrderedMapDecorator;->getOrderedMap()Lorg/apache/commons/collections/OrderedMap;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/collections/OrderedMap;->lastKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public mapIterator()Lorg/apache/commons/collections/MapIterator;
    .locals 1

    .line 88
    invoke-virtual {p0}, Lorg/apache/commons/collections/map/AbstractOrderedMapDecorator;->getOrderedMap()Lorg/apache/commons/collections/OrderedMap;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/collections/OrderedMap;->mapIterator()Lorg/apache/commons/collections/MapIterator;

    move-result-object v0

    return-object v0
.end method

.method public nextKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    .line 80
    invoke-virtual {p0}, Lorg/apache/commons/collections/map/AbstractOrderedMapDecorator;->getOrderedMap()Lorg/apache/commons/collections/OrderedMap;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/apache/commons/collections/OrderedMap;->nextKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public orderedMapIterator()Lorg/apache/commons/collections/OrderedMapIterator;
    .locals 1

    .line 92
    invoke-virtual {p0}, Lorg/apache/commons/collections/map/AbstractOrderedMapDecorator;->getOrderedMap()Lorg/apache/commons/collections/OrderedMap;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/collections/OrderedMap;->orderedMapIterator()Lorg/apache/commons/collections/OrderedMapIterator;

    move-result-object v0

    return-object v0
.end method

.method public previousKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    .line 84
    invoke-virtual {p0}, Lorg/apache/commons/collections/map/AbstractOrderedMapDecorator;->getOrderedMap()Lorg/apache/commons/collections/OrderedMap;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/apache/commons/collections/OrderedMap;->previousKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
