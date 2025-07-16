.class public final Lorg/apache/commons/collections/iterators/UnmodifiableOrderedMapIterator;
.super Ljava/lang/Object;
.source "UnmodifiableOrderedMapIterator.java"

# interfaces
.implements Lorg/apache/commons/collections/OrderedMapIterator;
.implements Lorg/apache/commons/collections/Unmodifiable;


# instance fields
.field private iterator:Lorg/apache/commons/collections/OrderedMapIterator;


# direct methods
.method private constructor <init>(Lorg/apache/commons/collections/OrderedMapIterator;)V
    .locals 0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Lorg/apache/commons/collections/iterators/UnmodifiableOrderedMapIterator;->iterator:Lorg/apache/commons/collections/OrderedMapIterator;

    return-void
.end method

.method public static decorate(Lorg/apache/commons/collections/OrderedMapIterator;)Lorg/apache/commons/collections/OrderedMapIterator;
    .locals 1

    if-eqz p0, :cond_1

    .line 46
    instance-of v0, p0, Lorg/apache/commons/collections/Unmodifiable;

    if-eqz v0, :cond_0

    return-object p0

    .line 49
    :cond_0
    new-instance v0, Lorg/apache/commons/collections/iterators/UnmodifiableOrderedMapIterator;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections/iterators/UnmodifiableOrderedMapIterator;-><init>(Lorg/apache/commons/collections/OrderedMapIterator;)V

    return-object v0

    .line 44
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "OrderedMapIterator must not be null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public getKey()Ljava/lang/Object;
    .locals 1

    .line 81
    iget-object v0, p0, Lorg/apache/commons/collections/iterators/UnmodifiableOrderedMapIterator;->iterator:Lorg/apache/commons/collections/OrderedMapIterator;

    invoke-interface {v0}, Lorg/apache/commons/collections/OrderedMapIterator;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1

    .line 85
    iget-object v0, p0, Lorg/apache/commons/collections/iterators/UnmodifiableOrderedMapIterator;->iterator:Lorg/apache/commons/collections/OrderedMapIterator;

    invoke-interface {v0}, Lorg/apache/commons/collections/OrderedMapIterator;->getValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public hasNext()Z
    .locals 1

    .line 65
    iget-object v0, p0, Lorg/apache/commons/collections/iterators/UnmodifiableOrderedMapIterator;->iterator:Lorg/apache/commons/collections/OrderedMapIterator;

    invoke-interface {v0}, Lorg/apache/commons/collections/OrderedMapIterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public hasPrevious()Z
    .locals 1

    .line 73
    iget-object v0, p0, Lorg/apache/commons/collections/iterators/UnmodifiableOrderedMapIterator;->iterator:Lorg/apache/commons/collections/OrderedMapIterator;

    invoke-interface {v0}, Lorg/apache/commons/collections/OrderedMapIterator;->hasPrevious()Z

    move-result v0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 1

    .line 69
    iget-object v0, p0, Lorg/apache/commons/collections/iterators/UnmodifiableOrderedMapIterator;->iterator:Lorg/apache/commons/collections/OrderedMapIterator;

    invoke-interface {v0}, Lorg/apache/commons/collections/OrderedMapIterator;->next()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public previous()Ljava/lang/Object;
    .locals 1

    .line 77
    iget-object v0, p0, Lorg/apache/commons/collections/iterators/UnmodifiableOrderedMapIterator;->iterator:Lorg/apache/commons/collections/OrderedMapIterator;

    invoke-interface {v0}, Lorg/apache/commons/collections/OrderedMapIterator;->previous()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 2

    .line 93
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "remove() is not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 89
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "setValue() is not supported"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
