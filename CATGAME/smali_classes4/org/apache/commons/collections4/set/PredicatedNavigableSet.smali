.class public Lorg/apache/commons/collections4/set/PredicatedNavigableSet;
.super Lorg/apache/commons/collections4/set/PredicatedSortedSet;
.source "PredicatedNavigableSet.java"

# interfaces
.implements Ljava/util/NavigableSet;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/commons/collections4/set/PredicatedSortedSet<",
        "TE;>;",
        "Ljava/util/NavigableSet<",
        "TE;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1337900L


# direct methods
.method protected constructor <init>(Ljava/util/NavigableSet;Lorg/apache/commons/collections4/Predicate;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/NavigableSet<",
            "TE;>;",
            "Lorg/apache/commons/collections4/Predicate<",
            "-TE;>;)V"
        }
    .end annotation

    .line 81
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/collections4/set/PredicatedSortedSet;-><init>(Ljava/util/SortedSet;Lorg/apache/commons/collections4/Predicate;)V

    return-void
.end method

.method public static predicatedNavigableSet(Ljava/util/NavigableSet;Lorg/apache/commons/collections4/Predicate;)Lorg/apache/commons/collections4/set/PredicatedNavigableSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/NavigableSet<",
            "TE;>;",
            "Lorg/apache/commons/collections4/Predicate<",
            "-TE;>;)",
            "Lorg/apache/commons/collections4/set/PredicatedNavigableSet<",
            "TE;>;"
        }
    .end annotation

    .line 65
    new-instance v0, Lorg/apache/commons/collections4/set/PredicatedNavigableSet;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/collections4/set/PredicatedNavigableSet;-><init>(Ljava/util/NavigableSet;Lorg/apache/commons/collections4/Predicate;)V

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

    .line 108
    invoke-virtual {p0}, Lorg/apache/commons/collections4/set/PredicatedNavigableSet;->decorated()Ljava/util/NavigableSet;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/NavigableSet;->ceiling(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic decorated()Ljava/util/Collection;
    .locals 1

    .line 44
    invoke-virtual {p0}, Lorg/apache/commons/collections4/set/PredicatedNavigableSet;->decorated()Ljava/util/NavigableSet;

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

    .line 91
    invoke-super {p0}, Lorg/apache/commons/collections4/set/PredicatedSortedSet;->decorated()Ljava/util/SortedSet;

    move-result-object v0

    check-cast v0, Ljava/util/NavigableSet;

    return-object v0
.end method

.method protected bridge synthetic decorated()Ljava/util/Set;
    .locals 1

    .line 44
    invoke-virtual {p0}, Lorg/apache/commons/collections4/set/PredicatedNavigableSet;->decorated()Ljava/util/NavigableSet;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic decorated()Ljava/util/SortedSet;
    .locals 1

    .line 44
    invoke-virtual {p0}, Lorg/apache/commons/collections4/set/PredicatedNavigableSet;->decorated()Ljava/util/NavigableSet;

    move-result-object v0

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

    .line 133
    invoke-virtual {p0}, Lorg/apache/commons/collections4/set/PredicatedNavigableSet;->decorated()Ljava/util/NavigableSet;

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

    .line 128
    invoke-virtual {p0}, Lorg/apache/commons/collections4/set/PredicatedNavigableSet;->decorated()Ljava/util/NavigableSet;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/NavigableSet;->descendingSet()Ljava/util/NavigableSet;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/commons/collections4/set/PredicatedNavigableSet;->predicate:Lorg/apache/commons/collections4/Predicate;

    invoke-static {v0, v1}, Lorg/apache/commons/collections4/set/PredicatedNavigableSet;->predicatedNavigableSet(Ljava/util/NavigableSet;Lorg/apache/commons/collections4/Predicate;)Lorg/apache/commons/collections4/set/PredicatedNavigableSet;

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

    .line 103
    invoke-virtual {p0}, Lorg/apache/commons/collections4/set/PredicatedNavigableSet;->decorated()Ljava/util/NavigableSet;

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

    .line 145
    invoke-virtual {p0}, Lorg/apache/commons/collections4/set/PredicatedNavigableSet;->decorated()Ljava/util/NavigableSet;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/NavigableSet;->headSet(Ljava/lang/Object;Z)Ljava/util/NavigableSet;

    move-result-object p1

    .line 146
    iget-object p2, p0, Lorg/apache/commons/collections4/set/PredicatedNavigableSet;->predicate:Lorg/apache/commons/collections4/Predicate;

    invoke-static {p1, p2}, Lorg/apache/commons/collections4/set/PredicatedNavigableSet;->predicatedNavigableSet(Ljava/util/NavigableSet;Lorg/apache/commons/collections4/Predicate;)Lorg/apache/commons/collections4/set/PredicatedNavigableSet;

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

    .line 113
    invoke-virtual {p0}, Lorg/apache/commons/collections4/set/PredicatedNavigableSet;->decorated()Ljava/util/NavigableSet;

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

    .line 98
    invoke-virtual {p0}, Lorg/apache/commons/collections4/set/PredicatedNavigableSet;->decorated()Ljava/util/NavigableSet;

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

    .line 118
    invoke-virtual {p0}, Lorg/apache/commons/collections4/set/PredicatedNavigableSet;->decorated()Ljava/util/NavigableSet;

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

    .line 123
    invoke-virtual {p0}, Lorg/apache/commons/collections4/set/PredicatedNavigableSet;->decorated()Ljava/util/NavigableSet;

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

    .line 139
    invoke-virtual {p0}, Lorg/apache/commons/collections4/set/PredicatedNavigableSet;->decorated()Ljava/util/NavigableSet;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Ljava/util/NavigableSet;->subSet(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/NavigableSet;

    move-result-object p1

    .line 140
    iget-object p2, p0, Lorg/apache/commons/collections4/set/PredicatedNavigableSet;->predicate:Lorg/apache/commons/collections4/Predicate;

    invoke-static {p1, p2}, Lorg/apache/commons/collections4/set/PredicatedNavigableSet;->predicatedNavigableSet(Ljava/util/NavigableSet;Lorg/apache/commons/collections4/Predicate;)Lorg/apache/commons/collections4/set/PredicatedNavigableSet;

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

    .line 151
    invoke-virtual {p0}, Lorg/apache/commons/collections4/set/PredicatedNavigableSet;->decorated()Ljava/util/NavigableSet;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/NavigableSet;->tailSet(Ljava/lang/Object;Z)Ljava/util/NavigableSet;

    move-result-object p1

    .line 152
    iget-object p2, p0, Lorg/apache/commons/collections4/set/PredicatedNavigableSet;->predicate:Lorg/apache/commons/collections4/Predicate;

    invoke-static {p1, p2}, Lorg/apache/commons/collections4/set/PredicatedNavigableSet;->predicatedNavigableSet(Ljava/util/NavigableSet;Lorg/apache/commons/collections4/Predicate;)Lorg/apache/commons/collections4/set/PredicatedNavigableSet;

    move-result-object p1

    return-object p1
.end method
