.class public final synthetic Lorg/apache/commons/collections4/BidiMap$-CC;
.super Ljava/lang/Object;
.source "BidiMap.java"


# direct methods
.method public static synthetic $default$values(Lorg/apache/commons/collections4/BidiMap;)Ljava/util/Collection;
    .locals 1
    .param p0, "_this"    # Lorg/apache/commons/collections4/BidiMap;

    .line 46
    .local p0, "this":Lorg/apache/commons/collections4/BidiMap;, "Lorg/apache/commons/collections4/BidiMap<TK;TV;>;"
    invoke-interface {p0}, Lorg/apache/commons/collections4/BidiMap;->values()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
