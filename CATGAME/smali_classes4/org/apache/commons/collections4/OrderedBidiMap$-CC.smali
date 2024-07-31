.class public final synthetic Lorg/apache/commons/collections4/OrderedBidiMap$-CC;
.super Ljava/lang/Object;
.source "OrderedBidiMap.java"


# direct methods
.method public static synthetic $default$inverseBidiMap(Lorg/apache/commons/collections4/OrderedBidiMap;)Lorg/apache/commons/collections4/BidiMap;
    .locals 1
    .param p0, "_this"    # Lorg/apache/commons/collections4/OrderedBidiMap;

    .line 32
    .local p0, "this":Lorg/apache/commons/collections4/OrderedBidiMap;, "Lorg/apache/commons/collections4/OrderedBidiMap<TK;TV;>;"
    invoke-interface {p0}, Lorg/apache/commons/collections4/OrderedBidiMap;->inverseBidiMap()Lorg/apache/commons/collections4/OrderedBidiMap;

    move-result-object v0

    return-object v0
.end method
