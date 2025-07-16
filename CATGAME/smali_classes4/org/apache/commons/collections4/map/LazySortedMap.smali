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
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/collections4/map/LazyMap;-><init>(Ljava/util/Map;Lorg/apache/commons/collections4/Factory;)V

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
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/collections4/map/LazyMap;-><init>(Ljava/util/Map;Lorg/apache/commons/collections4/Transformer;)V

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
    iget-object v0, p0, Lorg/apache/commons/collections4/map/LazySortedMap;->map:Ljava/util/Map;

    check-cast v0, Ljava/util/SortedMap;

    return-object v0
.end method

.method public headMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/SortedMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 160
    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/LazySortedMap;->getSortedMap()Ljava/util/SortedMap;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/SortedMap;->headMap(Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object p1

    .line 161
    new-instance v0, Lorg/apache/commons/collections4/map/LazySortedMap;

    iget-object v1, p0, Lorg/apache/commons/collections4/map/LazySortedMap;->factory:Lorg/apache/commons/collections4/Transformer;

    invoke-direct {v0, p1, v1}, Lorg/apache/commons/collections4/map/LazySortedMap;-><init>(Ljava/util/SortedMap;Lorg/apache/commons/collections4/Transformer;)V

    return-object v0
.end method

.method public lastKey()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 144
    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/LazySortedMap;->getSortedMap()Ljava/util/SortedMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/SortedMap;->lastKey()Ljava/lang/Object;

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

    .line 154
    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/LazySortedMap;->getSortedMap()Ljava/util/SortedMap;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/SortedMap;->subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object p1

    .line 155
    new-instance p2, Lorg/apache/commons/collections4/map/LazySortedMap;

    iget-object v0, p0, Lorg/apache/commons/collections4/map/LazySortedMap;->factory:Lorg/apache/commons/collections4/Transformer;

    invoke-direct {p2, p1, v0}, Lorg/apache/commons/collections4/map/LazySortedMap;-><init>(Ljava/util/SortedMap;Lorg/apache/commons/collections4/Transformer;)V

    return-object p2
.end method

.method public tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/SortedMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 166
    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/LazySortedMap;->getSortedMap()Ljava/util/SortedMap;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/SortedMap;->tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object p1

    .line 167
    new-instance v0, Lorg/apache/commons/collections4/map/LazySortedMap;

    iget-object v1, p0, Lorg/apache/commons/collections4/map/LazySortedMap;->factory:Lorg/apache/commons/collections4/Transformer;

    invoke-direct {v0, p1, v1}, Lorg/apache/commons/collections4/map/LazySortedMap;-><init>(Ljava/util/SortedMap;Lorg/apache/commons/collections4/Transformer;)V

    return-object v0
.end method
