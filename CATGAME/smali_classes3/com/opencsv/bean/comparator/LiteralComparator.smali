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
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)V"
        }
    .end annotation

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    .line 62
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 63
    :goto_0
    new-instance v0, Lorg/apache/commons/collections4/comparators/FixedOrderComparator;

    invoke-direct {v0, p1}, Lorg/apache/commons/collections4/comparators/FixedOrderComparator;-><init>(Ljava/util/List;)V

    .line 64
    sget-object p1, Lorg/apache/commons/collections4/comparators/FixedOrderComparator$UnknownObjectBehavior;->AFTER:Lorg/apache/commons/collections4/comparators/FixedOrderComparator$UnknownObjectBehavior;

    invoke-virtual {v0, p1}, Lorg/apache/commons/collections4/comparators/FixedOrderComparator;->setUnknownObjectBehavior(Lorg/apache/commons/collections4/comparators/FixedOrderComparator$UnknownObjectBehavior;)V

    .line 65
    new-instance p1, Lorg/apache/commons/collections4/comparators/ComparatorChain;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/util/Comparator;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    new-instance v0, Lorg/apache/commons/collections4/comparators/NullComparator;

    invoke-direct {v0, v2}, Lorg/apache/commons/collections4/comparators/NullComparator;-><init>(Z)V

    const/4 v2, 0x1

    aput-object v0, v1, v2

    new-instance v0, Lorg/apache/commons/collections4/comparators/ComparableComparator;

    invoke-direct {v0}, Lorg/apache/commons/collections4/comparators/ComparableComparator;-><init>()V

    const/4 v2, 0x2

    aput-object v0, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/apache/commons/collections4/comparators/ComparatorChain;-><init>(Ljava/util/List;)V

    iput-object p1, p0, Lcom/opencsv/bean/comparator/LiteralComparator;->c:Ljava/util/Comparator;

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
    iget-object v0, p0, Lcom/opencsv/bean/comparator/LiteralComparator;->c:Ljava/util/Comparator;

    invoke-interface {v0, p1, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 51
    check-cast p1, Ljava/lang/Comparable;

    check-cast p2, Ljava/lang/Comparable;

    invoke-virtual {p0, p1, p2}, Lcom/opencsv/bean/comparator/LiteralComparator;->compare(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result p1

    return p1
.end method
