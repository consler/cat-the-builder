.class Lorg/apache/commons/collections/buffer/PriorityBuffer$1;
.super Ljava/lang/Object;
.source "PriorityBuffer.java"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field private index:I

.field private lastReturnedIndex:I

.field private final synthetic this$0:Lorg/apache/commons/collections/buffer/PriorityBuffer;


# direct methods
.method constructor <init>(Lorg/apache/commons/collections/buffer/PriorityBuffer;)V
    .locals 0

    .line 470
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/collections/buffer/PriorityBuffer$1;->this$0:Lorg/apache/commons/collections/buffer/PriorityBuffer;

    .line 472
    const/4 p1, 0x1

    iput p1, p0, Lorg/apache/commons/collections/buffer/PriorityBuffer$1;->index:I

    .line 473
    const/4 p1, -0x1

    iput p1, p0, Lorg/apache/commons/collections/buffer/PriorityBuffer$1;->lastReturnedIndex:I

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    .line 476
    iget v0, p0, Lorg/apache/commons/collections/buffer/PriorityBuffer$1;->index:I

    iget-object v1, p0, Lorg/apache/commons/collections/buffer/PriorityBuffer$1;->this$0:Lorg/apache/commons/collections/buffer/PriorityBuffer;

    iget v1, v1, Lorg/apache/commons/collections/buffer/PriorityBuffer;->size:I

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

    .line 480
    invoke-virtual {p0}, Lorg/apache/commons/collections/buffer/PriorityBuffer$1;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 483
    iget v0, p0, Lorg/apache/commons/collections/buffer/PriorityBuffer$1;->index:I

    iput v0, p0, Lorg/apache/commons/collections/buffer/PriorityBuffer$1;->lastReturnedIndex:I

    .line 484
    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/commons/collections/buffer/PriorityBuffer$1;->index:I

    .line 485
    iget-object v0, p0, Lorg/apache/commons/collections/buffer/PriorityBuffer$1;->this$0:Lorg/apache/commons/collections/buffer/PriorityBuffer;

    iget-object v0, v0, Lorg/apache/commons/collections/buffer/PriorityBuffer;->elements:[Ljava/lang/Object;

    iget v1, p0, Lorg/apache/commons/collections/buffer/PriorityBuffer$1;->lastReturnedIndex:I

    aget-object v0, v0, v1

    return-object v0

    .line 481
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public remove()V
    .locals 7

    .line 489
    iget v0, p0, Lorg/apache/commons/collections/buffer/PriorityBuffer$1;->lastReturnedIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_5

    .line 492
    iget-object v0, p0, Lorg/apache/commons/collections/buffer/PriorityBuffer$1;->this$0:Lorg/apache/commons/collections/buffer/PriorityBuffer;

    iget-object v0, v0, Lorg/apache/commons/collections/buffer/PriorityBuffer;->elements:[Ljava/lang/Object;

    iget v2, p0, Lorg/apache/commons/collections/buffer/PriorityBuffer$1;->lastReturnedIndex:I

    iget-object v3, p0, Lorg/apache/commons/collections/buffer/PriorityBuffer$1;->this$0:Lorg/apache/commons/collections/buffer/PriorityBuffer;

    iget-object v3, v3, Lorg/apache/commons/collections/buffer/PriorityBuffer;->elements:[Ljava/lang/Object;

    iget-object v4, p0, Lorg/apache/commons/collections/buffer/PriorityBuffer$1;->this$0:Lorg/apache/commons/collections/buffer/PriorityBuffer;

    iget v4, v4, Lorg/apache/commons/collections/buffer/PriorityBuffer;->size:I

    aget-object v3, v3, v4

    aput-object v3, v0, v2

    .line 493
    iget-object v0, p0, Lorg/apache/commons/collections/buffer/PriorityBuffer$1;->this$0:Lorg/apache/commons/collections/buffer/PriorityBuffer;

    iget-object v0, v0, Lorg/apache/commons/collections/buffer/PriorityBuffer;->elements:[Ljava/lang/Object;

    iget-object v2, p0, Lorg/apache/commons/collections/buffer/PriorityBuffer$1;->this$0:Lorg/apache/commons/collections/buffer/PriorityBuffer;

    iget v2, v2, Lorg/apache/commons/collections/buffer/PriorityBuffer;->size:I

    const/4 v3, 0x0

    aput-object v3, v0, v2

    .line 494
    iget-object v0, p0, Lorg/apache/commons/collections/buffer/PriorityBuffer$1;->this$0:Lorg/apache/commons/collections/buffer/PriorityBuffer;

    iget v2, v0, Lorg/apache/commons/collections/buffer/PriorityBuffer;->size:I

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    iput v2, v0, Lorg/apache/commons/collections/buffer/PriorityBuffer;->size:I

    .line 495
    iget-object v0, p0, Lorg/apache/commons/collections/buffer/PriorityBuffer$1;->this$0:Lorg/apache/commons/collections/buffer/PriorityBuffer;

    iget v0, v0, Lorg/apache/commons/collections/buffer/PriorityBuffer;->size:I

    if-eqz v0, :cond_4

    iget v0, p0, Lorg/apache/commons/collections/buffer/PriorityBuffer$1;->lastReturnedIndex:I

    iget-object v2, p0, Lorg/apache/commons/collections/buffer/PriorityBuffer$1;->this$0:Lorg/apache/commons/collections/buffer/PriorityBuffer;

    iget v2, v2, Lorg/apache/commons/collections/buffer/PriorityBuffer;->size:I

    if-gt v0, v2, :cond_4

    .line 496
    const/4 v0, 0x0

    .line 497
    .local v0, "compareToParent":I
    iget v2, p0, Lorg/apache/commons/collections/buffer/PriorityBuffer$1;->lastReturnedIndex:I

    if-le v2, v3, :cond_0

    .line 498
    iget-object v2, p0, Lorg/apache/commons/collections/buffer/PriorityBuffer$1;->this$0:Lorg/apache/commons/collections/buffer/PriorityBuffer;

    iget-object v4, v2, Lorg/apache/commons/collections/buffer/PriorityBuffer;->elements:[Ljava/lang/Object;

    iget v5, p0, Lorg/apache/commons/collections/buffer/PriorityBuffer$1;->lastReturnedIndex:I

    aget-object v4, v4, v5

    iget-object v5, p0, Lorg/apache/commons/collections/buffer/PriorityBuffer$1;->this$0:Lorg/apache/commons/collections/buffer/PriorityBuffer;

    iget-object v5, v5, Lorg/apache/commons/collections/buffer/PriorityBuffer;->elements:[Ljava/lang/Object;

    iget v6, p0, Lorg/apache/commons/collections/buffer/PriorityBuffer$1;->lastReturnedIndex:I

    div-int/lit8 v6, v6, 0x2

    aget-object v5, v5, v6

    invoke-virtual {v2, v4, v5}, Lorg/apache/commons/collections/buffer/PriorityBuffer;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .line 501
    :cond_0
    iget-object v2, p0, Lorg/apache/commons/collections/buffer/PriorityBuffer$1;->this$0:Lorg/apache/commons/collections/buffer/PriorityBuffer;

    iget-boolean v2, v2, Lorg/apache/commons/collections/buffer/PriorityBuffer;->ascendingOrder:Z

    if-eqz v2, :cond_2

    .line 502
    iget v2, p0, Lorg/apache/commons/collections/buffer/PriorityBuffer$1;->lastReturnedIndex:I

    if-le v2, v3, :cond_1

    if-gez v0, :cond_1

    .line 503
    iget-object v4, p0, Lorg/apache/commons/collections/buffer/PriorityBuffer$1;->this$0:Lorg/apache/commons/collections/buffer/PriorityBuffer;

    invoke-virtual {v4, v2}, Lorg/apache/commons/collections/buffer/PriorityBuffer;->percolateUpMinHeap(I)V

    goto :goto_0

    .line 505
    :cond_1
    iget-object v2, p0, Lorg/apache/commons/collections/buffer/PriorityBuffer$1;->this$0:Lorg/apache/commons/collections/buffer/PriorityBuffer;

    iget v4, p0, Lorg/apache/commons/collections/buffer/PriorityBuffer$1;->lastReturnedIndex:I

    invoke-virtual {v2, v4}, Lorg/apache/commons/collections/buffer/PriorityBuffer;->percolateDownMinHeap(I)V

    goto :goto_0

    .line 508
    :cond_2
    iget v2, p0, Lorg/apache/commons/collections/buffer/PriorityBuffer$1;->lastReturnedIndex:I

    if-le v2, v3, :cond_3

    if-lez v0, :cond_3

    .line 509
    iget-object v4, p0, Lorg/apache/commons/collections/buffer/PriorityBuffer$1;->this$0:Lorg/apache/commons/collections/buffer/PriorityBuffer;

    invoke-virtual {v4, v2}, Lorg/apache/commons/collections/buffer/PriorityBuffer;->percolateUpMaxHeap(I)V

    goto :goto_0

    .line 511
    :cond_3
    iget-object v2, p0, Lorg/apache/commons/collections/buffer/PriorityBuffer$1;->this$0:Lorg/apache/commons/collections/buffer/PriorityBuffer;

    iget v4, p0, Lorg/apache/commons/collections/buffer/PriorityBuffer$1;->lastReturnedIndex:I

    invoke-virtual {v2, v4}, Lorg/apache/commons/collections/buffer/PriorityBuffer;->percolateDownMaxHeap(I)V

    .line 515
    .end local v0    # "compareToParent":I
    :cond_4
    :goto_0
    iget v0, p0, Lorg/apache/commons/collections/buffer/PriorityBuffer$1;->index:I

    sub-int/2addr v0, v3

    iput v0, p0, Lorg/apache/commons/collections/buffer/PriorityBuffer$1;->index:I

    .line 516
    iput v1, p0, Lorg/apache/commons/collections/buffer/PriorityBuffer$1;->lastReturnedIndex:I

    .line 517
    return-void

    .line 490
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method
