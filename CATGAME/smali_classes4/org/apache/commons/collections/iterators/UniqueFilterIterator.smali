.class public Lorg/apache/commons/collections/iterators/UniqueFilterIterator;
.super Lorg/apache/commons/collections/iterators/FilterIterator;
.source "UniqueFilterIterator.java"


# direct methods
.method public constructor <init>(Ljava/util/Iterator;)V
    .locals 1
    .param p1, "iterator"    # Ljava/util/Iterator;

    .line 43
    invoke-static {}, Lorg/apache/commons/collections/functors/UniquePredicate;->getInstance()Lorg/apache/commons/collections/Predicate;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/collections/iterators/FilterIterator;-><init>(Ljava/util/Iterator;Lorg/apache/commons/collections/Predicate;)V

    .line 44
    return-void
.end method
