.class public Lorg/apache/commons/collections/bag/PredicatedBag;
.super Lorg/apache/commons/collections/collection/PredicatedCollection;
.source "PredicatedBag.java"

# interfaces
.implements Lorg/apache/commons/collections/Bag;


# static fields
.field private static final serialVersionUID:J = -0x23bf329802ed4c6cL


# direct methods
.method protected constructor <init>(Lorg/apache/commons/collections/Bag;Lorg/apache/commons/collections/Predicate;)V
    .locals 0
    .param p1, "bag"    # Lorg/apache/commons/collections/Bag;
    .param p2, "predicate"    # Lorg/apache/commons/collections/Predicate;

    .line 79
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/collections/collection/PredicatedCollection;-><init>(Ljava/util/Collection;Lorg/apache/commons/collections/Predicate;)V

    .line 80
    return-void
.end method

.method public static decorate(Lorg/apache/commons/collections/Bag;Lorg/apache/commons/collections/Predicate;)Lorg/apache/commons/collections/Bag;
    .locals 1
    .param p0, "bag"    # Lorg/apache/commons/collections/Bag;
    .param p1, "predicate"    # Lorg/apache/commons/collections/Predicate;

    .line 63
    new-instance v0, Lorg/apache/commons/collections/bag/PredicatedBag;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/collections/bag/PredicatedBag;-><init>(Lorg/apache/commons/collections/Bag;Lorg/apache/commons/collections/Predicate;)V

    return-object v0
.end method


# virtual methods
.method public add(Ljava/lang/Object;I)Z
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "count"    # I

    .line 93
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/bag/PredicatedBag;->validate(Ljava/lang/Object;)V

    .line 94
    invoke-virtual {p0}, Lorg/apache/commons/collections/bag/PredicatedBag;->getBag()Lorg/apache/commons/collections/Bag;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lorg/apache/commons/collections/Bag;->add(Ljava/lang/Object;I)Z

    move-result v0

    return v0
.end method

.method protected getBag()Lorg/apache/commons/collections/Bag;
    .locals 1

    .line 88
    invoke-virtual {p0}, Lorg/apache/commons/collections/bag/PredicatedBag;->getCollection()Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/collections/Bag;

    return-object v0
.end method

.method public getCount(Ljava/lang/Object;)I
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;

    .line 106
    invoke-virtual {p0}, Lorg/apache/commons/collections/bag/PredicatedBag;->getBag()Lorg/apache/commons/collections/Bag;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/apache/commons/collections/Bag;->getCount(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public remove(Ljava/lang/Object;I)Z
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "count"    # I

    .line 98
    invoke-virtual {p0}, Lorg/apache/commons/collections/bag/PredicatedBag;->getBag()Lorg/apache/commons/collections/Bag;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lorg/apache/commons/collections/Bag;->remove(Ljava/lang/Object;I)Z

    move-result v0

    return v0
.end method

.method public uniqueSet()Ljava/util/Set;
    .locals 1

    .line 102
    invoke-virtual {p0}, Lorg/apache/commons/collections/bag/PredicatedBag;->getBag()Lorg/apache/commons/collections/Bag;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/collections/Bag;->uniqueSet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
