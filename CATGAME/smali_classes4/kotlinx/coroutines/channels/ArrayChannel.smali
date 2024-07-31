.class public Lkotlinx/coroutines/channels/ArrayChannel;
.super Lkotlinx/coroutines/channels/AbstractChannel;
.source "ArrayChannel.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lkotlinx/coroutines/channels/AbstractChannel<",
        "TE;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nArrayChannel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ArrayChannel.kt\nkotlinx/coroutines/channels/ArrayChannel\n+ 2 Concurrent.kt\nkotlinx/coroutines/internal/ConcurrentKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,309:1\n17#2:310\n17#2:311\n17#2:312\n17#2:313\n17#2:315\n17#2:316\n17#2:317\n17#2:318\n17#2:319\n17#2:320\n1#3:314\n*E\n*S KotlinDebug\n*F\n+ 1 ArrayChannel.kt\nkotlinx/coroutines/channels/ArrayChannel\n*L\n52#1:310\n53#1:311\n54#1:312\n59#1:313\n91#1:315\n130#1:316\n182#1:317\n222#1:318\n278#1:319\n287#1:320\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000n\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0011\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\r\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\u0008\u0010\u0018\u0000*\u0004\u0008\u0000\u0010\u00012\u0008\u0012\u0004\u0012\u00028\u00000CB9\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012 \u0010\t\u001a\u001c\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0006j\n\u0012\u0004\u0012\u00028\u0000\u0018\u0001`\u0008\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u001f\u0010\u000e\u001a\u00020\u00072\u0006\u0010\u000c\u001a\u00020\u00022\u0006\u0010\r\u001a\u00028\u0000H\u0002\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u001d\u0010\u0013\u001a\u00020\u00122\u000c\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0010H\u0014\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J\u0019\u0010\u0018\u001a\u0004\u0018\u00010\u00172\u0006\u0010\u0016\u001a\u00020\u0015H\u0014\u00a2\u0006\u0004\u0008\u0018\u0010\u0019J\u0017\u0010\u001a\u001a\u00020\u00072\u0006\u0010\u000c\u001a\u00020\u0002H\u0002\u00a2\u0006\u0004\u0008\u001a\u0010\u001bJ\u0017\u0010\u001c\u001a\u00020\u00172\u0006\u0010\r\u001a\u00028\u0000H\u0014\u00a2\u0006\u0004\u0008\u001c\u0010\u001dJ#\u0010 \u001a\u00020\u00172\u0006\u0010\r\u001a\u00028\u00002\n\u0010\u001f\u001a\u0006\u0012\u0002\u0008\u00030\u001eH\u0014\u00a2\u0006\u0004\u0008 \u0010!J\u0017\u0010#\u001a\u00020\u00072\u0006\u0010\"\u001a\u00020\u0012H\u0014\u00a2\u0006\u0004\u0008#\u0010$J\u0011\u0010%\u001a\u0004\u0018\u00010\u0017H\u0014\u00a2\u0006\u0004\u0008%\u0010&J\u001d\u0010\'\u001a\u0004\u0018\u00010\u00172\n\u0010\u001f\u001a\u0006\u0012\u0002\u0008\u00030\u001eH\u0014\u00a2\u0006\u0004\u0008\'\u0010(J\u0019\u0010*\u001a\u0004\u0018\u00010)2\u0006\u0010\u000c\u001a\u00020\u0002H\u0002\u00a2\u0006\u0004\u0008*\u0010+R\u001e\u0010-\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00170,8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008-\u0010.R\u0016\u00102\u001a\u00020/8T@\u0014X\u0094\u0004\u00a2\u0006\u0006\u001a\u0004\u00080\u00101R\u0016\u0010\u0003\u001a\u00020\u00028\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0003\u00103R\u0016\u00104\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00084\u00103R\u0016\u00105\u001a\u00020\u00128D@\u0004X\u0084\u0004\u00a2\u0006\u0006\u001a\u0004\u00085\u00106R\u0016\u00107\u001a\u00020\u00128D@\u0004X\u0084\u0004\u00a2\u0006\u0006\u001a\u0004\u00087\u00106R\u0016\u00108\u001a\u00020\u00128D@\u0004X\u0084\u0004\u00a2\u0006\u0006\u001a\u0004\u00088\u00106R\u0016\u00109\u001a\u00020\u00128D@\u0004X\u0084\u0004\u00a2\u0006\u0006\u001a\u0004\u00089\u00106R\u0016\u0010:\u001a\u00020\u00128V@\u0016X\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008:\u00106R\u0016\u0010;\u001a\u00020\u00128V@\u0016X\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008;\u00106R\u0016\u0010<\u001a\u00020\u00128V@\u0016X\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008<\u00106R\u001a\u0010?\u001a\u00060=j\u0002`>8\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008?\u0010@R\u0016\u0010\u0005\u001a\u00020\u00048\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0005\u0010A\u00a8\u0006B"
    }
    d2 = {
        "Lkotlinx/coroutines/channels/ArrayChannel;",
        "E",
        "",
        "capacity",
        "Lkotlinx/coroutines/channels/BufferOverflow;",
        "onBufferOverflow",
        "Lkotlin/Function1;",
        "",
        "Lkotlinx/coroutines/internal/OnUndeliveredElement;",
        "onUndeliveredElement",
        "<init>",
        "(ILkotlinx/coroutines/channels/BufferOverflow;Lkotlin/jvm/functions/Function1;)V",
        "currentSize",
        "element",
        "enqueueElement",
        "(ILjava/lang/Object;)V",
        "Lkotlinx/coroutines/channels/Receive;",
        "receive",
        "",
        "enqueueReceiveInternal",
        "(Lkotlinx/coroutines/channels/Receive;)Z",
        "Lkotlinx/coroutines/channels/Send;",
        "send",
        "",
        "enqueueSend",
        "(Lkotlinx/coroutines/channels/Send;)Ljava/lang/Object;",
        "ensureCapacity",
        "(I)V",
        "offerInternal",
        "(Ljava/lang/Object;)Ljava/lang/Object;",
        "Lkotlinx/coroutines/selects/SelectInstance;",
        "select",
        "offerSelectInternal",
        "(Ljava/lang/Object;Lkotlinx/coroutines/selects/SelectInstance;)Ljava/lang/Object;",
        "wasClosed",
        "onCancelIdempotent",
        "(Z)V",
        "pollInternal",
        "()Ljava/lang/Object;",
        "pollSelectInternal",
        "(Lkotlinx/coroutines/selects/SelectInstance;)Ljava/lang/Object;",
        "Lkotlinx/coroutines/internal/Symbol;",
        "updateBufferSize",
        "(I)Lkotlinx/coroutines/internal/Symbol;",
        "",
        "buffer",
        "[Ljava/lang/Object;",
        "",
        "getBufferDebugString",
        "()Ljava/lang/String;",
        "bufferDebugString",
        "I",
        "head",
        "isBufferAlwaysEmpty",
        "()Z",
        "isBufferAlwaysFull",
        "isBufferEmpty",
        "isBufferFull",
        "isClosedForReceive",
        "isEmpty",
        "isFull",
        "Ljava/util/concurrent/locks/ReentrantLock;",
        "Lkotlinx/coroutines/internal/ReentrantLock;",
        "lock",
        "Ljava/util/concurrent/locks/ReentrantLock;",
        "Lkotlinx/coroutines/channels/BufferOverflow;",
        "kotlinx-coroutines-core",
        "Lkotlinx/coroutines/channels/AbstractChannel;"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x0
    }
.end annotation


# instance fields
.field private buffer:[Ljava/lang/Object;

.field private final capacity:I

.field private head:I

.field private final lock:Ljava/util/concurrent/locks/ReentrantLock;

.field private final onBufferOverflow:Lkotlinx/coroutines/channels/BufferOverflow;

.field private volatile size:I


# direct methods
.method public constructor <init>(ILkotlinx/coroutines/channels/BufferOverflow;Lkotlin/jvm/functions/Function1;)V
    .locals 9
    .param p1, "capacity"    # I
    .param p2, "onBufferOverflow"    # Lkotlinx/coroutines/channels/BufferOverflow;
    .param p3, "onUndeliveredElement"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lkotlinx/coroutines/channels/BufferOverflow;",
            "Lkotlin/jvm/functions/Function1<",
            "-TE;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 22
    nop

    .line 29
    invoke-direct {p0, p3}, Lkotlinx/coroutines/channels/AbstractChannel;-><init>(Lkotlin/jvm/functions/Function1;)V

    iput p1, p0, Lkotlinx/coroutines/channels/ArrayChannel;->capacity:I

    iput-object p2, p0, Lkotlinx/coroutines/channels/ArrayChannel;->onBufferOverflow:Lkotlinx/coroutines/channels/BufferOverflow;

    .line 30
    nop

    .line 33
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    if-eqz v1, :cond_1

    .line 34
    nop

    .line 36
    new-instance v1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v1, p0, Lkotlinx/coroutines/channels/ArrayChannel;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 42
    iget v1, p0, Lkotlinx/coroutines/channels/ArrayChannel;->capacity:I

    const/16 v2, 0x8

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    new-array v1, v1, [Ljava/lang/Object;

    .line 314
    move-object v2, v1

    .local v2, "$this$apply":[Ljava/lang/Object;
    const/4 v8, 0x0

    .line 42
    .local v8, "$i$a$-apply-ArrayChannel$buffer$1":I
    sget-object v3, Lkotlinx/coroutines/channels/AbstractChannelKt;->EMPTY:Lkotlinx/coroutines/internal/Symbol;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x6

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lkotlin/collections/ArraysKt;->fill$default([Ljava/lang/Object;Ljava/lang/Object;IIILjava/lang/Object;)V

    .end local v2    # "$this$apply":[Ljava/lang/Object;
    .end local v8    # "$i$a$-apply-ArrayChannel$buffer$1":I
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    iput-object v1, p0, Lkotlinx/coroutines/channels/ArrayChannel;->buffer:[Ljava/lang/Object;

    .line 45
    iput v0, p0, Lkotlinx/coroutines/channels/ArrayChannel;->size:I

    return-void

    .line 314
    :cond_1
    const/4 v0, 0x0

    .line 33
    .local v0, "$i$a$-require-ArrayChannel$1":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ArrayChannel capacity must be at least 1, but "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lkotlinx/coroutines/channels/ArrayChannel;->capacity:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " was specified"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .end local v0    # "$i$a$-require-ArrayChannel$1":I
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    throw v1
.end method

.method private final enqueueElement(ILjava/lang/Object;)V
    .locals 5
    .param p1, "currentSize"    # I
    .param p2, "element"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    .line 151
    iget v0, p0, Lkotlinx/coroutines/channels/ArrayChannel;->capacity:I

    if-ge p1, v0, :cond_0

    .line 152
    invoke-direct {p0, p1}, Lkotlinx/coroutines/channels/ArrayChannel;->ensureCapacity(I)V

    .line 153
    iget-object v0, p0, Lkotlinx/coroutines/channels/ArrayChannel;->buffer:[Ljava/lang/Object;

    iget v1, p0, Lkotlinx/coroutines/channels/ArrayChannel;->head:I

    add-int/2addr v1, p1

    array-length v2, v0

    rem-int/2addr v1, v2

    aput-object p2, v0, v1

    goto :goto_2

    .line 156
    :cond_0
    invoke-static {}, Lkotlinx/coroutines/DebugKt;->getASSERTIONS_ENABLED()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    .line 314
    const/4 v0, 0x0

    .line 156
    .local v0, "$i$a$-assert-ArrayChannel$enqueueElement$1":I
    iget-object v2, p0, Lkotlinx/coroutines/channels/ArrayChannel;->onBufferOverflow:Lkotlinx/coroutines/channels/BufferOverflow;

    sget-object v3, Lkotlinx/coroutines/channels/BufferOverflow;->DROP_OLDEST:Lkotlinx/coroutines/channels/BufferOverflow;

    if-ne v2, v3, :cond_1

    move v2, v1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .end local v0    # "$i$a$-assert-ArrayChannel$enqueueElement$1":I
    :goto_0
    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    check-cast v0, Ljava/lang/Throwable;

    throw v0

    .line 157
    :cond_3
    :goto_1
    iget-object v0, p0, Lkotlinx/coroutines/channels/ArrayChannel;->buffer:[Ljava/lang/Object;

    iget v2, p0, Lkotlinx/coroutines/channels/ArrayChannel;->head:I

    array-length v3, v0

    rem-int v3, v2, v3

    const/4 v4, 0x0

    aput-object v4, v0, v3

    .line 158
    add-int v3, v2, p1

    array-length v4, v0

    rem-int/2addr v3, v4

    aput-object p2, v0, v3

    .line 159
    add-int/2addr v2, v1

    array-length v0, v0

    rem-int/2addr v2, v0

    iput v2, p0, Lkotlinx/coroutines/channels/ArrayChannel;->head:I

    .line 160
    :goto_2
    nop

    .line 161
    return-void
.end method

.method private final ensureCapacity(I)V
    .locals 7
    .param p1, "currentSize"    # I

    .line 165
    iget-object v0, p0, Lkotlinx/coroutines/channels/ArrayChannel;->buffer:[Ljava/lang/Object;

    array-length v1, v0

    if-lt p1, v1, :cond_1

    .line 166
    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    iget v1, p0, Lkotlinx/coroutines/channels/ArrayChannel;->capacity:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 167
    .local v0, "newSize":I
    new-array v1, v0, [Ljava/lang/Object;

    .line 168
    .local v1, "newBuffer":[Ljava/lang/Object;
    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, p1, :cond_0

    .line 169
    .local v3, "i":I
    iget-object v4, p0, Lkotlinx/coroutines/channels/ArrayChannel;->buffer:[Ljava/lang/Object;

    iget v5, p0, Lkotlinx/coroutines/channels/ArrayChannel;->head:I

    add-int/2addr v5, v3

    array-length v6, v4

    rem-int/2addr v5, v6

    aget-object v4, v4, v5

    aput-object v4, v1, v3

    .line 168
    nop

    .end local v3    # "i":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 171
    :cond_0
    sget-object v3, Lkotlinx/coroutines/channels/AbstractChannelKt;->EMPTY:Lkotlinx/coroutines/internal/Symbol;

    invoke-static {v1, v3, p1, v0}, Lkotlin/collections/ArraysKt;->fill([Ljava/lang/Object;Ljava/lang/Object;II)V

    .line 172
    iput-object v1, p0, Lkotlinx/coroutines/channels/ArrayChannel;->buffer:[Ljava/lang/Object;

    .line 173
    iput v2, p0, Lkotlinx/coroutines/channels/ArrayChannel;->head:I

    .line 175
    .end local v0    # "newSize":I
    .end local v1    # "newBuffer":[Ljava/lang/Object;
    :cond_1
    return-void
.end method

.method private final updateBufferSize(I)Lkotlinx/coroutines/internal/Symbol;
    .locals 3
    .param p1, "currentSize"    # I

    .line 137
    iget v0, p0, Lkotlinx/coroutines/channels/ArrayChannel;->capacity:I

    const/4 v1, 0x0

    if-ge p1, v0, :cond_0

    .line 138
    add-int/lit8 v0, p1, 0x1

    iput v0, p0, Lkotlinx/coroutines/channels/ArrayChannel;->size:I

    .line 139
    return-object v1

    .line 142
    :cond_0
    iget-object v0, p0, Lkotlinx/coroutines/channels/ArrayChannel;->onBufferOverflow:Lkotlinx/coroutines/channels/BufferOverflow;

    sget-object v2, Lkotlinx/coroutines/channels/ArrayChannel$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Lkotlinx/coroutines/channels/BufferOverflow;->ordinal()I

    move-result v0

    aget v0, v2, v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_3

    const/4 v2, 0x2

    if-eq v0, v2, :cond_2

    const/4 v2, 0x3

    if-ne v0, v2, :cond_1

    .line 145
    goto :goto_0

    :cond_1
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    .line 144
    :cond_2
    sget-object v1, Lkotlinx/coroutines/channels/AbstractChannelKt;->OFFER_SUCCESS:Lkotlinx/coroutines/internal/Symbol;

    goto :goto_0

    .line 143
    :cond_3
    sget-object v1, Lkotlinx/coroutines/channels/AbstractChannelKt;->OFFER_FAILED:Lkotlinx/coroutines/internal/Symbol;

    .line 142
    :goto_0
    return-object v1
.end method


# virtual methods
.method protected enqueueReceiveInternal(Lkotlinx/coroutines/channels/Receive;)Z
    .locals 5
    .param p1, "receive"    # Lkotlinx/coroutines/channels/Receive;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/channels/Receive<",
            "-TE;>;)Z"
        }
    .end annotation

    .line 278
    iget-object v0, p0, Lkotlinx/coroutines/channels/ArrayChannel;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .local v0, "$this$withLock$iv":Ljava/util/concurrent/locks/ReentrantLock;
    const/4 v1, 0x0

    .line 319
    .local v1, "$i$f$withLock":I
    move-object v2, v0

    check-cast v2, Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->lock()V

    const/4 v3, 0x0

    .line 279
    .local v3, "$i$a$-withLock-ArrayChannel$enqueueReceiveInternal$1":I
    :try_start_0
    invoke-super {p0, p1}, Lkotlinx/coroutines/channels/AbstractChannel;->enqueueReceiveInternal(Lkotlinx/coroutines/channels/Receive;)Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v3    # "$i$a$-withLock-ArrayChannel$enqueueReceiveInternal$1":I
    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 319
    nop

    .line 280
    .end local v0    # "$this$withLock$iv":Ljava/util/concurrent/locks/ReentrantLock;
    .end local v1    # "$i$f$withLock":I
    return v4

    .line 279
    .restart local v0    # "$this$withLock$iv":Ljava/util/concurrent/locks/ReentrantLock;
    .restart local v1    # "$i$f$withLock":I
    :catchall_0
    move-exception v3

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v3
.end method

.method protected enqueueSend(Lkotlinx/coroutines/channels/Send;)Ljava/lang/Object;
    .locals 5
    .param p1, "send"    # Lkotlinx/coroutines/channels/Send;

    .line 130
    iget-object v0, p0, Lkotlinx/coroutines/channels/ArrayChannel;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .local v0, "$this$withLock$iv":Ljava/util/concurrent/locks/ReentrantLock;
    const/4 v1, 0x0

    .line 316
    .local v1, "$i$f$withLock":I
    move-object v2, v0

    check-cast v2, Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->lock()V

    const/4 v3, 0x0

    .line 131
    .local v3, "$i$a$-withLock-ArrayChannel$enqueueSend$1":I
    :try_start_0
    invoke-super {p0, p1}, Lkotlinx/coroutines/channels/AbstractChannel;->enqueueSend(Lkotlinx/coroutines/channels/Send;)Ljava/lang/Object;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v3    # "$i$a$-withLock-ArrayChannel$enqueueSend$1":I
    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 316
    nop

    .line 132
    .end local v0    # "$this$withLock$iv":Ljava/util/concurrent/locks/ReentrantLock;
    .end local v1    # "$i$f$withLock":I
    return-object v4

    .line 131
    .restart local v0    # "$this$withLock$iv":Ljava/util/concurrent/locks/ReentrantLock;
    .restart local v1    # "$i$f$withLock":I
    :catchall_0
    move-exception v3

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v3
.end method

.method protected getBufferDebugString()Ljava/lang/String;
    .locals 2

    .line 307
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "(buffer:capacity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lkotlinx/coroutines/channels/ArrayChannel;->capacity:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lkotlinx/coroutines/channels/ArrayChannel;->size:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final isBufferAlwaysEmpty()Z
    .locals 1

    .line 47
    const/4 v0, 0x0

    return v0
.end method

.method protected final isBufferAlwaysFull()Z
    .locals 1

    .line 49
    const/4 v0, 0x0

    return v0
.end method

.method protected final isBufferEmpty()Z
    .locals 1

    .line 48
    iget v0, p0, Lkotlinx/coroutines/channels/ArrayChannel;->size:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected final isBufferFull()Z
    .locals 2

    .line 50
    iget v0, p0, Lkotlinx/coroutines/channels/ArrayChannel;->size:I

    iget v1, p0, Lkotlinx/coroutines/channels/ArrayChannel;->capacity:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lkotlinx/coroutines/channels/ArrayChannel;->onBufferOverflow:Lkotlinx/coroutines/channels/BufferOverflow;

    sget-object v1, Lkotlinx/coroutines/channels/BufferOverflow;->SUSPEND:Lkotlinx/coroutines/channels/BufferOverflow;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isClosedForReceive()Z
    .locals 5

    .line 54
    iget-object v0, p0, Lkotlinx/coroutines/channels/ArrayChannel;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .local v0, "$this$withLock$iv":Ljava/util/concurrent/locks/ReentrantLock;
    const/4 v1, 0x0

    .line 312
    .local v1, "$i$f$withLock":I
    move-object v2, v0

    check-cast v2, Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->lock()V

    const/4 v3, 0x0

    .line 54
    .local v3, "$i$a$-withLock-ArrayChannel$isClosedForReceive$1":I
    :try_start_0
    invoke-super {p0}, Lkotlinx/coroutines/channels/AbstractChannel;->isClosedForReceive()Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v3    # "$i$a$-withLock-ArrayChannel$isClosedForReceive$1":I
    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 312
    nop

    .line 54
    .end local v0    # "$this$withLock$iv":Ljava/util/concurrent/locks/ReentrantLock;
    .end local v1    # "$i$f$withLock":I
    return v4

    .restart local v0    # "$this$withLock$iv":Ljava/util/concurrent/locks/ReentrantLock;
    .restart local v1    # "$i$f$withLock":I
    :catchall_0
    move-exception v3

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v3
.end method

.method public isEmpty()Z
    .locals 5

    .line 53
    iget-object v0, p0, Lkotlinx/coroutines/channels/ArrayChannel;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .local v0, "$this$withLock$iv":Ljava/util/concurrent/locks/ReentrantLock;
    const/4 v1, 0x0

    .line 311
    .local v1, "$i$f$withLock":I
    move-object v2, v0

    check-cast v2, Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->lock()V

    const/4 v3, 0x0

    .line 53
    .local v3, "$i$a$-withLock-ArrayChannel$isEmpty$1":I
    :try_start_0
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/ArrayChannel;->isEmptyImpl()Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v3    # "$i$a$-withLock-ArrayChannel$isEmpty$1":I
    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 311
    nop

    .line 53
    .end local v0    # "$this$withLock$iv":Ljava/util/concurrent/locks/ReentrantLock;
    .end local v1    # "$i$f$withLock":I
    return v4

    .restart local v0    # "$this$withLock$iv":Ljava/util/concurrent/locks/ReentrantLock;
    .restart local v1    # "$i$f$withLock":I
    :catchall_0
    move-exception v3

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v3
.end method

.method public isFull()Z
    .locals 5

    .line 52
    iget-object v0, p0, Lkotlinx/coroutines/channels/ArrayChannel;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .local v0, "$this$withLock$iv":Ljava/util/concurrent/locks/ReentrantLock;
    const/4 v1, 0x0

    .line 310
    .local v1, "$i$f$withLock":I
    move-object v2, v0

    check-cast v2, Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->lock()V

    const/4 v3, 0x0

    .line 52
    .local v3, "$i$a$-withLock-ArrayChannel$isFull$1":I
    :try_start_0
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/ArrayChannel;->isFullImpl()Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v3    # "$i$a$-withLock-ArrayChannel$isFull$1":I
    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 310
    nop

    .line 52
    .end local v0    # "$this$withLock$iv":Ljava/util/concurrent/locks/ReentrantLock;
    .end local v1    # "$i$f$withLock":I
    return v4

    .restart local v0    # "$this$withLock$iv":Ljava/util/concurrent/locks/ReentrantLock;
    .restart local v1    # "$i$f$withLock":I
    :catchall_0
    move-exception v3

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v3
.end method

.method protected offerInternal(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9
    .param p1, "element"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 58
    const/4 v0, 0x0

    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/channels/ReceiveOrClosed;

    .line 59
    .local v1, "receive":Ljava/lang/Object;
    iget-object v2, p0, Lkotlinx/coroutines/channels/ArrayChannel;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .local v2, "$this$withLock$iv":Ljava/util/concurrent/locks/ReentrantLock;
    const/4 v3, 0x0

    .line 313
    .local v3, "$i$f$withLock":I
    move-object v4, v2

    check-cast v4, Ljava/util/concurrent/locks/Lock;

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->lock()V

    const/4 v5, 0x0

    .line 60
    .local v5, "$i$a$-withLock-ArrayChannel$offerInternal$1":I
    :try_start_0
    iget v6, p0, Lkotlinx/coroutines/channels/ArrayChannel;->size:I

    .line 61
    .local v6, "size":I
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/ArrayChannel;->getClosedForSend()Lkotlinx/coroutines/channels/Closed;

    move-result-object v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v7, :cond_0

    move-object v0, v7

    .line 314
    .local v0, "it":Lkotlinx/coroutines/channels/Closed;
    const/4 v7, 0x0

    .line 61
    .local v7, "$i$a$-let-ArrayChannel$offerInternal$1$1":I
    nop

    .end local v0    # "it":Lkotlinx/coroutines/channels/Closed;
    .end local v2    # "$this$withLock$iv":Ljava/util/concurrent/locks/ReentrantLock;
    .end local v3    # "$i$f$withLock":I
    .end local v5    # "$i$a$-withLock-ArrayChannel$offerInternal$1":I
    .end local v6    # "size":I
    .end local v7    # "$i$a$-let-ArrayChannel$offerInternal$1$1":I
    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v0

    .line 63
    .restart local v2    # "$this$withLock$iv":Ljava/util/concurrent/locks/ReentrantLock;
    .restart local v3    # "$i$f$withLock":I
    .restart local v5    # "$i$a$-withLock-ArrayChannel$offerInternal$1":I
    .restart local v6    # "size":I
    :cond_0
    :try_start_1
    invoke-direct {p0, v6}, Lkotlinx/coroutines/channels/ArrayChannel;->updateBufferSize(I)Lkotlinx/coroutines/internal/Symbol;

    move-result-object v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v7, :cond_1

    move-object v0, v7

    .line 314
    .local v0, "it":Lkotlinx/coroutines/internal/Symbol;
    const/4 v7, 0x0

    .line 63
    .local v7, "$i$a$-let-ArrayChannel$offerInternal$1$2":I
    nop

    .end local v0    # "it":Lkotlinx/coroutines/internal/Symbol;
    .end local v2    # "$this$withLock$iv":Ljava/util/concurrent/locks/ReentrantLock;
    .end local v3    # "$i$f$withLock":I
    .end local v5    # "$i$a$-withLock-ArrayChannel$offerInternal$1":I
    .end local v6    # "size":I
    .end local v7    # "$i$a$-let-ArrayChannel$offerInternal$1$2":I
    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v0

    .line 65
    .restart local v2    # "$this$withLock$iv":Ljava/util/concurrent/locks/ReentrantLock;
    .restart local v3    # "$i$f$withLock":I
    .restart local v5    # "$i$a$-withLock-ArrayChannel$offerInternal$1":I
    .restart local v6    # "size":I
    :cond_1
    if-nez v6, :cond_7

    .line 66
    :goto_0
    nop

    .line 67
    :try_start_2
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/ArrayChannel;->takeFirstReceiveOrPeekClosed()Lkotlinx/coroutines/channels/ReceiveOrClosed;

    move-result-object v7

    if-eqz v7, :cond_7

    move-object v1, v7

    .line 68
    nop

    instance-of v7, v1, Lkotlinx/coroutines/channels/Closed;

    if-eqz v7, :cond_2

    .line 69
    iput v6, p0, Lkotlinx/coroutines/channels/ArrayChannel;->size:I

    .line 70
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local v2    # "$this$withLock$iv":Ljava/util/concurrent/locks/ReentrantLock;
    .end local v3    # "$i$f$withLock":I
    .end local v5    # "$i$a$-withLock-ArrayChannel$offerInternal$1":I
    .end local v6    # "size":I
    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v1

    .line 72
    .restart local v2    # "$this$withLock$iv":Ljava/util/concurrent/locks/ReentrantLock;
    .restart local v3    # "$i$f$withLock":I
    .restart local v5    # "$i$a$-withLock-ArrayChannel$offerInternal$1":I
    .restart local v6    # "size":I
    :cond_2
    :try_start_3
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v1, p1, v0}, Lkotlinx/coroutines/channels/ReceiveOrClosed;->tryResumeReceive(Ljava/lang/Object;Lkotlinx/coroutines/internal/LockFreeLinkedListNode$PrepareOp;)Lkotlinx/coroutines/internal/Symbol;

    move-result-object v7

    .line 73
    .local v7, "token":Lkotlinx/coroutines/internal/Symbol;
    if-eqz v7, :cond_6

    .line 74
    invoke-static {}, Lkotlinx/coroutines/DebugKt;->getASSERTIONS_ENABLED()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 314
    const/4 v0, 0x0

    .line 74
    .local v0, "$i$a$-assert-ArrayChannel$offerInternal$1$3":I
    sget-object v8, Lkotlinx/coroutines/CancellableContinuationImplKt;->RESUME_TOKEN:Lkotlinx/coroutines/internal/Symbol;

    if-ne v7, v8, :cond_3

    const/4 v8, 0x1

    goto :goto_1

    :cond_3
    const/4 v8, 0x0

    .end local v0    # "$i$a$-assert-ArrayChannel$offerInternal$1$3":I
    :goto_1
    if-eqz v8, :cond_4

    goto :goto_2

    :cond_4
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    check-cast v0, Ljava/lang/Throwable;

    .end local v1    # "receive":Ljava/lang/Object;
    .end local v2    # "$this$withLock$iv":Ljava/util/concurrent/locks/ReentrantLock;
    .end local v3    # "$i$f$withLock":I
    .end local p1    # "element":Ljava/lang/Object;
    throw v0

    .line 75
    .restart local v1    # "receive":Ljava/lang/Object;
    .restart local v2    # "$this$withLock$iv":Ljava/util/concurrent/locks/ReentrantLock;
    .restart local v3    # "$i$f$withLock":I
    .restart local p1    # "element":Ljava/lang/Object;
    :cond_5
    :goto_2
    iput v6, p0, Lkotlinx/coroutines/channels/ArrayChannel;->size:I

    .line 76
    nop

    .line 81
    .end local v5    # "$i$a$-withLock-ArrayChannel$offerInternal$1":I
    .end local v6    # "size":I
    .end local v7    # "token":Lkotlinx/coroutines/internal/Symbol;
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 313
    nop

    .line 84
    .end local v2    # "$this$withLock$iv":Ljava/util/concurrent/locks/ReentrantLock;
    .end local v3    # "$i$f$withLock":I
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v1, p1}, Lkotlinx/coroutines/channels/ReceiveOrClosed;->completeResumeReceive(Ljava/lang/Object;)V

    .line 85
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v1}, Lkotlinx/coroutines/channels/ReceiveOrClosed;->getOfferResult()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 66
    .restart local v2    # "$this$withLock$iv":Ljava/util/concurrent/locks/ReentrantLock;
    .restart local v3    # "$i$f$withLock":I
    .restart local v5    # "$i$a$-withLock-ArrayChannel$offerInternal$1":I
    .restart local v6    # "size":I
    :cond_6
    goto :goto_0

    .line 80
    :cond_7
    :try_start_4
    invoke-direct {p0, v6, p1}, Lkotlinx/coroutines/channels/ArrayChannel;->enqueueElement(ILjava/lang/Object;)V

    .line 81
    sget-object v0, Lkotlinx/coroutines/channels/AbstractChannelKt;->OFFER_SUCCESS:Lkotlinx/coroutines/internal/Symbol;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .end local v2    # "$this$withLock$iv":Ljava/util/concurrent/locks/ReentrantLock;
    .end local v3    # "$i$f$withLock":I
    .end local v5    # "$i$a$-withLock-ArrayChannel$offerInternal$1":I
    .end local v6    # "size":I
    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v0

    .restart local v2    # "$this$withLock$iv":Ljava/util/concurrent/locks/ReentrantLock;
    .restart local v3    # "$i$f$withLock":I
    :catchall_0
    move-exception v0

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method protected offerSelectInternal(Ljava/lang/Object;Lkotlinx/coroutines/selects/SelectInstance;)Ljava/lang/Object;
    .locals 10
    .param p1, "element"    # Ljava/lang/Object;
    .param p2, "select"    # Lkotlinx/coroutines/selects/SelectInstance;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;",
            "Lkotlinx/coroutines/selects/SelectInstance<",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 90
    const/4 v0, 0x0

    check-cast v0, Lkotlinx/coroutines/channels/ReceiveOrClosed;

    .line 91
    .local v0, "receive":Ljava/lang/Object;
    iget-object v1, p0, Lkotlinx/coroutines/channels/ArrayChannel;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .local v1, "$this$withLock$iv":Ljava/util/concurrent/locks/ReentrantLock;
    const/4 v2, 0x0

    .line 315
    .local v2, "$i$f$withLock":I
    move-object v3, v1

    check-cast v3, Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->lock()V

    const/4 v4, 0x0

    .line 92
    .local v4, "$i$a$-withLock-ArrayChannel$offerSelectInternal$1":I
    :try_start_0
    iget v5, p0, Lkotlinx/coroutines/channels/ArrayChannel;->size:I

    .line 93
    .local v5, "size":I
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/ArrayChannel;->getClosedForSend()Lkotlinx/coroutines/channels/Closed;

    move-result-object v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v6, :cond_0

    .line 314
    .local v6, "it":Lkotlinx/coroutines/channels/Closed;
    const/4 v7, 0x0

    .line 93
    .local v7, "$i$a$-let-ArrayChannel$offerSelectInternal$1$1":I
    nop

    .end local v1    # "$this$withLock$iv":Ljava/util/concurrent/locks/ReentrantLock;
    .end local v2    # "$i$f$withLock":I
    .end local v4    # "$i$a$-withLock-ArrayChannel$offerSelectInternal$1":I
    .end local v5    # "size":I
    .end local v6    # "it":Lkotlinx/coroutines/channels/Closed;
    .end local v7    # "$i$a$-let-ArrayChannel$offerSelectInternal$1$1":I
    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v6

    .line 95
    .restart local v1    # "$this$withLock$iv":Ljava/util/concurrent/locks/ReentrantLock;
    .restart local v2    # "$i$f$withLock":I
    .restart local v4    # "$i$a$-withLock-ArrayChannel$offerSelectInternal$1":I
    .restart local v5    # "size":I
    :cond_0
    :try_start_1
    invoke-direct {p0, v5}, Lkotlinx/coroutines/channels/ArrayChannel;->updateBufferSize(I)Lkotlinx/coroutines/internal/Symbol;

    move-result-object v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v6, :cond_1

    .line 314
    .local v6, "it":Lkotlinx/coroutines/internal/Symbol;
    const/4 v7, 0x0

    .line 95
    .local v7, "$i$a$-let-ArrayChannel$offerSelectInternal$1$2":I
    nop

    .end local v1    # "$this$withLock$iv":Ljava/util/concurrent/locks/ReentrantLock;
    .end local v2    # "$i$f$withLock":I
    .end local v4    # "$i$a$-withLock-ArrayChannel$offerSelectInternal$1":I
    .end local v5    # "size":I
    .end local v6    # "it":Lkotlinx/coroutines/internal/Symbol;
    .end local v7    # "$i$a$-let-ArrayChannel$offerSelectInternal$1$2":I
    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v6

    .line 97
    .restart local v1    # "$this$withLock$iv":Ljava/util/concurrent/locks/ReentrantLock;
    .restart local v2    # "$i$f$withLock":I
    .restart local v4    # "$i$a$-withLock-ArrayChannel$offerSelectInternal$1":I
    .restart local v5    # "size":I
    :cond_1
    if-nez v5, :cond_7

    .line 98
    :goto_0
    nop

    .line 99
    :try_start_2
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/channels/ArrayChannel;->describeTryOffer(Ljava/lang/Object;)Lkotlinx/coroutines/channels/AbstractSendChannel$TryOfferDesc;

    move-result-object v6

    .line 100
    .local v6, "offerOp":Lkotlinx/coroutines/channels/AbstractSendChannel$TryOfferDesc;
    move-object v7, v6

    check-cast v7, Lkotlinx/coroutines/internal/AtomicDesc;

    invoke-interface {p2, v7}, Lkotlinx/coroutines/selects/SelectInstance;->performAtomicTrySelect(Lkotlinx/coroutines/internal/AtomicDesc;)Ljava/lang/Object;

    move-result-object v7

    .line 101
    .local v7, "failure":Ljava/lang/Object;
    nop

    .line 102
    if-nez v7, :cond_2

    .line 103
    iput v5, p0, Lkotlinx/coroutines/channels/ArrayChannel;->size:I

    .line 104
    invoke-virtual {v6}, Lkotlinx/coroutines/channels/AbstractSendChannel$TryOfferDesc;->getResult()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lkotlinx/coroutines/channels/ReceiveOrClosed;

    move-object v0, v8

    .line 105
    nop

    .line 123
    .end local v4    # "$i$a$-withLock-ArrayChannel$offerSelectInternal$1":I
    .end local v5    # "size":I
    .end local v6    # "offerOp":Lkotlinx/coroutines/channels/AbstractSendChannel$TryOfferDesc;
    .end local v7    # "failure":Ljava/lang/Object;
    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 315
    nop

    .line 126
    .end local v1    # "$this$withLock$iv":Ljava/util/concurrent/locks/ReentrantLock;
    .end local v2    # "$i$f$withLock":I
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0, p1}, Lkotlinx/coroutines/channels/ReceiveOrClosed;->completeResumeReceive(Ljava/lang/Object;)V

    .line 127
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0}, Lkotlinx/coroutines/channels/ReceiveOrClosed;->getOfferResult()Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 107
    .restart local v1    # "$this$withLock$iv":Ljava/util/concurrent/locks/ReentrantLock;
    .restart local v2    # "$i$f$withLock":I
    .restart local v4    # "$i$a$-withLock-ArrayChannel$offerSelectInternal$1":I
    .restart local v5    # "size":I
    .restart local v6    # "offerOp":Lkotlinx/coroutines/channels/AbstractSendChannel$TryOfferDesc;
    .restart local v7    # "failure":Ljava/lang/Object;
    :cond_2
    :try_start_3
    sget-object v8, Lkotlinx/coroutines/channels/AbstractChannelKt;->OFFER_FAILED:Lkotlinx/coroutines/internal/Symbol;

    if-ne v7, v8, :cond_3

    goto :goto_2

    .line 108
    :cond_3
    sget-object v8, Lkotlinx/coroutines/internal/AtomicKt;->RETRY_ATOMIC:Ljava/lang/Object;

    if-ne v7, v8, :cond_4

    .line 98
    .end local v6    # "offerOp":Lkotlinx/coroutines/channels/AbstractSendChannel$TryOfferDesc;
    .end local v7    # "failure":Ljava/lang/Object;
    goto :goto_0

    .line 109
    .restart local v6    # "offerOp":Lkotlinx/coroutines/channels/AbstractSendChannel$TryOfferDesc;
    .restart local v7    # "failure":Ljava/lang/Object;
    :cond_4
    invoke-static {}, Lkotlinx/coroutines/selects/SelectKt;->getALREADY_SELECTED()Ljava/lang/Object;

    move-result-object v8

    if-eq v7, v8, :cond_6

    instance-of v8, v7, Lkotlinx/coroutines/channels/Closed;

    if-eqz v8, :cond_5

    goto :goto_1

    .line 113
    :cond_5
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "performAtomicTrySelect(describeTryOffer) returned "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/IllegalStateException;

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v9, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v9, Ljava/lang/Throwable;

    .end local v0    # "receive":Ljava/lang/Object;
    .end local v1    # "$this$withLock$iv":Ljava/util/concurrent/locks/ReentrantLock;
    .end local v2    # "$i$f$withLock":I
    .end local p1    # "element":Ljava/lang/Object;
    .end local p2    # "select":Lkotlinx/coroutines/selects/SelectInstance;
    throw v9

    .line 110
    .restart local v0    # "receive":Ljava/lang/Object;
    .restart local v1    # "$this$withLock$iv":Ljava/util/concurrent/locks/ReentrantLock;
    .restart local v2    # "$i$f$withLock":I
    .restart local p1    # "element":Ljava/lang/Object;
    .restart local p2    # "select":Lkotlinx/coroutines/selects/SelectInstance;
    :cond_6
    :goto_1
    iput v5, p0, Lkotlinx/coroutines/channels/ArrayChannel;->size:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 111
    nop

    .end local v1    # "$this$withLock$iv":Ljava/util/concurrent/locks/ReentrantLock;
    .end local v2    # "$i$f$withLock":I
    .end local v4    # "$i$a$-withLock-ArrayChannel$offerSelectInternal$1":I
    .end local v5    # "size":I
    .end local v6    # "offerOp":Lkotlinx/coroutines/channels/AbstractSendChannel$TryOfferDesc;
    .end local v7    # "failure":Ljava/lang/Object;
    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v7

    .line 118
    .restart local v1    # "$this$withLock$iv":Ljava/util/concurrent/locks/ReentrantLock;
    .restart local v2    # "$i$f$withLock":I
    .restart local v4    # "$i$a$-withLock-ArrayChannel$offerSelectInternal$1":I
    .restart local v5    # "size":I
    :cond_7
    :goto_2
    :try_start_4
    invoke-interface {p2}, Lkotlinx/coroutines/selects/SelectInstance;->trySelect()Z

    move-result v6

    if-nez v6, :cond_8

    .line 119
    iput v5, p0, Lkotlinx/coroutines/channels/ArrayChannel;->size:I

    .line 120
    invoke-static {}, Lkotlinx/coroutines/selects/SelectKt;->getALREADY_SELECTED()Ljava/lang/Object;

    move-result-object v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .end local v1    # "$this$withLock$iv":Ljava/util/concurrent/locks/ReentrantLock;
    .end local v2    # "$i$f$withLock":I
    .end local v4    # "$i$a$-withLock-ArrayChannel$offerSelectInternal$1":I
    .end local v5    # "size":I
    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v6

    .line 122
    .restart local v1    # "$this$withLock$iv":Ljava/util/concurrent/locks/ReentrantLock;
    .restart local v2    # "$i$f$withLock":I
    .restart local v4    # "$i$a$-withLock-ArrayChannel$offerSelectInternal$1":I
    .restart local v5    # "size":I
    :cond_8
    :try_start_5
    invoke-direct {p0, v5, p1}, Lkotlinx/coroutines/channels/ArrayChannel;->enqueueElement(ILjava/lang/Object;)V

    .line 123
    sget-object v6, Lkotlinx/coroutines/channels/AbstractChannelKt;->OFFER_SUCCESS:Lkotlinx/coroutines/internal/Symbol;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .end local v1    # "$this$withLock$iv":Ljava/util/concurrent/locks/ReentrantLock;
    .end local v2    # "$i$f$withLock":I
    .end local v4    # "$i$a$-withLock-ArrayChannel$offerSelectInternal$1":I
    .end local v5    # "size":I
    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v6

    .restart local v1    # "$this$withLock$iv":Ljava/util/concurrent/locks/ReentrantLock;
    .restart local v2    # "$i$f$withLock":I
    :catchall_0
    move-exception v4

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v4
.end method

.method protected onCancelIdempotent(Z)V
    .locals 16
    .param p1, "wasClosed"    # Z

    .line 285
    move-object/from16 v1, p0

    iget-object v2, v1, Lkotlinx/coroutines/channels/ArrayChannel;->onUndeliveredElement:Lkotlin/jvm/functions/Function1;

    .line 286
    .local v2, "onUndeliveredElement":Lkotlin/jvm/functions/Function1;
    const/4 v0, 0x0

    move-object v3, v0

    check-cast v3, Lkotlinx/coroutines/internal/UndeliveredElementException;

    .line 287
    .local v3, "undeliveredElementException":Ljava/lang/Object;
    iget-object v4, v1, Lkotlinx/coroutines/channels/ArrayChannel;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .local v4, "$this$withLock$iv":Ljava/util/concurrent/locks/ReentrantLock;
    const/4 v5, 0x0

    .line 320
    .local v5, "$i$f$withLock":I
    move-object v6, v4

    check-cast v6, Ljava/util/concurrent/locks/Lock;

    invoke-interface {v6}, Ljava/util/concurrent/locks/Lock;->lock()V

    const/4 v0, 0x0

    .line 288
    .local v0, "$i$a$-withLock-ArrayChannel$onCancelIdempotent$1":I
    :try_start_0
    iget v7, v1, Lkotlinx/coroutines/channels/ArrayChannel;->size:I

    const/4 v8, 0x0

    move v9, v8

    :goto_0
    if-ge v9, v7, :cond_1

    move v10, v9

    .local v10, "it":I
    const/4 v11, 0x0

    .line 289
    .local v11, "$i$a$-repeat-ArrayChannel$onCancelIdempotent$1$1":I
    iget-object v12, v1, Lkotlinx/coroutines/channels/ArrayChannel;->buffer:[Ljava/lang/Object;

    iget v13, v1, Lkotlinx/coroutines/channels/ArrayChannel;->head:I

    aget-object v12, v12, v13

    .line 290
    .local v12, "value":Ljava/lang/Object;
    if-eqz v2, :cond_0

    sget-object v13, Lkotlinx/coroutines/channels/AbstractChannelKt;->EMPTY:Lkotlinx/coroutines/internal/Symbol;

    if-eq v12, v13, :cond_0

    .line 291
    nop

    .line 292
    invoke-static {v2, v12, v3}, Lkotlinx/coroutines/internal/OnUndeliveredElementKt;->callUndeliveredElementCatchingException(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;Lkotlinx/coroutines/internal/UndeliveredElementException;)Lkotlinx/coroutines/internal/UndeliveredElementException;

    move-result-object v13

    move-object v3, v13

    .line 294
    :cond_0
    iget-object v13, v1, Lkotlinx/coroutines/channels/ArrayChannel;->buffer:[Ljava/lang/Object;

    iget v14, v1, Lkotlinx/coroutines/channels/ArrayChannel;->head:I

    sget-object v15, Lkotlinx/coroutines/channels/AbstractChannelKt;->EMPTY:Lkotlinx/coroutines/internal/Symbol;

    aput-object v15, v13, v14

    .line 295
    iget v13, v1, Lkotlinx/coroutines/channels/ArrayChannel;->head:I

    add-int/lit8 v13, v13, 0x1

    iget-object v14, v1, Lkotlinx/coroutines/channels/ArrayChannel;->buffer:[Ljava/lang/Object;

    array-length v14, v14

    rem-int/2addr v13, v14

    iput v13, v1, Lkotlinx/coroutines/channels/ArrayChannel;->head:I

    .line 296
    .end local v12    # "value":Ljava/lang/Object;
    nop

    .line 288
    .end local v10    # "it":I
    .end local v11    # "$i$a$-repeat-ArrayChannel$onCancelIdempotent$1$1":I
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 297
    :cond_1
    iput v8, v1, Lkotlinx/coroutines/channels/ArrayChannel;->size:I

    .line 298
    .end local v0    # "$i$a$-withLock-ArrayChannel$onCancelIdempotent$1":I
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v6}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 320
    nop

    .line 300
    .end local v4    # "$this$withLock$iv":Ljava/util/concurrent/locks/ReentrantLock;
    .end local v5    # "$i$f$withLock":I
    invoke-super/range {p0 .. p1}, Lkotlinx/coroutines/channels/AbstractChannel;->onCancelIdempotent(Z)V

    .line 301
    if-nez v3, :cond_2

    .line 302
    return-void

    .line 301
    :cond_2
    move-object v0, v3

    .line 314
    .local v0, "it":Lkotlinx/coroutines/internal/UndeliveredElementException;
    const/4 v4, 0x0

    .line 301
    .local v4, "$i$a$-let-ArrayChannel$onCancelIdempotent$2":I
    move-object v5, v0

    check-cast v5, Ljava/lang/Throwable;

    throw v5

    .line 298
    .end local v0    # "it":Lkotlinx/coroutines/internal/UndeliveredElementException;
    .local v4, "$this$withLock$iv":Ljava/util/concurrent/locks/ReentrantLock;
    .restart local v5    # "$i$f$withLock":I
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method protected pollInternal()Ljava/lang/Object;
    .locals 13

    .line 179
    const/4 v0, 0x0

    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/channels/Send;

    .line 180
    .local v1, "send":Ljava/lang/Object;
    const/4 v2, 0x0

    .line 181
    .local v2, "resumed":Z
    const/4 v3, 0x0

    .line 182
    .local v3, "result":Ljava/lang/Object;
    iget-object v4, p0, Lkotlinx/coroutines/channels/ArrayChannel;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .local v4, "$this$withLock$iv":Ljava/util/concurrent/locks/ReentrantLock;
    const/4 v5, 0x0

    .line 317
    .local v5, "$i$f$withLock":I
    move-object v6, v4

    check-cast v6, Ljava/util/concurrent/locks/Lock;

    invoke-interface {v6}, Ljava/util/concurrent/locks/Lock;->lock()V

    const/4 v7, 0x0

    .line 183
    .local v7, "$i$a$-withLock-ArrayChannel$pollInternal$1":I
    :try_start_0
    iget v8, p0, Lkotlinx/coroutines/channels/ArrayChannel;->size:I

    .line 184
    .local v8, "size":I
    if-nez v8, :cond_1

    invoke-virtual {p0}, Lkotlinx/coroutines/channels/ArrayChannel;->getClosedForSend()Lkotlinx/coroutines/channels/Closed;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lkotlinx/coroutines/channels/AbstractChannelKt;->POLL_FAILED:Lkotlinx/coroutines/internal/Symbol;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v4    # "$this$withLock$iv":Ljava/util/concurrent/locks/ReentrantLock;
    .end local v5    # "$i$f$withLock":I
    .end local v7    # "$i$a$-withLock-ArrayChannel$pollInternal$1":I
    .end local v8    # "size":I
    :goto_0
    invoke-interface {v6}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v0

    .line 186
    .restart local v4    # "$this$withLock$iv":Ljava/util/concurrent/locks/ReentrantLock;
    .restart local v5    # "$i$f$withLock":I
    .restart local v7    # "$i$a$-withLock-ArrayChannel$pollInternal$1":I
    .restart local v8    # "size":I
    :cond_1
    :try_start_1
    iget-object v9, p0, Lkotlinx/coroutines/channels/ArrayChannel;->buffer:[Ljava/lang/Object;

    iget v10, p0, Lkotlinx/coroutines/channels/ArrayChannel;->head:I

    aget-object v9, v9, v10

    move-object v3, v9

    .line 187
    iget-object v9, p0, Lkotlinx/coroutines/channels/ArrayChannel;->buffer:[Ljava/lang/Object;

    iget v10, p0, Lkotlinx/coroutines/channels/ArrayChannel;->head:I

    aput-object v0, v9, v10

    .line 188
    add-int/lit8 v9, v8, -0x1

    iput v9, p0, Lkotlinx/coroutines/channels/ArrayChannel;->size:I

    .line 190
    sget-object v9, Lkotlinx/coroutines/channels/AbstractChannelKt;->POLL_FAILED:Lkotlinx/coroutines/internal/Symbol;

    .line 191
    .local v9, "replacement":Ljava/lang/Object;
    iget v10, p0, Lkotlinx/coroutines/channels/ArrayChannel;->capacity:I

    const/4 v11, 0x1

    if-ne v8, v10, :cond_6

    .line 192
    :goto_1
    nop

    .line 193
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/ArrayChannel;->takeFirstSendOrPeekClosed()Lkotlinx/coroutines/channels/Send;

    move-result-object v10

    if-eqz v10, :cond_6

    move-object v1, v10

    .line 194
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1, v0}, Lkotlinx/coroutines/channels/Send;->tryResumeSend(Lkotlinx/coroutines/internal/LockFreeLinkedListNode$PrepareOp;)Lkotlinx/coroutines/internal/Symbol;

    move-result-object v10

    .line 195
    .local v10, "token":Lkotlinx/coroutines/internal/Symbol;
    if-eqz v10, :cond_5

    .line 196
    invoke-static {}, Lkotlinx/coroutines/DebugKt;->getASSERTIONS_ENABLED()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 314
    const/4 v0, 0x0

    .line 196
    .local v0, "$i$a$-assert-ArrayChannel$pollInternal$1$1":I
    sget-object v12, Lkotlinx/coroutines/CancellableContinuationImplKt;->RESUME_TOKEN:Lkotlinx/coroutines/internal/Symbol;

    if-ne v10, v12, :cond_2

    move v12, v11

    goto :goto_2

    :cond_2
    const/4 v12, 0x0

    .end local v0    # "$i$a$-assert-ArrayChannel$pollInternal$1$1":I
    :goto_2
    if-eqz v12, :cond_3

    goto :goto_3

    :cond_3
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    check-cast v0, Ljava/lang/Throwable;

    .end local v1    # "send":Ljava/lang/Object;
    .end local v2    # "resumed":Z
    .end local v3    # "result":Ljava/lang/Object;
    .end local v4    # "$this$withLock$iv":Ljava/util/concurrent/locks/ReentrantLock;
    .end local v5    # "$i$f$withLock":I
    throw v0

    .line 197
    .restart local v1    # "send":Ljava/lang/Object;
    .restart local v2    # "resumed":Z
    .restart local v3    # "result":Ljava/lang/Object;
    .restart local v4    # "$this$withLock$iv":Ljava/util/concurrent/locks/ReentrantLock;
    .restart local v5    # "$i$f$withLock":I
    :cond_4
    :goto_3
    const/4 v2, 0x1

    .line 198
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lkotlinx/coroutines/channels/Send;->getPollResult()Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    .line 199
    goto :goto_4

    .line 202
    :cond_5
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lkotlinx/coroutines/channels/Send;->undeliveredElement()V

    .line 192
    .end local v10    # "token":Lkotlinx/coroutines/internal/Symbol;
    goto :goto_1

    .line 205
    :cond_6
    :goto_4
    sget-object v0, Lkotlinx/coroutines/channels/AbstractChannelKt;->POLL_FAILED:Lkotlinx/coroutines/internal/Symbol;

    if-eq v9, v0, :cond_7

    instance-of v0, v9, Lkotlinx/coroutines/channels/Closed;

    if-nez v0, :cond_7

    .line 206
    iput v8, p0, Lkotlinx/coroutines/channels/ArrayChannel;->size:I

    .line 207
    iget-object v0, p0, Lkotlinx/coroutines/channels/ArrayChannel;->buffer:[Ljava/lang/Object;

    iget v10, p0, Lkotlinx/coroutines/channels/ArrayChannel;->head:I

    add-int/2addr v10, v8

    iget-object v12, p0, Lkotlinx/coroutines/channels/ArrayChannel;->buffer:[Ljava/lang/Object;

    array-length v12, v12

    rem-int/2addr v10, v12

    aput-object v9, v0, v10

    .line 209
    :cond_7
    iget v0, p0, Lkotlinx/coroutines/channels/ArrayChannel;->head:I

    add-int/2addr v0, v11

    iget-object v10, p0, Lkotlinx/coroutines/channels/ArrayChannel;->buffer:[Ljava/lang/Object;

    array-length v10, v10

    rem-int/2addr v0, v10

    iput v0, p0, Lkotlinx/coroutines/channels/ArrayChannel;->head:I

    .line 210
    .end local v8    # "size":I
    .end local v9    # "replacement":Ljava/lang/Object;
    nop

    .end local v7    # "$i$a$-withLock-ArrayChannel$pollInternal$1":I
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-interface {v6}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 317
    nop

    .line 212
    .end local v4    # "$this$withLock$iv":Ljava/util/concurrent/locks/ReentrantLock;
    .end local v5    # "$i$f$withLock":I
    if-eqz v2, :cond_8

    .line 213
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lkotlinx/coroutines/channels/Send;->completeResumeSend()V

    .line 214
    :cond_8
    return-object v3

    .line 210
    .restart local v4    # "$this$withLock$iv":Ljava/util/concurrent/locks/ReentrantLock;
    .restart local v5    # "$i$f$withLock":I
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method protected pollSelectInternal(Lkotlinx/coroutines/selects/SelectInstance;)Ljava/lang/Object;
    .locals 13
    .param p1, "select"    # Lkotlinx/coroutines/selects/SelectInstance;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/selects/SelectInstance<",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 219
    const/4 v0, 0x0

    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/channels/Send;

    .line 220
    .local v1, "send":Ljava/lang/Object;
    const/4 v2, 0x0

    .line 221
    .local v2, "success":Z
    const/4 v3, 0x0

    .line 222
    .local v3, "result":Ljava/lang/Object;
    iget-object v4, p0, Lkotlinx/coroutines/channels/ArrayChannel;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .local v4, "$this$withLock$iv":Ljava/util/concurrent/locks/ReentrantLock;
    const/4 v5, 0x0

    .line 318
    .local v5, "$i$f$withLock":I
    move-object v6, v4

    check-cast v6, Ljava/util/concurrent/locks/Lock;

    invoke-interface {v6}, Ljava/util/concurrent/locks/Lock;->lock()V

    const/4 v7, 0x0

    .line 223
    .local v7, "$i$a$-withLock-ArrayChannel$pollSelectInternal$1":I
    :try_start_0
    iget v8, p0, Lkotlinx/coroutines/channels/ArrayChannel;->size:I

    .line 224
    .local v8, "size":I
    if-nez v8, :cond_1

    invoke-virtual {p0}, Lkotlinx/coroutines/channels/ArrayChannel;->getClosedForSend()Lkotlinx/coroutines/channels/Closed;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lkotlinx/coroutines/channels/AbstractChannelKt;->POLL_FAILED:Lkotlinx/coroutines/internal/Symbol;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v4    # "$this$withLock$iv":Ljava/util/concurrent/locks/ReentrantLock;
    .end local v5    # "$i$f$withLock":I
    .end local v7    # "$i$a$-withLock-ArrayChannel$pollSelectInternal$1":I
    .end local v8    # "size":I
    :goto_0
    invoke-interface {v6}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v0

    .line 226
    .restart local v4    # "$this$withLock$iv":Ljava/util/concurrent/locks/ReentrantLock;
    .restart local v5    # "$i$f$withLock":I
    .restart local v7    # "$i$a$-withLock-ArrayChannel$pollSelectInternal$1":I
    .restart local v8    # "size":I
    :cond_1
    :try_start_1
    iget-object v9, p0, Lkotlinx/coroutines/channels/ArrayChannel;->buffer:[Ljava/lang/Object;

    iget v10, p0, Lkotlinx/coroutines/channels/ArrayChannel;->head:I

    aget-object v9, v9, v10

    move-object v3, v9

    .line 227
    iget-object v9, p0, Lkotlinx/coroutines/channels/ArrayChannel;->buffer:[Ljava/lang/Object;

    iget v10, p0, Lkotlinx/coroutines/channels/ArrayChannel;->head:I

    aput-object v0, v9, v10

    .line 228
    add-int/lit8 v0, v8, -0x1

    iput v0, p0, Lkotlinx/coroutines/channels/ArrayChannel;->size:I

    .line 230
    sget-object v0, Lkotlinx/coroutines/channels/AbstractChannelKt;->POLL_FAILED:Lkotlinx/coroutines/internal/Symbol;

    .line 231
    .local v0, "replacement":Ljava/lang/Object;
    iget v9, p0, Lkotlinx/coroutines/channels/ArrayChannel;->capacity:I

    if-ne v8, v9, :cond_7

    .line 232
    :goto_1
    nop

    .line 233
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/ArrayChannel;->describeTryPoll()Lkotlinx/coroutines/channels/AbstractChannel$TryPollDesc;

    move-result-object v9

    .line 234
    .local v9, "pollOp":Lkotlinx/coroutines/channels/AbstractChannel$TryPollDesc;
    move-object v10, v9

    check-cast v10, Lkotlinx/coroutines/internal/AtomicDesc;

    invoke-interface {p1, v10}, Lkotlinx/coroutines/selects/SelectInstance;->performAtomicTrySelect(Lkotlinx/coroutines/internal/AtomicDesc;)Ljava/lang/Object;

    move-result-object v10

    .line 235
    .local v10, "failure":Ljava/lang/Object;
    nop

    .line 236
    if-nez v10, :cond_2

    .line 237
    invoke-virtual {v9}, Lkotlinx/coroutines/channels/AbstractChannel$TryPollDesc;->getResult()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lkotlinx/coroutines/channels/Send;

    move-object v1, v11

    .line 238
    const/4 v2, 0x1

    .line 239
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lkotlinx/coroutines/channels/Send;->getPollResult()Ljava/lang/Object;

    move-result-object v11

    move-object v0, v11

    .line 240
    goto :goto_2

    .line 242
    :cond_2
    sget-object v11, Lkotlinx/coroutines/channels/AbstractChannelKt;->POLL_FAILED:Lkotlinx/coroutines/internal/Symbol;

    if-ne v10, v11, :cond_3

    goto :goto_2

    .line 243
    :cond_3
    sget-object v11, Lkotlinx/coroutines/internal/AtomicKt;->RETRY_ATOMIC:Ljava/lang/Object;

    if-ne v10, v11, :cond_4

    .line 232
    .end local v9    # "pollOp":Lkotlinx/coroutines/channels/AbstractChannel$TryPollDesc;
    .end local v10    # "failure":Ljava/lang/Object;
    goto :goto_1

    .line 244
    .restart local v9    # "pollOp":Lkotlinx/coroutines/channels/AbstractChannel$TryPollDesc;
    .restart local v10    # "failure":Ljava/lang/Object;
    :cond_4
    invoke-static {}, Lkotlinx/coroutines/selects/SelectKt;->getALREADY_SELECTED()Ljava/lang/Object;

    move-result-object v11

    if-ne v10, v11, :cond_5

    .line 245
    iput v8, p0, Lkotlinx/coroutines/channels/ArrayChannel;->size:I

    .line 246
    iget-object v11, p0, Lkotlinx/coroutines/channels/ArrayChannel;->buffer:[Ljava/lang/Object;

    iget v12, p0, Lkotlinx/coroutines/channels/ArrayChannel;->head:I

    aput-object v3, v11, v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 247
    nop

    .end local v0    # "replacement":Ljava/lang/Object;
    .end local v4    # "$this$withLock$iv":Ljava/util/concurrent/locks/ReentrantLock;
    .end local v5    # "$i$f$withLock":I
    .end local v7    # "$i$a$-withLock-ArrayChannel$pollSelectInternal$1":I
    .end local v8    # "size":I
    .end local v9    # "pollOp":Lkotlinx/coroutines/channels/AbstractChannel$TryPollDesc;
    .end local v10    # "failure":Ljava/lang/Object;
    invoke-interface {v6}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v10

    .line 249
    .restart local v0    # "replacement":Ljava/lang/Object;
    .restart local v4    # "$this$withLock$iv":Ljava/util/concurrent/locks/ReentrantLock;
    .restart local v5    # "$i$f$withLock":I
    .restart local v7    # "$i$a$-withLock-ArrayChannel$pollSelectInternal$1":I
    .restart local v8    # "size":I
    .restart local v9    # "pollOp":Lkotlinx/coroutines/channels/AbstractChannel$TryPollDesc;
    .restart local v10    # "failure":Ljava/lang/Object;
    :cond_5
    :try_start_2
    instance-of v11, v10, Lkotlinx/coroutines/channels/Closed;

    if-eqz v11, :cond_6

    .line 250
    move-object v11, v10

    check-cast v11, Lkotlinx/coroutines/channels/Send;

    move-object v1, v11

    .line 251
    const/4 v2, 0x1

    .line 252
    move-object v0, v10

    .line 253
    goto :goto_2

    .line 255
    :cond_6
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "performAtomicTrySelect(describeTryOffer) returned "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    new-instance v12, Ljava/lang/IllegalStateException;

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v12, v11}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v12, Ljava/lang/Throwable;

    .end local v1    # "send":Ljava/lang/Object;
    .end local v2    # "success":Z
    .end local v3    # "result":Ljava/lang/Object;
    .end local v4    # "$this$withLock$iv":Ljava/util/concurrent/locks/ReentrantLock;
    .end local v5    # "$i$f$withLock":I
    .end local p1    # "select":Lkotlinx/coroutines/selects/SelectInstance;
    throw v12

    .line 259
    .end local v9    # "pollOp":Lkotlinx/coroutines/channels/AbstractChannel$TryPollDesc;
    .end local v10    # "failure":Ljava/lang/Object;
    .restart local v1    # "send":Ljava/lang/Object;
    .restart local v2    # "success":Z
    .restart local v3    # "result":Ljava/lang/Object;
    .restart local v4    # "$this$withLock$iv":Ljava/util/concurrent/locks/ReentrantLock;
    .restart local v5    # "$i$f$withLock":I
    .restart local p1    # "select":Lkotlinx/coroutines/selects/SelectInstance;
    :cond_7
    :goto_2
    sget-object v9, Lkotlinx/coroutines/channels/AbstractChannelKt;->POLL_FAILED:Lkotlinx/coroutines/internal/Symbol;

    if-eq v0, v9, :cond_8

    instance-of v9, v0, Lkotlinx/coroutines/channels/Closed;

    if-nez v9, :cond_8

    .line 260
    iput v8, p0, Lkotlinx/coroutines/channels/ArrayChannel;->size:I

    .line 261
    iget-object v9, p0, Lkotlinx/coroutines/channels/ArrayChannel;->buffer:[Ljava/lang/Object;

    iget v10, p0, Lkotlinx/coroutines/channels/ArrayChannel;->head:I

    add-int/2addr v10, v8

    iget-object v11, p0, Lkotlinx/coroutines/channels/ArrayChannel;->buffer:[Ljava/lang/Object;

    array-length v11, v11

    rem-int/2addr v10, v11

    aput-object v0, v9, v10

    goto :goto_3

    .line 264
    :cond_8
    invoke-interface {p1}, Lkotlinx/coroutines/selects/SelectInstance;->trySelect()Z

    move-result v9

    if-nez v9, :cond_9

    .line 265
    iput v8, p0, Lkotlinx/coroutines/channels/ArrayChannel;->size:I

    .line 266
    iget-object v9, p0, Lkotlinx/coroutines/channels/ArrayChannel;->buffer:[Ljava/lang/Object;

    iget v10, p0, Lkotlinx/coroutines/channels/ArrayChannel;->head:I

    aput-object v3, v9, v10

    .line 267
    invoke-static {}, Lkotlinx/coroutines/selects/SelectKt;->getALREADY_SELECTED()Ljava/lang/Object;

    move-result-object v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local v0    # "replacement":Ljava/lang/Object;
    .end local v4    # "$this$withLock$iv":Ljava/util/concurrent/locks/ReentrantLock;
    .end local v5    # "$i$f$withLock":I
    .end local v7    # "$i$a$-withLock-ArrayChannel$pollSelectInternal$1":I
    .end local v8    # "size":I
    invoke-interface {v6}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v9

    .line 269
    .restart local v0    # "replacement":Ljava/lang/Object;
    .restart local v4    # "$this$withLock$iv":Ljava/util/concurrent/locks/ReentrantLock;
    .restart local v5    # "$i$f$withLock":I
    .restart local v7    # "$i$a$-withLock-ArrayChannel$pollSelectInternal$1":I
    .restart local v8    # "size":I
    :cond_9
    :goto_3
    nop

    .line 270
    :try_start_3
    iget v9, p0, Lkotlinx/coroutines/channels/ArrayChannel;->head:I

    add-int/lit8 v9, v9, 0x1

    iget-object v10, p0, Lkotlinx/coroutines/channels/ArrayChannel;->buffer:[Ljava/lang/Object;

    array-length v10, v10

    rem-int/2addr v9, v10

    iput v9, p0, Lkotlinx/coroutines/channels/ArrayChannel;->head:I

    .line 271
    .end local v0    # "replacement":Ljava/lang/Object;
    .end local v8    # "size":I
    nop

    .end local v7    # "$i$a$-withLock-ArrayChannel$pollSelectInternal$1":I
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-interface {v6}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 318
    nop

    .line 273
    .end local v4    # "$this$withLock$iv":Ljava/util/concurrent/locks/ReentrantLock;
    .end local v5    # "$i$f$withLock":I
    if-eqz v2, :cond_a

    .line 274
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lkotlinx/coroutines/channels/Send;->completeResumeSend()V

    .line 275
    :cond_a
    return-object v3

    .line 271
    .restart local v4    # "$this$withLock$iv":Ljava/util/concurrent/locks/ReentrantLock;
    .restart local v5    # "$i$f$withLock":I
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method
