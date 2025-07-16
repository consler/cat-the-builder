.class public final Lorg/apache/commons/collections/collection/UnmodifiableBoundedCollection;
.super Lorg/apache/commons/collections/collection/AbstractSerializableCollectionDecorator;
.source "UnmodifiableBoundedCollection.java"

# interfaces
.implements Lorg/apache/commons/collections/BoundedCollection;


# static fields
.field private static final serialVersionUID:J = -0x62b549d99a7f6feaL


# direct methods
.method private constructor <init>(Lorg/apache/commons/collections/BoundedCollection;)V
    .locals 0

    .line 101
    invoke-direct {p0, p1}, Lorg/apache/commons/collections/collection/AbstractSerializableCollectionDecorator;-><init>(Ljava/util/Collection;)V

    return-void
.end method

.method public static decorate(Lorg/apache/commons/collections/BoundedCollection;)Lorg/apache/commons/collections/BoundedCollection;
    .locals 1

    .line 57
    new-instance v0, Lorg/apache/commons/collections/collection/UnmodifiableBoundedCollection;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections/collection/UnmodifiableBoundedCollection;-><init>(Lorg/apache/commons/collections/BoundedCollection;)V

    return-object v0
.end method

.method public static decorateUsing(Ljava/util/Collection;)Lorg/apache/commons/collections/BoundedCollection;
    .locals 2

    if-eqz p0, :cond_4

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x3e8

    if-ge v0, v1, :cond_2

    .line 77
    instance-of v1, p0, Lorg/apache/commons/collections/BoundedCollection;

    if-eqz v1, :cond_0

    goto :goto_2

    .line 79
    :cond_0
    instance-of v1, p0, Lorg/apache/commons/collections/collection/AbstractCollectionDecorator;

    if-eqz v1, :cond_1

    .line 80
    check-cast p0, Lorg/apache/commons/collections/collection/AbstractCollectionDecorator;

    iget-object p0, p0, Lorg/apache/commons/collections/collection/AbstractCollectionDecorator;->collection:Ljava/util/Collection;

    goto :goto_1

    .line 81
    :cond_1
    instance-of v1, p0, Lorg/apache/commons/collections/collection/SynchronizedCollection;

    if-eqz v1, :cond_2

    .line 82
    check-cast p0, Lorg/apache/commons/collections/collection/SynchronizedCollection;

    iget-object p0, p0, Lorg/apache/commons/collections/collection/SynchronizedCollection;->collection:Ljava/util/Collection;

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 88
    :cond_2
    :goto_2
    instance-of v0, p0, Lorg/apache/commons/collections/BoundedCollection;

    if-eqz v0, :cond_3

    .line 91
    new-instance v0, Lorg/apache/commons/collections/collection/UnmodifiableBoundedCollection;

    check-cast p0, Lorg/apache/commons/collections/BoundedCollection;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections/collection/UnmodifiableBoundedCollection;-><init>(Lorg/apache/commons/collections/BoundedCollection;)V

    return-object v0

    .line 89
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "The collection is not a bounded collection"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 72
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "The collection must not be null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 0

    .line 110
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 0

    .line 114
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public clear()V
    .locals 1

    .line 118
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public isFull()Z
    .locals 1

    .line 135
    iget-object v0, p0, Lorg/apache/commons/collections/collection/UnmodifiableBoundedCollection;->collection:Ljava/util/Collection;

    check-cast v0, Lorg/apache/commons/collections/BoundedCollection;

    invoke-interface {v0}, Lorg/apache/commons/collections/BoundedCollection;->isFull()Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1

    .line 106
    invoke-virtual {p0}, Lorg/apache/commons/collections/collection/UnmodifiableBoundedCollection;->getCollection()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/collections/iterators/UnmodifiableIterator;->decorate(Ljava/util/Iterator;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public maxSize()I
    .locals 1

    .line 139
    iget-object v0, p0, Lorg/apache/commons/collections/collection/UnmodifiableBoundedCollection;->collection:Ljava/util/Collection;

    check-cast v0, Lorg/apache/commons/collections/BoundedCollection;

    invoke-interface {v0}, Lorg/apache/commons/collections/BoundedCollection;->maxSize()I

    move-result v0

    return v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 0

    .line 122
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 0

    .line 126
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 0

    .line 130
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method
