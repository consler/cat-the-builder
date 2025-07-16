.class public abstract Lorg/apache/commons/collections/bag/AbstractSortedBagDecorator;
.super Lorg/apache/commons/collections/bag/AbstractBagDecorator;
.source "AbstractSortedBagDecorator.java"

# interfaces
.implements Lorg/apache/commons/collections/SortedBag;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Lorg/apache/commons/collections/bag/AbstractBagDecorator;-><init>()V

    return-void
.end method

.method protected constructor <init>(Lorg/apache/commons/collections/SortedBag;)V
    .locals 0

    .line 51
    invoke-direct {p0, p1}, Lorg/apache/commons/collections/bag/AbstractBagDecorator;-><init>(Lorg/apache/commons/collections/Bag;)V

    return-void
.end method


# virtual methods
.method public comparator()Ljava/util/Comparator;
    .locals 1

    .line 73
    invoke-virtual {p0}, Lorg/apache/commons/collections/bag/AbstractSortedBagDecorator;->getSortedBag()Lorg/apache/commons/collections/SortedBag;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/collections/SortedBag;->comparator()Ljava/util/Comparator;

    move-result-object v0

    return-object v0
.end method

.method public first()Ljava/lang/Object;
    .locals 1

    .line 65
    invoke-virtual {p0}, Lorg/apache/commons/collections/bag/AbstractSortedBagDecorator;->getSortedBag()Lorg/apache/commons/collections/SortedBag;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/collections/SortedBag;->first()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected getSortedBag()Lorg/apache/commons/collections/SortedBag;
    .locals 1

    .line 60
    invoke-virtual {p0}, Lorg/apache/commons/collections/bag/AbstractSortedBagDecorator;->getCollection()Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/collections/SortedBag;

    return-object v0
.end method

.method public last()Ljava/lang/Object;
    .locals 1

    .line 69
    invoke-virtual {p0}, Lorg/apache/commons/collections/bag/AbstractSortedBagDecorator;->getSortedBag()Lorg/apache/commons/collections/SortedBag;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/collections/SortedBag;->last()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
