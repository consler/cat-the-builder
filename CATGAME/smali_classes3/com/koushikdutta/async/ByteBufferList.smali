.class public Lcom/koushikdutta/async/ByteBufferList;
.super Ljava/lang/Object;
.source "ByteBufferList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/koushikdutta/async/ByteBufferList$Reclaimer;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static final EMPTY_BYTEBUFFER:Ljava/nio/ByteBuffer;

.field private static final LOCK:Ljava/lang/Object;

.field public static MAX_ITEM_SIZE:I

.field private static MAX_SIZE:I

.field static currentSize:I

.field static maxItem:I

.field static reclaimed:Ljava/util/PriorityQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/PriorityQueue<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field mBuffers:Lcom/koushikdutta/async/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/koushikdutta/async/ArrayDeque<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation
.end field

.field order:Ljava/nio/ByteOrder;

.field private remaining:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 416
    new-instance v0, Ljava/util/PriorityQueue;

    new-instance v1, Lcom/koushikdutta/async/ByteBufferList$Reclaimer;

    invoke-direct {v1}, Lcom/koushikdutta/async/ByteBufferList$Reclaimer;-><init>()V

    const/16 v2, 0x8

    invoke-direct {v0, v2, v1}, Ljava/util/PriorityQueue;-><init>(ILjava/util/Comparator;)V

    sput-object v0, Lcom/koushikdutta/async/ByteBufferList;->reclaimed:Ljava/util/PriorityQueue;

    const/high16 v0, 0x100000

    .line 427
    sput v0, Lcom/koushikdutta/async/ByteBufferList;->MAX_SIZE:I

    const/high16 v0, 0x40000

    .line 428
    sput v0, Lcom/koushikdutta/async/ByteBufferList;->MAX_ITEM_SIZE:I

    const/4 v0, 0x0

    .line 429
    sput v0, Lcom/koushikdutta/async/ByteBufferList;->currentSize:I

    .line 430
    sput v0, Lcom/koushikdutta/async/ByteBufferList;->maxItem:I

    .line 487
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    sput-object v1, Lcom/koushikdutta/async/ByteBufferList;->LOCK:Ljava/lang/Object;

    .line 543
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    sput-object v0, Lcom/koushikdutta/async/ByteBufferList;->EMPTY_BYTEBUFFER:Ljava/nio/ByteBuffer;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Lcom/koushikdutta/async/ArrayDeque;

    invoke-direct {v0}, Lcom/koushikdutta/async/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/koushikdutta/async/ByteBufferList;->mBuffers:Lcom/koushikdutta/async/ArrayDeque;

    .line 21
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    iput-object v0, p0, Lcom/koushikdutta/async/ByteBufferList;->order:Ljava/nio/ByteOrder;

    const/4 v0, 0x0

    .line 91
    iput v0, p0, Lcom/koushikdutta/async/ByteBufferList;->remaining:I

    return-void
.end method

.method public constructor <init>([B)V
    .locals 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Lcom/koushikdutta/async/ArrayDeque;

    invoke-direct {v0}, Lcom/koushikdutta/async/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/koushikdutta/async/ByteBufferList;->mBuffers:Lcom/koushikdutta/async/ArrayDeque;

    .line 21
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    iput-object v0, p0, Lcom/koushikdutta/async/ByteBufferList;->order:Ljava/nio/ByteOrder;

    const/4 v0, 0x0

    .line 91
    iput v0, p0, Lcom/koushikdutta/async/ByteBufferList;->remaining:I

    .line 40
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 41
    invoke-virtual {p0, p1}, Lcom/koushikdutta/async/ByteBufferList;->add(Ljava/nio/ByteBuffer;)Lcom/koushikdutta/async/ByteBufferList;

    return-void
.end method

.method public varargs constructor <init>([Ljava/nio/ByteBuffer;)V
    .locals 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Lcom/koushikdutta/async/ArrayDeque;

    invoke-direct {v0}, Lcom/koushikdutta/async/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/koushikdutta/async/ByteBufferList;->mBuffers:Lcom/koushikdutta/async/ArrayDeque;

    .line 21
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    iput-object v0, p0, Lcom/koushikdutta/async/ByteBufferList;->order:Ljava/nio/ByteOrder;

    const/4 v0, 0x0

    .line 91
    iput v0, p0, Lcom/koushikdutta/async/ByteBufferList;->remaining:I

    .line 35
    invoke-virtual {p0, p1}, Lcom/koushikdutta/async/ByteBufferList;->addAll([Ljava/nio/ByteBuffer;)Lcom/koushikdutta/async/ByteBufferList;

    return-void
.end method

.method private addRemaining(I)V
    .locals 1

    .line 339
    invoke-virtual {p0}, Lcom/koushikdutta/async/ByteBufferList;->remaining()I

    move-result v0

    if-ltz v0, :cond_0

    .line 340
    iget v0, p0, Lcom/koushikdutta/async/ByteBufferList;->remaining:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/koushikdutta/async/ByteBufferList;->remaining:I

    :cond_0
    return-void
.end method

.method private static getReclaimed()Ljava/util/PriorityQueue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/PriorityQueue<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation

    .line 419
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 421
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    if-ne v1, v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 424
    :cond_0
    sget-object v0, Lcom/koushikdutta/async/ByteBufferList;->reclaimed:Ljava/util/PriorityQueue;

    return-object v0
.end method

.method public static obtain(I)Ljava/nio/ByteBuffer;
    .locals 5

    .line 490
    sget v0, Lcom/koushikdutta/async/ByteBufferList;->maxItem:I

    if-gt p0, v0, :cond_3

    .line 491
    invoke-static {}, Lcom/koushikdutta/async/ByteBufferList;->getReclaimed()Ljava/util/PriorityQueue;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 493
    sget-object v1, Lcom/koushikdutta/async/ByteBufferList;->LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 494
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Ljava/util/PriorityQueue;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 495
    invoke-virtual {v0}, Ljava/util/PriorityQueue;->remove()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/nio/ByteBuffer;

    .line 496
    invoke-virtual {v0}, Ljava/util/PriorityQueue;->size()I

    move-result v3

    if-nez v3, :cond_1

    const/4 v3, 0x0

    .line 497
    sput v3, Lcom/koushikdutta/async/ByteBufferList;->maxItem:I

    .line 498
    :cond_1
    sget v3, Lcom/koushikdutta/async/ByteBufferList;->currentSize:I

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v4

    sub-int/2addr v3, v4

    sput v3, Lcom/koushikdutta/async/ByteBufferList;->currentSize:I

    .line 500
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v3

    if-lt v3, p0, :cond_0

    .line 502
    monitor-exit v1

    return-object v2

    .line 506
    :cond_2
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_3
    :goto_0
    const/16 v0, 0x2000

    .line 511
    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    invoke-static {p0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p0

    return-object p0
.end method

.method public static obtainArray([Ljava/nio/ByteBuffer;I)V
    .locals 7

    .line 516
    invoke-static {}, Lcom/koushikdutta/async/ByteBufferList;->getReclaimed()Ljava/util/PriorityQueue;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 521
    sget-object v2, Lcom/koushikdutta/async/ByteBufferList;->LOCK:Ljava/lang/Object;

    monitor-enter v2

    move v3, v1

    .line 522
    :goto_0
    :try_start_0
    invoke-virtual {v0}, Ljava/util/PriorityQueue;->size()I

    move-result v4

    if-lez v4, :cond_0

    if-ge v1, p1, :cond_0

    array-length v4, p0

    add-int/lit8 v4, v4, -0x1

    if-ge v3, v4, :cond_0

    .line 523
    invoke-virtual {v0}, Ljava/util/PriorityQueue;->remove()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/nio/ByteBuffer;

    .line 524
    sget v5, Lcom/koushikdutta/async/ByteBufferList;->currentSize:I

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v6

    sub-int/2addr v5, v6

    sput v5, Lcom/koushikdutta/async/ByteBufferList;->currentSize:I

    sub-int v5, p1, v1

    .line 526
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    add-int/2addr v1, v5

    add-int/lit8 v5, v3, 0x1

    .line 528
    aput-object v4, p0, v3

    move v3, v5

    goto :goto_0

    .line 530
    :cond_0
    monitor-exit v2

    goto :goto_1

    :catchall_0
    move-exception p0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    move v3, v1

    :goto_1
    if-ge v1, p1, :cond_2

    const/16 v0, 0x2000

    sub-int/2addr p1, v1

    .line 534
    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    add-int/lit8 v0, v3, 0x1

    .line 535
    aput-object p1, p0, v3

    move v3, v0

    .line 538
    :cond_2
    :goto_2
    array-length p1, p0

    if-ge v3, p1, :cond_3

    .line 539
    sget-object p1, Lcom/koushikdutta/async/ByteBufferList;->EMPTY_BYTEBUFFER:Ljava/nio/ByteBuffer;

    aput-object p1, p0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method

.method private read(I)Ljava/nio/ByteBuffer;
    .locals 7

    .line 238
    invoke-virtual {p0}, Lcom/koushikdutta/async/ByteBufferList;->remaining()I

    move-result v0

    if-lt v0, p1, :cond_6

    .line 241
    iget-object v0, p0, Lcom/koushikdutta/async/ByteBufferList;->mBuffers:Lcom/koushikdutta/async/ArrayDeque;

    invoke-virtual {v0}, Lcom/koushikdutta/async/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    :goto_0
    if-eqz v0, :cond_0

    .line 242
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v1

    if-nez v1, :cond_0

    .line 243
    iget-object v0, p0, Lcom/koushikdutta/async/ByteBufferList;->mBuffers:Lcom/koushikdutta/async/ArrayDeque;

    invoke-virtual {v0}, Lcom/koushikdutta/async/ArrayDeque;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    invoke-static {v0}, Lcom/koushikdutta/async/ByteBufferList;->reclaim(Ljava/nio/ByteBuffer;)V

    .line 244
    iget-object v0, p0, Lcom/koushikdutta/async/ByteBufferList;->mBuffers:Lcom/koushikdutta/async/ArrayDeque;

    invoke-virtual {v0}, Lcom/koushikdutta/async/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    goto :goto_0

    :cond_0
    if-nez v0, :cond_1

    .line 248
    sget-object p1, Lcom/koushikdutta/async/ByteBufferList;->EMPTY_BYTEBUFFER:Ljava/nio/ByteBuffer;

    return-object p1

    .line 251
    :cond_1
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    if-lt v1, p1, :cond_2

    .line 252
    iget-object p1, p0, Lcom/koushikdutta/async/ByteBufferList;->order:Ljava/nio/ByteOrder;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p1

    return-object p1

    .line 255
    :cond_2
    invoke-static {p1}, Lcom/koushikdutta/async/ByteBufferList;->obtain(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 256
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 257
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_1
    move-object v4, v2

    :cond_3
    if-ge v3, p1, :cond_4

    .line 261
    iget-object v4, p0, Lcom/koushikdutta/async/ByteBufferList;->mBuffers:Lcom/koushikdutta/async/ArrayDeque;

    invoke-virtual {v4}, Lcom/koushikdutta/async/ArrayDeque;->remove()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/nio/ByteBuffer;

    sub-int v5, p1, v3

    .line 262
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 263
    invoke-virtual {v4, v1, v3, v5}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    add-int/2addr v3, v5

    .line 265
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v5

    if-nez v5, :cond_3

    .line 266
    invoke-static {v4}, Lcom/koushikdutta/async/ByteBufferList;->reclaim(Ljava/nio/ByteBuffer;)V

    goto :goto_1

    :cond_4
    if-eqz v4, :cond_5

    .line 272
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->remaining()I

    move-result p1

    if-lez p1, :cond_5

    .line 273
    iget-object p1, p0, Lcom/koushikdutta/async/ByteBufferList;->mBuffers:Lcom/koushikdutta/async/ArrayDeque;

    invoke-virtual {p1, v4}, Lcom/koushikdutta/async/ArrayDeque;->addFirst(Ljava/lang/Object;)V

    .line 274
    :cond_5
    iget-object p1, p0, Lcom/koushikdutta/async/ByteBufferList;->mBuffers:Lcom/koushikdutta/async/ArrayDeque;

    invoke-virtual {p1, v0}, Lcom/koushikdutta/async/ArrayDeque;->addFirst(Ljava/lang/Object;)V

    .line 275
    iget-object p1, p0, Lcom/koushikdutta/async/ByteBufferList;->order:Ljava/nio/ByteOrder;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p1

    return-object p1

    .line 239
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "count : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/koushikdutta/async/ByteBufferList;->remaining()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static reclaim(Ljava/nio/ByteBuffer;)V
    .locals 4

    if-eqz p0, :cond_7

    .line 449
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    .line 451
    :cond_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v0

    if-nez v0, :cond_7

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    array-length v0, v0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    if-eq v0, v1, :cond_1

    goto/16 :goto_1

    .line 453
    :cond_1
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    const/16 v1, 0x2000

    if-ge v0, v1, :cond_2

    return-void

    .line 455
    :cond_2
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    sget v1, Lcom/koushikdutta/async/ByteBufferList;->MAX_ITEM_SIZE:I

    if-le v0, v1, :cond_3

    return-void

    .line 458
    :cond_3
    invoke-static {}, Lcom/koushikdutta/async/ByteBufferList;->getReclaimed()Ljava/util/PriorityQueue;

    move-result-object v0

    if-nez v0, :cond_4

    return-void

    .line 462
    :cond_4
    sget-object v1, Lcom/koushikdutta/async/ByteBufferList;->LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 463
    :goto_0
    :try_start_0
    sget v2, Lcom/koushikdutta/async/ByteBufferList;->currentSize:I

    sget v3, Lcom/koushikdutta/async/ByteBufferList;->MAX_SIZE:I

    if-le v2, v3, :cond_5

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->size()I

    move-result v2

    if-lez v2, :cond_5

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v2

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v3

    if-ge v2, v3, :cond_5

    .line 465
    invoke-virtual {v0}, Ljava/util/PriorityQueue;->remove()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/nio/ByteBuffer;

    .line 466
    sget v3, Lcom/koushikdutta/async/ByteBufferList;->currentSize:I

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v2

    sub-int/2addr v3, v2

    sput v3, Lcom/koushikdutta/async/ByteBufferList;->currentSize:I

    goto :goto_0

    .line 469
    :cond_5
    sget v2, Lcom/koushikdutta/async/ByteBufferList;->currentSize:I

    sget v3, Lcom/koushikdutta/async/ByteBufferList;->MAX_SIZE:I

    if-le v2, v3, :cond_6

    .line 471
    monitor-exit v1

    return-void

    :cond_6
    const/4 v2, 0x0

    .line 476
    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 477
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v2

    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 478
    sget v2, Lcom/koushikdutta/async/ByteBufferList;->currentSize:I

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v3

    add-int/2addr v2, v3

    sput v2, Lcom/koushikdutta/async/ByteBufferList;->currentSize:I

    .line 480
    invoke-virtual {v0, p0}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    .line 483
    sget v0, Lcom/koushikdutta/async/ByteBufferList;->maxItem:I

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result p0

    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    sput p0, Lcom/koushikdutta/async/ByteBufferList;->maxItem:I

    .line 484
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_7
    :goto_1
    return-void
.end method

.method private static reclaimedContains(Ljava/nio/ByteBuffer;)Z
    .locals 2

    .line 441
    sget-object v0, Lcom/koushikdutta/async/ByteBufferList;->reclaimed:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/nio/ByteBuffer;

    if-ne v1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static setMaxItemSize(I)V
    .locals 0

    .line 437
    sput p0, Lcom/koushikdutta/async/ByteBufferList;->MAX_ITEM_SIZE:I

    return-void
.end method

.method public static setMaxPoolSize(I)V
    .locals 0

    .line 433
    sput p0, Lcom/koushikdutta/async/ByteBufferList;->MAX_SIZE:I

    return-void
.end method

.method public static writeOutputStream(Ljava/io/OutputStream;Ljava/nio/ByteBuffer;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 549
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 550
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    new-array v0, v0, [B

    .line 552
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    .line 553
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    const/4 p1, 0x0

    goto :goto_0

    .line 556
    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    .line 557
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    add-int/2addr v1, v2

    .line 558
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result p1

    move v3, v1

    move v1, p1

    move p1, v3

    .line 560
    :goto_0
    invoke-virtual {p0, v0, p1, v1}, Ljava/io/OutputStream;->write([BII)V

    return-void
.end method


# virtual methods
.method public add(Lcom/koushikdutta/async/ByteBufferList;)Lcom/koushikdutta/async/ByteBufferList;
    .locals 0

    .line 284
    invoke-virtual {p1, p0}, Lcom/koushikdutta/async/ByteBufferList;->get(Lcom/koushikdutta/async/ByteBufferList;)V

    return-object p0
.end method

.method public add(Ljava/nio/ByteBuffer;)Lcom/koushikdutta/async/ByteBufferList;
    .locals 3

    .line 289
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    if-gtz v0, :cond_0

    .line 291
    invoke-static {p1}, Lcom/koushikdutta/async/ByteBufferList;->reclaim(Ljava/nio/ByteBuffer;)V

    return-object p0

    .line 294
    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/koushikdutta/async/ByteBufferList;->addRemaining(I)V

    .line 297
    iget-object v0, p0, Lcom/koushikdutta/async/ByteBufferList;->mBuffers:Lcom/koushikdutta/async/ArrayDeque;

    invoke-virtual {v0}, Lcom/koushikdutta/async/ArrayDeque;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 298
    iget-object v0, p0, Lcom/koushikdutta/async/ByteBufferList;->mBuffers:Lcom/koushikdutta/async/ArrayDeque;

    invoke-virtual {v0}, Lcom/koushikdutta/async/ArrayDeque;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    .line 299
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    if-lt v1, v2, :cond_1

    .line 300
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->mark()Ljava/nio/Buffer;

    .line 301
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 302
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 303
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 304
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 305
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->reset()Ljava/nio/Buffer;

    .line 306
    invoke-static {p1}, Lcom/koushikdutta/async/ByteBufferList;->reclaim(Ljava/nio/ByteBuffer;)V

    .line 307
    invoke-virtual {p0}, Lcom/koushikdutta/async/ByteBufferList;->trim()V

    return-object p0

    .line 311
    :cond_1
    iget-object v0, p0, Lcom/koushikdutta/async/ByteBufferList;->mBuffers:Lcom/koushikdutta/async/ArrayDeque;

    invoke-virtual {v0, p1}, Lcom/koushikdutta/async/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 312
    invoke-virtual {p0}, Lcom/koushikdutta/async/ByteBufferList;->trim()V

    return-object p0
.end method

.method public varargs addAll([Lcom/koushikdutta/async/ByteBufferList;)Lcom/koushikdutta/async/ByteBufferList;
    .locals 3

    .line 51
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 52
    invoke-virtual {v2, p0}, Lcom/koushikdutta/async/ByteBufferList;->get(Lcom/koushikdutta/async/ByteBufferList;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public varargs addAll([Ljava/nio/ByteBuffer;)Lcom/koushikdutta/async/ByteBufferList;
    .locals 3

    .line 45
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 46
    invoke-virtual {p0, v2}, Lcom/koushikdutta/async/ByteBufferList;->add(Ljava/nio/ByteBuffer;)Lcom/koushikdutta/async/ByteBufferList;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public addFirst(Ljava/nio/ByteBuffer;)V
    .locals 3

    .line 317
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    if-gtz v0, :cond_0

    .line 318
    invoke-static {p1}, Lcom/koushikdutta/async/ByteBufferList;->reclaim(Ljava/nio/ByteBuffer;)V

    return-void

    .line 321
    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/koushikdutta/async/ByteBufferList;->addRemaining(I)V

    .line 324
    iget-object v0, p0, Lcom/koushikdutta/async/ByteBufferList;->mBuffers:Lcom/koushikdutta/async/ArrayDeque;

    invoke-virtual {v0}, Lcom/koushikdutta/async/ArrayDeque;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 325
    iget-object v0, p0, Lcom/koushikdutta/async/ByteBufferList;->mBuffers:Lcom/koushikdutta/async/ArrayDeque;

    invoke-virtual {v0}, Lcom/koushikdutta/async/ArrayDeque;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    .line 326
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    if-lt v1, v2, :cond_1

    .line 327
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 328
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->mark()Ljava/nio/Buffer;

    .line 329
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 330
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->reset()Ljava/nio/Buffer;

    .line 331
    invoke-static {p1}, Lcom/koushikdutta/async/ByteBufferList;->reclaim(Ljava/nio/ByteBuffer;)V

    return-void

    .line 335
    :cond_1
    iget-object v0, p0, Lcom/koushikdutta/async/ByteBufferList;->mBuffers:Lcom/koushikdutta/async/ArrayDeque;

    invoke-virtual {v0, p1}, Lcom/koushikdutta/async/ArrayDeque;->addFirst(Ljava/lang/Object;)V

    return-void
.end method

.method public get()B
    .locals 3

    const/4 v0, 0x1

    .line 142
    invoke-direct {p0, v0}, Lcom/koushikdutta/async/ByteBufferList;->read(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    .line 143
    iget v2, p0, Lcom/koushikdutta/async/ByteBufferList;->remaining:I

    sub-int/2addr v2, v0

    iput v2, p0, Lcom/koushikdutta/async/ByteBufferList;->remaining:I

    return v1
.end method

.method public get(I)Lcom/koushikdutta/async/ByteBufferList;
    .locals 1

    .line 225
    new-instance v0, Lcom/koushikdutta/async/ByteBufferList;

    invoke-direct {v0}, Lcom/koushikdutta/async/ByteBufferList;-><init>()V

    .line 226
    invoke-virtual {p0, v0, p1}, Lcom/koushikdutta/async/ByteBufferList;->get(Lcom/koushikdutta/async/ByteBufferList;I)V

    .line 227
    iget-object p1, p0, Lcom/koushikdutta/async/ByteBufferList;->order:Ljava/nio/ByteOrder;

    invoke-virtual {v0, p1}, Lcom/koushikdutta/async/ByteBufferList;->order(Ljava/nio/ByteOrder;)Lcom/koushikdutta/async/ByteBufferList;

    move-result-object p1

    return-object p1
.end method

.method public get(Lcom/koushikdutta/async/ByteBufferList;)V
    .locals 1

    .line 221
    invoke-virtual {p0}, Lcom/koushikdutta/async/ByteBufferList;->remaining()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/koushikdutta/async/ByteBufferList;->get(Lcom/koushikdutta/async/ByteBufferList;I)V

    return-void
.end method

.method public get(Lcom/koushikdutta/async/ByteBufferList;I)V
    .locals 5

    .line 184
    invoke-virtual {p0}, Lcom/koushikdutta/async/ByteBufferList;->remaining()I

    move-result v0

    if-lt v0, p2, :cond_3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p2, :cond_2

    .line 189
    iget-object v2, p0, Lcom/koushikdutta/async/ByteBufferList;->mBuffers:Lcom/koushikdutta/async/ArrayDeque;

    invoke-virtual {v2}, Lcom/koushikdutta/async/ArrayDeque;->remove()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/nio/ByteBuffer;

    .line 190
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    if-nez v3, :cond_0

    .line 193
    invoke-static {v2}, Lcom/koushikdutta/async/ByteBufferList;->reclaim(Ljava/nio/ByteBuffer;)V

    goto :goto_0

    :cond_0
    add-int/2addr v3, v1

    if-le v3, p2, :cond_1

    sub-int v1, p2, v1

    .line 200
    invoke-static {v1}, Lcom/koushikdutta/async/ByteBufferList;->obtain(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 201
    invoke-virtual {v3, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 202
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    invoke-virtual {v2, v4, v0, v1}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 203
    invoke-virtual {p1, v3}, Lcom/koushikdutta/async/ByteBufferList;->add(Ljava/nio/ByteBuffer;)Lcom/koushikdutta/async/ByteBufferList;

    .line 204
    iget-object p1, p0, Lcom/koushikdutta/async/ByteBufferList;->mBuffers:Lcom/koushikdutta/async/ArrayDeque;

    invoke-virtual {p1, v2}, Lcom/koushikdutta/async/ArrayDeque;->addFirst(Ljava/lang/Object;)V

    goto :goto_1

    .line 211
    :cond_1
    invoke-virtual {p1, v2}, Lcom/koushikdutta/async/ByteBufferList;->add(Ljava/nio/ByteBuffer;)Lcom/koushikdutta/async/ByteBufferList;

    move v1, v3

    goto :goto_0

    .line 217
    :cond_2
    :goto_1
    iget p1, p0, Lcom/koushikdutta/async/ByteBufferList;->remaining:I

    sub-int/2addr p1, p2

    iput p1, p0, Lcom/koushikdutta/async/ByteBufferList;->remaining:I

    return-void

    .line 185
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "length"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public get([B)V
    .locals 2

    const/4 v0, 0x0

    .line 154
    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/koushikdutta/async/ByteBufferList;->get([BII)V

    return-void
.end method

.method public get([BII)V
    .locals 4

    .line 158
    invoke-virtual {p0}, Lcom/koushikdutta/async/ByteBufferList;->remaining()I

    move-result v0

    if-lt v0, p3, :cond_3

    move v0, p3

    :cond_0
    :goto_0
    if-lez v0, :cond_2

    .line 163
    iget-object v1, p0, Lcom/koushikdutta/async/ByteBufferList;->mBuffers:Lcom/koushikdutta/async/ArrayDeque;

    invoke-virtual {v1}, Lcom/koushikdutta/async/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/nio/ByteBuffer;

    .line 164
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    if-eqz p1, :cond_1

    .line 166
    invoke-virtual {v1, p1, p2, v2}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    goto :goto_1

    .line 169
    :cond_1
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    add-int/2addr v3, v2

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    :goto_1
    sub-int/2addr v0, v2

    add-int/2addr p2, v2

    .line 173
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    if-nez v2, :cond_0

    .line 174
    iget-object v2, p0, Lcom/koushikdutta/async/ByteBufferList;->mBuffers:Lcom/koushikdutta/async/ArrayDeque;

    invoke-virtual {v2}, Lcom/koushikdutta/async/ArrayDeque;->remove()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/nio/ByteBuffer;

    .line 176
    invoke-static {v1}, Lcom/koushikdutta/async/ByteBufferList;->reclaim(Ljava/nio/ByteBuffer;)V

    goto :goto_0

    .line 180
    :cond_2
    iget p1, p0, Lcom/koushikdutta/async/ByteBufferList;->remaining:I

    sub-int/2addr p1, p3

    iput p1, p0, Lcom/koushikdutta/async/ByteBufferList;->remaining:I

    return-void

    .line 159
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "length"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getAll()Ljava/nio/ByteBuffer;
    .locals 1

    .line 231
    invoke-virtual {p0}, Lcom/koushikdutta/async/ByteBufferList;->remaining()I

    move-result v0

    if-nez v0, :cond_0

    .line 232
    sget-object v0, Lcom/koushikdutta/async/ByteBufferList;->EMPTY_BYTEBUFFER:Ljava/nio/ByteBuffer;

    return-object v0

    .line 233
    :cond_0
    invoke-virtual {p0}, Lcom/koushikdutta/async/ByteBufferList;->remaining()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/koushikdutta/async/ByteBufferList;->read(I)Ljava/nio/ByteBuffer;

    .line 234
    invoke-virtual {p0}, Lcom/koushikdutta/async/ByteBufferList;->remove()Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public getAllArray()[Ljava/nio/ByteBuffer;
    .locals 2

    .line 80
    iget-object v0, p0, Lcom/koushikdutta/async/ByteBufferList;->mBuffers:Lcom/koushikdutta/async/ArrayDeque;

    invoke-virtual {v0}, Lcom/koushikdutta/async/ArrayDeque;->size()I

    move-result v0

    new-array v0, v0, [Ljava/nio/ByteBuffer;

    .line 81
    iget-object v1, p0, Lcom/koushikdutta/async/ByteBufferList;->mBuffers:Lcom/koushikdutta/async/ArrayDeque;

    invoke-virtual {v1, v0}, Lcom/koushikdutta/async/ArrayDeque;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/nio/ByteBuffer;

    .line 82
    iget-object v1, p0, Lcom/koushikdutta/async/ByteBufferList;->mBuffers:Lcom/koushikdutta/async/ArrayDeque;

    invoke-virtual {v1}, Lcom/koushikdutta/async/ArrayDeque;->clear()V

    const/4 v1, 0x0

    .line 83
    iput v1, p0, Lcom/koushikdutta/async/ByteBufferList;->remaining:I

    return-object v0
.end method

.method public getAllByteArray()[B
    .locals 3

    .line 65
    iget-object v0, p0, Lcom/koushikdutta/async/ByteBufferList;->mBuffers:Lcom/koushikdutta/async/ArrayDeque;

    invoke-virtual {v0}, Lcom/koushikdutta/async/ArrayDeque;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 66
    iget-object v0, p0, Lcom/koushikdutta/async/ByteBufferList;->mBuffers:Lcom/koushikdutta/async/ArrayDeque;

    invoke-virtual {v0}, Lcom/koushikdutta/async/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    .line 67
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    invoke-virtual {p0}, Lcom/koushikdutta/async/ByteBufferList;->remaining()I

    move-result v2

    if-ne v1, v2, :cond_0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 68
    iput v0, p0, Lcom/koushikdutta/async/ByteBufferList;->remaining:I

    .line 69
    iget-object v0, p0, Lcom/koushikdutta/async/ByteBufferList;->mBuffers:Lcom/koushikdutta/async/ArrayDeque;

    invoke-virtual {v0}, Lcom/koushikdutta/async/ArrayDeque;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    return-object v0

    .line 73
    :cond_0
    invoke-virtual {p0}, Lcom/koushikdutta/async/ByteBufferList;->remaining()I

    move-result v0

    new-array v0, v0, [B

    .line 74
    invoke-virtual {p0, v0}, Lcom/koushikdutta/async/ByteBufferList;->get([B)V

    return-object v0
.end method

.method public getByteChar()C
    .locals 3

    const/4 v0, 0x1

    .line 130
    invoke-direct {p0, v0}, Lcom/koushikdutta/async/ByteBufferList;->read(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    int-to-char v1, v1

    .line 131
    iget v2, p0, Lcom/koushikdutta/async/ByteBufferList;->remaining:I

    sub-int/2addr v2, v0

    iput v2, p0, Lcom/koushikdutta/async/ByteBufferList;->remaining:I

    return v1
.end method

.method public getBytes(I)[B
    .locals 0

    .line 57
    new-array p1, p1, [B

    .line 58
    invoke-virtual {p0, p1}, Lcom/koushikdutta/async/ByteBufferList;->get([B)V

    return-object p1
.end method

.method public getInt()I
    .locals 3

    const/4 v0, 0x4

    .line 124
    invoke-direct {p0, v0}, Lcom/koushikdutta/async/ByteBufferList;->read(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    .line 125
    iget v2, p0, Lcom/koushikdutta/async/ByteBufferList;->remaining:I

    sub-int/2addr v2, v0

    iput v2, p0, Lcom/koushikdutta/async/ByteBufferList;->remaining:I

    return v1
.end method

.method public getLong()J
    .locals 4

    const/16 v0, 0x8

    .line 148
    invoke-direct {p0, v0}, Lcom/koushikdutta/async/ByteBufferList;->read(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v1

    .line 149
    iget v3, p0, Lcom/koushikdutta/async/ByteBufferList;->remaining:I

    sub-int/2addr v3, v0

    iput v3, p0, Lcom/koushikdutta/async/ByteBufferList;->remaining:I

    return-wide v1
.end method

.method public getShort()S
    .locals 3

    const/4 v0, 0x2

    .line 136
    invoke-direct {p0, v0}, Lcom/koushikdutta/async/ByteBufferList;->read(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v1

    .line 137
    iget v2, p0, Lcom/koushikdutta/async/ByteBufferList;->remaining:I

    sub-int/2addr v2, v0

    iput v2, p0, Lcom/koushikdutta/async/ByteBufferList;->remaining:I

    return v1
.end method

.method public hasRemaining()Z
    .locals 1

    .line 97
    invoke-virtual {p0}, Lcom/koushikdutta/async/ByteBufferList;->remaining()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 88
    iget v0, p0, Lcom/koushikdutta/async/ByteBufferList;->remaining:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public order(Ljava/nio/ByteOrder;)Lcom/koushikdutta/async/ByteBufferList;
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/koushikdutta/async/ByteBufferList;->order:Ljava/nio/ByteOrder;

    return-object p0
.end method

.method public order()Ljava/nio/ByteOrder;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/koushikdutta/async/ByteBufferList;->order:Ljava/nio/ByteOrder;

    return-object v0
.end method

.method public peekBytes(I)[B
    .locals 1

    .line 113
    new-array v0, p1, [B

    .line 114
    invoke-direct {p0, p1}, Lcom/koushikdutta/async/ByteBufferList;->read(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public peekInt()I
    .locals 1

    const/4 v0, 0x4

    .line 105
    invoke-direct {p0, v0}, Lcom/koushikdutta/async/ByteBufferList;->read(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    return v0
.end method

.method public peekLong()J
    .locals 2

    const/16 v0, 0x8

    .line 109
    invoke-direct {p0, v0}, Lcom/koushikdutta/async/ByteBufferList;->read(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v0

    return-wide v0
.end method

.method public peekShort()S
    .locals 1

    const/4 v0, 0x2

    .line 101
    invoke-direct {p0, v0}, Lcom/koushikdutta/async/ByteBufferList;->read(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    return v0
.end method

.method public peekString()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 366
    invoke-virtual {p0, v0}, Lcom/koushikdutta/async/ByteBufferList;->peekString(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public peekString(Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 7

    if-nez p1, :cond_0

    .line 372
    sget-object p1, Lcom/koushikdutta/async/util/Charsets;->US_ASCII:Ljava/nio/charset/Charset;

    .line 373
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 374
    iget-object v1, p0, Lcom/koushikdutta/async/ByteBufferList;->mBuffers:Lcom/koushikdutta/async/ArrayDeque;

    invoke-virtual {v1}, Lcom/koushikdutta/async/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/nio/ByteBuffer;

    .line 378
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 379
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    new-array v3, v3, [B

    .line 381
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    .line 382
    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    const/4 v2, 0x0

    goto :goto_1

    .line 385
    :cond_1
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    .line 386
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v4

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    add-int/2addr v4, v5

    .line 387
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    move v6, v4

    move v4, v2

    move v2, v6

    .line 389
    :goto_1
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v3, v2, v4, p1}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 391
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public readString()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 395
    invoke-virtual {p0, v0}, Lcom/koushikdutta/async/ByteBufferList;->readString(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public readString(Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 0

    .line 399
    invoke-virtual {p0, p1}, Lcom/koushikdutta/async/ByteBufferList;->peekString(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p1

    .line 400
    invoke-virtual {p0}, Lcom/koushikdutta/async/ByteBufferList;->recycle()V

    return-object p1
.end method

.method public recycle()V
    .locals 1

    .line 344
    :goto_0
    iget-object v0, p0, Lcom/koushikdutta/async/ByteBufferList;->mBuffers:Lcom/koushikdutta/async/ArrayDeque;

    invoke-virtual {v0}, Lcom/koushikdutta/async/ArrayDeque;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 345
    iget-object v0, p0, Lcom/koushikdutta/async/ByteBufferList;->mBuffers:Lcom/koushikdutta/async/ArrayDeque;

    invoke-virtual {v0}, Lcom/koushikdutta/async/ArrayDeque;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    invoke-static {v0}, Lcom/koushikdutta/async/ByteBufferList;->reclaim(Ljava/nio/ByteBuffer;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 348
    iput v0, p0, Lcom/koushikdutta/async/ByteBufferList;->remaining:I

    return-void
.end method

.method public remaining()I
    .locals 1

    .line 93
    iget v0, p0, Lcom/koushikdutta/async/ByteBufferList;->remaining:I

    return v0
.end method

.method public remove()Ljava/nio/ByteBuffer;
    .locals 3

    .line 352
    iget-object v0, p0, Lcom/koushikdutta/async/ByteBufferList;->mBuffers:Lcom/koushikdutta/async/ArrayDeque;

    invoke-virtual {v0}, Lcom/koushikdutta/async/ArrayDeque;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    .line 353
    iget v1, p0, Lcom/koushikdutta/async/ByteBufferList;->remaining:I

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/koushikdutta/async/ByteBufferList;->remaining:I

    return-object v0
.end method

.method public size()I
    .locals 1

    .line 358
    iget-object v0, p0, Lcom/koushikdutta/async/ByteBufferList;->mBuffers:Lcom/koushikdutta/async/ArrayDeque;

    invoke-virtual {v0}, Lcom/koushikdutta/async/ArrayDeque;->size()I

    move-result v0

    return v0
.end method

.method public skip(I)Lcom/koushikdutta/async/ByteBufferList;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 119
    invoke-virtual {p0, v0, v1, p1}, Lcom/koushikdutta/async/ByteBufferList;->get([BII)V

    return-object p0
.end method

.method public spewString()V
    .locals 2

    .line 362
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p0}, Lcom/koushikdutta/async/ByteBufferList;->peekString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method public trim()V
    .locals 1

    const/4 v0, 0x0

    .line 280
    invoke-direct {p0, v0}, Lcom/koushikdutta/async/ByteBufferList;->read(I)Ljava/nio/ByteBuffer;

    return-void
.end method
