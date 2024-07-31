.class public Lorg/apache/commons/collections4/functors/PredicateTransformer;
.super Ljava/lang/Object;
.source "PredicateTransformer.java"

# interfaces
.implements Lorg/apache/commons/collections4/Transformer;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/apache/commons/collections4/Transformer<",
        "TT;",
        "Ljava/lang/Boolean;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x4942215fad46c7a2L


# instance fields
.field private final iPredicate:Lorg/apache/commons/collections4/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/collections4/Predicate<",
            "-TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/apache/commons/collections4/Predicate;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/Predicate<",
            "-TT;>;)V"
        }
    .end annotation

    .line 60
    .local p0, "this":Lorg/apache/commons/collections4/functors/PredicateTransformer;, "Lorg/apache/commons/collections4/functors/PredicateTransformer<TT;>;"
    .local p1, "predicate":Lorg/apache/commons/collections4/Predicate;, "Lorg/apache/commons/collections4/Predicate<-TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Lorg/apache/commons/collections4/functors/PredicateTransformer;->iPredicate:Lorg/apache/commons/collections4/Predicate;

    .line 62
    return-void
.end method

.method public static predicateTransformer(Lorg/apache/commons/collections4/Predicate;)Lorg/apache/commons/collections4/Transformer;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/commons/collections4/Predicate<",
            "-TT;>;)",
            "Lorg/apache/commons/collections4/Transformer<",
            "TT;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 47
    .local p0, "predicate":Lorg/apache/commons/collections4/Predicate;, "Lorg/apache/commons/collections4/Predicate<-TT;>;"
    if-eqz p0, :cond_0

    .line 50
    new-instance v0, Lorg/apache/commons/collections4/functors/PredicateTransformer;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections4/functors/PredicateTransformer;-><init>(Lorg/apache/commons/collections4/Predicate;)V

    return-object v0

    .line 48
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Predicate must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getPredicate()Lorg/apache/commons/collections4/Predicate;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/collections4/Predicate<",
            "-TT;>;"
        }
    .end annotation

    .line 82
    .local p0, "this":Lorg/apache/commons/collections4/functors/PredicateTransformer;, "Lorg/apache/commons/collections4/functors/PredicateTransformer<TT;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/functors/PredicateTransformer;->iPredicate:Lorg/apache/commons/collections4/Predicate;

    return-object v0
.end method

.method public transform(Ljava/lang/Object;)Ljava/lang/Boolean;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/lang/Boolean;"
        }
    .end annotation

    .line 72
    .local p0, "this":Lorg/apache/commons/collections4/functors/PredicateTransformer;, "Lorg/apache/commons/collections4/functors/PredicateTransformer<TT;>;"
    .local p1, "input":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lorg/apache/commons/collections4/functors/PredicateTransformer;->iPredicate:Lorg/apache/commons/collections4/Predicate;

    invoke-interface {v0, p1}, Lorg/apache/commons/collections4/Predicate;->evaluate(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic transform(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 30
    .local p0, "this":Lorg/apache/commons/collections4/functors/PredicateTransformer;, "Lorg/apache/commons/collections4/functors/PredicateTransformer<TT;>;"
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections4/functors/PredicateTransformer;->transform(Ljava/lang/Object;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
