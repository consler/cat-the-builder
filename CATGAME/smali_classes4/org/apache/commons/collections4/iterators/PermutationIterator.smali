.class public Lorg/apache/commons/collections4/iterators/PermutationIterator;
.super Ljava/lang/Object;
.source "PermutationIterator.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Ljava/util/List<",
        "TE;>;>;"
    }
.end annotation


# instance fields
.field private final direction:[Z

.field private final keys:[I

.field private nextPermutation:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TE;>;"
        }
    .end annotation
.end field

.field private final objectMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Collection;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TE;>;)V"
        }
    .end annotation

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1

    .line 80
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/apache/commons/collections4/iterators/PermutationIterator;->keys:[I

    .line 81
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    new-array v0, v0, [Z

    iput-object v0, p0, Lorg/apache/commons/collections4/iterators/PermutationIterator;->direction:[Z

    const/4 v1, 0x0

    .line 82
    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([ZZ)V

    .line 84
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/collections4/iterators/PermutationIterator;->objectMap:Ljava/util/Map;

    .line 85
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x1

    move v2, v1

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 86
    iget-object v4, p0, Lorg/apache/commons/collections4/iterators/PermutationIterator;->objectMap:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    iget-object v3, p0, Lorg/apache/commons/collections4/iterators/PermutationIterator;->keys:[I

    add-int/lit8 v4, v2, -0x1

    aput v2, v3, v4

    add-int/2addr v2, v1

    goto :goto_0

    .line 90
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lorg/apache/commons/collections4/iterators/PermutationIterator;->nextPermutation:Ljava/util/List;

    return-void

    .line 77
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "The collection must not be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .line 99
    iget-object v0, p0, Lorg/apache/commons/collections4/iterators/PermutationIterator;->nextPermutation:Ljava/util/List;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 43
    invoke-virtual {p0}, Lorg/apache/commons/collections4/iterators/PermutationIterator;->next()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TE;>;"
        }
    .end annotation

    .line 109
    invoke-virtual {p0}, Lorg/apache/commons/collections4/iterators/PermutationIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    const/4 v1, -0x1

    move v2, v0

    move v3, v1

    move v4, v3

    .line 116
    :goto_0
    iget-object v5, p0, Lorg/apache/commons/collections4/iterators/PermutationIterator;->keys:[I

    array-length v6, v5

    const/4 v7, 0x1

    if-ge v2, v6, :cond_3

    .line 117
    iget-object v6, p0, Lorg/apache/commons/collections4/iterators/PermutationIterator;->direction:[Z

    aget-boolean v6, v6, v2

    if-eqz v6, :cond_0

    array-length v8, v5

    sub-int/2addr v8, v7

    if-ge v2, v8, :cond_0

    aget v7, v5, v2

    add-int/lit8 v8, v2, 0x1

    aget v8, v5, v8

    if-gt v7, v8, :cond_1

    :cond_0
    if-nez v6, :cond_2

    if-lez v2, :cond_2

    aget v6, v5, v2

    add-int/lit8 v7, v2, -0x1

    aget v7, v5, v7

    if-le v6, v7, :cond_2

    .line 119
    :cond_1
    aget v5, v5, v2

    if-le v5, v3, :cond_2

    move v4, v2

    move v3, v5

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    if-ne v3, v1, :cond_4

    .line 126
    iget-object v0, p0, Lorg/apache/commons/collections4/iterators/PermutationIterator;->nextPermutation:Ljava/util/List;

    const/4 v1, 0x0

    .line 127
    iput-object v1, p0, Lorg/apache/commons/collections4/iterators/PermutationIterator;->nextPermutation:Ljava/util/List;

    return-object v0

    .line 132
    :cond_4
    iget-object v2, p0, Lorg/apache/commons/collections4/iterators/PermutationIterator;->direction:[Z

    aget-boolean v6, v2, v4

    if-eqz v6, :cond_5

    move v1, v7

    .line 133
    :cond_5
    aget v8, v5, v4

    add-int/2addr v1, v4

    .line 134
    aget v9, v5, v1

    aput v9, v5, v4

    .line 135
    aput v8, v5, v1

    .line 137
    aget-boolean v5, v2, v1

    aput-boolean v5, v2, v4

    .line 138
    aput-boolean v6, v2, v1

    .line 141
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 142
    :goto_1
    iget-object v2, p0, Lorg/apache/commons/collections4/iterators/PermutationIterator;->keys:[I

    array-length v4, v2

    if-ge v0, v4, :cond_7

    .line 143
    aget v2, v2, v0

    if-le v2, v3, :cond_6

    .line 144
    iget-object v4, p0, Lorg/apache/commons/collections4/iterators/PermutationIterator;->direction:[Z

    aget-boolean v5, v4, v0

    xor-int/2addr v5, v7

    aput-boolean v5, v4, v0

    .line 146
    :cond_6
    iget-object v4, p0, Lorg/apache/commons/collections4/iterators/PermutationIterator;->objectMap:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 148
    :cond_7
    iget-object v0, p0, Lorg/apache/commons/collections4/iterators/PermutationIterator;->nextPermutation:Ljava/util/List;

    .line 149
    iput-object v1, p0, Lorg/apache/commons/collections4/iterators/PermutationIterator;->nextPermutation:Ljava/util/List;

    return-object v0

    .line 110
    :cond_8
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public remove()V
    .locals 2

    .line 155
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "remove() is not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
