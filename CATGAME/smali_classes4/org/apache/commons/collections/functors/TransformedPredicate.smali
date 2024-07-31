.class public final Lorg/apache/commons/collections/functors/TransformedPredicate;
.super Ljava/lang/Object;
.source "TransformedPredicate.java"

# interfaces
.implements Lorg/apache/commons/collections/Predicate;
.implements Lorg/apache/commons/collections/functors/PredicateDecorator;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x4da94f0ac59e76baL


# instance fields
.field private final iPredicate:Lorg/apache/commons/collections/Predicate;

.field private final iTransformer:Lorg/apache/commons/collections/Transformer;


# direct methods
.method public constructor <init>(Lorg/apache/commons/collections/Transformer;Lorg/apache/commons/collections/Predicate;)V
    .locals 0
    .param p1, "transformer"    # Lorg/apache/commons/collections/Transformer;
    .param p2, "predicate"    # Lorg/apache/commons/collections/Predicate;

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-object p1, p0, Lorg/apache/commons/collections/functors/TransformedPredicate;->iTransformer:Lorg/apache/commons/collections/Transformer;

    .line 70
    iput-object p2, p0, Lorg/apache/commons/collections/functors/TransformedPredicate;->iPredicate:Lorg/apache/commons/collections/Predicate;

    .line 71
    return-void
.end method

.method public static getInstance(Lorg/apache/commons/collections/Transformer;Lorg/apache/commons/collections/Predicate;)Lorg/apache/commons/collections/Predicate;
    .locals 2
    .param p0, "transformer"    # Lorg/apache/commons/collections/Transformer;
    .param p1, "predicate"    # Lorg/apache/commons/collections/Predicate;

    .line 52
    if-eqz p0, :cond_1

    .line 55
    if-eqz p1, :cond_0

    .line 58
    new-instance v0, Lorg/apache/commons/collections/functors/TransformedPredicate;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/collections/functors/TransformedPredicate;-><init>(Lorg/apache/commons/collections/Transformer;Lorg/apache/commons/collections/Predicate;)V

    return-object v0

    .line 56
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The predicate to call must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 53
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The transformer to call must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public evaluate(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "object"    # Ljava/lang/Object;

    .line 81
    iget-object v0, p0, Lorg/apache/commons/collections/functors/TransformedPredicate;->iTransformer:Lorg/apache/commons/collections/Transformer;

    invoke-interface {v0, p1}, Lorg/apache/commons/collections/Transformer;->transform(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 82
    .local v0, "result":Ljava/lang/Object;
    iget-object v1, p0, Lorg/apache/commons/collections/functors/TransformedPredicate;->iPredicate:Lorg/apache/commons/collections/Predicate;

    invoke-interface {v1, v0}, Lorg/apache/commons/collections/Predicate;->evaluate(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public getPredicates()[Lorg/apache/commons/collections/Predicate;
    .locals 3

    .line 92
    const/4 v0, 0x1

    new-array v0, v0, [Lorg/apache/commons/collections/Predicate;

    iget-object v1, p0, Lorg/apache/commons/collections/functors/TransformedPredicate;->iPredicate:Lorg/apache/commons/collections/Predicate;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    return-object v0
.end method

.method public getTransformer()Lorg/apache/commons/collections/Transformer;
    .locals 1

    .line 101
    iget-object v0, p0, Lorg/apache/commons/collections/functors/TransformedPredicate;->iTransformer:Lorg/apache/commons/collections/Transformer;

    return-object v0
.end method
