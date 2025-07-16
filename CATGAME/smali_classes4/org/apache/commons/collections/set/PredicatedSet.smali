.class public Lorg/apache/commons/collections/set/PredicatedSet;
.super Lorg/apache/commons/collections/collection/PredicatedCollection;
.source "PredicatedSet.java"

# interfaces
.implements Ljava/util/Set;


# static fields
.field private static final serialVersionUID:J = -0x97fe8a63f5a093dL


# direct methods
.method protected constructor <init>(Ljava/util/Set;Lorg/apache/commons/collections/Predicate;)V
    .locals 0

    .line 76
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/collections/collection/PredicatedCollection;-><init>(Ljava/util/Collection;Lorg/apache/commons/collections/Predicate;)V

    return-void
.end method

.method public static decorate(Ljava/util/Set;Lorg/apache/commons/collections/Predicate;)Ljava/util/Set;
    .locals 1

    .line 60
    new-instance v0, Lorg/apache/commons/collections/set/PredicatedSet;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/collections/set/PredicatedSet;-><init>(Ljava/util/Set;Lorg/apache/commons/collections/Predicate;)V

    return-object v0
.end method


# virtual methods
.method protected getSet()Ljava/util/Set;
    .locals 1

    .line 85
    invoke-virtual {p0}, Lorg/apache/commons/collections/set/PredicatedSet;->getCollection()Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    return-object v0
.end method
