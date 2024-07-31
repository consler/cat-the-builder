.class public Lorg/apache/commons/collections4/bag/TransformedSortedBag;
.super Lorg/apache/commons/collections4/bag/TransformedBag;
.source "TransformedSortedBag.java"

# interfaces
.implements Lorg/apache/commons/collections4/SortedBag;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/commons/collections4/bag/TransformedBag<",
        "TE;>;",
        "Lorg/apache/commons/collections4/SortedBag<",
        "TE;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x37e5a24a72d224aL


# direct methods
.method protected constructor <init>(Lorg/apache/commons/collections4/SortedBag;Lorg/apache/commons/collections4/Transformer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/SortedBag<",
            "TE;>;",
            "Lorg/apache/commons/collections4/Transformer<",
            "-TE;+TE;>;)V"
        }
    .end annotation

    .line 104
    .local p0, "this":Lorg/apache/commons/collections4/bag/TransformedSortedBag;, "Lorg/apache/commons/collections4/bag/TransformedSortedBag<TE;>;"
    .local p1, "bag":Lorg/apache/commons/collections4/SortedBag;, "Lorg/apache/commons/collections4/SortedBag<TE;>;"
    .local p2, "transformer":Lorg/apache/commons/collections4/Transformer;, "Lorg/apache/commons/collections4/Transformer<-TE;+TE;>;"
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/collections4/bag/TransformedBag;-><init>(Lorg/apache/commons/collections4/Bag;Lorg/apache/commons/collections4/Transformer;)V

    .line 105
    return-void
.end method

.method public static transformedSortedBag(Lorg/apache/commons/collections4/SortedBag;Lorg/apache/commons/collections4/Transformer;)Lorg/apache/commons/collections4/bag/TransformedSortedBag;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/commons/collections4/SortedBag<",
            "TE;>;",
            "Lorg/apache/commons/collections4/Transformer<",
            "-TE;+TE;>;)",
            "Lorg/apache/commons/collections4/bag/TransformedSortedBag<",
            "TE;>;"
        }
    .end annotation

    .line 80
    .local p0, "bag":Lorg/apache/commons/collections4/SortedBag;, "Lorg/apache/commons/collections4/SortedBag<TE;>;"
    .local p1, "transformer":Lorg/apache/commons/collections4/Transformer;, "Lorg/apache/commons/collections4/Transformer<-TE;+TE;>;"
    new-instance v0, Lorg/apache/commons/collections4/bag/TransformedSortedBag;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/collections4/bag/TransformedSortedBag;-><init>(Lorg/apache/commons/collections4/SortedBag;Lorg/apache/commons/collections4/Transformer;)V

    .line 81
    .local v0, "decorated":Lorg/apache/commons/collections4/bag/TransformedSortedBag;, "Lorg/apache/commons/collections4/bag/TransformedSortedBag<TE;>;"
    invoke-interface {p0}, Lorg/apache/commons/collections4/SortedBag;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 83
    invoke-interface {p0}, Lorg/apache/commons/collections4/SortedBag;->toArray()[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    .line 84
    .local v1, "values":[Ljava/lang/Object;, "[TE;"
    invoke-interface {p0}, Lorg/apache/commons/collections4/SortedBag;->clear()V

    .line 85
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 86
    .local v4, "value":Ljava/lang/Object;, "TE;"
    invoke-virtual {v0}, Lorg/apache/commons/collections4/bag/TransformedSortedBag;->decorated()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {p1, v4}, Lorg/apache/commons/collections4/Transformer;->transform(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 85
    .end local v4    # "value":Ljava/lang/Object;, "TE;"
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 89
    .end local v1    # "values":[Ljava/lang/Object;, "[TE;"
    :cond_0
    return-object v0
.end method

.method public static transformingSortedBag(Lorg/apache/commons/collections4/SortedBag;Lorg/apache/commons/collections4/Transformer;)Lorg/apache/commons/collections4/bag/TransformedSortedBag;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/commons/collections4/SortedBag<",
            "TE;>;",
            "Lorg/apache/commons/collections4/Transformer<",
            "-TE;+TE;>;)",
            "Lorg/apache/commons/collections4/bag/TransformedSortedBag<",
            "TE;>;"
        }
    .end annotation

    .line 59
    .local p0, "bag":Lorg/apache/commons/collections4/SortedBag;, "Lorg/apache/commons/collections4/SortedBag<TE;>;"
    .local p1, "transformer":Lorg/apache/commons/collections4/Transformer;, "Lorg/apache/commons/collections4/Transformer<-TE;+TE;>;"
    new-instance v0, Lorg/apache/commons/collections4/bag/TransformedSortedBag;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/collections4/bag/TransformedSortedBag;-><init>(Lorg/apache/commons/collections4/SortedBag;Lorg/apache/commons/collections4/Transformer;)V

    return-object v0
.end method


# virtual methods
.method public comparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "-TE;>;"
        }
    .end annotation

    .line 130
    .local p0, "this":Lorg/apache/commons/collections4/bag/TransformedSortedBag;, "Lorg/apache/commons/collections4/bag/TransformedSortedBag<TE;>;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/bag/TransformedSortedBag;->getSortedBag()Lorg/apache/commons/collections4/SortedBag;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/collections4/SortedBag;->comparator()Ljava/util/Comparator;

    move-result-object v0

    return-object v0
.end method

.method public first()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 120
    .local p0, "this":Lorg/apache/commons/collections4/bag/TransformedSortedBag;, "Lorg/apache/commons/collections4/bag/TransformedSortedBag<TE;>;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/bag/TransformedSortedBag;->getSortedBag()Lorg/apache/commons/collections4/SortedBag;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/collections4/SortedBag;->first()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected getSortedBag()Lorg/apache/commons/collections4/SortedBag;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/collections4/SortedBag<",
            "TE;>;"
        }
    .end annotation

    .line 113
    .local p0, "this":Lorg/apache/commons/collections4/bag/TransformedSortedBag;, "Lorg/apache/commons/collections4/bag/TransformedSortedBag<TE;>;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/bag/TransformedSortedBag;->decorated()Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/collections4/SortedBag;

    return-object v0
.end method

.method public last()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 125
    .local p0, "this":Lorg/apache/commons/collections4/bag/TransformedSortedBag;, "Lorg/apache/commons/collections4/bag/TransformedSortedBag<TE;>;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/bag/TransformedSortedBag;->getSortedBag()Lorg/apache/commons/collections4/SortedBag;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/collections4/SortedBag;->last()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
