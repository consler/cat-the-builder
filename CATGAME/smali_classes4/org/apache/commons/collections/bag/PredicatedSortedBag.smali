.class public Lorg/apache/commons/collections/bag/PredicatedSortedBag;
.super Lorg/apache/commons/collections/bag/PredicatedBag;
.source "PredicatedSortedBag.java"

# interfaces
.implements Lorg/apache/commons/collections/SortedBag;


# static fields
.field private static final serialVersionUID:J = 0x2fdbd26f0d2b89d8L


# direct methods
.method protected constructor <init>(Lorg/apache/commons/collections/SortedBag;Lorg/apache/commons/collections/Predicate;)V
    .locals 0

    .line 78
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/collections/bag/PredicatedBag;-><init>(Lorg/apache/commons/collections/Bag;Lorg/apache/commons/collections/Predicate;)V

    return-void
.end method

.method public static decorate(Lorg/apache/commons/collections/SortedBag;Lorg/apache/commons/collections/Predicate;)Lorg/apache/commons/collections/SortedBag;
    .locals 1

    .line 62
    new-instance v0, Lorg/apache/commons/collections/bag/PredicatedSortedBag;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/collections/bag/PredicatedSortedBag;-><init>(Lorg/apache/commons/collections/SortedBag;Lorg/apache/commons/collections/Predicate;)V

    return-object v0
.end method


# virtual methods
.method public comparator()Ljava/util/Comparator;
    .locals 1

    .line 100
    invoke-virtual {p0}, Lorg/apache/commons/collections/bag/PredicatedSortedBag;->getSortedBag()Lorg/apache/commons/collections/SortedBag;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/collections/SortedBag;->comparator()Ljava/util/Comparator;

    move-result-object v0

    return-object v0
.end method

.method public first()Ljava/lang/Object;
    .locals 1

    .line 92
    invoke-virtual {p0}, Lorg/apache/commons/collections/bag/PredicatedSortedBag;->getSortedBag()Lorg/apache/commons/collections/SortedBag;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/collections/SortedBag;->first()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected getSortedBag()Lorg/apache/commons/collections/SortedBag;
    .locals 1

    .line 87
    invoke-virtual {p0}, Lorg/apache/commons/collections/bag/PredicatedSortedBag;->getCollection()Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/collections/SortedBag;

    return-object v0
.end method

.method public last()Ljava/lang/Object;
    .locals 1

    .line 96
    invoke-virtual {p0}, Lorg/apache/commons/collections/bag/PredicatedSortedBag;->getSortedBag()Lorg/apache/commons/collections/SortedBag;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/collections/SortedBag;->last()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
