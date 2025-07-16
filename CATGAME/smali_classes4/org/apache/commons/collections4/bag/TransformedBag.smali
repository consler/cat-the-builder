.class public Lorg/apache/commons/collections4/bag/TransformedBag;
.super Lorg/apache/commons/collections4/collection/TransformedCollection;
.source "TransformedBag.java"

# interfaces
.implements Lorg/apache/commons/collections4/Bag;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/commons/collections4/collection/TransformedCollection<",
        "TE;>;",
        "Lorg/apache/commons/collections4/Bag<",
        "TE;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x4b3bde38a2a97889L


# direct methods
.method protected constructor <init>(Lorg/apache/commons/collections4/Bag;Lorg/apache/commons/collections4/Transformer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/Bag<",
            "TE;>;",
            "Lorg/apache/commons/collections4/Transformer<",
            "-TE;+TE;>;)V"
        }
    .end annotation

    .line 103
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/collections4/collection/TransformedCollection;-><init>(Ljava/util/Collection;Lorg/apache/commons/collections4/Transformer;)V

    return-void
.end method

.method public static transformedBag(Lorg/apache/commons/collections4/Bag;Lorg/apache/commons/collections4/Transformer;)Lorg/apache/commons/collections4/Bag;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/commons/collections4/Bag<",
            "TE;>;",
            "Lorg/apache/commons/collections4/Transformer<",
            "-TE;+TE;>;)",
            "Lorg/apache/commons/collections4/Bag<",
            "TE;>;"
        }
    .end annotation

    .line 79
    new-instance v0, Lorg/apache/commons/collections4/bag/TransformedBag;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/collections4/bag/TransformedBag;-><init>(Lorg/apache/commons/collections4/Bag;Lorg/apache/commons/collections4/Transformer;)V

    .line 80
    invoke-interface {p0}, Lorg/apache/commons/collections4/Bag;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 82
    invoke-interface {p0}, Lorg/apache/commons/collections4/Bag;->toArray()[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    .line 83
    invoke-interface {p0}, Lorg/apache/commons/collections4/Bag;->clear()V

    .line 84
    array-length p0, v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p0, :cond_0

    aget-object v3, v1, v2

    .line 85
    invoke-virtual {v0}, Lorg/apache/commons/collections4/bag/TransformedBag;->decorated()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {p1, v3}, Lorg/apache/commons/collections4/Transformer;->transform(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static transformingBag(Lorg/apache/commons/collections4/Bag;Lorg/apache/commons/collections4/Transformer;)Lorg/apache/commons/collections4/Bag;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/commons/collections4/Bag<",
            "TE;>;",
            "Lorg/apache/commons/collections4/Transformer<",
            "-TE;+TE;>;)",
            "Lorg/apache/commons/collections4/Bag<",
            "TE;>;"
        }
    .end annotation

    .line 60
    new-instance v0, Lorg/apache/commons/collections4/bag/TransformedBag;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/collections4/bag/TransformedBag;-><init>(Lorg/apache/commons/collections4/Bag;Lorg/apache/commons/collections4/Transformer;)V

    return-object v0
.end method


# virtual methods
.method public add(Ljava/lang/Object;I)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;I)Z"
        }
    .end annotation

    .line 141
    invoke-virtual {p0}, Lorg/apache/commons/collections4/bag/TransformedBag;->getBag()Lorg/apache/commons/collections4/Bag;

    move-result-object v0

    invoke-virtual {p0, p1}, Lorg/apache/commons/collections4/bag/TransformedBag;->transform(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Lorg/apache/commons/collections4/Bag;->add(Ljava/lang/Object;I)Z

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-eq p1, p0, :cond_1

    .line 117
    invoke-virtual {p0}, Lorg/apache/commons/collections4/bag/TransformedBag;->decorated()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Collection;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method protected getBag()Lorg/apache/commons/collections4/Bag;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/collections4/Bag<",
            "TE;>;"
        }
    .end annotation

    .line 112
    invoke-virtual {p0}, Lorg/apache/commons/collections4/bag/TransformedBag;->decorated()Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/collections4/Bag;

    return-object v0
.end method

.method public getCount(Ljava/lang/Object;)I
    .locals 1

    .line 129
    invoke-virtual {p0}, Lorg/apache/commons/collections4/bag/TransformedBag;->getBag()Lorg/apache/commons/collections4/Bag;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/apache/commons/collections4/Bag;->getCount(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 1

    .line 122
    invoke-virtual {p0}, Lorg/apache/commons/collections4/bag/TransformedBag;->decorated()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->hashCode()I

    move-result v0

    return v0
.end method

.method public remove(Ljava/lang/Object;I)Z
    .locals 1

    .line 134
    invoke-virtual {p0}, Lorg/apache/commons/collections4/bag/TransformedBag;->getBag()Lorg/apache/commons/collections4/Bag;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lorg/apache/commons/collections4/Bag;->remove(Ljava/lang/Object;I)Z

    move-result p1

    return p1
.end method

.method public uniqueSet()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TE;>;"
        }
    .end annotation

    .line 146
    invoke-virtual {p0}, Lorg/apache/commons/collections4/bag/TransformedBag;->getBag()Lorg/apache/commons/collections4/Bag;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/collections4/Bag;->uniqueSet()Ljava/util/Set;

    move-result-object v0

    .line 147
    iget-object v1, p0, Lorg/apache/commons/collections4/bag/TransformedBag;->transformer:Lorg/apache/commons/collections4/Transformer;

    invoke-static {v0, v1}, Lorg/apache/commons/collections4/set/TransformedSet;->transformingSet(Ljava/util/Set;Lorg/apache/commons/collections4/Transformer;)Lorg/apache/commons/collections4/set/TransformedSet;

    move-result-object v0

    return-object v0
.end method
