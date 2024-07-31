.class public abstract Lorg/apache/commons/collections4/bidimap/AbstractSortedBidiMapDecorator;
.super Lorg/apache/commons/collections4/bidimap/AbstractOrderedBidiMapDecorator;
.source "AbstractSortedBidiMapDecorator.java"

# interfaces
.implements Lorg/apache/commons/collections4/SortedBidiMap;


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
        "Lorg/apache/commons/collections4/SortedBidiMap<",
        "TK;TV;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lorg/apache/commons/collections4/SortedBidiMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/SortedBidiMap<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 52
    .local p0, "this":Lorg/apache/commons/collections4/bidimap/AbstractSortedBidiMapDecorator;, "Lorg/apache/commons/collections4/bidimap/AbstractSortedBidiMapDecorator<TK;TV;>;"
    .local p1, "map":Lorg/apache/commons/collections4/SortedBidiMap;, "Lorg/apache/commons/collections4/SortedBidiMap<TK;TV;>;"
    invoke-direct {p0, p1}, Lorg/apache/commons/collections4/bidimap/AbstractOrderedBidiMapDecorator;-><init>(Lorg/apache/commons/collections4/OrderedBidiMap;)V

    .line 53
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

    .line 73
    .local p0, "this":Lorg/apache/commons/collections4/bidimap/AbstractSortedBidiMapDecorator;, "Lorg/apache/commons/collections4/bidimap/AbstractSortedBidiMapDecorator<TK;TV;>;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/bidimap/AbstractSortedBidiMapDecorator;->decorated()Lorg/apache/commons/collections4/SortedBidiMap;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/collections4/SortedBidiMap;->comparator()Ljava/util/Comparator;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic decorated()Ljava/util/Map;
    .locals 1

    .line 42
    .local p0, "this":Lorg/apache/commons/collections4/bidimap/AbstractSortedBidiMapDecorator;, "Lorg/apache/commons/collections4/bidimap/AbstractSortedBidiMapDecorator<TK;TV;>;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/bidimap/AbstractSortedBidiMapDecorator;->decorated()Lorg/apache/commons/collections4/SortedBidiMap;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic decorated()Lorg/apache/commons/collections4/BidiMap;
    .locals 1

    .line 42
    .local p0, "this":Lorg/apache/commons/collections4/bidimap/AbstractSortedBidiMapDecorator;, "Lorg/apache/commons/collections4/bidimap/AbstractSortedBidiMapDecorator<TK;TV;>;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/bidimap/AbstractSortedBidiMapDecorator;->decorated()Lorg/apache/commons/collections4/SortedBidiMap;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic decorated()Lorg/apache/commons/collections4/OrderedBidiMap;
    .locals 1

    .line 42
    .local p0, "this":Lorg/apache/commons/collections4/bidimap/AbstractSortedBidiMapDecorator;, "Lorg/apache/commons/collections4/bidimap/AbstractSortedBidiMapDecorator<TK;TV;>;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/bidimap/AbstractSortedBidiMapDecorator;->decorated()Lorg/apache/commons/collections4/SortedBidiMap;

    move-result-object v0

    return-object v0
.end method

.method protected decorated()Lorg/apache/commons/collections4/SortedBidiMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/collections4/SortedBidiMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 62
    .local p0, "this":Lorg/apache/commons/collections4/bidimap/AbstractSortedBidiMapDecorator;, "Lorg/apache/commons/collections4/bidimap/AbstractSortedBidiMapDecorator<TK;TV;>;"
    invoke-super {p0}, Lorg/apache/commons/collections4/bidimap/AbstractOrderedBidiMapDecorator;->decorated()Lorg/apache/commons/collections4/OrderedBidiMap;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/collections4/SortedBidiMap;

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

    .line 88
    .local p0, "this":Lorg/apache/commons/collections4/bidimap/AbstractSortedBidiMapDecorator;, "Lorg/apache/commons/collections4/bidimap/AbstractSortedBidiMapDecorator<TK;TV;>;"
    .local p1, "toKey":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/bidimap/AbstractSortedBidiMapDecorator;->decorated()Lorg/apache/commons/collections4/SortedBidiMap;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/apache/commons/collections4/SortedBidiMap;->headMap(Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic inverseBidiMap()Lorg/apache/commons/collections4/BidiMap;
    .locals 1

    .line 42
    .local p0, "this":Lorg/apache/commons/collections4/bidimap/AbstractSortedBidiMapDecorator;, "Lorg/apache/commons/collections4/bidimap/AbstractSortedBidiMapDecorator<TK;TV;>;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/bidimap/AbstractSortedBidiMapDecorator;->inverseBidiMap()Lorg/apache/commons/collections4/SortedBidiMap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic inverseBidiMap()Lorg/apache/commons/collections4/OrderedBidiMap;
    .locals 1

    .line 42
    .local p0, "this":Lorg/apache/commons/collections4/bidimap/AbstractSortedBidiMapDecorator;, "Lorg/apache/commons/collections4/bidimap/AbstractSortedBidiMapDecorator<TK;TV;>;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/bidimap/AbstractSortedBidiMapDecorator;->inverseBidiMap()Lorg/apache/commons/collections4/SortedBidiMap;

    move-result-object v0

    return-object v0
.end method

.method public inverseBidiMap()Lorg/apache/commons/collections4/SortedBidiMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/collections4/SortedBidiMap<",
            "TV;TK;>;"
        }
    .end annotation

    .line 68
    .local p0, "this":Lorg/apache/commons/collections4/bidimap/AbstractSortedBidiMapDecorator;, "Lorg/apache/commons/collections4/bidimap/AbstractSortedBidiMapDecorator<TK;TV;>;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/bidimap/AbstractSortedBidiMapDecorator;->decorated()Lorg/apache/commons/collections4/SortedBidiMap;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/collections4/SortedBidiMap;->inverseBidiMap()Lorg/apache/commons/collections4/SortedBidiMap;

    move-result-object v0

    return-object v0
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

    .line 83
    .local p0, "this":Lorg/apache/commons/collections4/bidimap/AbstractSortedBidiMapDecorator;, "Lorg/apache/commons/collections4/bidimap/AbstractSortedBidiMapDecorator<TK;TV;>;"
    .local p1, "fromKey":Ljava/lang/Object;, "TK;"
    .local p2, "toKey":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/bidimap/AbstractSortedBidiMapDecorator;->decorated()Lorg/apache/commons/collections4/SortedBidiMap;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lorg/apache/commons/collections4/SortedBidiMap;->subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedMap;

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

    .line 93
    .local p0, "this":Lorg/apache/commons/collections4/bidimap/AbstractSortedBidiMapDecorator;, "Lorg/apache/commons/collections4/bidimap/AbstractSortedBidiMapDecorator<TK;TV;>;"
    .local p1, "fromKey":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/bidimap/AbstractSortedBidiMapDecorator;->decorated()Lorg/apache/commons/collections4/SortedBidiMap;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/apache/commons/collections4/SortedBidiMap;->tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v0

    return-object v0
.end method

.method public valueComparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "-TV;>;"
        }
    .end annotation

    .line 78
    .local p0, "this":Lorg/apache/commons/collections4/bidimap/AbstractSortedBidiMapDecorator;, "Lorg/apache/commons/collections4/bidimap/AbstractSortedBidiMapDecorator<TK;TV;>;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/bidimap/AbstractSortedBidiMapDecorator;->decorated()Lorg/apache/commons/collections4/SortedBidiMap;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/collections4/SortedBidiMap;->valueComparator()Ljava/util/Comparator;

    move-result-object v0

    return-object v0
.end method
