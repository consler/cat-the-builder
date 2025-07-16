.class public final Lorg/apache/commons/collections/bidimap/UnmodifiableOrderedBidiMap;
.super Lorg/apache/commons/collections/bidimap/AbstractOrderedBidiMapDecorator;
.source "UnmodifiableOrderedBidiMap.java"

# interfaces
.implements Lorg/apache/commons/collections/Unmodifiable;


# instance fields
.field private inverse:Lorg/apache/commons/collections/bidimap/UnmodifiableOrderedBidiMap;


# direct methods
.method private constructor <init>(Lorg/apache/commons/collections/OrderedBidiMap;)V
    .locals 0

    .line 71
    invoke-direct {p0, p1}, Lorg/apache/commons/collections/bidimap/AbstractOrderedBidiMapDecorator;-><init>(Lorg/apache/commons/collections/OrderedBidiMap;)V

    return-void
.end method

.method public static decorate(Lorg/apache/commons/collections/OrderedBidiMap;)Lorg/apache/commons/collections/OrderedBidiMap;
    .locals 1

    .line 57
    instance-of v0, p0, Lorg/apache/commons/collections/Unmodifiable;

    if-eqz v0, :cond_0

    return-object p0

    .line 60
    :cond_0
    new-instance v0, Lorg/apache/commons/collections/bidimap/UnmodifiableOrderedBidiMap;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections/bidimap/UnmodifiableOrderedBidiMap;-><init>(Lorg/apache/commons/collections/OrderedBidiMap;)V

    return-object v0
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 76
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public entrySet()Ljava/util/Set;
    .locals 1

    .line 92
    invoke-super {p0}, Lorg/apache/commons/collections/bidimap/AbstractOrderedBidiMapDecorator;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 93
    invoke-static {v0}, Lorg/apache/commons/collections/map/UnmodifiableEntrySet;->decorate(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public inverseBidiMap()Lorg/apache/commons/collections/BidiMap;
    .locals 1

    .line 116
    invoke-virtual {p0}, Lorg/apache/commons/collections/bidimap/UnmodifiableOrderedBidiMap;->inverseOrderedBidiMap()Lorg/apache/commons/collections/OrderedBidiMap;

    move-result-object v0

    return-object v0
.end method

.method public inverseOrderedBidiMap()Lorg/apache/commons/collections/OrderedBidiMap;
    .locals 2

    .line 126
    iget-object v0, p0, Lorg/apache/commons/collections/bidimap/UnmodifiableOrderedBidiMap;->inverse:Lorg/apache/commons/collections/bidimap/UnmodifiableOrderedBidiMap;

    if-nez v0, :cond_0

    .line 127
    new-instance v0, Lorg/apache/commons/collections/bidimap/UnmodifiableOrderedBidiMap;

    invoke-virtual {p0}, Lorg/apache/commons/collections/bidimap/UnmodifiableOrderedBidiMap;->getOrderedBidiMap()Lorg/apache/commons/collections/OrderedBidiMap;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/commons/collections/OrderedBidiMap;->inverseOrderedBidiMap()Lorg/apache/commons/collections/OrderedBidiMap;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/collections/bidimap/UnmodifiableOrderedBidiMap;-><init>(Lorg/apache/commons/collections/OrderedBidiMap;)V

    iput-object v0, p0, Lorg/apache/commons/collections/bidimap/UnmodifiableOrderedBidiMap;->inverse:Lorg/apache/commons/collections/bidimap/UnmodifiableOrderedBidiMap;

    .line 128
    iput-object p0, v0, Lorg/apache/commons/collections/bidimap/UnmodifiableOrderedBidiMap;->inverse:Lorg/apache/commons/collections/bidimap/UnmodifiableOrderedBidiMap;

    .line 130
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections/bidimap/UnmodifiableOrderedBidiMap;->inverse:Lorg/apache/commons/collections/bidimap/UnmodifiableOrderedBidiMap;

    return-object v0
.end method

.method public keySet()Ljava/util/Set;
    .locals 1

    .line 97
    invoke-super {p0}, Lorg/apache/commons/collections/bidimap/AbstractOrderedBidiMapDecorator;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 98
    invoke-static {v0}, Lorg/apache/commons/collections/set/UnmodifiableSet;->decorate(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public mapIterator()Lorg/apache/commons/collections/MapIterator;
    .locals 1

    .line 112
    invoke-virtual {p0}, Lorg/apache/commons/collections/bidimap/UnmodifiableOrderedBidiMap;->orderedMapIterator()Lorg/apache/commons/collections/OrderedMapIterator;

    move-result-object v0

    return-object v0
.end method

.method public orderedMapIterator()Lorg/apache/commons/collections/OrderedMapIterator;
    .locals 1

    .line 121
    invoke-virtual {p0}, Lorg/apache/commons/collections/bidimap/UnmodifiableOrderedBidiMap;->getOrderedBidiMap()Lorg/apache/commons/collections/OrderedBidiMap;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/collections/OrderedBidiMap;->orderedMapIterator()Lorg/apache/commons/collections/OrderedMapIterator;

    move-result-object v0

    .line 122
    invoke-static {v0}, Lorg/apache/commons/collections/iterators/UnmodifiableOrderedMapIterator;->decorate(Lorg/apache/commons/collections/OrderedMapIterator;)Lorg/apache/commons/collections/OrderedMapIterator;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 80
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 0

    .line 84
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 88
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public removeValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 108
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public values()Ljava/util/Collection;
    .locals 1

    .line 102
    invoke-super {p0}, Lorg/apache/commons/collections/bidimap/AbstractOrderedBidiMapDecorator;->values()Ljava/util/Collection;

    move-result-object v0

    .line 103
    invoke-static {v0}, Lorg/apache/commons/collections/collection/UnmodifiableCollection;->decorate(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method
