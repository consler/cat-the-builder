.class public Lorg/apache/commons/collections4/comparators/ComparatorChain;
.super Ljava/lang/Object;
.source "ComparatorChain.java"

# interfaces
.implements Ljava/util/Comparator;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "TE;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0xa03cc408256595eL


# instance fields
.field private final comparatorChain:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/Comparator<",
            "TE;>;>;"
        }
    .end annotation
.end field

.field private isLocked:Z

.field private orderingBits:Ljava/util/BitSet;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 73
    .local p0, "this":Lorg/apache/commons/collections4/comparators/ComparatorChain;, "Lorg/apache/commons/collections4/comparators/ComparatorChain<TE;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/BitSet;

    invoke-direct {v1}, Ljava/util/BitSet;-><init>()V

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/collections4/comparators/ComparatorChain;-><init>(Ljava/util/List;Ljava/util/BitSet;)V

    .line 74
    return-void
.end method

.method public constructor <init>(Ljava/util/Comparator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "TE;>;)V"
        }
    .end annotation

    .line 83
    .local p0, "this":Lorg/apache/commons/collections4/comparators/ComparatorChain;, "Lorg/apache/commons/collections4/comparators/ComparatorChain<TE;>;"
    .local p1, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<TE;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/collections4/comparators/ComparatorChain;-><init>(Ljava/util/Comparator;Z)V

    .line 84
    return-void
.end method

.method public constructor <init>(Ljava/util/Comparator;Z)V
    .locals 3
    .param p2, "reverse"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "TE;>;Z)V"
        }
    .end annotation

    .line 93
    .local p0, "this":Lorg/apache/commons/collections4/comparators/ComparatorChain;, "Lorg/apache/commons/collections4/comparators/ComparatorChain<TE;>;"
    .local p1, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/collections4/comparators/ComparatorChain;->orderingBits:Ljava/util/BitSet;

    .line 63
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/collections4/comparators/ComparatorChain;->isLocked:Z

    .line 94
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lorg/apache/commons/collections4/comparators/ComparatorChain;->comparatorChain:Ljava/util/List;

    .line 95
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 96
    new-instance v1, Ljava/util/BitSet;

    invoke-direct {v1, v2}, Ljava/util/BitSet;-><init>(I)V

    iput-object v1, p0, Lorg/apache/commons/collections4/comparators/ComparatorChain;->orderingBits:Ljava/util/BitSet;

    .line 97
    if-ne p2, v2, :cond_0

    .line 98
    invoke-virtual {v1, v0}, Ljava/util/BitSet;->set(I)V

    .line 100
    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/Comparator<",
            "TE;>;>;)V"
        }
    .end annotation

    .line 111
    .local p0, "this":Lorg/apache/commons/collections4/comparators/ComparatorChain;, "Lorg/apache/commons/collections4/comparators/ComparatorChain<TE;>;"
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/util/Comparator<TE;>;>;"
    new-instance v0, Ljava/util/BitSet;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/collections4/comparators/ComparatorChain;-><init>(Ljava/util/List;Ljava/util/BitSet;)V

    .line 112
    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ljava/util/BitSet;)V
    .locals 1
    .param p2, "bits"    # Ljava/util/BitSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/Comparator<",
            "TE;>;>;",
            "Ljava/util/BitSet;",
            ")V"
        }
    .end annotation

    .line 129
    .local p0, "this":Lorg/apache/commons/collections4/comparators/ComparatorChain;, "Lorg/apache/commons/collections4/comparators/ComparatorChain<TE;>;"
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/util/Comparator<TE;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/collections4/comparators/ComparatorChain;->orderingBits:Ljava/util/BitSet;

    .line 63
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/collections4/comparators/ComparatorChain;->isLocked:Z

    .line 130
    iput-object p1, p0, Lorg/apache/commons/collections4/comparators/ComparatorChain;->comparatorChain:Ljava/util/List;

    .line 131
    iput-object p2, p0, Lorg/apache/commons/collections4/comparators/ComparatorChain;->orderingBits:Ljava/util/BitSet;

    .line 132
    return-void
.end method

.method private checkChainIntegrity()V
    .locals 2

    .line 254
    .local p0, "this":Lorg/apache/commons/collections4/comparators/ComparatorChain;, "Lorg/apache/commons/collections4/comparators/ComparatorChain<TE;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/comparators/ComparatorChain;->comparatorChain:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 257
    return-void

    .line 255
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "ComparatorChains must contain at least one Comparator"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private checkLocked()V
    .locals 2

    .line 242
    .local p0, "this":Lorg/apache/commons/collections4/comparators/ComparatorChain;, "Lorg/apache/commons/collections4/comparators/ComparatorChain<TE;>;"
    iget-boolean v0, p0, Lorg/apache/commons/collections4/comparators/ComparatorChain;->isLocked:Z

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 246
    return-void

    .line 243
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Comparator ordering cannot be changed after the first comparison is performed"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public addComparator(Ljava/util/Comparator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "TE;>;)V"
        }
    .end annotation

    .line 142
    .local p0, "this":Lorg/apache/commons/collections4/comparators/ComparatorChain;, "Lorg/apache/commons/collections4/comparators/ComparatorChain<TE;>;"
    .local p1, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<TE;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/collections4/comparators/ComparatorChain;->addComparator(Ljava/util/Comparator;Z)V

    .line 143
    return-void
.end method

.method public addComparator(Ljava/util/Comparator;Z)V
    .locals 3
    .param p2, "reverse"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "TE;>;Z)V"
        }
    .end annotation

    .line 153
    .local p0, "this":Lorg/apache/commons/collections4/comparators/ComparatorChain;, "Lorg/apache/commons/collections4/comparators/ComparatorChain<TE;>;"
    .local p1, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<TE;>;"
    invoke-direct {p0}, Lorg/apache/commons/collections4/comparators/ComparatorChain;->checkLocked()V

    .line 155
    iget-object v0, p0, Lorg/apache/commons/collections4/comparators/ComparatorChain;->comparatorChain:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 156
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 157
    iget-object v1, p0, Lorg/apache/commons/collections4/comparators/ComparatorChain;->orderingBits:Ljava/util/BitSet;

    iget-object v2, p0, Lorg/apache/commons/collections4/comparators/ComparatorChain;->comparatorChain:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v0

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 159
    :cond_0
    return-void
.end method

.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;TE;)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .line 271
    .local p0, "this":Lorg/apache/commons/collections4/comparators/ComparatorChain;, "Lorg/apache/commons/collections4/comparators/ComparatorChain<TE;>;"
    .local p1, "o1":Ljava/lang/Object;, "TE;"
    .local p2, "o2":Ljava/lang/Object;, "TE;"
    iget-boolean v0, p0, Lorg/apache/commons/collections4/comparators/ComparatorChain;->isLocked:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 272
    invoke-direct {p0}, Lorg/apache/commons/collections4/comparators/ComparatorChain;->checkChainIntegrity()V

    .line 273
    iput-boolean v1, p0, Lorg/apache/commons/collections4/comparators/ComparatorChain;->isLocked:Z

    .line 277
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections4/comparators/ComparatorChain;->comparatorChain:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 278
    .local v0, "comparators":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Comparator<TE;>;>;"
    const/4 v2, 0x0

    .local v2, "comparatorIndex":I
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 280
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Comparator;

    .line 281
    .local v3, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TE;>;"
    invoke-interface {v3, p1, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v4

    .line 282
    .local v4, "retval":I
    if-eqz v4, :cond_3

    .line 284
    iget-object v5, p0, Lorg/apache/commons/collections4/comparators/ComparatorChain;->orderingBits:Ljava/util/BitSet;

    invoke-virtual {v5, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v5

    if-ne v5, v1, :cond_2

    .line 285
    if-lez v4, :cond_1

    .line 286
    const/4 v4, -0x1

    goto :goto_1

    .line 288
    :cond_1
    const/4 v4, 0x1

    .line 291
    :cond_2
    :goto_1
    return v4

    .line 278
    .end local v3    # "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TE;>;"
    .end local v4    # "retval":I
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 296
    .end local v2    # "comparatorIndex":I
    :cond_4
    const/4 v1, 0x0

    return v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "object"    # Ljava/lang/Object;

    .line 337
    .local p0, "this":Lorg/apache/commons/collections4/comparators/ComparatorChain;, "Lorg/apache/commons/collections4/comparators/ComparatorChain<TE;>;"
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 338
    return v0

    .line 340
    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    .line 341
    return v1

    .line 343
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 344
    move-object v2, p1

    check-cast v2, Lorg/apache/commons/collections4/comparators/ComparatorChain;

    .line 345
    .local v2, "chain":Lorg/apache/commons/collections4/comparators/ComparatorChain;, "Lorg/apache/commons/collections4/comparators/ComparatorChain<*>;"
    iget-object v3, p0, Lorg/apache/commons/collections4/comparators/ComparatorChain;->orderingBits:Ljava/util/BitSet;

    if-nez v3, :cond_2

    iget-object v3, v2, Lorg/apache/commons/collections4/comparators/ComparatorChain;->orderingBits:Ljava/util/BitSet;

    if-nez v3, :cond_4

    goto :goto_0

    :cond_2
    iget-object v4, v2, Lorg/apache/commons/collections4/comparators/ComparatorChain;->orderingBits:Ljava/util/BitSet;

    invoke-virtual {v3, v4}, Ljava/util/BitSet;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    :goto_0
    iget-object v3, p0, Lorg/apache/commons/collections4/comparators/ComparatorChain;->comparatorChain:Ljava/util/List;

    if-nez v3, :cond_3

    iget-object v3, v2, Lorg/apache/commons/collections4/comparators/ComparatorChain;->comparatorChain:Ljava/util/List;

    if-nez v3, :cond_4

    goto :goto_1

    :cond_3
    iget-object v4, v2, Lorg/apache/commons/collections4/comparators/ComparatorChain;->comparatorChain:Ljava/util/List;

    .line 347
    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    :goto_1
    goto :goto_2

    :cond_4
    move v0, v1

    .line 345
    :goto_2
    return v0

    .line 349
    .end local v2    # "chain":Lorg/apache/commons/collections4/comparators/ComparatorChain;, "Lorg/apache/commons/collections4/comparators/ComparatorChain<*>;"
    :cond_5
    return v1
.end method

.method public hashCode()I
    .locals 2

    .line 309
    .local p0, "this":Lorg/apache/commons/collections4/comparators/ComparatorChain;, "Lorg/apache/commons/collections4/comparators/ComparatorChain<TE;>;"
    const/4 v0, 0x0

    .line 310
    .local v0, "hash":I
    iget-object v1, p0, Lorg/apache/commons/collections4/comparators/ComparatorChain;->comparatorChain:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 311
    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    .line 313
    :cond_0
    iget-object v1, p0, Lorg/apache/commons/collections4/comparators/ComparatorChain;->orderingBits:Ljava/util/BitSet;

    if-eqz v1, :cond_1

    .line 314
    invoke-virtual {v1}, Ljava/util/BitSet;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    .line 316
    :cond_1
    return v0
.end method

.method public isLocked()Z
    .locals 1

    .line 233
    .local p0, "this":Lorg/apache/commons/collections4/comparators/ComparatorChain;, "Lorg/apache/commons/collections4/comparators/ComparatorChain<TE;>;"
    iget-boolean v0, p0, Lorg/apache/commons/collections4/comparators/ComparatorChain;->isLocked:Z

    return v0
.end method

.method public setComparator(ILjava/util/Comparator;)V
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Comparator<",
            "TE;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IndexOutOfBoundsException;
        }
    .end annotation

    .line 171
    .local p0, "this":Lorg/apache/commons/collections4/comparators/ComparatorChain;, "Lorg/apache/commons/collections4/comparators/ComparatorChain<TE;>;"
    .local p2, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<TE;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/commons/collections4/comparators/ComparatorChain;->setComparator(ILjava/util/Comparator;Z)V

    .line 172
    return-void
.end method

.method public setComparator(ILjava/util/Comparator;Z)V
    .locals 1
    .param p1, "index"    # I
    .param p3, "reverse"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Comparator<",
            "TE;>;Z)V"
        }
    .end annotation

    .line 183
    .local p0, "this":Lorg/apache/commons/collections4/comparators/ComparatorChain;, "Lorg/apache/commons/collections4/comparators/ComparatorChain<TE;>;"
    .local p2, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<TE;>;"
    invoke-direct {p0}, Lorg/apache/commons/collections4/comparators/ComparatorChain;->checkLocked()V

    .line 185
    iget-object v0, p0, Lorg/apache/commons/collections4/comparators/ComparatorChain;->comparatorChain:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 186
    const/4 v0, 0x1

    if-ne p3, v0, :cond_0

    .line 187
    iget-object v0, p0, Lorg/apache/commons/collections4/comparators/ComparatorChain;->orderingBits:Ljava/util/BitSet;

    invoke-virtual {v0, p1}, Ljava/util/BitSet;->set(I)V

    goto :goto_0

    .line 189
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections4/comparators/ComparatorChain;->orderingBits:Ljava/util/BitSet;

    invoke-virtual {v0, p1}, Ljava/util/BitSet;->clear(I)V

    .line 191
    :goto_0
    return-void
.end method

.method public setForwardSort(I)V
    .locals 1
    .param p1, "index"    # I

    .line 200
    .local p0, "this":Lorg/apache/commons/collections4/comparators/ComparatorChain;, "Lorg/apache/commons/collections4/comparators/ComparatorChain<TE;>;"
    invoke-direct {p0}, Lorg/apache/commons/collections4/comparators/ComparatorChain;->checkLocked()V

    .line 201
    iget-object v0, p0, Lorg/apache/commons/collections4/comparators/ComparatorChain;->orderingBits:Ljava/util/BitSet;

    invoke-virtual {v0, p1}, Ljava/util/BitSet;->clear(I)V

    .line 202
    return-void
.end method

.method public setReverseSort(I)V
    .locals 1
    .param p1, "index"    # I

    .line 211
    .local p0, "this":Lorg/apache/commons/collections4/comparators/ComparatorChain;, "Lorg/apache/commons/collections4/comparators/ComparatorChain<TE;>;"
    invoke-direct {p0}, Lorg/apache/commons/collections4/comparators/ComparatorChain;->checkLocked()V

    .line 212
    iget-object v0, p0, Lorg/apache/commons/collections4/comparators/ComparatorChain;->orderingBits:Ljava/util/BitSet;

    invoke-virtual {v0, p1}, Ljava/util/BitSet;->set(I)V

    .line 213
    return-void
.end method

.method public size()I
    .locals 1

    .line 221
    .local p0, "this":Lorg/apache/commons/collections4/comparators/ComparatorChain;, "Lorg/apache/commons/collections4/comparators/ComparatorChain<TE;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/comparators/ComparatorChain;->comparatorChain:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
