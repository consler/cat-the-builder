.class public Lorg/apache/commons/collections4/CollectionUtils;
.super Ljava/lang/Object;
.source "CollectionUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/collections4/CollectionUtils$EquatorWrapper;,
        Lorg/apache/commons/collections4/CollectionUtils$SetOperationCardinalityHelper;,
        Lorg/apache/commons/collections4/CollectionUtils$CardinalityHelper;
    }
.end annotation


# static fields
.field public static final EMPTY_COLLECTION:Ljava/util/Collection;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 184
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/collections4/CollectionUtils;->EMPTY_COLLECTION:Ljava/util/Collection;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 189
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addAll(Ljava/util/Collection;Ljava/lang/Iterable;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "TC;>;",
            "Ljava/lang/Iterable<",
            "+TC;>;)Z"
        }
    .end annotation

    .line 1188
    .local p0, "collection":Ljava/util/Collection;, "Ljava/util/Collection<TC;>;"
    .local p1, "iterable":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TC;>;"
    instance-of v0, p1, Ljava/util/Collection;

    if-eqz v0, :cond_0

    .line 1189
    move-object v0, p1

    check-cast v0, Ljava/util/Collection;

    invoke-interface {p0, v0}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    move-result v0

    return v0

    .line 1191
    :cond_0
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/apache/commons/collections4/CollectionUtils;->addAll(Ljava/util/Collection;Ljava/util/Iterator;)Z

    move-result v0

    return v0
.end method

.method public static addAll(Ljava/util/Collection;Ljava/util/Enumeration;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "TC;>;",
            "Ljava/util/Enumeration<",
            "+TC;>;)Z"
        }
    .end annotation

    .line 1221
    .local p0, "collection":Ljava/util/Collection;, "Ljava/util/Collection<TC;>;"
    .local p1, "enumeration":Ljava/util/Enumeration;, "Ljava/util/Enumeration<+TC;>;"
    const/4 v0, 0x0

    .line 1222
    .local v0, "changed":Z
    :goto_0
    invoke-interface {p1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1223
    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-result v1

    or-int/2addr v0, v1

    goto :goto_0

    .line 1225
    :cond_0
    return v0
.end method

.method public static addAll(Ljava/util/Collection;Ljava/util/Iterator;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "TC;>;",
            "Ljava/util/Iterator<",
            "+TC;>;)Z"
        }
    .end annotation

    .line 1204
    .local p0, "collection":Ljava/util/Collection;, "Ljava/util/Collection<TC;>;"
    .local p1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<+TC;>;"
    const/4 v0, 0x0

    .line 1205
    .local v0, "changed":Z
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1206
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-result v1

    or-int/2addr v0, v1

    goto :goto_0

    .line 1208
    :cond_0
    return v0
.end method

.method public static varargs addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "TC;>;[TC;)Z"
        }
    .end annotation

    .line 1238
    .local p0, "collection":Ljava/util/Collection;, "Ljava/util/Collection<TC;>;"
    .local p1, "elements":[Ljava/lang/Object;, "[TC;"
    const/4 v0, 0x0

    .line 1239
    .local v0, "changed":Z
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p1, v2

    .line 1240
    .local v3, "element":Ljava/lang/Object;, "TC;"
    invoke-interface {p0, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-result v4

    or-int/2addr v0, v4

    .line 1239
    .end local v3    # "element":Ljava/lang/Object;, "TC;"
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1242
    :cond_0
    return v0
.end method

.method public static addIgnoreNull(Ljava/util/Collection;Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "TT;>;TT;)Z"
        }
    .end annotation

    .line 1170
    .local p0, "collection":Ljava/util/Collection;, "Ljava/util/Collection<TT;>;"
    .local p1, "object":Ljava/lang/Object;, "TT;"
    if-eqz p0, :cond_1

    .line 1173
    if-eqz p1, :cond_0

    invoke-interface {p0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 1171
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "The collection must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static cardinality(Ljava/lang/Object;Ljava/lang/Iterable;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<O:",
            "Ljava/lang/Object;",
            ">(TO;",
            "Ljava/lang/Iterable<",
            "-TO;>;)I"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 669
    .local p0, "obj":Ljava/lang/Object;, "TO;"
    .local p1, "coll":Ljava/lang/Iterable;, "Ljava/lang/Iterable<-TO;>;"
    if-eqz p1, :cond_0

    .line 672
    invoke-static {p1, p0}, Lorg/apache/commons/collections4/IterableUtils;->frequency(Ljava/lang/Iterable;Ljava/lang/Object;)I

    move-result v0

    return v0

    .line 670
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "coll must not be null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static checkIndexBounds(I)V
    .locals 3
    .param p0, "index"    # I

    .line 1272
    if-ltz p0, :cond_0

    .line 1275
    return-void

    .line 1273
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Index cannot be negative: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static collate(Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<O::",
            "Ljava/lang/Comparable<",
            "-TO;>;>(",
            "Ljava/lang/Iterable<",
            "+TO;>;",
            "Ljava/lang/Iterable<",
            "+TO;>;)",
            "Ljava/util/List<",
            "TO;>;"
        }
    .end annotation

    .line 1601
    .local p0, "a":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TO;>;"
    .local p1, "b":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TO;>;"
    invoke-static {}, Lorg/apache/commons/collections4/ComparatorUtils;->naturalComparator()Ljava/util/Comparator;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, p1, v0, v1}, Lorg/apache/commons/collections4/CollectionUtils;->collate(Ljava/lang/Iterable;Ljava/lang/Iterable;Ljava/util/Comparator;Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static collate(Ljava/lang/Iterable;Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<O:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+TO;>;",
            "Ljava/lang/Iterable<",
            "+TO;>;",
            "Ljava/util/Comparator<",
            "-TO;>;)",
            "Ljava/util/List<",
            "TO;>;"
        }
    .end annotation

    .line 1643
    .local p0, "a":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TO;>;"
    .local p1, "b":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TO;>;"
    .local p2, "c":Ljava/util/Comparator;, "Ljava/util/Comparator<-TO;>;"
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/collections4/CollectionUtils;->collate(Ljava/lang/Iterable;Ljava/lang/Iterable;Ljava/util/Comparator;Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static collate(Ljava/lang/Iterable;Ljava/lang/Iterable;Ljava/util/Comparator;Z)Ljava/util/List;
    .locals 6
    .param p3, "includeDuplicates"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<O:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+TO;>;",
            "Ljava/lang/Iterable<",
            "+TO;>;",
            "Ljava/util/Comparator<",
            "-TO;>;Z)",
            "Ljava/util/List<",
            "TO;>;"
        }
    .end annotation

    .line 1666
    .local p0, "a":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TO;>;"
    .local p1, "b":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TO;>;"
    .local p2, "c":Ljava/util/Comparator;, "Ljava/util/Comparator<-TO;>;"
    if-eqz p0, :cond_6

    if-eqz p1, :cond_6

    .line 1669
    if-eqz p2, :cond_5

    .line 1674
    instance-of v0, p0, Ljava/util/Collection;

    if-eqz v0, :cond_0

    instance-of v0, p1, Ljava/util/Collection;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    move-object v1, p0

    check-cast v1, Ljava/util/Collection;

    .line 1675
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    move-object v2, p1

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v2

    add-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_0

    :cond_0
    const/16 v0, 0xa

    .line 1677
    .local v0, "totalSize":I
    :goto_0
    new-instance v1, Lorg/apache/commons/collections4/iterators/CollatingIterator;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    invoke-direct {v1, p2, v2, v3}, Lorg/apache/commons/collections4/iterators/CollatingIterator;-><init>(Ljava/util/Comparator;Ljava/util/Iterator;Ljava/util/Iterator;)V

    .line 1678
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<TO;>;"
    if-eqz p3, :cond_1

    .line 1679
    invoke-static {v1, v0}, Lorg/apache/commons/collections4/IteratorUtils;->toList(Ljava/util/Iterator;I)Ljava/util/List;

    move-result-object v2

    return-object v2

    .line 1681
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 1683
    .local v2, "mergedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TO;>;"
    const/4 v3, 0x0

    .line 1684
    .local v3, "lastItem":Ljava/lang/Object;, "TO;"
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1685
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 1686
    .local v4, "item":Ljava/lang/Object;, "TO;"
    if-eqz v3, :cond_2

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 1687
    :cond_2
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1689
    :cond_3
    move-object v3, v4

    .line 1690
    .end local v4    # "item":Ljava/lang/Object;, "TO;"
    goto :goto_1

    .line 1692
    :cond_4
    invoke-virtual {v2}, Ljava/util/ArrayList;->trimToSize()V

    .line 1693
    return-object v2

    .line 1670
    .end local v0    # "totalSize":I
    .end local v1    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<TO;>;"
    .end local v2    # "mergedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TO;>;"
    .end local v3    # "lastItem":Ljava/lang/Object;, "TO;"
    :cond_5
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "The comparator must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1667
    :cond_6
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "The collections must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static collate(Ljava/lang/Iterable;Ljava/lang/Iterable;Z)Ljava/util/List;
    .locals 1
    .param p2, "includeDuplicates"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<O::",
            "Ljava/lang/Comparable<",
            "-TO;>;>(",
            "Ljava/lang/Iterable<",
            "+TO;>;",
            "Ljava/lang/Iterable<",
            "+TO;>;Z)",
            "Ljava/util/List<",
            "TO;>;"
        }
    .end annotation

    .line 1623
    .local p0, "a":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TO;>;"
    .local p1, "b":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TO;>;"
    invoke-static {}, Lorg/apache/commons/collections4/ComparatorUtils;->naturalComparator()Ljava/util/Comparator;

    move-result-object v0

    invoke-static {p0, p1, v0, p2}, Lorg/apache/commons/collections4/CollectionUtils;->collate(Ljava/lang/Iterable;Ljava/lang/Iterable;Ljava/util/Comparator;Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static collect(Ljava/lang/Iterable;Lorg/apache/commons/collections4/Transformer;)Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<I:",
            "Ljava/lang/Object;",
            "O:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "TI;>;",
            "Lorg/apache/commons/collections4/Transformer<",
            "-TI;+TO;>;)",
            "Ljava/util/Collection<",
            "TO;>;"
        }
    .end annotation

    .line 1077
    .local p0, "inputCollection":Ljava/lang/Iterable;, "Ljava/lang/Iterable<TI;>;"
    .local p1, "transformer":Lorg/apache/commons/collections4/Transformer;, "Lorg/apache/commons/collections4/Transformer<-TI;+TO;>;"
    instance-of v0, p0, Ljava/util/Collection;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    move-object v1, p0

    check-cast v1, Ljava/util/Collection;

    .line 1078
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1079
    .local v0, "answer":Ljava/util/Collection;, "Ljava/util/Collection<TO;>;"
    :goto_0
    invoke-static {p0, p1, v0}, Lorg/apache/commons/collections4/CollectionUtils;->collect(Ljava/lang/Iterable;Lorg/apache/commons/collections4/Transformer;Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v1

    return-object v1
.end method

.method public static collect(Ljava/lang/Iterable;Lorg/apache/commons/collections4/Transformer;Ljava/util/Collection;)Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<I:",
            "Ljava/lang/Object;",
            "O:",
            "Ljava/lang/Object;",
            "R::",
            "Ljava/util/Collection<",
            "-TO;>;>(",
            "Ljava/lang/Iterable<",
            "+TI;>;",
            "Lorg/apache/commons/collections4/Transformer<",
            "-TI;+TO;>;TR;)TR;"
        }
    .end annotation

    .line 1121
    .local p0, "inputCollection":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TI;>;"
    .local p1, "transformer":Lorg/apache/commons/collections4/Transformer;, "Lorg/apache/commons/collections4/Transformer<-TI;+TO;>;"
    .local p2, "outputCollection":Ljava/util/Collection;, "TR;"
    if-eqz p0, :cond_0

    .line 1122
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lorg/apache/commons/collections4/CollectionUtils;->collect(Ljava/util/Iterator;Lorg/apache/commons/collections4/Transformer;Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0

    .line 1124
    :cond_0
    return-object p2
.end method

.method public static collect(Ljava/util/Iterator;Lorg/apache/commons/collections4/Transformer;)Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<I:",
            "Ljava/lang/Object;",
            "O:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Iterator<",
            "TI;>;",
            "Lorg/apache/commons/collections4/Transformer<",
            "-TI;+TO;>;)",
            "Ljava/util/Collection<",
            "TO;>;"
        }
    .end annotation

    .line 1097
    .local p0, "inputIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<TI;>;"
    .local p1, "transformer":Lorg/apache/commons/collections4/Transformer;, "Lorg/apache/commons/collections4/Transformer<-TI;+TO;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p0, p1, v0}, Lorg/apache/commons/collections4/CollectionUtils;->collect(Ljava/util/Iterator;Lorg/apache/commons/collections4/Transformer;Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public static collect(Ljava/util/Iterator;Lorg/apache/commons/collections4/Transformer;Ljava/util/Collection;)Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<I:",
            "Ljava/lang/Object;",
            "O:",
            "Ljava/lang/Object;",
            "R::",
            "Ljava/util/Collection<",
            "-TO;>;>(",
            "Ljava/util/Iterator<",
            "+TI;>;",
            "Lorg/apache/commons/collections4/Transformer<",
            "-TI;+TO;>;TR;)TR;"
        }
    .end annotation

    .line 1148
    .local p0, "inputIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<+TI;>;"
    .local p1, "transformer":Lorg/apache/commons/collections4/Transformer;, "Lorg/apache/commons/collections4/Transformer<-TI;+TO;>;"
    .local p2, "outputCollection":Ljava/util/Collection;, "TR;"
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 1149
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1150
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 1151
    .local v0, "item":Ljava/lang/Object;, "TI;"
    invoke-interface {p1, v0}, Lorg/apache/commons/collections4/Transformer;->transform(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1152
    .local v1, "value":Ljava/lang/Object;, "TO;"
    invoke-interface {p2, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1153
    .end local v0    # "item":Ljava/lang/Object;, "TI;"
    .end local v1    # "value":Ljava/lang/Object;, "TO;"
    goto :goto_0

    .line 1155
    :cond_0
    return-object p2
.end method

.method public static containsAll(Ljava/util/Collection;Ljava/util/Collection;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 381
    .local p0, "coll1":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    .local p1, "coll2":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 382
    return v1

    .line 384
    :cond_0
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 385
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 386
    .local v2, "elementsAlreadySeen":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Object;>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 387
    .local v4, "nextElement":Ljava/lang/Object;
    invoke-interface {v2, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 388
    goto :goto_0

    .line 391
    :cond_1
    const/4 v5, 0x0

    .line 392
    .local v5, "foundCurrentElement":Z
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 393
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 394
    .local v6, "p":Ljava/lang/Object;
    invoke-interface {v2, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 395
    if-nez v4, :cond_2

    if-nez v6, :cond_3

    goto :goto_2

    :cond_2
    invoke-virtual {v4, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 396
    :goto_2
    const/4 v5, 0x1

    .line 397
    goto :goto_3

    .line 399
    .end local v6    # "p":Ljava/lang/Object;
    :cond_3
    goto :goto_1

    .line 401
    :cond_4
    :goto_3
    if-nez v5, :cond_5

    .line 402
    const/4 v1, 0x0

    return v1

    .line 404
    .end local v4    # "nextElement":Ljava/lang/Object;
    .end local v5    # "foundCurrentElement":Z
    :cond_5
    goto :goto_0

    .line 405
    :cond_6
    return v1
.end method

.method public static containsAny(Ljava/util/Collection;Ljava/util/Collection;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 453
    .local p0, "coll1":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    .local p1, "coll2":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ge v0, v1, :cond_2

    .line 454
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 455
    .local v1, "aColl1":Ljava/lang/Object;
    invoke-interface {p1, v1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 456
    return v2

    .line 458
    .end local v1    # "aColl1":Ljava/lang/Object;
    :cond_0
    goto :goto_0

    :cond_1
    goto :goto_2

    .line 460
    :cond_2
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 461
    .local v1, "aColl2":Ljava/lang/Object;
    invoke-interface {p0, v1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 462
    return v2

    .line 464
    .end local v1    # "aColl2":Ljava/lang/Object;
    :cond_3
    goto :goto_1

    .line 466
    :cond_4
    :goto_2
    const/4 v0, 0x0

    return v0
.end method

.method public static varargs containsAny(Ljava/util/Collection;[Ljava/lang/Object;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "*>;[TT;)Z"
        }
    .end annotation

    .line 423
    .local p0, "coll1":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    .local p1, "coll2":[Ljava/lang/Object;, "[TT;"
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    array-length v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ge v0, v1, :cond_2

    .line 424
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 425
    .local v1, "aColl1":Ljava/lang/Object;
    invoke-static {p1, v1}, Lorg/apache/commons/collections4/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 426
    return v3

    .line 428
    .end local v1    # "aColl1":Ljava/lang/Object;
    :cond_0
    goto :goto_0

    :cond_1
    goto :goto_2

    .line 430
    :cond_2
    array-length v0, p1

    move v1, v2

    :goto_1
    if-ge v1, v0, :cond_4

    aget-object v4, p1, v1

    .line 431
    .local v4, "aColl2":Ljava/lang/Object;
    invoke-interface {p0, v4}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 432
    return v3

    .line 430
    .end local v4    # "aColl2":Ljava/lang/Object;
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 436
    :cond_4
    :goto_2
    return v2
.end method

.method public static countMatches(Ljava/lang/Iterable;Lorg/apache/commons/collections4/Predicate;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "TC;>;",
            "Lorg/apache/commons/collections4/Predicate<",
            "-TC;>;)I"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 872
    .local p0, "input":Ljava/lang/Iterable;, "Ljava/lang/Iterable<TC;>;"
    .local p1, "predicate":Lorg/apache/commons/collections4/Predicate;, "Lorg/apache/commons/collections4/Predicate<-TC;>;"
    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-static {p0, p1}, Lorg/apache/commons/collections4/IterableUtils;->countMatches(Ljava/lang/Iterable;Lorg/apache/commons/collections4/Predicate;)J

    move-result-wide v0

    long-to-int v0, v0

    :goto_0
    return v0
.end method

.method public static disjunction(Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljava/util/Collection;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<O:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+TO;>;",
            "Ljava/lang/Iterable<",
            "+TO;>;)",
            "Ljava/util/Collection<",
            "TO;>;"
        }
    .end annotation

    .line 288
    .local p0, "a":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TO;>;"
    .local p1, "b":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TO;>;"
    new-instance v0, Lorg/apache/commons/collections4/CollectionUtils$SetOperationCardinalityHelper;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/collections4/CollectionUtils$SetOperationCardinalityHelper;-><init>(Ljava/lang/Iterable;Ljava/lang/Iterable;)V

    .line 289
    .local v0, "helper":Lorg/apache/commons/collections4/CollectionUtils$SetOperationCardinalityHelper;, "Lorg/apache/commons/collections4/CollectionUtils$SetOperationCardinalityHelper<TO;>;"
    invoke-virtual {v0}, Lorg/apache/commons/collections4/CollectionUtils$SetOperationCardinalityHelper;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 290
    .local v2, "obj":Ljava/lang/Object;, "TO;"
    invoke-virtual {v0, v2}, Lorg/apache/commons/collections4/CollectionUtils$SetOperationCardinalityHelper;->max(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v0, v2}, Lorg/apache/commons/collections4/CollectionUtils$SetOperationCardinalityHelper;->min(Ljava/lang/Object;)I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {v0, v2, v3}, Lorg/apache/commons/collections4/CollectionUtils$SetOperationCardinalityHelper;->setCardinality(Ljava/lang/Object;I)V

    .line 291
    .end local v2    # "obj":Ljava/lang/Object;, "TO;"
    goto :goto_0

    .line 292
    :cond_0
    invoke-virtual {v0}, Lorg/apache/commons/collections4/CollectionUtils$SetOperationCardinalityHelper;->list()Ljava/util/Collection;

    move-result-object v1

    return-object v1
.end method

.method public static emptyCollection()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/Collection<",
            "TT;>;"
        }
    .end annotation

    .line 201
    sget-object v0, Lorg/apache/commons/collections4/CollectionUtils;->EMPTY_COLLECTION:Ljava/util/Collection;

    return-object v0
.end method

.method public static emptyIfNull(Ljava/util/Collection;)Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "TT;>;)",
            "Ljava/util/Collection<",
            "TT;>;"
        }
    .end annotation

    .line 213
    .local p0, "collection":Ljava/util/Collection;, "Ljava/util/Collection<TT;>;"
    if-nez p0, :cond_0

    invoke-static {}, Lorg/apache/commons/collections4/CollectionUtils;->emptyCollection()Ljava/util/Collection;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p0

    :goto_0
    return-object v0
.end method

.method public static exists(Ljava/lang/Iterable;Lorg/apache/commons/collections4/Predicate;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "TC;>;",
            "Lorg/apache/commons/collections4/Predicate<",
            "-TC;>;)Z"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 890
    .local p0, "input":Ljava/lang/Iterable;, "Ljava/lang/Iterable<TC;>;"
    .local p1, "predicate":Lorg/apache/commons/collections4/Predicate;, "Lorg/apache/commons/collections4/Predicate<-TC;>;"
    if-eqz p1, :cond_0

    invoke-static {p0, p1}, Lorg/apache/commons/collections4/IterableUtils;->matchesAny(Ljava/lang/Iterable;Lorg/apache/commons/collections4/Predicate;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static extractSingleton(Ljava/util/Collection;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "TE;>;)TE;"
        }
    .end annotation

    .line 1984
    .local p0, "collection":Ljava/util/Collection;, "Ljava/util/Collection<TE;>;"
    if-eqz p0, :cond_1

    .line 1987
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1990
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 1988
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can extract singleton only when collection size == 1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1985
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Collection must not be null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static filter(Ljava/lang/Iterable;Lorg/apache/commons/collections4/Predicate;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "TT;>;",
            "Lorg/apache/commons/collections4/Predicate<",
            "-TT;>;)Z"
        }
    .end annotation

    .line 788
    .local p0, "collection":Ljava/lang/Iterable;, "Ljava/lang/Iterable<TT;>;"
    .local p1, "predicate":Lorg/apache/commons/collections4/Predicate;, "Lorg/apache/commons/collections4/Predicate<-TT;>;"
    const/4 v0, 0x0

    .line 789
    .local v0, "result":Z
    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    .line 790
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<TT;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 791
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1, v2}, Lorg/apache/commons/collections4/Predicate;->evaluate(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 792
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 793
    const/4 v0, 0x1

    goto :goto_0

    .line 797
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<TT;>;"
    :cond_1
    return v0
.end method

.method public static filterInverse(Ljava/lang/Iterable;Lorg/apache/commons/collections4/Predicate;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "TT;>;",
            "Lorg/apache/commons/collections4/Predicate<",
            "-TT;>;)Z"
        }
    .end annotation

    .line 817
    .local p0, "collection":Ljava/lang/Iterable;, "Ljava/lang/Iterable<TT;>;"
    .local p1, "predicate":Lorg/apache/commons/collections4/Predicate;, "Lorg/apache/commons/collections4/Predicate<-TT;>;"
    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lorg/apache/commons/collections4/PredicateUtils;->notPredicate(Lorg/apache/commons/collections4/Predicate;)Lorg/apache/commons/collections4/Predicate;

    move-result-object v0

    :goto_0
    invoke-static {p0, v0}, Lorg/apache/commons/collections4/CollectionUtils;->filter(Ljava/lang/Iterable;Lorg/apache/commons/collections4/Predicate;)Z

    move-result v0

    return v0
.end method

.method public static find(Ljava/lang/Iterable;Lorg/apache/commons/collections4/Predicate;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "TT;>;",
            "Lorg/apache/commons/collections4/Predicate<",
            "-TT;>;)TT;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 690
    .local p0, "collection":Ljava/lang/Iterable;, "Ljava/lang/Iterable<TT;>;"
    .local p1, "predicate":Lorg/apache/commons/collections4/Predicate;, "Lorg/apache/commons/collections4/Predicate<-TT;>;"
    if-eqz p1, :cond_0

    invoke-static {p0, p1}, Lorg/apache/commons/collections4/IterableUtils;->find(Ljava/lang/Iterable;Lorg/apache/commons/collections4/Predicate;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public static forAllButLastDo(Ljava/lang/Iterable;Lorg/apache/commons/collections4/Closure;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "C::",
            "Lorg/apache/commons/collections4/Closure<",
            "-TT;>;>(",
            "Ljava/lang/Iterable<",
            "TT;>;TC;)TT;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 753
    .local p0, "collection":Ljava/lang/Iterable;, "Ljava/lang/Iterable<TT;>;"
    .local p1, "closure":Lorg/apache/commons/collections4/Closure;, "TC;"
    if-eqz p1, :cond_0

    invoke-static {p0, p1}, Lorg/apache/commons/collections4/IterableUtils;->forEachButLast(Ljava/lang/Iterable;Lorg/apache/commons/collections4/Closure;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public static forAllButLastDo(Ljava/util/Iterator;Lorg/apache/commons/collections4/Closure;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "C::",
            "Lorg/apache/commons/collections4/Closure<",
            "-TT;>;>(",
            "Ljava/util/Iterator<",
            "TT;>;TC;)TT;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 772
    .local p0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<TT;>;"
    .local p1, "closure":Lorg/apache/commons/collections4/Closure;, "TC;"
    if-eqz p1, :cond_0

    invoke-static {p0, p1}, Lorg/apache/commons/collections4/IteratorUtils;->forEachButLast(Ljava/util/Iterator;Lorg/apache/commons/collections4/Closure;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public static forAllDo(Ljava/lang/Iterable;Lorg/apache/commons/collections4/Closure;)Lorg/apache/commons/collections4/Closure;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "C::",
            "Lorg/apache/commons/collections4/Closure<",
            "-TT;>;>(",
            "Ljava/lang/Iterable<",
            "TT;>;TC;)TC;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 708
    .local p0, "collection":Ljava/lang/Iterable;, "Ljava/lang/Iterable<TT;>;"
    .local p1, "closure":Lorg/apache/commons/collections4/Closure;, "TC;"
    if-eqz p1, :cond_0

    .line 709
    invoke-static {p0, p1}, Lorg/apache/commons/collections4/IterableUtils;->forEach(Ljava/lang/Iterable;Lorg/apache/commons/collections4/Closure;)V

    .line 711
    :cond_0
    return-object p1
.end method

.method public static forAllDo(Ljava/util/Iterator;Lorg/apache/commons/collections4/Closure;)Lorg/apache/commons/collections4/Closure;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "C::",
            "Lorg/apache/commons/collections4/Closure<",
            "-TT;>;>(",
            "Ljava/util/Iterator<",
            "TT;>;TC;)TC;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 730
    .local p0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<TT;>;"
    .local p1, "closure":Lorg/apache/commons/collections4/Closure;, "TC;"
    if-eqz p1, :cond_0

    .line 731
    invoke-static {p0, p1}, Lorg/apache/commons/collections4/IteratorUtils;->forEach(Ljava/util/Iterator;Lorg/apache/commons/collections4/Closure;)V

    .line 733
    :cond_0
    return-object p1
.end method

.method public static get(Ljava/lang/Iterable;I)Ljava/lang/Object;
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "TT;>;I)TT;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1293
    .local p0, "iterable":Ljava/lang/Iterable;, "Ljava/lang/Iterable<TT;>;"
    invoke-static {p0, p1}, Lorg/apache/commons/collections4/IterableUtils;->get(Ljava/lang/Iterable;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static get(Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 5
    .param p0, "object"    # Ljava/lang/Object;
    .param p1, "index"    # I

    .line 1328
    move v0, p1

    .line 1329
    .local v0, "i":I
    if-ltz v0, :cond_6

    .line 1332
    instance-of v1, p0, Ljava/util/Map;

    if-eqz v1, :cond_0

    .line 1333
    move-object v1, p0

    check-cast v1, Ljava/util/Map;

    .line 1334
    .local v1, "map":Ljava/util/Map;, "Ljava/util/Map<**>;"
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 1335
    .local v2, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    invoke-static {v2, v0}, Lorg/apache/commons/collections4/IteratorUtils;->get(Ljava/util/Iterator;I)Ljava/lang/Object;

    move-result-object v3

    return-object v3

    .line 1336
    .end local v1    # "map":Ljava/util/Map;, "Ljava/util/Map<**>;"
    .end local v2    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :cond_0
    instance-of v1, p0, [Ljava/lang/Object;

    if-eqz v1, :cond_1

    .line 1337
    move-object v1, p0

    check-cast v1, [Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    aget-object v1, v1, v0

    return-object v1

    .line 1338
    :cond_1
    instance-of v1, p0, Ljava/util/Iterator;

    if-eqz v1, :cond_2

    .line 1339
    move-object v1, p0

    check-cast v1, Ljava/util/Iterator;

    .line 1340
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    invoke-static {v1, v0}, Lorg/apache/commons/collections4/IteratorUtils;->get(Ljava/util/Iterator;I)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 1341
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :cond_2
    instance-of v1, p0, Ljava/lang/Iterable;

    if-eqz v1, :cond_3

    .line 1342
    move-object v1, p0

    check-cast v1, Ljava/lang/Iterable;

    .line 1343
    .local v1, "iterable":Ljava/lang/Iterable;, "Ljava/lang/Iterable<*>;"
    invoke-static {v1, v0}, Lorg/apache/commons/collections4/IterableUtils;->get(Ljava/lang/Iterable;I)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 1344
    .end local v1    # "iterable":Ljava/lang/Iterable;, "Ljava/lang/Iterable<*>;"
    :cond_3
    instance-of v1, p0, Ljava/util/Enumeration;

    if-eqz v1, :cond_4

    .line 1345
    move-object v1, p0

    check-cast v1, Ljava/util/Enumeration;

    .line 1346
    .local v1, "it":Ljava/util/Enumeration;, "Ljava/util/Enumeration<*>;"
    invoke-static {v1, v0}, Lorg/apache/commons/collections4/EnumerationUtils;->get(Ljava/util/Enumeration;I)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 1347
    .end local v1    # "it":Ljava/util/Enumeration;, "Ljava/util/Enumeration<*>;"
    :cond_4
    if-eqz p0, :cond_5

    .line 1351
    :try_start_0
    invoke-static {p0, v0}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 1352
    :catch_0
    move-exception v1

    .line 1353
    .local v1, "ex":Ljava/lang/IllegalArgumentException;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unsupported object type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1348
    .end local v1    # "ex":Ljava/lang/IllegalArgumentException;
    :cond_5
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Unsupported object type: null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1330
    :cond_6
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Index cannot be negative: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static get(Ljava/util/Iterator;I)Ljava/lang/Object;
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Iterator<",
            "TT;>;I)TT;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1263
    .local p0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<TT;>;"
    invoke-static {p0, p1}, Lorg/apache/commons/collections4/IteratorUtils;->get(Ljava/util/Iterator;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static get(Ljava/util/Map;I)Ljava/util/Map$Entry;
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TK;TV;>;I)",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1370
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    invoke-static {p1}, Lorg/apache/commons/collections4/CollectionUtils;->checkIndexBounds(I)V

    .line 1371
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/apache/commons/collections4/CollectionUtils;->get(Ljava/lang/Iterable;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    return-object v0
.end method

.method public static getCardinalityMap(Ljava/lang/Iterable;)Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<O:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+TO;>;)",
            "Ljava/util/Map<",
            "TO;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 483
    .local p0, "coll":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TO;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 484
    .local v0, "count":Ljava/util/Map;, "Ljava/util/Map<TO;Ljava/lang/Integer;>;"
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 485
    .local v2, "obj":Ljava/lang/Object;, "TO;"
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 486
    .local v3, "c":Ljava/lang/Integer;
    const/4 v4, 0x1

    if-nez v3, :cond_0

    .line 487
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 489
    :cond_0
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    add-int/2addr v5, v4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 491
    .end local v2    # "obj":Ljava/lang/Object;, "TO;"
    .end local v3    # "c":Ljava/lang/Integer;
    :goto_1
    goto :goto_0

    .line 492
    :cond_1
    return-object v0
.end method

.method public static intersection(Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljava/util/Collection;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<O:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+TO;>;",
            "Ljava/lang/Iterable<",
            "+TO;>;)",
            "Ljava/util/Collection<",
            "TO;>;"
        }
    .end annotation

    .line 258
    .local p0, "a":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TO;>;"
    .local p1, "b":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TO;>;"
    new-instance v0, Lorg/apache/commons/collections4/CollectionUtils$SetOperationCardinalityHelper;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/collections4/CollectionUtils$SetOperationCardinalityHelper;-><init>(Ljava/lang/Iterable;Ljava/lang/Iterable;)V

    .line 259
    .local v0, "helper":Lorg/apache/commons/collections4/CollectionUtils$SetOperationCardinalityHelper;, "Lorg/apache/commons/collections4/CollectionUtils$SetOperationCardinalityHelper<TO;>;"
    invoke-virtual {v0}, Lorg/apache/commons/collections4/CollectionUtils$SetOperationCardinalityHelper;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 260
    .local v2, "obj":Ljava/lang/Object;, "TO;"
    invoke-virtual {v0, v2}, Lorg/apache/commons/collections4/CollectionUtils$SetOperationCardinalityHelper;->min(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lorg/apache/commons/collections4/CollectionUtils$SetOperationCardinalityHelper;->setCardinality(Ljava/lang/Object;I)V

    .line 261
    .end local v2    # "obj":Ljava/lang/Object;, "TO;"
    goto :goto_0

    .line 262
    :cond_0
    invoke-virtual {v0}, Lorg/apache/commons/collections4/CollectionUtils$SetOperationCardinalityHelper;->list()Ljava/util/Collection;

    move-result-object v1

    return-object v1
.end method

.method public static isEmpty(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 1481
    .local p0, "coll":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static isEqualCollection(Ljava/util/Collection;Ljava/util/Collection;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 557
    .local p0, "a":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    .local p1, "b":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    .line 558
    return v2

    .line 560
    :cond_0
    new-instance v0, Lorg/apache/commons/collections4/CollectionUtils$CardinalityHelper;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/collections4/CollectionUtils$CardinalityHelper;-><init>(Ljava/lang/Iterable;Ljava/lang/Iterable;)V

    .line 561
    .local v0, "helper":Lorg/apache/commons/collections4/CollectionUtils$CardinalityHelper;, "Lorg/apache/commons/collections4/CollectionUtils$CardinalityHelper<Ljava/lang/Object;>;"
    iget-object v1, v0, Lorg/apache/commons/collections4/CollectionUtils$CardinalityHelper;->cardinalityA:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    iget-object v3, v0, Lorg/apache/commons/collections4/CollectionUtils$CardinalityHelper;->cardinalityB:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    if-eq v1, v3, :cond_1

    .line 562
    return v2

    .line 564
    :cond_1
    iget-object v1, v0, Lorg/apache/commons/collections4/CollectionUtils$CardinalityHelper;->cardinalityA:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 565
    .local v3, "obj":Ljava/lang/Object;
    invoke-virtual {v0, v3}, Lorg/apache/commons/collections4/CollectionUtils$CardinalityHelper;->freqA(Ljava/lang/Object;)I

    move-result v4

    invoke-virtual {v0, v3}, Lorg/apache/commons/collections4/CollectionUtils$CardinalityHelper;->freqB(Ljava/lang/Object;)I

    move-result v5

    if-eq v4, v5, :cond_2

    .line 566
    return v2

    .line 568
    .end local v3    # "obj":Ljava/lang/Object;
    :cond_2
    goto :goto_0

    .line 569
    :cond_3
    const/4 v1, 0x1

    return v1
.end method

.method public static isEqualCollection(Ljava/util/Collection;Ljava/util/Collection;Lorg/apache/commons/collections4/Equator;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "+TE;>;",
            "Ljava/util/Collection<",
            "+TE;>;",
            "Lorg/apache/commons/collections4/Equator<",
            "-TE;>;)Z"
        }
    .end annotation

    .line 598
    .local p0, "a":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    .local p1, "b":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    .local p2, "equator":Lorg/apache/commons/collections4/Equator;, "Lorg/apache/commons/collections4/Equator<-TE;>;"
    if-eqz p2, :cond_1

    .line 602
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 603
    const/4 v0, 0x0

    return v0

    .line 607
    :cond_0
    new-instance v0, Lorg/apache/commons/collections4/CollectionUtils$1;

    invoke-direct {v0, p2}, Lorg/apache/commons/collections4/CollectionUtils$1;-><init>(Lorg/apache/commons/collections4/Equator;)V

    .line 614
    .local v0, "transformer":Lorg/apache/commons/collections4/Transformer;, "Lorg/apache/commons/collections4/Transformer<TE;*>;"
    invoke-static {p0, v0}, Lorg/apache/commons/collections4/CollectionUtils;->collect(Ljava/lang/Iterable;Lorg/apache/commons/collections4/Transformer;)Ljava/util/Collection;

    move-result-object v1

    invoke-static {p1, v0}, Lorg/apache/commons/collections4/CollectionUtils;->collect(Ljava/lang/Iterable;Lorg/apache/commons/collections4/Transformer;)Ljava/util/Collection;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/apache/commons/collections4/CollectionUtils;->isEqualCollection(Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result v1

    return v1

    .line 599
    .end local v0    # "transformer":Lorg/apache/commons/collections4/Transformer;, "Lorg/apache/commons/collections4/Transformer<TE;*>;"
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Equator must not be null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static isFull(Ljava/util/Collection;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .line 1536
    .local p0, "coll":Ljava/util/Collection;, "Ljava/util/Collection<+Ljava/lang/Object;>;"
    if-eqz p0, :cond_1

    .line 1539
    instance-of v0, p0, Lorg/apache/commons/collections4/BoundedCollection;

    if-eqz v0, :cond_0

    .line 1540
    move-object v0, p0

    check-cast v0, Lorg/apache/commons/collections4/BoundedCollection;

    invoke-interface {v0}, Lorg/apache/commons/collections4/BoundedCollection;->isFull()Z

    move-result v0

    return v0

    .line 1543
    :cond_0
    nop

    .line 1544
    :try_start_0
    invoke-static {p0}, Lorg/apache/commons/collections4/collection/UnmodifiableBoundedCollection;->unmodifiableBoundedCollection(Ljava/util/Collection;)Lorg/apache/commons/collections4/BoundedCollection;

    move-result-object v0

    .line 1545
    .local v0, "bcoll":Lorg/apache/commons/collections4/BoundedCollection;, "Lorg/apache/commons/collections4/BoundedCollection<*>;"
    invoke-interface {v0}, Lorg/apache/commons/collections4/BoundedCollection;->isFull()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 1546
    .end local v0    # "bcoll":Lorg/apache/commons/collections4/BoundedCollection;, "Lorg/apache/commons/collections4/BoundedCollection<*>;"
    :catch_0
    move-exception v0

    .line 1547
    .local v0, "ex":Ljava/lang/IllegalArgumentException;
    const/4 v1, 0x0

    return v1

    .line 1537
    .end local v0    # "ex":Ljava/lang/IllegalArgumentException;
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "The collection must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static isNotEmpty(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 1495
    .local p0, "coll":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-static {p0}, Lorg/apache/commons/collections4/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static isProperSubCollection(Ljava/util/Collection;Ljava/util/Collection;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 540
    .local p0, "a":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    .local p1, "b":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-static {p0, p1}, Lorg/apache/commons/collections4/CollectionUtils;->isSubCollection(Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isSubCollection(Ljava/util/Collection;Ljava/util/Collection;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 508
    .local p0, "a":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    .local p1, "b":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    new-instance v0, Lorg/apache/commons/collections4/CollectionUtils$CardinalityHelper;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/collections4/CollectionUtils$CardinalityHelper;-><init>(Ljava/lang/Iterable;Ljava/lang/Iterable;)V

    .line 509
    .local v0, "helper":Lorg/apache/commons/collections4/CollectionUtils$CardinalityHelper;, "Lorg/apache/commons/collections4/CollectionUtils$CardinalityHelper<Ljava/lang/Object;>;"
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 510
    .local v2, "obj":Ljava/lang/Object;
    invoke-virtual {v0, v2}, Lorg/apache/commons/collections4/CollectionUtils$CardinalityHelper;->freqA(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v0, v2}, Lorg/apache/commons/collections4/CollectionUtils$CardinalityHelper;->freqB(Ljava/lang/Object;)I

    move-result v4

    if-le v3, v4, :cond_0

    .line 511
    const/4 v1, 0x0

    return v1

    .line 513
    .end local v2    # "obj":Ljava/lang/Object;
    :cond_0
    goto :goto_0

    .line 514
    :cond_1
    const/4 v1, 0x1

    return v1
.end method

.method public static matchesAll(Ljava/lang/Iterable;Lorg/apache/commons/collections4/Predicate;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "TC;>;",
            "Lorg/apache/commons/collections4/Predicate<",
            "-TC;>;)Z"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 914
    .local p0, "input":Ljava/lang/Iterable;, "Ljava/lang/Iterable<TC;>;"
    .local p1, "predicate":Lorg/apache/commons/collections4/Predicate;, "Lorg/apache/commons/collections4/Predicate<-TC;>;"
    if-eqz p1, :cond_0

    invoke-static {p0, p1}, Lorg/apache/commons/collections4/IterableUtils;->matchesAll(Ljava/lang/Iterable;Lorg/apache/commons/collections4/Predicate;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static maxSize(Ljava/util/Collection;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/lang/Object;",
            ">;)I"
        }
    .end annotation

    .line 1569
    .local p0, "coll":Ljava/util/Collection;, "Ljava/util/Collection<+Ljava/lang/Object;>;"
    if-eqz p0, :cond_1

    .line 1572
    instance-of v0, p0, Lorg/apache/commons/collections4/BoundedCollection;

    if-eqz v0, :cond_0

    .line 1573
    move-object v0, p0

    check-cast v0, Lorg/apache/commons/collections4/BoundedCollection;

    invoke-interface {v0}, Lorg/apache/commons/collections4/BoundedCollection;->maxSize()I

    move-result v0

    return v0

    .line 1576
    :cond_0
    nop

    .line 1577
    :try_start_0
    invoke-static {p0}, Lorg/apache/commons/collections4/collection/UnmodifiableBoundedCollection;->unmodifiableBoundedCollection(Ljava/util/Collection;)Lorg/apache/commons/collections4/BoundedCollection;

    move-result-object v0

    .line 1578
    .local v0, "bcoll":Lorg/apache/commons/collections4/BoundedCollection;, "Lorg/apache/commons/collections4/BoundedCollection<*>;"
    invoke-interface {v0}, Lorg/apache/commons/collections4/BoundedCollection;->maxSize()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 1579
    .end local v0    # "bcoll":Lorg/apache/commons/collections4/BoundedCollection;, "Lorg/apache/commons/collections4/BoundedCollection<*>;"
    :catch_0
    move-exception v0

    .line 1580
    .local v0, "ex":Ljava/lang/IllegalArgumentException;
    const/4 v1, -0x1

    return v1

    .line 1570
    .end local v0    # "ex":Ljava/lang/IllegalArgumentException;
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "The collection must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static permutations(Ljava/util/Collection;)Ljava/util/Collection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "TE;>;)",
            "Ljava/util/Collection<",
            "Ljava/util/List<",
            "TE;>;>;"
        }
    .end annotation

    .line 1719
    .local p0, "collection":Ljava/util/Collection;, "Ljava/util/Collection<TE;>;"
    new-instance v0, Lorg/apache/commons/collections4/iterators/PermutationIterator;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections4/iterators/PermutationIterator;-><init>(Ljava/util/Collection;)V

    .line 1720
    .local v0, "it":Lorg/apache/commons/collections4/iterators/PermutationIterator;, "Lorg/apache/commons/collections4/iterators/PermutationIterator<TE;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1721
    .local v1, "result":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/List<TE;>;>;"
    :goto_0
    invoke-virtual {v0}, Lorg/apache/commons/collections4/iterators/PermutationIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1722
    invoke-virtual {v0}, Lorg/apache/commons/collections4/iterators/PermutationIterator;->next()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1724
    :cond_0
    return-object v1
.end method

.method public static predicatedCollection(Ljava/util/Collection;Lorg/apache/commons/collections4/Predicate;)Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "TC;>;",
            "Lorg/apache/commons/collections4/Predicate<",
            "-TC;>;)",
            "Ljava/util/Collection<",
            "TC;>;"
        }
    .end annotation

    .line 1947
    .local p0, "collection":Ljava/util/Collection;, "Ljava/util/Collection<TC;>;"
    .local p1, "predicate":Lorg/apache/commons/collections4/Predicate;, "Lorg/apache/commons/collections4/Predicate<-TC;>;"
    invoke-static {p0, p1}, Lorg/apache/commons/collections4/collection/PredicatedCollection;->predicatedCollection(Ljava/util/Collection;Lorg/apache/commons/collections4/Predicate;)Lorg/apache/commons/collections4/collection/PredicatedCollection;

    move-result-object v0

    return-object v0
.end method

.method public static removeAll(Ljava/lang/Iterable;Ljava/lang/Iterable;Lorg/apache/commons/collections4/Equator;)Ljava/util/Collection;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "TE;>;",
            "Ljava/lang/Iterable<",
            "+TE;>;",
            "Lorg/apache/commons/collections4/Equator<",
            "-TE;>;)",
            "Ljava/util/Collection<",
            "TE;>;"
        }
    .end annotation

    .line 1863
    .local p0, "collection":Ljava/lang/Iterable;, "Ljava/lang/Iterable<TE;>;"
    .local p1, "remove":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TE;>;"
    .local p2, "equator":Lorg/apache/commons/collections4/Equator;, "Lorg/apache/commons/collections4/Equator<-TE;>;"
    new-instance v0, Lorg/apache/commons/collections4/CollectionUtils$3;

    invoke-direct {v0, p2}, Lorg/apache/commons/collections4/CollectionUtils$3;-><init>(Lorg/apache/commons/collections4/Equator;)V

    .line 1870
    .local v0, "transformer":Lorg/apache/commons/collections4/Transformer;, "Lorg/apache/commons/collections4/Transformer<TE;Lorg/apache/commons/collections4/CollectionUtils$EquatorWrapper<TE;>;>;"
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 1871
    invoke-static {p1, v0, v1}, Lorg/apache/commons/collections4/CollectionUtils;->collect(Ljava/lang/Iterable;Lorg/apache/commons/collections4/Transformer;Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    .line 1873
    .local v1, "removeSet":Ljava/util/Set;, "Ljava/util/Set<Lorg/apache/commons/collections4/CollectionUtils$EquatorWrapper<TE;>;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1874
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<TE;>;"
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 1875
    .local v4, "element":Ljava/lang/Object;, "TE;"
    new-instance v5, Lorg/apache/commons/collections4/CollectionUtils$EquatorWrapper;

    invoke-direct {v5, p2, v4}, Lorg/apache/commons/collections4/CollectionUtils$EquatorWrapper;-><init>(Lorg/apache/commons/collections4/Equator;Ljava/lang/Object;)V

    invoke-interface {v1, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1876
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1878
    .end local v4    # "element":Ljava/lang/Object;, "TE;"
    :cond_0
    goto :goto_0

    .line 1879
    :cond_1
    return-object v2
.end method

.method public static removeAll(Ljava/util/Collection;Ljava/util/Collection;)Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "TE;>;",
            "Ljava/util/Collection<",
            "*>;)",
            "Ljava/util/Collection<",
            "TE;>;"
        }
    .end annotation

    .line 1829
    .local p0, "collection":Ljava/util/Collection;, "Ljava/util/Collection<TE;>;"
    .local p1, "remove":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-static {p0, p1}, Lorg/apache/commons/collections4/ListUtils;->removeAll(Ljava/util/Collection;Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static retainAll(Ljava/lang/Iterable;Ljava/lang/Iterable;Lorg/apache/commons/collections4/Equator;)Ljava/util/Collection;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "TE;>;",
            "Ljava/lang/Iterable<",
            "+TE;>;",
            "Lorg/apache/commons/collections4/Equator<",
            "-TE;>;)",
            "Ljava/util/Collection<",
            "TE;>;"
        }
    .end annotation

    .line 1785
    .local p0, "collection":Ljava/lang/Iterable;, "Ljava/lang/Iterable<TE;>;"
    .local p1, "retain":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TE;>;"
    .local p2, "equator":Lorg/apache/commons/collections4/Equator;, "Lorg/apache/commons/collections4/Equator<-TE;>;"
    new-instance v0, Lorg/apache/commons/collections4/CollectionUtils$2;

    invoke-direct {v0, p2}, Lorg/apache/commons/collections4/CollectionUtils$2;-><init>(Lorg/apache/commons/collections4/Equator;)V

    .line 1792
    .local v0, "transformer":Lorg/apache/commons/collections4/Transformer;, "Lorg/apache/commons/collections4/Transformer<TE;Lorg/apache/commons/collections4/CollectionUtils$EquatorWrapper<TE;>;>;"
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 1793
    invoke-static {p1, v0, v1}, Lorg/apache/commons/collections4/CollectionUtils;->collect(Ljava/lang/Iterable;Lorg/apache/commons/collections4/Transformer;Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    .line 1795
    .local v1, "retainSet":Ljava/util/Set;, "Ljava/util/Set<Lorg/apache/commons/collections4/CollectionUtils$EquatorWrapper<TE;>;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1796
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<TE;>;"
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 1797
    .local v4, "element":Ljava/lang/Object;, "TE;"
    new-instance v5, Lorg/apache/commons/collections4/CollectionUtils$EquatorWrapper;

    invoke-direct {v5, p2, v4}, Lorg/apache/commons/collections4/CollectionUtils$EquatorWrapper;-><init>(Lorg/apache/commons/collections4/Equator;Ljava/lang/Object;)V

    invoke-interface {v1, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1798
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1800
    .end local v4    # "element":Ljava/lang/Object;, "TE;"
    :cond_0
    goto :goto_0

    .line 1801
    :cond_1
    return-object v2
.end method

.method public static retainAll(Ljava/util/Collection;Ljava/util/Collection;)Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "TC;>;",
            "Ljava/util/Collection<",
            "*>;)",
            "Ljava/util/Collection<",
            "TC;>;"
        }
    .end annotation

    .line 1752
    .local p0, "collection":Ljava/util/Collection;, "Ljava/util/Collection<TC;>;"
    .local p1, "retain":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-static {p0, p1}, Lorg/apache/commons/collections4/ListUtils;->retainAll(Ljava/util/Collection;Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static reverseArray([Ljava/lang/Object;)V
    .locals 4
    .param p0, "array"    # [Ljava/lang/Object;

    .line 1505
    const/4 v0, 0x0

    .line 1506
    .local v0, "i":I
    array-length v1, p0

    add-int/lit8 v1, v1, -0x1

    .line 1509
    .local v1, "j":I
    :goto_0
    if-le v1, v0, :cond_0

    .line 1510
    aget-object v2, p0, v1

    .line 1511
    .local v2, "tmp":Ljava/lang/Object;
    aget-object v3, p0, v0

    aput-object v3, p0, v1

    .line 1512
    aput-object v2, p0, v0

    .line 1513
    add-int/lit8 v1, v1, -0x1

    .line 1514
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1516
    .end local v2    # "tmp":Ljava/lang/Object;
    :cond_0
    return-void
.end method

.method public static select(Ljava/lang/Iterable;Lorg/apache/commons/collections4/Predicate;)Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<O:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+TO;>;",
            "Lorg/apache/commons/collections4/Predicate<",
            "-TO;>;)",
            "Ljava/util/Collection<",
            "TO;>;"
        }
    .end annotation

    .line 932
    .local p0, "inputCollection":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TO;>;"
    .local p1, "predicate":Lorg/apache/commons/collections4/Predicate;, "Lorg/apache/commons/collections4/Predicate<-TO;>;"
    instance-of v0, p0, Ljava/util/Collection;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    move-object v1, p0

    check-cast v1, Ljava/util/Collection;

    .line 933
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 934
    .local v0, "answer":Ljava/util/Collection;, "Ljava/util/Collection<TO;>;"
    :goto_0
    invoke-static {p0, p1, v0}, Lorg/apache/commons/collections4/CollectionUtils;->select(Ljava/lang/Iterable;Lorg/apache/commons/collections4/Predicate;Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v1

    return-object v1
.end method

.method public static select(Ljava/lang/Iterable;Lorg/apache/commons/collections4/Predicate;Ljava/util/Collection;)Ljava/util/Collection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<O:",
            "Ljava/lang/Object;",
            "R::",
            "Ljava/util/Collection<",
            "-TO;>;>(",
            "Ljava/lang/Iterable<",
            "+TO;>;",
            "Lorg/apache/commons/collections4/Predicate<",
            "-TO;>;TR;)TR;"
        }
    .end annotation

    .line 956
    .local p0, "inputCollection":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TO;>;"
    .local p1, "predicate":Lorg/apache/commons/collections4/Predicate;, "Lorg/apache/commons/collections4/Predicate<-TO;>;"
    .local p2, "outputCollection":Ljava/util/Collection;, "TR;"
    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    .line 957
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 958
    .local v1, "item":Ljava/lang/Object;, "TO;"
    invoke-interface {p1, v1}, Lorg/apache/commons/collections4/Predicate;->evaluate(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 959
    invoke-interface {p2, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 961
    .end local v1    # "item":Ljava/lang/Object;, "TO;"
    :cond_0
    goto :goto_0

    .line 963
    :cond_1
    return-object p2
.end method

.method public static select(Ljava/lang/Iterable;Lorg/apache/commons/collections4/Predicate;Ljava/util/Collection;Ljava/util/Collection;)Ljava/util/Collection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<O:",
            "Ljava/lang/Object;",
            "R::",
            "Ljava/util/Collection<",
            "-TO;>;>(",
            "Ljava/lang/Iterable<",
            "+TO;>;",
            "Lorg/apache/commons/collections4/Predicate<",
            "-TO;>;TR;TR;)TR;"
        }
    .end annotation

    .line 999
    .local p0, "inputCollection":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TO;>;"
    .local p1, "predicate":Lorg/apache/commons/collections4/Predicate;, "Lorg/apache/commons/collections4/Predicate<-TO;>;"
    .local p2, "outputCollection":Ljava/util/Collection;, "TR;"
    .local p3, "rejectedCollection":Ljava/util/Collection;, "TR;"
    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    .line 1000
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 1001
    .local v1, "element":Ljava/lang/Object;, "TO;"
    invoke-interface {p1, v1}, Lorg/apache/commons/collections4/Predicate;->evaluate(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1002
    invoke-interface {p2, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1004
    :cond_0
    invoke-interface {p3, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1006
    .end local v1    # "element":Ljava/lang/Object;, "TO;"
    :goto_1
    goto :goto_0

    .line 1008
    :cond_1
    return-object p2
.end method

.method public static selectRejected(Ljava/lang/Iterable;Lorg/apache/commons/collections4/Predicate;)Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<O:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+TO;>;",
            "Lorg/apache/commons/collections4/Predicate<",
            "-TO;>;)",
            "Ljava/util/Collection<",
            "TO;>;"
        }
    .end annotation

    .line 1027
    .local p0, "inputCollection":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TO;>;"
    .local p1, "predicate":Lorg/apache/commons/collections4/Predicate;, "Lorg/apache/commons/collections4/Predicate<-TO;>;"
    instance-of v0, p0, Ljava/util/Collection;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    move-object v1, p0

    check-cast v1, Ljava/util/Collection;

    .line 1028
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1029
    .local v0, "answer":Ljava/util/Collection;, "Ljava/util/Collection<TO;>;"
    :goto_0
    invoke-static {p0, p1, v0}, Lorg/apache/commons/collections4/CollectionUtils;->selectRejected(Ljava/lang/Iterable;Lorg/apache/commons/collections4/Predicate;Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v1

    return-object v1
.end method

.method public static selectRejected(Ljava/lang/Iterable;Lorg/apache/commons/collections4/Predicate;Ljava/util/Collection;)Ljava/util/Collection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<O:",
            "Ljava/lang/Object;",
            "R::",
            "Ljava/util/Collection<",
            "-TO;>;>(",
            "Ljava/lang/Iterable<",
            "+TO;>;",
            "Lorg/apache/commons/collections4/Predicate<",
            "-TO;>;TR;)TR;"
        }
    .end annotation

    .line 1051
    .local p0, "inputCollection":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TO;>;"
    .local p1, "predicate":Lorg/apache/commons/collections4/Predicate;, "Lorg/apache/commons/collections4/Predicate<-TO;>;"
    .local p2, "outputCollection":Ljava/util/Collection;, "TR;"
    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    .line 1052
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 1053
    .local v1, "item":Ljava/lang/Object;, "TO;"
    invoke-interface {p1, v1}, Lorg/apache/commons/collections4/Predicate;->evaluate(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1054
    invoke-interface {p2, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1056
    .end local v1    # "item":Ljava/lang/Object;, "TO;"
    :cond_0
    goto :goto_0

    .line 1058
    :cond_1
    return-object p2
.end method

.method public static size(Ljava/lang/Object;)I
    .locals 5
    .param p0, "object"    # Ljava/lang/Object;

    .line 1393
    if-nez p0, :cond_0

    .line 1394
    const/4 v0, 0x0

    return v0

    .line 1396
    :cond_0
    const/4 v0, 0x0

    .line 1397
    .local v0, "total":I
    instance-of v1, p0, Ljava/util/Map;

    if-eqz v1, :cond_1

    .line 1398
    move-object v1, p0

    check-cast v1, Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v0

    goto :goto_1

    .line 1399
    :cond_1
    instance-of v1, p0, Ljava/util/Collection;

    if-eqz v1, :cond_2

    .line 1400
    move-object v1, p0

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v0

    goto :goto_1

    .line 1401
    :cond_2
    instance-of v1, p0, Ljava/lang/Iterable;

    if-eqz v1, :cond_3

    .line 1402
    move-object v1, p0

    check-cast v1, Ljava/lang/Iterable;

    invoke-static {v1}, Lorg/apache/commons/collections4/IterableUtils;->size(Ljava/lang/Iterable;)I

    move-result v0

    goto :goto_1

    .line 1403
    :cond_3
    instance-of v1, p0, [Ljava/lang/Object;

    if-eqz v1, :cond_4

    .line 1404
    move-object v1, p0

    check-cast v1, [Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    array-length v0, v1

    goto :goto_1

    .line 1405
    :cond_4
    instance-of v1, p0, Ljava/util/Iterator;

    if-eqz v1, :cond_5

    .line 1406
    move-object v1, p0

    check-cast v1, Ljava/util/Iterator;

    invoke-static {v1}, Lorg/apache/commons/collections4/IteratorUtils;->size(Ljava/util/Iterator;)I

    move-result v0

    goto :goto_1

    .line 1407
    :cond_5
    instance-of v1, p0, Ljava/util/Enumeration;

    if-eqz v1, :cond_7

    .line 1408
    move-object v1, p0

    check-cast v1, Ljava/util/Enumeration;

    .line 1409
    .local v1, "it":Ljava/util/Enumeration;, "Ljava/util/Enumeration<*>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1410
    add-int/lit8 v0, v0, 0x1

    .line 1411
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    goto :goto_0

    .line 1413
    .end local v1    # "it":Ljava/util/Enumeration;, "Ljava/util/Enumeration<*>;"
    :cond_6
    goto :goto_1

    .line 1415
    :cond_7
    :try_start_0
    invoke-static {p0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 1418
    nop

    .line 1420
    :goto_1
    return v0

    .line 1416
    :catch_0
    move-exception v1

    .line 1417
    .local v1, "ex":Ljava/lang/IllegalArgumentException;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unsupported object type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static sizeIsEmpty(Ljava/lang/Object;)Z
    .locals 4
    .param p0, "object"    # Ljava/lang/Object;

    .line 1446
    const/4 v0, 0x1

    if-nez p0, :cond_0

    .line 1447
    return v0

    .line 1448
    :cond_0
    instance-of v1, p0, Ljava/util/Collection;

    if-eqz v1, :cond_1

    .line 1449
    move-object v0, p0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    return v0

    .line 1450
    :cond_1
    instance-of v1, p0, Ljava/lang/Iterable;

    if-eqz v1, :cond_2

    .line 1451
    move-object v0, p0

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0}, Lorg/apache/commons/collections4/IterableUtils;->isEmpty(Ljava/lang/Iterable;)Z

    move-result v0

    return v0

    .line 1452
    :cond_2
    instance-of v1, p0, Ljava/util/Map;

    if-eqz v1, :cond_3

    .line 1453
    move-object v0, p0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    return v0

    .line 1454
    :cond_3
    instance-of v1, p0, [Ljava/lang/Object;

    const/4 v2, 0x0

    if-eqz v1, :cond_5

    .line 1455
    move-object v1, p0

    check-cast v1, [Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    array-length v1, v1

    if-nez v1, :cond_4

    goto :goto_0

    :cond_4
    move v0, v2

    :goto_0
    return v0

    .line 1456
    :cond_5
    instance-of v1, p0, Ljava/util/Iterator;

    if-eqz v1, :cond_6

    .line 1457
    move-object v1, p0

    check-cast v1, Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    xor-int/2addr v0, v1

    return v0

    .line 1458
    :cond_6
    instance-of v1, p0, Ljava/util/Enumeration;

    if-eqz v1, :cond_7

    .line 1459
    move-object v1, p0

    check-cast v1, Ljava/util/Enumeration;

    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    xor-int/2addr v0, v1

    return v0

    .line 1462
    :cond_7
    :try_start_0
    invoke-static {p0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v1, :cond_8

    goto :goto_1

    :cond_8
    move v0, v2

    :goto_1
    return v0

    .line 1463
    :catch_0
    move-exception v0

    .line 1464
    .local v0, "ex":Ljava/lang/IllegalArgumentException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported object type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static subtract(Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<O:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+TO;>;",
            "Ljava/lang/Iterable<",
            "+TO;>;)",
            "Ljava/util/Collection<",
            "TO;>;"
        }
    .end annotation

    .line 309
    .local p0, "a":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TO;>;"
    .local p1, "b":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TO;>;"
    invoke-static {}, Lorg/apache/commons/collections4/functors/TruePredicate;->truePredicate()Lorg/apache/commons/collections4/Predicate;

    move-result-object v0

    .line 310
    .local v0, "p":Lorg/apache/commons/collections4/Predicate;, "Lorg/apache/commons/collections4/Predicate<TO;>;"
    invoke-static {p0, p1, v0}, Lorg/apache/commons/collections4/CollectionUtils;->subtract(Ljava/lang/Iterable;Ljava/lang/Iterable;Lorg/apache/commons/collections4/Predicate;)Ljava/util/Collection;

    move-result-object v1

    return-object v1
.end method

.method public static subtract(Ljava/lang/Iterable;Ljava/lang/Iterable;Lorg/apache/commons/collections4/Predicate;)Ljava/util/Collection;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<O:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+TO;>;",
            "Ljava/lang/Iterable<",
            "+TO;>;",
            "Lorg/apache/commons/collections4/Predicate<",
            "TO;>;)",
            "Ljava/util/Collection<",
            "TO;>;"
        }
    .end annotation

    .line 341
    .local p0, "a":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TO;>;"
    .local p1, "b":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TO;>;"
    .local p2, "p":Lorg/apache/commons/collections4/Predicate;, "Lorg/apache/commons/collections4/Predicate<TO;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 342
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TO;>;"
    new-instance v1, Lorg/apache/commons/collections4/bag/HashBag;

    invoke-direct {v1}, Lorg/apache/commons/collections4/bag/HashBag;-><init>()V

    .line 343
    .local v1, "bag":Lorg/apache/commons/collections4/bag/HashBag;, "Lorg/apache/commons/collections4/bag/HashBag<TO;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 344
    .local v3, "element":Ljava/lang/Object;, "TO;"
    invoke-interface {p2, v3}, Lorg/apache/commons/collections4/Predicate;->evaluate(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 345
    invoke-virtual {v1, v3}, Lorg/apache/commons/collections4/bag/HashBag;->add(Ljava/lang/Object;)Z

    .line 347
    .end local v3    # "element":Ljava/lang/Object;, "TO;"
    :cond_0
    goto :goto_0

    .line 348
    :cond_1
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 349
    .restart local v3    # "element":Ljava/lang/Object;, "TO;"
    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Lorg/apache/commons/collections4/bag/HashBag;->remove(Ljava/lang/Object;I)Z

    move-result v4

    if-nez v4, :cond_2

    .line 350
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 352
    .end local v3    # "element":Ljava/lang/Object;, "TO;"
    :cond_2
    goto :goto_1

    .line 353
    :cond_3
    return-object v0
.end method

.method public static synchronizedCollection(Ljava/util/Collection;)Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "TC;>;)",
            "Ljava/util/Collection<",
            "TC;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1910
    .local p0, "collection":Ljava/util/Collection;, "Ljava/util/Collection<TC;>;"
    invoke-static {p0}, Lorg/apache/commons/collections4/collection/SynchronizedCollection;->synchronizedCollection(Ljava/util/Collection;)Lorg/apache/commons/collections4/collection/SynchronizedCollection;

    move-result-object v0

    return-object v0
.end method

.method public static transform(Ljava/util/Collection;Lorg/apache/commons/collections4/Transformer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "TC;>;",
            "Lorg/apache/commons/collections4/Transformer<",
            "-TC;+TC;>;)V"
        }
    .end annotation

    .line 843
    .local p0, "collection":Ljava/util/Collection;, "Ljava/util/Collection<TC;>;"
    .local p1, "transformer":Lorg/apache/commons/collections4/Transformer;, "Lorg/apache/commons/collections4/Transformer<-TC;+TC;>;"
    if-eqz p0, :cond_2

    if-eqz p1, :cond_2

    .line 844
    instance-of v0, p0, Ljava/util/List;

    if-eqz v0, :cond_1

    .line 845
    move-object v0, p0

    check-cast v0, Ljava/util/List;

    .line 846
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<TC;>;"
    invoke-interface {v0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v1

    .local v1, "it":Ljava/util/ListIterator;, "Ljava/util/ListIterator<TC;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 847
    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1, v2}, Lorg/apache/commons/collections4/Transformer;->transform(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    goto :goto_0

    .line 849
    .end local v0    # "list":Ljava/util/List;, "Ljava/util/List<TC;>;"
    .end local v1    # "it":Ljava/util/ListIterator;, "Ljava/util/ListIterator<TC;>;"
    :cond_0
    goto :goto_1

    .line 850
    :cond_1
    invoke-static {p0, p1}, Lorg/apache/commons/collections4/CollectionUtils;->collect(Ljava/lang/Iterable;Lorg/apache/commons/collections4/Transformer;)Ljava/util/Collection;

    move-result-object v0

    .line 851
    .local v0, "resultCollection":Ljava/util/Collection;, "Ljava/util/Collection<TC;>;"
    invoke-interface {p0}, Ljava/util/Collection;->clear()V

    .line 852
    invoke-interface {p0, v0}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    .line 855
    .end local v0    # "resultCollection":Ljava/util/Collection;, "Ljava/util/Collection<TC;>;"
    :cond_2
    :goto_1
    return-void
.end method

.method public static transformingCollection(Ljava/util/Collection;Lorg/apache/commons/collections4/Transformer;)Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "TE;>;",
            "Lorg/apache/commons/collections4/Transformer<",
            "-TE;+TE;>;)",
            "Ljava/util/Collection<",
            "TE;>;"
        }
    .end annotation

    .line 1970
    .local p0, "collection":Ljava/util/Collection;, "Ljava/util/Collection<TE;>;"
    .local p1, "transformer":Lorg/apache/commons/collections4/Transformer;, "Lorg/apache/commons/collections4/Transformer<-TE;+TE;>;"
    invoke-static {p0, p1}, Lorg/apache/commons/collections4/collection/TransformedCollection;->transformingCollection(Ljava/util/Collection;Lorg/apache/commons/collections4/Transformer;)Lorg/apache/commons/collections4/collection/TransformedCollection;

    move-result-object v0

    return-object v0
.end method

.method public static union(Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljava/util/Collection;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<O:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+TO;>;",
            "Ljava/lang/Iterable<",
            "+TO;>;)",
            "Ljava/util/Collection<",
            "TO;>;"
        }
    .end annotation

    .line 233
    .local p0, "a":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TO;>;"
    .local p1, "b":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TO;>;"
    new-instance v0, Lorg/apache/commons/collections4/CollectionUtils$SetOperationCardinalityHelper;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/collections4/CollectionUtils$SetOperationCardinalityHelper;-><init>(Ljava/lang/Iterable;Ljava/lang/Iterable;)V

    .line 234
    .local v0, "helper":Lorg/apache/commons/collections4/CollectionUtils$SetOperationCardinalityHelper;, "Lorg/apache/commons/collections4/CollectionUtils$SetOperationCardinalityHelper<TO;>;"
    invoke-virtual {v0}, Lorg/apache/commons/collections4/CollectionUtils$SetOperationCardinalityHelper;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 235
    .local v2, "obj":Ljava/lang/Object;, "TO;"
    invoke-virtual {v0, v2}, Lorg/apache/commons/collections4/CollectionUtils$SetOperationCardinalityHelper;->max(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lorg/apache/commons/collections4/CollectionUtils$SetOperationCardinalityHelper;->setCardinality(Ljava/lang/Object;I)V

    .line 236
    .end local v2    # "obj":Ljava/lang/Object;, "TO;"
    goto :goto_0

    .line 237
    :cond_0
    invoke-virtual {v0}, Lorg/apache/commons/collections4/CollectionUtils$SetOperationCardinalityHelper;->list()Ljava/util/Collection;

    move-result-object v1

    return-object v1
.end method

.method public static unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "+TC;>;)",
            "Ljava/util/Collection<",
            "TC;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1927
    .local p0, "collection":Ljava/util/Collection;, "Ljava/util/Collection<+TC;>;"
    invoke-static {p0}, Lorg/apache/commons/collections4/collection/UnmodifiableCollection;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method
