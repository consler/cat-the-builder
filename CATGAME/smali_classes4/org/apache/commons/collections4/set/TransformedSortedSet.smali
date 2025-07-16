.class public Lorg/apache/commons/collections4/set/TransformedSortedSet;
.super Lorg/apache/commons/collections4/set/TransformedSet;
.source "TransformedSortedSet.java"

# interfaces
.implements Ljava/util/SortedSet;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/commons/collections4/set/TransformedSet<",
        "TE;>;",
        "Ljava/util/SortedSet<",
        "TE;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x17408660b86f89a2L


# direct methods
.method protected constructor <init>(Ljava/util/SortedSet;Lorg/apache/commons/collections4/Transformer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/SortedSet<",
            "TE;>;",
            "Lorg/apache/commons/collections4/Transformer<",
            "-TE;+TE;>;)V"
        }
    .end annotation

    .line 105
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/collections4/set/TransformedSet;-><init>(Ljava/util/Set;Lorg/apache/commons/collections4/Transformer;)V

    return-void
.end method

.method public static transformedSortedSet(Ljava/util/SortedSet;Lorg/apache/commons/collections4/Transformer;)Lorg/apache/commons/collections4/set/TransformedSortedSet;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/SortedSet<",
            "TE;>;",
            "Lorg/apache/commons/collections4/Transformer<",
            "-TE;+TE;>;)",
            "Lorg/apache/commons/collections4/set/TransformedSortedSet<",
            "TE;>;"
        }
    .end annotation

    .line 81
    new-instance v0, Lorg/apache/commons/collections4/set/TransformedSortedSet;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/collections4/set/TransformedSortedSet;-><init>(Ljava/util/SortedSet;Lorg/apache/commons/collections4/Transformer;)V

    .line 82
    invoke-interface {p0}, Ljava/util/SortedSet;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 84
    invoke-interface {p0}, Ljava/util/SortedSet;->toArray()[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    .line 85
    invoke-interface {p0}, Ljava/util/SortedSet;->clear()V

    .line 86
    array-length p0, v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p0, :cond_0

    aget-object v3, v1, v2

    .line 87
    invoke-virtual {v0}, Lorg/apache/commons/collections4/set/TransformedSortedSet;->decorated()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {p1, v3}, Lorg/apache/commons/collections4/Transformer;->transform(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static transformingSortedSet(Ljava/util/SortedSet;Lorg/apache/commons/collections4/Transformer;)Lorg/apache/commons/collections4/set/TransformedSortedSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/SortedSet<",
            "TE;>;",
            "Lorg/apache/commons/collections4/Transformer<",
            "-TE;+TE;>;)",
            "Lorg/apache/commons/collections4/set/TransformedSortedSet<",
            "TE;>;"
        }
    .end annotation

    .line 60
    new-instance v0, Lorg/apache/commons/collections4/set/TransformedSortedSet;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/collections4/set/TransformedSortedSet;-><init>(Ljava/util/SortedSet;Lorg/apache/commons/collections4/Transformer;)V

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
    invoke-virtual {p0}, Lorg/apache/commons/collections4/set/TransformedSortedSet;->getSortedSet()Ljava/util/SortedSet;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/SortedSet;->comparator()Ljava/util/Comparator;

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
    invoke-virtual {p0}, Lorg/apache/commons/collections4/set/TransformedSortedSet;->getSortedSet()Ljava/util/SortedSet;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/SortedSet;->first()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected getSortedSet()Ljava/util/SortedSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/SortedSet<",
            "TE;>;"
        }
    .end annotation

    .line 114
    invoke-virtual {p0}, Lorg/apache/commons/collections4/set/TransformedSortedSet;->decorated()Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/util/SortedSet;

    return-object v0
.end method

.method public headSet(Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Ljava/util/SortedSet<",
            "TE;>;"
        }
    .end annotation

    .line 142
    invoke-virtual {p0}, Lorg/apache/commons/collections4/set/TransformedSortedSet;->getSortedSet()Ljava/util/SortedSet;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/SortedSet;->headSet(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object p1

    .line 143
    new-instance v0, Lorg/apache/commons/collections4/set/TransformedSortedSet;

    iget-object v1, p0, Lorg/apache/commons/collections4/set/TransformedSortedSet;->transformer:Lorg/apache/commons/collections4/Transformer;

    invoke-direct {v0, p1, v1}, Lorg/apache/commons/collections4/set/TransformedSortedSet;-><init>(Ljava/util/SortedSet;Lorg/apache/commons/collections4/Transformer;)V

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
    invoke-virtual {p0}, Lorg/apache/commons/collections4/set/TransformedSortedSet;->getSortedSet()Ljava/util/SortedSet;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/SortedSet;->last()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public subSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;TE;)",
            "Ljava/util/SortedSet<",
            "TE;>;"
        }
    .end annotation

    .line 136
    invoke-virtual {p0}, Lorg/apache/commons/collections4/set/TransformedSortedSet;->getSortedSet()Ljava/util/SortedSet;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/SortedSet;->subSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object p1

    .line 137
    new-instance p2, Lorg/apache/commons/collections4/set/TransformedSortedSet;

    iget-object v0, p0, Lorg/apache/commons/collections4/set/TransformedSortedSet;->transformer:Lorg/apache/commons/collections4/Transformer;

    invoke-direct {p2, p1, v0}, Lorg/apache/commons/collections4/set/TransformedSortedSet;-><init>(Ljava/util/SortedSet;Lorg/apache/commons/collections4/Transformer;)V

    return-object p2
.end method

.method public tailSet(Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Ljava/util/SortedSet<",
            "TE;>;"
        }
    .end annotation

    .line 148
    invoke-virtual {p0}, Lorg/apache/commons/collections4/set/TransformedSortedSet;->getSortedSet()Ljava/util/SortedSet;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/SortedSet;->tailSet(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object p1

    .line 149
    new-instance v0, Lorg/apache/commons/collections4/set/TransformedSortedSet;

    iget-object v1, p0, Lorg/apache/commons/collections4/set/TransformedSortedSet;->transformer:Lorg/apache/commons/collections4/Transformer;

    invoke-direct {v0, p1, v1}, Lorg/apache/commons/collections4/set/TransformedSortedSet;-><init>(Ljava/util/SortedSet;Lorg/apache/commons/collections4/Transformer;)V

    return-object v0
.end method
