.class Lorg/apache/commons/collections/BoundedFifoBuffer$1;
.super Ljava/lang/Object;
.source "BoundedFifoBuffer.java"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field private index:I

.field private isFirst:Z

.field private lastReturnedIndex:I

.field private final synthetic this$0:Lorg/apache/commons/collections/BoundedFifoBuffer;


# direct methods
.method constructor <init>(Lorg/apache/commons/collections/BoundedFifoBuffer;)V
    .locals 0

    .line 260
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/collections/BoundedFifoBuffer$1;->this$0:Lorg/apache/commons/collections/BoundedFifoBuffer;

    .line 262
    invoke-static {p1}, Lorg/apache/commons/collections/BoundedFifoBuffer;->access$000(Lorg/apache/commons/collections/BoundedFifoBuffer;)I

    move-result p1

    iput p1, p0, Lorg/apache/commons/collections/BoundedFifoBuffer$1;->index:I

    .line 263
    const/4 p1, -0x1

    iput p1, p0, Lorg/apache/commons/collections/BoundedFifoBuffer$1;->lastReturnedIndex:I

    .line 264
    iget-object p1, p0, Lorg/apache/commons/collections/BoundedFifoBuffer$1;->this$0:Lorg/apache/commons/collections/BoundedFifoBuffer;

    invoke-static {p1}, Lorg/apache/commons/collections/BoundedFifoBuffer;->access$100(Lorg/apache/commons/collections/BoundedFifoBuffer;)Z

    move-result p1

    iput-boolean p1, p0, Lorg/apache/commons/collections/BoundedFifoBuffer$1;->isFirst:Z

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    .line 267
    iget-boolean v0, p0, Lorg/apache/commons/collections/BoundedFifoBuffer$1;->isFirst:Z

    if-nez v0, :cond_1

    iget v0, p0, Lorg/apache/commons/collections/BoundedFifoBuffer$1;->index:I

    iget-object v1, p0, Lorg/apache/commons/collections/BoundedFifoBuffer$1;->this$0:Lorg/apache/commons/collections/BoundedFifoBuffer;

    invoke-static {v1}, Lorg/apache/commons/collections/BoundedFifoBuffer;->access$200(Lorg/apache/commons/collections/BoundedFifoBuffer;)I

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

    .line 272
    invoke-virtual {p0}, Lorg/apache/commons/collections/BoundedFifoBuffer$1;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 273
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/collections/BoundedFifoBuffer$1;->isFirst:Z

    .line 274
    iget v0, p0, Lorg/apache/commons/collections/BoundedFifoBuffer$1;->index:I

    iput v0, p0, Lorg/apache/commons/collections/BoundedFifoBuffer$1;->lastReturnedIndex:I

    .line 275
    iget-object v1, p0, Lorg/apache/commons/collections/BoundedFifoBuffer$1;->this$0:Lorg/apache/commons/collections/BoundedFifoBuffer;

    invoke-static {v1, v0}, Lorg/apache/commons/collections/BoundedFifoBuffer;->access$300(Lorg/apache/commons/collections/BoundedFifoBuffer;I)I

    move-result v0

    iput v0, p0, Lorg/apache/commons/collections/BoundedFifoBuffer$1;->index:I

    .line 276
    iget-object v0, p0, Lorg/apache/commons/collections/BoundedFifoBuffer$1;->this$0:Lorg/apache/commons/collections/BoundedFifoBuffer;

    invoke-static {v0}, Lorg/apache/commons/collections/BoundedFifoBuffer;->access$400(Lorg/apache/commons/collections/BoundedFifoBuffer;)[Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lorg/apache/commons/collections/BoundedFifoBuffer$1;->lastReturnedIndex:I

    aget-object v0, v0, v1

    return-object v0

    .line 272
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public remove()V
    .locals 6

    .line 280
    iget v0, p0, Lorg/apache/commons/collections/BoundedFifoBuffer$1;->lastReturnedIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_3

    .line 283
    iget-object v2, p0, Lorg/apache/commons/collections/BoundedFifoBuffer$1;->this$0:Lorg/apache/commons/collections/BoundedFifoBuffer;

    invoke-static {v2}, Lorg/apache/commons/collections/BoundedFifoBuffer;->access$000(Lorg/apache/commons/collections/BoundedFifoBuffer;)I

    move-result v2

    if-ne v0, v2, :cond_0

    .line 284
    iget-object v0, p0, Lorg/apache/commons/collections/BoundedFifoBuffer$1;->this$0:Lorg/apache/commons/collections/BoundedFifoBuffer;

    invoke-virtual {v0}, Lorg/apache/commons/collections/BoundedFifoBuffer;->remove()Ljava/lang/Object;

    .line 285
    iput v1, p0, Lorg/apache/commons/collections/BoundedFifoBuffer$1;->lastReturnedIndex:I

    .line 286
    return-void

    .line 290
    :cond_0
    iget v0, p0, Lorg/apache/commons/collections/BoundedFifoBuffer$1;->lastReturnedIndex:I

    add-int/lit8 v0, v0, 0x1

    .line 291
    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lorg/apache/commons/collections/BoundedFifoBuffer$1;->this$0:Lorg/apache/commons/collections/BoundedFifoBuffer;

    invoke-static {v2}, Lorg/apache/commons/collections/BoundedFifoBuffer;->access$200(Lorg/apache/commons/collections/BoundedFifoBuffer;)I

    move-result v2

    const/4 v3, 0x0

    if-eq v0, v2, :cond_2

    .line 292
    iget-object v2, p0, Lorg/apache/commons/collections/BoundedFifoBuffer$1;->this$0:Lorg/apache/commons/collections/BoundedFifoBuffer;

    invoke-static {v2}, Lorg/apache/commons/collections/BoundedFifoBuffer;->access$500(Lorg/apache/commons/collections/BoundedFifoBuffer;)I

    move-result v2

    if-lt v0, v2, :cond_1

    .line 293
    iget-object v2, p0, Lorg/apache/commons/collections/BoundedFifoBuffer$1;->this$0:Lorg/apache/commons/collections/BoundedFifoBuffer;

    invoke-static {v2}, Lorg/apache/commons/collections/BoundedFifoBuffer;->access$400(Lorg/apache/commons/collections/BoundedFifoBuffer;)[Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v4, v0, -0x1

    iget-object v5, p0, Lorg/apache/commons/collections/BoundedFifoBuffer$1;->this$0:Lorg/apache/commons/collections/BoundedFifoBuffer;

    invoke-static {v5}, Lorg/apache/commons/collections/BoundedFifoBuffer;->access$400(Lorg/apache/commons/collections/BoundedFifoBuffer;)[Ljava/lang/Object;

    move-result-object v5

    aget-object v3, v5, v3

    aput-object v3, v2, v4

    .line 294
    const/4 v0, 0x0

    goto :goto_0

    .line 296
    :cond_1
    iget-object v2, p0, Lorg/apache/commons/collections/BoundedFifoBuffer$1;->this$0:Lorg/apache/commons/collections/BoundedFifoBuffer;

    invoke-static {v2}, Lorg/apache/commons/collections/BoundedFifoBuffer;->access$400(Lorg/apache/commons/collections/BoundedFifoBuffer;)[Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v3, v0, -0x1

    iget-object v4, p0, Lorg/apache/commons/collections/BoundedFifoBuffer$1;->this$0:Lorg/apache/commons/collections/BoundedFifoBuffer;

    invoke-static {v4}, Lorg/apache/commons/collections/BoundedFifoBuffer;->access$400(Lorg/apache/commons/collections/BoundedFifoBuffer;)[Ljava/lang/Object;

    move-result-object v4

    aget-object v4, v4, v0

    aput-object v4, v2, v3

    .line 297
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 301
    :cond_2
    iput v1, p0, Lorg/apache/commons/collections/BoundedFifoBuffer$1;->lastReturnedIndex:I

    .line 302
    iget-object v1, p0, Lorg/apache/commons/collections/BoundedFifoBuffer$1;->this$0:Lorg/apache/commons/collections/BoundedFifoBuffer;

    invoke-static {v1}, Lorg/apache/commons/collections/BoundedFifoBuffer;->access$200(Lorg/apache/commons/collections/BoundedFifoBuffer;)I

    move-result v2

    invoke-static {v1, v2}, Lorg/apache/commons/collections/BoundedFifoBuffer;->access$600(Lorg/apache/commons/collections/BoundedFifoBuffer;I)I

    move-result v2

    invoke-static {v1, v2}, Lorg/apache/commons/collections/BoundedFifoBuffer;->access$202(Lorg/apache/commons/collections/BoundedFifoBuffer;I)I

    .line 303
    iget-object v1, p0, Lorg/apache/commons/collections/BoundedFifoBuffer$1;->this$0:Lorg/apache/commons/collections/BoundedFifoBuffer;

    invoke-static {v1}, Lorg/apache/commons/collections/BoundedFifoBuffer;->access$400(Lorg/apache/commons/collections/BoundedFifoBuffer;)[Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/commons/collections/BoundedFifoBuffer$1;->this$0:Lorg/apache/commons/collections/BoundedFifoBuffer;

    invoke-static {v2}, Lorg/apache/commons/collections/BoundedFifoBuffer;->access$200(Lorg/apache/commons/collections/BoundedFifoBuffer;)I

    move-result v2

    const/4 v4, 0x0

    aput-object v4, v1, v2

    .line 304
    iget-object v1, p0, Lorg/apache/commons/collections/BoundedFifoBuffer$1;->this$0:Lorg/apache/commons/collections/BoundedFifoBuffer;

    invoke-static {v1, v3}, Lorg/apache/commons/collections/BoundedFifoBuffer;->access$102(Lorg/apache/commons/collections/BoundedFifoBuffer;Z)Z

    .line 305
    iget-object v1, p0, Lorg/apache/commons/collections/BoundedFifoBuffer$1;->this$0:Lorg/apache/commons/collections/BoundedFifoBuffer;

    iget v2, p0, Lorg/apache/commons/collections/BoundedFifoBuffer$1;->index:I

    invoke-static {v1, v2}, Lorg/apache/commons/collections/BoundedFifoBuffer;->access$600(Lorg/apache/commons/collections/BoundedFifoBuffer;I)I

    move-result v1

    iput v1, p0, Lorg/apache/commons/collections/BoundedFifoBuffer$1;->index:I

    .line 306
    return-void

    .line 280
    .end local v0    # "i":I
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method
