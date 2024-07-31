.class final Lkotlinx/coroutines/channels/ArrayBroadcastChannel$Subscriber;
.super Lkotlinx/coroutines/channels/AbstractChannel;
.source "ArrayBroadcastChannel.kt"

# interfaces
.implements Lkotlinx/coroutines/channels/ReceiveChannel;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlinx/coroutines/channels/ArrayBroadcastChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Subscriber"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lkotlinx/coroutines/channels/AbstractChannel<",
        "TE;>;",
        "Lkotlinx/coroutines/channels/ReceiveChannel<",
        "TE;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nArrayBroadcastChannel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ArrayBroadcastChannel.kt\nkotlinx/coroutines/channels/ArrayBroadcastChannel$Subscriber\n+ 2 Concurrent.kt\nkotlinx/coroutines/internal/ConcurrentKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,379:1\n17#2:380\n17#2:382\n17#2:383\n1#3:381\n*E\n*S KotlinDebug\n*F\n+ 1 ArrayBroadcastChannel.kt\nkotlinx/coroutines/channels/ArrayBroadcastChannel$Subscriber\n*L\n227#1:380\n277#1:382\n306#1:383\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000J\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0003\n\u0002\u0008\u0004\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\t\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0008\u0002\u0018\u0000*\u0004\u0008\u0001\u0010\u00012\u0008\u0012\u0004\u0012\u00028\u00010\'2\u0008\u0012\u0004\u0012\u00028\u00010(B\u0015\u0012\u000c\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00028\u00010\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\r\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u0019\u0010\u000b\u001a\u00020\u00062\u0008\u0010\n\u001a\u0004\u0018\u00010\tH\u0016\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u000f\u0010\r\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\r\u0010\u0008J\u0011\u0010\u000f\u001a\u0004\u0018\u00010\u000eH\u0002\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u0011\u0010\u0011\u001a\u0004\u0018\u00010\u000eH\u0014\u00a2\u0006\u0004\u0008\u0011\u0010\u0010J\u001d\u0010\u0014\u001a\u0004\u0018\u00010\u000e2\n\u0010\u0013\u001a\u0006\u0012\u0002\u0008\u00030\u0012H\u0014\u00a2\u0006\u0004\u0008\u0014\u0010\u0015R\u001c\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00028\u00010\u00028\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0003\u0010\u0016R\u0016\u0010\u0017\u001a\u00020\u00068T@\u0014X\u0094\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0017\u0010\u0008R\u0016\u0010\u0018\u001a\u00020\u00068T@\u0014X\u0094\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0018\u0010\u0008R\u0016\u0010\u0019\u001a\u00020\u00068T@\u0014X\u0094\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0019\u0010\u0008R\u0016\u0010\u001a\u001a\u00020\u00068T@\u0014X\u0094\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u001a\u0010\u0008R$\u0010!\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u001b8F@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u001d\u0010\u001e\"\u0004\u0008\u001f\u0010 R\u001a\u0010$\u001a\u00060\"j\u0002`#8\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008$\u0010%\u00a8\u0006&"
    }
    d2 = {
        "Lkotlinx/coroutines/channels/ArrayBroadcastChannel$Subscriber;",
        "E",
        "Lkotlinx/coroutines/channels/ArrayBroadcastChannel;",
        "broadcastChannel",
        "<init>",
        "(Lkotlinx/coroutines/channels/ArrayBroadcastChannel;)V",
        "",
        "checkOffer",
        "()Z",
        "",
        "cause",
        "close",
        "(Ljava/lang/Throwable;)Z",
        "needsToCheckOfferWithoutLock",
        "",
        "peekUnderLock",
        "()Ljava/lang/Object;",
        "pollInternal",
        "Lkotlinx/coroutines/selects/SelectInstance;",
        "select",
        "pollSelectInternal",
        "(Lkotlinx/coroutines/selects/SelectInstance;)Ljava/lang/Object;",
        "Lkotlinx/coroutines/channels/ArrayBroadcastChannel;",
        "isBufferAlwaysEmpty",
        "isBufferAlwaysFull",
        "isBufferEmpty",
        "isBufferFull",
        "",
        "value",
        "getSubHead",
        "()J",
        "setSubHead",
        "(J)V",
        "subHead",
        "Ljava/util/concurrent/locks/ReentrantLock;",
        "Lkotlinx/coroutines/internal/ReentrantLock;",
        "subLock",
        "Ljava/util/concurrent/locks/ReentrantLock;",
        "kotlinx-coroutines-core",
        "Lkotlinx/coroutines/channels/AbstractChannel;",
        "Lkotlinx/coroutines/channels/ReceiveChannel;"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x0
    }
.end annotation


# instance fields
.field private volatile _subHead:J

.field private final broadcastChannel:Lkotlinx/coroutines/channels/ArrayBroadcastChannel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/channels/ArrayBroadcastChannel<",
            "TE;>;"
        }
    .end annotation
.end field

.field private final subLock:Ljava/util/concurrent/locks/ReentrantLock;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/channels/ArrayBroadcastChannel;)V
    .locals 2
    .param p1, "broadcastChannel"    # Lkotlinx/coroutines/channels/ArrayBroadcastChannel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/channels/ArrayBroadcastChannel<",
            "TE;>;)V"
        }
    .end annotation

    .line 208
    nop

    .line 210
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlinx/coroutines/channels/AbstractChannel;-><init>(Lkotlin/jvm/functions/Function1;)V

    iput-object p1, p0, Lkotlinx/coroutines/channels/ArrayBroadcastChannel$Subscriber;->broadcastChannel:Lkotlinx/coroutines/channels/ArrayBroadcastChannel;

    .line 211
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lkotlinx/coroutines/channels/ArrayBroadcastChannel$Subscriber;->subLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 213
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lkotlinx/coroutines/channels/ArrayBroadcastChannel$Subscriber;->_subHead:J

    return-void
.end method

.method private final needsToCheckOfferWithoutLock()Z
    .locals 2

    .line 341
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/ArrayBroadcastChannel$Subscriber;->getClosedForReceive()Lkotlinx/coroutines/channels/Closed;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 342
    return v1

    .line 343
    :cond_0
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/ArrayBroadcastChannel$Subscriber;->isBufferEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lkotlinx/coroutines/channels/ArrayBroadcastChannel$Subscriber;->broadcastChannel:Lkotlinx/coroutines/channels/ArrayBroadcastChannel;

    invoke-virtual {v0}, Lkotlinx/coroutines/channels/ArrayBroadcastChannel;->getClosedForReceive()Lkotlinx/coroutines/channels/Closed;

    move-result-object v0

    if-nez v0, :cond_1

    .line 344
    return v1

    .line 345
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method private final peekUnderLock()Ljava/lang/Object;
    .locals 7

    .line 353
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/ArrayBroadcastChannel$Subscriber;->getSubHead()J

    move-result-wide v0

    .line 356
    .local v0, "subHead":J
    iget-object v2, p0, Lkotlinx/coroutines/channels/ArrayBroadcastChannel$Subscriber;->broadcastChannel:Lkotlinx/coroutines/channels/ArrayBroadcastChannel;

    invoke-virtual {v2}, Lkotlinx/coroutines/channels/ArrayBroadcastChannel;->getClosedForReceive()Lkotlinx/coroutines/channels/Closed;

    move-result-object v2

    .line 357
    .local v2, "closedBroadcast":Lkotlinx/coroutines/channels/Closed;
    iget-object v3, p0, Lkotlinx/coroutines/channels/ArrayBroadcastChannel$Subscriber;->broadcastChannel:Lkotlinx/coroutines/channels/ArrayBroadcastChannel;

    invoke-static {v3}, Lkotlinx/coroutines/channels/ArrayBroadcastChannel;->access$getTail$p(Lkotlinx/coroutines/channels/ArrayBroadcastChannel;)J

    move-result-wide v3

    .line 358
    .local v3, "tail":J
    cmp-long v5, v0, v3

    if-ltz v5, :cond_2

    .line 361
    if-eqz v2, :cond_0

    move-object v5, v2

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/ArrayBroadcastChannel$Subscriber;->getClosedForReceive()Lkotlinx/coroutines/channels/Closed;

    move-result-object v5

    :goto_0
    if-eqz v5, :cond_1

    goto :goto_1

    :cond_1
    sget-object v5, Lkotlinx/coroutines/channels/AbstractChannelKt;->POLL_FAILED:Lkotlinx/coroutines/internal/Symbol;

    :goto_1
    return-object v5

    .line 365
    :cond_2
    iget-object v5, p0, Lkotlinx/coroutines/channels/ArrayBroadcastChannel$Subscriber;->broadcastChannel:Lkotlinx/coroutines/channels/ArrayBroadcastChannel;

    invoke-static {v5, v0, v1}, Lkotlinx/coroutines/channels/ArrayBroadcastChannel;->access$elementAt(Lkotlinx/coroutines/channels/ArrayBroadcastChannel;J)Ljava/lang/Object;

    move-result-object v5

    .line 367
    .local v5, "result":Ljava/lang/Object;
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/ArrayBroadcastChannel$Subscriber;->getClosedForReceive()Lkotlinx/coroutines/channels/Closed;

    move-result-object v6

    .line 368
    .local v6, "closedSub":Lkotlinx/coroutines/channels/Closed;
    if-eqz v6, :cond_3

    return-object v6

    .line 370
    :cond_3
    return-object v5
.end method


# virtual methods
.method public final checkOffer()Z
    .locals 10

    .line 238
    const/4 v0, 0x0

    .line 239
    .local v0, "updated":Z
    const/4 v1, 0x0

    move-object v2, v1

    check-cast v2, Lkotlinx/coroutines/channels/Closed;

    .line 240
    .local v2, "closed":Lkotlinx/coroutines/channels/Closed;
    :goto_0
    nop

    .line 241
    invoke-direct {p0}, Lkotlinx/coroutines/channels/ArrayBroadcastChannel$Subscriber;->needsToCheckOfferWithoutLock()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 244
    iget-object v3, p0, Lkotlinx/coroutines/channels/ArrayBroadcastChannel$Subscriber;->subLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock()Z

    move-result v3

    if-nez v3, :cond_0

    goto/16 :goto_4

    .line 245
    :cond_0
    const/4 v3, 0x0

    .line 246
    .local v3, "receive":Lkotlinx/coroutines/channels/ReceiveOrClosed;
    const/4 v4, 0x0

    .line 247
    .local v4, "result":Ljava/lang/Object;
    nop

    .line 248
    :try_start_0
    invoke-direct {p0}, Lkotlinx/coroutines/channels/ArrayBroadcastChannel$Subscriber;->peekUnderLock()Ljava/lang/Object;

    move-result-object v5

    move-object v4, v5

    .line 249
    nop

    .line 250
    sget-object v5, Lkotlinx/coroutines/channels/AbstractChannelKt;->POLL_FAILED:Lkotlinx/coroutines/internal/Symbol;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v4, v5, :cond_2

    .line 265
    :cond_1
    iget-object v5, p0, Lkotlinx/coroutines/channels/ArrayBroadcastChannel$Subscriber;->subLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    .line 251
    :cond_2
    :try_start_1
    instance-of v5, v4, Lkotlinx/coroutines/channels/Closed;

    if-eqz v5, :cond_4

    .line 252
    move-object v1, v4

    check-cast v1, Lkotlinx/coroutines/channels/Closed;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v2, v1

    .line 253
    nop

    .line 265
    :cond_3
    :goto_1
    iget-object v1, p0, Lkotlinx/coroutines/channels/ArrayBroadcastChannel$Subscriber;->subLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_4

    .line 255
    :cond_4
    nop

    .line 257
    :try_start_2
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/ArrayBroadcastChannel$Subscriber;->takeFirstReceiveOrPeekClosed()Lkotlinx/coroutines/channels/ReceiveOrClosed;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 265
    move-object v3, v5

    .line 258
    nop

    instance-of v5, v3, Lkotlinx/coroutines/channels/Closed;

    if-eqz v5, :cond_5

    .line 265
    goto :goto_1

    .line 259
    :cond_5
    invoke-interface {v3, v4, v1}, Lkotlinx/coroutines/channels/ReceiveOrClosed;->tryResumeReceive(Ljava/lang/Object;Lkotlinx/coroutines/internal/LockFreeLinkedListNode$PrepareOp;)Lkotlinx/coroutines/internal/Symbol;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 260
    .local v5, "token":Lkotlinx/coroutines/internal/Symbol;
    invoke-static {}, Lkotlinx/coroutines/DebugKt;->getASSERTIONS_ENABLED()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 381
    const/4 v6, 0x0

    .line 260
    .local v6, "$i$a$-assert-ArrayBroadcastChannel$Subscriber$checkOffer$1":I
    sget-object v7, Lkotlinx/coroutines/CancellableContinuationImplKt;->RESUME_TOKEN:Lkotlinx/coroutines/internal/Symbol;

    if-ne v5, v7, :cond_6

    const/4 v7, 0x1

    goto :goto_2

    :cond_6
    const/4 v7, 0x0

    .end local v6    # "$i$a$-assert-ArrayBroadcastChannel$Subscriber$checkOffer$1":I
    :goto_2
    if-eqz v7, :cond_7

    goto :goto_3

    :cond_7
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    check-cast v1, Ljava/lang/Throwable;

    .end local v0    # "updated":Z
    .end local v2    # "closed":Lkotlinx/coroutines/channels/Closed;
    .end local v3    # "receive":Lkotlinx/coroutines/channels/ReceiveOrClosed;
    .end local v4    # "result":Ljava/lang/Object;
    throw v1

    .line 261
    .restart local v0    # "updated":Z
    .restart local v2    # "closed":Lkotlinx/coroutines/channels/Closed;
    .restart local v3    # "receive":Lkotlinx/coroutines/channels/ReceiveOrClosed;
    .restart local v4    # "result":Ljava/lang/Object;
    :cond_8
    :goto_3
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/ArrayBroadcastChannel$Subscriber;->getSubHead()J

    move-result-wide v6

    .line 262
    .local v6, "subHead":J
    const-wide/16 v8, 0x1

    add-long/2addr v8, v6

    invoke-virtual {p0, v8, v9}, Lkotlinx/coroutines/channels/ArrayBroadcastChannel$Subscriber;->setSubHead(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 263
    const/4 v0, 0x1

    .line 265
    .end local v5    # "token":Lkotlinx/coroutines/internal/Symbol;
    .end local v6    # "subHead":J
    iget-object v5, p0, Lkotlinx/coroutines/channels/ArrayBroadcastChannel$Subscriber;->subLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 266
    nop

    .line 267
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v3, v4}, Lkotlinx/coroutines/channels/ReceiveOrClosed;->completeResumeReceive(Ljava/lang/Object;)V

    .line 241
    .end local v3    # "receive":Lkotlinx/coroutines/channels/ReceiveOrClosed;
    .end local v4    # "result":Ljava/lang/Object;
    goto :goto_0

    .line 266
    .restart local v3    # "receive":Lkotlinx/coroutines/channels/ReceiveOrClosed;
    .restart local v4    # "result":Ljava/lang/Object;
    :catchall_0
    move-exception v1

    .line 265
    iget-object v5, p0, Lkotlinx/coroutines/channels/ArrayBroadcastChannel$Subscriber;->subLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1

    .line 270
    .end local v3    # "receive":Lkotlinx/coroutines/channels/ReceiveOrClosed;
    .end local v4    # "result":Ljava/lang/Object;
    :cond_9
    :goto_4
    if-eqz v2, :cond_a

    move-object v1, v2

    .line 381
    .local v1, "it":Lkotlinx/coroutines/channels/Closed;
    const/4 v3, 0x0

    .line 270
    .local v3, "$i$a$-also-ArrayBroadcastChannel$Subscriber$checkOffer$2":I
    iget-object v4, v1, Lkotlinx/coroutines/channels/Closed;->closeCause:Ljava/lang/Throwable;

    invoke-virtual {p0, v4}, Lkotlinx/coroutines/channels/ArrayBroadcastChannel$Subscriber;->close(Ljava/lang/Throwable;)Z

    .line 271
    .end local v1    # "it":Lkotlinx/coroutines/channels/Closed;
    .end local v3    # "$i$a$-also-ArrayBroadcastChannel$Subscriber$checkOffer$2":I
    :cond_a
    return v0
.end method

.method public close(Ljava/lang/Throwable;)Z
    .locals 7
    .param p1, "cause"    # Ljava/lang/Throwable;

    .line 224
    invoke-super {p0, p1}, Lkotlinx/coroutines/channels/AbstractChannel;->close(Ljava/lang/Throwable;)Z

    move-result v0

    .line 225
    .local v0, "wasClosed":Z
    if-eqz v0, :cond_0

    .line 226
    iget-object v1, p0, Lkotlinx/coroutines/channels/ArrayBroadcastChannel$Subscriber;->broadcastChannel:Lkotlinx/coroutines/channels/ArrayBroadcastChannel;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v1, v3, p0, v2, v3}, Lkotlinx/coroutines/channels/ArrayBroadcastChannel;->updateHead$default(Lkotlinx/coroutines/channels/ArrayBroadcastChannel;Lkotlinx/coroutines/channels/ArrayBroadcastChannel$Subscriber;Lkotlinx/coroutines/channels/ArrayBroadcastChannel$Subscriber;ILjava/lang/Object;)V

    .line 227
    iget-object v1, p0, Lkotlinx/coroutines/channels/ArrayBroadcastChannel$Subscriber;->subLock:Ljava/util/concurrent/locks/ReentrantLock;

    .local v1, "$this$withLock$iv":Ljava/util/concurrent/locks/ReentrantLock;
    const/4 v2, 0x0

    .line 380
    .local v2, "$i$f$withLock":I
    move-object v3, v1

    check-cast v3, Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->lock()V

    const/4 v4, 0x0

    .line 228
    .local v4, "$i$a$-withLock-ArrayBroadcastChannel$Subscriber$close$1":I
    :try_start_0
    iget-object v5, p0, Lkotlinx/coroutines/channels/ArrayBroadcastChannel$Subscriber;->broadcastChannel:Lkotlinx/coroutines/channels/ArrayBroadcastChannel;

    invoke-static {v5}, Lkotlinx/coroutines/channels/ArrayBroadcastChannel;->access$getTail$p(Lkotlinx/coroutines/channels/ArrayBroadcastChannel;)J

    move-result-wide v5

    invoke-virtual {p0, v5, v6}, Lkotlinx/coroutines/channels/ArrayBroadcastChannel$Subscriber;->setSubHead(J)V

    .line 229
    .end local v4    # "$i$a$-withLock-ArrayBroadcastChannel$Subscriber$close$1":I
    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 380
    goto :goto_0

    .line 229
    :catchall_0
    move-exception v4

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v4

    .line 231
    .end local v1    # "$this$withLock$iv":Ljava/util/concurrent/locks/ReentrantLock;
    .end local v2    # "$i$f$withLock":I
    :cond_0
    :goto_0
    return v0
.end method

.method public final getSubHead()J
    .locals 2

    .line 215
    iget-wide v0, p0, Lkotlinx/coroutines/channels/ArrayBroadcastChannel$Subscriber;->_subHead:J

    return-wide v0
.end method

.method protected isBufferAlwaysEmpty()Z
    .locals 1

    .line 218
    const/4 v0, 0x0

    return v0
.end method

.method protected isBufferAlwaysFull()Z
    .locals 2

    .line 220
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Should not be used"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method

.method protected isBufferEmpty()Z
    .locals 4

    .line 219
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/ArrayBroadcastChannel$Subscriber;->getSubHead()J

    move-result-wide v0

    iget-object v2, p0, Lkotlinx/coroutines/channels/ArrayBroadcastChannel$Subscriber;->broadcastChannel:Lkotlinx/coroutines/channels/ArrayBroadcastChannel;

    invoke-static {v2}, Lkotlinx/coroutines/channels/ArrayBroadcastChannel;->access$getTail$p(Lkotlinx/coroutines/channels/ArrayBroadcastChannel;)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected isBufferFull()Z
    .locals 2

    .line 221
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Should not be used"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method

.method protected pollInternal()Ljava/lang/Object;
    .locals 10

    .line 276
    const/4 v0, 0x0

    .line 277
    .local v0, "updated":Z
    iget-object v1, p0, Lkotlinx/coroutines/channels/ArrayBroadcastChannel$Subscriber;->subLock:Ljava/util/concurrent/locks/ReentrantLock;

    .local v1, "$this$withLock$iv":Ljava/util/concurrent/locks/ReentrantLock;
    const/4 v2, 0x0

    .line 382
    .local v2, "$i$f$withLock":I
    move-object v3, v1

    check-cast v3, Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->lock()V

    const/4 v4, 0x0

    .line 278
    .local v4, "$i$a$-withLock-ArrayBroadcastChannel$Subscriber$pollInternal$result$1":I
    :try_start_0
    invoke-direct {p0}, Lkotlinx/coroutines/channels/ArrayBroadcastChannel$Subscriber;->peekUnderLock()Ljava/lang/Object;

    move-result-object v5

    .line 279
    .local v5, "result":Ljava/lang/Object;
    nop

    .line 280
    instance-of v6, v5, Lkotlinx/coroutines/channels/Closed;

    if-eqz v6, :cond_0

    goto :goto_0

    .line 281
    :cond_0
    sget-object v6, Lkotlinx/coroutines/channels/AbstractChannelKt;->POLL_FAILED:Lkotlinx/coroutines/internal/Symbol;

    if-ne v5, v6, :cond_1

    goto :goto_0

    .line 284
    :cond_1
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/ArrayBroadcastChannel$Subscriber;->getSubHead()J

    move-result-wide v6

    .line 285
    .local v6, "subHead":J
    const-wide/16 v8, 0x1

    add-long/2addr v8, v6

    invoke-virtual {p0, v8, v9}, Lkotlinx/coroutines/channels/ArrayBroadcastChannel$Subscriber;->setSubHead(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 286
    const/4 v0, 0x1

    .line 288
    .end local v6    # "subHead":J
    :goto_0
    nop

    .line 289
    nop

    .end local v4    # "$i$a$-withLock-ArrayBroadcastChannel$Subscriber$pollInternal$result$1":I
    .end local v5    # "result":Ljava/lang/Object;
    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 382
    nop

    .line 277
    .end local v1    # "$this$withLock$iv":Ljava/util/concurrent/locks/ReentrantLock;
    .end local v2    # "$i$f$withLock":I
    move-object v1, v5

    .line 292
    .local v1, "result":Ljava/lang/Object;
    instance-of v2, v1, Lkotlinx/coroutines/channels/Closed;

    const/4 v3, 0x0

    if-nez v2, :cond_2

    move-object v2, v3

    goto :goto_1

    :cond_2
    move-object v2, v1

    :goto_1
    check-cast v2, Lkotlinx/coroutines/channels/Closed;

    if-eqz v2, :cond_3

    .line 381
    .local v2, "it":Lkotlinx/coroutines/channels/Closed;
    const/4 v4, 0x0

    .line 292
    .local v4, "$i$a$-also-ArrayBroadcastChannel$Subscriber$pollInternal$1":I
    iget-object v5, v2, Lkotlinx/coroutines/channels/Closed;->closeCause:Ljava/lang/Throwable;

    invoke-virtual {p0, v5}, Lkotlinx/coroutines/channels/ArrayBroadcastChannel$Subscriber;->close(Ljava/lang/Throwable;)Z

    .line 295
    .end local v2    # "it":Lkotlinx/coroutines/channels/Closed;
    .end local v4    # "$i$a$-also-ArrayBroadcastChannel$Subscriber$pollInternal$1":I
    :cond_3
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/ArrayBroadcastChannel$Subscriber;->checkOffer()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 296
    const/4 v0, 0x1

    .line 298
    :cond_4
    if-eqz v0, :cond_5

    .line 299
    iget-object v2, p0, Lkotlinx/coroutines/channels/ArrayBroadcastChannel$Subscriber;->broadcastChannel:Lkotlinx/coroutines/channels/ArrayBroadcastChannel;

    const/4 v4, 0x3

    invoke-static {v2, v3, v3, v4, v3}, Lkotlinx/coroutines/channels/ArrayBroadcastChannel;->updateHead$default(Lkotlinx/coroutines/channels/ArrayBroadcastChannel;Lkotlinx/coroutines/channels/ArrayBroadcastChannel$Subscriber;Lkotlinx/coroutines/channels/ArrayBroadcastChannel$Subscriber;ILjava/lang/Object;)V

    .line 300
    :cond_5
    return-object v1

    .line 289
    .local v1, "$this$withLock$iv":Ljava/util/concurrent/locks/ReentrantLock;
    .local v2, "$i$f$withLock":I
    :catchall_0
    move-exception v4

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v4
.end method

.method protected pollSelectInternal(Lkotlinx/coroutines/selects/SelectInstance;)Ljava/lang/Object;
    .locals 10
    .param p1, "select"    # Lkotlinx/coroutines/selects/SelectInstance;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/selects/SelectInstance<",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 305
    const/4 v0, 0x0

    .line 306
    .local v0, "updated":Z
    iget-object v1, p0, Lkotlinx/coroutines/channels/ArrayBroadcastChannel$Subscriber;->subLock:Ljava/util/concurrent/locks/ReentrantLock;

    .local v1, "$this$withLock$iv":Ljava/util/concurrent/locks/ReentrantLock;
    const/4 v2, 0x0

    .line 383
    .local v2, "$i$f$withLock":I
    move-object v3, v1

    check-cast v3, Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->lock()V

    const/4 v4, 0x0

    .line 307
    .local v4, "$i$a$-withLock-ArrayBroadcastChannel$Subscriber$pollSelectInternal$result$1":I
    :try_start_0
    invoke-direct {p0}, Lkotlinx/coroutines/channels/ArrayBroadcastChannel$Subscriber;->peekUnderLock()Ljava/lang/Object;

    move-result-object v5

    .line 308
    .local v5, "result":Ljava/lang/Object;
    nop

    .line 309
    instance-of v6, v5, Lkotlinx/coroutines/channels/Closed;

    if-eqz v6, :cond_0

    goto :goto_0

    .line 310
    :cond_0
    sget-object v6, Lkotlinx/coroutines/channels/AbstractChannelKt;->POLL_FAILED:Lkotlinx/coroutines/internal/Symbol;

    if-ne v5, v6, :cond_1

    goto :goto_0

    .line 313
    :cond_1
    invoke-interface {p1}, Lkotlinx/coroutines/selects/SelectInstance;->trySelect()Z

    move-result v6

    if-nez v6, :cond_2

    .line 314
    invoke-static {}, Lkotlinx/coroutines/selects/SelectKt;->getALREADY_SELECTED()Ljava/lang/Object;

    move-result-object v6

    move-object v5, v6

    goto :goto_0

    .line 317
    :cond_2
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/ArrayBroadcastChannel$Subscriber;->getSubHead()J

    move-result-wide v6

    .line 318
    .local v6, "subHead":J
    const-wide/16 v8, 0x1

    add-long/2addr v8, v6

    invoke-virtual {p0, v8, v9}, Lkotlinx/coroutines/channels/ArrayBroadcastChannel$Subscriber;->setSubHead(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 319
    const/4 v0, 0x1

    .line 320
    .end local v6    # "subHead":J
    :goto_0
    nop

    .line 322
    nop

    .line 323
    nop

    .end local v4    # "$i$a$-withLock-ArrayBroadcastChannel$Subscriber$pollSelectInternal$result$1":I
    .end local v5    # "result":Ljava/lang/Object;
    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 383
    nop

    .line 306
    .end local v1    # "$this$withLock$iv":Ljava/util/concurrent/locks/ReentrantLock;
    .end local v2    # "$i$f$withLock":I
    move-object v1, v5

    .line 326
    .local v1, "result":Ljava/lang/Object;
    instance-of v2, v1, Lkotlinx/coroutines/channels/Closed;

    const/4 v3, 0x0

    if-nez v2, :cond_3

    move-object v2, v3

    goto :goto_1

    :cond_3
    move-object v2, v1

    :goto_1
    check-cast v2, Lkotlinx/coroutines/channels/Closed;

    if-eqz v2, :cond_4

    .line 381
    .local v2, "it":Lkotlinx/coroutines/channels/Closed;
    const/4 v4, 0x0

    .line 326
    .local v4, "$i$a$-also-ArrayBroadcastChannel$Subscriber$pollSelectInternal$1":I
    iget-object v5, v2, Lkotlinx/coroutines/channels/Closed;->closeCause:Ljava/lang/Throwable;

    invoke-virtual {p0, v5}, Lkotlinx/coroutines/channels/ArrayBroadcastChannel$Subscriber;->close(Ljava/lang/Throwable;)Z

    .line 329
    .end local v2    # "it":Lkotlinx/coroutines/channels/Closed;
    .end local v4    # "$i$a$-also-ArrayBroadcastChannel$Subscriber$pollSelectInternal$1":I
    :cond_4
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/ArrayBroadcastChannel$Subscriber;->checkOffer()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 330
    const/4 v0, 0x1

    .line 332
    :cond_5
    if-eqz v0, :cond_6

    .line 333
    iget-object v2, p0, Lkotlinx/coroutines/channels/ArrayBroadcastChannel$Subscriber;->broadcastChannel:Lkotlinx/coroutines/channels/ArrayBroadcastChannel;

    const/4 v4, 0x3

    invoke-static {v2, v3, v3, v4, v3}, Lkotlinx/coroutines/channels/ArrayBroadcastChannel;->updateHead$default(Lkotlinx/coroutines/channels/ArrayBroadcastChannel;Lkotlinx/coroutines/channels/ArrayBroadcastChannel$Subscriber;Lkotlinx/coroutines/channels/ArrayBroadcastChannel$Subscriber;ILjava/lang/Object;)V

    .line 334
    :cond_6
    return-object v1

    .line 323
    .local v1, "$this$withLock$iv":Ljava/util/concurrent/locks/ReentrantLock;
    .local v2, "$i$f$withLock":I
    :catchall_0
    move-exception v4

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v4
.end method

.method public final setSubHead(J)V
    .locals 0
    .param p1, "value"    # J

    .line 216
    iput-wide p1, p0, Lkotlinx/coroutines/channels/ArrayBroadcastChannel$Subscriber;->_subHead:J

    return-void
.end method
