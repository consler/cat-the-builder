.class public Lcom/opencsv/bean/comparator/LiteralComparator;
.super Ljava/lang/Object;
.source "LiteralComparator.java"

# interfaces
.implements Ljava/util/Comparator;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Ljava/lang/Comparable<",
        "TT;>;>",
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "TT;>;",
        "Ljava/io/Serializable;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private c:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>([Ljava/lang/Comparable;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)V"
        }
    .end annotation

    .line 61
    .local p0, "this":Lcom/opencsv/bean/comparator/LiteralComparator;, "Lcom/opencsv/bean/comparator/LiteralComparator<TT;>;"
    .local p1, "predefinedOrder":[Ljava/lang/Comparable;, "[TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    if-nez p1, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 63
    .local v0, "predefinedList":Ljava/util/List;, "Ljava/util/List<TT;>;"
    :goto_0
    new-instance v1, Lorg/apache/commons/collections4/comparators/FixedOrderComparator;

    invoke-direct {v1, v0}, Lorg/apache/commons/collections4/comparators/FixedOrderComparator;-><init>(Ljava/util/List;)V

    .line 64
    .local v1, "fixedComparator":Lorg/apache/commons/collections4/comparators/FixedOrderComparator;, "Lorg/apache/commons/collections4/comparators/FixedOrderComparator<TT;>;"
    sget-object v2, Lorg/apache/commons/collections4/comparators/FixedOrderComparator$UnknownObjectBehavior;->AFTER:Lorg/apache/commons/collections4/comparators/FixedOrderComparator$UnknownObjectBehavior;

    invoke-virtual {v1, v2}, Lorg/apache/commons/collections4/comparators/FixedOrderComparator;->setUnknownObjectBehavior(Lorg/apache/commons/collections4/comparators/FixedOrderComparator$UnknownObjectBehavior;)V

    .line 65
    new-instance v2, Lorg/apache/commons/collections4/comparators/ComparatorChain;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/util/Comparator;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v5, 0x1

    new-instance v6, Lorg/apache/commons/collections4/comparators/NullComparator;

    invoke-direct {v6, v4}, Lorg/apache/commons/collections4/comparators/NullComparator;-><init>(Z)V

    aput-object v6, v3, v5

    const/4 v4, 0x2

    new-instance v5, Lorg/apache/commons/collections4/comparators/ComparableComparator;

    invoke-direct {v5}, Lorg/apache/commons/collections4/comparators/ComparableComparator;-><init>()V

    aput-object v5, v3, v4

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/commons/collections4/comparators/ComparatorChain;-><init>(Ljava/util/List;)V

    iput-object v2, p0, Lcom/opencsv/bean/comparator/LiteralComparator;->c:Ljava/util/Comparator;

    .line 69
    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Comparable;Ljava/lang/Comparable;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)I"
        }
    .end annotation

    .line 73
    .local p0, "this":Lcom/opencsv/bean/comparator/LiteralComparator;, "Lcom/opencsv/bean/comparator/LiteralComparator<TT;>;"
    .local p1, "o1":Ljava/lang/Comparable;, "TT;"
    .local p2, "o2":Ljava/lang/Comparable;, "TT;"
    iget-object v0, p0, Lcom/opencsv/bean/comparator/LiteralComparator;->c:Ljava/util/Comparator;

    invoke-interface {v0, p1, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 51
    .local p0, "this":Lcom/opencsv/bean/comparator/LiteralComparator;, "Lcom/opencsv/bean/comparator/LiteralComparator<TT;>;"
    check-cast p1, Ljava/lang/Comparable;

    check-cast p2, Ljava/lang/Comparable;

    invoke-virtual {p0, p1, p2}, Lcom/opencsv/bean/comparator/LiteralComparator;->compare(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result p1

    return p1
.end method
