.class public Lorg/apache/commons/collections/collection/TypedCollection;
.super Ljava/lang/Object;
.source "TypedCollection.java"


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decorate(Ljava/util/Collection;Ljava/lang/Class;)Ljava/util/Collection;
    .locals 1

    .line 51
    new-instance v0, Lorg/apache/commons/collections/collection/PredicatedCollection;

    invoke-static {p1}, Lorg/apache/commons/collections/functors/InstanceofPredicate;->getInstance(Ljava/lang/Class;)Lorg/apache/commons/collections/Predicate;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/collections/collection/PredicatedCollection;-><init>(Ljava/util/Collection;Lorg/apache/commons/collections/Predicate;)V

    return-object v0
.end method
