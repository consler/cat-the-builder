.class public Lorg/apache/commons/collections4/map/LazySortedMap;
.super Lorg/apache/commons/collections4/map/LazyMap;
.source "LazySortedMap.java"

# interfaces
.implements Ljava/util/SortedMap;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/commons/collections4/map/LazyMap<",
        "TK;TV;>;",
        "Ljava/util/SortedMap<",
        "TK;TV;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x25aec323bd44c035L


# direct methods
.method protected constructor <init>(Ljava/util/SortedMap;Lorg/apache/commons/collections4/Factory;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/SortedMap<",
            "TK;TV;>;",
            "Lorg/apache/commons/collections4/Factory<",
            "+TV;>;)V"
        }
    .end annotation

    .line 112
    .local p0, "this":Lorg/apache/commons/collections4/map/LazySortedMap;, "Lorg/apache/commons/collections4/map/LazySortedMap<TK;TV;>;"
    .local p1, "map":Ljava/util/SortedMap;, "Ljava/util/SortedMap<TK;TV;>;"
    .local p2, "factory":Lorg/apache/commons/collections4/Factory;, "Lorg/apache/commons/collections4/Factory<+TV;>;"
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/collections4/map/LazyMap;-><init>(Ljava/util/Map;Lorg/apache/commons/collections4/Factory;)V

    .line 113
    return-void
.end method

.method protected constructor <init>(Ljava/util/SortedMap;Lorg/apache/commons/collections4/Transformer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/SortedMap<",
            "TK;TV;>;",
            "Lorg/apache/commons/collections4/Transformer<",
            "-TK;+TV;>;)V"
        }
    .end annotation

    .line 123
    .local p0, "this":Lorg/apache/commons/collections4/map/LazySortedMap;, "Lorg/apache/commons/collections4/map/LazySortedMap<TK;TV;>;"
    .local p1, "map":Ljava/util/SortedMap;, "Ljava/util/SortedMap<TK;TV;>;"
    .local p2, "factory":Lorg/apache/commons/collections4/Transformer;, "Lorg/apache/commons/collections4/Transformer<-TK;+TV;>;"
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/collections4/map/LazyMap;-><init>(Ljava/util/Map;Lorg/apache/commons/collections4/Transformer;)V

    .line 124
    return-void
.end method

.method public static lazySortedMap(Ljava/util/SortedMap;Lorg/apache/commons/collections4/Factory;)Lorg/apache/commons/collections4/map/LazySortedMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/SortedMap<",
            "TK;TV;>;",
            "Lorg/apache/commons/collections4/Factory<",
            "+TV;>;)",
            "Lorg/apache/commons/collections4/map/LazySortedMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 84
    .local p0, "map":Ljava/util/SortedMap;, "Ljava/util/SortedMap<TK;TV;>;"
    .local p1, "factory":Lorg/apache/commons/collections4/Factory;, "Lorg/apache/commons/collections4/Factory<+TV;>;"
    new-instance v0, Lorg/apache/commons/collections4/map/LazySortedMap;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/collections4/map/LazySortedMap;-><init>(Ljava/util/SortedMap;Lorg/apache/commons/collections4/Factory;)V

    return-object v0
.end method

.method public static lazySortedMap(Ljava/util/SortedMap;Lorg/apache/commons/collections4/Transformer;)Lorg/apache/commons/collections4/map/LazySortedMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/SortedMap<",
            "TK;TV;>;",
            "Lorg/apache/commons/collections4/Transformer<",
            "-TK;+TV;>;)",
            "Lorg/apache/commons/collections4/map/LazySortedMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 100
    .local p0, "map":Ljava/util/SortedMap;, "Ljava/util/SortedMap<TK;TV;>;"
    .local p1, "factory":Lorg/apache/commons/collections4/Transformer;, "Lorg/apache/commons/collections4/Transformer<-TK;+TV;>;"
    new-instance v0, Lorg/apache/commons/collections4/map/LazySortedMap;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/collections4/map/LazySortedMap;-><init>(Ljava/util/SortedMap;Lorg/apache/commons/collections4/Transformer;)V

    return-object v0
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

    .line 149
    .local p0, "this":Lorg/apache/commons/collections4/map/LazySortedMap;, "Lorg/apache/commons/collections4/map/LazySortedMap<TK;TV;>;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/LazySortedMap;->getSortedMap()Ljava/util/SortedMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/SortedMap;->comparator()Ljava/util/Comparator;

    move-result-object v0

    return-object v0
.end method

.method public firstKey()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 139
    .local p0, "this":Lorg/apache/commons/collections4/map/LazySortedMap;, "Lorg/apache/commons/collections4/map/LazySortedMap<TK;TV;>;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/LazySortedMap;->getSortedMap()Ljava/util/SortedMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/SortedMap;->firstKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected getSortedMap()Ljava/util/SortedMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/SortedMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 133
    .local p0, "this":Lorg/apache/commons/collections4/map/LazySortedMap;, "Lorg/apache/commons/collections4/map/LazySortedMap<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/map/LazySortedMap;->map:Ljava/util/Map;

    check-cast v0, Ljava/util/SortedMap;

    return-object v0
.end method

.method public headMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/SortedMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 160
    .local p0, "this":Lorg/apache/commons/collections4/map/LazySortedMap;, "Lorg/apache/commons/collections4/map/LazySortedMap<TK;TV;>;"
    .local p1, "toKey":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/LazySortedMap;->getSortedMap()Ljava/util/SortedMap;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/SortedMap;->headMap(Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v0

    .line 161
    .local v0, "map":Ljava/util/SortedMap;, "Ljava/util/SortedMap<TK;TV;>;"
    new-instance v1, Lorg/apache/commons/collections4/map/LazySortedMap;

    iget-object v2, p0, Lorg/apache/commons/collections4/map/LazySortedMap;->factory:Lorg/apache/commons/collections4/Transformer;

    invoke-direct {v1, v0, v2}, Lorg/apache/commons/collections4/map/LazySortedMap;-><init>(Ljava/util/SortedMap;Lorg/apache/commons/collections4/Transformer;)V

    return-object v1
.end method

.method public lastKey()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 144
    .local p0, "this":Lorg/apache/commons/collections4/map/LazySortedMap;, "Lorg/apache/commons/collections4/map/LazySortedMap<TK;TV;>;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/LazySortedMap;->getSortedMap()Ljava/util/SortedMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/SortedMap;->lastKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TK;)",
            "Ljava/util/SortedMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 154
    .local p0, "this":Lorg/apache/commons/collections4/map/LazySortedMap;, "Lorg/apache/commons/collections4/map/LazySortedMap<TK;TV;>;"
    .local p1, "fromKey":Ljava/lang/Object;, "TK;"
    .local p2, "toKey":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/LazySortedMap;->getSortedMap()Ljava/util/SortedMap;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/SortedMap;->subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v0

    .line 155
    .local v0, "map":Ljava/util/SortedMap;, "Ljava/util/SortedMap<TK;TV;>;"
    new-instance v1, Lorg/apache/commons/collections4/map/LazySortedMap;

    iget-object v2, p0, Lorg/apache/commons/collections4/map/LazySortedMap;->factory:Lorg/apache/commons/collections4/Transformer;

    invoke-direct {v1, v0, v2}, Lorg/apache/commons/collections4/map/LazySortedMap;-><init>(Ljava/util/SortedMap;Lorg/apache/commons/collections4/Transformer;)V

    return-object v1
.end method

.method public tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/SortedMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 166
    .local p0, "this":Lorg/apache/commons/collections4/map/LazySortedMap;, "Lorg/apache/commons/collections4/map/LazySortedMap<TK;TV;>;"
    .local p1, "fromKey":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/LazySortedMap;->getSortedMap()Ljava/util/SortedMap;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/SortedMap;->tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v0

    .line 167
    .local v0, "map":Ljava/util/SortedMap;, "Ljava/util/SortedMap<TK;TV;>;"
    new-instance v1, Lorg/apache/commons/collections4/map/LazySortedMap;

    iget-object v2, p0, Lorg/apache/commons/collections4/map/LazySortedMap;->factory:Lorg/apache/commons/collections4/Transformer;

    invoke-direct {v1, v0, v2}, Lorg/apache/commons/collections4/map/LazySortedMap;-><init>(Ljava/util/SortedMap;Lorg/apache/commons/collections4/Transformer;)V

    return-object v1
.end method
