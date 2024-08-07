.class public Lorg/apache/commons/collections/set/PredicatedSortedSet;
.super Lorg/apache/commons/collections/set/PredicatedSet;
.source "PredicatedSortedSet.java"

# interfaces
.implements Ljava/util/SortedSet;


# static fields
.field private static final serialVersionUID:J = -0x7e709711a06d636cL


# direct methods
.method protected constructor <init>(Ljava/util/SortedSet;Lorg/apache/commons/collections/Predicate;)V
    .locals 0
    .param p1, "set"    # Ljava/util/SortedSet;
    .param p2, "predicate"    # Lorg/apache/commons/collections/Predicate;

    .line 76
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/collections/set/PredicatedSet;-><init>(Ljava/util/Set;Lorg/apache/commons/collections/Predicate;)V

    .line 77
    return-void
.end method

.method public static decorate(Ljava/util/SortedSet;Lorg/apache/commons/collections/Predicate;)Ljava/util/SortedSet;
    .locals 1
    .param p0, "set"    # Ljava/util/SortedSet;
    .param p1, "predicate"    # Lorg/apache/commons/collections/Predicate;

    .line 60
    new-instance v0, Lorg/apache/commons/collections/set/PredicatedSortedSet;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/collections/set/PredicatedSortedSet;-><init>(Ljava/util/SortedSet;Lorg/apache/commons/collections/Predicate;)V

    return-object v0
.end method

.method private getSortedSet()Ljava/util/SortedSet;
    .locals 1

    .line 85
    invoke-virtual {p0}, Lorg/apache/commons/collections/set/PredicatedSortedSet;->getCollection()Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/util/SortedSet;

    return-object v0
.end method


# virtual methods
.method public comparator()Ljava/util/Comparator;
    .locals 1

    .line 113
    invoke-direct {p0}, Lorg/apache/commons/collections/set/PredicatedSortedSet;->getSortedSet()Ljava/util/SortedSet;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/SortedSet;->comparator()Ljava/util/Comparator;

    move-result-object v0

    return-object v0
.end method

.method public first()Ljava/lang/Object;
    .locals 1

    .line 105
    invoke-direct {p0}, Lorg/apache/commons/collections/set/PredicatedSortedSet;->getSortedSet()Ljava/util/SortedSet;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/SortedSet;->first()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public headSet(Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 3
    .param p1, "toElement"    # Ljava/lang/Object;

    .line 95
    invoke-direct {p0}, Lorg/apache/commons/collections/set/PredicatedSortedSet;->getSortedSet()Ljava/util/SortedSet;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/SortedSet;->headSet(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v0

    .line 96
    .local v0, "sub":Ljava/util/SortedSet;
    new-instance v1, Lorg/apache/commons/collections/set/PredicatedSortedSet;

    iget-object v2, p0, Lorg/apache/commons/collections/set/PredicatedSortedSet;->predicate:Lorg/apache/commons/collections/Predicate;

    invoke-direct {v1, v0, v2}, Lorg/apache/commons/collections/set/PredicatedSortedSet;-><init>(Ljava/util/SortedSet;Lorg/apache/commons/collections/Predicate;)V

    return-object v1
.end method

.method public last()Ljava/lang/Object;
    .locals 1

    .line 109
    invoke-direct {p0}, Lorg/apache/commons/collections/set/PredicatedSortedSet;->getSortedSet()Ljava/util/SortedSet;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/SortedSet;->last()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public subSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 3
    .param p1, "fromElement"    # Ljava/lang/Object;
    .param p2, "toElement"    # Ljava/lang/Object;

    .line 90
    invoke-direct {p0}, Lorg/apache/commons/collections/set/PredicatedSortedSet;->getSortedSet()Ljava/util/SortedSet;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/SortedSet;->subSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v0

    .line 91
    .local v0, "sub":Ljava/util/SortedSet;
    new-instance v1, Lorg/apache/commons/collections/set/PredicatedSortedSet;

    iget-object v2, p0, Lorg/apache/commons/collections/set/PredicatedSortedSet;->predicate:Lorg/apache/commons/collections/Predicate;

    invoke-direct {v1, v0, v2}, Lorg/apache/commons/collections/set/PredicatedSortedSet;-><init>(Ljava/util/SortedSet;Lorg/apache/commons/collections/Predicate;)V

    return-object v1
.end method

.method public tailSet(Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 3
    .param p1, "fromElement"    # Ljava/lang/Object;

    .line 100
    invoke-direct {p0}, Lorg/apache/commons/collections/set/PredicatedSortedSet;->getSortedSet()Ljava/util/SortedSet;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/SortedSet;->tailSet(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v0

    .line 101
    .local v0, "sub":Ljava/util/SortedSet;
    new-instance v1, Lorg/apache/commons/collections/set/PredicatedSortedSet;

    iget-object v2, p0, Lorg/apache/commons/collections/set/PredicatedSortedSet;->predicate:Lorg/apache/commons/collections/Predicate;

    invoke-direct {v1, v0, v2}, Lorg/apache/commons/collections/set/PredicatedSortedSet;-><init>(Ljava/util/SortedSet;Lorg/apache/commons/collections/Predicate;)V

    return-object v1
.end method
