.class public abstract Lorg/apache/commons/collections4/map/AbstractSortedMapDecorator;
.super Lorg/apache/commons/collections4/map/AbstractMapDecorator;
.source "AbstractSortedMapDecorator.java"

# interfaces
.implements Lorg/apache/commons/collections4/IterableSortedMap;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/collections4/map/AbstractSortedMapDecorator$SortedMapIterator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/commons/collections4/map/AbstractMapDecorator<",
        "TK;TV;>;",
        "Lorg/apache/commons/collections4/IterableSortedMap<",
        "TK;TV;>;"
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 56
    .local p0, "this":Lorg/apache/commons/collections4/map/AbstractSortedMapDecorator;, "Lorg/apache/commons/collections4/map/AbstractSortedMapDecorator<TK;TV;>;"
    invoke-direct {p0}, Lorg/apache/commons/collections4/map/AbstractMapDecorator;-><init>()V

    .line 57
    return-void
.end method

.method public constructor <init>(Ljava/util/SortedMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/SortedMap<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 66
    .local p0, "this":Lorg/apache/commons/collections4/map/AbstractSortedMapDecorator;, "Lorg/apache/commons/collections4/map/AbstractSortedMapDecorator<TK;TV;>;"
    .local p1, "map":Ljava/util/SortedMap;, "Ljava/util/SortedMap<TK;TV;>;"
    invoke-direct {p0, p1}, Lorg/apache/commons/collections4/map/AbstractMapDecorator;-><init>(Ljava/util/Map;)V

    .line 67
    return-void
.end method


# virtual methods
.method public comparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "-TK;>;"
        }
    .end annotation

    .line 82
    .local p0, "this":Lorg/apache/commons/collections4/map/AbstractSortedMapDecorator;, "Lorg/apache/commons/collections4/map/AbstractSortedMapDecorator<TK;TV;>;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/AbstractSortedMapDecorator;->decorated()Ljava/util/SortedMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/SortedMap;->comparator()Ljava/util/Comparator;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic decorated()Ljava/util/Map;
    .locals 1

    .line 48
    .local p0, "this":Lorg/apache/commons/collections4/map/AbstractSortedMapDecorator;, "Lorg/apache/commons/collections4/map/AbstractSortedMapDecorator<TK;TV;>;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/AbstractSortedMapDecorator;->decorated()Ljava/util/SortedMap;

    move-result-object v0

    return-object v0
.end method

.method protected decorated()Ljava/util/SortedMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/SortedMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 76
    .local p0, "this":Lorg/apache/commons/collections4/map/AbstractSortedMapDecorator;, "Lorg/apache/commons/collections4/map/AbstractSortedMapDecorator<TK;TV;>;"
    invoke-super {p0}, Lorg/apache/commons/collections4/map/AbstractMapDecorator;->decorated()Ljava/util/Map;

    move-result-object v0

    check-cast v0, Ljava/util/SortedMap;

    return-object v0
.end method

.method public firstKey()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 87
    .local p0, "this":Lorg/apache/commons/collections4/map/AbstractSortedMapDecorator;, "Lorg/apache/commons/collections4/map/AbstractSortedMapDecorator<TK;TV;>;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/AbstractSortedMapDecorator;->decorated()Ljava/util/SortedMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/SortedMap;->firstKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
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

    .line 102
    .local p0, "this":Lorg/apache/commons/collections4/map/AbstractSortedMapDecorator;, "Lorg/apache/commons/collections4/map/AbstractSortedMapDecorator<TK;TV;>;"
    .local p1, "toKey":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/AbstractSortedMapDecorator;->decorated()Ljava/util/SortedMap;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/SortedMap;->headMap(Ljava/lang/Object;)Ljava/util/SortedMap;

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

    .line 92
    .local p0, "this":Lorg/apache/commons/collections4/map/AbstractSortedMapDecorator;, "Lorg/apache/commons/collections4/map/AbstractSortedMapDecorator<TK;TV;>;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/AbstractSortedMapDecorator;->decorated()Ljava/util/SortedMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/SortedMap;->lastKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mapIterator()Lorg/apache/commons/collections4/MapIterator;
    .locals 1

    .line 48
    .local p0, "this":Lorg/apache/commons/collections4/map/AbstractSortedMapDecorator;, "Lorg/apache/commons/collections4/map/AbstractSortedMapDecorator<TK;TV;>;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/AbstractSortedMapDecorator;->mapIterator()Lorg/apache/commons/collections4/OrderedMapIterator;

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

    .line 128
    .local p0, "this":Lorg/apache/commons/collections4/map/AbstractSortedMapDecorator;, "Lorg/apache/commons/collections4/map/AbstractSortedMapDecorator<TK;TV;>;"
    new-instance v0, Lorg/apache/commons/collections4/map/AbstractSortedMapDecorator$SortedMapIterator;

    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/AbstractSortedMapDecorator;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/collections4/map/AbstractSortedMapDecorator$SortedMapIterator;-><init>(Ljava/util/Set;)V

    return-object v0
.end method

.method public nextKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TK;"
        }
    .end annotation

    .line 118
    .local p0, "this":Lorg/apache/commons/collections4/map/AbstractSortedMapDecorator;, "Lorg/apache/commons/collections4/map/AbstractSortedMapDecorator<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections4/map/AbstractSortedMapDecorator;->tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/SortedMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 119
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<TK;>;"
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 120
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public previousKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TK;"
        }
    .end annotation

    .line 112
    .local p0, "this":Lorg/apache/commons/collections4/map/AbstractSortedMapDecorator;, "Lorg/apache/commons/collections4/map/AbstractSortedMapDecorator<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections4/map/AbstractSortedMapDecorator;->headMap(Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v0

    .line 113
    .local v0, "headMap":Ljava/util/SortedMap;, "Ljava/util/SortedMap<TK;TV;>;"
    invoke-interface {v0}, Ljava/util/SortedMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/SortedMap;->lastKey()Ljava/lang/Object;

    move-result-object v1

    :goto_0
    return-object v1
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

    .line 97
    .local p0, "this":Lorg/apache/commons/collections4/map/AbstractSortedMapDecorator;, "Lorg/apache/commons/collections4/map/AbstractSortedMapDecorator<TK;TV;>;"
    .local p1, "fromKey":Ljava/lang/Object;, "TK;"
    .local p2, "toKey":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/AbstractSortedMapDecorator;->decorated()Ljava/util/SortedMap;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/SortedMap;->subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedMap;

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

    .line 107
    .local p0, "this":Lorg/apache/commons/collections4/map/AbstractSortedMapDecorator;, "Lorg/apache/commons/collections4/map/AbstractSortedMapDecorator<TK;TV;>;"
    .local p1, "fromKey":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/AbstractSortedMapDecorator;->decorated()Ljava/util/SortedMap;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/SortedMap;->tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v0

    return-object v0
.end method
