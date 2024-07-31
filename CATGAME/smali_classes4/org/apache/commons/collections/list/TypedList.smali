.class public Lorg/apache/commons/collections/list/TypedList;
.super Ljava/lang/Object;
.source "TypedList.java"


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    return-void
.end method

.method public static decorate(Ljava/util/List;Ljava/lang/Class;)Ljava/util/List;
    .locals 2
    .param p0, "list"    # Ljava/util/List;
    .param p1, "type"    # Ljava/lang/Class;

    .line 51
    new-instance v0, Lorg/apache/commons/collections/list/PredicatedList;

    invoke-static {p1}, Lorg/apache/commons/collections/functors/InstanceofPredicate;->getInstance(Ljava/lang/Class;)Lorg/apache/commons/collections/Predicate;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/apache/commons/collections/list/PredicatedList;-><init>(Ljava/util/List;Lorg/apache/commons/collections/Predicate;)V

    return-object v0
.end method
