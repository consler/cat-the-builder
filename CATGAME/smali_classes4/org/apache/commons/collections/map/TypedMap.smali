.class public Lorg/apache/commons/collections/map/TypedMap;
.super Ljava/lang/Object;
.source "TypedMap.java"


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    return-void
.end method

.method public static decorate(Ljava/util/Map;Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/Map;
    .locals 3
    .param p0, "map"    # Ljava/util/Map;
    .param p1, "keyType"    # Ljava/lang/Class;
    .param p2, "valueType"    # Ljava/lang/Class;

    .line 60
    new-instance v0, Lorg/apache/commons/collections/map/PredicatedMap;

    invoke-static {p1}, Lorg/apache/commons/collections/functors/InstanceofPredicate;->getInstance(Ljava/lang/Class;)Lorg/apache/commons/collections/Predicate;

    move-result-object v1

    invoke-static {p2}, Lorg/apache/commons/collections/functors/InstanceofPredicate;->getInstance(Ljava/lang/Class;)Lorg/apache/commons/collections/Predicate;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lorg/apache/commons/collections/map/PredicatedMap;-><init>(Ljava/util/Map;Lorg/apache/commons/collections/Predicate;Lorg/apache/commons/collections/Predicate;)V

    return-object v0
.end method
