.class public Lorg/apache/commons/collections/comparators/ComparatorChain;
.super Ljava/lang/Object;
.source "ComparatorChain.java"

# interfaces
.implements Ljava/util/Comparator;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0xa03cc408256595eL


# instance fields
.field protected comparatorChain:Ljava/util/List;

.field protected isLocked:Z

.field protected orderingBits:Ljava/util/BitSet;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 77
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/BitSet;

    invoke-direct {v1}, Ljava/util/BitSet;-><init>()V

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/collections/comparators/ComparatorChain;-><init>(Ljava/util/List;Ljava/util/BitSet;)V

    .line 78
    return-void
.end method

.method public constructor <init>(Ljava/util/Comparator;)V
    .locals 1
    .param p1, "comparator"    # Ljava/util/Comparator;

    .line 87
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/collections/comparators/ComparatorChain;-><init>(Ljava/util/Comparator;Z)V

    .line 88
    return-void
.end method

.method public constructor <init>(Ljava/util/Comparator;Z)V
    .locals 3
    .param p1, "comparator"    # Ljava/util/Comparator;
    .param p2, "reverse"    # Z

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/collections/comparators/ComparatorChain;->comparatorChain:Ljava/util/List;

    .line 65
    iput-object v0, p0, Lorg/apache/commons/collections/comparators/ComparatorChain;->orderingBits:Ljava/util/BitSet;

    .line 67
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/collections/comparators/ComparatorChain;->isLocked:Z

    .line 98
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/apache/commons/collections/comparators/ComparatorChain;->comparatorChain:Ljava/util/List;

    .line 99
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 100
    new-instance v1, Ljava/util/BitSet;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/BitSet;-><init>(I)V

    iput-object v1, p0, Lorg/apache/commons/collections/comparators/ComparatorChain;->orderingBits:Ljava/util/BitSet;

    .line 101
    if-ne p2, v2, :cond_0

    .line 102
    invoke-virtual {v1, v0}, Ljava/util/BitSet;->set(I)V

    .line 104
    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 2
    .param p1, "list"    # Ljava/util/List;

    .line 115
    new-instance v0, Ljava/util/BitSet;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/collections/comparators/ComparatorChain;-><init>(Ljava/util/List;Ljava/util/BitSet;)V

    .line 116
    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ljava/util/BitSet;)V
    .locals 1
    .param p1, "list"    # Ljava/util/List;
    .param p2, "bits"    # Ljava/util/BitSet;

    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/collections/comparators/ComparatorChain;->comparatorChain:Ljava/util/List;

    .line 65
    iput-object v0, p0, Lorg/apache/commons/collections/comparators/ComparatorChain;->orderingBits:Ljava/util/BitSet;

    .line 67
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/collections/comparators/ComparatorChain;->isLocked:Z

    .line 134
    iput-object p1, p0, Lorg/apache/commons/collections/comparators/ComparatorChain;->comparatorChain:Ljava/util/List;

    .line 135
    iput-object p2, p0, Lorg/apache/commons/collections/comparators/ComparatorChain;->orderingBits:Ljava/util/BitSet;

    .line 136
    return-void
.end method

.method private checkChainIntegrity()V
    .locals 2

    .line 250
    iget-object v0, p0, Lorg/apache/commons/collections/comparators/ComparatorChain;->comparatorChain:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 253
    return-void

    .line 251
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "ComparatorChains must contain at least one Comparator"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private checkLocked()V
    .locals 2

    .line 244
    iget-boolean v0, p0, Lorg/apache/commons/collections/comparators/ComparatorChain;->isLocked:Z

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 247
    return-void

    .line 245
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Comparator ordering cannot be changed after the first comparison is performed"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public addComparator(Ljava/util/Comparator;)V
    .locals 1
    .param p1, "comparator"    # Ljava/util/Comparator;

    .line 146
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/collections/comparators/ComparatorChain;->addComparator(Ljava/util/Comparator;Z)V

    .line 147
    return-void
.end method

.method public addComparator(Ljava/util/Comparator;Z)V
    .locals 3
    .param p1, "comparator"    # Ljava/util/Comparator;
    .param p2, "reverse"    # Z

    .line 157
    invoke-direct {p0}, Lorg/apache/commons/collections/comparators/ComparatorChain;->checkLocked()V

    .line 159
    iget-object v0, p0, Lorg/apache/commons/collections/comparators/ComparatorChain;->comparatorChain:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 160
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 161
    iget-object v1, p0, Lorg/apache/commons/collections/comparators/ComparatorChain;->orderingBits:Ljava/util/BitSet;

    iget-object v2, p0, Lorg/apache/commons/collections/comparators/ComparatorChain;->comparatorChain:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v0

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 163
    :cond_0
    return-void
.end method

.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 6
    .param p1, "o1"    # Ljava/lang/Object;
    .param p2, "o2"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .line 268
    iget-boolean v0, p0, Lorg/apache/commons/collections/comparators/ComparatorChain;->isLocked:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 269
    invoke-direct {p0}, Lorg/apache/commons/collections/comparators/ComparatorChain;->checkChainIntegrity()V

    .line 270
    iput-boolean v1, p0, Lorg/apache/commons/collections/comparators/ComparatorChain;->isLocked:Z

    .line 274
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections/comparators/ComparatorChain;->comparatorChain:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 275
    .local v0, "comparators":Ljava/util/Iterator;
    const/4 v2, 0x0

    .local v2, "comparatorIndex":I
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 277
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Comparator;

    .line 278
    .local v3, "comparator":Ljava/util/Comparator;
    invoke-interface {v3, p1, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v4

    .line 279
    .local v4, "retval":I
    if-eqz v4, :cond_3

    .line 281
    iget-object v5, p0, Lorg/apache/commons/collections/comparators/ComparatorChain;->orderingBits:Ljava/util/BitSet;

    invoke-virtual {v5, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v5

    if-ne v5, v1, :cond_2

    .line 282
    const/high16 v1, -0x80000000

    if-ne v1, v4, :cond_1

    .line 283
    const v4, 0x7fffffff

    goto :goto_1

    .line 285
    :cond_1
    mul-int/lit8 v4, v4, -0x1

    .line 289
    :cond_2
    :goto_1
    return v4

    .line 275
    .end local v3    # "comparator":Ljava/util/Comparator;
    .end local v4    # "retval":I
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 295
    .end local v2    # "comparatorIndex":I
    :cond_4
    const/4 v1, 0x0

    return v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "object"    # Ljava/lang/Object;

    .line 334
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 335
    return v0

    .line 336
    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    .line 337
    return v1

    .line 338
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 339
    move-object v2, p1

    check-cast v2, Lorg/apache/commons/collections/comparators/ComparatorChain;

    .line 340
    .local v2, "chain":Lorg/apache/commons/collections/comparators/ComparatorChain;
    iget-object v3, p0, Lorg/apache/commons/collections/comparators/ComparatorChain;->orderingBits:Ljava/util/BitSet;

    if-nez v3, :cond_2

    iget-object v3, v2, Lorg/apache/commons/collections/comparators/ComparatorChain;->orderingBits:Ljava/util/BitSet;

    if-nez v3, :cond_4

    goto :goto_0

    :cond_2
    iget-object v4, v2, Lorg/apache/commons/collections/comparators/ComparatorChain;->orderingBits:Ljava/util/BitSet;

    invoke-virtual {v3, v4}, Ljava/util/BitSet;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    :goto_0
    iget-object v3, p0, Lorg/apache/commons/collections/comparators/ComparatorChain;->comparatorChain:Ljava/util/List;

    if-nez v3, :cond_3

    iget-object v3, v2, Lorg/apache/commons/collections/comparators/ComparatorChain;->comparatorChain:Ljava/util/List;

    if-nez v3, :cond_4

    goto :goto_1

    :cond_3
    iget-object v4, v2, Lorg/apache/commons/collections/comparators/ComparatorChain;->comparatorChain:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    :goto_1
    goto :goto_2

    :cond_4
    move v0, v1

    :goto_2
    return v0

    .line 343
    .end local v2    # "chain":Lorg/apache/commons/collections/comparators/ComparatorChain;
    :cond_5
    return v1
.end method

.method public hashCode()I
    .locals 2

    .line 307
    const/4 v0, 0x0

    .line 308
    .local v0, "hash":I
    iget-object v1, p0, Lorg/apache/commons/collections/comparators/ComparatorChain;->comparatorChain:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 309
    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    .line 311
    :cond_0
    iget-object v1, p0, Lorg/apache/commons/collections/comparators/ComparatorChain;->orderingBits:Ljava/util/BitSet;

    if-eqz v1, :cond_1

    .line 312
    invoke-virtual {v1}, Ljava/util/BitSet;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    .line 314
    :cond_1
    return v0
.end method

.method public isLocked()Z
    .locals 1

    .line 239
    iget-boolean v0, p0, Lorg/apache/commons/collections/comparators/ComparatorChain;->isLocked:Z

    return v0
.end method

.method public setComparator(ILjava/util/Comparator;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "comparator"    # Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IndexOutOfBoundsException;
        }
    .end annotation

    .line 176
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/commons/collections/comparators/ComparatorChain;->setComparator(ILjava/util/Comparator;Z)V

    .line 177
    return-void
.end method

.method public setComparator(ILjava/util/Comparator;Z)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "comparator"    # Ljava/util/Comparator;
    .param p3, "reverse"    # Z

    .line 188
    invoke-direct {p0}, Lorg/apache/commons/collections/comparators/ComparatorChain;->checkLocked()V

    .line 190
    iget-object v0, p0, Lorg/apache/commons/collections/comparators/ComparatorChain;->comparatorChain:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 191
    const/4 v0, 0x1

    if-ne p3, v0, :cond_0

    .line 192
    iget-object v0, p0, Lorg/apache/commons/collections/comparators/ComparatorChain;->orderingBits:Ljava/util/BitSet;

    invoke-virtual {v0, p1}, Ljava/util/BitSet;->set(I)V

    goto :goto_0

    .line 194
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections/comparators/ComparatorChain;->orderingBits:Ljava/util/BitSet;

    invoke-virtual {v0, p1}, Ljava/util/BitSet;->clear(I)V

    .line 196
    :goto_0
    return-void
.end method

.method public setForwardSort(I)V
    .locals 1
    .param p1, "index"    # I

    .line 206
    invoke-direct {p0}, Lorg/apache/commons/collections/comparators/ComparatorChain;->checkLocked()V

    .line 207
    iget-object v0, p0, Lorg/apache/commons/collections/comparators/ComparatorChain;->orderingBits:Ljava/util/BitSet;

    invoke-virtual {v0, p1}, Ljava/util/BitSet;->clear(I)V

    .line 208
    return-void
.end method

.method public setReverseSort(I)V
    .locals 1
    .param p1, "index"    # I

    .line 217
    invoke-direct {p0}, Lorg/apache/commons/collections/comparators/ComparatorChain;->checkLocked()V

    .line 218
    iget-object v0, p0, Lorg/apache/commons/collections/comparators/ComparatorChain;->orderingBits:Ljava/util/BitSet;

    invoke-virtual {v0, p1}, Ljava/util/BitSet;->set(I)V

    .line 219
    return-void
.end method

.method public size()I
    .locals 1

    .line 227
    iget-object v0, p0, Lorg/apache/commons/collections/comparators/ComparatorChain;->comparatorChain:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
