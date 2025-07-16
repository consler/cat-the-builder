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
    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;I)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;I)I"
        }
    .end annotation

    .line 191
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public add(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    const/4 v0, 0x1

    .line 185
    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/collections4/multiset/AbstractMultiSet;->add(Ljava/lang/Object;I)I

    return v0
.end method

.method public clear()V
    .locals 2

    .line 200
    invoke-virtual {p0}, Lorg/apache/commons/collections4/multiset/AbstractMultiSet;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 201
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 202
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 203
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 0

    .line 111
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections4/multiset/AbstractMultiSet;->getCount(Ljava/lang/Object;)I

    move-result p1

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
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
    new-instance v0, Lorg/apache/commons/collections4/multiset/AbstractMultiSet$1;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections4/multiset/AbstractMultiSet$1;-><init>(Lorg/apache/commons/collections4/multiset/AbstractMultiSet;)V

    .line 265
    invoke-virtual {p0}, Lorg/apache/commons/collections4/multiset/AbstractMultiSet;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-static {v1, v0}, Lorg/apache/commons/collections4/IteratorUtils;->transformedIterator(Ljava/util/Iterator;Lorg/apache/commons/collections4/Transformer;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method protected doReadObject(Ljava/io/ObjectInputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 464
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 467
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v2

    .line 468
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v3

    .line 469
    invoke-virtual {p0, v2, v3}, Lorg/apache/commons/collections4/multiset/AbstractMultiSet;->setCount(Ljava/lang/Object;I)I

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected doWriteObject(Ljava/io/ObjectOutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 448
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
    invoke-interface {v1}, Lorg/apache/commons/collections4/MultiSet$Entry;->getElement()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 451
    invoke-interface {v1}, Lorg/apache/commons/collections4/MultiSet$Entry;->getCount()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    goto :goto_0

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
    .locals 5

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 479
    :cond_0
    instance-of v1, p1, Lorg/apache/commons/collections4/MultiSet;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 482
    :cond_1
    check-cast p1, Lorg/apache/commons/collections4/MultiSet;

    .line 483
    invoke-interface {p1}, Lorg/apache/commons/collections4/MultiSet;->size()I

    move-result v1

    invoke-virtual {p0}, Lorg/apache/commons/collections4/multiset/AbstractMultiSet;->size()I

    move-result v3

    if-eq v1, v3, :cond_2

    return v2

    .line 486
    :cond_2
    invoke-virtual {p0}, Lorg/apache/commons/collections4/multiset/AbstractMultiSet;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/collections4/MultiSet$Entry;

    .line 487
    invoke-interface {v3}, Lorg/apache/commons/collections4/MultiSet$Entry;->getElement()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {p1, v4}, Lorg/apache/commons/collections4/MultiSet;->getCount(Ljava/lang/Object;)I

    move-result v4

    invoke-interface {v3}, Lorg/apache/commons/collections4/MultiSet$Entry;->getElement()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/apache/commons/collections4/multiset/AbstractMultiSet;->getCount(Ljava/lang/Object;)I

    move-result v3

    if-eq v4, v3, :cond_3

    return v2

    :cond_4
    return v0
.end method

.method public getCount(Ljava/lang/Object;)I
    .locals 3

    .line 77
    invoke-virtual {p0}, Lorg/apache/commons/collections4/multiset/AbstractMultiSet;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/collections4/MultiSet$Entry;

    .line 78
    invoke-interface {v1}, Lorg/apache/commons/collections4/MultiSet$Entry;->getElement()Ljava/lang/Object;

    move-result-object v2

    if-eq v2, p1, :cond_1

    if-eqz v2, :cond_0

    .line 80
    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 81
    :cond_1
    invoke-interface {v1}, Lorg/apache/commons/collections4/MultiSet$Entry;->getCount()I

    move-result p1

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public hashCode()I
    .locals 1

    .line 496
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
    new-instance v0, Lorg/apache/commons/collections4/multiset/AbstractMultiSet$MultiSetIterator;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections4/multiset/AbstractMultiSet$MultiSetIterator;-><init>(Lorg/apache/commons/collections4/multiset/AbstractMultiSet;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;I)I
    .locals 0

    .line 214
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 1

    const/4 v0, 0x1

    .line 209
    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/collections4/multiset/AbstractMultiSet;->remove(Ljava/lang/Object;I)I

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 220
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    :cond_0
    move v1, v0

    .line 221
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 222
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 223
    invoke-virtual {p0, v2}, Lorg/apache/commons/collections4/multiset/AbstractMultiSet;->getCount(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {p0, v2, v3}, Lorg/apache/commons/collections4/multiset/AbstractMultiSet;->remove(Ljava/lang/Object;I)I

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    move v2, v3

    goto :goto_1

    :cond_1
    move v2, v0

    :goto_1
    if-nez v1, :cond_2

    if-eqz v2, :cond_0

    :cond_2
    move v1, v3

    goto :goto_0

    :cond_3
    return v1
.end method

.method public setCount(Ljava/lang/Object;I)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;I)I"
        }
    .end annotation

    if-ltz p2, :cond_1

    .line 93
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections4/multiset/AbstractMultiSet;->getCount(Ljava/lang/Object;)I

    move-result v0

    if-ge v0, p2, :cond_0

    sub-int/2addr p2, v0

    .line 95
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/collections4/multiset/AbstractMultiSet;->add(Ljava/lang/Object;I)I

    goto :goto_0

    :cond_0
    sub-int p2, v0, p2

    .line 97
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/collections4/multiset/AbstractMultiSet;->remove(Ljava/lang/Object;I)I

    :goto_0
    return v0

    .line 90
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Count must not be negative."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public size()I
    .locals 3

    .line 62
    invoke-virtual {p0}, Lorg/apache/commons/collections4/multiset/AbstractMultiSet;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/collections4/MultiSet$Entry;

    .line 63
    invoke-interface {v2}, Lorg/apache/commons/collections4/MultiSet$Entry;->getCount()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0

    :cond_0
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 506
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
