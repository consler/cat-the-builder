.class Lorg/apache/commons/collections/bidimap/TreeBidiMap$ViewMapIterator;
.super Lorg/apache/commons/collections/bidimap/TreeBidiMap$ViewIterator;
.source "TreeBidiMap.java"

# interfaces
.implements Lorg/apache/commons/collections/OrderedMapIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections/bidimap/TreeBidiMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ViewMapIterator"
.end annotation


# instance fields
.field private final oppositeType:I


# direct methods
.method constructor <init>(Lorg/apache/commons/collections/bidimap/TreeBidiMap;I)V
    .locals 0

    .line 1638
    invoke-direct {p0, p1, p2, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$ViewIterator;-><init>(Lorg/apache/commons/collections/bidimap/TreeBidiMap;II)V

    .line 1639
    iget p1, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap$ViewMapIterator;->dataType:I

    invoke-static {p1}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->access$2300(I)I

    move-result p1

    iput p1, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap$ViewMapIterator;->oppositeType:I

    return-void
.end method


# virtual methods
.method public getKey()Ljava/lang/Object;
    .locals 2

    .line 1643
    iget-object v0, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap$ViewMapIterator;->lastReturnedNode:Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    if-eqz v0, :cond_0

    .line 1646
    iget-object v0, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap$ViewMapIterator;->lastReturnedNode:Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    iget v1, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap$ViewMapIterator;->dataType:I

    invoke-static {v0, v1}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$000(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Ljava/lang/Comparable;

    move-result-object v0

    return-object v0

    .line 1644
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Iterator getKey() can only be called after next() and before remove()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 2

    .line 1650
    iget-object v0, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap$ViewMapIterator;->lastReturnedNode:Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    if-eqz v0, :cond_0

    .line 1653
    iget-object v0, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap$ViewMapIterator;->lastReturnedNode:Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    iget v1, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap$ViewMapIterator;->oppositeType:I

    invoke-static {v0, v1}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$000(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Ljava/lang/Comparable;

    move-result-object v0

    return-object v0

    .line 1651
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Iterator getValue() can only be called after next() and before remove()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1657
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method
