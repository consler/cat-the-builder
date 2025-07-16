.class public Lorg/apache/commons/collections/functors/ClosureTransformer;
.super Ljava/lang/Object;
.source "ClosureTransformer.java"

# interfaces
.implements Lorg/apache/commons/collections/Transformer;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x6a3db1ca1a06d46L


# instance fields
.field private final iClosure:Lorg/apache/commons/collections/Closure;


# direct methods
.method public constructor <init>(Lorg/apache/commons/collections/Closure;)V
    .locals 0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Lorg/apache/commons/collections/functors/ClosureTransformer;->iClosure:Lorg/apache/commons/collections/Closure;

    return-void
.end method

.method public static getInstance(Lorg/apache/commons/collections/Closure;)Lorg/apache/commons/collections/Transformer;
    .locals 1

    if-eqz p0, :cond_0

    .line 52
    new-instance v0, Lorg/apache/commons/collections/functors/ClosureTransformer;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections/functors/ClosureTransformer;-><init>(Lorg/apache/commons/collections/Closure;)V

    return-object v0

    .line 50
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Closure must not be null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public getClosure()Lorg/apache/commons/collections/Closure;
    .locals 1

    .line 84
    iget-object v0, p0, Lorg/apache/commons/collections/functors/ClosureTransformer;->iClosure:Lorg/apache/commons/collections/Closure;

    return-object v0
.end method

.method public transform(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 73
    iget-object v0, p0, Lorg/apache/commons/collections/functors/ClosureTransformer;->iClosure:Lorg/apache/commons/collections/Closure;

    invoke-interface {v0, p1}, Lorg/apache/commons/collections/Closure;->execute(Ljava/lang/Object;)V

    return-object p1
.end method
