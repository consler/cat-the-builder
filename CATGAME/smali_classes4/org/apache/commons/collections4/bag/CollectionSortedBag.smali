.class public final Lorg/apache/commons/collections4/bag/CollectionSortedBag;
.super Lorg/apache/commons/collections4/bag/AbstractSortedBagDecorator;
.source "CollectionSortedBag.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/commons/collections4/bag/AbstractSortedBagDecorator<",
        "TE;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x2387111919426757L


# direct methods
.method public constructor <init>(Lorg/apache/commons/collections4/SortedBag;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/SortedBag<",
            "TE;>;)V"
        }
    .end annotation

    .line 58
    .local p0, "this":Lorg/apache/commons/collections4/bag/CollectionSortedBag;, "Lorg/apache/commons/collections4/bag/CollectionSortedBag<TE;>;"
    .local p1, "bag":Lorg/apache/commons/collections4/SortedBag;, "Lorg/apache/commons/collections4/SortedBag<TE;>;"
    invoke-direct {p0, p1}, Lorg/apache/commons/collections4/bag/AbstractSortedBagDecorator;-><init>(Lorg/apache/commons/collections4/SortedBag;)V

    .line 59
    return-void
.end method

.method public static collectionSortedBag(Lorg/apache/commons/collections4/SortedBag;)Lorg/apache/commons/collections4/SortedBag;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/commons/collections4/SortedBag<",
            "TE;>;)",
            "Lorg/apache/commons/collections4/SortedBag<",
            "TE;>;"
        }
    .end annotation

    .line 47
    .local p0, "bag":Lorg/apache/commons/collections4/SortedBag;, "Lorg/apache/commons/collections4/SortedBag<TE;>;"
    new-instance v0, Lorg/apache/commons/collections4/bag/CollectionSortedBag;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections4/bag/CollectionSortedBag;-><init>(Lorg/apache/commons/collections4/SortedBag;)V

    return-object v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 1
    .param p1, "in"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 83
    .local p0, "this":Lorg/apache/commons/collections4/bag/CollectionSortedBag;, "Lorg/apache/commons/collections4/bag/CollectionSortedBag<TE;>;"
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 84
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-virtual {p0, v0}, Lorg/apache/commons/collections4/bag/CollectionSortedBag;->setCollection(Ljava/util/Collection;)V

    .line 85
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 1
    .param p1, "out"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 69
    .local p0, "this":Lorg/apache/commons/collections4/bag/CollectionSortedBag;, "Lorg/apache/commons/collections4/bag/CollectionSortedBag<TE;>;"
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 70
    invoke-virtual {p0}, Lorg/apache/commons/collections4/bag/CollectionSortedBag;->decorated()Lorg/apache/commons/collections4/SortedBag;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 71
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 104
    .local p0, "this":Lorg/apache/commons/collections4/bag/CollectionSortedBag;, "Lorg/apache/commons/collections4/bag/CollectionSortedBag<TE;>;"
    .local p1, "object":Ljava/lang/Object;, "TE;"
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/collections4/bag/CollectionSortedBag;->add(Ljava/lang/Object;I)Z

    move-result v0

    return v0
.end method

.method public add(Ljava/lang/Object;I)Z
    .locals 1
    .param p2, "count"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;I)Z"
        }
    .end annotation

    .line 162
    .local p0, "this":Lorg/apache/commons/collections4/bag/CollectionSortedBag;, "Lorg/apache/commons/collections4/bag/CollectionSortedBag<TE;>;"
    .local p1, "object":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/bag/CollectionSortedBag;->decorated()Lorg/apache/commons/collections4/SortedBag;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lorg/apache/commons/collections4/SortedBag;->add(Ljava/lang/Object;I)Z

    .line 163
    const/4 v0, 0x1

    return v0
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TE;>;)Z"
        }
    .end annotation

    .line 109
    .local p0, "this":Lorg/apache/commons/collections4/bag/CollectionSortedBag;, "Lorg/apache/commons/collections4/bag/CollectionSortedBag<TE;>;"
    .local p1, "coll":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    const/4 v0, 0x0

    .line 110
    .local v0, "changed":Z
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 111
    .local v1, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<+TE;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 112
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3}, Lorg/apache/commons/collections4/bag/CollectionSortedBag;->add(Ljava/lang/Object;I)Z

    move-result v2

    .line 113
    .local v2, "added":Z
    if-nez v0, :cond_1

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    :cond_1
    :goto_1
    move v0, v3

    .line 114
    .end local v2    # "added":Z
    goto :goto_0

    .line 115
    :cond_2
    return v0
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 93
    .local p0, "this":Lorg/apache/commons/collections4/bag/CollectionSortedBag;, "Lorg/apache/commons/collections4/bag/CollectionSortedBag<TE;>;"
    .local p1, "coll":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 94
    .local v0, "e":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 95
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/commons/collections4/bag/CollectionSortedBag;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 96
    const/4 v1, 0x0

    return v1

    .line 99
    :cond_1
    const/4 v1, 0x1

    return v1
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;

    .line 120
    .local p0, "this":Lorg/apache/commons/collections4/bag/CollectionSortedBag;, "Lorg/apache/commons/collections4/bag/CollectionSortedBag<TE;>;"
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/collections4/bag/CollectionSortedBag;->remove(Ljava/lang/Object;I)Z

    move-result v0

    return v0
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 125
    .local p0, "this":Lorg/apache/commons/collections4/bag/CollectionSortedBag;, "Lorg/apache/commons/collections4/bag/CollectionSortedBag<TE;>;"
    .local p1, "coll":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    if-eqz p1, :cond_3

    .line 126
    const/4 v0, 0x0

    .line 127
    .local v0, "result":Z
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 128
    .local v1, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 129
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 130
    .local v2, "obj":Ljava/lang/Object;
    invoke-virtual {p0, v2}, Lorg/apache/commons/collections4/bag/CollectionSortedBag;->getCount(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {p0, v2, v3}, Lorg/apache/commons/collections4/bag/CollectionSortedBag;->remove(Ljava/lang/Object;I)Z

    move-result v3

    .line 131
    .local v3, "changed":Z
    if-nez v0, :cond_1

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    const/4 v4, 0x0

    goto :goto_2

    :cond_1
    :goto_1
    const/4 v4, 0x1

    :goto_2
    move v0, v4

    .line 132
    .end local v2    # "obj":Ljava/lang/Object;
    .end local v3    # "changed":Z
    goto :goto_0

    .line 133
    :cond_2
    return v0

    .line 136
    .end local v0    # "result":Z
    .end local v1    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :cond_3
    invoke-virtual {p0}, Lorg/apache/commons/collections4/bag/CollectionSortedBag;->decorated()Lorg/apache/commons/collections4/SortedBag;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/apache/commons/collections4/SortedBag;->removeAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 141
    .local p0, "this":Lorg/apache/commons/collections4/bag/CollectionSortedBag;, "Lorg/apache/commons/collections4/bag/CollectionSortedBag<TE;>;"
    .local p1, "coll":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    if-eqz p1, :cond_2

    .line 142
    const/4 v0, 0x0

    .line 143
    .local v0, "modified":Z
    invoke-virtual {p0}, Lorg/apache/commons/collections4/bag/CollectionSortedBag;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 144
    .local v1, "e":Ljava/util/Iterator;, "Ljava/util/Iterator<TE;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 145
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 146
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 147
    const/4 v0, 0x1

    goto :goto_0

    .line 150
    :cond_1
    return v0

    .line 153
    .end local v0    # "modified":Z
    .end local v1    # "e":Ljava/util/Iterator;, "Ljava/util/Iterator<TE;>;"
    :cond_2
    invoke-virtual {p0}, Lorg/apache/commons/collections4/bag/CollectionSortedBag;->decorated()Lorg/apache/commons/collections4/SortedBag;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/apache/commons/collections4/SortedBag;->retainAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method
