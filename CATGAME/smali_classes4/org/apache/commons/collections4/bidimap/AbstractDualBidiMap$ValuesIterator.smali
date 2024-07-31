.class public Lorg/apache/commons/collections4/bidimap/AbstractDualBidiMap$ValuesIterator;
.super Lorg/apache/commons/collections4/iterators/AbstractIteratorDecorator;
.source "AbstractDualBidiMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections4/bidimap/AbstractDualBidiMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "ValuesIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/commons/collections4/iterators/AbstractIteratorDecorator<",
        "TV;>;"
    }
.end annotation


# instance fields
.field protected canRemove:Z

.field protected lastValue:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field

.field protected final parent:Lorg/apache/commons/collections4/bidimap/AbstractDualBidiMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/collections4/bidimap/AbstractDualBidiMap<",
            "Ljava/lang/Object;",
            "TV;>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Ljava/util/Iterator;Lorg/apache/commons/collections4/bidimap/AbstractDualBidiMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "TV;>;",
            "Lorg/apache/commons/collections4/bidimap/AbstractDualBidiMap<",
            "*TV;>;)V"
        }
    .end annotation

    .line 590
    .local p0, "this":Lorg/apache/commons/collections4/bidimap/AbstractDualBidiMap$ValuesIterator;, "Lorg/apache/commons/collections4/bidimap/AbstractDualBidiMap$ValuesIterator<TV;>;"
    .local p1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<TV;>;"
    .local p2, "parent":Lorg/apache/commons/collections4/bidimap/AbstractDualBidiMap;, "Lorg/apache/commons/collections4/bidimap/AbstractDualBidiMap<*TV;>;"
    invoke-direct {p0, p1}, Lorg/apache/commons/collections4/iterators/AbstractIteratorDecorator;-><init>(Ljava/util/Iterator;)V

    .line 578
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/collections4/bidimap/AbstractDualBidiMap$ValuesIterator;->lastValue:Ljava/lang/Object;

    .line 581
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/collections4/bidimap/AbstractDualBidiMap$ValuesIterator;->canRemove:Z

    .line 591
    iput-object p2, p0, Lorg/apache/commons/collections4/bidimap/AbstractDualBidiMap$ValuesIterator;->parent:Lorg/apache/commons/collections4/bidimap/AbstractDualBidiMap;

    .line 592
    return-void
.end method


# virtual methods
.method public next()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 596
    .local p0, "this":Lorg/apache/commons/collections4/bidimap/AbstractDualBidiMap$ValuesIterator;, "Lorg/apache/commons/collections4/bidimap/AbstractDualBidiMap$ValuesIterator<TV;>;"
    invoke-super {p0}, Lorg/apache/commons/collections4/iterators/AbstractIteratorDecorator;->next()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/collections4/bidimap/AbstractDualBidiMap$ValuesIterator;->lastValue:Ljava/lang/Object;

    .line 597
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/apache/commons/collections4/bidimap/AbstractDualBidiMap$ValuesIterator;->canRemove:Z

    .line 598
    return-object v0
.end method

.method public remove()V
    .locals 2

    .line 603
    .local p0, "this":Lorg/apache/commons/collections4/bidimap/AbstractDualBidiMap$ValuesIterator;, "Lorg/apache/commons/collections4/bidimap/AbstractDualBidiMap$ValuesIterator<TV;>;"
    iget-boolean v0, p0, Lorg/apache/commons/collections4/bidimap/AbstractDualBidiMap$ValuesIterator;->canRemove:Z

    if-eqz v0, :cond_0

    .line 606
    invoke-super {p0}, Lorg/apache/commons/collections4/iterators/AbstractIteratorDecorator;->remove()V

    .line 607
    iget-object v0, p0, Lorg/apache/commons/collections4/bidimap/AbstractDualBidiMap$ValuesIterator;->parent:Lorg/apache/commons/collections4/bidimap/AbstractDualBidiMap;

    iget-object v0, v0, Lorg/apache/commons/collections4/bidimap/AbstractDualBidiMap;->reverseMap:Ljava/util/Map;

    iget-object v1, p0, Lorg/apache/commons/collections4/bidimap/AbstractDualBidiMap$ValuesIterator;->lastValue:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 608
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/collections4/bidimap/AbstractDualBidiMap$ValuesIterator;->lastValue:Ljava/lang/Object;

    .line 609
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/collections4/bidimap/AbstractDualBidiMap$ValuesIterator;->canRemove:Z

    .line 610
    return-void

    .line 604
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Iterator remove() can only be called once after next()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
