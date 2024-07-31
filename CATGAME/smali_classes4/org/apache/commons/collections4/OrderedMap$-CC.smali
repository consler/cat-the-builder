.class public final synthetic Lorg/apache/commons/collections4/OrderedMap$-CC;
.super Ljava/lang/Object;
.source "OrderedMap.java"


# direct methods
.method public static synthetic $default$mapIterator(Lorg/apache/commons/collections4/OrderedMap;)Lorg/apache/commons/collections4/MapIterator;
    .locals 1
    .param p0, "_this"    # Lorg/apache/commons/collections4/OrderedMap;

    .line 28
    .local p0, "this":Lorg/apache/commons/collections4/OrderedMap;, "Lorg/apache/commons/collections4/OrderedMap<TK;TV;>;"
    invoke-interface {p0}, Lorg/apache/commons/collections4/OrderedMap;->mapIterator()Lorg/apache/commons/collections4/OrderedMapIterator;

    move-result-object v0

    return-object v0
.end method
