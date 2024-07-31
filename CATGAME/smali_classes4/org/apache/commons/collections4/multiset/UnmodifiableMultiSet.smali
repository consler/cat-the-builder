.class public final Lorg/apache/commons/collections4/multiset/UnmodifiableMultiSet;
.super Lorg/apache/commons/collections4/multiset/AbstractMultiSetDecorator;
.source "UnmodifiableMultiSet.java"

# interfaces
.implements Lorg/apache/commons/collections4/Unmodifiable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/commons/collections4/multiset/AbstractMultiSetDecorator<",
        "TE;>;",
        "Lorg/apache/commons/collections4/Unmodifiable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1337953L


# direct methods
.method private constructor <init>(Lorg/apache/commons/collections4/MultiSet;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/MultiSet<",
            "+TE;>;)V"
        }
    .end annotation

    .line 75
    .local p0, "this":Lorg/apache/commons/collections4/multiset/UnmodifiableMultiSet;, "Lorg/apache/commons/collections4/multiset/UnmodifiableMultiSet<TE;>;"
    .local p1, "multiset":Lorg/apache/commons/collections4/MultiSet;, "Lorg/apache/commons/collections4/MultiSet<+TE;>;"
    invoke-direct {p0, p1}, Lorg/apache/commons/collections4/multiset/AbstractMultiSetDecorator;-><init>(Lorg/apache/commons/collections4/MultiSet;)V

    .line 76
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

    .line 100
    .local p0, "this":Lorg/apache/commons/collections4/multiset/UnmodifiableMultiSet;, "Lorg/apache/commons/collections4/multiset/UnmodifiableMultiSet<TE;>;"
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 101
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-virtual {p0, v0}, Lorg/apache/commons/collections4/multiset/UnmodifiableMultiSet;->setCollection(Ljava/util/Collection;)V

    .line 102
    return-void
.end method

.method public static unmodifiableMultiSet(Lorg/apache/commons/collections4/MultiSet;)Lorg/apache/commons/collections4/MultiSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/commons/collections4/MultiSet<",
            "+TE;>;)",
            "Lorg/apache/commons/collections4/MultiSet<",
            "TE;>;"
        }
    .end annotation

    .line 58
    .local p0, "multiset":Lorg/apache/commons/collections4/MultiSet;, "Lorg/apache/commons/collections4/MultiSet<+TE;>;"
    instance-of v0, p0, Lorg/apache/commons/collections4/Unmodifiable;

    if-eqz v0, :cond_0

    .line 60
    move-object v0, p0

    .line 61
    .local v0, "tmpMultiSet":Lorg/apache/commons/collections4/MultiSet;, "Lorg/apache/commons/collections4/MultiSet<TE;>;"
    return-object v0

    .line 63
    .end local v0    # "tmpMultiSet":Lorg/apache/commons/collections4/MultiSet;, "Lorg/apache/commons/collections4/MultiSet<TE;>;"
    :cond_0
    new-instance v0, Lorg/apache/commons/collections4/multiset/UnmodifiableMultiSet;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections4/multiset/UnmodifiableMultiSet;-><init>(Lorg/apache/commons/collections4/MultiSet;)V

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

    .line 86
    .local p0, "this":Lorg/apache/commons/collections4/multiset/UnmodifiableMultiSet;, "Lorg/apache/commons/collections4/multiset/UnmodifiableMultiSet<TE;>;"
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 87
    invoke-virtual {p0}, Lorg/apache/commons/collections4/multiset/UnmodifiableMultiSet;->decorated()Lorg/apache/commons/collections4/MultiSet;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 88
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;I)I
    .locals 1
    .param p2, "count"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;I)I"
        }
    .end annotation

    .line 156
    .local p0, "this":Lorg/apache/commons/collections4/multiset/UnmodifiableMultiSet;, "Lorg/apache/commons/collections4/multiset/UnmodifiableMultiSet<TE;>;"
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

    .line 112
    .local p0, "this":Lorg/apache/commons/collections4/multiset/UnmodifiableMultiSet;, "Lorg/apache/commons/collections4/multiset/UnmodifiableMultiSet<TE;>;"
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

    .line 117
    .local p0, "this":Lorg/apache/commons/collections4/multiset/UnmodifiableMultiSet;, "Lorg/apache/commons/collections4/multiset/UnmodifiableMultiSet<TE;>;"
    .local p1, "coll":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public clear()V
    .locals 1

    .line 122
    .local p0, "this":Lorg/apache/commons/collections4/multiset/UnmodifiableMultiSet;, "Lorg/apache/commons/collections4/multiset/UnmodifiableMultiSet<TE;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public entrySet()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lorg/apache/commons/collections4/MultiSet$Entry<",
            "TE;>;>;"
        }
    .end annotation

    .line 172
    .local p0, "this":Lorg/apache/commons/collections4/multiset/UnmodifiableMultiSet;, "Lorg/apache/commons/collections4/multiset/UnmodifiableMultiSet<TE;>;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/multiset/UnmodifiableMultiSet;->decorated()Lorg/apache/commons/collections4/MultiSet;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/collections4/MultiSet;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 173
    .local v0, "set":Ljava/util/Set;, "Ljava/util/Set<Lorg/apache/commons/collections4/MultiSet$Entry<TE;>;>;"
    invoke-static {v0}, Lorg/apache/commons/collections4/set/UnmodifiableSet;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    return-object v1
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

    .line 107
    .local p0, "this":Lorg/apache/commons/collections4/multiset/UnmodifiableMultiSet;, "Lorg/apache/commons/collections4/multiset/UnmodifiableMultiSet<TE;>;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/multiset/UnmodifiableMultiSet;->decorated()Lorg/apache/commons/collections4/MultiSet;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/collections4/MultiSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/collections4/iterators/UnmodifiableIterator;->unmodifiableIterator(Ljava/util/Iterator;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;I)I
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "count"    # I

    .line 161
    .local p0, "this":Lorg/apache/commons/collections4/multiset/UnmodifiableMultiSet;, "Lorg/apache/commons/collections4/multiset/UnmodifiableMultiSet<TE;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;

    .line 127
    .local p0, "this":Lorg/apache/commons/collections4/multiset/UnmodifiableMultiSet;, "Lorg/apache/commons/collections4/multiset/UnmodifiableMultiSet<TE;>;"
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

    .line 140
    .local p0, "this":Lorg/apache/commons/collections4/multiset/UnmodifiableMultiSet;, "Lorg/apache/commons/collections4/multiset/UnmodifiableMultiSet<TE;>;"
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

    .line 135
    .local p0, "this":Lorg/apache/commons/collections4/multiset/UnmodifiableMultiSet;, "Lorg/apache/commons/collections4/multiset/UnmodifiableMultiSet<TE;>;"
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

    .line 145
    .local p0, "this":Lorg/apache/commons/collections4/multiset/UnmodifiableMultiSet;, "Lorg/apache/commons/collections4/multiset/UnmodifiableMultiSet<TE;>;"
    .local p1, "coll":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setCount(Ljava/lang/Object;I)I
    .locals 1
    .param p2, "count"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;I)I"
        }
    .end annotation

    .line 151
    .local p0, "this":Lorg/apache/commons/collections4/multiset/UnmodifiableMultiSet;, "Lorg/apache/commons/collections4/multiset/UnmodifiableMultiSet<TE;>;"
    .local p1, "object":Ljava/lang/Object;, "TE;"
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

    .line 166
    .local p0, "this":Lorg/apache/commons/collections4/multiset/UnmodifiableMultiSet;, "Lorg/apache/commons/collections4/multiset/UnmodifiableMultiSet<TE;>;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/multiset/UnmodifiableMultiSet;->decorated()Lorg/apache/commons/collections4/MultiSet;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/collections4/MultiSet;->uniqueSet()Ljava/util/Set;

    move-result-object v0

    .line 167
    .local v0, "set":Ljava/util/Set;, "Ljava/util/Set<TE;>;"
    invoke-static {v0}, Lorg/apache/commons/collections4/set/UnmodifiableSet;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    return-object v1
.end method
