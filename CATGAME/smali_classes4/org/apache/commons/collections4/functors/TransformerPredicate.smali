.class public final Lorg/apache/commons/collections4/functors/TransformerPredicate;
.super Ljava/lang/Object;
.source "TransformerPredicate.java"

# interfaces
.implements Lorg/apache/commons/collections4/Predicate;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/apache/commons/collections4/Predicate<",
        "TT;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x216ad0af7d27feb5L


# instance fields
.field private final iTransformer:Lorg/apache/commons/collections4/Transformer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/collections4/Transformer<",
            "-TT;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/apache/commons/collections4/Transformer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/Transformer<",
            "-TT;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 60
    .local p0, "this":Lorg/apache/commons/collections4/functors/TransformerPredicate;, "Lorg/apache/commons/collections4/functors/TransformerPredicate<TT;>;"
    .local p1, "transformer":Lorg/apache/commons/collections4/Transformer;, "Lorg/apache/commons/collections4/Transformer<-TT;Ljava/lang/Boolean;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Lorg/apache/commons/collections4/functors/TransformerPredicate;->iTransformer:Lorg/apache/commons/collections4/Transformer;

    .line 62
    return-void
.end method

.method public static transformerPredicate(Lorg/apache/commons/collections4/Transformer;)Lorg/apache/commons/collections4/Predicate;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/commons/collections4/Transformer<",
            "-TT;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lorg/apache/commons/collections4/Predicate<",
            "TT;>;"
        }
    .end annotation

    .line 47
    .local p0, "transformer":Lorg/apache/commons/collections4/Transformer;, "Lorg/apache/commons/collections4/Transformer<-TT;Ljava/lang/Boolean;>;"
    if-eqz p0, :cond_0

    .line 50
    new-instance v0, Lorg/apache/commons/collections4/functors/TransformerPredicate;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections4/functors/TransformerPredicate;-><init>(Lorg/apache/commons/collections4/Transformer;)V

    return-object v0

    .line 48
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "The transformer to call must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public evaluate(Ljava/lang/Object;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 73
    .local p0, "this":Lorg/apache/commons/collections4/functors/TransformerPredicate;, "Lorg/apache/commons/collections4/functors/TransformerPredicate<TT;>;"
    .local p1, "object":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lorg/apache/commons/collections4/functors/TransformerPredicate;->iTransformer:Lorg/apache/commons/collections4/Transformer;

    invoke-interface {v0, p1}, Lorg/apache/commons/collections4/Transformer;->transform(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 74
    .local v0, "result":Ljava/lang/Boolean;
    if-eqz v0, :cond_0

    .line 78
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1

    .line 75
    :cond_0
    new-instance v1, Lorg/apache/commons/collections4/FunctorException;

    const-string v2, "Transformer must return an instanceof Boolean, it was a null object"

    invoke-direct {v1, v2}, Lorg/apache/commons/collections4/FunctorException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getTransformer()Lorg/apache/commons/collections4/Transformer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/collections4/Transformer<",
            "-TT;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 88
    .local p0, "this":Lorg/apache/commons/collections4/functors/TransformerPredicate;, "Lorg/apache/commons/collections4/functors/TransformerPredicate<TT;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/functors/TransformerPredicate;->iTransformer:Lorg/apache/commons/collections4/Transformer;

    return-object v0
.end method
