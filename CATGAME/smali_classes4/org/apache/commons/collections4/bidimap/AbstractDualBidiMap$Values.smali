.class public Lorg/apache/commons/collections4/bidimap/AbstractDualBidiMap$Values;
.super Lorg/apache/commons/collections4/bidimap/AbstractDualBidiMap$View;
.source "AbstractDualBidiMap.java"

# interfaces
.implements Ljava/util/Set;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections4/bidimap/AbstractDualBidiMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "Values"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/commons/collections4/bidimap/AbstractDualBidiMap$View<",
        "Ljava/lang/Object;",
        "TV;TV;>;",
        "Ljava/util/Set<",
        "TV;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x37d753f8baca42b8L


# direct methods
.method protected constructor <init>(Lorg/apache/commons/collections4/bidimap/AbstractDualBidiMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/bidimap/AbstractDualBidiMap<",
            "*TV;>;)V"
        }
    .end annotation

    .line 545
    .local p0, "this":Lorg/apache/commons/collections4/bidimap/AbstractDualBidiMap$Values;, "Lorg/apache/commons/collections4/bidimap/AbstractDualBidiMap$Values<TV;>;"
    .local p1, "parent":Lorg/apache/commons/collections4/bidimap/AbstractDualBidiMap;, "Lorg/apache/commons/collections4/bidimap/AbstractDualBidiMap<*TV;>;"
    iget-object v0, p1, Lorg/apache/commons/collections4/bidimap/AbstractDualBidiMap;->normalMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lorg/apache/commons/collections4/bidimap/AbstractDualBidiMap$View;-><init>(Ljava/util/Collection;Lorg/apache/commons/collections4/bidimap/AbstractDualBidiMap;)V

    .line 546
    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;

    .line 555
    .local p0, "this":Lorg/apache/commons/collections4/bidimap/AbstractDualBidiMap$Values;, "Lorg/apache/commons/collections4/bidimap/AbstractDualBidiMap$Values<TV;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/bidimap/AbstractDualBidiMap$Values;->parent:Lorg/apache/commons/collections4/bidimap/AbstractDualBidiMap;

    iget-object v0, v0, Lorg/apache/commons/collections4/bidimap/AbstractDualBidiMap;->reverseMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TV;>;"
        }
    .end annotation

    .line 550
    .local p0, "this":Lorg/apache/commons/collections4/bidimap/AbstractDualBidiMap$Values;, "Lorg/apache/commons/collections4/bidimap/AbstractDualBidiMap$Values<TV;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/bidimap/AbstractDualBidiMap$Values;->parent:Lorg/apache/commons/collections4/bidimap/AbstractDualBidiMap;

    invoke-super {p0}, Lorg/apache/commons/collections4/bidimap/AbstractDualBidiMap$View;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/collections4/bidimap/AbstractDualBidiMap;->createValuesIterator(Ljava/util/Iterator;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "value"    # Ljava/lang/Object;

    .line 560
    .local p0, "this":Lorg/apache/commons/collections4/bidimap/AbstractDualBidiMap$Values;, "Lorg/apache/commons/collections4/bidimap/AbstractDualBidiMap$Values<TV;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/bidimap/AbstractDualBidiMap$Values;->parent:Lorg/apache/commons/collections4/bidimap/AbstractDualBidiMap;

    iget-object v0, v0, Lorg/apache/commons/collections4/bidimap/AbstractDualBidiMap;->reverseMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 561
    iget-object v0, p0, Lorg/apache/commons/collections4/bidimap/AbstractDualBidiMap$Values;->parent:Lorg/apache/commons/collections4/bidimap/AbstractDualBidiMap;

    iget-object v0, v0, Lorg/apache/commons/collections4/bidimap/AbstractDualBidiMap;->reverseMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 562
    .local v0, "key":Ljava/lang/Object;
    iget-object v1, p0, Lorg/apache/commons/collections4/bidimap/AbstractDualBidiMap$Values;->parent:Lorg/apache/commons/collections4/bidimap/AbstractDualBidiMap;

    iget-object v1, v1, Lorg/apache/commons/collections4/bidimap/AbstractDualBidiMap;->normalMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 563
    const/4 v1, 0x1

    return v1

    .line 565
    .end local v0    # "key":Ljava/lang/Object;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
