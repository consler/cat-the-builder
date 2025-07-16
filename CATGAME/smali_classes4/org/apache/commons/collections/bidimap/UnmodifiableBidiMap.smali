.class public final Lorg/apache/commons/collections/bidimap/UnmodifiableBidiMap;
.super Lorg/apache/commons/collections/bidimap/AbstractBidiMapDecorator;
.source "UnmodifiableBidiMap.java"

# interfaces
.implements Lorg/apache/commons/collections/Unmodifiable;


# instance fields
.field private inverse:Lorg/apache/commons/collections/bidimap/UnmodifiableBidiMap;


# direct methods
.method private constructor <init>(Lorg/apache/commons/collections/BidiMap;)V
    .locals 0

    .line 69
    invoke-direct {p0, p1}, Lorg/apache/commons/collections/bidimap/AbstractBidiMapDecorator;-><init>(Lorg/apache/commons/collections/BidiMap;)V

    return-void
.end method

.method public static decorate(Lorg/apache/commons/collections/BidiMap;)Lorg/apache/commons/collections/BidiMap;
    .locals 1

    .line 55
    instance-of v0, p0, Lorg/apache/commons/collections/Unmodifiable;

    if-eqz v0, :cond_0

    return-object p0

    .line 58
    :cond_0
    new-instance v0, Lorg/apache/commons/collections/bidimap/UnmodifiableBidiMap;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections/bidimap/UnmodifiableBidiMap;-><init>(Lorg/apache/commons/collections/BidiMap;)V

    return-object v0
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 74
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public entrySet()Ljava/util/Set;
    .locals 1

    .line 90
    invoke-super {p0}, Lorg/apache/commons/collections/bidimap/AbstractBidiMapDecorator;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 91
    invoke-static {v0}, Lorg/apache/commons/collections/map/UnmodifiableEntrySet;->decorate(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public inverseBidiMap()Lorg/apache/commons/collections/BidiMap;
    .locals 2

    .line 115
    iget-object v0, p0, Lorg/apache/commons/collections/bidimap/UnmodifiableBidiMap;->inverse:Lorg/apache/commons/collections/bidimap/UnmodifiableBidiMap;

    if-nez v0, :cond_0

    .line 116
    new-instance v0, Lorg/apache/commons/collections/bidimap/UnmodifiableBidiMap;

    invoke-virtual {p0}, Lorg/apache/commons/collections/bidimap/UnmodifiableBidiMap;->getBidiMap()Lorg/apache/commons/collections/BidiMap;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/commons/collections/BidiMap;->inverseBidiMap()Lorg/apache/commons/collections/BidiMap;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/collections/bidimap/UnmodifiableBidiMap;-><init>(Lorg/apache/commons/collections/BidiMap;)V

    iput-object v0, p0, Lorg/apache/commons/collections/bidimap/UnmodifiableBidiMap;->inverse:Lorg/apache/commons/collections/bidimap/UnmodifiableBidiMap;

    .line 117
    iput-object p0, v0, Lorg/apache/commons/collections/bidimap/UnmodifiableBidiMap;->inverse:Lorg/apache/commons/collections/bidimap/UnmodifiableBidiMap;

    .line 119
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections/bidimap/UnmodifiableBidiMap;->inverse:Lorg/apache/commons/collections/bidimap/UnmodifiableBidiMap;

    return-object v0
.end method

.method public keySet()Ljava/util/Set;
    .locals 1

    .line 95
    invoke-super {p0}, Lorg/apache/commons/collections/bidimap/AbstractBidiMapDecorator;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 96
    invoke-static {v0}, Lorg/apache/commons/collections/set/UnmodifiableSet;->decorate(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public mapIterator()Lorg/apache/commons/collections/MapIterator;
    .locals 1

    .line 110
    invoke-virtual {p0}, Lorg/apache/commons/collections/bidimap/UnmodifiableBidiMap;->getBidiMap()Lorg/apache/commons/collections/BidiMap;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/collections/BidiMap;->mapIterator()Lorg/apache/commons/collections/MapIterator;

    move-result-object v0

    .line 111
    invoke-static {v0}, Lorg/apache/commons/collections/iterators/UnmodifiableMapIterator;->decorate(Lorg/apache/commons/collections/MapIterator;)Lorg/apache/commons/collections/MapIterator;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 78
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 0

    .line 82
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 86
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public removeValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 106
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public values()Ljava/util/Collection;
    .locals 1

    .line 100
    invoke-super {p0}, Lorg/apache/commons/collections/bidimap/AbstractBidiMapDecorator;->values()Ljava/util/Collection;

    move-result-object v0

    .line 101
    invoke-static {v0}, Lorg/apache/commons/collections/collection/UnmodifiableCollection;->decorate(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method
