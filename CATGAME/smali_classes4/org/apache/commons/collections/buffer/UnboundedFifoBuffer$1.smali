.class Lorg/apache/commons/collections/buffer/UnboundedFifoBuffer$1;
.super Ljava/lang/Object;
.source "UnboundedFifoBuffer.java"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field private index:I

.field private lastReturnedIndex:I

.field private final synthetic this$0:Lorg/apache/commons/collections/buffer/UnboundedFifoBuffer;


# direct methods
.method constructor <init>(Lorg/apache/commons/collections/buffer/UnboundedFifoBuffer;)V
    .locals 0

    .line 269
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/collections/buffer/UnboundedFifoBuffer$1;->this$0:Lorg/apache/commons/collections/buffer/UnboundedFifoBuffer;

    .line 271
    iget p1, p1, Lorg/apache/commons/collections/buffer/UnboundedFifoBuffer;->head:I

    iput p1, p0, Lorg/apache/commons/collections/buffer/UnboundedFifoBuffer$1;->index:I

    const/4 p1, -0x1

    .line 272
    iput p1, p0, Lorg/apache/commons/collections/buffer/UnboundedFifoBuffer$1;->lastReturnedIndex:I

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    .line 275
    iget v0, p0, Lorg/apache/commons/collections/buffer/UnboundedFifoBuffer$1;->index:I

    iget-object v1, p0, Lorg/apache/commons/collections/buffer/UnboundedFifoBuffer$1;->this$0:Lorg/apache/commons/collections/buffer/UnboundedFifoBuffer;

    iget v1, v1, Lorg/apache/commons/collections/buffer/UnboundedFifoBuffer;->tail:I

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 2

    .line 280
    invoke-virtual {p0}, Lorg/apache/commons/collections/buffer/UnboundedFifoBuffer$1;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 283
    iget v0, p0, Lorg/apache/commons/collections/buffer/UnboundedFifoBuffer$1;->index:I

    iput v0, p0, Lorg/apache/commons/collections/buffer/UnboundedFifoBuffer$1;->lastReturnedIndex:I

    .line 284
    iget-object v1, p0, Lorg/apache/commons/collections/buffer/UnboundedFifoBuffer$1;->this$0:Lorg/apache/commons/collections/buffer/UnboundedFifoBuffer;

    invoke-static {v1, v0}, Lorg/apache/commons/collections/buffer/UnboundedFifoBuffer;->access$000(Lorg/apache/commons/collections/buffer/UnboundedFifoBuffer;I)I

    move-result v0

    iput v0, p0, Lorg/apache/commons/collections/buffer/UnboundedFifoBuffer$1;->index:I

    .line 285
    iget-object v0, p0, Lorg/apache/commons/collections/buffer/UnboundedFifoBuffer$1;->this$0:Lorg/apache/commons/collections/buffer/UnboundedFifoBuffer;

    iget-object v0, v0, Lorg/apache/commons/collections/buffer/UnboundedFifoBuffer;->buffer:[Ljava/lang/Object;

    iget v1, p0, Lorg/apache/commons/collections/buffer/UnboundedFifoBuffer$1;->lastReturnedIndex:I

    aget-object v0, v0, v1

    return-object v0

    .line 281
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public remove()V
    .locals 5

    .line 289
    iget v0, p0, Lorg/apache/commons/collections/buffer/UnboundedFifoBuffer$1;->lastReturnedIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    .line 294
    iget-object v2, p0, Lorg/apache/commons/collections/buffer/UnboundedFifoBuffer$1;->this$0:Lorg/apache/commons/collections/buffer/UnboundedFifoBuffer;

    iget v2, v2, Lorg/apache/commons/collections/buffer/UnboundedFifoBuffer;->head:I

    if-ne v0, v2, :cond_0

    .line 295
    iget-object v0, p0, Lorg/apache/commons/collections/buffer/UnboundedFifoBuffer$1;->this$0:Lorg/apache/commons/collections/buffer/UnboundedFifoBuffer;

    invoke-virtual {v0}, Lorg/apache/commons/collections/buffer/UnboundedFifoBuffer;->remove()Ljava/lang/Object;

    .line 296
    iput v1, p0, Lorg/apache/commons/collections/buffer/UnboundedFifoBuffer$1;->lastReturnedIndex:I

    return-void

    .line 301
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections/buffer/UnboundedFifoBuffer$1;->this$0:Lorg/apache/commons/collections/buffer/UnboundedFifoBuffer;

    iget v2, p0, Lorg/apache/commons/collections/buffer/UnboundedFifoBuffer$1;->lastReturnedIndex:I

    invoke-static {v0, v2}, Lorg/apache/commons/collections/buffer/UnboundedFifoBuffer;->access$000(Lorg/apache/commons/collections/buffer/UnboundedFifoBuffer;I)I

    move-result v0

    .line 302
    :goto_0
    iget-object v2, p0, Lorg/apache/commons/collections/buffer/UnboundedFifoBuffer$1;->this$0:Lorg/apache/commons/collections/buffer/UnboundedFifoBuffer;

    iget v2, v2, Lorg/apache/commons/collections/buffer/UnboundedFifoBuffer;->tail:I

    if-eq v0, v2, :cond_1

    .line 303
    iget-object v2, p0, Lorg/apache/commons/collections/buffer/UnboundedFifoBuffer$1;->this$0:Lorg/apache/commons/collections/buffer/UnboundedFifoBuffer;

    iget-object v2, v2, Lorg/apache/commons/collections/buffer/UnboundedFifoBuffer;->buffer:[Ljava/lang/Object;

    iget-object v3, p0, Lorg/apache/commons/collections/buffer/UnboundedFifoBuffer$1;->this$0:Lorg/apache/commons/collections/buffer/UnboundedFifoBuffer;

    invoke-static {v3, v0}, Lorg/apache/commons/collections/buffer/UnboundedFifoBuffer;->access$100(Lorg/apache/commons/collections/buffer/UnboundedFifoBuffer;I)I

    move-result v3

    iget-object v4, p0, Lorg/apache/commons/collections/buffer/UnboundedFifoBuffer$1;->this$0:Lorg/apache/commons/collections/buffer/UnboundedFifoBuffer;

    iget-object v4, v4, Lorg/apache/commons/collections/buffer/UnboundedFifoBuffer;->buffer:[Ljava/lang/Object;

    aget-object v4, v4, v0

    aput-object v4, v2, v3

    .line 304
    iget-object v2, p0, Lorg/apache/commons/collections/buffer/UnboundedFifoBuffer$1;->this$0:Lorg/apache/commons/collections/buffer/UnboundedFifoBuffer;

    invoke-static {v2, v0}, Lorg/apache/commons/collections/buffer/UnboundedFifoBuffer;->access$000(Lorg/apache/commons/collections/buffer/UnboundedFifoBuffer;I)I

    move-result v0

    goto :goto_0

    .line 307
    :cond_1
    iput v1, p0, Lorg/apache/commons/collections/buffer/UnboundedFifoBuffer$1;->lastReturnedIndex:I

    .line 308
    iget-object v0, p0, Lorg/apache/commons/collections/buffer/UnboundedFifoBuffer$1;->this$0:Lorg/apache/commons/collections/buffer/UnboundedFifoBuffer;

    iget v1, v0, Lorg/apache/commons/collections/buffer/UnboundedFifoBuffer;->tail:I

    invoke-static {v0, v1}, Lorg/apache/commons/collections/buffer/UnboundedFifoBuffer;->access$100(Lorg/apache/commons/collections/buffer/UnboundedFifoBuffer;I)I

    move-result v1

    iput v1, v0, Lorg/apache/commons/collections/buffer/UnboundedFifoBuffer;->tail:I

    .line 309
    iget-object v0, p0, Lorg/apache/commons/collections/buffer/UnboundedFifoBuffer$1;->this$0:Lorg/apache/commons/collections/buffer/UnboundedFifoBuffer;

    iget-object v0, v0, Lorg/apache/commons/collections/buffer/UnboundedFifoBuffer;->buffer:[Ljava/lang/Object;

    iget-object v1, p0, Lorg/apache/commons/collections/buffer/UnboundedFifoBuffer$1;->this$0:Lorg/apache/commons/collections/buffer/UnboundedFifoBuffer;

    iget v1, v1, Lorg/apache/commons/collections/buffer/UnboundedFifoBuffer;->tail:I

    const/4 v2, 0x0

    aput-object v2, v0, v1

    .line 310
    iget-object v0, p0, Lorg/apache/commons/collections/buffer/UnboundedFifoBuffer$1;->this$0:Lorg/apache/commons/collections/buffer/UnboundedFifoBuffer;

    iget v1, p0, Lorg/apache/commons/collections/buffer/UnboundedFifoBuffer$1;->index:I

    invoke-static {v0, v1}, Lorg/apache/commons/collections/buffer/UnboundedFifoBuffer;->access$100(Lorg/apache/commons/collections/buffer/UnboundedFifoBuffer;I)I

    move-result v0

    iput v0, p0, Lorg/apache/commons/collections/buffer/UnboundedFifoBuffer$1;->index:I

    return-void

    .line 290
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method
