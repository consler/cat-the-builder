.class public final Lorg/apache/commons/collections4/functors/NullIsTruePredicate;
.super Ljava/lang/Object;
.source "NullIsTruePredicate.java"

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
.field private static final serialVersionUID:J = -0x69d1eac361502a01L


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

    .line 58
    .local p0, "this":Lorg/apache/commons/collections4/functors/NullIsTruePredicate;, "Lorg/apache/commons/collections4/functors/NullIsTruePredicate<TT;>;"
    .local p1, "predicate":Lorg/apache/commons/collections4/Predicate;, "Lorg/apache/commons/collections4/Predicate<-TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lorg/apache/commons/collections4/functors/NullIsTruePredicate;->iPredicate:Lorg/apache/commons/collections4/Predicate;

    .line 60
    return-void
.end method

.method public static nullIsTruePredicate(Lorg/apache/commons/collections4/Predicate;)Lorg/apache/commons/collections4/Predicate;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/commons/collections4/Predicate<",
            "-TT;>;)",
            "Lorg/apache/commons/collections4/Predicate<",
            "TT;>;"
        }
    .end annotation

    .line 45
    .local p0, "predicate":Lorg/apache/commons/collections4/Predicate;, "Lorg/apache/commons/collections4/Predicate<-TT;>;"
    if-eqz p0, :cond_0

    .line 48
    new-instance v0, Lorg/apache/commons/collections4/functors/NullIsTruePredicate;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections4/functors/NullIsTruePredicate;-><init>(Lorg/apache/commons/collections4/Predicate;)V

    return-object v0

    .line 46
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Predicate must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public evaluate(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 71
    .local p0, "this":Lorg/apache/commons/collections4/functors/NullIsTruePredicate;, "Lorg/apache/commons/collections4/functors/NullIsTruePredicate<TT;>;"
    .local p1, "object":Ljava/lang/Object;, "TT;"
    if-nez p1, :cond_0

    .line 72
    const/4 v0, 0x1

    return v0

    .line 74
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections4/functors/NullIsTruePredicate;->iPredicate:Lorg/apache/commons/collections4/Predicate;

    invoke-interface {v0, p1}, Lorg/apache/commons/collections4/Predicate;->evaluate(Ljava/lang/Object;)Z

    move-result v0

    return v0
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

    .line 86
    .local p0, "this":Lorg/apache/commons/collections4/functors/NullIsTruePredicate;, "Lorg/apache/commons/collections4/functors/NullIsTruePredicate<TT;>;"
    const/4 v0, 0x1

    new-array v0, v0, [Lorg/apache/commons/collections4/Predicate;

    iget-object v1, p0, Lorg/apache/commons/collections4/functors/NullIsTruePredicate;->iPredicate:Lorg/apache/commons/collections4/Predicate;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    return-object v0
.end method
