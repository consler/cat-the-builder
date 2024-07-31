.class public abstract Lorg/apache/commons/collections4/multiset/AbstractMultiSet;
.super Ljava/util/AbstractCollection;
.source "AbstractMultiSet.java"

# interfaces
.implements Lorg/apache/commons/collections4/MultiSet;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/collections4/multiset/AbstractMultiSet$AbstractEntry;,
        Lorg/apache/commons/collections4/multiset/AbstractMultiSet$EntrySet;,
        Lorg/apache/commons/collections4/multiset/AbstractMultiSet$UniqueSet;,
        Lorg/apache/commons/collections4/multiset/AbstractMultiSet$MultiSetIterator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractCollection<",
        "TE;>;",
        "Lorg/apache/commons/collections4/MultiSet<",
        "TE;>;"
    }
.end annotation


# instance fields
.field private transient entrySet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/apache/commons/collections4/MultiSet$Entry<",
            "TE;>;>;"
        }
    .end annotation
.end field

.field private transient uniqueSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 50
    .local p0, "this":Lorg/apache/commons/collections4/multiset/AbstractMultiSet;, "Lorg/apache/commons/collections4/multiset/AbstractMultiSet<TE;>;"
    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    .line 51
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;I)I
    .locals 1
    .param p2, "occurrences"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;I)I"
        }
    .end annotation

    .line 191
    .local p0, "this":Lorg/apache/commons/collections4/multiset/AbstractMultiSet;, "Lorg/apache/commons/collections4/multiset/AbstractMultiSet<TE;>;"
    .local p1, "object":Ljava/lang/Object;, "TE;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public add(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 185
    .local p0, "this":Lorg/apache/commons/collections4/multiset/AbstractMultiSet;, "Lorg/apache/commons/collections4/multiset/AbstractMultiSet<TE;>;"
    .local p1, "object":Ljava/lang/Object;, "TE;"
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/collections4/multiset/AbstractMultiSet;->add(Ljava/lang/Object;I)I

    .line 186
    return v0
.end method

.method public clear()V
    .locals 2

    .line 200
    .local p0, "this":Lorg/apache/commons/collections4/multiset/AbstractMultiSet;, "Lorg/apache/commons/collections4/multiset/AbstractMultiSet<TE;>;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/multiset/AbstractMultiSet;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 201
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/commons/collections4/MultiSet$Entry<TE;>;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 202
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 203
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 205
    :cond_0
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;

    .line 111
    .local p0, "this":Lorg/apache/commons/collections4/multiset/AbstractMultiSet;, "Lorg/apache/commons/collections4/multiset/AbstractMultiSet<TE;>;"
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections4/multiset/AbstractMultiSet;->getCount(Ljava/lang/Object;)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected createEntrySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lorg/apache/commons/collections4/MultiSet$Entry<",
            "TE;>;>;"
        }
    .end annotation

    .line 287
    .local p0, "this":Lorg/apache/commons/collections4/multiset/AbstractMultiSet;, "Lorg/apache/commons/collections4/multiset/AbstractMultiSet<TE;>;"
    new-instance v0, Lorg/apache/commons/collections4/multiset/AbstractMultiSet$EntrySet;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections4/multiset/AbstractMultiSet$EntrySet;-><init>(Lorg/apache/commons/collections4/multiset/AbstractMultiSet;)V

    return-object v0
.end method

.method protected abstract createEntrySetIterator()Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lorg/apache/commons/collections4/MultiSet$Entry<",
            "TE;>;>;"
        }
    .end annotation
.end method

.method protected createUniqueSet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TE;>;"
        }
    .end annotation

    .line 249
    .local p0, "this":Lorg/apache/commons/collections4/multiset/AbstractMultiSet;, "Lorg/apache/commons/collections4/multiset/AbstractMultiSet<TE;>;"
    new-instance v0, Lorg/apache/commons/collections4/multiset/AbstractMultiSet$UniqueSet;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections4/multiset/AbstractMultiSet$UniqueSet;-><init>(Lorg/apache/commons/collections4/multiset/AbstractMultiSet;)V

    return-object v0
.end method

.method protected createUniqueSetIterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    .line 259
    .local p0, "this":Lorg/apache/commons/collections4/multiset/AbstractMultiSet;, "Lorg/apache/commons/collections4/multiset/AbstractMultiSet<TE;>;"
    new-instance v0, Lorg/apache/commons/collections4/multiset/AbstractMultiSet$1;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections4/multiset/AbstractMultiSet$1;-><init>(Lorg/apache/commons/collections4/multiset/AbstractMultiSet;)V

    .line 265
    .local v0, "transformer":Lorg/apache/commons/collections4/Transformer;, "Lorg/apache/commons/collections4/Transformer<Lorg/apache/commons/collections4/MultiSet$Entry<TE;>;TE;>;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/multiset/AbstractMultiSet;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-static {v1, v0}, Lorg/apache/commons/collections4/IteratorUtils;->transformedIterator(Ljava/util/Iterator;Lorg/apache/commons/collections4/Transformer;)Ljava/util/Iterator;

    move-result-object v1

    return-object v1
.end method

.method protected doReadObject(Ljava/io/ObjectInputStream;)V
    .locals 4
    .param p1, "in"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 464
    .local p0, "this":Lorg/apache/commons/collections4/multiset/AbstractMultiSet;, "Lorg/apache/commons/collections4/multiset/AbstractMultiSet<TE;>;"
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    .line 465
    .local v0, "entrySize":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 467
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v2

    .line 468
    .local v2, "obj":Ljava/lang/Object;, "TE;"
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v3

    .line 469
    .local v3, "count":I
    invoke-virtual {p0, v2, v3}, Lorg/apache/commons/collections4/multiset/AbstractMultiSet;->setCount(Ljava/lang/Object;I)I

    .line 465
    .end local v2    # "obj":Ljava/lang/Object;, "TE;"
    .end local v3    # "count":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 471
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected doWriteObject(Ljava/io/ObjectOutputStream;)V
    .locals 3
    .param p1, "out"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 448
    .local p0, "this":Lorg/apache/commons/collections4/multiset/AbstractMultiSet;, "Lorg/apache/commons/collections4/multiset/AbstractMultiSet<TE;>;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/multiset/AbstractMultiSet;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 449
    invoke-virtual {p0}, Lorg/apache/commons/collections4/multiset/AbstractMultiSet;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/collections4/MultiSet$Entry;

    .line 450
    .local v1, "entry":Lorg/apache/commons/collections4/MultiSet$Entry;, "Lorg/apache/commons/collections4/MultiSet$Entry<TE;>;"
    invoke-interface {v1}, Lorg/apache/commons/collections4/MultiSet$Entry;->getElement()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 451
    invoke-interface {v1}, Lorg/apache/commons/collections4/MultiSet$Entry;->getCount()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 452
    .end local v1    # "entry":Lorg/apache/commons/collections4/MultiSet$Entry;, "Lorg/apache/commons/collections4/MultiSet$Entry<TE;>;"
    goto :goto_0

    .line 453
    :cond_0
    return-void
.end method

.method public entrySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lorg/apache/commons/collections4/MultiSet$Entry<",
            "TE;>;>;"
        }
    .end annotation

    .line 275
    .local p0, "this":Lorg/apache/commons/collections4/multiset/AbstractMultiSet;, "Lorg/apache/commons/collections4/multiset/AbstractMultiSet<TE;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/multiset/AbstractMultiSet;->entrySet:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 276
    invoke-virtual {p0}, Lorg/apache/commons/collections4/multiset/AbstractMultiSet;->createEntrySet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/collections4/multiset/AbstractMultiSet;->entrySet:Ljava/util/Set;

    .line 278
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections4/multiset/AbstractMultiSet;->entrySet:Ljava/util/Set;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "object"    # Ljava/lang/Object;

    .line 476
    .local p0, "this":Lorg/apache/commons/collections4/multiset/AbstractMultiSet;, "Lorg/apache/commons/collections4/multiset/AbstractMultiSet<TE;>;"
    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    .line 477
    return v0

    .line 479
    :cond_0
    instance-of v1, p1, Lorg/apache/commons/collections4/MultiSet;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 480
    return v2

    .line 482
    :cond_1
    move-object v1, p1

    check-cast v1, Lorg/apache/commons/collections4/MultiSet;

    .line 483
    .local v1, "other":Lorg/apache/commons/collections4/MultiSet;, "Lorg/apache/commons/collections4/MultiSet<*>;"
    invoke-interface {v1}, Lorg/apache/commons/collections4/MultiSet;->size()I

    move-result v3

    invoke-virtual {p0}, Lorg/apache/commons/collections4/multiset/AbstractMultiSet;->size()I

    move-result v4

    if-eq v3, v4, :cond_2

    .line 484
    return v2

    .line 486
    :cond_2
    invoke-virtual {p0}, Lorg/apache/commons/collections4/multiset/AbstractMultiSet;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/collections4/MultiSet$Entry;

    .line 487
    .local v4, "entry":Lorg/apache/commons/collections4/MultiSet$Entry;, "Lorg/apache/commons/collections4/MultiSet$Entry<TE;>;"
    invoke-interface {v4}, Lorg/apache/commons/collections4/MultiSet$Entry;->getElement()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v1, v5}, Lorg/apache/commons/collections4/MultiSet;->getCount(Ljava/lang/Object;)I

    move-result v5

    invoke-interface {v4}, Lorg/apache/commons/collections4/MultiSet$Entry;->getElement()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {p0, v6}, Lorg/apache/commons/collections4/multiset/AbstractMultiSet;->getCount(Ljava/lang/Object;)I

    move-result v6

    if-eq v5, v6, :cond_3

    .line 488
    return v2

    .line 490
    .end local v4    # "entry":Lorg/apache/commons/collections4/MultiSet$Entry;, "Lorg/apache/commons/collections4/MultiSet$Entry<TE;>;"
    :cond_3
    goto :goto_0

    .line 491
    :cond_4
    return v0
.end method

.method public getCount(Ljava/lang/Object;)I
    .locals 4
    .param p1, "object"    # Ljava/lang/Object;

    .line 77
    .local p0, "this":Lorg/apache/commons/collections4/multiset/AbstractMultiSet;, "Lorg/apache/commons/collections4/multiset/AbstractMultiSet<TE;>;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/multiset/AbstractMultiSet;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/collections4/MultiSet$Entry;

    .line 78
    .local v1, "entry":Lorg/apache/commons/collections4/MultiSet$Entry;, "Lorg/apache/commons/collections4/MultiSet$Entry<TE;>;"
    invoke-interface {v1}, Lorg/apache/commons/collections4/MultiSet$Entry;->getElement()Ljava/lang/Object;

    move-result-object v2

    .line 79
    .local v2, "element":Ljava/lang/Object;, "TE;"
    if-eq v2, p1, :cond_1

    if-eqz v2, :cond_0

    .line 80
    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    .line 83
    .end local v1    # "entry":Lorg/apache/commons/collections4/MultiSet$Entry;, "Lorg/apache/commons/collections4/MultiSet$Entry<TE;>;"
    .end local v2    # "element":Ljava/lang/Object;, "TE;"
    :cond_0
    goto :goto_0

    .line 81
    .restart local v1    # "entry":Lorg/apache/commons/collections4/MultiSet$Entry;, "Lorg/apache/commons/collections4/MultiSet$Entry<TE;>;"
    .restart local v2    # "element":Ljava/lang/Object;, "TE;"
    :cond_1
    :goto_1
    invoke-interface {v1}, Lorg/apache/commons/collections4/MultiSet$Entry;->getCount()I

    move-result v0

    return v0

    .line 84
    .end local v1    # "entry":Lorg/apache/commons/collections4/MultiSet$Entry;, "Lorg/apache/commons/collections4/MultiSet$Entry<TE;>;"
    .end local v2    # "element":Ljava/lang/Object;, "TE;"
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 496
    .local p0, "this":Lorg/apache/commons/collections4/multiset/AbstractMultiSet;, "Lorg/apache/commons/collections4/multiset/AbstractMultiSet<TE;>;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/multiset/AbstractMultiSet;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->hashCode()I

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    .line 123
    .local p0, "this":Lorg/apache/commons/collections4/multiset/AbstractMultiSet;, "Lorg/apache/commons/collections4/multiset/AbstractMultiSet<TE;>;"
    new-instance v0, Lorg/apache/commons/collections4/multiset/AbstractMultiSet$MultiSetIterator;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections4/multiset/AbstractMultiSet$MultiSetIterator;-><init>(Lorg/apache/commons/collections4/multiset/AbstractMultiSet;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;I)I
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "occurrences"    # I

    .line 214
    .local p0, "this":Lorg/apache/commons/collections4/multiset/AbstractMultiSet;, "Lorg/apache/commons/collections4/multiset/AbstractMultiSet<TE;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "object"    # Ljava/lang/Object;

    .line 209
    .local p0, "this":Lorg/apache/commons/collections4/multiset/AbstractMultiSet;, "Lorg/apache/commons/collections4/multiset/AbstractMultiSet<TE;>;"
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/collections4/multiset/AbstractMultiSet;->remove(Ljava/lang/Object;I)I

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 219
    .local p0, "this":Lorg/apache/commons/collections4/multiset/AbstractMultiSet;, "Lorg/apache/commons/collections4/multiset/AbstractMultiSet<TE;>;"
    .local p1, "coll":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    const/4 v0, 0x0

    .line 220
    .local v0, "result":Z
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 221
    .local v1, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 222
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 223
    .local v2, "obj":Ljava/lang/Object;
    invoke-virtual {p0, v2}, Lorg/apache/commons/collections4/multiset/AbstractMultiSet;->getCount(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {p0, v2, v3}, Lorg/apache/commons/collections4/multiset/AbstractMultiSet;->remove(Ljava/lang/Object;I)I

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_0

    move v3, v4

    goto :goto_1

    :cond_0
    move v3, v5

    .line 224
    .local v3, "changed":Z
    :goto_1
    if-nez v0, :cond_2

    if-eqz v3, :cond_1

    goto :goto_2

    :cond_1
    move v4, v5

    :cond_2
    :goto_2
    move v0, v4

    .line 225
    .end local v2    # "obj":Ljava/lang/Object;
    .end local v3    # "changed":Z
    goto :goto_0

    .line 226
    :cond_3
    return v0
.end method

.method public setCount(Ljava/lang/Object;I)I
    .locals 2
    .param p2, "count"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;I)I"
        }
    .end annotation

    .line 89
    .local p0, "this":Lorg/apache/commons/collections4/multiset/AbstractMultiSet;, "Lorg/apache/commons/collections4/multiset/AbstractMultiSet<TE;>;"
    .local p1, "object":Ljava/lang/Object;, "TE;"
    if-ltz p2, :cond_1

    .line 93
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections4/multiset/AbstractMultiSet;->getCount(Ljava/lang/Object;)I

    move-result v0

    .line 94
    .local v0, "oldCount":I
    if-ge v0, p2, :cond_0

    .line 95
    sub-int v1, p2, v0

    invoke-virtual {p0, p1, v1}, Lorg/apache/commons/collections4/multiset/AbstractMultiSet;->add(Ljava/lang/Object;I)I

    goto :goto_0

    .line 97
    :cond_0
    sub-int v1, v0, p2

    invoke-virtual {p0, p1, v1}, Lorg/apache/commons/collections4/multiset/AbstractMultiSet;->remove(Ljava/lang/Object;I)I

    .line 99
    :goto_0
    return v0

    .line 90
    .end local v0    # "oldCount":I
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Count must not be negative."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public size()I
    .locals 4

    .line 61
    .local p0, "this":Lorg/apache/commons/collections4/multiset/AbstractMultiSet;, "Lorg/apache/commons/collections4/multiset/AbstractMultiSet<TE;>;"
    const/4 v0, 0x0

    .line 62
    .local v0, "totalSize":I
    invoke-virtual {p0}, Lorg/apache/commons/collections4/multiset/AbstractMultiSet;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/collections4/MultiSet$Entry;

    .line 63
    .local v2, "entry":Lorg/apache/commons/collections4/MultiSet$Entry;, "Lorg/apache/commons/collections4/MultiSet$Entry<TE;>;"
    invoke-interface {v2}, Lorg/apache/commons/collections4/MultiSet$Entry;->getCount()I

    move-result v3

    add-int/2addr v0, v3

    .line 64
    .end local v2    # "entry":Lorg/apache/commons/collections4/MultiSet$Entry;, "Lorg/apache/commons/collections4/MultiSet$Entry<TE;>;"
    goto :goto_0

    .line 65
    :cond_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 506
    .local p0, "this":Lorg/apache/commons/collections4/multiset/AbstractMultiSet;, "Lorg/apache/commons/collections4/multiset/AbstractMultiSet<TE;>;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/multiset/AbstractMultiSet;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected abstract uniqueElements()I
.end method

.method public uniqueSet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TE;>;"
        }
    .end annotation

    .line 237
    .local p0, "this":Lorg/apache/commons/collections4/multiset/AbstractMultiSet;, "Lorg/apache/commons/collections4/multiset/AbstractMultiSet<TE;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/multiset/AbstractMultiSet;->uniqueSet:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 238
    invoke-virtual {p0}, Lorg/apache/commons/collections4/multiset/AbstractMultiSet;->createUniqueSet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/collections4/multiset/AbstractMultiSet;->uniqueSet:Ljava/util/Set;

    .line 240
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections4/multiset/AbstractMultiSet;->uniqueSet:Ljava/util/Set;

    return-object v0
.end method
