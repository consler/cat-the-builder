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

    return-void
.end method

.method public constructor <init>(Ljava/util/Comparator;)V
    .locals 1

    const/4 v0, 0x0

    .line 87
    invoke-direct {p0, p1, v0}, Lorg/apache/commons/collections/comparators/ComparatorChain;-><init>(Ljava/util/Comparator;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Comparator;Z)V
    .locals 2

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 63
    iput-object v0, p0, Lorg/apache/commons/collections/comparators/ComparatorChain;->comparatorChain:Ljava/util/List;

    .line 65
    iput-object v0, p0, Lorg/apache/commons/collections/comparators/ComparatorChain;->orderingBits:Ljava/util/BitSet;

    const/4 v0, 0x0

    .line 67
    iput-boolean v0, p0, Lorg/apache/commons/collections/comparators/ComparatorChain;->isLocked:Z

    .line 98
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/apache/commons/collections/comparators/ComparatorChain;->comparatorChain:Ljava/util/List;

    .line 99
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 100
    new-instance p1, Ljava/util/BitSet;

    const/4 v1, 0x1

    invoke-direct {p1, v1}, Ljava/util/BitSet;-><init>(I)V

    iput-object p1, p0, Lorg/apache/commons/collections/comparators/ComparatorChain;->orderingBits:Ljava/util/BitSet;

    if-ne p2, v1, :cond_0

    .line 102
    invoke-virtual {p1, v0}, Ljava/util/BitSet;->set(I)V

    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 2

    .line 115
    new-instance v0, Ljava/util/BitSet;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/collections/comparators/ComparatorChain;-><init>(Ljava/util/List;Ljava/util/BitSet;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ljava/util/BitSet;)V
    .locals 1

    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 67
    iput-boolean v0, p0, Lorg/apache/commons/collections/comparators/ComparatorChain;->isLocked:Z

    .line 134
    iput-object p1, p0, Lorg/apache/commons/collections/comparators/ComparatorChain;->comparatorChain:Ljava/util/List;

    .line 135
    iput-object p2, p0, Lorg/apache/commons/collections/comparators/ComparatorChain;->orderingBits:Ljava/util/BitSet;

    return-void
.end method

.method private checkChainIntegrity()V
    .locals 2

    .line 250
    iget-object v0, p0, Lorg/apache/commons/collections/comparators/ComparatorChain;->comparatorChain:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

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

    const/4 v0, 0x0

    .line 146
    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/collections/comparators/ComparatorChain;->addComparator(Ljava/util/Comparator;Z)V

    return-void
.end method

.method public addComparator(Ljava/util/Comparator;Z)V
    .locals 1

    .line 157
    invoke-direct {p0}, Lorg/apache/commons/collections/comparators/ComparatorChain;->checkLocked()V

    .line 159
    iget-object v0, p0, Lorg/apache/commons/collections/comparators/ComparatorChain;->comparatorChain:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    if-ne p2, p1, :cond_0

    .line 161
    iget-object p2, p0, Lorg/apache/commons/collections/comparators/ComparatorChain;->orderingBits:Ljava/util/BitSet;

    iget-object v0, p0, Lorg/apache/commons/collections/comparators/ComparatorChain;->comparatorChain:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, p1

    invoke-virtual {p2, v0}, Ljava/util/BitSet;->set(I)V

    :cond_0
    return-void
.end method

.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 5
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

    const/4 v2, 0x0

    move v3, v2

    .line 275
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 277
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Comparator;

    .line 278
    invoke-interface {v4, p1, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v4

    if-eqz v4, :cond_3

    .line 281
    iget-object p1, p0, Lorg/apache/commons/collections/comparators/ComparatorChain;->orderingBits:Ljava/util/BitSet;

    invoke-virtual {p1, v3}, Ljava/util/BitSet;->get(I)Z

    move-result p1

    if-ne p1, v1, :cond_2

    const/high16 p1, -0x80000000

    if-ne p1, v4, :cond_1

    const v4, 0x7fffffff

    goto :goto_1

    :cond_1
    mul-int/lit8 v4, v4, -0x1

    :cond_2
    :goto_1
    return v4

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    return v2
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

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
    check-cast p1, Lorg/apache/commons/collections/comparators/ComparatorChain;

    .line 340
    iget-object v2, p0, Lorg/apache/commons/collections/comparators/ComparatorChain;->orderingBits:Ljava/util/BitSet;

    if-nez v2, :cond_2

    iget-object v2, p1, Lorg/apache/commons/collections/comparators/ComparatorChain;->orderingBits:Ljava/util/BitSet;

    if-nez v2, :cond_4

    goto :goto_0

    :cond_2
    iget-object v3, p1, Lorg/apache/commons/collections/comparators/ComparatorChain;->orderingBits:Ljava/util/BitSet;

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    :goto_0
    iget-object v2, p0, Lorg/apache/commons/collections/comparators/ComparatorChain;->comparatorChain:Ljava/util/List;

    iget-object p1, p1, Lorg/apache/commons/collections/comparators/ComparatorChain;->comparatorChain:Ljava/util/List;

    if-nez v2, :cond_3

    if-nez p1, :cond_4

    goto :goto_1

    :cond_3
    invoke-interface {v2, p1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_1

    :cond_4
    move v0, v1

    :goto_1
    return v0

    :cond_5
    return v1
.end method

.method public hashCode()I
    .locals 2

    .line 308
    iget-object v0, p0, Lorg/apache/commons/collections/comparators/ComparatorChain;->comparatorChain:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 309
    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    xor-int/2addr v1, v0

    .line 311
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections/comparators/ComparatorChain;->orderingBits:Ljava/util/BitSet;

    if-eqz v0, :cond_1

    .line 312
    invoke-virtual {v0}, Ljava/util/BitSet;->hashCode()I

    move-result v0

    xor-int/2addr v1, v0

    :cond_1
    return v1
.end method

.method public isLocked()Z
    .locals 1

    .line 239
    iget-boolean v0, p0, Lorg/apache/commons/collections/comparators/ComparatorChain;->isLocked:Z

    return v0
.end method

.method public setComparator(ILjava/util/Comparator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IndexOutOfBoundsException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 176
    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/commons/collections/comparators/ComparatorChain;->setComparator(ILjava/util/Comparator;Z)V

    return-void
.end method

.method public setComparator(ILjava/util/Comparator;Z)V
    .locals 1

    .line 188
    invoke-direct {p0}, Lorg/apache/commons/collections/comparators/ComparatorChain;->checkLocked()V

    .line 190
    iget-object v0, p0, Lorg/apache/commons/collections/comparators/ComparatorChain;->comparatorChain:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    const/4 p2, 0x1

    if-ne p3, p2, :cond_0

    .line 192
    iget-object p2, p0, Lorg/apache/commons/collections/comparators/ComparatorChain;->orderingBits:Ljava/util/BitSet;

    invoke-virtual {p2, p1}, Ljava/util/BitSet;->set(I)V

    goto :goto_0

    .line 194
    :cond_0
    iget-object p2, p0, Lorg/apache/commons/collections/comparators/ComparatorChain;->orderingBits:Ljava/util/BitSet;

    invoke-virtual {p2, p1}, Ljava/util/BitSet;->clear(I)V

    :goto_0
    return-void
.end method

.method public setForwardSort(I)V
    .locals 1

    .line 206
    invoke-direct {p0}, Lorg/apache/commons/collections/comparators/ComparatorChain;->checkLocked()V

    .line 207
    iget-object v0, p0, Lorg/apache/commons/collections/comparators/ComparatorChain;->orderingBits:Ljava/util/BitSet;

    invoke-virtual {v0, p1}, Ljava/util/BitSet;->clear(I)V

    return-void
.end method

.method public setReverseSort(I)V
    .locals 1

    .line 217
    invoke-direct {p0}, Lorg/apache/commons/collections/comparators/ComparatorChain;->checkLocked()V

    .line 218
    iget-object v0, p0, Lorg/apache/commons/collections/comparators/ComparatorChain;->orderingBits:Ljava/util/BitSet;

    invoke-virtual {v0, p1}, Ljava/util/BitSet;->set(I)V

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
