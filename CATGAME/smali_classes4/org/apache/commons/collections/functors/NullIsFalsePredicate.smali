.class public final Lorg/apache/commons/collections/functors/NullIsFalsePredicate;
.super Ljava/lang/Object;
.source "NullIsFalsePredicate.java"

# interfaces
.implements Lorg/apache/commons/collections/Predicate;
.implements Lorg/apache/commons/collections/functors/PredicateDecorator;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x299943c3a56b5a25L


# instance fields
.field private final iPredicate:Lorg/apache/commons/collections/Predicate;


# direct methods
.method public constructor <init>(Lorg/apache/commons/collections/Predicate;)V
    .locals 0
    .param p1, "predicate"    # Lorg/apache/commons/collections/Predicate;

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Lorg/apache/commons/collections/functors/NullIsFalsePredicate;->iPredicate:Lorg/apache/commons/collections/Predicate;

    .line 62
    return-void
.end method

.method public static getInstance(Lorg/apache/commons/collections/Predicate;)Lorg/apache/commons/collections/Predicate;
    .locals 2
    .param p0, "predicate"    # Lorg/apache/commons/collections/Predicate;

    .line 47
    if-eqz p0, :cond_0

    .line 50
    new-instance v0, Lorg/apache/commons/collections/functors/NullIsFalsePredicate;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections/functors/NullIsFalsePredicate;-><init>(Lorg/apache/commons/collections/Predicate;)V

    return-object v0

    .line 48
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Predicate must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public evaluate(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;

    .line 72
    if-nez p1, :cond_0

    .line 73
    const/4 v0, 0x0

    return v0

    .line 75
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections/functors/NullIsFalsePredicate;->iPredicate:Lorg/apache/commons/collections/Predicate;

    invoke-interface {v0, p1}, Lorg/apache/commons/collections/Predicate;->evaluate(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getPredicates()[Lorg/apache/commons/collections/Predicate;
    .locals 3

    .line 85
    const/4 v0, 0x1

    new-array v0, v0, [Lorg/apache/commons/collections/Predicate;

    iget-object v1, p0, Lorg/apache/commons/collections/functors/NullIsFalsePredicate;->iPredicate:Lorg/apache/commons/collections/Predicate;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    return-object v0
.end method
