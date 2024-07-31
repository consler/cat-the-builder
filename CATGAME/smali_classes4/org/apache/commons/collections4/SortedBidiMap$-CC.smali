.class public final synthetic Lorg/apache/commons/collections4/SortedBidiMap$-CC;
.super Ljava/lang/Object;
.source "SortedBidiMap.java"


# direct methods
.method public static synthetic $default$inverseBidiMap(Lorg/apache/commons/collections4/SortedBidiMap;)Lorg/apache/commons/collections4/BidiMap;
    .locals 1
    .param p0, "_this"    # Lorg/apache/commons/collections4/SortedBidiMap;

    .line 34
    .local p0, "this":Lorg/apache/commons/collections4/SortedBidiMap;, "Lorg/apache/commons/collections4/SortedBidiMap<TK;TV;>;"
    invoke-interface {p0}, Lorg/apache/commons/collections4/SortedBidiMap;->inverseBidiMap()Lorg/apache/commons/collections4/SortedBidiMap;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic $default$inverseBidiMap(Lorg/apache/commons/collections4/SortedBidiMap;)Lorg/apache/commons/collections4/OrderedBidiMap;
    .locals 1
    .param p0, "_this"    # Lorg/apache/commons/collections4/SortedBidiMap;

    .line 34
    .local p0, "this":Lorg/apache/commons/collections4/SortedBidiMap;, "Lorg/apache/commons/collections4/SortedBidiMap<TK;TV;>;"
    invoke-interface {p0}, Lorg/apache/commons/collections4/SortedBidiMap;->inverseBidiMap()Lorg/apache/commons/collections4/SortedBidiMap;

    move-result-object v0

    return-object v0
.end method
