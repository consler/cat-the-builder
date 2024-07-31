.class public Lorg/apache/commons/collections4/set/PredicatedSortedSet;
.super Lorg/apache/commons/collections4/set/PredicatedSet;
.source "PredicatedSortedSet.java"

# interfaces
.implements Ljava/util/SortedSet;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/commons/collections4/set/PredicatedSet<",
        "TE;>;",
        "Ljava/util/SortedSet<",
        "TE;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x7e709711a06d636cL


# direct methods
.method protected constructor <init>(Ljava/util/SortedSet;Lorg/apache/commons/collections4/Predicate;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/SortedSet<",
            "TE;>;",
            "Lorg/apache/commons/collections4/Predicate<",
            "-TE;>;)V"
        }
    .end annotation

    .line 84
    .local p0, "this":Lorg/apache/commons/collections4/set/PredicatedSortedSet;, "Lorg/apache/commons/collections4/set/PredicatedSortedSet<TE;>;"
    .local p1, "set":Ljava/util/SortedSet;, "Ljava/util/SortedSet<TE;>;"
    .local p2, "predicate":Lorg/apache/commons/collections4/Predicate;, "Lorg/apache/commons/collections4/Predicate<-TE;>;"
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/collections4/set/PredicatedSet;-><init>(Ljava/util/Set;Lorg/apache/commons/collections4/Predicate;)V

    .line 85
    return-void
.end method

.method public static predicatedSortedSet(Ljava/util/SortedSet;Lorg/apache/commons/collections4/Predicate;)Lorg/apache/commons/collections4/set/PredicatedSortedSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/SortedSet<",
            "TE;>;",
            "Lorg/apache/commons/collections4/Predicate<",
            "-TE;>;)",
            "Lorg/apache/commons/collections4/set/PredicatedSortedSet<",
            "TE;>;"
        }
    .end annotation

    .line 68
    .local p0, "set":Ljava/util/SortedSet;, "Ljava/util/SortedSet<TE;>;"
    .local p1, "predicate":Lorg/apache/commons/collections4/Predicate;, "Lorg/apache/commons/collections4/Predicate<-TE;>;"
    new-instance v0, Lorg/apache/commons/collections4/set/PredicatedSortedSet;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/collections4/set/PredicatedSortedSet;-><init>(Ljava/util/SortedSet;Lorg/apache/commons/collections4/Predicate;)V

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

    .line 100
    .local p0, "this":Lorg/apache/commons/collections4/set/PredicatedSortedSet;, "Lorg/apache/commons/collections4/set/PredicatedSortedSet<TE;>;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/set/PredicatedSortedSet;->decorated()Ljava/util/SortedSet;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/SortedSet;->comparator()Ljava/util/Comparator;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic decorated()Ljava/util/Collection;
    .locals 1

    .line 47
    .local p0, "this":Lorg/apache/commons/collections4/set/PredicatedSortedSet;, "Lorg/apache/commons/collections4/set/PredicatedSortedSet<TE;>;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/set/PredicatedSortedSet;->decorated()Ljava/util/SortedSet;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic decorated()Ljava/util/Set;
    .locals 1

    .line 47
    .local p0, "this":Lorg/apache/commons/collections4/set/PredicatedSortedSet;, "Lorg/apache/commons/collections4/set/PredicatedSortedSet<TE;>;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/set/PredicatedSortedSet;->decorated()Ljava/util/SortedSet;

    move-result-object v0

    return-object v0
.end method

.method protected decorated()Ljava/util/SortedSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/SortedSet<",
            "TE;>;"
        }
    .end annotation

    .line 94
    .local p0, "this":Lorg/apache/commons/collections4/set/PredicatedSortedSet;, "Lorg/apache/commons/collections4/set/PredicatedSortedSet<TE;>;"
    invoke-super {p0}, Lorg/apache/commons/collections4/set/PredicatedSet;->decorated()Ljava/util/Set;

    move-result-object v0

    check-cast v0, Ljava/util/SortedSet;

    return-object v0
.end method

.method public first()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 105
    .local p0, "this":Lorg/apache/commons/collections4/set/PredicatedSortedSet;, "Lorg/apache/commons/collections4/set/PredicatedSortedSet<TE;>;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/set/PredicatedSortedSet;->decorated()Ljava/util/SortedSet;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/SortedSet;->first()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public headSet(Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Ljava/util/SortedSet<",
            "TE;>;"
        }
    .end annotation

    .line 121
    .local p0, "this":Lorg/apache/commons/collections4/set/PredicatedSortedSet;, "Lorg/apache/commons/collections4/set/PredicatedSortedSet<TE;>;"
    .local p1, "toElement":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/set/PredicatedSortedSet;->decorated()Ljava/util/SortedSet;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/SortedSet;->headSet(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v0

    .line 122
    .local v0, "head":Ljava/util/SortedSet;, "Ljava/util/SortedSet<TE;>;"
    new-instance v1, Lorg/apache/commons/collections4/set/PredicatedSortedSet;

    iget-object v2, p0, Lorg/apache/commons/collections4/set/PredicatedSortedSet;->predicate:Lorg/apache/commons/collections4/Predicate;

    invoke-direct {v1, v0, v2}, Lorg/apache/commons/collections4/set/PredicatedSortedSet;-><init>(Ljava/util/SortedSet;Lorg/apache/commons/collections4/Predicate;)V

    return-object v1
.end method

.method public last()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 110
    .local p0, "this":Lorg/apache/commons/collections4/set/PredicatedSortedSet;, "Lorg/apache/commons/collections4/set/PredicatedSortedSet<TE;>;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/set/PredicatedSortedSet;->decorated()Ljava/util/SortedSet;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/SortedSet;->last()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public subSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;TE;)",
            "Ljava/util/SortedSet<",
            "TE;>;"
        }
    .end annotation

    .line 115
    .local p0, "this":Lorg/apache/commons/collections4/set/PredicatedSortedSet;, "Lorg/apache/commons/collections4/set/PredicatedSortedSet<TE;>;"
    .local p1, "fromElement":Ljava/lang/Object;, "TE;"
    .local p2, "toElement":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/set/PredicatedSortedSet;->decorated()Ljava/util/SortedSet;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/SortedSet;->subSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v0

    .line 116
    .local v0, "sub":Ljava/util/SortedSet;, "Ljava/util/SortedSet<TE;>;"
    new-instance v1, Lorg/apache/commons/collections4/set/PredicatedSortedSet;

    iget-object v2, p0, Lorg/apache/commons/collections4/set/PredicatedSortedSet;->predicate:Lorg/apache/commons/collections4/Predicate;

    invoke-direct {v1, v0, v2}, Lorg/apache/commons/collections4/set/PredicatedSortedSet;-><init>(Ljava/util/SortedSet;Lorg/apache/commons/collections4/Predicate;)V

    return-object v1
.end method

.method public tailSet(Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Ljava/util/SortedSet<",
            "TE;>;"
        }
    .end annotation

    .line 127
    .local p0, "this":Lorg/apache/commons/collections4/set/PredicatedSortedSet;, "Lorg/apache/commons/collections4/set/PredicatedSortedSet<TE;>;"
    .local p1, "fromElement":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/set/PredicatedSortedSet;->decorated()Ljava/util/SortedSet;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/SortedSet;->tailSet(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v0

    .line 128
    .local v0, "tail":Ljava/util/SortedSet;, "Ljava/util/SortedSet<TE;>;"
    new-instance v1, Lorg/apache/commons/collections4/set/PredicatedSortedSet;

    iget-object v2, p0, Lorg/apache/commons/collections4/set/PredicatedSortedSet;->predicate:Lorg/apache/commons/collections4/Predicate;

    invoke-direct {v1, v0, v2}, Lorg/apache/commons/collections4/set/PredicatedSortedSet;-><init>(Ljava/util/SortedSet;Lorg/apache/commons/collections4/Predicate;)V

    return-object v1
.end method
