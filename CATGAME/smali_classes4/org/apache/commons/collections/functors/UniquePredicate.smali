.class public final Lorg/apache/commons/collections/functors/UniquePredicate;
.super Ljava/lang/Object;
.source "UniquePredicate.java"

# interfaces
.implements Lorg/apache/commons/collections/Predicate;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x2e10f092a6dcd7d8L


# instance fields
.field private final iSet:Ljava/util/Set;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/collections/functors/UniquePredicate;->iSet:Ljava/util/Set;

    return-void
.end method

.method public static getInstance()Lorg/apache/commons/collections/Predicate;
    .locals 1

    .line 49
    new-instance v0, Lorg/apache/commons/collections/functors/UniquePredicate;

    invoke-direct {v0}, Lorg/apache/commons/collections/functors/UniquePredicate;-><init>()V

    return-object v0
.end method


# virtual methods
.method public evaluate(Ljava/lang/Object;)Z
    .locals 1

    .line 68
    iget-object v0, p0, Lorg/apache/commons/collections/functors/UniquePredicate;->iSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
