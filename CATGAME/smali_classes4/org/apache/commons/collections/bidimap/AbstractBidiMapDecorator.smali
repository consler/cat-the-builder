.class public abstract Lorg/apache/commons/collections/bidimap/AbstractBidiMapDecorator;
.super Lorg/apache/commons/collections/map/AbstractMapDecorator;
.source "AbstractBidiMapDecorator.java"

# interfaces
.implements Lorg/apache/commons/collections/BidiMap;


# direct methods
.method protected constructor <init>(Lorg/apache/commons/collections/BidiMap;)V
    .locals 0

    .line 50
    invoke-direct {p0, p1}, Lorg/apache/commons/collections/map/AbstractMapDecorator;-><init>(Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method protected getBidiMap()Lorg/apache/commons/collections/BidiMap;
    .locals 1

    .line 59
    iget-object v0, p0, Lorg/apache/commons/collections/bidimap/AbstractBidiMapDecorator;->map:Ljava/util/Map;

    check-cast v0, Lorg/apache/commons/collections/BidiMap;

    return-object v0
.end method

.method public getKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 68
    invoke-virtual {p0}, Lorg/apache/commons/collections/bidimap/AbstractBidiMapDecorator;->getBidiMap()Lorg/apache/commons/collections/BidiMap;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/apache/commons/collections/BidiMap;->getKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public inverseBidiMap()Lorg/apache/commons/collections/BidiMap;
    .locals 1

    .line 76
    invoke-virtual {p0}, Lorg/apache/commons/collections/bidimap/AbstractBidiMapDecorator;->getBidiMap()Lorg/apache/commons/collections/BidiMap;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/collections/BidiMap;->inverseBidiMap()Lorg/apache/commons/collections/BidiMap;

    move-result-object v0

    return-object v0
.end method

.method public mapIterator()Lorg/apache/commons/collections/MapIterator;
    .locals 1

    .line 64
    invoke-virtual {p0}, Lorg/apache/commons/collections/bidimap/AbstractBidiMapDecorator;->getBidiMap()Lorg/apache/commons/collections/BidiMap;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/collections/BidiMap;->mapIterator()Lorg/apache/commons/collections/MapIterator;

    move-result-object v0

    return-object v0
.end method

.method public removeValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 72
    invoke-virtual {p0}, Lorg/apache/commons/collections/bidimap/AbstractBidiMapDecorator;->getBidiMap()Lorg/apache/commons/collections/BidiMap;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/apache/commons/collections/BidiMap;->removeValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
