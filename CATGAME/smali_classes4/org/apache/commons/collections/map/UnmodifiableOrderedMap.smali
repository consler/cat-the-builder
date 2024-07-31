.class public final Lorg/apache/commons/collections/map/UnmodifiableOrderedMap;
.super Lorg/apache/commons/collections/map/AbstractOrderedMapDecorator;
.source "UnmodifiableOrderedMap.java"

# interfaces
.implements Lorg/apache/commons/collections/Unmodifiable;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x70ea664defd625baL


# direct methods
.method private constructor <init>(Lorg/apache/commons/collections/OrderedMap;)V
    .locals 0
    .param p1, "map"    # Lorg/apache/commons/collections/OrderedMap;

    .line 74
    invoke-direct {p0, p1}, Lorg/apache/commons/collections/map/AbstractOrderedMapDecorator;-><init>(Lorg/apache/commons/collections/OrderedMap;)V

    .line 75
    return-void
.end method

.method public static decorate(Lorg/apache/commons/collections/OrderedMap;)Lorg/apache/commons/collections/OrderedMap;
    .locals 1
    .param p0, "map"    # Lorg/apache/commons/collections/OrderedMap;

    .line 60
    instance-of v0, p0, Lorg/apache/commons/collections/Unmodifiable;

    if-eqz v0, :cond_0

    .line 61
    return-object p0

    .line 63
    :cond_0
    new-instance v0, Lorg/apache/commons/collections/map/UnmodifiableOrderedMap;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections/map/UnmodifiableOrderedMap;-><init>(Lorg/apache/commons/collections/OrderedMap;)V

    return-object v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 1
    .param p1, "in"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 99
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 100
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Lorg/apache/commons/collections/map/UnmodifiableOrderedMap;->map:Ljava/util/Map;

    .line 101
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 1
    .param p1, "out"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 86
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 87
    iget-object v0, p0, Lorg/apache/commons/collections/map/UnmodifiableOrderedMap;->map:Ljava/util/Map;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 88
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 115
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public entrySet()Ljava/util/Set;
    .locals 2

    .line 131
    invoke-super {p0}, Lorg/apache/commons/collections/map/AbstractOrderedMapDecorator;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 132
    .local v0, "set":Ljava/util/Set;
    invoke-static {v0}, Lorg/apache/commons/collections/map/UnmodifiableEntrySet;->decorate(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    return-object v1
.end method

.method public keySet()Ljava/util/Set;
    .locals 2

    .line 136
    invoke-super {p0}, Lorg/apache/commons/collections/map/AbstractOrderedMapDecorator;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 137
    .local v0, "set":Ljava/util/Set;
    invoke-static {v0}, Lorg/apache/commons/collections/set/UnmodifiableSet;->decorate(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    return-object v1
.end method

.method public mapIterator()Lorg/apache/commons/collections/MapIterator;
    .locals 2

    .line 105
    invoke-virtual {p0}, Lorg/apache/commons/collections/map/UnmodifiableOrderedMap;->getOrderedMap()Lorg/apache/commons/collections/OrderedMap;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/collections/OrderedMap;->mapIterator()Lorg/apache/commons/collections/MapIterator;

    move-result-object v0

    .line 106
    .local v0, "it":Lorg/apache/commons/collections/MapIterator;
    invoke-static {v0}, Lorg/apache/commons/collections/iterators/UnmodifiableMapIterator;->decorate(Lorg/apache/commons/collections/MapIterator;)Lorg/apache/commons/collections/MapIterator;

    move-result-object v1

    return-object v1
.end method

.method public orderedMapIterator()Lorg/apache/commons/collections/OrderedMapIterator;
    .locals 2

    .line 110
    invoke-virtual {p0}, Lorg/apache/commons/collections/map/UnmodifiableOrderedMap;->getOrderedMap()Lorg/apache/commons/collections/OrderedMap;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/collections/OrderedMap;->orderedMapIterator()Lorg/apache/commons/collections/OrderedMapIterator;

    move-result-object v0

    .line 111
    .local v0, "it":Lorg/apache/commons/collections/OrderedMapIterator;
    invoke-static {v0}, Lorg/apache/commons/collections/iterators/UnmodifiableOrderedMapIterator;->decorate(Lorg/apache/commons/collections/OrderedMapIterator;)Lorg/apache/commons/collections/OrderedMapIterator;

    move-result-object v1

    return-object v1
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;

    .line 119
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 1
    .param p1, "mapToCopy"    # Ljava/util/Map;

    .line 123
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    .line 127
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public values()Ljava/util/Collection;
    .locals 2

    .line 141
    invoke-super {p0}, Lorg/apache/commons/collections/map/AbstractOrderedMapDecorator;->values()Ljava/util/Collection;

    move-result-object v0

    .line 142
    .local v0, "coll":Ljava/util/Collection;
    invoke-static {v0}, Lorg/apache/commons/collections/collection/UnmodifiableCollection;->decorate(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v1

    return-object v1
.end method
