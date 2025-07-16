.class Lorg/apache/commons/collections/UnboundedFifoBuffer$1;
.super Ljava/lang/Object;
.source "UnboundedFifoBuffer.java"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field private index:I

.field private lastReturnedIndex:I

.field private final synthetic this$0:Lorg/apache/commons/collections/UnboundedFifoBuffer;


# direct methods
.method constructor <init>(Lorg/apache/commons/collections/UnboundedFifoBuffer;)V
    .locals 0

    .line 229
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/collections/UnboundedFifoBuffer$1;->this$0:Lorg/apache/commons/collections/UnboundedFifoBuffer;

    .line 231
    iget p1, p1, Lorg/apache/commons/collections/UnboundedFifoBuffer;->m_head:I

    iput p1, p0, Lorg/apache/commons/collections/UnboundedFifoBuffer$1;->index:I

    const/4 p1, -0x1

    .line 232
    iput p1, p0, Lorg/apache/commons/collections/UnboundedFifoBuffer$1;->lastReturnedIndex:I

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    .line 235
    iget v0, p0, Lorg/apache/commons/collections/UnboundedFifoBuffer$1;->index:I

    iget-object v1, p0, Lorg/apache/commons/collections/UnboundedFifoBuffer$1;->this$0:Lorg/apache/commons/collections/UnboundedFifoBuffer;

    iget v1, v1, Lorg/apache/commons/collections/UnboundedFifoBuffer;->m_tail:I

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

    .line 240
    invoke-virtual {p0}, Lorg/apache/commons/collections/UnboundedFifoBuffer$1;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 242
    iget v0, p0, Lorg/apache/commons/collections/UnboundedFifoBuffer$1;->index:I

    iput v0, p0, Lorg/apache/commons/collections/UnboundedFifoBuffer$1;->lastReturnedIndex:I

    .line 243
    iget-object v1, p0, Lorg/apache/commons/collections/UnboundedFifoBuffer$1;->this$0:Lorg/apache/commons/collections/UnboundedFifoBuffer;

    invoke-static {v1, v0}, Lorg/apache/commons/collections/UnboundedFifoBuffer;->access$000(Lorg/apache/commons/collections/UnboundedFifoBuffer;I)I

    move-result v0

    iput v0, p0, Lorg/apache/commons/collections/UnboundedFifoBuffer$1;->index:I

    .line 244
    iget-object v0, p0, Lorg/apache/commons/collections/UnboundedFifoBuffer$1;->this$0:Lorg/apache/commons/collections/UnboundedFifoBuffer;

    iget-object v0, v0, Lorg/apache/commons/collections/UnboundedFifoBuffer;->m_buffer:[Ljava/lang/Object;

    iget v1, p0, Lorg/apache/commons/collections/UnboundedFifoBuffer$1;->lastReturnedIndex:I

    aget-object v0, v0, v1

    return-object v0

    .line 241
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public remove()V
    .locals 5

    .line 248
    iget v0, p0, Lorg/apache/commons/collections/UnboundedFifoBuffer$1;->lastReturnedIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    .line 252
    iget-object v2, p0, Lorg/apache/commons/collections/UnboundedFifoBuffer$1;->this$0:Lorg/apache/commons/collections/UnboundedFifoBuffer;

    iget v2, v2, Lorg/apache/commons/collections/UnboundedFifoBuffer;->m_head:I

    if-ne v0, v2, :cond_0

    .line 253
    iget-object v0, p0, Lorg/apache/commons/collections/UnboundedFifoBuffer$1;->this$0:Lorg/apache/commons/collections/UnboundedFifoBuffer;

    invoke-virtual {v0}, Lorg/apache/commons/collections/UnboundedFifoBuffer;->remove()Ljava/lang/Object;

    .line 254
    iput v1, p0, Lorg/apache/commons/collections/UnboundedFifoBuffer$1;->lastReturnedIndex:I

    return-void

    .line 259
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections/UnboundedFifoBuffer$1;->this$0:Lorg/apache/commons/collections/UnboundedFifoBuffer;

    iget v2, p0, Lorg/apache/commons/collections/UnboundedFifoBuffer$1;->lastReturnedIndex:I

    invoke-static {v0, v2}, Lorg/apache/commons/collections/UnboundedFifoBuffer;->access$000(Lorg/apache/commons/collections/UnboundedFifoBuffer;I)I

    move-result v0

    .line 260
    :goto_0
    iget-object v2, p0, Lorg/apache/commons/collections/UnboundedFifoBuffer$1;->this$0:Lorg/apache/commons/collections/UnboundedFifoBuffer;

    iget v2, v2, Lorg/apache/commons/collections/UnboundedFifoBuffer;->m_tail:I

    if-eq v0, v2, :cond_1

    .line 261
    iget-object v2, p0, Lorg/apache/commons/collections/UnboundedFifoBuffer$1;->this$0:Lorg/apache/commons/collections/UnboundedFifoBuffer;

    iget-object v2, v2, Lorg/apache/commons/collections/UnboundedFifoBuffer;->m_buffer:[Ljava/lang/Object;

    iget-object v3, p0, Lorg/apache/commons/collections/UnboundedFifoBuffer$1;->this$0:Lorg/apache/commons/collections/UnboundedFifoBuffer;

    invoke-static {v3, v0}, Lorg/apache/commons/collections/UnboundedFifoBuffer;->access$100(Lorg/apache/commons/collections/UnboundedFifoBuffer;I)I

    move-result v3

    iget-object v4, p0, Lorg/apache/commons/collections/UnboundedFifoBuffer$1;->this$0:Lorg/apache/commons/collections/UnboundedFifoBuffer;

    iget-object v4, v4, Lorg/apache/commons/collections/UnboundedFifoBuffer;->m_buffer:[Ljava/lang/Object;

    aget-object v4, v4, v0

    aput-object v4, v2, v3

    .line 262
    iget-object v2, p0, Lorg/apache/commons/collections/UnboundedFifoBuffer$1;->this$0:Lorg/apache/commons/collections/UnboundedFifoBuffer;

    invoke-static {v2, v0}, Lorg/apache/commons/collections/UnboundedFifoBuffer;->access$000(Lorg/apache/commons/collections/UnboundedFifoBuffer;I)I

    move-result v0

    goto :goto_0

    .line 265
    :cond_1
    iput v1, p0, Lorg/apache/commons/collections/UnboundedFifoBuffer$1;->lastReturnedIndex:I

    .line 266
    iget-object v0, p0, Lorg/apache/commons/collections/UnboundedFifoBuffer$1;->this$0:Lorg/apache/commons/collections/UnboundedFifoBuffer;

    iget v1, v0, Lorg/apache/commons/collections/UnboundedFifoBuffer;->m_tail:I

    invoke-static {v0, v1}, Lorg/apache/commons/collections/UnboundedFifoBuffer;->access$100(Lorg/apache/commons/collections/UnboundedFifoBuffer;I)I

    move-result v1

    iput v1, v0, Lorg/apache/commons/collections/UnboundedFifoBuffer;->m_tail:I

    .line 267
    iget-object v0, p0, Lorg/apache/commons/collections/UnboundedFifoBuffer$1;->this$0:Lorg/apache/commons/collections/UnboundedFifoBuffer;

    iget-object v0, v0, Lorg/apache/commons/collections/UnboundedFifoBuffer;->m_buffer:[Ljava/lang/Object;

    iget-object v1, p0, Lorg/apache/commons/collections/UnboundedFifoBuffer$1;->this$0:Lorg/apache/commons/collections/UnboundedFifoBuffer;

    iget v1, v1, Lorg/apache/commons/collections/UnboundedFifoBuffer;->m_tail:I

    const/4 v2, 0x0

    aput-object v2, v0, v1

    .line 268
    iget-object v0, p0, Lorg/apache/commons/collections/UnboundedFifoBuffer$1;->this$0:Lorg/apache/commons/collections/UnboundedFifoBuffer;

    iget v1, p0, Lorg/apache/commons/collections/UnboundedFifoBuffer$1;->index:I

    invoke-static {v0, v1}, Lorg/apache/commons/collections/UnboundedFifoBuffer;->access$100(Lorg/apache/commons/collections/UnboundedFifoBuffer;I)I

    move-result v0

    iput v0, p0, Lorg/apache/commons/collections/UnboundedFifoBuffer$1;->index:I

    return-void

    .line 249
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method
