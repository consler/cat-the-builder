.class public Lorg/apache/commons/collections/bag/TransformedBag;
.super Lorg/apache/commons/collections/collection/TransformedCollection;
.source "TransformedBag.java"

# interfaces
.implements Lorg/apache/commons/collections/Bag;


# static fields
.field private static final serialVersionUID:J = 0x4b3bde38a2a97889L


# direct methods
.method protected constructor <init>(Lorg/apache/commons/collections/Bag;Lorg/apache/commons/collections/Transformer;)V
    .locals 0

    .line 74
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/collections/collection/TransformedCollection;-><init>(Ljava/util/Collection;Lorg/apache/commons/collections/Transformer;)V

    return-void
.end method

.method public static decorate(Lorg/apache/commons/collections/Bag;Lorg/apache/commons/collections/Transformer;)Lorg/apache/commons/collections/Bag;
    .locals 1

    .line 59
    new-instance v0, Lorg/apache/commons/collections/bag/TransformedBag;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/collections/bag/TransformedBag;-><init>(Lorg/apache/commons/collections/Bag;Lorg/apache/commons/collections/Transformer;)V

    return-object v0
.end method


# virtual methods
.method public add(Ljava/lang/Object;I)Z
    .locals 1

    .line 97
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/bag/TransformedBag;->transform(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 98
    invoke-virtual {p0}, Lorg/apache/commons/collections/bag/TransformedBag;->getBag()Lorg/apache/commons/collections/Bag;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lorg/apache/commons/collections/Bag;->add(Ljava/lang/Object;I)Z

    move-result p1

    return p1
.end method

.method protected getBag()Lorg/apache/commons/collections/Bag;
    .locals 1

    .line 83
    iget-object v0, p0, Lorg/apache/commons/collections/bag/TransformedBag;->collection:Ljava/util/Collection;

    check-cast v0, Lorg/apache/commons/collections/Bag;

    return-object v0
.end method

.method public getCount(Ljava/lang/Object;)I
    .locals 1

    .line 88
    invoke-virtual {p0}, Lorg/apache/commons/collections/bag/TransformedBag;->getBag()Lorg/apache/commons/collections/Bag;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/apache/commons/collections/Bag;->getCount(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public remove(Ljava/lang/Object;I)Z
    .locals 1

    .line 92
    invoke-virtual {p0}, Lorg/apache/commons/collections/bag/TransformedBag;->getBag()Lorg/apache/commons/collections/Bag;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lorg/apache/commons/collections/Bag;->remove(Ljava/lang/Object;I)Z

    move-result p1

    return p1
.end method

.method public uniqueSet()Ljava/util/Set;
    .locals 2

    .line 102
    invoke-virtual {p0}, Lorg/apache/commons/collections/bag/TransformedBag;->getBag()Lorg/apache/commons/collections/Bag;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/collections/Bag;->uniqueSet()Ljava/util/Set;

    move-result-object v0

    .line 103
    iget-object v1, p0, Lorg/apache/commons/collections/bag/TransformedBag;->transformer:Lorg/apache/commons/collections/Transformer;

    invoke-static {v0, v1}, Lorg/apache/commons/collections/set/TransformedSet;->decorate(Ljava/util/Set;Lorg/apache/commons/collections/Transformer;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
