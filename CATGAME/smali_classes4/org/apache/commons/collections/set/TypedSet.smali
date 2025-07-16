.class public Lorg/apache/commons/collections/set/TypedSet;
.super Ljava/lang/Object;
.source "TypedSet.java"


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decorate(Ljava/util/Set;Ljava/lang/Class;)Ljava/util/Set;
    .locals 1

    .line 51
    new-instance v0, Lorg/apache/commons/collections/set/PredicatedSet;

    invoke-static {p1}, Lorg/apache/commons/collections/functors/InstanceofPredicate;->getInstance(Ljava/lang/Class;)Lorg/apache/commons/collections/Predicate;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/collections/set/PredicatedSet;-><init>(Ljava/util/Set;Lorg/apache/commons/collections/Predicate;)V

    return-object v0
.end method
