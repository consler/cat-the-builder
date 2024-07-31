.class public abstract Lorg/apache/commons/collections/bag/AbstractBagDecorator;
.super Lorg/apache/commons/collections/collection/AbstractCollectionDecorator;
.source "AbstractBagDecorator.java"

# interfaces
.implements Lorg/apache/commons/collections/Bag;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Lorg/apache/commons/collections/collection/AbstractCollectionDecorator;-><init>()V

    .line 43
    return-void
.end method

.method protected constructor <init>(Lorg/apache/commons/collections/Bag;)V
    .locals 0
    .param p1, "bag"    # Lorg/apache/commons/collections/Bag;

    .line 52
    invoke-direct {p0, p1}, Lorg/apache/commons/collections/collection/AbstractCollectionDecorator;-><init>(Ljava/util/Collection;)V

    .line 53
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;I)Z
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "count"    # I

    .line 70
    invoke-virtual {p0}, Lorg/apache/commons/collections/bag/AbstractBagDecorator;->getBag()Lorg/apache/commons/collections/Bag;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lorg/apache/commons/collections/Bag;->add(Ljava/lang/Object;I)Z

    move-result v0

    return v0
.end method

.method protected getBag()Lorg/apache/commons/collections/Bag;
    .locals 1

    .line 61
    invoke-virtual {p0}, Lorg/apache/commons/collections/bag/AbstractBagDecorator;->getCollection()Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/collections/Bag;

    return-object v0
.end method

.method public getCount(Ljava/lang/Object;)I
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;

    .line 66
    invoke-virtual {p0}, Lorg/apache/commons/collections/bag/AbstractBagDecorator;->getBag()Lorg/apache/commons/collections/Bag;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/apache/commons/collections/Bag;->getCount(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public remove(Ljava/lang/Object;I)Z
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "count"    # I

    .line 74
    invoke-virtual {p0}, Lorg/apache/commons/collections/bag/AbstractBagDecorator;->getBag()Lorg/apache/commons/collections/Bag;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lorg/apache/commons/collections/Bag;->remove(Ljava/lang/Object;I)Z

    move-result v0

    return v0
.end method

.method public uniqueSet()Ljava/util/Set;
    .locals 1

    .line 78
    invoke-virtual {p0}, Lorg/apache/commons/collections/bag/AbstractBagDecorator;->getBag()Lorg/apache/commons/collections/Bag;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/collections/Bag;->uniqueSet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
