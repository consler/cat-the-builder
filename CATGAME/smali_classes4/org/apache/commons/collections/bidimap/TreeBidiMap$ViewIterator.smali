.class Lorg/apache/commons/collections/bidimap/TreeBidiMap$ViewIterator;
.super Ljava/lang/Object;
.source "TreeBidiMap.java"

# interfaces
.implements Lorg/apache/commons/collections/OrderedIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections/bidimap/TreeBidiMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ViewIterator"
.end annotation


# instance fields
.field protected final dataType:I

.field private expectedModifications:I

.field protected lastReturnedNode:Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

.field protected final main:Lorg/apache/commons/collections/bidimap/TreeBidiMap;

.field protected nextNode:Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

.field protected final orderType:I

.field protected previousNode:Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;


# direct methods
.method constructor <init>(Lorg/apache/commons/collections/bidimap/TreeBidiMap;II)V
    .locals 0

    .line 1540
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1541
    iput-object p1, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap$ViewIterator;->main:Lorg/apache/commons/collections/bidimap/TreeBidiMap;

    .line 1542
    iput p2, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap$ViewIterator;->orderType:I

    .line 1543
    iput p3, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap$ViewIterator;->dataType:I

    .line 1544
    invoke-static {p1}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->access$1600(Lorg/apache/commons/collections/bidimap/TreeBidiMap;)I

    move-result p3

    iput p3, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap$ViewIterator;->expectedModifications:I

    .line 1545
    invoke-static {p1}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->access$1700(Lorg/apache/commons/collections/bidimap/TreeBidiMap;)[Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object p1

    aget-object p1, p1, p2

    invoke-static {p1, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->access$1800(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap$ViewIterator;->nextNode:Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    const/4 p1, 0x0

    .line 1546
    iput-object p1, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap$ViewIterator;->lastReturnedNode:Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    .line 1547
    iput-object p1, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap$ViewIterator;->previousNode:Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    return-void
.end method


# virtual methods
.method protected doGetData()Ljava/lang/Object;
    .locals 3

    .line 1592
    iget v0, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap$ViewIterator;->dataType:I

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 1600
    :cond_0
    new-instance v0, Lorg/apache/commons/collections/keyvalue/UnmodifiableMapEntry;

    iget-object v1, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap$ViewIterator;->lastReturnedNode:Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    invoke-virtual {v1}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->getValue()Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap$ViewIterator;->lastReturnedNode:Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    invoke-virtual {v2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/collections/keyvalue/UnmodifiableMapEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    .line 1598
    :cond_1
    iget-object v0, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap$ViewIterator;->lastReturnedNode:Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    return-object v0

    .line 1596
    :cond_2
    iget-object v0, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap$ViewIterator;->lastReturnedNode:Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    invoke-virtual {v0}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->getValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 1594
    :cond_3
    iget-object v0, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap$ViewIterator;->lastReturnedNode:Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    invoke-virtual {v0}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final hasNext()Z
    .locals 1

    .line 1551
    iget-object v0, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap$ViewIterator;->nextNode:Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasPrevious()Z
    .locals 1

    .line 1568
    iget-object v0, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap$ViewIterator;->previousNode:Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final next()Ljava/lang/Object;
    .locals 3

    .line 1555
    iget-object v0, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap$ViewIterator;->nextNode:Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    if-eqz v0, :cond_1

    .line 1558
    iget-object v0, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap$ViewIterator;->main:Lorg/apache/commons/collections/bidimap/TreeBidiMap;

    invoke-static {v0}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->access$1600(Lorg/apache/commons/collections/bidimap/TreeBidiMap;)I

    move-result v0

    iget v1, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap$ViewIterator;->expectedModifications:I

    if-ne v0, v1, :cond_0

    .line 1561
    iget-object v0, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap$ViewIterator;->nextNode:Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    iput-object v0, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap$ViewIterator;->lastReturnedNode:Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    .line 1562
    iput-object v0, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap$ViewIterator;->previousNode:Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    .line 1563
    iget-object v1, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap$ViewIterator;->main:Lorg/apache/commons/collections/bidimap/TreeBidiMap;

    iget v2, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap$ViewIterator;->orderType:I

    invoke-static {v1, v0, v2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->access$1900(Lorg/apache/commons/collections/bidimap/TreeBidiMap;Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap$ViewIterator;->nextNode:Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    .line 1564
    invoke-virtual {p0}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$ViewIterator;->doGetData()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 1559
    :cond_0
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    .line 1556
    :cond_1
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public previous()Ljava/lang/Object;
    .locals 3

    .line 1572
    iget-object v0, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap$ViewIterator;->previousNode:Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    if-eqz v0, :cond_2

    .line 1575
    iget-object v0, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap$ViewIterator;->main:Lorg/apache/commons/collections/bidimap/TreeBidiMap;

    invoke-static {v0}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->access$1600(Lorg/apache/commons/collections/bidimap/TreeBidiMap;)I

    move-result v0

    iget v1, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap$ViewIterator;->expectedModifications:I

    if-ne v0, v1, :cond_1

    .line 1578
    iget-object v0, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap$ViewIterator;->lastReturnedNode:Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    iput-object v0, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap$ViewIterator;->nextNode:Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    if-nez v0, :cond_0

    .line 1580
    iget-object v0, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap$ViewIterator;->main:Lorg/apache/commons/collections/bidimap/TreeBidiMap;

    iget-object v1, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap$ViewIterator;->previousNode:Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    iget v2, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap$ViewIterator;->orderType:I

    invoke-static {v0, v1, v2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->access$1900(Lorg/apache/commons/collections/bidimap/TreeBidiMap;Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap$ViewIterator;->nextNode:Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    .line 1582
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap$ViewIterator;->previousNode:Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    iput-object v0, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap$ViewIterator;->lastReturnedNode:Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    .line 1583
    iget-object v1, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap$ViewIterator;->main:Lorg/apache/commons/collections/bidimap/TreeBidiMap;

    iget v2, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap$ViewIterator;->orderType:I

    invoke-static {v1, v0, v2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->access$2000(Lorg/apache/commons/collections/bidimap/TreeBidiMap;Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap$ViewIterator;->previousNode:Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    .line 1584
    invoke-virtual {p0}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$ViewIterator;->doGetData()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 1576
    :cond_1
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    .line 1573
    :cond_2
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public final remove()V
    .locals 3

    .line 1606
    iget-object v0, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap$ViewIterator;->lastReturnedNode:Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    if-eqz v0, :cond_2

    .line 1609
    iget-object v0, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap$ViewIterator;->main:Lorg/apache/commons/collections/bidimap/TreeBidiMap;

    invoke-static {v0}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->access$1600(Lorg/apache/commons/collections/bidimap/TreeBidiMap;)I

    move-result v0

    iget v1, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap$ViewIterator;->expectedModifications:I

    if-ne v0, v1, :cond_1

    .line 1612
    iget-object v0, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap$ViewIterator;->main:Lorg/apache/commons/collections/bidimap/TreeBidiMap;

    iget-object v1, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap$ViewIterator;->lastReturnedNode:Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    invoke-static {v0, v1}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->access$2100(Lorg/apache/commons/collections/bidimap/TreeBidiMap;Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;)V

    .line 1613
    iget v0, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap$ViewIterator;->expectedModifications:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap$ViewIterator;->expectedModifications:I

    const/4 v0, 0x0

    .line 1614
    iput-object v0, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap$ViewIterator;->lastReturnedNode:Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    .line 1615
    iget-object v0, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap$ViewIterator;->nextNode:Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    if-nez v0, :cond_0

    .line 1616
    iget-object v0, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap$ViewIterator;->main:Lorg/apache/commons/collections/bidimap/TreeBidiMap;

    invoke-static {v0}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->access$1700(Lorg/apache/commons/collections/bidimap/TreeBidiMap;)[Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v0

    iget v1, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap$ViewIterator;->orderType:I

    aget-object v0, v0, v1

    invoke-static {v0, v1}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->access$2200(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap$ViewIterator;->previousNode:Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    goto :goto_0

    .line 1618
    :cond_0
    iget-object v1, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap$ViewIterator;->main:Lorg/apache/commons/collections/bidimap/TreeBidiMap;

    iget v2, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap$ViewIterator;->orderType:I

    invoke-static {v1, v0, v2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->access$2000(Lorg/apache/commons/collections/bidimap/TreeBidiMap;Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap$ViewIterator;->previousNode:Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    :goto_0
    return-void

    .line 1610
    :cond_1
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    .line 1607
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method
