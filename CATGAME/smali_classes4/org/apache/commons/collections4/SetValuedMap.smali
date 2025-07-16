.class public interface abstract Lorg/apache/commons/collections4/SetValuedMap;
.super Ljava/lang/Object;
.source "SetValuedMap.java"

# interfaces
.implements Lorg/apache/commons/collections4/MultiValuedMap;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/apache/commons/collections4/MultiValuedMap<",
        "TK;TV;>;"
    }
.end annotation


# virtual methods
.method public bridge synthetic get(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 0

    .line 35
    invoke-interface {p0, p1}, Lorg/apache/commons/collections4/SetValuedMap;->get(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public abstract get(Ljava/lang/Object;)Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Set<",
            "TV;>;"
        }
    .end annotation
.end method

.method public bridge synthetic remove(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 0

    .line 35
    invoke-interface {p0, p1}, Lorg/apache/commons/collections4/SetValuedMap;->remove(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public abstract remove(Ljava/lang/Object;)Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Set<",
            "TV;>;"
        }
    .end annotation
.end method
