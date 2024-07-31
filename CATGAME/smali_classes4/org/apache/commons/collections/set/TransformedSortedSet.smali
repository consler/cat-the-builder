.class public Lorg/apache/commons/collections/set/TransformedSortedSet;
.super Lorg/apache/commons/collections/set/TransformedSet;
.source "TransformedSortedSet.java"

# interfaces
.implements Ljava/util/SortedSet;


# static fields
.field private static final serialVersionUID:J = -0x17408660b86f89a2L


# direct methods
.method protected constructor <init>(Ljava/util/SortedSet;Lorg/apache/commons/collections/Transformer;)V
    .locals 0
    .param p1, "set"    # Ljava/util/SortedSet;
    .param p2, "transformer"    # Lorg/apache/commons/collections/Transformer;

    .line 70
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/collections/set/TransformedSet;-><init>(Ljava/util/Set;Lorg/apache/commons/collections/Transformer;)V

    .line 71
    return-void
.end method

.method public static decorate(Ljava/util/SortedSet;Lorg/apache/commons/collections/Transformer;)Ljava/util/SortedSet;
    .locals 1
    .param p0, "set"    # Ljava/util/SortedSet;
    .param p1, "transformer"    # Lorg/apache/commons/collections/Transformer;

    .line 55
    new-instance v0, Lorg/apache/commons/collections/set/TransformedSortedSet;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/collections/set/TransformedSortedSet;-><init>(Ljava/util/SortedSet;Lorg/apache/commons/collections/Transformer;)V

    return-object v0
.end method


# virtual methods
.method public comparator()Ljava/util/Comparator;
    .locals 1

    .line 92
    invoke-virtual {p0}, Lorg/apache/commons/collections/set/TransformedSortedSet;->getSortedSet()Ljava/util/SortedSet;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/SortedSet;->comparator()Ljava/util/Comparator;

    move-result-object v0

    return-object v0
.end method

.method public first()Ljava/lang/Object;
    .locals 1

    .line 84
    invoke-virtual {p0}, Lorg/apache/commons/collections/set/TransformedSortedSet;->getSortedSet()Ljava/util/SortedSet;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/SortedSet;->first()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected getSortedSet()Ljava/util/SortedSet;
    .locals 1

    .line 79
    iget-object v0, p0, Lorg/apache/commons/collections/set/TransformedSortedSet;->collection:Ljava/util/Collection;

    check-cast v0, Ljava/util/SortedSet;

    return-object v0
.end method

.method public headSet(Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 3
    .param p1, "toElement"    # Ljava/lang/Object;

    .line 102
    invoke-virtual {p0}, Lorg/apache/commons/collections/set/TransformedSortedSet;->getSortedSet()Ljava/util/SortedSet;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/SortedSet;->headSet(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v0

    .line 103
    .local v0, "set":Ljava/util/SortedSet;
    new-instance v1, Lorg/apache/commons/collections/set/TransformedSortedSet;

    iget-object v2, p0, Lorg/apache/commons/collections/set/TransformedSortedSet;->transformer:Lorg/apache/commons/collections/Transformer;

    invoke-direct {v1, v0, v2}, Lorg/apache/commons/collections/set/TransformedSortedSet;-><init>(Ljava/util/SortedSet;Lorg/apache/commons/collections/Transformer;)V

    return-object v1
.end method

.method public last()Ljava/lang/Object;
    .locals 1

    .line 88
    invoke-virtual {p0}, Lorg/apache/commons/collections/set/TransformedSortedSet;->getSortedSet()Ljava/util/SortedSet;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/SortedSet;->last()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public subSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 3
    .param p1, "fromElement"    # Ljava/lang/Object;
    .param p2, "toElement"    # Ljava/lang/Object;

    .line 97
    invoke-virtual {p0}, Lorg/apache/commons/collections/set/TransformedSortedSet;->getSortedSet()Ljava/util/SortedSet;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/SortedSet;->subSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v0

    .line 98
    .local v0, "set":Ljava/util/SortedSet;
    new-instance v1, Lorg/apache/commons/collections/set/TransformedSortedSet;

    iget-object v2, p0, Lorg/apache/commons/collections/set/TransformedSortedSet;->transformer:Lorg/apache/commons/collections/Transformer;

    invoke-direct {v1, v0, v2}, Lorg/apache/commons/collections/set/TransformedSortedSet;-><init>(Ljava/util/SortedSet;Lorg/apache/commons/collections/Transformer;)V

    return-object v1
.end method

.method public tailSet(Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 3
    .param p1, "fromElement"    # Ljava/lang/Object;

    .line 107
    invoke-virtual {p0}, Lorg/apache/commons/collections/set/TransformedSortedSet;->getSortedSet()Ljava/util/SortedSet;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/SortedSet;->tailSet(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v0

    .line 108
    .local v0, "set":Ljava/util/SortedSet;
    new-instance v1, Lorg/apache/commons/collections/set/TransformedSortedSet;

    iget-object v2, p0, Lorg/apache/commons/collections/set/TransformedSortedSet;->transformer:Lorg/apache/commons/collections/Transformer;

    invoke-direct {v1, v0, v2}, Lorg/apache/commons/collections/set/TransformedSortedSet;-><init>(Ljava/util/SortedSet;Lorg/apache/commons/collections/Transformer;)V

    return-object v1
.end method
