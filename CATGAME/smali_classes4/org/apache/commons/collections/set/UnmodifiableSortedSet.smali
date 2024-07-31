.class public final Lorg/apache/commons/collections/set/UnmodifiableSortedSet;
.super Lorg/apache/commons/collections/set/AbstractSortedSetDecorator;
.source "UnmodifiableSortedSet.java"

# interfaces
.implements Lorg/apache/commons/collections/Unmodifiable;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0xa10fc3e85b39c38L


# direct methods
.method private constructor <init>(Ljava/util/SortedSet;)V
    .locals 0
    .param p1, "set"    # Ljava/util/SortedSet;

    .line 92
    invoke-direct {p0, p1}, Lorg/apache/commons/collections/set/AbstractSortedSetDecorator;-><init>(Ljava/util/Set;)V

    .line 93
    return-void
.end method

.method public static decorate(Ljava/util/SortedSet;)Ljava/util/SortedSet;
    .locals 1
    .param p0, "set"    # Ljava/util/SortedSet;

    .line 54
    instance-of v0, p0, Lorg/apache/commons/collections/Unmodifiable;

    if-eqz v0, :cond_0

    .line 55
    return-object p0

    .line 57
    :cond_0
    new-instance v0, Lorg/apache/commons/collections/set/UnmodifiableSortedSet;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections/set/UnmodifiableSortedSet;-><init>(Ljava/util/SortedSet;)V

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

    .line 80
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 81
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    iput-object v0, p0, Lorg/apache/commons/collections/set/UnmodifiableSortedSet;->collection:Ljava/util/Collection;

    .line 82
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

    .line 68
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 69
    iget-object v0, p0, Lorg/apache/commons/collections/set/UnmodifiableSortedSet;->collection:Ljava/util/Collection;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 70
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;

    .line 101
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 1
    .param p1, "coll"    # Ljava/util/Collection;

    .line 105
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public clear()V
    .locals 1

    .line 109
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public headSet(Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 2
    .param p1, "toElement"    # Ljava/lang/Object;

    .line 131
    invoke-virtual {p0}, Lorg/apache/commons/collections/set/UnmodifiableSortedSet;->getSortedSet()Ljava/util/SortedSet;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/SortedSet;->headSet(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v0

    .line 132
    .local v0, "sub":Ljava/util/SortedSet;
    new-instance v1, Lorg/apache/commons/collections/set/UnmodifiableSortedSet;

    invoke-direct {v1, v0}, Lorg/apache/commons/collections/set/UnmodifiableSortedSet;-><init>(Ljava/util/SortedSet;)V

    return-object v1
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1

    .line 97
    invoke-virtual {p0}, Lorg/apache/commons/collections/set/UnmodifiableSortedSet;->getCollection()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/collections/iterators/UnmodifiableIterator;->decorate(Ljava/util/Iterator;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;

    .line 113
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 1
    .param p1, "coll"    # Ljava/util/Collection;

    .line 117
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 1
    .param p1, "coll"    # Ljava/util/Collection;

    .line 121
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public subSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 2
    .param p1, "fromElement"    # Ljava/lang/Object;
    .param p2, "toElement"    # Ljava/lang/Object;

    .line 126
    invoke-virtual {p0}, Lorg/apache/commons/collections/set/UnmodifiableSortedSet;->getSortedSet()Ljava/util/SortedSet;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/SortedSet;->subSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v0

    .line 127
    .local v0, "sub":Ljava/util/SortedSet;
    new-instance v1, Lorg/apache/commons/collections/set/UnmodifiableSortedSet;

    invoke-direct {v1, v0}, Lorg/apache/commons/collections/set/UnmodifiableSortedSet;-><init>(Ljava/util/SortedSet;)V

    return-object v1
.end method

.method public tailSet(Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 2
    .param p1, "fromElement"    # Ljava/lang/Object;

    .line 136
    invoke-virtual {p0}, Lorg/apache/commons/collections/set/UnmodifiableSortedSet;->getSortedSet()Ljava/util/SortedSet;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/SortedSet;->tailSet(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v0

    .line 137
    .local v0, "sub":Ljava/util/SortedSet;
    new-instance v1, Lorg/apache/commons/collections/set/UnmodifiableSortedSet;

    invoke-direct {v1, v0}, Lorg/apache/commons/collections/set/UnmodifiableSortedSet;-><init>(Ljava/util/SortedSet;)V

    return-object v1
.end method
