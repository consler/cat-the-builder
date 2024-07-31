.class public final Lorg/apache/commons/collections4/bidimap/UnmodifiableOrderedBidiMap;
.super Lorg/apache/commons/collections4/bidimap/AbstractOrderedBidiMapDecorator;
.source "UnmodifiableOrderedBidiMap.java"

# interfaces
.implements Lorg/apache/commons/collections4/Unmodifiable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/commons/collections4/bidimap/AbstractOrderedBidiMapDecorator<",
        "TK;TV;>;",
        "Lorg/apache/commons/collections4/Unmodifiable;"
    }
.end annotation


# instance fields
.field private inverse:Lorg/apache/commons/collections4/bidimap/UnmodifiableOrderedBidiMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/collections4/bidimap/UnmodifiableOrderedBidiMap<",
            "TV;TK;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lorg/apache/commons/collections4/OrderedBidiMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/OrderedBidiMap<",
            "+TK;+TV;>;)V"
        }
    .end annotation

    .line 76
    .local p0, "this":Lorg/apache/commons/collections4/bidimap/UnmodifiableOrderedBidiMap;, "Lorg/apache/commons/collections4/bidimap/UnmodifiableOrderedBidiMap<TK;TV;>;"
    .local p1, "map":Lorg/apache/commons/collections4/OrderedBidiMap;, "Lorg/apache/commons/collections4/OrderedBidiMap<+TK;+TV;>;"
    invoke-direct {p0, p1}, Lorg/apache/commons/collections4/bidimap/AbstractOrderedBidiMapDecorator;-><init>(Lorg/apache/commons/collections4/OrderedBidiMap;)V

    .line 77
    return-void
.end method

.method public static unmodifiableOrderedBidiMap(Lorg/apache/commons/collections4/OrderedBidiMap;)Lorg/apache/commons/collections4/OrderedBidiMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/commons/collections4/OrderedBidiMap<",
            "+TK;+TV;>;)",
            "Lorg/apache/commons/collections4/OrderedBidiMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 59
    .local p0, "map":Lorg/apache/commons/collections4/OrderedBidiMap;, "Lorg/apache/commons/collections4/OrderedBidiMap<+TK;+TV;>;"
    instance-of v0, p0, Lorg/apache/commons/collections4/Unmodifiable;

    if-eqz v0, :cond_0

    .line 61
    move-object v0, p0

    .line 62
    .local v0, "tmpMap":Lorg/apache/commons/collections4/OrderedBidiMap;, "Lorg/apache/commons/collections4/OrderedBidiMap<TK;TV;>;"
    return-object v0

    .line 64
    .end local v0    # "tmpMap":Lorg/apache/commons/collections4/OrderedBidiMap;, "Lorg/apache/commons/collections4/OrderedBidiMap<TK;TV;>;"
    :cond_0
    new-instance v0, Lorg/apache/commons/collections4/bidimap/UnmodifiableOrderedBidiMap;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections4/bidimap/UnmodifiableOrderedBidiMap;-><init>(Lorg/apache/commons/collections4/OrderedBidiMap;)V

    return-object v0
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 82
    .local p0, "this":Lorg/apache/commons/collections4/bidimap/UnmodifiableOrderedBidiMap;, "Lorg/apache/commons/collections4/bidimap/UnmodifiableOrderedBidiMap<TK;TV;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public entrySet()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 102
    .local p0, "this":Lorg/apache/commons/collections4/bidimap/UnmodifiableOrderedBidiMap;, "Lorg/apache/commons/collections4/bidimap/UnmodifiableOrderedBidiMap<TK;TV;>;"
    invoke-super {p0}, Lorg/apache/commons/collections4/bidimap/AbstractOrderedBidiMapDecorator;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 103
    .local v0, "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<TK;TV;>;>;"
    invoke-static {v0}, Lorg/apache/commons/collections4/map/UnmodifiableEntrySet;->unmodifiableEntrySet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic inverseBidiMap()Lorg/apache/commons/collections4/BidiMap;
    .locals 1

    .line 39
    .local p0, "this":Lorg/apache/commons/collections4/bidimap/UnmodifiableOrderedBidiMap;, "Lorg/apache/commons/collections4/bidimap/UnmodifiableOrderedBidiMap<TK;TV;>;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/bidimap/UnmodifiableOrderedBidiMap;->inverseBidiMap()Lorg/apache/commons/collections4/OrderedBidiMap;

    move-result-object v0

    return-object v0
.end method

.method public inverseBidiMap()Lorg/apache/commons/collections4/OrderedBidiMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/collections4/OrderedBidiMap<",
            "TV;TK;>;"
        }
    .end annotation

    .line 126
    .local p0, "this":Lorg/apache/commons/collections4/bidimap/UnmodifiableOrderedBidiMap;, "Lorg/apache/commons/collections4/bidimap/UnmodifiableOrderedBidiMap<TK;TV;>;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/bidimap/UnmodifiableOrderedBidiMap;->inverseOrderedBidiMap()Lorg/apache/commons/collections4/OrderedBidiMap;

    move-result-object v0

    return-object v0
.end method

.method public inverseOrderedBidiMap()Lorg/apache/commons/collections4/OrderedBidiMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/collections4/OrderedBidiMap<",
            "TV;TK;>;"
        }
    .end annotation

    .line 142
    .local p0, "this":Lorg/apache/commons/collections4/bidimap/UnmodifiableOrderedBidiMap;, "Lorg/apache/commons/collections4/bidimap/UnmodifiableOrderedBidiMap<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/bidimap/UnmodifiableOrderedBidiMap;->inverse:Lorg/apache/commons/collections4/bidimap/UnmodifiableOrderedBidiMap;

    if-nez v0, :cond_0

    .line 143
    new-instance v0, Lorg/apache/commons/collections4/bidimap/UnmodifiableOrderedBidiMap;

    invoke-virtual {p0}, Lorg/apache/commons/collections4/bidimap/UnmodifiableOrderedBidiMap;->decorated()Lorg/apache/commons/collections4/OrderedBidiMap;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/commons/collections4/OrderedBidiMap;->inverseBidiMap()Lorg/apache/commons/collections4/OrderedBidiMap;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/collections4/bidimap/UnmodifiableOrderedBidiMap;-><init>(Lorg/apache/commons/collections4/OrderedBidiMap;)V

    iput-object v0, p0, Lorg/apache/commons/collections4/bidimap/UnmodifiableOrderedBidiMap;->inverse:Lorg/apache/commons/collections4/bidimap/UnmodifiableOrderedBidiMap;

    .line 144
    iput-object p0, v0, Lorg/apache/commons/collections4/bidimap/UnmodifiableOrderedBidiMap;->inverse:Lorg/apache/commons/collections4/bidimap/UnmodifiableOrderedBidiMap;

    .line 146
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections4/bidimap/UnmodifiableOrderedBidiMap;->inverse:Lorg/apache/commons/collections4/bidimap/UnmodifiableOrderedBidiMap;

    return-object v0
.end method

.method public keySet()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation

    .line 108
    .local p0, "this":Lorg/apache/commons/collections4/bidimap/UnmodifiableOrderedBidiMap;, "Lorg/apache/commons/collections4/bidimap/UnmodifiableOrderedBidiMap<TK;TV;>;"
    invoke-super {p0}, Lorg/apache/commons/collections4/bidimap/AbstractOrderedBidiMapDecorator;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 109
    .local v0, "set":Ljava/util/Set;, "Ljava/util/Set<TK;>;"
    invoke-static {v0}, Lorg/apache/commons/collections4/set/UnmodifiableSet;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic mapIterator()Lorg/apache/commons/collections4/MapIterator;
    .locals 1

    .line 39
    .local p0, "this":Lorg/apache/commons/collections4/bidimap/UnmodifiableOrderedBidiMap;, "Lorg/apache/commons/collections4/bidimap/UnmodifiableOrderedBidiMap<TK;TV;>;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/bidimap/UnmodifiableOrderedBidiMap;->mapIterator()Lorg/apache/commons/collections4/OrderedMapIterator;

    move-result-object v0

    return-object v0
.end method

.method public mapIterator()Lorg/apache/commons/collections4/OrderedMapIterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/collections4/OrderedMapIterator<",
            "TK;TV;>;"
        }
    .end annotation

    .line 132
    .local p0, "this":Lorg/apache/commons/collections4/bidimap/UnmodifiableOrderedBidiMap;, "Lorg/apache/commons/collections4/bidimap/UnmodifiableOrderedBidiMap<TK;TV;>;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/bidimap/UnmodifiableOrderedBidiMap;->decorated()Lorg/apache/commons/collections4/OrderedBidiMap;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/collections4/OrderedBidiMap;->mapIterator()Lorg/apache/commons/collections4/OrderedMapIterator;

    move-result-object v0

    .line 133
    .local v0, "it":Lorg/apache/commons/collections4/OrderedMapIterator;, "Lorg/apache/commons/collections4/OrderedMapIterator<TK;TV;>;"
    invoke-static {v0}, Lorg/apache/commons/collections4/iterators/UnmodifiableOrderedMapIterator;->unmodifiableOrderedMapIterator(Lorg/apache/commons/collections4/OrderedMapIterator;)Lorg/apache/commons/collections4/OrderedMapIterator;

    move-result-object v1

    return-object v1
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .line 87
    .local p0, "this":Lorg/apache/commons/collections4/bidimap/UnmodifiableOrderedBidiMap;, "Lorg/apache/commons/collections4/bidimap/UnmodifiableOrderedBidiMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+TK;+TV;>;)V"
        }
    .end annotation

    .line 92
    .local p0, "this":Lorg/apache/commons/collections4/bidimap/UnmodifiableOrderedBidiMap;, "Lorg/apache/commons/collections4/bidimap/UnmodifiableOrderedBidiMap<TK;TV;>;"
    .local p1, "mapToCopy":Ljava/util/Map;, "Ljava/util/Map<+TK;+TV;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 97
    .local p0, "this":Lorg/apache/commons/collections4/bidimap/UnmodifiableOrderedBidiMap;, "Lorg/apache/commons/collections4/bidimap/UnmodifiableOrderedBidiMap<TK;TV;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public removeValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TK;"
        }
    .end annotation

    .line 121
    .local p0, "this":Lorg/apache/commons/collections4/bidimap/UnmodifiableOrderedBidiMap;, "Lorg/apache/commons/collections4/bidimap/UnmodifiableOrderedBidiMap<TK;TV;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public bridge synthetic values()Ljava/util/Collection;
    .locals 1

    .line 39
    .local p0, "this":Lorg/apache/commons/collections4/bidimap/UnmodifiableOrderedBidiMap;, "Lorg/apache/commons/collections4/bidimap/UnmodifiableOrderedBidiMap<TK;TV;>;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/bidimap/UnmodifiableOrderedBidiMap;->values()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public values()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TV;>;"
        }
    .end annotation

    .line 114
    .local p0, "this":Lorg/apache/commons/collections4/bidimap/UnmodifiableOrderedBidiMap;, "Lorg/apache/commons/collections4/bidimap/UnmodifiableOrderedBidiMap<TK;TV;>;"
    invoke-super {p0}, Lorg/apache/commons/collections4/bidimap/AbstractOrderedBidiMapDecorator;->values()Ljava/util/Set;

    move-result-object v0

    .line 115
    .local v0, "set":Ljava/util/Set;, "Ljava/util/Set<TV;>;"
    invoke-static {v0}, Lorg/apache/commons/collections4/set/UnmodifiableSet;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    return-object v1
.end method
