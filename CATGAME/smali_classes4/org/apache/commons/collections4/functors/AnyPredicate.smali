.class public final Lorg/apache/commons/collections4/functors/AnyPredicate;
.super Lorg/apache/commons/collections4/functors/AbstractQuantifierPredicate;
.source "AnyPredicate.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/commons/collections4/functors/AbstractQuantifierPredicate<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x671ca93522adbaf6L


# direct methods
.method public varargs constructor <init>([Lorg/apache/commons/collections4/Predicate;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lorg/apache/commons/collections4/Predicate<",
            "-TT;>;)V"
        }
    .end annotation

    .line 94
    .local p0, "this":Lorg/apache/commons/collections4/functors/AnyPredicate;, "Lorg/apache/commons/collections4/functors/AnyPredicate<TT;>;"
    .local p1, "predicates":[Lorg/apache/commons/collections4/Predicate;, "[Lorg/apache/commons/collections4/Predicate<-TT;>;"
    invoke-direct {p0, p1}, Lorg/apache/commons/collections4/functors/AbstractQuantifierPredicate;-><init>([Lorg/apache/commons/collections4/Predicate;)V

    .line 95
    return-void
.end method

.method public static anyPredicate(Ljava/util/Collection;)Lorg/apache/commons/collections4/Predicate;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "+",
            "Lorg/apache/commons/collections4/Predicate<",
            "-TT;>;>;)",
            "Lorg/apache/commons/collections4/Predicate<",
            "TT;>;"
        }
    .end annotation

    .line 77
    .local p0, "predicates":Ljava/util/Collection;, "Ljava/util/Collection<+Lorg/apache/commons/collections4/Predicate<-TT;>;>;"
    invoke-static {p0}, Lorg/apache/commons/collections4/functors/FunctorUtils;->validate(Ljava/util/Collection;)[Lorg/apache/commons/collections4/Predicate;

    move-result-object v0

    .line 78
    .local v0, "preds":[Lorg/apache/commons/collections4/Predicate;, "[Lorg/apache/commons/collections4/Predicate<-TT;>;"
    array-length v1, v0

    if-nez v1, :cond_0

    .line 79
    invoke-static {}, Lorg/apache/commons/collections4/functors/FalsePredicate;->falsePredicate()Lorg/apache/commons/collections4/Predicate;

    move-result-object v1

    return-object v1

    .line 81
    :cond_0
    array-length v1, v0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 82
    const/4 v1, 0x0

    aget-object v1, v0, v1

    return-object v1

    .line 84
    :cond_1
    new-instance v1, Lorg/apache/commons/collections4/functors/AnyPredicate;

    invoke-direct {v1, v0}, Lorg/apache/commons/collections4/functors/AnyPredicate;-><init>([Lorg/apache/commons/collections4/Predicate;)V

    return-object v1
.end method

.method public static varargs anyPredicate([Lorg/apache/commons/collections4/Predicate;)Lorg/apache/commons/collections4/Predicate;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([",
            "Lorg/apache/commons/collections4/Predicate<",
            "-TT;>;)",
            "Lorg/apache/commons/collections4/Predicate<",
            "TT;>;"
        }
    .end annotation

    .line 53
    .local p0, "predicates":[Lorg/apache/commons/collections4/Predicate;, "[Lorg/apache/commons/collections4/Predicate<-TT;>;"
    invoke-static {p0}, Lorg/apache/commons/collections4/functors/FunctorUtils;->validate([Lorg/apache/commons/collections4/Predicate;)V

    .line 54
    array-length v0, p0

    if-nez v0, :cond_0

    .line 55
    invoke-static {}, Lorg/apache/commons/collections4/functors/FalsePredicate;->falsePredicate()Lorg/apache/commons/collections4/Predicate;

    move-result-object v0

    return-object v0

    .line 57
    :cond_0
    array-length v0, p0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 58
    const/4 v0, 0x0

    aget-object v0, p0, v0

    return-object v0

    .line 60
    :cond_1
    new-instance v0, Lorg/apache/commons/collections4/functors/AnyPredicate;

    invoke-static {p0}, Lorg/apache/commons/collections4/functors/FunctorUtils;->copy([Lorg/apache/commons/collections4/Predicate;)[Lorg/apache/commons/collections4/Predicate;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/collections4/functors/AnyPredicate;-><init>([Lorg/apache/commons/collections4/Predicate;)V

    return-object v0
.end method


# virtual methods
.method public evaluate(Ljava/lang/Object;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 105
    .local p0, "this":Lorg/apache/commons/collections4/functors/AnyPredicate;, "Lorg/apache/commons/collections4/functors/AnyPredicate<TT;>;"
    .local p1, "object":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lorg/apache/commons/collections4/functors/AnyPredicate;->iPredicates:[Lorg/apache/commons/collections4/Predicate;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 106
    .local v4, "iPredicate":Lorg/apache/commons/collections4/Predicate;, "Lorg/apache/commons/collections4/Predicate<-TT;>;"
    invoke-interface {v4, p1}, Lorg/apache/commons/collections4/Predicate;->evaluate(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 107
    const/4 v0, 0x1

    return v0

    .line 105
    .end local v4    # "iPredicate":Lorg/apache/commons/collections4/Predicate;, "Lorg/apache/commons/collections4/Predicate<-TT;>;"
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 110
    :cond_1
    return v2
.end method
