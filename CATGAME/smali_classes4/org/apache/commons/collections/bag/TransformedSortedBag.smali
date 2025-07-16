.class public Lorg/apache/commons/collections/bag/TransformedSortedBag;
.super Lorg/apache/commons/collections/bag/TransformedBag;
.source "TransformedSortedBag.java"

# interfaces
.implements Lorg/apache/commons/collections/SortedBag;


# static fields
.field private static final serialVersionUID:J = -0x37e5a24a72d224aL


# direct methods
.method protected constructor <init>(Lorg/apache/commons/collections/SortedBag;Lorg/apache/commons/collections/Transformer;)V
    .locals 0

    .line 72
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/collections/bag/TransformedBag;-><init>(Lorg/apache/commons/collections/Bag;Lorg/apache/commons/collections/Transformer;)V

    return-void
.end method

.method public static decorate(Lorg/apache/commons/collections/SortedBag;Lorg/apache/commons/collections/Transformer;)Lorg/apache/commons/collections/SortedBag;
    .locals 1

    .line 57
    new-instance v0, Lorg/apache/commons/collections/bag/TransformedSortedBag;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/collections/bag/TransformedSortedBag;-><init>(Lorg/apache/commons/collections/SortedBag;Lorg/apache/commons/collections/Transformer;)V

    return-object v0
.end method


# virtual methods
.method public comparator()Ljava/util/Comparator;
    .locals 1

    .line 94
    invoke-virtual {p0}, Lorg/apache/commons/collections/bag/TransformedSortedBag;->getSortedBag()Lorg/apache/commons/collections/SortedBag;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/collections/SortedBag;->comparator()Ljava/util/Comparator;

    move-result-object v0

    return-object v0
.end method

.method public first()Ljava/lang/Object;
    .locals 1

    .line 86
    invoke-virtual {p0}, Lorg/apache/commons/collections/bag/TransformedSortedBag;->getSortedBag()Lorg/apache/commons/collections/SortedBag;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/collections/SortedBag;->first()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected getSortedBag()Lorg/apache/commons/collections/SortedBag;
    .locals 1

    .line 81
    iget-object v0, p0, Lorg/apache/commons/collections/bag/TransformedSortedBag;->collection:Ljava/util/Collection;

    check-cast v0, Lorg/apache/commons/collections/SortedBag;

    return-object v0
.end method

.method public last()Ljava/lang/Object;
    .locals 1

    .line 90
    invoke-virtual {p0}, Lorg/apache/commons/collections/bag/TransformedSortedBag;->getSortedBag()Lorg/apache/commons/collections/SortedBag;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/collections/SortedBag;->last()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
