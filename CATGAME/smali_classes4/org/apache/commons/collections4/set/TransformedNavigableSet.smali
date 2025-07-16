.class public Lorg/apache/commons/collections4/set/TransformedNavigableSet;
.super Lorg/apache/commons/collections4/set/TransformedSortedSet;
.source "TransformedNavigableSet.java"

# interfaces
.implements Ljava/util/NavigableSet;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/commons/collections4/set/TransformedSortedSet<",
        "TE;>;",
        "Ljava/util/NavigableSet<",
        "TE;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1337900L


# direct methods
.method protected constructor <init>(Ljava/util/NavigableSet;Lorg/apache/commons/collections4/Transformer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/NavigableSet<",
            "TE;>;",
            "Lorg/apache/commons/collections4/Transformer<",
            "-TE;+TE;>;)V"
        }
    .end annotation

    .line 101
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/collections4/set/TransformedSortedSet;-><init>(Ljava/util/SortedSet;Lorg/apache/commons/collections4/Transformer;)V

    return-void
.end method

.method public static transformedNavigableSet(Ljava/util/NavigableSet;Lorg/apache/commons/collections4/Transformer;)Lorg/apache/commons/collections4/set/TransformedNavigableSet;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/NavigableSet<",
            "TE;>;",
            "Lorg/apache/commons/collections4/Transformer<",
            "-TE;+TE;>;)",
            "Lorg/apache/commons/collections4/set/TransformedNavigableSet<",
            "TE;>;"
        }
    .end annotation

    .line 76
    new-instance v0, Lorg/apache/commons/collections4/set/TransformedNavigableSet;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/collections4/set/TransformedNavigableSet;-><init>(Ljava/util/NavigableSet;Lorg/apache/commons/collections4/Transformer;)V

    .line 77
    invoke-interface {p0}, Ljava/util/NavigableSet;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 79
    invoke-interface {p0}, Ljava/util/NavigableSet;->toArray()[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    .line 80
    invoke-interface {p0}, Ljava/util/NavigableSet;->clear()V

    .line 81
    array-length p0, v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p0, :cond_0

    aget-object v3, v1, v2

    .line 82
    invoke-virtual {v0}, Lorg/apache/commons/collections4/set/TransformedNavigableSet;->decorated()Ljava/util/NavigableSet;

    move-result-object v4

    invoke-interface {p1, v3}, Lorg/apache/commons/collections4/Transformer;->transform(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/NavigableSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static transformingNavigableSet(Ljava/util/NavigableSet;Lorg/apache/commons/collections4/Transformer;)Lorg/apache/commons/collections4/set/TransformedNavigableSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/NavigableSet<",
            "TE;>;",
            "Lorg/apache/commons/collections4/Transformer<",
            "-TE;+TE;>;)",
            "Lorg/apache/commons/collections4/set/TransformedNavigableSet<",
            "TE;>;"
        }
    .end annotation

    .line 56
    new-instance v0, Lorg/apache/commons/collections4/set/TransformedNavigableSet;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/collections4/set/TransformedNavigableSet;-><init>(Ljava/util/NavigableSet;Lorg/apache/commons/collections4/Transformer;)V

    return-object v0
.end method


# virtual methods
.method public ceiling(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)TE;"
        }
    .end annotation

    .line 128
    invoke-virtual {p0}, Lorg/apache/commons/collections4/set/TransformedNavigableSet;->decorated()Ljava/util/NavigableSet;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/NavigableSet;->ceiling(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic decorated()Ljava/util/Collection;
    .locals 1

    .line 36
    invoke-virtual {p0}, Lorg/apache/commons/collections4/set/TransformedNavigableSet;->decorated()Ljava/util/NavigableSet;

    move-result-object v0

    return-object v0
.end method

.method protected decorated()Ljava/util/NavigableSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/NavigableSet<",
            "TE;>;"
        }
    .end annotation

    .line 111
    invoke-super {p0}, Lorg/apache/commons/collections4/set/TransformedSortedSet;->decorated()Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/util/NavigableSet;

    return-object v0
.end method

.method public descendingIterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    .line 153
    invoke-virtual {p0}, Lorg/apache/commons/collections4/set/TransformedNavigableSet;->decorated()Ljava/util/NavigableSet;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/NavigableSet;->descendingIterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public descendingSet()Ljava/util/NavigableSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/NavigableSet<",
            "TE;>;"
        }
    .end annotation

    .line 148
    invoke-virtual {p0}, Lorg/apache/commons/collections4/set/TransformedNavigableSet;->decorated()Ljava/util/NavigableSet;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/NavigableSet;->descendingSet()Ljava/util/NavigableSet;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/commons/collections4/set/TransformedNavigableSet;->transformer:Lorg/apache/commons/collections4/Transformer;

    invoke-static {v0, v1}, Lorg/apache/commons/collections4/set/TransformedNavigableSet;->transformingNavigableSet(Ljava/util/NavigableSet;Lorg/apache/commons/collections4/Transformer;)Lorg/apache/commons/collections4/set/TransformedNavigableSet;

    move-result-object v0

    return-object v0
.end method

.method public floor(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)TE;"
        }
    .end annotation

    .line 123
    invoke-virtual {p0}, Lorg/apache/commons/collections4/set/TransformedNavigableSet;->decorated()Ljava/util/NavigableSet;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/NavigableSet;->floor(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public headSet(Ljava/lang/Object;Z)Ljava/util/NavigableSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;Z)",
            "Ljava/util/NavigableSet<",
            "TE;>;"
        }
    .end annotation

    .line 165
    invoke-virtual {p0}, Lorg/apache/commons/collections4/set/TransformedNavigableSet;->decorated()Ljava/util/NavigableSet;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/NavigableSet;->headSet(Ljava/lang/Object;Z)Ljava/util/NavigableSet;

    move-result-object p1

    .line 166
    iget-object p2, p0, Lorg/apache/commons/collections4/set/TransformedNavigableSet;->transformer:Lorg/apache/commons/collections4/Transformer;

    invoke-static {p1, p2}, Lorg/apache/commons/collections4/set/TransformedNavigableSet;->transformingNavigableSet(Ljava/util/NavigableSet;Lorg/apache/commons/collections4/Transformer;)Lorg/apache/commons/collections4/set/TransformedNavigableSet;

    move-result-object p1

    return-object p1
.end method

.method public higher(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)TE;"
        }
    .end annotation

    .line 133
    invoke-virtual {p0}, Lorg/apache/commons/collections4/set/TransformedNavigableSet;->decorated()Ljava/util/NavigableSet;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/NavigableSet;->higher(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public lower(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)TE;"
        }
    .end annotation

    .line 118
    invoke-virtual {p0}, Lorg/apache/commons/collections4/set/TransformedNavigableSet;->decorated()Ljava/util/NavigableSet;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/NavigableSet;->lower(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public pollFirst()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 138
    invoke-virtual {p0}, Lorg/apache/commons/collections4/set/TransformedNavigableSet;->decorated()Ljava/util/NavigableSet;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/NavigableSet;->pollFirst()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public pollLast()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 143
    invoke-virtual {p0}, Lorg/apache/commons/collections4/set/TransformedNavigableSet;->decorated()Ljava/util/NavigableSet;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/NavigableSet;->pollLast()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public subSet(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/NavigableSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;ZTE;Z)",
            "Ljava/util/NavigableSet<",
            "TE;>;"
        }
    .end annotation

    .line 159
    invoke-virtual {p0}, Lorg/apache/commons/collections4/set/TransformedNavigableSet;->decorated()Ljava/util/NavigableSet;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Ljava/util/NavigableSet;->subSet(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/NavigableSet;

    move-result-object p1

    .line 160
    iget-object p2, p0, Lorg/apache/commons/collections4/set/TransformedNavigableSet;->transformer:Lorg/apache/commons/collections4/Transformer;

    invoke-static {p1, p2}, Lorg/apache/commons/collections4/set/TransformedNavigableSet;->transformingNavigableSet(Ljava/util/NavigableSet;Lorg/apache/commons/collections4/Transformer;)Lorg/apache/commons/collections4/set/TransformedNavigableSet;

    move-result-object p1

    return-object p1
.end method

.method public tailSet(Ljava/lang/Object;Z)Ljava/util/NavigableSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;Z)",
            "Ljava/util/NavigableSet<",
            "TE;>;"
        }
    .end annotation

    .line 171
    invoke-virtual {p0}, Lorg/apache/commons/collections4/set/TransformedNavigableSet;->decorated()Ljava/util/NavigableSet;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/NavigableSet;->tailSet(Ljava/lang/Object;Z)Ljava/util/NavigableSet;

    move-result-object p1

    .line 172
    iget-object p2, p0, Lorg/apache/commons/collections4/set/TransformedNavigableSet;->transformer:Lorg/apache/commons/collections4/Transformer;

    invoke-static {p1, p2}, Lorg/apache/commons/collections4/set/TransformedNavigableSet;->transformingNavigableSet(Ljava/util/NavigableSet;Lorg/apache/commons/collections4/Transformer;)Lorg/apache/commons/collections4/set/TransformedNavigableSet;

    move-result-object p1

    return-object p1
.end method
