.class public final Lorg/apache/commons/collections/functors/TransformerPredicate;
.super Ljava/lang/Object;
.source "TransformerPredicate.java"

# interfaces
.implements Lorg/apache/commons/collections/Predicate;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x216ad0af7d27feb5L


# instance fields
.field private final iTransformer:Lorg/apache/commons/collections/Transformer;


# direct methods
.method public constructor <init>(Lorg/apache/commons/collections/Transformer;)V
    .locals 0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Lorg/apache/commons/collections/functors/TransformerPredicate;->iTransformer:Lorg/apache/commons/collections/Transformer;

    return-void
.end method

.method public static getInstance(Lorg/apache/commons/collections/Transformer;)Lorg/apache/commons/collections/Predicate;
    .locals 1

    if-eqz p0, :cond_0

    .line 52
    new-instance v0, Lorg/apache/commons/collections/functors/TransformerPredicate;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections/functors/TransformerPredicate;-><init>(Lorg/apache/commons/collections/Transformer;)V

    return-object v0

    .line 50
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "The transformer to call must not be null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public evaluate(Ljava/lang/Object;)Z
    .locals 3

    .line 74
    iget-object v0, p0, Lorg/apache/commons/collections/functors/TransformerPredicate;->iTransformer:Lorg/apache/commons/collections/Transformer;

    invoke-interface {v0, p1}, Lorg/apache/commons/collections/Transformer;->transform(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 75
    instance-of v0, p1, Ljava/lang/Boolean;

    if-nez v0, :cond_1

    .line 76
    new-instance v0, Lorg/apache/commons/collections/FunctorException;

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "Transformer must return an instanceof Boolean, it was a "

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    if-nez p1, :cond_0

    const-string p1, "null object"

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/apache/commons/collections/FunctorException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 80
    :cond_1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method public getTransformer()Lorg/apache/commons/collections/Transformer;
    .locals 1

    .line 90
    iget-object v0, p0, Lorg/apache/commons/collections/functors/TransformerPredicate;->iTransformer:Lorg/apache/commons/collections/Transformer;

    return-object v0
.end method
