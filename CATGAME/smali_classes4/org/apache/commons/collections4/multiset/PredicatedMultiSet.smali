.class public Lorg/apache/commons/collections4/multiset/PredicatedMultiSet;
.super Lorg/apache/commons/collections4/collection/PredicatedCollection;
.source "PredicatedMultiSet.java"

# interfaces
.implements Lorg/apache/commons/collections4/MultiSet;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/commons/collections4/collection/PredicatedCollection<",
        "TE;>;",
        "Lorg/apache/commons/collections4/MultiSet<",
        "TE;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1337965L


# direct methods
.method protected constructor <init>(Lorg/apache/commons/collections4/MultiSet;Lorg/apache/commons/collections4/Predicate;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/MultiSet<",
            "TE;>;",
            "Lorg/apache/commons/collections4/Predicate<",
            "-TE;>;)V"
        }
    .end annotation

    .line 82
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/collections4/collection/PredicatedCollection;-><init>(Ljava/util/Collection;Lorg/apache/commons/collections4/Predicate;)V

    return-void
.end method

.method public static predicatedMultiSet(Lorg/apache/commons/collections4/MultiSet;Lorg/apache/commons/collections4/Predicate;)Lorg/apache/commons/collections4/multiset/PredicatedMultiSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/commons/collections4/MultiSet<",
            "TE;>;",
            "Lorg/apache/commons/collections4/Predicate<",
            "-TE;>;)",
            "Lorg/apache/commons/collections4/multiset/PredicatedMultiSet<",
            "TE;>;"
        }
    .end annotation

    .line 66
    new-instance v0, Lorg/apache/commons/collections4/multiset/PredicatedMultiSet;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/collections4/multiset/PredicatedMultiSet;-><init>(Lorg/apache/commons/collections4/MultiSet;Lorg/apache/commons/collections4/Predicate;)V

    return-object v0
.end method


# virtual methods
.method public add(Ljava/lang/Object;I)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;I)I"
        }
    .end annotation

    .line 109
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections4/multiset/PredicatedMultiSet;->validate(Ljava/lang/Object;)V

    .line 110
    invoke-virtual {p0}, Lorg/apache/commons/collections4/multiset/PredicatedMultiSet;->decorated()Lorg/apache/commons/collections4/MultiSet;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lorg/apache/commons/collections4/MultiSet;->add(Ljava/lang/Object;I)I

    move-result p1

    return p1
.end method

.method protected bridge synthetic decorated()Ljava/util/Collection;
    .locals 1

    .line 46
    invoke-virtual {p0}, Lorg/apache/commons/collections4/multiset/PredicatedMultiSet;->decorated()Lorg/apache/commons/collections4/MultiSet;

    move-result-object v0

    return-object v0
.end method

.method protected decorated()Lorg/apache/commons/collections4/MultiSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/collections4/MultiSet<",
            "TE;>;"
        }
    .end annotation

    .line 92
    invoke-super {p0}, Lorg/apache/commons/collections4/collection/PredicatedCollection;->decorated()Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/collections4/MultiSet;

    return-object v0
.end method

.method public entrySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lorg/apache/commons/collections4/MultiSet$Entry<",
            "TE;>;>;"
        }
    .end annotation

    .line 136
    invoke-virtual {p0}, Lorg/apache/commons/collections4/multiset/PredicatedMultiSet;->decorated()Lorg/apache/commons/collections4/MultiSet;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/collections4/MultiSet;->entrySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-eq p1, p0, :cond_1

    .line 97
    invoke-virtual {p0}, Lorg/apache/commons/collections4/multiset/PredicatedMultiSet;->decorated()Lorg/apache/commons/collections4/MultiSet;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/apache/commons/collections4/MultiSet;->equals(Ljava/lang/Object;)Z

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

.method public getCount(Ljava/lang/Object;)I
    .locals 1

    .line 120
    invoke-virtual {p0}, Lorg/apache/commons/collections4/multiset/PredicatedMultiSet;->decorated()Lorg/apache/commons/collections4/MultiSet;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/apache/commons/collections4/MultiSet;->getCount(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 1

    .line 102
    invoke-virtual {p0}, Lorg/apache/commons/collections4/multiset/PredicatedMultiSet;->decorated()Lorg/apache/commons/collections4/MultiSet;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/collections4/MultiSet;->hashCode()I

    move-result v0

    return v0
.end method

.method public remove(Ljava/lang/Object;I)I
    .locals 1

    .line 115
    invoke-virtual {p0}, Lorg/apache/commons/collections4/multiset/PredicatedMultiSet;->decorated()Lorg/apache/commons/collections4/MultiSet;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lorg/apache/commons/collections4/MultiSet;->remove(Ljava/lang/Object;I)I

    move-result p1

    return p1
.end method

.method public setCount(Ljava/lang/Object;I)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;I)I"
        }
    .end annotation

    .line 125
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections4/multiset/PredicatedMultiSet;->validate(Ljava/lang/Object;)V

    .line 126
    invoke-virtual {p0}, Lorg/apache/commons/collections4/multiset/PredicatedMultiSet;->decorated()Lorg/apache/commons/collections4/MultiSet;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lorg/apache/commons/collections4/MultiSet;->setCount(Ljava/lang/Object;I)I

    move-result p1

    return p1
.end method

.method public uniqueSet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TE;>;"
        }
    .end annotation

    .line 131
    invoke-virtual {p0}, Lorg/apache/commons/collections4/multiset/PredicatedMultiSet;->decorated()Lorg/apache/commons/collections4/MultiSet;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/collections4/MultiSet;->uniqueSet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
