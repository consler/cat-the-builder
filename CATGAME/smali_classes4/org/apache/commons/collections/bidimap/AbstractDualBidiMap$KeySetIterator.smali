.class public Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap$KeySetIterator;
.super Lorg/apache/commons/collections/iterators/AbstractIteratorDecorator;
.source "AbstractDualBidiMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "KeySetIterator"
.end annotation


# instance fields
.field protected canRemove:Z

.field protected lastKey:Ljava/lang/Object;

.field protected final parent:Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;


# direct methods
.method protected constructor <init>(Ljava/util/Iterator;Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;)V
    .locals 0

    .line 438
    invoke-direct {p0, p1}, Lorg/apache/commons/collections/iterators/AbstractIteratorDecorator;-><init>(Ljava/util/Iterator;)V

    const/4 p1, 0x0

    .line 428
    iput-object p1, p0, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap$KeySetIterator;->lastKey:Ljava/lang/Object;

    const/4 p1, 0x0

    .line 430
    iput-boolean p1, p0, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap$KeySetIterator;->canRemove:Z

    .line 439
    iput-object p2, p0, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap$KeySetIterator;->parent:Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;

    return-void
.end method


# virtual methods
.method public next()Ljava/lang/Object;
    .locals 2

    .line 443
    invoke-super {p0}, Lorg/apache/commons/collections/iterators/AbstractIteratorDecorator;->next()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap$KeySetIterator;->lastKey:Ljava/lang/Object;

    const/4 v1, 0x1

    .line 444
    iput-boolean v1, p0, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap$KeySetIterator;->canRemove:Z

    return-object v0
.end method

.method public remove()V
    .locals 4

    .line 449
    iget-boolean v0, p0, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap$KeySetIterator;->canRemove:Z

    if-eqz v0, :cond_0

    .line 452
    iget-object v0, p0, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap$KeySetIterator;->parent:Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;

    iget-object v0, v0, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;->maps:[Ljava/util/Map;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v2, p0, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap$KeySetIterator;->lastKey:Ljava/lang/Object;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 453
    invoke-super {p0}, Lorg/apache/commons/collections/iterators/AbstractIteratorDecorator;->remove()V

    .line 454
    iget-object v2, p0, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap$KeySetIterator;->parent:Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;

    iget-object v2, v2, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;->maps:[Ljava/util/Map;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-interface {v2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    .line 455
    iput-object v0, p0, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap$KeySetIterator;->lastKey:Ljava/lang/Object;

    .line 456
    iput-boolean v1, p0, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap$KeySetIterator;->canRemove:Z

    return-void

    .line 450
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Iterator remove() can only be called once after next()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
