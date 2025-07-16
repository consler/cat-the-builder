.class public final Lorg/apache/commons/collections4/collection/UnmodifiableBoundedCollection;
.super Lorg/apache/commons/collections4/collection/AbstractCollectionDecorator;
.source "UnmodifiableBoundedCollection.java"

# interfaces
.implements Lorg/apache/commons/collections4/BoundedCollection;
.implements Lorg/apache/commons/collections4/Unmodifiable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/commons/collections4/collection/AbstractCollectionDecorator<",
        "TE;>;",
        "Lorg/apache/commons/collections4/BoundedCollection<",
        "TE;>;",
        "Lorg/apache/commons/collections4/Unmodifiable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x62b549d99a7f6feaL


# direct methods
.method private constructor <init>(Lorg/apache/commons/collections4/BoundedCollection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/BoundedCollection<",
            "+TE;>;)V"
        }
    .end annotation

    .line 116
    invoke-direct {p0, p1}, Lorg/apache/commons/collections4/collection/AbstractCollectionDecorator;-><init>(Ljava/util/Collection;)V

    return-void
.end method

.method public static unmodifiableBoundedCollection(Ljava/util/Collection;)Lorg/apache/commons/collections4/BoundedCollection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "+TE;>;)",
            "Lorg/apache/commons/collections4/BoundedCollection<",
            "TE;>;"
        }
    .end annotation

    if-eqz p0, :cond_5

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x3e8

    if-ge v0, v1, :cond_3

    .line 92
    instance-of v1, p0, Lorg/apache/commons/collections4/BoundedCollection;

    if-eqz v1, :cond_0

    goto :goto_2

    .line 95
    :cond_0
    instance-of v1, p0, Lorg/apache/commons/collections4/collection/AbstractCollectionDecorator;

    if-eqz v1, :cond_1

    .line 96
    check-cast p0, Lorg/apache/commons/collections4/collection/AbstractCollectionDecorator;

    invoke-virtual {p0}, Lorg/apache/commons/collections4/collection/AbstractCollectionDecorator;->decorated()Ljava/util/Collection;

    move-result-object p0

    goto :goto_1

    .line 97
    :cond_1
    instance-of v1, p0, Lorg/apache/commons/collections4/collection/SynchronizedCollection;

    if-eqz v1, :cond_2

    .line 98
    check-cast p0, Lorg/apache/commons/collections4/collection/SynchronizedCollection;

    invoke-virtual {p0}, Lorg/apache/commons/collections4/collection/SynchronizedCollection;->decorated()Ljava/util/Collection;

    move-result-object p0

    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 102
    :cond_3
    :goto_2
    instance-of v0, p0, Lorg/apache/commons/collections4/BoundedCollection;

    if-eqz v0, :cond_4

    .line 105
    new-instance v0, Lorg/apache/commons/collections4/collection/UnmodifiableBoundedCollection;

    check-cast p0, Lorg/apache/commons/collections4/BoundedCollection;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections4/collection/UnmodifiableBoundedCollection;-><init>(Lorg/apache/commons/collections4/BoundedCollection;)V

    return-object v0

    .line 103
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Collection is not a bounded collection."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 87
    :cond_5
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "Collection must not be null."

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static unmodifiableBoundedCollection(Lorg/apache/commons/collections4/BoundedCollection;)Lorg/apache/commons/collections4/BoundedCollection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/commons/collections4/BoundedCollection<",
            "+TE;>;)",
            "Lorg/apache/commons/collections4/BoundedCollection<",
            "TE;>;"
        }
    .end annotation

    .line 63
    instance-of v0, p0, Lorg/apache/commons/collections4/Unmodifiable;

    if-eqz v0, :cond_0

    return-object p0

    .line 68
    :cond_0
    new-instance v0, Lorg/apache/commons/collections4/collection/UnmodifiableBoundedCollection;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections4/collection/UnmodifiableBoundedCollection;-><init>(Lorg/apache/commons/collections4/BoundedCollection;)V

    return-object v0
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 127
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TE;>;)Z"
        }
    .end annotation

    .line 132
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public clear()V
    .locals 1

    .line 137
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method protected bridge synthetic decorated()Ljava/util/Collection;
    .locals 1

    .line 47
    invoke-virtual {p0}, Lorg/apache/commons/collections4/collection/UnmodifiableBoundedCollection;->decorated()Lorg/apache/commons/collections4/BoundedCollection;

    move-result-object v0

    return-object v0
.end method

.method protected decorated()Lorg/apache/commons/collections4/BoundedCollection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/collections4/BoundedCollection<",
            "TE;>;"
        }
    .end annotation

    .line 176
    invoke-super {p0}, Lorg/apache/commons/collections4/collection/AbstractCollectionDecorator;->decorated()Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/collections4/BoundedCollection;

    return-object v0
.end method

.method public isFull()Z
    .locals 1

    .line 166
    invoke-virtual {p0}, Lorg/apache/commons/collections4/collection/UnmodifiableBoundedCollection;->decorated()Lorg/apache/commons/collections4/BoundedCollection;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/collections4/BoundedCollection;->isFull()Z

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

    .line 122
    invoke-virtual {p0}, Lorg/apache/commons/collections4/collection/UnmodifiableBoundedCollection;->decorated()Lorg/apache/commons/collections4/BoundedCollection;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/collections4/BoundedCollection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/collections4/iterators/UnmodifiableIterator;->unmodifiableIterator(Ljava/util/Iterator;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public maxSize()I
    .locals 1

    .line 171
    invoke-virtual {p0}, Lorg/apache/commons/collections4/collection/UnmodifiableBoundedCollection;->decorated()Lorg/apache/commons/collections4/BoundedCollection;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/collections4/BoundedCollection;->maxSize()I

    move-result v0

    return v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 0

    .line 142
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 155
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public removeIf(Ljava/util/function/Predicate;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "-TE;>;)Z"
        }
    .end annotation

    .line 150
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 160
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method
