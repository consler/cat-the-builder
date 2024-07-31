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
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TE;>;)V"
        }
    .end annotation

    .line 75
    .local p0, "this":Lorg/apache/commons/collections4/iterators/PermutationIterator;, "Lorg/apache/commons/collections4/iterators/PermutationIterator<TE;>;"
    .local p1, "coll":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
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

    .line 82
    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([ZZ)V

    .line 83
    const/4 v0, 0x1

    .line 84
    .local v0, "value":I
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lorg/apache/commons/collections4/iterators/PermutationIterator;->objectMap:Ljava/util/Map;

    .line 85
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 86
    .local v2, "e":Ljava/lang/Object;, "TE;"
    iget-object v3, p0, Lorg/apache/commons/collections4/iterators/PermutationIterator;->objectMap:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    iget-object v3, p0, Lorg/apache/commons/collections4/iterators/PermutationIterator;->keys:[I

    add-int/lit8 v4, v0, -0x1

    aput v0, v3, v4

    .line 88
    nop

    .end local v2    # "e":Ljava/lang/Object;, "TE;"
    add-int/lit8 v0, v0, 0x1

    .line 89
    goto :goto_0

    .line 90
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, p0, Lorg/apache/commons/collections4/iterators/PermutationIterator;->nextPermutation:Ljava/util/List;

    .line 91
    return-void

    .line 77
    .end local v0    # "value":I
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "The collection must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .line 99
    .local p0, "this":Lorg/apache/commons/collections4/iterators/PermutationIterator;, "Lorg/apache/commons/collections4/iterators/PermutationIterator<TE;>;"
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
    .local p0, "this":Lorg/apache/commons/collections4/iterators/PermutationIterator;, "Lorg/apache/commons/collections4/iterators/PermutationIterator<TE;>;"
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
    .local p0, "this":Lorg/apache/commons/collections4/iterators/PermutationIterator;, "Lorg/apache/commons/collections4/iterators/PermutationIterator<TE;>;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/iterators/PermutationIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 114
    const/4 v0, -0x1

    .line 115
    .local v0, "indexOfLargestMobileInteger":I
    const/4 v1, -0x1

    .line 116
    .local v1, "largestKey":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lorg/apache/commons/collections4/iterators/PermutationIterator;->keys:[I

    array-length v4, v3

    const/4 v5, 0x1

    if-ge v2, v4, :cond_3

    .line 117
    iget-object v4, p0, Lorg/apache/commons/collections4/iterators/PermutationIterator;->direction:[Z

    aget-boolean v4, v4, v2

    if-eqz v4, :cond_0

    array-length v4, v3

    sub-int/2addr v4, v5

    if-ge v2, v4, :cond_0

    aget v4, v3, v2

    add-int/lit8 v5, v2, 0x1

    aget v3, v3, v5

    if-gt v4, v3, :cond_1

    :cond_0
    iget-object v3, p0, Lorg/apache/commons/collections4/iterators/PermutationIterator;->direction:[Z

    aget-boolean v3, v3, v2

    if-nez v3, :cond_2

    if-lez v2, :cond_2

    iget-object v3, p0, Lorg/apache/commons/collections4/iterators/PermutationIterator;->keys:[I

    aget v4, v3, v2

    add-int/lit8 v5, v2, -0x1

    aget v3, v3, v5

    if-le v4, v3, :cond_2

    .line 119
    :cond_1
    iget-object v3, p0, Lorg/apache/commons/collections4/iterators/PermutationIterator;->keys:[I

    aget v4, v3, v2

    if-le v4, v1, :cond_2

    .line 120
    aget v1, v3, v2

    .line 121
    move v0, v2

    .line 116
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 125
    .end local v2    # "i":I
    :cond_3
    const/4 v2, -0x1

    if-ne v1, v2, :cond_4

    .line 126
    iget-object v2, p0, Lorg/apache/commons/collections4/iterators/PermutationIterator;->nextPermutation:Ljava/util/List;

    .line 127
    .local v2, "toReturn":Ljava/util/List;, "Ljava/util/List<TE;>;"
    const/4 v3, 0x0

    iput-object v3, p0, Lorg/apache/commons/collections4/iterators/PermutationIterator;->nextPermutation:Ljava/util/List;

    .line 128
    return-object v2

    .line 132
    .end local v2    # "toReturn":Ljava/util/List;, "Ljava/util/List<TE;>;"
    :cond_4
    iget-object v3, p0, Lorg/apache/commons/collections4/iterators/PermutationIterator;->direction:[Z

    aget-boolean v3, v3, v0

    if-eqz v3, :cond_5

    move v2, v5

    .line 133
    .local v2, "offset":I
    :cond_5
    iget-object v3, p0, Lorg/apache/commons/collections4/iterators/PermutationIterator;->keys:[I

    aget v4, v3, v0

    .line 134
    .local v4, "tmpKey":I
    add-int v6, v0, v2

    aget v6, v3, v6

    aput v6, v3, v0

    .line 135
    add-int v6, v0, v2

    aput v4, v3, v6

    .line 136
    iget-object v3, p0, Lorg/apache/commons/collections4/iterators/PermutationIterator;->direction:[Z

    aget-boolean v6, v3, v0

    .line 137
    .local v6, "tmpDirection":Z
    add-int v7, v0, v2

    aget-boolean v7, v3, v7

    aput-boolean v7, v3, v0

    .line 138
    add-int v7, v0, v2

    aput-boolean v6, v3, v7

    .line 141
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 142
    .local v3, "nextP":Ljava/util/List;, "Ljava/util/List<TE;>;"
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    iget-object v8, p0, Lorg/apache/commons/collections4/iterators/PermutationIterator;->keys:[I

    array-length v9, v8

    if-ge v7, v9, :cond_7

    .line 143
    aget v8, v8, v7

    if-le v8, v1, :cond_6

    .line 144
    iget-object v8, p0, Lorg/apache/commons/collections4/iterators/PermutationIterator;->direction:[Z

    aget-boolean v9, v8, v7

    xor-int/2addr v9, v5

    aput-boolean v9, v8, v7

    .line 146
    :cond_6
    iget-object v8, p0, Lorg/apache/commons/collections4/iterators/PermutationIterator;->objectMap:Ljava/util/Map;

    iget-object v9, p0, Lorg/apache/commons/collections4/iterators/PermutationIterator;->keys:[I

    aget v9, v9, v7

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 142
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 148
    .end local v7    # "i":I
    :cond_7
    iget-object v5, p0, Lorg/apache/commons/collections4/iterators/PermutationIterator;->nextPermutation:Ljava/util/List;

    .line 149
    .local v5, "result":Ljava/util/List;, "Ljava/util/List<TE;>;"
    iput-object v3, p0, Lorg/apache/commons/collections4/iterators/PermutationIterator;->nextPermutation:Ljava/util/List;

    .line 150
    return-object v5

    .line 110
    .end local v0    # "indexOfLargestMobileInteger":I
    .end local v1    # "largestKey":I
    .end local v2    # "offset":I
    .end local v3    # "nextP":Ljava/util/List;, "Ljava/util/List<TE;>;"
    .end local v4    # "tmpKey":I
    .end local v5    # "result":Ljava/util/List;, "Ljava/util/List<TE;>;"
    .end local v6    # "tmpDirection":Z
    :cond_8
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public remove()V
    .locals 2

    .line 155
    .local p0, "this":Lorg/apache/commons/collections4/iterators/PermutationIterator;, "Lorg/apache/commons/collections4/iterators/PermutationIterator<TE;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "remove() is not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
