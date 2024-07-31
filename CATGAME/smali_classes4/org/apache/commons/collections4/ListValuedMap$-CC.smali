.class public final synthetic Lorg/apache/commons/collections4/ListValuedMap$-CC;
.super Ljava/lang/Object;
.source "ListValuedMap.java"


# direct methods
.method public static synthetic $default$get(Lorg/apache/commons/collections4/ListValuedMap;Ljava/lang/Object;)Ljava/util/Collection;
    .locals 0
    .param p0, "_this"    # Lorg/apache/commons/collections4/ListValuedMap;

    .line 35
    .local p0, "this":Lorg/apache/commons/collections4/ListValuedMap;, "Lorg/apache/commons/collections4/ListValuedMap<TK;TV;>;"
    invoke-interface {p0, p1}, Lorg/apache/commons/collections4/ListValuedMap;->get(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public static synthetic $default$remove(Lorg/apache/commons/collections4/ListValuedMap;Ljava/lang/Object;)Ljava/util/Collection;
    .locals 0
    .param p0, "_this"    # Lorg/apache/commons/collections4/ListValuedMap;

    .line 35
    .local p0, "this":Lorg/apache/commons/collections4/ListValuedMap;, "Lorg/apache/commons/collections4/ListValuedMap<TK;TV;>;"
    invoke-interface {p0, p1}, Lorg/apache/commons/collections4/ListValuedMap;->remove(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
