.class public Lorg/apache/commons/collections4/iterators/UniqueFilterIterator;
.super Lorg/apache/commons/collections4/iterators/FilterIterator;
.source "UniqueFilterIterator.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/commons/collections4/iterators/FilterIterator<",
        "TE;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/util/Iterator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "+TE;>;)V"
        }
    .end annotation

    .line 40
    .local p0, "this":Lorg/apache/commons/collections4/iterators/UniqueFilterIterator;, "Lorg/apache/commons/collections4/iterators/UniqueFilterIterator<TE;>;"
    .local p1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<+TE;>;"
    invoke-static {}, Lorg/apache/commons/collections4/functors/UniquePredicate;->uniquePredicate()Lorg/apache/commons/collections4/Predicate;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/collections4/iterators/FilterIterator;-><init>(Ljava/util/Iterator;Lorg/apache/commons/collections4/Predicate;)V

    .line 41
    return-void
.end method
