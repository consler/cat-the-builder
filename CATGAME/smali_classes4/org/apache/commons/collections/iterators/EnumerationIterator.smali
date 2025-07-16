.class public Lorg/apache/commons/collections/iterators/EnumerationIterator;
.super Ljava/lang/Object;
.source "EnumerationIterator.java"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field private collection:Ljava/util/Collection;

.field private enumeration:Ljava/util/Enumeration;

.field private last:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 49
    invoke-direct {p0, v0, v0}, Lorg/apache/commons/collections/iterators/EnumerationIterator;-><init>(Ljava/util/Enumeration;Ljava/util/Collection;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Enumeration;)V
    .locals 1

    const/4 v0, 0x0

    .line 59
    invoke-direct {p0, p1, v0}, Lorg/apache/commons/collections/iterators/EnumerationIterator;-><init>(Ljava/util/Enumeration;Ljava/util/Collection;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Enumeration;Ljava/util/Collection;)V
    .locals 0

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput-object p1, p0, Lorg/apache/commons/collections/iterators/EnumerationIterator;->enumeration:Ljava/util/Enumeration;

    .line 72
    iput-object p2, p0, Lorg/apache/commons/collections/iterators/EnumerationIterator;->collection:Ljava/util/Collection;

    const/4 p1, 0x0

    .line 73
    iput-object p1, p0, Lorg/apache/commons/collections/iterators/EnumerationIterator;->last:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public getEnumeration()Ljava/util/Enumeration;
    .locals 1

    .line 129
    iget-object v0, p0, Lorg/apache/commons/collections/iterators/EnumerationIterator;->enumeration:Ljava/util/Enumeration;

    return-object v0
.end method

.method public hasNext()Z
    .locals 1

    .line 85
    iget-object v0, p0, Lorg/apache/commons/collections/iterators/EnumerationIterator;->enumeration:Ljava/util/Enumeration;

    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 1

    .line 95
    iget-object v0, p0, Lorg/apache/commons/collections/iterators/EnumerationIterator;->enumeration:Ljava/util/Enumeration;

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/collections/iterators/EnumerationIterator;->last:Ljava/lang/Object;

    return-object v0
.end method

.method public remove()V
    .locals 2

    .line 110
    iget-object v0, p0, Lorg/apache/commons/collections/iterators/EnumerationIterator;->collection:Ljava/util/Collection;

    if-eqz v0, :cond_1

    .line 111
    iget-object v1, p0, Lorg/apache/commons/collections/iterators/EnumerationIterator;->last:Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 112
    invoke-interface {v0, v1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    return-void

    .line 114
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "next() must have been called for remove() to function"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 117
    :cond_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "No Collection associated with this Iterator"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setEnumeration(Ljava/util/Enumeration;)V
    .locals 0

    .line 138
    iput-object p1, p0, Lorg/apache/commons/collections/iterators/EnumerationIterator;->enumeration:Ljava/util/Enumeration;

    return-void
.end method
