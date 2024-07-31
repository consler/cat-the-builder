.class public Lorg/apache/commons/collections/set/TypedSortedSet;
.super Ljava/lang/Object;
.source "TypedSortedSet.java"


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    return-void
.end method

.method public static decorate(Ljava/util/SortedSet;Ljava/lang/Class;)Ljava/util/SortedSet;
    .locals 2
    .param p0, "set"    # Ljava/util/SortedSet;
    .param p1, "type"    # Ljava/lang/Class;

    .line 51
    new-instance v0, Lorg/apache/commons/collections/set/PredicatedSortedSet;

    invoke-static {p1}, Lorg/apache/commons/collections/functors/InstanceofPredicate;->getInstance(Ljava/lang/Class;)Lorg/apache/commons/collections/Predicate;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/apache/commons/collections/set/PredicatedSortedSet;-><init>(Ljava/util/SortedSet;Lorg/apache/commons/collections/Predicate;)V

    return-object v0
.end method
