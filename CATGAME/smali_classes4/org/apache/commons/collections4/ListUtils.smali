.class public Lorg/apache/commons/collections4/ListUtils;
.super Ljava/lang/Object;
.source "ListUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/collections4/ListUtils$Partition;,
        Lorg/apache/commons/collections4/ListUtils$CharSequenceAsList;,
        Lorg/apache/commons/collections4/ListUtils$LcsVisitor;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static defaultIfNull(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;",
            "Ljava/util/List<",
            "TT;>;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 75
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    .local p1, "defaultList":Ljava/util/List;, "Ljava/util/List<TT;>;"
    if-nez p0, :cond_0

    move-object v0, p1

    goto :goto_0

    :cond_0
    move-object v0, p0

    :goto_0
    return-object v0
.end method

.method public static emptyIfNull(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 61
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    if-nez p0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p0

    :goto_0
    return-object v0
.end method

.method public static fixedSizeList(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TE;>;)",
            "Ljava/util/List<",
            "TE;>;"
        }
    .end annotation

    .line 517
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<TE;>;"
    invoke-static {p0}, Lorg/apache/commons/collections4/list/FixedSizeList;->fixedSizeList(Ljava/util/List;)Lorg/apache/commons/collections4/list/FixedSizeList;

    move-result-object v0

    return-object v0
.end method

.method public static hashCodeForList(Ljava/util/Collection;)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)I"
        }
    .end annotation

    .line 275
    .local p0, "list":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 276
    return v0

    .line 278
    :cond_0
    const/4 v1, 0x1

    .line 279
    .local v1, "hashCode":I
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 281
    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 282
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 283
    .local v3, "obj":Ljava/lang/Object;
    mul-int/lit8 v4, v1, 0x1f

    if-nez v3, :cond_1

    move v5, v0

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v5

    :goto_1
    add-int v1, v4, v5

    .line 284
    .end local v3    # "obj":Ljava/lang/Object;
    goto :goto_0

    .line 285
    :cond_2
    return v1
.end method

.method public static indexOf(Ljava/util/List;Lorg/apache/commons/collections4/Predicate;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TE;>;",
            "Lorg/apache/commons/collections4/Predicate<",
            "TE;>;)I"
        }
    .end annotation

    .line 533
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<TE;>;"
    .local p1, "predicate":Lorg/apache/commons/collections4/Predicate;, "Lorg/apache/commons/collections4/Predicate<TE;>;"
    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    .line 534
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 535
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 536
    .local v1, "item":Ljava/lang/Object;, "TE;"
    invoke-interface {p1, v1}, Lorg/apache/commons/collections4/Predicate;->evaluate(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 537
    return v0

    .line 534
    .end local v1    # "item":Ljava/lang/Object;, "TE;"
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 541
    .end local v0    # "i":I
    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method public static intersection(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "+TE;>;",
            "Ljava/util/List<",
            "+TE;>;)",
            "Ljava/util/List<",
            "TE;>;"
        }
    .end annotation

    .line 89
    .local p0, "list1":Ljava/util/List;, "Ljava/util/List<+TE;>;"
    .local p1, "list2":Ljava/util/List;, "Ljava/util/List<+TE;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 91
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<TE;>;"
    move-object v1, p0

    .line 92
    .local v1, "smaller":Ljava/util/List;, "Ljava/util/List<+TE;>;"
    move-object v2, p1

    .line 93
    .local v2, "larger":Ljava/util/List;, "Ljava/util/List<+TE;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-le v3, v4, :cond_0

    .line 94
    move-object v1, p1

    .line 95
    move-object v2, p0

    .line 98
    :cond_0
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 100
    .local v3, "hashSet":Ljava/util/HashSet;, "Ljava/util/HashSet<TE;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 101
    .local v5, "e":Ljava/lang/Object;, "TE;"
    invoke-virtual {v3, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 102
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 103
    invoke-virtual {v3, v5}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 105
    .end local v5    # "e":Ljava/lang/Object;, "TE;"
    :cond_1
    goto :goto_0

    .line 106
    :cond_2
    return-object v0
.end method

.method public static isEqualList(Ljava/util/Collection;Ljava/util/Collection;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 238
    .local p0, "list1":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    .local p1, "list2":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 239
    return v0

    .line 241
    :cond_0
    const/4 v1, 0x0

    if-eqz p0, :cond_7

    if-eqz p1, :cond_7

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v2

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v3

    if-eq v2, v3, :cond_1

    goto :goto_2

    .line 245
    :cond_1
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 246
    .local v2, "it1":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 247
    .local v3, "it2":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    const/4 v4, 0x0

    .line 248
    .local v4, "obj1":Ljava/lang/Object;
    const/4 v5, 0x0

    .line 250
    .local v5, "obj2":Ljava/lang/Object;
    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 251
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 252
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 254
    if-nez v4, :cond_3

    if-nez v5, :cond_4

    goto :goto_0

    :cond_3
    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 255
    :cond_4
    return v1

    .line 259
    :cond_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_6

    goto :goto_1

    :cond_6
    move v0, v1

    :goto_1
    return v0

    .line 242
    .end local v2    # "it1":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    .end local v3    # "it2":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    .end local v4    # "obj1":Ljava/lang/Object;
    .end local v5    # "obj2":Ljava/lang/Object;
    :cond_7
    :goto_2
    return v1
.end method

.method public static lazyList(Ljava/util/List;Lorg/apache/commons/collections4/Factory;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TE;>;",
            "Lorg/apache/commons/collections4/Factory<",
            "+TE;>;)",
            "Ljava/util/List<",
            "TE;>;"
        }
    .end annotation

    .line 471
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<TE;>;"
    .local p1, "factory":Lorg/apache/commons/collections4/Factory;, "Lorg/apache/commons/collections4/Factory<+TE;>;"
    invoke-static {p0, p1}, Lorg/apache/commons/collections4/list/LazyList;->lazyList(Ljava/util/List;Lorg/apache/commons/collections4/Factory;)Lorg/apache/commons/collections4/list/LazyList;

    move-result-object v0

    return-object v0
.end method

.method public static lazyList(Ljava/util/List;Lorg/apache/commons/collections4/Transformer;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TE;>;",
            "Lorg/apache/commons/collections4/Transformer<",
            "Ljava/lang/Integer;",
            "+TE;>;)",
            "Ljava/util/List<",
            "TE;>;"
        }
    .end annotation

    .line 502
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<TE;>;"
    .local p1, "transformer":Lorg/apache/commons/collections4/Transformer;, "Lorg/apache/commons/collections4/Transformer<Ljava/lang/Integer;+TE;>;"
    invoke-static {p0, p1}, Lorg/apache/commons/collections4/list/LazyList;->lazyList(Ljava/util/List;Lorg/apache/commons/collections4/Transformer;)Lorg/apache/commons/collections4/list/LazyList;

    move-result-object v0

    return-object v0
.end method

.method public static longestCommonSubsequence(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 4
    .param p0, "a"    # Ljava/lang/CharSequence;
    .param p1, "b"    # Ljava/lang/CharSequence;

    .line 599
    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    .line 602
    new-instance v0, Lorg/apache/commons/collections4/ListUtils$CharSequenceAsList;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections4/ListUtils$CharSequenceAsList;-><init>(Ljava/lang/CharSequence;)V

    new-instance v1, Lorg/apache/commons/collections4/ListUtils$CharSequenceAsList;

    invoke-direct {v1, p1}, Lorg/apache/commons/collections4/ListUtils$CharSequenceAsList;-><init>(Ljava/lang/CharSequence;)V

    invoke-static {v0, v1}, Lorg/apache/commons/collections4/ListUtils;->longestCommonSubsequence(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 603
    .local v0, "lcs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Character;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 604
    .local v1, "sb":Ljava/lang/StringBuilder;
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Character;

    .line 605
    .local v3, "ch":Ljava/lang/Character;
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 606
    .end local v3    # "ch":Ljava/lang/Character;
    goto :goto_0

    .line 607
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 600
    .end local v0    # "lcs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Character;>;"
    .end local v1    # "sb":Ljava/lang/StringBuilder;
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "CharSequence must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static longestCommonSubsequence(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TE;>;",
            "Ljava/util/List<",
            "TE;>;)",
            "Ljava/util/List<",
            "TE;>;"
        }
    .end annotation

    .line 556
    .local p0, "a":Ljava/util/List;, "Ljava/util/List<TE;>;"
    .local p1, "b":Ljava/util/List;, "Ljava/util/List<TE;>;"
    invoke-static {}, Lorg/apache/commons/collections4/functors/DefaultEquator;->defaultEquator()Lorg/apache/commons/collections4/functors/DefaultEquator;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lorg/apache/commons/collections4/ListUtils;->longestCommonSubsequence(Ljava/util/List;Ljava/util/List;Lorg/apache/commons/collections4/Equator;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static longestCommonSubsequence(Ljava/util/List;Ljava/util/List;Lorg/apache/commons/collections4/Equator;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TE;>;",
            "Ljava/util/List<",
            "TE;>;",
            "Lorg/apache/commons/collections4/Equator<",
            "-TE;>;)",
            "Ljava/util/List<",
            "TE;>;"
        }
    .end annotation

    .line 572
    .local p0, "a":Ljava/util/List;, "Ljava/util/List<TE;>;"
    .local p1, "b":Ljava/util/List;, "Ljava/util/List<TE;>;"
    .local p2, "equator":Lorg/apache/commons/collections4/Equator;, "Lorg/apache/commons/collections4/Equator<-TE;>;"
    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    .line 575
    if-eqz p2, :cond_0

    .line 579
    new-instance v0, Lorg/apache/commons/collections4/sequence/SequencesComparator;

    invoke-direct {v0, p0, p1, p2}, Lorg/apache/commons/collections4/sequence/SequencesComparator;-><init>(Ljava/util/List;Ljava/util/List;Lorg/apache/commons/collections4/Equator;)V

    .line 580
    .local v0, "comparator":Lorg/apache/commons/collections4/sequence/SequencesComparator;, "Lorg/apache/commons/collections4/sequence/SequencesComparator<TE;>;"
    invoke-virtual {v0}, Lorg/apache/commons/collections4/sequence/SequencesComparator;->getScript()Lorg/apache/commons/collections4/sequence/EditScript;

    move-result-object v1

    .line 581
    .local v1, "script":Lorg/apache/commons/collections4/sequence/EditScript;, "Lorg/apache/commons/collections4/sequence/EditScript<TE;>;"
    new-instance v2, Lorg/apache/commons/collections4/ListUtils$LcsVisitor;

    invoke-direct {v2}, Lorg/apache/commons/collections4/ListUtils$LcsVisitor;-><init>()V

    .line 582
    .local v2, "visitor":Lorg/apache/commons/collections4/ListUtils$LcsVisitor;, "Lorg/apache/commons/collections4/ListUtils$LcsVisitor<TE;>;"
    invoke-virtual {v1, v2}, Lorg/apache/commons/collections4/sequence/EditScript;->visit(Lorg/apache/commons/collections4/sequence/CommandVisitor;)V

    .line 583
    invoke-virtual {v2}, Lorg/apache/commons/collections4/ListUtils$LcsVisitor;->getSubSequence()Ljava/util/List;

    move-result-object v3

    return-object v3

    .line 576
    .end local v0    # "comparator":Lorg/apache/commons/collections4/sequence/SequencesComparator;, "Lorg/apache/commons/collections4/sequence/SequencesComparator<TE;>;"
    .end local v1    # "script":Lorg/apache/commons/collections4/sequence/EditScript;, "Lorg/apache/commons/collections4/sequence/EditScript<TE;>;"
    .end local v2    # "visitor":Lorg/apache/commons/collections4/ListUtils$LcsVisitor;, "Lorg/apache/commons/collections4/ListUtils$LcsVisitor<TE;>;"
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Equator must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 573
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "List must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static partition(Ljava/util/List;I)Ljava/util/List;
    .locals 2
    .param p1, "size"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;I)",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "TT;>;>;"
        }
    .end annotation

    .line 683
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    if-eqz p0, :cond_1

    .line 686
    if-lez p1, :cond_0

    .line 689
    new-instance v0, Lorg/apache/commons/collections4/ListUtils$Partition;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lorg/apache/commons/collections4/ListUtils$Partition;-><init>(Ljava/util/List;ILorg/apache/commons/collections4/ListUtils$1;)V

    return-object v0

    .line 687
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Size must be greater than 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 684
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "List must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static predicatedList(Ljava/util/List;Lorg/apache/commons/collections4/Predicate;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TE;>;",
            "Lorg/apache/commons/collections4/Predicate<",
            "TE;>;)",
            "Ljava/util/List<",
            "TE;>;"
        }
    .end annotation

    .line 412
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<TE;>;"
    .local p1, "predicate":Lorg/apache/commons/collections4/Predicate;, "Lorg/apache/commons/collections4/Predicate<TE;>;"
    invoke-static {p0, p1}, Lorg/apache/commons/collections4/list/PredicatedList;->predicatedList(Ljava/util/List;Lorg/apache/commons/collections4/Predicate;)Lorg/apache/commons/collections4/list/PredicatedList;

    move-result-object v0

    return-object v0
.end method

.method public static removeAll(Ljava/util/Collection;Ljava/util/Collection;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "TE;>;",
            "Ljava/util/Collection<",
            "*>;)",
            "Ljava/util/List<",
            "TE;>;"
        }
    .end annotation

    .line 346
    .local p0, "collection":Ljava/util/Collection;, "Ljava/util/Collection<TE;>;"
    .local p1, "remove":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 347
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<TE;>;"
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 348
    .local v2, "obj":Ljava/lang/Object;, "TE;"
    invoke-interface {p1, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 349
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 351
    .end local v2    # "obj":Ljava/lang/Object;, "TE;"
    :cond_0
    goto :goto_0

    .line 352
    :cond_1
    return-object v0
.end method

.method public static retainAll(Ljava/util/Collection;Ljava/util/Collection;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "TE;>;",
            "Ljava/util/Collection<",
            "*>;)",
            "Ljava/util/List<",
            "TE;>;"
        }
    .end annotation

    .line 312
    .local p0, "collection":Ljava/util/Collection;, "Ljava/util/Collection<TE;>;"
    .local p1, "retain":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 314
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<TE;>;"
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 315
    .local v2, "obj":Ljava/lang/Object;, "TE;"
    invoke-interface {p1, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 316
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 318
    .end local v2    # "obj":Ljava/lang/Object;, "TE;"
    :cond_0
    goto :goto_0

    .line 319
    :cond_1
    return-object v0
.end method

.method public static select(Ljava/util/Collection;Lorg/apache/commons/collections4/Predicate;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "+TE;>;",
            "Lorg/apache/commons/collections4/Predicate<",
            "-TE;>;)",
            "Ljava/util/List<",
            "TE;>;"
        }
    .end annotation

    .line 185
    .local p0, "inputCollection":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    .local p1, "predicate":Lorg/apache/commons/collections4/Predicate;, "Lorg/apache/commons/collections4/Predicate<-TE;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-static {p0, p1, v0}, Lorg/apache/commons/collections4/CollectionUtils;->select(Ljava/lang/Iterable;Lorg/apache/commons/collections4/Predicate;Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public static selectRejected(Ljava/util/Collection;Lorg/apache/commons/collections4/Predicate;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "+TE;>;",
            "Lorg/apache/commons/collections4/Predicate<",
            "-TE;>;)",
            "Ljava/util/List<",
            "TE;>;"
        }
    .end annotation

    .line 205
    .local p0, "inputCollection":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    .local p1, "predicate":Lorg/apache/commons/collections4/Predicate;, "Lorg/apache/commons/collections4/Predicate<-TE;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-static {p0, p1, v0}, Lorg/apache/commons/collections4/CollectionUtils;->selectRejected(Ljava/lang/Iterable;Lorg/apache/commons/collections4/Predicate;Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public static subtract(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TE;>;",
            "Ljava/util/List<",
            "+TE;>;)",
            "Ljava/util/List<",
            "TE;>;"
        }
    .end annotation

    .line 126
    .local p0, "list1":Ljava/util/List;, "Ljava/util/List<TE;>;"
    .local p1, "list2":Ljava/util/List;, "Ljava/util/List<+TE;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 127
    .local v0, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TE;>;"
    new-instance v1, Lorg/apache/commons/collections4/bag/HashBag;

    invoke-direct {v1, p1}, Lorg/apache/commons/collections4/bag/HashBag;-><init>(Ljava/util/Collection;)V

    .line 128
    .local v1, "bag":Lorg/apache/commons/collections4/bag/HashBag;, "Lorg/apache/commons/collections4/bag/HashBag<TE;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 129
    .local v3, "e":Ljava/lang/Object;, "TE;"
    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Lorg/apache/commons/collections4/bag/HashBag;->remove(Ljava/lang/Object;I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 130
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 132
    .end local v3    # "e":Ljava/lang/Object;, "TE;"
    :cond_0
    goto :goto_0

    .line 133
    :cond_1
    return-object v0
.end method

.method public static sum(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "+TE;>;",
            "Ljava/util/List<",
            "+TE;>;)",
            "Ljava/util/List<",
            "TE;>;"
        }
    .end annotation

    .line 147
    .local p0, "list1":Ljava/util/List;, "Ljava/util/List<+TE;>;"
    .local p1, "list2":Ljava/util/List;, "Ljava/util/List<+TE;>;"
    invoke-static {p0, p1}, Lorg/apache/commons/collections4/ListUtils;->union(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-static {p0, p1}, Lorg/apache/commons/collections4/ListUtils;->intersection(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/commons/collections4/ListUtils;->subtract(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static synchronizedList(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TE;>;)",
            "Ljava/util/List<",
            "TE;>;"
        }
    .end annotation

    .line 380
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<TE;>;"
    invoke-static {p0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static transformedList(Ljava/util/List;Lorg/apache/commons/collections4/Transformer;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TE;>;",
            "Lorg/apache/commons/collections4/Transformer<",
            "-TE;+TE;>;)",
            "Ljava/util/List<",
            "TE;>;"
        }
    .end annotation

    .line 437
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<TE;>;"
    .local p1, "transformer":Lorg/apache/commons/collections4/Transformer;, "Lorg/apache/commons/collections4/Transformer<-TE;+TE;>;"
    invoke-static {p0, p1}, Lorg/apache/commons/collections4/list/TransformedList;->transformingList(Ljava/util/List;Lorg/apache/commons/collections4/Transformer;)Lorg/apache/commons/collections4/list/TransformedList;

    move-result-object v0

    return-object v0
.end method

.method public static union(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "+TE;>;",
            "Ljava/util/List<",
            "+TE;>;)",
            "Ljava/util/List<",
            "TE;>;"
        }
    .end annotation

    .line 162
    .local p0, "list1":Ljava/util/List;, "Ljava/util/List<+TE;>;"
    .local p1, "list2":Ljava/util/List;, "Ljava/util/List<+TE;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v1, v2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 163
    .local v0, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TE;>;"
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 164
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 165
    return-object v0
.end method

.method public static unmodifiableList(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "+TE;>;)",
            "Ljava/util/List<",
            "TE;>;"
        }
    .end annotation

    .line 394
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<+TE;>;"
    invoke-static {p0}, Lorg/apache/commons/collections4/list/UnmodifiableList;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
