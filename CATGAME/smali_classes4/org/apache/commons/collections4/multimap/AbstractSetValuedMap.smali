.class public abstract Lorg/apache/commons/collections4/multimap/AbstractSetValuedMap;
.super Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap;
.source "AbstractSetValuedMap.java"

# interfaces
.implements Lorg/apache/commons/collections4/SetValuedMap;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/collections4/multimap/AbstractSetValuedMap$WrappedSet;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap<",
        "TK;TV;>;",
        "Lorg/apache/commons/collections4/SetValuedMap<",
        "TK;TV;>;"
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap;-><init>()V

    return-void
.end method

.method protected constructor <init>(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "TK;+",
            "Ljava/util/Set<",
            "TV;>;>;)V"
        }
    .end annotation

    .line 55
    invoke-direct {p0, p1}, Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap;-><init>(Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic createCollection()Ljava/util/Collection;
    .locals 1

    .line 38
    invoke-virtual {p0}, Lorg/apache/commons/collections4/multimap/AbstractSetValuedMap;->createCollection()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method protected abstract createCollection()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TV;>;"
        }
    .end annotation
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 0

    .line 38
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections4/multimap/AbstractSetValuedMap;->get(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public get(Ljava/lang/Object;)Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Set<",
            "TV;>;"
        }
    .end annotation

    .line 83
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections4/multimap/AbstractSetValuedMap;->wrappedCollection(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method protected getMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TK;",
            "Ljava/util/Set<",
            "TV;>;>;"
        }
    .end annotation

    .line 62
    invoke-super {p0}, Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap;->getMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic remove(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 0

    .line 38
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections4/multimap/AbstractSetValuedMap;->remove(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public remove(Ljava/lang/Object;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Set<",
            "TV;>;"
        }
    .end annotation

    .line 102
    invoke-virtual {p0}, Lorg/apache/commons/collections4/multimap/AbstractSetValuedMap;->getMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    invoke-static {p1}, Lorg/apache/commons/collections4/SetUtils;->emptyIfNull(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method bridge synthetic wrappedCollection(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 0

    .line 38
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections4/multimap/AbstractSetValuedMap;->wrappedCollection(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method wrappedCollection(Ljava/lang/Object;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Set<",
            "TV;>;"
        }
    .end annotation

    .line 88
    new-instance v0, Lorg/apache/commons/collections4/multimap/AbstractSetValuedMap$WrappedSet;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/collections4/multimap/AbstractSetValuedMap$WrappedSet;-><init>(Lorg/apache/commons/collections4/multimap/AbstractSetValuedMap;Ljava/lang/Object;)V

    return-object v0
.end method
