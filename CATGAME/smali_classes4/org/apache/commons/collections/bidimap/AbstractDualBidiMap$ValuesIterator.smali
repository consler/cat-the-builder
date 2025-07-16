.class public Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap$ValuesIterator;
.super Lorg/apache/commons/collections/iterators/AbstractIteratorDecorator;
.source "AbstractDualBidiMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "ValuesIterator"
.end annotation


# instance fields
.field protected canRemove:Z

.field protected lastValue:Ljava/lang/Object;

.field protected final parent:Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;


# direct methods
.method protected constructor <init>(Ljava/util/Iterator;Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;)V
    .locals 0

    .line 511
    invoke-direct {p0, p1}, Lorg/apache/commons/collections/iterators/AbstractIteratorDecorator;-><init>(Ljava/util/Iterator;)V

    const/4 p1, 0x0

    .line 501
    iput-object p1, p0, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap$ValuesIterator;->lastValue:Ljava/lang/Object;

    const/4 p1, 0x0

    .line 503
    iput-boolean p1, p0, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap$ValuesIterator;->canRemove:Z

    .line 512
    iput-object p2, p0, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap$ValuesIterator;->parent:Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;

    return-void
.end method


# virtual methods
.method public next()Ljava/lang/Object;
    .locals 2

    .line 516
    invoke-super {p0}, Lorg/apache/commons/collections/iterators/AbstractIteratorDecorator;->next()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap$ValuesIterator;->lastValue:Ljava/lang/Object;

    const/4 v1, 0x1

    .line 517
    iput-boolean v1, p0, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap$ValuesIterator;->canRemove:Z

    return-object v0
.end method

.method public remove()V
    .locals 2

    .line 522
    iget-boolean v0, p0, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap$ValuesIterator;->canRemove:Z

    if-eqz v0, :cond_0

    .line 525
    invoke-super {p0}, Lorg/apache/commons/collections/iterators/AbstractIteratorDecorator;->remove()V

    .line 526
    iget-object v0, p0, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap$ValuesIterator;->parent:Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;

    iget-object v0, v0, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;->maps:[Ljava/util/Map;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    iget-object v1, p0, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap$ValuesIterator;->lastValue:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    .line 527
    iput-object v0, p0, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap$ValuesIterator;->lastValue:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 528
    iput-boolean v0, p0, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap$ValuesIterator;->canRemove:Z

    return-void

    .line 523
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Iterator remove() can only be called once after next()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
