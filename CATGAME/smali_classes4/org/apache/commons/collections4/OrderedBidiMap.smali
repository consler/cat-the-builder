.class public interface abstract Lorg/apache/commons/collections4/OrderedBidiMap;
.super Ljava/lang/Object;
.source "OrderedBidiMap.java"

# interfaces
.implements Lorg/apache/commons/collections4/BidiMap;
.implements Lorg/apache/commons/collections4/OrderedMap;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/apache/commons/collections4/BidiMap<",
        "TK;TV;>;",
        "Lorg/apache/commons/collections4/OrderedMap<",
        "TK;TV;>;"
    }
.end annotation


# virtual methods
.method public bridge synthetic inverseBidiMap()Lorg/apache/commons/collections4/BidiMap;
    .locals 1

    .line 32
    invoke-interface {p0}, Lorg/apache/commons/collections4/OrderedBidiMap;->inverseBidiMap()Lorg/apache/commons/collections4/OrderedBidiMap;

    move-result-object v0

    return-object v0
.end method

.method public abstract inverseBidiMap()Lorg/apache/commons/collections4/OrderedBidiMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/collections4/OrderedBidiMap<",
            "TV;TK;>;"
        }
    .end annotation
.end method
