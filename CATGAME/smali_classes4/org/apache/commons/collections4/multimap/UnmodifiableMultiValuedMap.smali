.class public final Lorg/apache/commons/collections4/multimap/UnmodifiableMultiValuedMap;
.super Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMapDecorator;
.source "UnmodifiableMultiValuedMap.java"

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
        "Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMapDecorator<",
        "TK;TV;>;",
        "Lorg/apache/commons/collections4/Unmodifiable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1337954L


# direct methods
.method private constructor <init>(Lorg/apache/commons/collections4/MultiValuedMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/MultiValuedMap<",
            "+TK;+TV;>;)V"
        }
    .end annotation

    .line 79
    .local p0, "this":Lorg/apache/commons/collections4/multimap/UnmodifiableMultiValuedMap;, "Lorg/apache/commons/collections4/multimap/UnmodifiableMultiValuedMap<TK;TV;>;"
    .local p1, "map":Lorg/apache/commons/collections4/MultiValuedMap;, "Lorg/apache/commons/collections4/MultiValuedMap<+TK;+TV;>;"
    invoke-direct {p0, p1}, Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMapDecorator;-><init>(Lorg/apache/commons/collections4/MultiValuedMap;)V

    .line 80
    return-void
.end method

.method public static unmodifiableMultiValuedMap(Lorg/apache/commons/collections4/MultiValuedMap;)Lorg/apache/commons/collections4/multimap/UnmodifiableMultiValuedMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/commons/collections4/MultiValuedMap<",
            "+TK;+TV;>;)",
            "Lorg/apache/commons/collections4/multimap/UnmodifiableMultiValuedMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 65
    .local p0, "map":Lorg/apache/commons/collections4/MultiValuedMap;, "Lorg/apache/commons/collections4/MultiValuedMap<+TK;+TV;>;"
    instance-of v0, p0, Lorg/apache/commons/collections4/Unmodifiable;

    if-eqz v0, :cond_0

    .line 66
    move-object v0, p0

    check-cast v0, Lorg/apache/commons/collections4/multimap/UnmodifiableMultiValuedMap;

    return-object v0

    .line 68
    :cond_0
    new-instance v0, Lorg/apache/commons/collections4/multimap/UnmodifiableMultiValuedMap;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections4/multimap/UnmodifiableMultiValuedMap;-><init>(Lorg/apache/commons/collections4/MultiValuedMap;)V

    return-object v0
.end method


# virtual methods
.method public asMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TK;",
            "Ljava/util/Collection<",
            "TV;>;>;"
        }
    .end annotation

    .line 129
    .local p0, "this":Lorg/apache/commons/collections4/multimap/UnmodifiableMultiValuedMap;, "Lorg/apache/commons/collections4/multimap/UnmodifiableMultiValuedMap<TK;TV;>;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/multimap/UnmodifiableMultiValuedMap;->decorated()Lorg/apache/commons/collections4/MultiValuedMap;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/collections4/MultiValuedMap;->asMap()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/collections4/map/UnmodifiableMap;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public clear()V
    .locals 1

    .line 94
    .local p0, "this":Lorg/apache/commons/collections4/multimap/UnmodifiableMultiValuedMap;, "Lorg/apache/commons/collections4/multimap/UnmodifiableMultiValuedMap<TK;TV;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public entries()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 114
    .local p0, "this":Lorg/apache/commons/collections4/multimap/UnmodifiableMultiValuedMap;, "Lorg/apache/commons/collections4/multimap/UnmodifiableMultiValuedMap<TK;TV;>;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/multimap/UnmodifiableMultiValuedMap;->decorated()Lorg/apache/commons/collections4/MultiValuedMap;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/collections4/MultiValuedMap;->entries()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/collections4/collection/UnmodifiableCollection;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    .line 99
    .local p0, "this":Lorg/apache/commons/collections4/multimap/UnmodifiableMultiValuedMap;, "Lorg/apache/commons/collections4/multimap/UnmodifiableMultiValuedMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/multimap/UnmodifiableMultiValuedMap;->decorated()Lorg/apache/commons/collections4/MultiValuedMap;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/apache/commons/collections4/MultiValuedMap;->get(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/collections4/collection/UnmodifiableCollection;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public keySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation

    .line 109
    .local p0, "this":Lorg/apache/commons/collections4/multimap/UnmodifiableMultiValuedMap;, "Lorg/apache/commons/collections4/multimap/UnmodifiableMultiValuedMap<TK;TV;>;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/multimap/UnmodifiableMultiValuedMap;->decorated()Lorg/apache/commons/collections4/MultiValuedMap;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/collections4/MultiValuedMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/collections4/set/UnmodifiableSet;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public keys()Lorg/apache/commons/collections4/MultiSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/collections4/MultiSet<",
            "TK;>;"
        }
    .end annotation

    .line 119
    .local p0, "this":Lorg/apache/commons/collections4/multimap/UnmodifiableMultiValuedMap;, "Lorg/apache/commons/collections4/multimap/UnmodifiableMultiValuedMap<TK;TV;>;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/multimap/UnmodifiableMultiValuedMap;->decorated()Lorg/apache/commons/collections4/MultiValuedMap;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/collections4/MultiValuedMap;->keys()Lorg/apache/commons/collections4/MultiSet;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/collections4/multiset/UnmodifiableMultiSet;->unmodifiableMultiSet(Lorg/apache/commons/collections4/MultiSet;)Lorg/apache/commons/collections4/MultiSet;

    move-result-object v0

    return-object v0
.end method

.method public mapIterator()Lorg/apache/commons/collections4/MapIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/collections4/MapIterator<",
            "TK;TV;>;"
        }
    .end annotation

    .line 134
    .local p0, "this":Lorg/apache/commons/collections4/multimap/UnmodifiableMultiValuedMap;, "Lorg/apache/commons/collections4/multimap/UnmodifiableMultiValuedMap<TK;TV;>;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/multimap/UnmodifiableMultiValuedMap;->decorated()Lorg/apache/commons/collections4/MultiValuedMap;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/collections4/MultiValuedMap;->mapIterator()Lorg/apache/commons/collections4/MapIterator;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/collections4/iterators/UnmodifiableMapIterator;->unmodifiableMapIterator(Lorg/apache/commons/collections4/MapIterator;)Lorg/apache/commons/collections4/MapIterator;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)Z"
        }
    .end annotation

    .line 104
    .local p0, "this":Lorg/apache/commons/collections4/multimap/UnmodifiableMultiValuedMap;, "Lorg/apache/commons/collections4/multimap/UnmodifiableMultiValuedMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public putAll(Ljava/lang/Object;Ljava/lang/Iterable;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/lang/Iterable<",
            "+TV;>;)Z"
        }
    .end annotation

    .line 139
    .local p0, "this":Lorg/apache/commons/collections4/multimap/UnmodifiableMultiValuedMap;, "Lorg/apache/commons/collections4/multimap/UnmodifiableMultiValuedMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TV;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public putAll(Ljava/util/Map;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+TK;+TV;>;)Z"
        }
    .end annotation

    .line 144
    .local p0, "this":Lorg/apache/commons/collections4/multimap/UnmodifiableMultiValuedMap;, "Lorg/apache/commons/collections4/multimap/UnmodifiableMultiValuedMap<TK;TV;>;"
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<+TK;+TV;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public putAll(Lorg/apache/commons/collections4/MultiValuedMap;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/MultiValuedMap<",
            "+TK;+TV;>;)Z"
        }
    .end annotation

    .line 149
    .local p0, "this":Lorg/apache/commons/collections4/multimap/UnmodifiableMultiValuedMap;, "Lorg/apache/commons/collections4/multimap/UnmodifiableMultiValuedMap<TK;TV;>;"
    .local p1, "map":Lorg/apache/commons/collections4/MultiValuedMap;, "Lorg/apache/commons/collections4/MultiValuedMap<+TK;+TV;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public remove(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    .line 84
    .local p0, "this":Lorg/apache/commons/collections4/multimap/UnmodifiableMultiValuedMap;, "Lorg/apache/commons/collections4/multimap/UnmodifiableMultiValuedMap<TK;TV;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public removeMapping(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "item"    # Ljava/lang/Object;

    .line 89
    .local p0, "this":Lorg/apache/commons/collections4/multimap/UnmodifiableMultiValuedMap;, "Lorg/apache/commons/collections4/multimap/UnmodifiableMultiValuedMap<TK;TV;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public values()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    .line 124
    .local p0, "this":Lorg/apache/commons/collections4/multimap/UnmodifiableMultiValuedMap;, "Lorg/apache/commons/collections4/multimap/UnmodifiableMultiValuedMap<TK;TV;>;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/multimap/UnmodifiableMultiValuedMap;->decorated()Lorg/apache/commons/collections4/MultiValuedMap;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/collections4/MultiValuedMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/collections4/collection/UnmodifiableCollection;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method
