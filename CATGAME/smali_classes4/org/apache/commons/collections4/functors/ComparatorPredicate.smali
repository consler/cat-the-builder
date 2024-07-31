.class public Lorg/apache/commons/collections4/functors/ComparatorPredicate;
.super Ljava/lang/Object;
.source "ComparatorPredicate.java"

# interfaces
.implements Lorg/apache/commons/collections4/Predicate;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/collections4/functors/ComparatorPredicate$Criterion;
    }
.end annotation

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
.field private static final serialVersionUID:J = -0x19db72edcc0d6457L


# instance fields
.field private final comparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final criterion:Lorg/apache/commons/collections4/functors/ComparatorPredicate$Criterion;

.field private final object:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/util/Comparator;Lorg/apache/commons/collections4/functors/ComparatorPredicate$Criterion;)V
    .locals 0
    .param p3, "criterion"    # Lorg/apache/commons/collections4/functors/ComparatorPredicate$Criterion;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/util/Comparator<",
            "TT;>;",
            "Lorg/apache/commons/collections4/functors/ComparatorPredicate$Criterion;",
            ")V"
        }
    .end annotation

    .line 140
    .local p0, "this":Lorg/apache/commons/collections4/functors/ComparatorPredicate;, "Lorg/apache/commons/collections4/functors/ComparatorPredicate<TT;>;"
    .local p1, "object":Ljava/lang/Object;, "TT;"
    .local p2, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 141
    iput-object p1, p0, Lorg/apache/commons/collections4/functors/ComparatorPredicate;->object:Ljava/lang/Object;

    .line 142
    iput-object p2, p0, Lorg/apache/commons/collections4/functors/ComparatorPredicate;->comparator:Ljava/util/Comparator;

    .line 143
    iput-object p3, p0, Lorg/apache/commons/collections4/functors/ComparatorPredicate;->criterion:Lorg/apache/commons/collections4/functors/ComparatorPredicate$Criterion;

    .line 144
    return-void
.end method

.method public static comparatorPredicate(Ljava/lang/Object;Ljava/util/Comparator;)Lorg/apache/commons/collections4/Predicate;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/util/Comparator<",
            "TT;>;)",
            "Lorg/apache/commons/collections4/Predicate<",
            "TT;>;"
        }
    .end annotation

    .line 107
    .local p0, "object":Ljava/lang/Object;, "TT;"
    .local p1, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<TT;>;"
    sget-object v0, Lorg/apache/commons/collections4/functors/ComparatorPredicate$Criterion;->EQUAL:Lorg/apache/commons/collections4/functors/ComparatorPredicate$Criterion;

    invoke-static {p0, p1, v0}, Lorg/apache/commons/collections4/functors/ComparatorPredicate;->comparatorPredicate(Ljava/lang/Object;Ljava/util/Comparator;Lorg/apache/commons/collections4/functors/ComparatorPredicate$Criterion;)Lorg/apache/commons/collections4/Predicate;

    move-result-object v0

    return-object v0
.end method

.method public static comparatorPredicate(Ljava/lang/Object;Ljava/util/Comparator;Lorg/apache/commons/collections4/functors/ComparatorPredicate$Criterion;)Lorg/apache/commons/collections4/Predicate;
    .locals 2
    .param p2, "criterion"    # Lorg/apache/commons/collections4/functors/ComparatorPredicate$Criterion;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/util/Comparator<",
            "TT;>;",
            "Lorg/apache/commons/collections4/functors/ComparatorPredicate$Criterion;",
            ")",
            "Lorg/apache/commons/collections4/Predicate<",
            "TT;>;"
        }
    .end annotation

    .line 122
    .local p0, "object":Ljava/lang/Object;, "TT;"
    .local p1, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<TT;>;"
    if-eqz p1, :cond_1

    .line 125
    if-eqz p2, :cond_0

    .line 128
    new-instance v0, Lorg/apache/commons/collections4/functors/ComparatorPredicate;

    invoke-direct {v0, p0, p1, p2}, Lorg/apache/commons/collections4/functors/ComparatorPredicate;-><init>(Ljava/lang/Object;Ljava/util/Comparator;Lorg/apache/commons/collections4/functors/ComparatorPredicate$Criterion;)V

    return-object v0

    .line 126
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Criterion must not be null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 123
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Comparator must not be null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public evaluate(Ljava/lang/Object;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 167
    .local p0, "this":Lorg/apache/commons/collections4/functors/ComparatorPredicate;, "Lorg/apache/commons/collections4/functors/ComparatorPredicate<TT;>;"
    .local p1, "target":Ljava/lang/Object;, "TT;"
    const/4 v0, 0x0

    .line 168
    .local v0, "result":Z
    iget-object v1, p0, Lorg/apache/commons/collections4/functors/ComparatorPredicate;->comparator:Ljava/util/Comparator;

    iget-object v2, p0, Lorg/apache/commons/collections4/functors/ComparatorPredicate;->object:Ljava/lang/Object;

    invoke-interface {v1, v2, p1}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    .line 169
    .local v1, "comparison":I
    sget-object v2, Lorg/apache/commons/collections4/functors/ComparatorPredicate$1;->$SwitchMap$org$apache$commons$collections4$functors$ComparatorPredicate$Criterion:[I

    iget-object v3, p0, Lorg/apache/commons/collections4/functors/ComparatorPredicate;->criterion:Lorg/apache/commons/collections4/functors/ComparatorPredicate$Criterion;

    invoke-virtual {v3}, Lorg/apache/commons/collections4/functors/ComparatorPredicate$Criterion;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v2, v4, :cond_8

    const/4 v5, 0x2

    if-eq v2, v5, :cond_6

    const/4 v5, 0x3

    if-eq v2, v5, :cond_4

    const/4 v5, 0x4

    if-eq v2, v5, :cond_2

    const/4 v5, 0x5

    if-ne v2, v5, :cond_1

    .line 183
    if-gtz v1, :cond_0

    move v3, v4

    :cond_0
    move v0, v3

    .line 184
    goto :goto_0

    .line 186
    :cond_1
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The current criterion \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lorg/apache/commons/collections4/functors/ComparatorPredicate;->criterion:Lorg/apache/commons/collections4/functors/ComparatorPredicate$Criterion;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "\' is invalid."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 180
    :cond_2
    if-ltz v1, :cond_3

    move v3, v4

    :cond_3
    move v0, v3

    .line 181
    goto :goto_0

    .line 177
    :cond_4
    if-gez v1, :cond_5

    move v3, v4

    :cond_5
    move v0, v3

    .line 178
    goto :goto_0

    .line 174
    :cond_6
    if-lez v1, :cond_7

    move v3, v4

    :cond_7
    move v0, v3

    .line 175
    goto :goto_0

    .line 171
    :cond_8
    if-nez v1, :cond_9

    move v3, v4

    :cond_9
    move v0, v3

    .line 172
    nop

    .line 189
    :goto_0
    return v0
.end method
