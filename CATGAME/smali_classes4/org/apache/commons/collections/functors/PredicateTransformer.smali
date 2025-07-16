.class public Lorg/apache/commons/collections/functors/PredicateTransformer;
.super Ljava/lang/Object;
.source "PredicateTransformer.java"

# interfaces
.implements Lorg/apache/commons/collections/Transformer;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x4942215fad46c7a2L


# instance fields
.field private final iPredicate:Lorg/apache/commons/collections/Predicate;


# direct methods
.method public constructor <init>(Lorg/apache/commons/collections/Predicate;)V
    .locals 0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Lorg/apache/commons/collections/functors/PredicateTransformer;->iPredicate:Lorg/apache/commons/collections/Predicate;

    return-void
.end method

.method public static getInstance(Lorg/apache/commons/collections/Predicate;)Lorg/apache/commons/collections/Transformer;
    .locals 1

    if-eqz p0, :cond_0

    .line 52
    new-instance v0, Lorg/apache/commons/collections/functors/PredicateTransformer;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections/functors/PredicateTransformer;-><init>(Lorg/apache/commons/collections/Predicate;)V

    return-object v0

    .line 50
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Predicate must not be null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public getPredicate()Lorg/apache/commons/collections/Predicate;
    .locals 1

    .line 83
    iget-object v0, p0, Lorg/apache/commons/collections/functors/PredicateTransformer;->iPredicate:Lorg/apache/commons/collections/Predicate;

    return-object v0
.end method

.method public transform(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 73
    iget-object v0, p0, Lorg/apache/commons/collections/functors/PredicateTransformer;->iPredicate:Lorg/apache/commons/collections/Predicate;

    invoke-interface {v0, p1}, Lorg/apache/commons/collections/Predicate;->evaluate(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_0
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_0
    return-object p1
.end method
