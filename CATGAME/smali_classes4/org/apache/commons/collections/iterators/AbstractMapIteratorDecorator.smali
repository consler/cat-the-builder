.class public Lorg/apache/commons/collections/iterators/AbstractMapIteratorDecorator;
.super Ljava/lang/Object;
.source "AbstractMapIteratorDecorator.java"

# interfaces
.implements Lorg/apache/commons/collections/MapIterator;


# instance fields
.field protected final iterator:Lorg/apache/commons/collections/MapIterator;


# direct methods
.method public constructor <init>(Lorg/apache/commons/collections/MapIterator;)V
    .locals 1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 48
    iput-object p1, p0, Lorg/apache/commons/collections/iterators/AbstractMapIteratorDecorator;->iterator:Lorg/apache/commons/collections/MapIterator;

    return-void

    .line 46
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "MapIterator must not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public getKey()Ljava/lang/Object;
    .locals 1

    .line 74
    iget-object v0, p0, Lorg/apache/commons/collections/iterators/AbstractMapIteratorDecorator;->iterator:Lorg/apache/commons/collections/MapIterator;

    invoke-interface {v0}, Lorg/apache/commons/collections/MapIterator;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected getMapIterator()Lorg/apache/commons/collections/MapIterator;
    .locals 1

    .line 57
    iget-object v0, p0, Lorg/apache/commons/collections/iterators/AbstractMapIteratorDecorator;->iterator:Lorg/apache/commons/collections/MapIterator;

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1

    .line 78
    iget-object v0, p0, Lorg/apache/commons/collections/iterators/AbstractMapIteratorDecorator;->iterator:Lorg/apache/commons/collections/MapIterator;

    invoke-interface {v0}, Lorg/apache/commons/collections/MapIterator;->getValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public hasNext()Z
    .locals 1

    .line 62
    iget-object v0, p0, Lorg/apache/commons/collections/iterators/AbstractMapIteratorDecorator;->iterator:Lorg/apache/commons/collections/MapIterator;

    invoke-interface {v0}, Lorg/apache/commons/collections/MapIterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 1

    .line 66
    iget-object v0, p0, Lorg/apache/commons/collections/iterators/AbstractMapIteratorDecorator;->iterator:Lorg/apache/commons/collections/MapIterator;

    invoke-interface {v0}, Lorg/apache/commons/collections/MapIterator;->next()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 1

    .line 70
    iget-object v0, p0, Lorg/apache/commons/collections/iterators/AbstractMapIteratorDecorator;->iterator:Lorg/apache/commons/collections/MapIterator;

    invoke-interface {v0}, Lorg/apache/commons/collections/MapIterator;->remove()V

    return-void
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 82
    iget-object v0, p0, Lorg/apache/commons/collections/iterators/AbstractMapIteratorDecorator;->iterator:Lorg/apache/commons/collections/MapIterator;

    invoke-interface {v0, p1}, Lorg/apache/commons/collections/MapIterator;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
