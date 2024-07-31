.class public Lorg/apache/commons/collections/bag/TypedSortedBag;
.super Ljava/lang/Object;
.source "TypedSortedBag.java"


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    return-void
.end method

.method public static decorate(Lorg/apache/commons/collections/SortedBag;Ljava/lang/Class;)Lorg/apache/commons/collections/SortedBag;
    .locals 2
    .param p0, "bag"    # Lorg/apache/commons/collections/SortedBag;
    .param p1, "type"    # Ljava/lang/Class;

    .line 51
    new-instance v0, Lorg/apache/commons/collections/bag/PredicatedSortedBag;

    invoke-static {p1}, Lorg/apache/commons/collections/functors/InstanceofPredicate;->getInstance(Ljava/lang/Class;)Lorg/apache/commons/collections/Predicate;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/apache/commons/collections/bag/PredicatedSortedBag;-><init>(Lorg/apache/commons/collections/SortedBag;Lorg/apache/commons/collections/Predicate;)V

    return-object v0
.end method
