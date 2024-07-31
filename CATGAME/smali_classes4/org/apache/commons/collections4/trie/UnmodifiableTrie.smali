.class public Lorg/apache/commons/collections4/trie/UnmodifiableTrie;
.super Ljava/lang/Object;
.source "UnmodifiableTrie.java"

# interfaces
.implements Lorg/apache/commons/collections4/Trie;
.implements Ljava/io/Serializable;
.implements Lorg/apache/commons/collections4/Unmodifiable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/apache/commons/collections4/Trie<",
        "TK;TV;>;",
        "Ljava/io/Serializable;",
        "Lorg/apache/commons/collections4/Unmodifiable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x6350bb8ee6573cc7L


# instance fields
.field private final delegate:Lorg/apache/commons/collections4/Trie;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/collections4/Trie<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/apache/commons/collections4/Trie;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/Trie<",
            "TK;+TV;>;)V"
        }
    .end annotation

    .line 71
    .local p0, "this":Lorg/apache/commons/collections4/trie/UnmodifiableTrie;, "Lorg/apache/commons/collections4/trie/UnmodifiableTrie<TK;TV;>;"
    .local p1, "trie":Lorg/apache/commons/collections4/Trie;, "Lorg/apache/commons/collections4/Trie<TK;+TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    if-eqz p1, :cond_0

    .line 76
    move-object v0, p1

    .line 77
    .local v0, "tmpTrie":Lorg/apache/commons/collections4/Trie;, "Lorg/apache/commons/collections4/Trie<TK;TV;>;"
    iput-object v0, p0, Lorg/apache/commons/collections4/trie/UnmodifiableTrie;->delegate:Lorg/apache/commons/collections4/Trie;

    .line 78
    return-void

    .line 73
    .end local v0    # "tmpTrie":Lorg/apache/commons/collections4/Trie;, "Lorg/apache/commons/collections4/Trie<TK;TV;>;"
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Trie must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static unmodifiableTrie(Lorg/apache/commons/collections4/Trie;)Lorg/apache/commons/collections4/Trie;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/commons/collections4/Trie<",
            "TK;+TV;>;)",
            "Lorg/apache/commons/collections4/Trie<",
            "TK;TV;>;"
        }
    .end annotation

    .line 56
    .local p0, "trie":Lorg/apache/commons/collections4/Trie;, "Lorg/apache/commons/collections4/Trie<TK;+TV;>;"
    instance-of v0, p0, Lorg/apache/commons/collections4/Unmodifiable;

    if-eqz v0, :cond_0

    .line 58
    move-object v0, p0

    .line 59
    .local v0, "tmpTrie":Lorg/apache/commons/collections4/Trie;, "Lorg/apache/commons/collections4/Trie<TK;TV;>;"
    return-object v0

    .line 61
    .end local v0    # "tmpTrie":Lorg/apache/commons/collections4/Trie;, "Lorg/apache/commons/collections4/Trie<TK;TV;>;"
    :cond_0
    new-instance v0, Lorg/apache/commons/collections4/trie/UnmodifiableTrie;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections4/trie/UnmodifiableTrie;-><init>(Lorg/apache/commons/collections4/Trie;)V

    return-object v0
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 99
    .local p0, "this":Lorg/apache/commons/collections4/trie/UnmodifiableTrie;, "Lorg/apache/commons/collections4/trie/UnmodifiableTrie<TK;TV;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public comparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "-TK;>;"
        }
    .end annotation

    .line 174
    .local p0, "this":Lorg/apache/commons/collections4/trie/UnmodifiableTrie;, "Lorg/apache/commons/collections4/trie/UnmodifiableTrie<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/trie/UnmodifiableTrie;->delegate:Lorg/apache/commons/collections4/Trie;

    invoke-interface {v0}, Lorg/apache/commons/collections4/Trie;->comparator()Ljava/util/Comparator;

    move-result-object v0

    return-object v0
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    .line 104
    .local p0, "this":Lorg/apache/commons/collections4/trie/UnmodifiableTrie;, "Lorg/apache/commons/collections4/trie/UnmodifiableTrie<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/trie/UnmodifiableTrie;->delegate:Lorg/apache/commons/collections4/Trie;

    invoke-interface {v0, p1}, Lorg/apache/commons/collections4/Trie;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;

    .line 109
    .local p0, "this":Lorg/apache/commons/collections4/trie/UnmodifiableTrie;, "Lorg/apache/commons/collections4/trie/UnmodifiableTrie<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/trie/UnmodifiableTrie;->delegate:Lorg/apache/commons/collections4/Trie;

    invoke-interface {v0, p1}, Lorg/apache/commons/collections4/Trie;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public entrySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 84
    .local p0, "this":Lorg/apache/commons/collections4/trie/UnmodifiableTrie;, "Lorg/apache/commons/collections4/trie/UnmodifiableTrie<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/trie/UnmodifiableTrie;->delegate:Lorg/apache/commons/collections4/Trie;

    invoke-interface {v0}, Lorg/apache/commons/collections4/Trie;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;

    .line 202
    .local p0, "this":Lorg/apache/commons/collections4/trie/UnmodifiableTrie;, "Lorg/apache/commons/collections4/trie/UnmodifiableTrie<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/trie/UnmodifiableTrie;->delegate:Lorg/apache/commons/collections4/Trie;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public firstKey()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 144
    .local p0, "this":Lorg/apache/commons/collections4/trie/UnmodifiableTrie;, "Lorg/apache/commons/collections4/trie/UnmodifiableTrie<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/trie/UnmodifiableTrie;->delegate:Lorg/apache/commons/collections4/Trie;

    invoke-interface {v0}, Lorg/apache/commons/collections4/Trie;->firstKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 114
    .local p0, "this":Lorg/apache/commons/collections4/trie/UnmodifiableTrie;, "Lorg/apache/commons/collections4/trie/UnmodifiableTrie<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/trie/UnmodifiableTrie;->delegate:Lorg/apache/commons/collections4/Trie;

    invoke-interface {v0, p1}, Lorg/apache/commons/collections4/Trie;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 197
    .local p0, "this":Lorg/apache/commons/collections4/trie/UnmodifiableTrie;, "Lorg/apache/commons/collections4/trie/UnmodifiableTrie<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/trie/UnmodifiableTrie;->delegate:Lorg/apache/commons/collections4/Trie;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public headMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/SortedMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 149
    .local p0, "this":Lorg/apache/commons/collections4/trie/UnmodifiableTrie;, "Lorg/apache/commons/collections4/trie/UnmodifiableTrie<TK;TV;>;"
    .local p1, "toKey":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Lorg/apache/commons/collections4/trie/UnmodifiableTrie;->delegate:Lorg/apache/commons/collections4/Trie;

    invoke-interface {v0, p1}, Lorg/apache/commons/collections4/Trie;->headMap(Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSortedMap(Ljava/util/SortedMap;)Ljava/util/SortedMap;

    move-result-object v0

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 119
    .local p0, "this":Lorg/apache/commons/collections4/trie/UnmodifiableTrie;, "Lorg/apache/commons/collections4/trie/UnmodifiableTrie<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/trie/UnmodifiableTrie;->delegate:Lorg/apache/commons/collections4/Trie;

    invoke-interface {v0}, Lorg/apache/commons/collections4/Trie;->isEmpty()Z

    move-result v0

    return v0
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

    .line 89
    .local p0, "this":Lorg/apache/commons/collections4/trie/UnmodifiableTrie;, "Lorg/apache/commons/collections4/trie/UnmodifiableTrie<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/trie/UnmodifiableTrie;->delegate:Lorg/apache/commons/collections4/Trie;

    invoke-interface {v0}, Lorg/apache/commons/collections4/Trie;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public lastKey()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 154
    .local p0, "this":Lorg/apache/commons/collections4/trie/UnmodifiableTrie;, "Lorg/apache/commons/collections4/trie/UnmodifiableTrie<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/trie/UnmodifiableTrie;->delegate:Lorg/apache/commons/collections4/Trie;

    invoke-interface {v0}, Lorg/apache/commons/collections4/Trie;->lastKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mapIterator()Lorg/apache/commons/collections4/MapIterator;
    .locals 1

    .line 39
    .local p0, "this":Lorg/apache/commons/collections4/trie/UnmodifiableTrie;, "Lorg/apache/commons/collections4/trie/UnmodifiableTrie<TK;TV;>;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/trie/UnmodifiableTrie;->mapIterator()Lorg/apache/commons/collections4/OrderedMapIterator;

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

    .line 180
    .local p0, "this":Lorg/apache/commons/collections4/trie/UnmodifiableTrie;, "Lorg/apache/commons/collections4/trie/UnmodifiableTrie<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/trie/UnmodifiableTrie;->delegate:Lorg/apache/commons/collections4/Trie;

    invoke-interface {v0}, Lorg/apache/commons/collections4/Trie;->mapIterator()Lorg/apache/commons/collections4/OrderedMapIterator;

    move-result-object v0

    .line 181
    .local v0, "it":Lorg/apache/commons/collections4/OrderedMapIterator;, "Lorg/apache/commons/collections4/OrderedMapIterator<TK;TV;>;"
    invoke-static {v0}, Lorg/apache/commons/collections4/iterators/UnmodifiableOrderedMapIterator;->unmodifiableOrderedMapIterator(Lorg/apache/commons/collections4/OrderedMapIterator;)Lorg/apache/commons/collections4/OrderedMapIterator;

    move-result-object v1

    return-object v1
.end method

.method public nextKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TK;"
        }
    .end annotation

    .line 186
    .local p0, "this":Lorg/apache/commons/collections4/trie/UnmodifiableTrie;, "Lorg/apache/commons/collections4/trie/UnmodifiableTrie<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Lorg/apache/commons/collections4/trie/UnmodifiableTrie;->delegate:Lorg/apache/commons/collections4/Trie;

    invoke-interface {v0, p1}, Lorg/apache/commons/collections4/Trie;->nextKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public prefixMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/SortedMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 169
    .local p0, "this":Lorg/apache/commons/collections4/trie/UnmodifiableTrie;, "Lorg/apache/commons/collections4/trie/UnmodifiableTrie<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Lorg/apache/commons/collections4/trie/UnmodifiableTrie;->delegate:Lorg/apache/commons/collections4/Trie;

    invoke-interface {v0, p1}, Lorg/apache/commons/collections4/Trie;->prefixMap(Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSortedMap(Ljava/util/SortedMap;)Ljava/util/SortedMap;

    move-result-object v0

    return-object v0
.end method

.method public previousKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TK;"
        }
    .end annotation

    .line 191
    .local p0, "this":Lorg/apache/commons/collections4/trie/UnmodifiableTrie;, "Lorg/apache/commons/collections4/trie/UnmodifiableTrie<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Lorg/apache/commons/collections4/trie/UnmodifiableTrie;->delegate:Lorg/apache/commons/collections4/Trie;

    invoke-interface {v0, p1}, Lorg/apache/commons/collections4/Trie;->previousKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .line 124
    .local p0, "this":Lorg/apache/commons/collections4/trie/UnmodifiableTrie;, "Lorg/apache/commons/collections4/trie/UnmodifiableTrie<TK;TV;>;"
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

    .line 129
    .local p0, "this":Lorg/apache/commons/collections4/trie/UnmodifiableTrie;, "Lorg/apache/commons/collections4/trie/UnmodifiableTrie<TK;TV;>;"
    .local p1, "m":Ljava/util/Map;, "Ljava/util/Map<+TK;+TV;>;"
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

    .line 134
    .local p0, "this":Lorg/apache/commons/collections4/trie/UnmodifiableTrie;, "Lorg/apache/commons/collections4/trie/UnmodifiableTrie<TK;TV;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public size()I
    .locals 1

    .line 139
    .local p0, "this":Lorg/apache/commons/collections4/trie/UnmodifiableTrie;, "Lorg/apache/commons/collections4/trie/UnmodifiableTrie<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/trie/UnmodifiableTrie;->delegate:Lorg/apache/commons/collections4/Trie;

    invoke-interface {v0}, Lorg/apache/commons/collections4/Trie;->size()I

    move-result v0

    return v0
.end method

.method public subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TK;)",
            "Ljava/util/SortedMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 159
    .local p0, "this":Lorg/apache/commons/collections4/trie/UnmodifiableTrie;, "Lorg/apache/commons/collections4/trie/UnmodifiableTrie<TK;TV;>;"
    .local p1, "fromKey":Ljava/lang/Object;, "TK;"
    .local p2, "toKey":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Lorg/apache/commons/collections4/trie/UnmodifiableTrie;->delegate:Lorg/apache/commons/collections4/Trie;

    invoke-interface {v0, p1, p2}, Lorg/apache/commons/collections4/Trie;->subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSortedMap(Ljava/util/SortedMap;)Ljava/util/SortedMap;

    move-result-object v0

    return-object v0
.end method

.method public tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/SortedMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 164
    .local p0, "this":Lorg/apache/commons/collections4/trie/UnmodifiableTrie;, "Lorg/apache/commons/collections4/trie/UnmodifiableTrie<TK;TV;>;"
    .local p1, "fromKey":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Lorg/apache/commons/collections4/trie/UnmodifiableTrie;->delegate:Lorg/apache/commons/collections4/Trie;

    invoke-interface {v0, p1}, Lorg/apache/commons/collections4/Trie;->tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSortedMap(Ljava/util/SortedMap;)Ljava/util/SortedMap;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 207
    .local p0, "this":Lorg/apache/commons/collections4/trie/UnmodifiableTrie;, "Lorg/apache/commons/collections4/trie/UnmodifiableTrie<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/trie/UnmodifiableTrie;->delegate:Lorg/apache/commons/collections4/Trie;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
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

    .line 94
    .local p0, "this":Lorg/apache/commons/collections4/trie/UnmodifiableTrie;, "Lorg/apache/commons/collections4/trie/UnmodifiableTrie<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/trie/UnmodifiableTrie;->delegate:Lorg/apache/commons/collections4/Trie;

    invoke-interface {v0}, Lorg/apache/commons/collections4/Trie;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method
