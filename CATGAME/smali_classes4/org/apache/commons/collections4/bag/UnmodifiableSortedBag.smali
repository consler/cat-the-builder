.class public final Lorg/apache/commons/collections4/bag/UnmodifiableSortedBag;
.super Lorg/apache/commons/collections4/bag/AbstractSortedBagDecorator;
.source "UnmodifiableSortedBag.java"

# interfaces
.implements Lorg/apache/commons/collections4/Unmodifiable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/commons/collections4/bag/AbstractSortedBagDecorator<",
        "TE;>;",
        "Lorg/apache/commons/collections4/Unmodifiable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x2c46b5c713503451L


# direct methods
.method private constructor <init>(Lorg/apache/commons/collections4/SortedBag;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/SortedBag<",
            "TE;>;)V"
        }
    .end annotation

    .line 76
    .local p0, "this":Lorg/apache/commons/collections4/bag/UnmodifiableSortedBag;, "Lorg/apache/commons/collections4/bag/UnmodifiableSortedBag<TE;>;"
    .local p1, "bag":Lorg/apache/commons/collections4/SortedBag;, "Lorg/apache/commons/collections4/SortedBag<TE;>;"
    invoke-direct {p0, p1}, Lorg/apache/commons/collections4/bag/AbstractSortedBagDecorator;-><init>(Lorg/apache/commons/collections4/SortedBag;)V

    .line 77
    return-void
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

    .line 101
    .local p0, "this":Lorg/apache/commons/collections4/bag/UnmodifiableSortedBag;, "Lorg/apache/commons/collections4/bag/UnmodifiableSortedBag<TE;>;"
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 102
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-virtual {p0, v0}, Lorg/apache/commons/collections4/bag/UnmodifiableSortedBag;->setCollection(Ljava/util/Collection;)V

    .line 103
    return-void
.end method

.method public static unmodifiableSortedBag(Lorg/apache/commons/collections4/SortedBag;)Lorg/apache/commons/collections4/SortedBag;
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

    .line 62
    .local p0, "bag":Lorg/apache/commons/collections4/SortedBag;, "Lorg/apache/commons/collections4/SortedBag<TE;>;"
    instance-of v0, p0, Lorg/apache/commons/collections4/Unmodifiable;

    if-eqz v0, :cond_0

    .line 63
    return-object p0

    .line 65
    :cond_0
    new-instance v0, Lorg/apache/commons/collections4/bag/UnmodifiableSortedBag;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections4/bag/UnmodifiableSortedBag;-><init>(Lorg/apache/commons/collections4/SortedBag;)V

    return-object v0
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 1
    .param p1, "out"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 87
    .local p0, "this":Lorg/apache/commons/collections4/bag/UnmodifiableSortedBag;, "Lorg/apache/commons/collections4/bag/UnmodifiableSortedBag<TE;>;"
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 88
    invoke-virtual {p0}, Lorg/apache/commons/collections4/bag/UnmodifiableSortedBag;->decorated()Lorg/apache/commons/collections4/SortedBag;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 89
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

    .line 113
    .local p0, "this":Lorg/apache/commons/collections4/bag/UnmodifiableSortedBag;, "Lorg/apache/commons/collections4/bag/UnmodifiableSortedBag<TE;>;"
    .local p1, "object":Ljava/lang/Object;, "TE;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public add(Ljava/lang/Object;I)Z
    .locals 1
    .param p2, "count"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;I)Z"
        }
    .end annotation

    .line 152
    .local p0, "this":Lorg/apache/commons/collections4/bag/UnmodifiableSortedBag;, "Lorg/apache/commons/collections4/bag/UnmodifiableSortedBag<TE;>;"
    .local p1, "object":Ljava/lang/Object;, "TE;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TE;>;)Z"
        }
    .end annotation

    .line 118
    .local p0, "this":Lorg/apache/commons/collections4/bag/UnmodifiableSortedBag;, "Lorg/apache/commons/collections4/bag/UnmodifiableSortedBag<TE;>;"
    .local p1, "coll":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public clear()V
    .locals 1

    .line 123
    .local p0, "this":Lorg/apache/commons/collections4/bag/UnmodifiableSortedBag;, "Lorg/apache/commons/collections4/bag/UnmodifiableSortedBag<TE;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
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

    .line 108
    .local p0, "this":Lorg/apache/commons/collections4/bag/UnmodifiableSortedBag;, "Lorg/apache/commons/collections4/bag/UnmodifiableSortedBag<TE;>;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/bag/UnmodifiableSortedBag;->decorated()Lorg/apache/commons/collections4/SortedBag;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/collections4/SortedBag;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/collections4/iterators/UnmodifiableIterator;->unmodifiableIterator(Ljava/util/Iterator;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;

    .line 128
    .local p0, "this":Lorg/apache/commons/collections4/bag/UnmodifiableSortedBag;, "Lorg/apache/commons/collections4/bag/UnmodifiableSortedBag<TE;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public remove(Ljava/lang/Object;I)Z
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "count"    # I

    .line 157
    .local p0, "this":Lorg/apache/commons/collections4/bag/UnmodifiableSortedBag;, "Lorg/apache/commons/collections4/bag/UnmodifiableSortedBag<TE;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 141
    .local p0, "this":Lorg/apache/commons/collections4/bag/UnmodifiableSortedBag;, "Lorg/apache/commons/collections4/bag/UnmodifiableSortedBag<TE;>;"
    .local p1, "coll":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public removeIf(Ljava/util/function/Predicate;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "-TE;>;)Z"
        }
    .end annotation

    .line 136
    .local p0, "this":Lorg/apache/commons/collections4/bag/UnmodifiableSortedBag;, "Lorg/apache/commons/collections4/bag/UnmodifiableSortedBag<TE;>;"
    .local p1, "filter":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<-TE;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 146
    .local p0, "this":Lorg/apache/commons/collections4/bag/UnmodifiableSortedBag;, "Lorg/apache/commons/collections4/bag/UnmodifiableSortedBag<TE;>;"
    .local p1, "coll":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public uniqueSet()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TE;>;"
        }
    .end annotation

    .line 162
    .local p0, "this":Lorg/apache/commons/collections4/bag/UnmodifiableSortedBag;, "Lorg/apache/commons/collections4/bag/UnmodifiableSortedBag<TE;>;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/bag/UnmodifiableSortedBag;->decorated()Lorg/apache/commons/collections4/SortedBag;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/collections4/SortedBag;->uniqueSet()Ljava/util/Set;

    move-result-object v0

    .line 163
    .local v0, "set":Ljava/util/Set;, "Ljava/util/Set<TE;>;"
    invoke-static {v0}, Lorg/apache/commons/collections4/set/UnmodifiableSet;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    return-object v1
.end method
