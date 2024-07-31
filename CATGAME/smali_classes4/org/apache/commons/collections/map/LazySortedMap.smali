.class public Lorg/apache/commons/collections/map/LazySortedMap;
.super Lorg/apache/commons/collections/map/LazyMap;
.source "LazySortedMap.java"

# interfaces
.implements Ljava/util/SortedMap;


# static fields
.field private static final serialVersionUID:J = 0x25aec323bd44c035L


# direct methods
.method protected constructor <init>(Ljava/util/SortedMap;Lorg/apache/commons/collections/Factory;)V
    .locals 0
    .param p1, "map"    # Ljava/util/SortedMap;
    .param p2, "factory"    # Lorg/apache/commons/collections/Factory;

    .line 99
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/collections/map/LazyMap;-><init>(Ljava/util/Map;Lorg/apache/commons/collections/Factory;)V

    .line 100
    return-void
.end method

.method protected constructor <init>(Ljava/util/SortedMap;Lorg/apache/commons/collections/Transformer;)V
    .locals 0
    .param p1, "map"    # Ljava/util/SortedMap;
    .param p2, "factory"    # Lorg/apache/commons/collections/Transformer;

    .line 110
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/collections/map/LazyMap;-><init>(Ljava/util/Map;Lorg/apache/commons/collections/Transformer;)V

    .line 111
    return-void
.end method

.method public static decorate(Ljava/util/SortedMap;Lorg/apache/commons/collections/Factory;)Ljava/util/SortedMap;
    .locals 1
    .param p0, "map"    # Ljava/util/SortedMap;
    .param p1, "factory"    # Lorg/apache/commons/collections/Factory;

    .line 76
    new-instance v0, Lorg/apache/commons/collections/map/LazySortedMap;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/collections/map/LazySortedMap;-><init>(Ljava/util/SortedMap;Lorg/apache/commons/collections/Factory;)V

    return-object v0
.end method

.method public static decorate(Ljava/util/SortedMap;Lorg/apache/commons/collections/Transformer;)Ljava/util/SortedMap;
    .locals 1
    .param p0, "map"    # Ljava/util/SortedMap;
    .param p1, "factory"    # Lorg/apache/commons/collections/Transformer;

    .line 87
    new-instance v0, Lorg/apache/commons/collections/map/LazySortedMap;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/collections/map/LazySortedMap;-><init>(Ljava/util/SortedMap;Lorg/apache/commons/collections/Transformer;)V

    return-object v0
.end method


# virtual methods
.method public comparator()Ljava/util/Comparator;
    .locals 1

    .line 133
    invoke-virtual {p0}, Lorg/apache/commons/collections/map/LazySortedMap;->getSortedMap()Ljava/util/SortedMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/SortedMap;->comparator()Ljava/util/Comparator;

    move-result-object v0

    return-object v0
.end method

.method public firstKey()Ljava/lang/Object;
    .locals 1

    .line 125
    invoke-virtual {p0}, Lorg/apache/commons/collections/map/LazySortedMap;->getSortedMap()Ljava/util/SortedMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/SortedMap;->firstKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected getSortedMap()Ljava/util/SortedMap;
    .locals 1

    .line 120
    iget-object v0, p0, Lorg/apache/commons/collections/map/LazySortedMap;->map:Ljava/util/Map;

    check-cast v0, Ljava/util/SortedMap;

    return-object v0
.end method

.method public headMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 3
    .param p1, "toKey"    # Ljava/lang/Object;

    .line 142
    invoke-virtual {p0}, Lorg/apache/commons/collections/map/LazySortedMap;->getSortedMap()Ljava/util/SortedMap;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/SortedMap;->headMap(Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v0

    .line 143
    .local v0, "map":Ljava/util/SortedMap;
    new-instance v1, Lorg/apache/commons/collections/map/LazySortedMap;

    iget-object v2, p0, Lorg/apache/commons/collections/map/LazySortedMap;->factory:Lorg/apache/commons/collections/Transformer;

    invoke-direct {v1, v0, v2}, Lorg/apache/commons/collections/map/LazySortedMap;-><init>(Ljava/util/SortedMap;Lorg/apache/commons/collections/Transformer;)V

    return-object v1
.end method

.method public lastKey()Ljava/lang/Object;
    .locals 1

    .line 129
    invoke-virtual {p0}, Lorg/apache/commons/collections/map/LazySortedMap;->getSortedMap()Ljava/util/SortedMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/SortedMap;->lastKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 3
    .param p1, "fromKey"    # Ljava/lang/Object;
    .param p2, "toKey"    # Ljava/lang/Object;

    .line 137
    invoke-virtual {p0}, Lorg/apache/commons/collections/map/LazySortedMap;->getSortedMap()Ljava/util/SortedMap;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/SortedMap;->subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v0

    .line 138
    .local v0, "map":Ljava/util/SortedMap;
    new-instance v1, Lorg/apache/commons/collections/map/LazySortedMap;

    iget-object v2, p0, Lorg/apache/commons/collections/map/LazySortedMap;->factory:Lorg/apache/commons/collections/Transformer;

    invoke-direct {v1, v0, v2}, Lorg/apache/commons/collections/map/LazySortedMap;-><init>(Ljava/util/SortedMap;Lorg/apache/commons/collections/Transformer;)V

    return-object v1
.end method

.method public tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 3
    .param p1, "fromKey"    # Ljava/lang/Object;

    .line 147
    invoke-virtual {p0}, Lorg/apache/commons/collections/map/LazySortedMap;->getSortedMap()Ljava/util/SortedMap;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/SortedMap;->tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v0

    .line 148
    .local v0, "map":Ljava/util/SortedMap;
    new-instance v1, Lorg/apache/commons/collections/map/LazySortedMap;

    iget-object v2, p0, Lorg/apache/commons/collections/map/LazySortedMap;->factory:Lorg/apache/commons/collections/Transformer;

    invoke-direct {v1, v0, v2}, Lorg/apache/commons/collections/map/LazySortedMap;-><init>(Ljava/util/SortedMap;Lorg/apache/commons/collections/Transformer;)V

    return-object v1
.end method
