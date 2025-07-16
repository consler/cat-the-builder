.class Lorg/apache/commons/collections/BinaryHeap$1;
.super Ljava/lang/Object;
.source "BinaryHeap.java"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field private index:I

.field private lastReturnedIndex:I

.field private final synthetic this$0:Lorg/apache/commons/collections/BinaryHeap;


# direct methods
.method constructor <init>(Lorg/apache/commons/collections/BinaryHeap;)V
    .locals 0

    .line 466
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/collections/BinaryHeap$1;->this$0:Lorg/apache/commons/collections/BinaryHeap;

    const/4 p1, 0x1

    .line 468
    iput p1, p0, Lorg/apache/commons/collections/BinaryHeap$1;->index:I

    const/4 p1, -0x1

    .line 469
    iput p1, p0, Lorg/apache/commons/collections/BinaryHeap$1;->lastReturnedIndex:I

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    .line 472
    iget v0, p0, Lorg/apache/commons/collections/BinaryHeap$1;->index:I

    iget-object v1, p0, Lorg/apache/commons/collections/BinaryHeap$1;->this$0:Lorg/apache/commons/collections/BinaryHeap;

    iget v1, v1, Lorg/apache/commons/collections/BinaryHeap;->m_size:I

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 2

    .line 476
    invoke-virtual {p0}, Lorg/apache/commons/collections/BinaryHeap$1;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 477
    iget v0, p0, Lorg/apache/commons/collections/BinaryHeap$1;->index:I

    iput v0, p0, Lorg/apache/commons/collections/BinaryHeap$1;->lastReturnedIndex:I

    add-int/lit8 v0, v0, 0x1

    .line 478
    iput v0, p0, Lorg/apache/commons/collections/BinaryHeap$1;->index:I

    .line 479
    iget-object v0, p0, Lorg/apache/commons/collections/BinaryHeap$1;->this$0:Lorg/apache/commons/collections/BinaryHeap;

    iget-object v0, v0, Lorg/apache/commons/collections/BinaryHeap;->m_elements:[Ljava/lang/Object;

    iget v1, p0, Lorg/apache/commons/collections/BinaryHeap$1;->lastReturnedIndex:I

    aget-object v0, v0, v1

    return-object v0

    .line 476
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public remove()V
    .locals 6

    .line 483
    iget v0, p0, Lorg/apache/commons/collections/BinaryHeap$1;->lastReturnedIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_5

    .line 486
    iget-object v0, p0, Lorg/apache/commons/collections/BinaryHeap$1;->this$0:Lorg/apache/commons/collections/BinaryHeap;

    iget-object v0, v0, Lorg/apache/commons/collections/BinaryHeap;->m_elements:[Ljava/lang/Object;

    iget v2, p0, Lorg/apache/commons/collections/BinaryHeap$1;->lastReturnedIndex:I

    iget-object v3, p0, Lorg/apache/commons/collections/BinaryHeap$1;->this$0:Lorg/apache/commons/collections/BinaryHeap;

    iget-object v3, v3, Lorg/apache/commons/collections/BinaryHeap;->m_elements:[Ljava/lang/Object;

    iget-object v4, p0, Lorg/apache/commons/collections/BinaryHeap$1;->this$0:Lorg/apache/commons/collections/BinaryHeap;

    iget v4, v4, Lorg/apache/commons/collections/BinaryHeap;->m_size:I

    aget-object v3, v3, v4

    aput-object v3, v0, v2

    .line 487
    iget-object v0, p0, Lorg/apache/commons/collections/BinaryHeap$1;->this$0:Lorg/apache/commons/collections/BinaryHeap;

    iget-object v0, v0, Lorg/apache/commons/collections/BinaryHeap;->m_elements:[Ljava/lang/Object;

    iget-object v2, p0, Lorg/apache/commons/collections/BinaryHeap$1;->this$0:Lorg/apache/commons/collections/BinaryHeap;

    iget v2, v2, Lorg/apache/commons/collections/BinaryHeap;->m_size:I

    const/4 v3, 0x0

    aput-object v3, v0, v2

    .line 488
    iget-object v0, p0, Lorg/apache/commons/collections/BinaryHeap$1;->this$0:Lorg/apache/commons/collections/BinaryHeap;

    iget v2, v0, Lorg/apache/commons/collections/BinaryHeap;->m_size:I

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    iput v2, v0, Lorg/apache/commons/collections/BinaryHeap;->m_size:I

    .line 489
    iget-object v0, p0, Lorg/apache/commons/collections/BinaryHeap$1;->this$0:Lorg/apache/commons/collections/BinaryHeap;

    iget v0, v0, Lorg/apache/commons/collections/BinaryHeap;->m_size:I

    if-eqz v0, :cond_4

    iget v0, p0, Lorg/apache/commons/collections/BinaryHeap$1;->lastReturnedIndex:I

    iget-object v2, p0, Lorg/apache/commons/collections/BinaryHeap$1;->this$0:Lorg/apache/commons/collections/BinaryHeap;

    iget v2, v2, Lorg/apache/commons/collections/BinaryHeap;->m_size:I

    if-gt v0, v2, :cond_4

    .line 491
    iget v0, p0, Lorg/apache/commons/collections/BinaryHeap$1;->lastReturnedIndex:I

    if-le v0, v3, :cond_0

    .line 492
    iget-object v0, p0, Lorg/apache/commons/collections/BinaryHeap$1;->this$0:Lorg/apache/commons/collections/BinaryHeap;

    iget-object v2, v0, Lorg/apache/commons/collections/BinaryHeap;->m_elements:[Ljava/lang/Object;

    iget v4, p0, Lorg/apache/commons/collections/BinaryHeap$1;->lastReturnedIndex:I

    aget-object v2, v2, v4

    iget-object v4, p0, Lorg/apache/commons/collections/BinaryHeap$1;->this$0:Lorg/apache/commons/collections/BinaryHeap;

    iget-object v4, v4, Lorg/apache/commons/collections/BinaryHeap;->m_elements:[Ljava/lang/Object;

    iget v5, p0, Lorg/apache/commons/collections/BinaryHeap$1;->lastReturnedIndex:I

    div-int/lit8 v5, v5, 0x2

    aget-object v4, v4, v5

    invoke-static {v0, v2, v4}, Lorg/apache/commons/collections/BinaryHeap;->access$000(Lorg/apache/commons/collections/BinaryHeap;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 495
    :goto_0
    iget-object v2, p0, Lorg/apache/commons/collections/BinaryHeap$1;->this$0:Lorg/apache/commons/collections/BinaryHeap;

    iget-boolean v2, v2, Lorg/apache/commons/collections/BinaryHeap;->m_isMinHeap:Z

    if-eqz v2, :cond_2

    .line 496
    iget v2, p0, Lorg/apache/commons/collections/BinaryHeap$1;->lastReturnedIndex:I

    if-le v2, v3, :cond_1

    if-gez v0, :cond_1

    .line 497
    iget-object v0, p0, Lorg/apache/commons/collections/BinaryHeap$1;->this$0:Lorg/apache/commons/collections/BinaryHeap;

    invoke-virtual {v0, v2}, Lorg/apache/commons/collections/BinaryHeap;->percolateUpMinHeap(I)V

    goto :goto_1

    .line 499
    :cond_1
    iget-object v0, p0, Lorg/apache/commons/collections/BinaryHeap$1;->this$0:Lorg/apache/commons/collections/BinaryHeap;

    invoke-virtual {v0, v2}, Lorg/apache/commons/collections/BinaryHeap;->percolateDownMinHeap(I)V

    goto :goto_1

    .line 502
    :cond_2
    iget v2, p0, Lorg/apache/commons/collections/BinaryHeap$1;->lastReturnedIndex:I

    if-le v2, v3, :cond_3

    if-lez v0, :cond_3

    .line 503
    iget-object v0, p0, Lorg/apache/commons/collections/BinaryHeap$1;->this$0:Lorg/apache/commons/collections/BinaryHeap;

    invoke-virtual {v0, v2}, Lorg/apache/commons/collections/BinaryHeap;->percolateUpMaxHeap(I)V

    goto :goto_1

    .line 505
    :cond_3
    iget-object v0, p0, Lorg/apache/commons/collections/BinaryHeap$1;->this$0:Lorg/apache/commons/collections/BinaryHeap;

    invoke-virtual {v0, v2}, Lorg/apache/commons/collections/BinaryHeap;->percolateDownMaxHeap(I)V

    .line 509
    :cond_4
    :goto_1
    iget v0, p0, Lorg/apache/commons/collections/BinaryHeap$1;->index:I

    sub-int/2addr v0, v3

    iput v0, p0, Lorg/apache/commons/collections/BinaryHeap$1;->index:I

    .line 510
    iput v1, p0, Lorg/apache/commons/collections/BinaryHeap$1;->lastReturnedIndex:I

    return-void

    .line 484
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method
