.class Lorg/apache/commons/collections/buffer/BoundedFifoBuffer$1;
.super Ljava/lang/Object;
.source "BoundedFifoBuffer.java"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field private index:I

.field private isFirst:Z

.field private lastReturnedIndex:I

.field private final synthetic this$0:Lorg/apache/commons/collections/buffer/BoundedFifoBuffer;


# direct methods
.method constructor <init>(Lorg/apache/commons/collections/buffer/BoundedFifoBuffer;)V
    .locals 1

    .line 327
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/collections/buffer/BoundedFifoBuffer$1;->this$0:Lorg/apache/commons/collections/buffer/BoundedFifoBuffer;

    .line 329
    invoke-static {p1}, Lorg/apache/commons/collections/buffer/BoundedFifoBuffer;->access$000(Lorg/apache/commons/collections/buffer/BoundedFifoBuffer;)I

    move-result v0

    iput v0, p0, Lorg/apache/commons/collections/buffer/BoundedFifoBuffer$1;->index:I

    const/4 v0, -0x1

    .line 330
    iput v0, p0, Lorg/apache/commons/collections/buffer/BoundedFifoBuffer$1;->lastReturnedIndex:I

    .line 331
    invoke-static {p1}, Lorg/apache/commons/collections/buffer/BoundedFifoBuffer;->access$100(Lorg/apache/commons/collections/buffer/BoundedFifoBuffer;)Z

    move-result p1

    iput-boolean p1, p0, Lorg/apache/commons/collections/buffer/BoundedFifoBuffer$1;->isFirst:Z

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    .line 334
    iget-boolean v0, p0, Lorg/apache/commons/collections/buffer/BoundedFifoBuffer$1;->isFirst:Z

    if-nez v0, :cond_1

    iget v0, p0, Lorg/apache/commons/collections/buffer/BoundedFifoBuffer$1;->index:I

    iget-object v1, p0, Lorg/apache/commons/collections/buffer/BoundedFifoBuffer$1;->this$0:Lorg/apache/commons/collections/buffer/BoundedFifoBuffer;

    invoke-static {v1}, Lorg/apache/commons/collections/buffer/BoundedFifoBuffer;->access$200(Lorg/apache/commons/collections/buffer/BoundedFifoBuffer;)I

    move-result v1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 2

    .line 339
    invoke-virtual {p0}, Lorg/apache/commons/collections/buffer/BoundedFifoBuffer$1;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 342
    iput-boolean v0, p0, Lorg/apache/commons/collections/buffer/BoundedFifoBuffer$1;->isFirst:Z

    .line 343
    iget v0, p0, Lorg/apache/commons/collections/buffer/BoundedFifoBuffer$1;->index:I

    iput v0, p0, Lorg/apache/commons/collections/buffer/BoundedFifoBuffer$1;->lastReturnedIndex:I

    .line 344
    iget-object v1, p0, Lorg/apache/commons/collections/buffer/BoundedFifoBuffer$1;->this$0:Lorg/apache/commons/collections/buffer/BoundedFifoBuffer;

    invoke-static {v1, v0}, Lorg/apache/commons/collections/buffer/BoundedFifoBuffer;->access$300(Lorg/apache/commons/collections/buffer/BoundedFifoBuffer;I)I

    move-result v0

    iput v0, p0, Lorg/apache/commons/collections/buffer/BoundedFifoBuffer$1;->index:I

    .line 345
    iget-object v0, p0, Lorg/apache/commons/collections/buffer/BoundedFifoBuffer$1;->this$0:Lorg/apache/commons/collections/buffer/BoundedFifoBuffer;

    invoke-static {v0}, Lorg/apache/commons/collections/buffer/BoundedFifoBuffer;->access$400(Lorg/apache/commons/collections/buffer/BoundedFifoBuffer;)[Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lorg/apache/commons/collections/buffer/BoundedFifoBuffer$1;->lastReturnedIndex:I

    aget-object v0, v0, v1

    return-object v0

    .line 340
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public remove()V
    .locals 7

    .line 349
    iget v0, p0, Lorg/apache/commons/collections/buffer/BoundedFifoBuffer$1;->lastReturnedIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_4

    .line 354
    iget-object v2, p0, Lorg/apache/commons/collections/buffer/BoundedFifoBuffer$1;->this$0:Lorg/apache/commons/collections/buffer/BoundedFifoBuffer;

    invoke-static {v2}, Lorg/apache/commons/collections/buffer/BoundedFifoBuffer;->access$000(Lorg/apache/commons/collections/buffer/BoundedFifoBuffer;)I

    move-result v2

    if-ne v0, v2, :cond_0

    .line 355
    iget-object v0, p0, Lorg/apache/commons/collections/buffer/BoundedFifoBuffer$1;->this$0:Lorg/apache/commons/collections/buffer/BoundedFifoBuffer;

    invoke-virtual {v0}, Lorg/apache/commons/collections/buffer/BoundedFifoBuffer;->remove()Ljava/lang/Object;

    .line 356
    iput v1, p0, Lorg/apache/commons/collections/buffer/BoundedFifoBuffer$1;->lastReturnedIndex:I

    return-void

    .line 360
    :cond_0
    iget v0, p0, Lorg/apache/commons/collections/buffer/BoundedFifoBuffer$1;->lastReturnedIndex:I

    add-int/lit8 v0, v0, 0x1

    .line 361
    iget-object v2, p0, Lorg/apache/commons/collections/buffer/BoundedFifoBuffer$1;->this$0:Lorg/apache/commons/collections/buffer/BoundedFifoBuffer;

    invoke-static {v2}, Lorg/apache/commons/collections/buffer/BoundedFifoBuffer;->access$000(Lorg/apache/commons/collections/buffer/BoundedFifoBuffer;)I

    move-result v2

    iget v3, p0, Lorg/apache/commons/collections/buffer/BoundedFifoBuffer$1;->lastReturnedIndex:I

    const/4 v4, 0x0

    if-ge v2, v3, :cond_1

    iget-object v2, p0, Lorg/apache/commons/collections/buffer/BoundedFifoBuffer$1;->this$0:Lorg/apache/commons/collections/buffer/BoundedFifoBuffer;

    invoke-static {v2}, Lorg/apache/commons/collections/buffer/BoundedFifoBuffer;->access$200(Lorg/apache/commons/collections/buffer/BoundedFifoBuffer;)I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 363
    iget-object v2, p0, Lorg/apache/commons/collections/buffer/BoundedFifoBuffer$1;->this$0:Lorg/apache/commons/collections/buffer/BoundedFifoBuffer;

    invoke-static {v2}, Lorg/apache/commons/collections/buffer/BoundedFifoBuffer;->access$400(Lorg/apache/commons/collections/buffer/BoundedFifoBuffer;)[Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/commons/collections/buffer/BoundedFifoBuffer$1;->this$0:Lorg/apache/commons/collections/buffer/BoundedFifoBuffer;

    invoke-static {v3}, Lorg/apache/commons/collections/buffer/BoundedFifoBuffer;->access$400(Lorg/apache/commons/collections/buffer/BoundedFifoBuffer;)[Ljava/lang/Object;

    move-result-object v3

    iget v5, p0, Lorg/apache/commons/collections/buffer/BoundedFifoBuffer$1;->lastReturnedIndex:I

    iget-object v6, p0, Lorg/apache/commons/collections/buffer/BoundedFifoBuffer$1;->this$0:Lorg/apache/commons/collections/buffer/BoundedFifoBuffer;

    invoke-static {v6}, Lorg/apache/commons/collections/buffer/BoundedFifoBuffer;->access$200(Lorg/apache/commons/collections/buffer/BoundedFifoBuffer;)I

    move-result v6

    sub-int/2addr v6, v0

    invoke-static {v2, v0, v3, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1

    .line 367
    :cond_1
    :goto_0
    iget-object v2, p0, Lorg/apache/commons/collections/buffer/BoundedFifoBuffer$1;->this$0:Lorg/apache/commons/collections/buffer/BoundedFifoBuffer;

    invoke-static {v2}, Lorg/apache/commons/collections/buffer/BoundedFifoBuffer;->access$200(Lorg/apache/commons/collections/buffer/BoundedFifoBuffer;)I

    move-result v2

    if-eq v0, v2, :cond_3

    .line 368
    iget-object v2, p0, Lorg/apache/commons/collections/buffer/BoundedFifoBuffer$1;->this$0:Lorg/apache/commons/collections/buffer/BoundedFifoBuffer;

    invoke-static {v2}, Lorg/apache/commons/collections/buffer/BoundedFifoBuffer;->access$500(Lorg/apache/commons/collections/buffer/BoundedFifoBuffer;)I

    move-result v2

    if-lt v0, v2, :cond_2

    .line 369
    iget-object v2, p0, Lorg/apache/commons/collections/buffer/BoundedFifoBuffer$1;->this$0:Lorg/apache/commons/collections/buffer/BoundedFifoBuffer;

    invoke-static {v2}, Lorg/apache/commons/collections/buffer/BoundedFifoBuffer;->access$400(Lorg/apache/commons/collections/buffer/BoundedFifoBuffer;)[Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v0, v0, -0x1

    iget-object v3, p0, Lorg/apache/commons/collections/buffer/BoundedFifoBuffer$1;->this$0:Lorg/apache/commons/collections/buffer/BoundedFifoBuffer;

    invoke-static {v3}, Lorg/apache/commons/collections/buffer/BoundedFifoBuffer;->access$400(Lorg/apache/commons/collections/buffer/BoundedFifoBuffer;)[Ljava/lang/Object;

    move-result-object v3

    aget-object v3, v3, v4

    aput-object v3, v2, v0

    move v0, v4

    goto :goto_0

    .line 372
    :cond_2
    iget-object v2, p0, Lorg/apache/commons/collections/buffer/BoundedFifoBuffer$1;->this$0:Lorg/apache/commons/collections/buffer/BoundedFifoBuffer;

    invoke-static {v2}, Lorg/apache/commons/collections/buffer/BoundedFifoBuffer;->access$400(Lorg/apache/commons/collections/buffer/BoundedFifoBuffer;)[Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/commons/collections/buffer/BoundedFifoBuffer$1;->this$0:Lorg/apache/commons/collections/buffer/BoundedFifoBuffer;

    invoke-static {v3, v0}, Lorg/apache/commons/collections/buffer/BoundedFifoBuffer;->access$600(Lorg/apache/commons/collections/buffer/BoundedFifoBuffer;I)I

    move-result v3

    iget-object v5, p0, Lorg/apache/commons/collections/buffer/BoundedFifoBuffer$1;->this$0:Lorg/apache/commons/collections/buffer/BoundedFifoBuffer;

    invoke-static {v5}, Lorg/apache/commons/collections/buffer/BoundedFifoBuffer;->access$400(Lorg/apache/commons/collections/buffer/BoundedFifoBuffer;)[Ljava/lang/Object;

    move-result-object v5

    aget-object v5, v5, v0

    aput-object v5, v2, v3

    .line 373
    iget-object v2, p0, Lorg/apache/commons/collections/buffer/BoundedFifoBuffer$1;->this$0:Lorg/apache/commons/collections/buffer/BoundedFifoBuffer;

    invoke-static {v2, v0}, Lorg/apache/commons/collections/buffer/BoundedFifoBuffer;->access$300(Lorg/apache/commons/collections/buffer/BoundedFifoBuffer;I)I

    move-result v0

    goto :goto_0

    .line 378
    :cond_3
    :goto_1
    iput v1, p0, Lorg/apache/commons/collections/buffer/BoundedFifoBuffer$1;->lastReturnedIndex:I

    .line 379
    iget-object v0, p0, Lorg/apache/commons/collections/buffer/BoundedFifoBuffer$1;->this$0:Lorg/apache/commons/collections/buffer/BoundedFifoBuffer;

    invoke-static {v0}, Lorg/apache/commons/collections/buffer/BoundedFifoBuffer;->access$200(Lorg/apache/commons/collections/buffer/BoundedFifoBuffer;)I

    move-result v1

    invoke-static {v0, v1}, Lorg/apache/commons/collections/buffer/BoundedFifoBuffer;->access$600(Lorg/apache/commons/collections/buffer/BoundedFifoBuffer;I)I

    move-result v1

    invoke-static {v0, v1}, Lorg/apache/commons/collections/buffer/BoundedFifoBuffer;->access$202(Lorg/apache/commons/collections/buffer/BoundedFifoBuffer;I)I

    .line 380
    iget-object v0, p0, Lorg/apache/commons/collections/buffer/BoundedFifoBuffer$1;->this$0:Lorg/apache/commons/collections/buffer/BoundedFifoBuffer;

    invoke-static {v0}, Lorg/apache/commons/collections/buffer/BoundedFifoBuffer;->access$400(Lorg/apache/commons/collections/buffer/BoundedFifoBuffer;)[Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/commons/collections/buffer/BoundedFifoBuffer$1;->this$0:Lorg/apache/commons/collections/buffer/BoundedFifoBuffer;

    invoke-static {v1}, Lorg/apache/commons/collections/buffer/BoundedFifoBuffer;->access$200(Lorg/apache/commons/collections/buffer/BoundedFifoBuffer;)I

    move-result v1

    const/4 v2, 0x0

    aput-object v2, v0, v1

    .line 381
    iget-object v0, p0, Lorg/apache/commons/collections/buffer/BoundedFifoBuffer$1;->this$0:Lorg/apache/commons/collections/buffer/BoundedFifoBuffer;

    invoke-static {v0, v4}, Lorg/apache/commons/collections/buffer/BoundedFifoBuffer;->access$102(Lorg/apache/commons/collections/buffer/BoundedFifoBuffer;Z)Z

    .line 382
    iget-object v0, p0, Lorg/apache/commons/collections/buffer/BoundedFifoBuffer$1;->this$0:Lorg/apache/commons/collections/buffer/BoundedFifoBuffer;

    iget v1, p0, Lorg/apache/commons/collections/buffer/BoundedFifoBuffer$1;->index:I

    invoke-static {v0, v1}, Lorg/apache/commons/collections/buffer/BoundedFifoBuffer;->access$600(Lorg/apache/commons/collections/buffer/BoundedFifoBuffer;I)I

    move-result v0

    iput v0, p0, Lorg/apache/commons/collections/buffer/BoundedFifoBuffer$1;->index:I

    return-void

    .line 350
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method
