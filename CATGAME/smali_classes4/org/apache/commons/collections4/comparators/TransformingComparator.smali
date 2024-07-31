.class public Lorg/apache/commons/collections4/comparators/TransformingComparator;
.super Ljava/lang/Object;
.source "TransformingComparator.java"

# interfaces
.implements Ljava/util/Comparator;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<I:",
        "Ljava/lang/Object;",
        "O:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "TI;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x2ff984f02bb108ccL


# instance fields
.field private final decorated:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "TO;>;"
        }
    .end annotation
.end field

.field private final transformer:Lorg/apache/commons/collections4/Transformer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/collections4/Transformer<",
            "-TI;+TO;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/apache/commons/collections4/Transformer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/Transformer<",
            "-TI;+TO;>;)V"
        }
    .end annotation

    .line 59
    .local p0, "this":Lorg/apache/commons/collections4/comparators/TransformingComparator;, "Lorg/apache/commons/collections4/comparators/TransformingComparator<TI;TO;>;"
    .local p1, "transformer":Lorg/apache/commons/collections4/Transformer;, "Lorg/apache/commons/collections4/Transformer<-TI;+TO;>;"
    sget-object v0, Lorg/apache/commons/collections4/ComparatorUtils;->NATURAL_COMPARATOR:Ljava/util/Comparator;

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/collections4/comparators/TransformingComparator;-><init>(Lorg/apache/commons/collections4/Transformer;Ljava/util/Comparator;)V

    .line 60
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/collections4/Transformer;Ljava/util/Comparator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/Transformer<",
            "-TI;+TO;>;",
            "Ljava/util/Comparator<",
            "TO;>;)V"
        }
    .end annotation

    .line 69
    .local p0, "this":Lorg/apache/commons/collections4/comparators/TransformingComparator;, "Lorg/apache/commons/collections4/comparators/TransformingComparator<TI;TO;>;"
    .local p1, "transformer":Lorg/apache/commons/collections4/Transformer;, "Lorg/apache/commons/collections4/Transformer<-TI;+TO;>;"
    .local p2, "decorated":Ljava/util/Comparator;, "Ljava/util/Comparator<TO;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-object p2, p0, Lorg/apache/commons/collections4/comparators/TransformingComparator;->decorated:Ljava/util/Comparator;

    .line 71
    iput-object p1, p0, Lorg/apache/commons/collections4/comparators/TransformingComparator;->transformer:Lorg/apache/commons/collections4/Transformer;

    .line 72
    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TI;TI;)I"
        }
    .end annotation

    .line 84
    .local p0, "this":Lorg/apache/commons/collections4/comparators/TransformingComparator;, "Lorg/apache/commons/collections4/comparators/TransformingComparator<TI;TO;>;"
    .local p1, "obj1":Ljava/lang/Object;, "TI;"
    .local p2, "obj2":Ljava/lang/Object;, "TI;"
    iget-object v0, p0, Lorg/apache/commons/collections4/comparators/TransformingComparator;->transformer:Lorg/apache/commons/collections4/Transformer;

    invoke-interface {v0, p1}, Lorg/apache/commons/collections4/Transformer;->transform(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 85
    .local v0, "value1":Ljava/lang/Object;, "TO;"
    iget-object v1, p0, Lorg/apache/commons/collections4/comparators/TransformingComparator;->transformer:Lorg/apache/commons/collections4/Transformer;

    invoke-interface {v1, p2}, Lorg/apache/commons/collections4/Transformer;->transform(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 86
    .local v1, "value2":Ljava/lang/Object;, "TO;"
    iget-object v2, p0, Lorg/apache/commons/collections4/comparators/TransformingComparator;->decorated:Ljava/util/Comparator;

    invoke-interface {v2, v0, v1}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    return v2
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "object"    # Ljava/lang/Object;

    .line 118
    .local p0, "this":Lorg/apache/commons/collections4/comparators/TransformingComparator;, "Lorg/apache/commons/collections4/comparators/TransformingComparator<TI;TO;>;"
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 119
    return v0

    .line 121
    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    .line 122
    return v1

    .line 124
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 125
    move-object v2, p1

    check-cast v2, Lorg/apache/commons/collections4/comparators/TransformingComparator;

    .line 126
    .local v2, "comp":Lorg/apache/commons/collections4/comparators/TransformingComparator;, "Lorg/apache/commons/collections4/comparators/TransformingComparator<**>;"
    iget-object v3, p0, Lorg/apache/commons/collections4/comparators/TransformingComparator;->decorated:Ljava/util/Comparator;

    if-nez v3, :cond_2

    iget-object v3, v2, Lorg/apache/commons/collections4/comparators/TransformingComparator;->decorated:Ljava/util/Comparator;

    if-nez v3, :cond_4

    goto :goto_0

    :cond_2
    iget-object v4, v2, Lorg/apache/commons/collections4/comparators/TransformingComparator;->decorated:Ljava/util/Comparator;

    invoke-interface {v3, v4}, Ljava/util/Comparator;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    :goto_0
    iget-object v3, p0, Lorg/apache/commons/collections4/comparators/TransformingComparator;->transformer:Lorg/apache/commons/collections4/Transformer;

    if-nez v3, :cond_3

    iget-object v3, v2, Lorg/apache/commons/collections4/comparators/TransformingComparator;->transformer:Lorg/apache/commons/collections4/Transformer;

    if-nez v3, :cond_4

    goto :goto_1

    :cond_3
    iget-object v4, v2, Lorg/apache/commons/collections4/comparators/TransformingComparator;->transformer:Lorg/apache/commons/collections4/Transformer;

    .line 127
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    :goto_1
    goto :goto_2

    :cond_4
    move v0, v1

    .line 126
    :goto_2
    return v0

    .line 129
    .end local v2    # "comp":Lorg/apache/commons/collections4/comparators/TransformingComparator;, "Lorg/apache/commons/collections4/comparators/TransformingComparator<**>;"
    :cond_5
    return v1
.end method

.method public hashCode()I
    .locals 4

    .line 98
    .local p0, "this":Lorg/apache/commons/collections4/comparators/TransformingComparator;, "Lorg/apache/commons/collections4/comparators/TransformingComparator<TI;TO;>;"
    const/16 v0, 0x11

    .line 99
    .local v0, "total":I
    mul-int/lit8 v1, v0, 0x25

    iget-object v2, p0, Lorg/apache/commons/collections4/comparators/TransformingComparator;->decorated:Ljava/util/Comparator;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_0
    add-int/2addr v1, v2

    .line 100
    .end local v0    # "total":I
    .local v1, "total":I
    mul-int/lit8 v0, v1, 0x25

    iget-object v2, p0, Lorg/apache/commons/collections4/comparators/TransformingComparator;->transformer:Lorg/apache/commons/collections4/Transformer;

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v0, v3

    .line 101
    .end local v1    # "total":I
    .restart local v0    # "total":I
    return v0
.end method
