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
    .local p0, "this":Lorg/apache/commons/collections4/set/TransformedNavigableSet;, "Lorg/apache/commons/collections4/set/TransformedNavigableSet<TE;>;"
    .local p1, "set":Ljava/util/NavigableSet;, "Ljava/util/NavigableSet<TE;>;"
    .local p2, "transformer":Lorg/apache/commons/collections4/Transformer;, "Lorg/apache/commons/collections4/Transformer<-TE;+TE;>;"
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/collections4/set/TransformedSortedSet;-><init>(Ljava/util/SortedSet;Lorg/apache/commons/collections4/Transformer;)V

    .line 102
    return-void
.end method

.method public static transformedNavigableSet(Ljava/util/NavigableSet;Lorg/apache/commons/collections4/Transformer;)Lorg/apache/commons/collections4/set/TransformedNavigableSet;
    .locals 7
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
    .local p0, "set":Ljava/util/NavigableSet;, "Ljava/util/NavigableSet<TE;>;"
    .local p1, "transformer":Lorg/apache/commons/collections4/Transformer;, "Lorg/apache/commons/collections4/Transformer<-TE;+TE;>;"
    new-instance v0, Lorg/apache/commons/collections4/set/TransformedNavigableSet;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/collections4/set/TransformedNavigableSet;-><init>(Ljava/util/NavigableSet;Lorg/apache/commons/collections4/Transformer;)V

    .line 77
    .local v0, "decorated":Lorg/apache/commons/collections4/set/TransformedNavigableSet;, "Lorg/apache/commons/collections4/set/TransformedNavigableSet<TE;>;"
    invoke-interface {p0}, Ljava/util/NavigableSet;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 79
    invoke-interface {p0}, Ljava/util/NavigableSet;->toArray()[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    .line 80
    .local v1, "values":[Ljava/lang/Object;, "[TE;"
    invoke-interface {p0}, Ljava/util/NavigableSet;->clear()V

    .line 81
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 82
    .local v4, "value":Ljava/lang/Object;, "TE;"
    invoke-virtual {v0}, Lorg/apache/commons/collections4/set/TransformedNavigableSet;->decorated()Ljava/util/NavigableSet;

    move-result-object v5

    invoke-interface {p1, v4}, Lorg/apache/commons/collections4/Transformer;->transform(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/NavigableSet;->add(Ljava/lang/Object;)Z

    .line 81
    .end local v4    # "value":Ljava/lang/Object;, "TE;"
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 85
    .end local v1    # "values":[Ljava/lang/Object;, "[TE;"
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
    .local p0, "set":Ljava/util/NavigableSet;, "Ljava/util/NavigableSet<TE;>;"
    .local p1, "transformer":Lorg/apache/commons/collections4/Transformer;, "Lorg/apache/commons/collections4/Transformer<-TE;+TE;>;"
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
    .local p0, "this":Lorg/apache/commons/collections4/set/TransformedNavigableSet;, "Lorg/apache/commons/collections4/set/TransformedNavigableSet<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/set/TransformedNavigableSet;->decorated()Ljava/util/NavigableSet;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/NavigableSet;->ceiling(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic decorated()Ljava/util/Collection;
    .locals 1

    .line 36
    .local p0, "this":Lorg/apache/commons/collections4/set/TransformedNavigableSet;, "Lorg/apache/commons/collections4/set/TransformedNavigableSet<TE;>;"
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
    .local p0, "this":Lorg/apache/commons/collections4/set/TransformedNavigableSet;, "Lorg/apache/commons/collections4/set/TransformedNavigableSet<TE;>;"
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
    .local p0, "this":Lorg/apache/commons/collections4/set/TransformedNavigableSet;, "Lorg/apache/commons/collections4/set/TransformedNavigableSet<TE;>;"
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
    .local p0, "this":Lorg/apache/commons/collections4/set/TransformedNavigableSet;, "Lorg/apache/commons/collections4/set/TransformedNavigableSet<TE;>;"
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
    .local p0, "this":Lorg/apache/commons/collections4/set/TransformedNavigableSet;, "Lorg/apache/commons/collections4/set/TransformedNavigableSet<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/set/TransformedNavigableSet;->decorated()Ljava/util/NavigableSet;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/NavigableSet;->floor(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public headSet(Ljava/lang/Object;Z)Ljava/util/NavigableSet;
    .locals 2
    .param p2, "inclusive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;Z)",
            "Ljava/util/NavigableSet<",
            "TE;>;"
        }
    .end annotation

    .line 165
    .local p0, "this":Lorg/apache/commons/collections4/set/TransformedNavigableSet;, "Lorg/apache/commons/collections4/set/TransformedNavigableSet<TE;>;"
    .local p1, "toElement":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/set/TransformedNavigableSet;->decorated()Ljava/util/NavigableSet;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/NavigableSet;->headSet(Ljava/lang/Object;Z)Ljava/util/NavigableSet;

    move-result-object v0

    .line 166
    .local v0, "head":Ljava/util/NavigableSet;, "Ljava/util/NavigableSet<TE;>;"
    iget-object v1, p0, Lorg/apache/commons/collections4/set/TransformedNavigableSet;->transformer:Lorg/apache/commons/collections4/Transformer;

    invoke-static {v0, v1}, Lorg/apache/commons/collections4/set/TransformedNavigableSet;->transformingNavigableSet(Ljava/util/NavigableSet;Lorg/apache/commons/collections4/Transformer;)Lorg/apache/commons/collections4/set/TransformedNavigableSet;

    move-result-object v1

    return-object v1
.end method

.method public higher(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)TE;"
        }
    .end annotation

    .line 133
    .local p0, "this":Lorg/apache/commons/collections4/set/TransformedNavigableSet;, "Lorg/apache/commons/collections4/set/TransformedNavigableSet<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/set/TransformedNavigableSet;->decorated()Ljava/util/NavigableSet;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/NavigableSet;->higher(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public lower(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)TE;"
        }
    .end annotation

    .line 118
    .local p0, "this":Lorg/apache/commons/collections4/set/TransformedNavigableSet;, "Lorg/apache/commons/collections4/set/TransformedNavigableSet<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/set/TransformedNavigableSet;->decorated()Ljava/util/NavigableSet;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/NavigableSet;->lower(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public pollFirst()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 138
    .local p0, "this":Lorg/apache/commons/collections4/set/TransformedNavigableSet;, "Lorg/apache/commons/collections4/set/TransformedNavigableSet<TE;>;"
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
    .local p0, "this":Lorg/apache/commons/collections4/set/TransformedNavigableSet;, "Lorg/apache/commons/collections4/set/TransformedNavigableSet<TE;>;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/set/TransformedNavigableSet;->decorated()Ljava/util/NavigableSet;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/NavigableSet;->pollLast()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public subSet(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/NavigableSet;
    .locals 2
    .param p2, "fromInclusive"    # Z
    .param p4, "toInclusive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;ZTE;Z)",
            "Ljava/util/NavigableSet<",
            "TE;>;"
        }
    .end annotation

    .line 159
    .local p0, "this":Lorg/apache/commons/collections4/set/TransformedNavigableSet;, "Lorg/apache/commons/collections4/set/TransformedNavigableSet<TE;>;"
    .local p1, "fromElement":Ljava/lang/Object;, "TE;"
    .local p3, "toElement":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/set/TransformedNavigableSet;->decorated()Ljava/util/NavigableSet;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Ljava/util/NavigableSet;->subSet(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/NavigableSet;

    move-result-object v0

    .line 160
    .local v0, "sub":Ljava/util/NavigableSet;, "Ljava/util/NavigableSet<TE;>;"
    iget-object v1, p0, Lorg/apache/commons/collections4/set/TransformedNavigableSet;->transformer:Lorg/apache/commons/collections4/Transformer;

    invoke-static {v0, v1}, Lorg/apache/commons/collections4/set/TransformedNavigableSet;->transformingNavigableSet(Ljava/util/NavigableSet;Lorg/apache/commons/collections4/Transformer;)Lorg/apache/commons/collections4/set/TransformedNavigableSet;

    move-result-object v1

    return-object v1
.end method

.method public tailSet(Ljava/lang/Object;Z)Ljava/util/NavigableSet;
    .locals 2
    .param p2, "inclusive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;Z)",
            "Ljava/util/NavigableSet<",
            "TE;>;"
        }
    .end annotation

    .line 171
    .local p0, "this":Lorg/apache/commons/collections4/set/TransformedNavigableSet;, "Lorg/apache/commons/collections4/set/TransformedNavigableSet<TE;>;"
    .local p1, "fromElement":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/set/TransformedNavigableSet;->decorated()Ljava/util/NavigableSet;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/NavigableSet;->tailSet(Ljava/lang/Object;Z)Ljava/util/NavigableSet;

    move-result-object v0

    .line 172
    .local v0, "tail":Ljava/util/NavigableSet;, "Ljava/util/NavigableSet<TE;>;"
    iget-object v1, p0, Lorg/apache/commons/collections4/set/TransformedNavigableSet;->transformer:Lorg/apache/commons/collections4/Transformer;

    invoke-static {v0, v1}, Lorg/apache/commons/collections4/set/TransformedNavigableSet;->transformingNavigableSet(Ljava/util/NavigableSet;Lorg/apache/commons/collections4/Transformer;)Lorg/apache/commons/collections4/set/TransformedNavigableSet;

    move-result-object v1

    return-object v1
.end method
