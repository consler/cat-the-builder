.class public final Lorg/apache/commons/collections4/functors/NotPredicate;
.super Ljava/lang/Object;
.source "NotPredicate.java"

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
.field private static final serialVersionUID:J = -0x24d70ba82f87fe8aL


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
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lorg/apache/commons/collections4/functors/NotPredicate;->iPredicate:Lorg/apache/commons/collections4/Predicate;

    return-void
.end method

.method public static notPredicate(Lorg/apache/commons/collections4/Predicate;)Lorg/apache/commons/collections4/Predicate;
    .locals 1
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

    if-eqz p0, :cond_0

    .line 48
    new-instance v0, Lorg/apache/commons/collections4/functors/NotPredicate;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections4/functors/NotPredicate;-><init>(Lorg/apache/commons/collections4/Predicate;)V

    return-object v0

    .line 46
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "Predicate must not be null"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public evaluate(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 70
    iget-object v0, p0, Lorg/apache/commons/collections4/functors/NotPredicate;->iPredicate:Lorg/apache/commons/collections4/Predicate;

    invoke-interface {v0, p1}, Lorg/apache/commons/collections4/Predicate;->evaluate(Ljava/lang/Object;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
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

    const/4 v0, 0x1

    new-array v0, v0, [Lorg/apache/commons/collections4/Predicate;

    const/4 v1, 0x0

    .line 82
    iget-object v2, p0, Lorg/apache/commons/collections4/functors/NotPredicate;->iPredicate:Lorg/apache/commons/collections4/Predicate;

    aput-object v2, v0, v1

    return-object v0
.end method
