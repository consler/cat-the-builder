.class public final Lorg/apache/commons/collections4/functors/TransformedPredicate;
.super Ljava/lang/Object;
.source "TransformedPredicate.java"

# interfaces
.implements Lorg/apache/commons/collections4/functors/PredicateDecorator;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/apache/commons/collections4/functors/PredicateDecorator<",
        "TT;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x4da94f0ac59e76baL


# instance fields
.field private final iPredicate:Lorg/apache/commons/collections4/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/collections4/Predicate<",
            "-TT;>;"
        }
    .end annotation
.end field

.field private final iTransformer:Lorg/apache/commons/collections4/Transformer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/collections4/Transformer<",
            "-TT;+TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/apache/commons/collections4/Transformer;Lorg/apache/commons/collections4/Predicate;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/Transformer<",
            "-TT;+TT;>;",
            "Lorg/apache/commons/collections4/Predicate<",
            "-TT;>;)V"
        }
    .end annotation

    .line 69
    .local p0, "this":Lorg/apache/commons/collections4/functors/TransformedPredicate;, "Lorg/apache/commons/collections4/functors/TransformedPredicate<TT;>;"
    .local p1, "transformer":Lorg/apache/commons/collections4/Transformer;, "Lorg/apache/commons/collections4/Transformer<-TT;+TT;>;"
    .local p2, "predicate":Lorg/apache/commons/collections4/Predicate;, "Lorg/apache/commons/collections4/Predicate<-TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-object p1, p0, Lorg/apache/commons/collections4/functors/TransformedPredicate;->iTransformer:Lorg/apache/commons/collections4/Transformer;

    .line 71
    iput-object p2, p0, Lorg/apache/commons/collections4/functors/TransformedPredicate;->iPredicate:Lorg/apache/commons/collections4/Predicate;

    .line 72
    return-void
.end method

.method public static transformedPredicate(Lorg/apache/commons/collections4/Transformer;Lorg/apache/commons/collections4/Predicate;)Lorg/apache/commons/collections4/Predicate;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/commons/collections4/Transformer<",
            "-TT;+TT;>;",
            "Lorg/apache/commons/collections4/Predicate<",
            "-TT;>;)",
            "Lorg/apache/commons/collections4/Predicate<",
            "TT;>;"
        }
    .end annotation

    .line 52
    .local p0, "transformer":Lorg/apache/commons/collections4/Transformer;, "Lorg/apache/commons/collections4/Transformer<-TT;+TT;>;"
    .local p1, "predicate":Lorg/apache/commons/collections4/Predicate;, "Lorg/apache/commons/collections4/Predicate<-TT;>;"
    if-eqz p0, :cond_1

    .line 55
    if-eqz p1, :cond_0

    .line 58
    new-instance v0, Lorg/apache/commons/collections4/functors/TransformedPredicate;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/collections4/functors/TransformedPredicate;-><init>(Lorg/apache/commons/collections4/Transformer;Lorg/apache/commons/collections4/Predicate;)V

    return-object v0

    .line 56
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "The predicate to call must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 53
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "The transformer to call must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public evaluate(Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 83
    .local p0, "this":Lorg/apache/commons/collections4/functors/TransformedPredicate;, "Lorg/apache/commons/collections4/functors/TransformedPredicate<TT;>;"
    .local p1, "object":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lorg/apache/commons/collections4/functors/TransformedPredicate;->iTransformer:Lorg/apache/commons/collections4/Transformer;

    invoke-interface {v0, p1}, Lorg/apache/commons/collections4/Transformer;->transform(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 84
    .local v0, "result":Ljava/lang/Object;, "TT;"
    iget-object v1, p0, Lorg/apache/commons/collections4/functors/TransformedPredicate;->iPredicate:Lorg/apache/commons/collections4/Predicate;

    invoke-interface {v1, v0}, Lorg/apache/commons/collections4/Predicate;->evaluate(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public getPredicates()[Lorg/apache/commons/collections4/Predicate;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Lorg/apache/commons/collections4/Predicate<",
            "-TT;>;"
        }
    .end annotation

    .line 96
    .local p0, "this":Lorg/apache/commons/collections4/functors/TransformedPredicate;, "Lorg/apache/commons/collections4/functors/TransformedPredicate<TT;>;"
    const/4 v0, 0x1

    new-array v0, v0, [Lorg/apache/commons/collections4/Predicate;

    iget-object v1, p0, Lorg/apache/commons/collections4/functors/TransformedPredicate;->iPredicate:Lorg/apache/commons/collections4/Predicate;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    return-object v0
.end method

.method public getTransformer()Lorg/apache/commons/collections4/Transformer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/collections4/Transformer<",
            "-TT;+TT;>;"
        }
    .end annotation

    .line 105
    .local p0, "this":Lorg/apache/commons/collections4/functors/TransformedPredicate;, "Lorg/apache/commons/collections4/functors/TransformedPredicate<TT;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/functors/TransformedPredicate;->iTransformer:Lorg/apache/commons/collections4/Transformer;

    return-object v0
.end method
