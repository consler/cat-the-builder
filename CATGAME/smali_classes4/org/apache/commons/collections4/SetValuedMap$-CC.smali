.class public final synthetic Lorg/apache/commons/collections4/SetValuedMap$-CC;
.super Ljava/lang/Object;
.source "SetValuedMap.java"


# direct methods
.method public static synthetic $default$get(Lorg/apache/commons/collections4/SetValuedMap;Ljava/lang/Object;)Ljava/util/Collection;
    .locals 0
    .param p0, "_this"    # Lorg/apache/commons/collections4/SetValuedMap;

    .line 35
    .local p0, "this":Lorg/apache/commons/collections4/SetValuedMap;, "Lorg/apache/commons/collections4/SetValuedMap<TK;TV;>;"
    invoke-interface {p0, p1}, Lorg/apache/commons/collections4/SetValuedMap;->get(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public static synthetic $default$remove(Lorg/apache/commons/collections4/SetValuedMap;Ljava/lang/Object;)Ljava/util/Collection;
    .locals 0
    .param p0, "_this"    # Lorg/apache/commons/collections4/SetValuedMap;

    .line 35
    .local p0, "this":Lorg/apache/commons/collections4/SetValuedMap;, "Lorg/apache/commons/collections4/SetValuedMap<TK;TV;>;"
    invoke-interface {p0, p1}, Lorg/apache/commons/collections4/SetValuedMap;->remove(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method
