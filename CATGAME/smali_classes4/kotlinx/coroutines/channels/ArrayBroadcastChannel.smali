.class public final Lkotlinx/coroutines/channels/ArrayBroadcastChannel;
.super Lkotlinx/coroutines/channels/AbstractSendChannel;
.source "ArrayBroadcastChannel.kt"

# interfaces
.implements Lkotlinx/coroutines/channels/BroadcastChannel;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlinx/coroutines/channels/ArrayBroadcastChannel$Subscriber;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lkotlinx/coroutines/channels/AbstractSendChannel<",
        "TE;>;",
        "Lkotlinx/coroutines/channels/BroadcastChannel<",
        "TE;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nArrayBroadcastChannel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ArrayBroadcastChannel.kt\nkotlinx/coroutines/channels/ArrayBroadcastChannel\n+ 2 Concurrent.kt\nkotlinx/coroutines/internal/ConcurrentKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,379:1\n17#2:380\n17#2:382\n17#2:383\n1#3:381\n*E\n*S KotlinDebug\n*F\n+ 1 ArrayBroadcastChannel.kt\nkotlinx/coroutines/channels/ArrayBroadcastChannel\n*L\n94#1:380\n111#1:382\n146#1:383\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0084\u0001\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u0003\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0010\t\n\u0002\u0008\u0006\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0011\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0010\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0008\u0000\u0018\u0000*\u0004\u0008\u0000\u0010\u00012\u0008\u0012\u0004\u0012\u00028\u00000K2\u0008\u0012\u0004\u0012\u00028\u00000L:\u0001IB\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0019\u0010\t\u001a\u00020\u00082\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0017\u00a2\u0006\u0004\u0008\t\u0010\nJ\u001f\u0010\t\u001a\u00020\r2\u000e\u0010\u0007\u001a\n\u0018\u00010\u000bj\u0004\u0018\u0001`\u000cH\u0016\u00a2\u0006\u0004\u0008\t\u0010\u000eJ\u0019\u0010\u000f\u001a\u00020\u00082\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0002\u00a2\u0006\u0004\u0008\u000f\u0010\nJ\u000f\u0010\u0010\u001a\u00020\rH\u0002\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\u0019\u0010\u0012\u001a\u00020\u00082\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0016\u00a2\u0006\u0004\u0008\u0012\u0010\nJ\u000f\u0010\u0014\u001a\u00020\u0013H\u0002\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J\u0017\u0010\u0017\u001a\u00028\u00002\u0006\u0010\u0016\u001a\u00020\u0013H\u0002\u00a2\u0006\u0004\u0008\u0017\u0010\u0018J\u0017\u0010\u001b\u001a\u00020\u001a2\u0006\u0010\u0019\u001a\u00028\u0000H\u0014\u00a2\u0006\u0004\u0008\u001b\u0010\u001cJ#\u0010\u001f\u001a\u00020\u001a2\u0006\u0010\u0019\u001a\u00028\u00002\n\u0010\u001e\u001a\u0006\u0012\u0002\u0008\u00030\u001dH\u0014\u00a2\u0006\u0004\u0008\u001f\u0010 J\u0015\u0010\"\u001a\u0008\u0012\u0004\u0012\u00028\u00000!H\u0016\u00a2\u0006\u0004\u0008\"\u0010#J4\u0010\'\u001a\u00020\r2\u0010\u0008\u0002\u0010%\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010$2\u0010\u0008\u0002\u0010&\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010$H\u0082\u0010\u00a2\u0006\u0004\u0008\'\u0010(R\u001e\u0010*\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u001a0)8\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008*\u0010+R\u0016\u0010/\u001a\u00020,8T@\u0014X\u0094\u0004\u00a2\u0006\u0006\u001a\u0004\u0008-\u0010.R\u001a\u00102\u001a\u000600j\u0002`18\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u00082\u00103R\u0019\u0010\u0003\u001a\u00020\u00028\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0003\u00104\u001a\u0004\u00085\u00106R$\u0010;\u001a\u00020\u00132\u0006\u00107\u001a\u00020\u00138B@BX\u0082\u000e\u00a2\u0006\u000c\u001a\u0004\u00088\u0010\u0015\"\u0004\u00089\u0010:R\u0016\u0010<\u001a\u00020\u00088T@\u0014X\u0094\u0004\u00a2\u0006\u0006\u001a\u0004\u0008<\u0010=R\u0016\u0010>\u001a\u00020\u00088T@\u0014X\u0094\u0004\u00a2\u0006\u0006\u001a\u0004\u0008>\u0010=R$\u0010A\u001a\u00020\u00022\u0006\u00107\u001a\u00020\u00028B@BX\u0082\u000e\u00a2\u0006\u000c\u001a\u0004\u0008?\u00106\"\u0004\u0008@\u0010\u0005R2\u0010D\u001a\u001e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00000$0Bj\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00000$`C8\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008D\u0010ER$\u0010H\u001a\u00020\u00132\u0006\u00107\u001a\u00020\u00138B@BX\u0082\u000e\u00a2\u0006\u000c\u001a\u0004\u0008F\u0010\u0015\"\u0004\u0008G\u0010:\u00a8\u0006J"
    }
    d2 = {
        "Lkotlinx/coroutines/channels/ArrayBroadcastChannel;",
        "E",
        "",
        "capacity",
        "<init>",
        "(I)V",
        "",
        "cause",
        "",
        "cancel",
        "(Ljava/lang/Throwable;)Z",
        "Ljava/util/concurrent/CancellationException;",
        "Lkotlinx/coroutines/CancellationException;",
        "",
        "(Ljava/util/concurrent/CancellationException;)V",
        "cancelInternal",
        "checkSubOffers",
        "()V",
        "close",
        "",
        "computeMinHead",
        "()J",
        "index",
        "elementAt",
        "(J)Ljava/lang/Object;",
        "element",
        "",
        "offerInternal",
        "(Ljava/lang/Object;)Ljava/lang/Object;",
        "Lkotlinx/coroutines/selects/SelectInstance;",
        "select",
        "offerSelectInternal",
        "(Ljava/lang/Object;Lkotlinx/coroutines/selects/SelectInstance;)Ljava/lang/Object;",
        "Lkotlinx/coroutines/channels/ReceiveChannel;",
        "openSubscription",
        "()Lkotlinx/coroutines/channels/ReceiveChannel;",
        "Lkotlinx/coroutines/channels/ArrayBroadcastChannel$Subscriber;",
        "addSub",
        "removeSub",
        "updateHead",
        "(Lkotlinx/coroutines/channels/ArrayBroadcastChannel$Subscriber;Lkotlinx/coroutines/channels/ArrayBroadcastChannel$Subscriber;)V",
        "",
        "buffer",
        "[Ljava/lang/Object;",
        "",
        "getBufferDebugString",
        "()Ljava/lang/String;",
        "bufferDebugString",
        "Ljava/util/concurrent/locks/ReentrantLock;",
        "Lkotlinx/coroutines/internal/ReentrantLock;",
        "bufferLock",
        "Ljava/util/concurrent/locks/ReentrantLock;",
        "I",
        "getCapacity",
        "()I",
        "value",
        "getHead",
        "setHead",
        "(J)V",
        "head",
        "isBufferAlwaysFull",
        "()Z",
        "isBufferFull",
        "getSize",
        "setSize",
        "size",
        "",
        "Lkotlinx/coroutines/internal/SubscribersList;",
        "subscribers",
        "Ljava/util/List;",
        "getTail",
        "setTail",
        "tail",
        "Subscriber",
        "kotlinx-coroutines-core",
        "Lkotlinx/coroutines/channels/AbstractSendChannel;",
        "Lkotlinx/coroutines/channels/BroadcastChannel;"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x0
    }
.end annotation


# instance fields
.field private volatile _head:J

.field private volatile _size:I

.field private volatile _tail:J

.field private final buffer:[Ljava/lang/Object;

.field private final bufferLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private final capacity:I

.field private final subscribers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lkotlinx/coroutines/channels/ArrayBroadcastChannel$Subscriber<",
            "TE;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(I)V
    .locals 3
    .param p1, "capacity"    # I

    .line 26
    nop

    .line 31
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlinx/coroutines/channels/AbstractSendChannel;-><init>(Lkotlin/jvm/functions/Function1;)V

    iput p1, p0, Lkotlinx/coroutines/channels/ArrayBroadcastChannel;->capacity:I

    .line 32
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

    .line 42
    new-instance v1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v1, p0, Lkotlinx/coroutines/channels/ArrayBroadcastChannel;->bufferLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 43
    iget v1, p0, Lkotlinx/coroutines/channels/ArrayBroadcastChannel;->capacity:I

    new-array v1, v1, [Ljava/lang/Object;

    iput-object v1, p0, Lkotlinx/coroutines/channels/ArrayBroadcastChannel;->buffer:[Ljava/lang/Object;

    .line 48
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lkotlinx/coroutines/channels/ArrayBroadcastChannel;->_head:J

    .line 53
    iput-wide v1, p0, Lkotlinx/coroutines/channels/ArrayBroadcastChannel;->_tail:J

    .line 58
    iput v0, p0, Lkotlinx/coroutines/channels/ArrayBroadcastChannel;->_size:I

    .line 63
    invoke-static {}, Lkotlinx/coroutines/internal/ConcurrentKt;->subscriberList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lkotlinx/coroutines/channels/ArrayBroadcastChannel;->subscribers:Ljava/util/List;

    return-void

    .line 381
    :cond_1
    const/4 v0, 0x0

    .line 33
    .local v0, "$i$a$-require-ArrayBroadcastChannel$1":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ArrayBroadcastChannel capacity must be at least 1, but "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lkotlinx/coroutines/channels/ArrayBroadcastChannel;->capacity:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " was specified"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .end local v0    # "$i$a$-require-ArrayBroadcastChannel$1":I
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    throw v1
.end method

.method public static final synthetic access$elementAt(Lkotlinx/coroutines/channels/ArrayBroadcastChannel;J)Ljava/lang/Object;
    .locals 1
    .param p0, "$this"    # Lkotlinx/coroutines/channels/ArrayBroadcastChannel;
    .param p1, "index"    # J

    .line 26
    invoke-direct {p0, p1, p2}, Lkotlinx/coroutines/channels/ArrayBroadcastChannel;->elementAt(J)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$getTail$p(Lkotlinx/coroutines/channels/ArrayBroadcastChannel;)J
    .locals 2
    .param p0, "$this"    # Lkotlinx/coroutines/channels/ArrayBroadcastChannel;

    .line 26
    invoke-direct {p0}, Lkotlinx/coroutines/channels/ArrayBroadcastChannel;->getTail()J

    move-result-wide v0

    return-wide v0
.end method

.method public static final synthetic access$setTail$p(Lkotlinx/coroutines/channels/ArrayBroadcastChannel;J)V
    .locals 0
    .param p0, "$this"    # Lkotlinx/coroutines/channels/ArrayBroadcastChannel;
    .param p1, "<set-?>"    # J

    .line 26
    invoke-direct {p0, p1, p2}, Lkotlinx/coroutines/channels/ArrayBroadcastChannel;->setTail(J)V

    return-void
.end method

.method private final cancelInternal(Ljava/lang/Throwable;)Z
    .locals 5
    .param p1, "cause"    # Ljava/lang/Throwable;

    .line 88
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/channels/ArrayBroadcastChannel;->close(Ljava/lang/Throwable;)Z

    move-result v0

    move v1, v0

    .local v1, "it":Z
    const/4 v2, 0x0

    .line 89
    .local v2, "$i$a$-also-ArrayBroadcastChannel$cancelInternal$1":I
    iget-object v3, p0, Lkotlinx/coroutines/channels/ArrayBroadcastChannel;->subscribers:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lkotlinx/coroutines/channels/ArrayBroadcastChannel$Subscriber;

    .local v4, "sub":Lkotlinx/coroutines/channels/ArrayBroadcastChannel$Subscriber;
    invoke-virtual {v4, p1}, Lkotlinx/coroutines/channels/ArrayBroadcastChannel$Subscriber;->cancelInternal$kotlinx_coroutines_core(Ljava/lang/Throwable;)Z

    goto :goto_0

    .line 90
    .end local v4    # "sub":Lkotlinx/coroutines/channels/ArrayBroadcastChannel$Subscriber;
    :cond_0
    nop

    .line 88
    .end local v1    # "it":Z
    .end local v2    # "$i$a$-also-ArrayBroadcastChannel$cancelInternal$1":I
    nop

    .line 90
    return v0
.end method

.method private final checkSubOffers()V
    .locals 5

    .line 131
    const/4 v0, 0x0

    .line 132
    .local v0, "updated":Z
    const/4 v1, 0x0

    .line 133
    .local v1, "hasSubs":Z
    nop

    .line 134
    iget-object v2, p0, Lkotlinx/coroutines/channels/ArrayBroadcastChannel;->subscribers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkotlinx/coroutines/channels/ArrayBroadcastChannel$Subscriber;

    .line 135
    .local v3, "sub":Lkotlinx/coroutines/channels/ArrayBroadcastChannel$Subscriber;
    const/4 v1, 0x1

    .line 136
    invoke-virtual {v3}, Lkotlinx/coroutines/channels/ArrayBroadcastChannel$Subscriber;->checkOffer()Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    .line 134
    .end local v3    # "sub":Lkotlinx/coroutines/channels/ArrayBroadcastChannel$Subscriber;
    :cond_0
    goto :goto_0

    .line 138
    :cond_1
    if-nez v0, :cond_2

    if-nez v1, :cond_3

    .line 139
    :cond_2
    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-static {p0, v3, v3, v2, v3}, Lkotlinx/coroutines/channels/ArrayBroadcastChannel;->updateHead$default(Lkotlinx/coroutines/channels/ArrayBroadcastChannel;Lkotlinx/coroutines/channels/ArrayBroadcastChannel$Subscriber;Lkotlinx/coroutines/channels/ArrayBroadcastChannel$Subscriber;ILjava/lang/Object;)V

    .line 140
    :cond_3
    return-void
.end method

.method private final computeMinHead()J
    .locals 6

    .line 199
    const-wide v0, 0x7fffffffffffffffL

    .line 200
    .local v0, "minHead":J
    iget-object v2, p0, Lkotlinx/coroutines/channels/ArrayBroadcastChannel;->subscribers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkotlinx/coroutines/channels/ArrayBroadcastChannel$Subscriber;

    .line 201
    .local v3, "sub":Lkotlinx/coroutines/channels/ArrayBroadcastChannel$Subscriber;
    invoke-virtual {v3}, Lkotlinx/coroutines/channels/ArrayBroadcastChannel$Subscriber;->getSubHead()J

    move-result-wide v4

    invoke-static {v0, v1, v4, v5}, Lkotlin/ranges/RangesKt;->coerceAtMost(JJ)J

    move-result-wide v0

    .line 200
    .end local v3    # "sub":Lkotlinx/coroutines/channels/ArrayBroadcastChannel$Subscriber;
    goto :goto_0

    .line 202
    :cond_0
    return-wide v0
.end method

.method private final elementAt(J)Ljava/lang/Object;
    .locals 3
    .param p1, "index"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TE;"
        }
    .end annotation

    .line 206
    iget-object v0, p0, Lkotlinx/coroutines/channels/ArrayBroadcastChannel;->buffer:[Ljava/lang/Object;

    iget v1, p0, Lkotlinx/coroutines/channels/ArrayBroadcastChannel;->capacity:I

    int-to-long v1, v1

    rem-long v1, p1, v1

    long-to-int v1, v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method private final getHead()J
    .locals 2

    .line 50
    iget-wide v0, p0, Lkotlinx/coroutines/channels/ArrayBroadcastChannel;->_head:J

    return-wide v0
.end method

.method private final getSize()I
    .locals 1

    .line 60
    iget v0, p0, Lkotlinx/coroutines/channels/ArrayBroadcastChannel;->_size:I

    return v0
.end method

.method private final getTail()J
    .locals 2

    .line 55
    iget-wide v0, p0, Lkotlinx/coroutines/channels/ArrayBroadcastChannel;->_tail:J

    return-wide v0
.end method

.method private final setHead(J)V
    .locals 0
    .param p1, "value"    # J

    .line 51
    iput-wide p1, p0, Lkotlinx/coroutines/channels/ArrayBroadcastChannel;->_head:J

    return-void
.end method

.method private final setSize(I)V
    .locals 0
    .param p1, "value"    # I

    .line 61
    iput p1, p0, Lkotlinx/coroutines/channels/ArrayBroadcastChannel;->_size:I

    return-void
.end method

.method private final setTail(J)V
    .locals 0
    .param p1, "value"    # J

    .line 56
    iput-wide p1, p0, Lkotlinx/coroutines/channels/ArrayBroadcastChannel;->_tail:J

    return-void
.end method

.method private final updateHead(Lkotlinx/coroutines/channels/ArrayBroadcastChannel$Subscriber;Lkotlinx/coroutines/channels/ArrayBroadcastChannel$Subscriber;)V
    .locals 25
    .param p1, "addSub"    # Lkotlinx/coroutines/channels/ArrayBroadcastChannel$Subscriber;
    .param p2, "removeSub"    # Lkotlinx/coroutines/channels/ArrayBroadcastChannel$Subscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/channels/ArrayBroadcastChannel$Subscriber<",
            "TE;>;",
            "Lkotlinx/coroutines/channels/ArrayBroadcastChannel$Subscriber<",
            "TE;>;)V"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    .line 145
    .end local p1    # "addSub":Lkotlinx/coroutines/channels/ArrayBroadcastChannel$Subscriber;
    .end local p2    # "removeSub":Lkotlinx/coroutines/channels/ArrayBroadcastChannel$Subscriber;
    .local v2, "addSub":Lkotlinx/coroutines/channels/ArrayBroadcastChannel$Subscriber;
    .local v3, "removeSub":Lkotlinx/coroutines/channels/ArrayBroadcastChannel$Subscriber;
    :goto_0
    const/4 v0, 0x0

    move-object v4, v0

    check-cast v4, Lkotlinx/coroutines/channels/Send;

    .line 146
    .local v4, "send":Ljava/lang/Object;
    iget-object v5, v1, Lkotlinx/coroutines/channels/ArrayBroadcastChannel;->bufferLock:Ljava/util/concurrent/locks/ReentrantLock;

    .local v5, "$this$withLock$iv":Ljava/util/concurrent/locks/ReentrantLock;
    const/4 v6, 0x0

    .line 383
    .local v6, "$i$f$withLock":I
    move-object v7, v5

    check-cast v7, Ljava/util/concurrent/locks/Lock;

    invoke-interface {v7}, Ljava/util/concurrent/locks/Lock;->lock()V

    const/4 v8, 0x0

    .line 147
    .local v8, "$i$a$-withLock-ArrayBroadcastChannel$updateHead$1":I
    if-eqz v2, :cond_0

    .line 148
    :try_start_0
    invoke-direct/range {p0 .. p0}, Lkotlinx/coroutines/channels/ArrayBroadcastChannel;->getTail()J

    move-result-wide v9

    invoke-virtual {v2, v9, v10}, Lkotlinx/coroutines/channels/ArrayBroadcastChannel$Subscriber;->setSubHead(J)V

    .line 149
    iget-object v9, v1, Lkotlinx/coroutines/channels/ArrayBroadcastChannel;->subscribers:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v9

    .line 150
    .local v9, "wasEmpty":Z
    iget-object v10, v1, Lkotlinx/coroutines/channels/ArrayBroadcastChannel;->subscribers:Ljava/util/List;

    invoke-interface {v10, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 151
    if-nez v9, :cond_0

    .end local v5    # "$this$withLock$iv":Ljava/util/concurrent/locks/ReentrantLock;
    .end local v6    # "$i$f$withLock":I
    .end local v8    # "$i$a$-withLock-ArrayBroadcastChannel$updateHead$1":I
    .end local v9    # "wasEmpty":Z
    invoke-interface {v7}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    .line 188
    .restart local v5    # "$this$withLock$iv":Ljava/util/concurrent/locks/ReentrantLock;
    .restart local v6    # "$i$f$withLock":I
    :catchall_0
    move-exception v0

    move-object/from16 p2, v2

    move-object/from16 v17, v3

    move-object/from16 v23, v5

    move/from16 v24, v6

    goto/16 :goto_7

    .line 153
    .restart local v8    # "$i$a$-withLock-ArrayBroadcastChannel$updateHead$1":I
    :cond_0
    if-eqz v3, :cond_1

    .line 154
    :try_start_1
    iget-object v9, v1, Lkotlinx/coroutines/channels/ArrayBroadcastChannel;->subscribers:Ljava/util/List;

    invoke-interface {v9, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 155
    invoke-direct/range {p0 .. p0}, Lkotlinx/coroutines/channels/ArrayBroadcastChannel;->getHead()J

    move-result-wide v9

    invoke-virtual {v3}, Lkotlinx/coroutines/channels/ArrayBroadcastChannel$Subscriber;->getSubHead()J

    move-result-wide v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    cmp-long v9, v9, v11

    if-eqz v9, :cond_1

    .end local v5    # "$this$withLock$iv":Ljava/util/concurrent/locks/ReentrantLock;
    .end local v6    # "$i$f$withLock":I
    .end local v8    # "$i$a$-withLock-ArrayBroadcastChannel$updateHead$1":I
    invoke-interface {v7}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    .line 157
    .restart local v5    # "$this$withLock$iv":Ljava/util/concurrent/locks/ReentrantLock;
    .restart local v6    # "$i$f$withLock":I
    .restart local v8    # "$i$a$-withLock-ArrayBroadcastChannel$updateHead$1":I
    :cond_1
    :try_start_2
    invoke-direct/range {p0 .. p0}, Lkotlinx/coroutines/channels/ArrayBroadcastChannel;->computeMinHead()J

    move-result-wide v9

    .line 158
    .local v9, "minHead":J
    invoke-direct/range {p0 .. p0}, Lkotlinx/coroutines/channels/ArrayBroadcastChannel;->getTail()J

    move-result-wide v11

    .line 159
    .local v11, "tail":J
    invoke-direct/range {p0 .. p0}, Lkotlinx/coroutines/channels/ArrayBroadcastChannel;->getHead()J

    move-result-wide v13

    .line 160
    .local v13, "head":J
    invoke-static {v9, v10, v11, v12}, Lkotlin/ranges/RangesKt;->coerceAtMost(JJ)J

    move-result-wide v15
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_5

    .line 161
    .local v15, "targetHead":J
    cmp-long v17, v15, v13

    if-gtz v17, :cond_2

    .end local v5    # "$this$withLock$iv":Ljava/util/concurrent/locks/ReentrantLock;
    .end local v6    # "$i$f$withLock":I
    .end local v8    # "$i$a$-withLock-ArrayBroadcastChannel$updateHead$1":I
    .end local v9    # "minHead":J
    .end local v11    # "tail":J
    .end local v13    # "head":J
    .end local v15    # "targetHead":J
    invoke-interface {v7}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    .line 162
    .restart local v5    # "$this$withLock$iv":Ljava/util/concurrent/locks/ReentrantLock;
    .restart local v6    # "$i$f$withLock":I
    .restart local v8    # "$i$a$-withLock-ArrayBroadcastChannel$updateHead$1":I
    .restart local v9    # "minHead":J
    .restart local v11    # "tail":J
    .restart local v13    # "head":J
    .restart local v15    # "targetHead":J
    :cond_2
    :try_start_3
    invoke-direct/range {p0 .. p0}, Lkotlinx/coroutines/channels/ArrayBroadcastChannel;->getSize()I

    move-result v17

    move/from16 v18, v17

    .line 164
    .local v18, "size":I
    :goto_1
    cmp-long v17, v13, v15

    if-gez v17, :cond_c

    .line 165
    iget-object v0, v1, Lkotlinx/coroutines/channels/ArrayBroadcastChannel;->buffer:[Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_5

    move-object/from16 p2, v2

    .end local v2    # "addSub":Lkotlinx/coroutines/channels/ArrayBroadcastChannel$Subscriber;
    .local p2, "addSub":Lkotlinx/coroutines/channels/ArrayBroadcastChannel$Subscriber;
    :try_start_4
    iget v2, v1, Lkotlinx/coroutines/channels/ArrayBroadcastChannel;->capacity:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    move-object/from16 v17, v3

    .end local v3    # "removeSub":Lkotlinx/coroutines/channels/ArrayBroadcastChannel$Subscriber;
    .local v17, "removeSub":Lkotlinx/coroutines/channels/ArrayBroadcastChannel$Subscriber;
    int-to-long v2, v2

    :try_start_5
    rem-long v2, v13, v2

    long-to-int v2, v2

    const/4 v3, 0x0

    aput-object v3, v0, v2

    .line 166
    iget v0, v1, Lkotlinx/coroutines/channels/ArrayBroadcastChannel;->capacity:I

    move/from16 v2, v18

    .end local v18    # "size":I
    .local v2, "size":I
    if-lt v2, v0, :cond_3

    const/4 v0, 0x1

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    .line 168
    .local v0, "wasFull":Z
    :goto_2
    const-wide/16 v19, 0x1

    add-long v13, v13, v19

    invoke-direct {v1, v13, v14}, Lkotlinx/coroutines/channels/ArrayBroadcastChannel;->setHead(J)V

    .line 169
    add-int/lit8 v2, v2, -0x1

    invoke-direct {v1, v2}, Lkotlinx/coroutines/channels/ArrayBroadcastChannel;->setSize(I)V

    .line 170
    if-eqz v0, :cond_b

    .line 171
    :goto_3
    nop

    .line 172
    invoke-virtual/range {p0 .. p0}, Lkotlinx/coroutines/channels/ArrayBroadcastChannel;->takeFirstSendOrPeekClosed()Lkotlinx/coroutines/channels/Send;

    move-result-object v18

    if-eqz v18, :cond_a

    move-object/from16 v4, v18

    .line 173
    instance-of v3, v4, Lkotlinx/coroutines/channels/Closed;

    if-eqz v3, :cond_4

    move-object/from16 v23, v5

    move/from16 v24, v6

    goto/16 :goto_6

    .line 174
    :cond_4
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v3, 0x0

    invoke-virtual {v4, v3}, Lkotlinx/coroutines/channels/Send;->tryResumeSend(Lkotlinx/coroutines/internal/LockFreeLinkedListNode$PrepareOp;)Lkotlinx/coroutines/internal/Symbol;

    move-result-object v21

    move-object/from16 p1, v21

    .line 175
    .local p1, "token":Lkotlinx/coroutines/internal/Symbol;
    move-object/from16 v3, p1

    .end local p1    # "token":Lkotlinx/coroutines/internal/Symbol;
    .local v3, "token":Lkotlinx/coroutines/internal/Symbol;
    if-eqz v3, :cond_9

    .line 176
    invoke-static {}, Lkotlinx/coroutines/DebugKt;->getASSERTIONS_ENABLED()Z

    move-result v21
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    if-eqz v21, :cond_7

    .line 381
    const/16 v21, 0x0

    .line 176
    .local v21, "$i$a$-assert-ArrayBroadcastChannel$updateHead$1$1":I
    move/from16 p1, v0

    .end local v0    # "wasFull":Z
    .local p1, "wasFull":Z
    :try_start_6
    sget-object v0, Lkotlinx/coroutines/CancellableContinuationImplKt;->RESUME_TOKEN:Lkotlinx/coroutines/internal/Symbol;

    if-ne v3, v0, :cond_5

    const/16 v18, 0x1

    goto :goto_4

    :cond_5
    const/16 v18, 0x0

    .end local v21    # "$i$a$-assert-ArrayBroadcastChannel$updateHead$1$1":I
    :goto_4
    if-eqz v18, :cond_6

    goto :goto_5

    :cond_6
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    check-cast v0, Ljava/lang/Throwable;

    .end local v4    # "send":Ljava/lang/Object;
    .end local v5    # "$this$withLock$iv":Ljava/util/concurrent/locks/ReentrantLock;
    .end local v6    # "$i$f$withLock":I
    .end local v17    # "removeSub":Lkotlinx/coroutines/channels/ArrayBroadcastChannel$Subscriber;
    .end local p2    # "addSub":Lkotlinx/coroutines/channels/ArrayBroadcastChannel$Subscriber;
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 188
    .end local v2    # "size":I
    .end local v3    # "token":Lkotlinx/coroutines/internal/Symbol;
    .end local v8    # "$i$a$-withLock-ArrayBroadcastChannel$updateHead$1":I
    .end local v9    # "minHead":J
    .end local v11    # "tail":J
    .end local v13    # "head":J
    .end local v15    # "targetHead":J
    .end local p1    # "wasFull":Z
    .restart local v4    # "send":Ljava/lang/Object;
    .restart local v5    # "$this$withLock$iv":Ljava/util/concurrent/locks/ReentrantLock;
    .restart local v6    # "$i$f$withLock":I
    .restart local v17    # "removeSub":Lkotlinx/coroutines/channels/ArrayBroadcastChannel$Subscriber;
    .restart local p2    # "addSub":Lkotlinx/coroutines/channels/ArrayBroadcastChannel$Subscriber;
    :catchall_1
    move-exception v0

    move-object/from16 v23, v5

    move/from16 v24, v6

    goto/16 :goto_7

    .line 176
    .restart local v0    # "wasFull":Z
    .restart local v2    # "size":I
    .restart local v3    # "token":Lkotlinx/coroutines/internal/Symbol;
    .restart local v8    # "$i$a$-withLock-ArrayBroadcastChannel$updateHead$1":I
    .restart local v9    # "minHead":J
    .restart local v11    # "tail":J
    .restart local v13    # "head":J
    .restart local v15    # "targetHead":J
    :cond_7
    move/from16 p1, v0

    .line 178
    .end local v0    # "wasFull":Z
    .restart local p1    # "wasFull":Z
    :goto_5
    :try_start_7
    iget-object v0, v1, Lkotlinx/coroutines/channels/ArrayBroadcastChannel;->buffer:[Ljava/lang/Object;

    move-object/from16 v22, v3

    .end local v3    # "token":Lkotlinx/coroutines/internal/Symbol;
    .local v22, "token":Lkotlinx/coroutines/internal/Symbol;
    iget v3, v1, Lkotlinx/coroutines/channels/ArrayBroadcastChannel;->capacity:I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    move-object/from16 v23, v5

    move/from16 v24, v6

    .end local v5    # "$this$withLock$iv":Ljava/util/concurrent/locks/ReentrantLock;
    .end local v6    # "$i$f$withLock":I
    .local v23, "$this$withLock$iv":Ljava/util/concurrent/locks/ReentrantLock;
    .local v24, "$i$f$withLock":I
    int-to-long v5, v3

    :try_start_8
    rem-long v5, v11, v5

    long-to-int v3, v5

    if-eqz v4, :cond_8

    invoke-virtual {v4}, Lkotlinx/coroutines/channels/Send;->getPollResult()Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v0, v3

    .line 179
    add-int/lit8 v0, v2, 0x1

    invoke-direct {v1, v0}, Lkotlinx/coroutines/channels/ArrayBroadcastChannel;->setSize(I)V

    .line 180
    add-long v5, v11, v19

    invoke-direct {v1, v5, v6}, Lkotlinx/coroutines/channels/ArrayBroadcastChannel;->setTail(J)V

    .line 181
    nop

    .line 188
    .end local v2    # "size":I
    .end local v8    # "$i$a$-withLock-ArrayBroadcastChannel$updateHead$1":I
    .end local v9    # "minHead":J
    .end local v11    # "tail":J
    .end local v13    # "head":J
    .end local v15    # "targetHead":J
    .end local v22    # "token":Lkotlinx/coroutines/internal/Symbol;
    .end local p1    # "wasFull":Z
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    invoke-interface {v7}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 383
    nop

    .line 191
    .end local v23    # "$this$withLock$iv":Ljava/util/concurrent/locks/ReentrantLock;
    .end local v24    # "$i$f$withLock":I
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v4}, Lkotlinx/coroutines/channels/Send;->completeResumeSend()V

    .line 193
    invoke-direct/range {p0 .. p0}, Lkotlinx/coroutines/channels/ArrayBroadcastChannel;->checkSubOffers()V

    .line 195
    nop

    .line 143
    const/4 v2, 0x0

    .end local p2    # "addSub":Lkotlinx/coroutines/channels/ArrayBroadcastChannel$Subscriber;
    .local v2, "addSub":Lkotlinx/coroutines/channels/ArrayBroadcastChannel$Subscriber;
    const/4 v3, 0x0

    .end local v17    # "removeSub":Lkotlinx/coroutines/channels/ArrayBroadcastChannel$Subscriber;
    .local v3, "removeSub":Lkotlinx/coroutines/channels/ArrayBroadcastChannel$Subscriber;
    goto/16 :goto_0

    .line 178
    .end local v3    # "removeSub":Lkotlinx/coroutines/channels/ArrayBroadcastChannel$Subscriber;
    .local v2, "size":I
    .restart local v8    # "$i$a$-withLock-ArrayBroadcastChannel$updateHead$1":I
    .restart local v9    # "minHead":J
    .restart local v11    # "tail":J
    .restart local v13    # "head":J
    .restart local v15    # "targetHead":J
    .restart local v17    # "removeSub":Lkotlinx/coroutines/channels/ArrayBroadcastChannel$Subscriber;
    .restart local v22    # "token":Lkotlinx/coroutines/internal/Symbol;
    .restart local v23    # "$this$withLock$iv":Ljava/util/concurrent/locks/ReentrantLock;
    .restart local v24    # "$i$f$withLock":I
    .restart local p1    # "wasFull":Z
    .restart local p2    # "addSub":Lkotlinx/coroutines/channels/ArrayBroadcastChannel$Subscriber;
    :cond_8
    :try_start_9
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v3, "null cannot be cast to non-null type kotlinx.coroutines.channels.Send"

    invoke-direct {v0, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .end local v4    # "send":Ljava/lang/Object;
    .end local v17    # "removeSub":Lkotlinx/coroutines/channels/ArrayBroadcastChannel$Subscriber;
    .end local v23    # "$this$withLock$iv":Ljava/util/concurrent/locks/ReentrantLock;
    .end local v24    # "$i$f$withLock":I
    .end local p2    # "addSub":Lkotlinx/coroutines/channels/ArrayBroadcastChannel$Subscriber;
    throw v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 188
    .end local v2    # "size":I
    .end local v8    # "$i$a$-withLock-ArrayBroadcastChannel$updateHead$1":I
    .end local v9    # "minHead":J
    .end local v11    # "tail":J
    .end local v13    # "head":J
    .end local v15    # "targetHead":J
    .end local v22    # "token":Lkotlinx/coroutines/internal/Symbol;
    .end local p1    # "wasFull":Z
    .restart local v4    # "send":Ljava/lang/Object;
    .restart local v17    # "removeSub":Lkotlinx/coroutines/channels/ArrayBroadcastChannel$Subscriber;
    .restart local v23    # "$this$withLock$iv":Ljava/util/concurrent/locks/ReentrantLock;
    .restart local v24    # "$i$f$withLock":I
    .restart local p2    # "addSub":Lkotlinx/coroutines/channels/ArrayBroadcastChannel$Subscriber;
    :catchall_2
    move-exception v0

    goto :goto_7

    .line 175
    .end local v23    # "$this$withLock$iv":Ljava/util/concurrent/locks/ReentrantLock;
    .end local v24    # "$i$f$withLock":I
    .restart local v0    # "wasFull":Z
    .restart local v2    # "size":I
    .local v3, "token":Lkotlinx/coroutines/internal/Symbol;
    .restart local v5    # "$this$withLock$iv":Ljava/util/concurrent/locks/ReentrantLock;
    .restart local v6    # "$i$f$withLock":I
    .restart local v8    # "$i$a$-withLock-ArrayBroadcastChannel$updateHead$1":I
    .restart local v9    # "minHead":J
    .restart local v11    # "tail":J
    .restart local v13    # "head":J
    .restart local v15    # "targetHead":J
    :cond_9
    move/from16 p1, v0

    move-object/from16 v22, v3

    move-object/from16 v23, v5

    move/from16 v24, v6

    .line 171
    .end local v0    # "wasFull":Z
    .end local v3    # "token":Lkotlinx/coroutines/internal/Symbol;
    .end local v5    # "$this$withLock$iv":Ljava/util/concurrent/locks/ReentrantLock;
    .end local v6    # "$i$f$withLock":I
    .restart local v23    # "$this$withLock$iv":Ljava/util/concurrent/locks/ReentrantLock;
    .restart local v24    # "$i$f$withLock":I
    .restart local p1    # "wasFull":Z
    goto/16 :goto_3

    .line 172
    .end local v23    # "$this$withLock$iv":Ljava/util/concurrent/locks/ReentrantLock;
    .end local v24    # "$i$f$withLock":I
    .end local p1    # "wasFull":Z
    .restart local v0    # "wasFull":Z
    .restart local v5    # "$this$withLock$iv":Ljava/util/concurrent/locks/ReentrantLock;
    .restart local v6    # "$i$f$withLock":I
    :cond_a
    move/from16 p1, v0

    move-object/from16 v23, v5

    move/from16 v24, v6

    .end local v0    # "wasFull":Z
    .end local v5    # "$this$withLock$iv":Ljava/util/concurrent/locks/ReentrantLock;
    .end local v6    # "$i$f$withLock":I
    .restart local v23    # "$this$withLock$iv":Ljava/util/concurrent/locks/ReentrantLock;
    .restart local v24    # "$i$f$withLock":I
    .restart local p1    # "wasFull":Z
    goto :goto_6

    .line 170
    .end local v23    # "$this$withLock$iv":Ljava/util/concurrent/locks/ReentrantLock;
    .end local v24    # "$i$f$withLock":I
    .end local p1    # "wasFull":Z
    .restart local v0    # "wasFull":Z
    .restart local v5    # "$this$withLock$iv":Ljava/util/concurrent/locks/ReentrantLock;
    .restart local v6    # "$i$f$withLock":I
    :cond_b
    move/from16 p1, v0

    move-object/from16 v23, v5

    move/from16 v24, v6

    .line 164
    .end local v0    # "wasFull":Z
    .end local v5    # "$this$withLock$iv":Ljava/util/concurrent/locks/ReentrantLock;
    .end local v6    # "$i$f$withLock":I
    .restart local v23    # "$this$withLock$iv":Ljava/util/concurrent/locks/ReentrantLock;
    .restart local v24    # "$i$f$withLock":I
    :goto_6
    move/from16 v18, v2

    move-object/from16 v3, v17

    move-object/from16 v5, v23

    move/from16 v6, v24

    const/4 v0, 0x0

    move-object/from16 v2, p2

    goto/16 :goto_1

    .line 188
    .end local v2    # "size":I
    .end local v8    # "$i$a$-withLock-ArrayBroadcastChannel$updateHead$1":I
    .end local v9    # "minHead":J
    .end local v11    # "tail":J
    .end local v13    # "head":J
    .end local v15    # "targetHead":J
    .end local v23    # "$this$withLock$iv":Ljava/util/concurrent/locks/ReentrantLock;
    .end local v24    # "$i$f$withLock":I
    .restart local v5    # "$this$withLock$iv":Ljava/util/concurrent/locks/ReentrantLock;
    .restart local v6    # "$i$f$withLock":I
    :catchall_3
    move-exception v0

    move-object/from16 v23, v5

    move/from16 v24, v6

    .end local v5    # "$this$withLock$iv":Ljava/util/concurrent/locks/ReentrantLock;
    .end local v6    # "$i$f$withLock":I
    .restart local v23    # "$this$withLock$iv":Ljava/util/concurrent/locks/ReentrantLock;
    .restart local v24    # "$i$f$withLock":I
    goto :goto_7

    .end local v17    # "removeSub":Lkotlinx/coroutines/channels/ArrayBroadcastChannel$Subscriber;
    .end local v23    # "$this$withLock$iv":Ljava/util/concurrent/locks/ReentrantLock;
    .end local v24    # "$i$f$withLock":I
    .local v3, "removeSub":Lkotlinx/coroutines/channels/ArrayBroadcastChannel$Subscriber;
    .restart local v5    # "$this$withLock$iv":Ljava/util/concurrent/locks/ReentrantLock;
    .restart local v6    # "$i$f$withLock":I
    :catchall_4
    move-exception v0

    move-object/from16 v17, v3

    move-object/from16 v23, v5

    move/from16 v24, v6

    .end local v3    # "removeSub":Lkotlinx/coroutines/channels/ArrayBroadcastChannel$Subscriber;
    .end local v5    # "$this$withLock$iv":Ljava/util/concurrent/locks/ReentrantLock;
    .end local v6    # "$i$f$withLock":I
    .restart local v17    # "removeSub":Lkotlinx/coroutines/channels/ArrayBroadcastChannel$Subscriber;
    .restart local v23    # "$this$withLock$iv":Ljava/util/concurrent/locks/ReentrantLock;
    .restart local v24    # "$i$f$withLock":I
    goto :goto_7

    .end local v17    # "removeSub":Lkotlinx/coroutines/channels/ArrayBroadcastChannel$Subscriber;
    .end local v23    # "$this$withLock$iv":Ljava/util/concurrent/locks/ReentrantLock;
    .end local v24    # "$i$f$withLock":I
    .end local p2    # "addSub":Lkotlinx/coroutines/channels/ArrayBroadcastChannel$Subscriber;
    .local v2, "addSub":Lkotlinx/coroutines/channels/ArrayBroadcastChannel$Subscriber;
    .restart local v3    # "removeSub":Lkotlinx/coroutines/channels/ArrayBroadcastChannel$Subscriber;
    :cond_c
    invoke-interface {v7}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    .restart local v5    # "$this$withLock$iv":Ljava/util/concurrent/locks/ReentrantLock;
    .restart local v6    # "$i$f$withLock":I
    :catchall_5
    move-exception v0

    move-object/from16 p2, v2

    move-object/from16 v17, v3

    move-object/from16 v23, v5

    move/from16 v24, v6

    .end local v2    # "addSub":Lkotlinx/coroutines/channels/ArrayBroadcastChannel$Subscriber;
    .end local v3    # "removeSub":Lkotlinx/coroutines/channels/ArrayBroadcastChannel$Subscriber;
    .end local v5    # "$this$withLock$iv":Ljava/util/concurrent/locks/ReentrantLock;
    .end local v6    # "$i$f$withLock":I
    .restart local v17    # "removeSub":Lkotlinx/coroutines/channels/ArrayBroadcastChannel$Subscriber;
    .restart local v23    # "$this$withLock$iv":Ljava/util/concurrent/locks/ReentrantLock;
    .restart local v24    # "$i$f$withLock":I
    .restart local p2    # "addSub":Lkotlinx/coroutines/channels/ArrayBroadcastChannel$Subscriber;
    :goto_7
    invoke-interface {v7}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method static synthetic updateHead$default(Lkotlinx/coroutines/channels/ArrayBroadcastChannel;Lkotlinx/coroutines/channels/ArrayBroadcastChannel$Subscriber;Lkotlinx/coroutines/channels/ArrayBroadcastChannel$Subscriber;ILjava/lang/Object;)V
    .locals 1

    and-int/lit8 p4, p3, 0x1

    const/4 v0, 0x0

    if-eqz p4, :cond_0

    .line 143
    move-object p1, v0

    check-cast p1, Lkotlinx/coroutines/channels/ArrayBroadcastChannel$Subscriber;

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    move-object p2, v0

    check-cast p2, Lkotlinx/coroutines/channels/ArrayBroadcastChannel$Subscriber;

    :cond_1
    invoke-direct {p0, p1, p2}, Lkotlinx/coroutines/channels/ArrayBroadcastChannel;->updateHead(Lkotlinx/coroutines/channels/ArrayBroadcastChannel$Subscriber;Lkotlinx/coroutines/channels/ArrayBroadcastChannel$Subscriber;)V

    return-void
.end method


# virtual methods
.method public cancel(Ljava/util/concurrent/CancellationException;)V
    .locals 1
    .param p1, "cause"    # Ljava/util/concurrent/CancellationException;

    .line 84
    move-object v0, p1

    check-cast v0, Ljava/lang/Throwable;

    invoke-direct {p0, v0}, Lkotlinx/coroutines/channels/ArrayBroadcastChannel;->cancelInternal(Ljava/lang/Throwable;)Z

    .line 85
    return-void
.end method

.method public synthetic cancel(Ljava/lang/Throwable;)Z
    .locals 1
    .param p1, "cause"    # Ljava/lang/Throwable;
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->HIDDEN:Lkotlin/DeprecationLevel;
        message = "Since 1.2.0, binary compatibility with versions <= 1.1.x"
    .end annotation

    .line 81
    invoke-direct {p0, p1}, Lkotlinx/coroutines/channels/ArrayBroadcastChannel;->cancelInternal(Ljava/lang/Throwable;)Z

    move-result v0

    return v0
.end method

.method public close(Ljava/lang/Throwable;)Z
    .locals 1
    .param p1, "cause"    # Ljava/lang/Throwable;

    .line 74
    invoke-super {p0, p1}, Lkotlinx/coroutines/channels/AbstractSendChannel;->close(Ljava/lang/Throwable;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 75
    :cond_0
    invoke-direct {p0}, Lkotlinx/coroutines/channels/ArrayBroadcastChannel;->checkSubOffers()V

    .line 76
    const/4 v0, 0x1

    return v0
.end method

.method protected getBufferDebugString()Ljava/lang/String;
    .locals 2

    .line 377
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "(buffer:capacity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lkotlinx/coroutines/channels/ArrayBroadcastChannel;->buffer:[Ljava/lang/Object;

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lkotlinx/coroutines/channels/ArrayBroadcastChannel;->getSize()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getCapacity()I
    .locals 1

    .line 30
    iget v0, p0, Lkotlinx/coroutines/channels/ArrayBroadcastChannel;->capacity:I

    return v0
.end method

.method protected isBufferAlwaysFull()Z
    .locals 1

    .line 65
    const/4 v0, 0x0

    return v0
.end method

.method protected isBufferFull()Z
    .locals 2

    .line 66
    invoke-direct {p0}, Lkotlinx/coroutines/channels/ArrayBroadcastChannel;->getSize()I

    move-result v0

    iget v1, p0, Lkotlinx/coroutines/channels/ArrayBroadcastChannel;->capacity:I

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected offerInternal(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10
    .param p1, "element"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 94
    iget-object v0, p0, Lkotlinx/coroutines/channels/ArrayBroadcastChannel;->bufferLock:Ljava/util/concurrent/locks/ReentrantLock;

    .local v0, "$this$withLock$iv":Ljava/util/concurrent/locks/ReentrantLock;
    const/4 v1, 0x0

    .line 380
    .local v1, "$i$f$withLock":I
    move-object v2, v0

    check-cast v2, Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->lock()V

    const/4 v3, 0x0

    .line 96
    .local v3, "$i$a$-withLock-ArrayBroadcastChannel$offerInternal$1":I
    :try_start_0
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/ArrayBroadcastChannel;->getClosedForSend()Lkotlinx/coroutines/channels/Closed;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_0

    .line 381
    .local v4, "it":Lkotlinx/coroutines/channels/Closed;
    const/4 v5, 0x0

    .line 96
    .local v5, "$i$a$-let-ArrayBroadcastChannel$offerInternal$1$1":I
    nop

    .end local v0    # "$this$withLock$iv":Ljava/util/concurrent/locks/ReentrantLock;
    .end local v1    # "$i$f$withLock":I
    .end local v3    # "$i$a$-withLock-ArrayBroadcastChannel$offerInternal$1":I
    .end local v4    # "it":Lkotlinx/coroutines/channels/Closed;
    .end local v5    # "$i$a$-let-ArrayBroadcastChannel$offerInternal$1$1":I
    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v4

    .line 97
    .restart local v0    # "$this$withLock$iv":Ljava/util/concurrent/locks/ReentrantLock;
    .restart local v1    # "$i$f$withLock":I
    .restart local v3    # "$i$a$-withLock-ArrayBroadcastChannel$offerInternal$1":I
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lkotlinx/coroutines/channels/ArrayBroadcastChannel;->getSize()I

    move-result v4

    .line 98
    .local v4, "size":I
    iget v5, p0, Lkotlinx/coroutines/channels/ArrayBroadcastChannel;->capacity:I

    if-lt v4, v5, :cond_1

    sget-object v5, Lkotlinx/coroutines/channels/AbstractChannelKt;->OFFER_FAILED:Lkotlinx/coroutines/internal/Symbol;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v0    # "$this$withLock$iv":Ljava/util/concurrent/locks/ReentrantLock;
    .end local v1    # "$i$f$withLock":I
    .end local v3    # "$i$a$-withLock-ArrayBroadcastChannel$offerInternal$1":I
    .end local v4    # "size":I
    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v5

    .line 99
    .restart local v0    # "$this$withLock$iv":Ljava/util/concurrent/locks/ReentrantLock;
    .restart local v1    # "$i$f$withLock":I
    .restart local v3    # "$i$a$-withLock-ArrayBroadcastChannel$offerInternal$1":I
    .restart local v4    # "size":I
    :cond_1
    :try_start_2
    invoke-direct {p0}, Lkotlinx/coroutines/channels/ArrayBroadcastChannel;->getTail()J

    move-result-wide v5

    .line 100
    .local v5, "tail":J
    iget-object v7, p0, Lkotlinx/coroutines/channels/ArrayBroadcastChannel;->buffer:[Ljava/lang/Object;

    iget v8, p0, Lkotlinx/coroutines/channels/ArrayBroadcastChannel;->capacity:I

    int-to-long v8, v8

    rem-long v8, v5, v8

    long-to-int v8, v8

    aput-object p1, v7, v8

    .line 101
    add-int/lit8 v7, v4, 0x1

    invoke-direct {p0, v7}, Lkotlinx/coroutines/channels/ArrayBroadcastChannel;->setSize(I)V

    .line 102
    const-wide/16 v7, 0x1

    add-long/2addr v7, v5

    invoke-direct {p0, v7, v8}, Lkotlinx/coroutines/channels/ArrayBroadcastChannel;->setTail(J)V

    .line 103
    .end local v4    # "size":I
    .end local v5    # "tail":J
    nop

    .end local v3    # "$i$a$-withLock-ArrayBroadcastChannel$offerInternal$1":I
    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 380
    nop

    .line 105
    .end local v0    # "$this$withLock$iv":Ljava/util/concurrent/locks/ReentrantLock;
    .end local v1    # "$i$f$withLock":I
    invoke-direct {p0}, Lkotlinx/coroutines/channels/ArrayBroadcastChannel;->checkSubOffers()V

    .line 106
    sget-object v0, Lkotlinx/coroutines/channels/AbstractChannelKt;->OFFER_SUCCESS:Lkotlinx/coroutines/internal/Symbol;

    return-object v0

    .line 103
    .restart local v0    # "$this$withLock$iv":Ljava/util/concurrent/locks/ReentrantLock;
    .restart local v1    # "$i$f$withLock":I
    :catchall_0
    move-exception v3

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v3
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

    .line 111
    iget-object v0, p0, Lkotlinx/coroutines/channels/ArrayBroadcastChannel;->bufferLock:Ljava/util/concurrent/locks/ReentrantLock;

    .local v0, "$this$withLock$iv":Ljava/util/concurrent/locks/ReentrantLock;
    const/4 v1, 0x0

    .line 382
    .local v1, "$i$f$withLock":I
    move-object v2, v0

    check-cast v2, Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->lock()V

    const/4 v3, 0x0

    .line 113
    .local v3, "$i$a$-withLock-ArrayBroadcastChannel$offerSelectInternal$1":I
    :try_start_0
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/ArrayBroadcastChannel;->getClosedForSend()Lkotlinx/coroutines/channels/Closed;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_0

    .line 381
    .local v4, "it":Lkotlinx/coroutines/channels/Closed;
    const/4 v5, 0x0

    .line 113
    .local v5, "$i$a$-let-ArrayBroadcastChannel$offerSelectInternal$1$1":I
    nop

    .end local v0    # "$this$withLock$iv":Ljava/util/concurrent/locks/ReentrantLock;
    .end local v1    # "$i$f$withLock":I
    .end local v3    # "$i$a$-withLock-ArrayBroadcastChannel$offerSelectInternal$1":I
    .end local v4    # "it":Lkotlinx/coroutines/channels/Closed;
    .end local v5    # "$i$a$-let-ArrayBroadcastChannel$offerSelectInternal$1$1":I
    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v4

    .line 114
    .restart local v0    # "$this$withLock$iv":Ljava/util/concurrent/locks/ReentrantLock;
    .restart local v1    # "$i$f$withLock":I
    .restart local v3    # "$i$a$-withLock-ArrayBroadcastChannel$offerSelectInternal$1":I
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lkotlinx/coroutines/channels/ArrayBroadcastChannel;->getSize()I

    move-result v4

    .line 115
    .local v4, "size":I
    iget v5, p0, Lkotlinx/coroutines/channels/ArrayBroadcastChannel;->capacity:I

    if-lt v4, v5, :cond_1

    sget-object v5, Lkotlinx/coroutines/channels/AbstractChannelKt;->OFFER_FAILED:Lkotlinx/coroutines/internal/Symbol;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v0    # "$this$withLock$iv":Ljava/util/concurrent/locks/ReentrantLock;
    .end local v1    # "$i$f$withLock":I
    .end local v3    # "$i$a$-withLock-ArrayBroadcastChannel$offerSelectInternal$1":I
    .end local v4    # "size":I
    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v5

    .line 117
    .restart local v0    # "$this$withLock$iv":Ljava/util/concurrent/locks/ReentrantLock;
    .restart local v1    # "$i$f$withLock":I
    .restart local v3    # "$i$a$-withLock-ArrayBroadcastChannel$offerSelectInternal$1":I
    .restart local v4    # "size":I
    :cond_1
    :try_start_2
    invoke-interface {p2}, Lkotlinx/coroutines/selects/SelectInstance;->trySelect()Z

    move-result v5

    if-nez v5, :cond_2

    .line 118
    invoke-static {}, Lkotlinx/coroutines/selects/SelectKt;->getALREADY_SELECTED()Ljava/lang/Object;

    move-result-object v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local v0    # "$this$withLock$iv":Ljava/util/concurrent/locks/ReentrantLock;
    .end local v1    # "$i$f$withLock":I
    .end local v3    # "$i$a$-withLock-ArrayBroadcastChannel$offerSelectInternal$1":I
    .end local v4    # "size":I
    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v5

    .line 120
    .restart local v0    # "$this$withLock$iv":Ljava/util/concurrent/locks/ReentrantLock;
    .restart local v1    # "$i$f$withLock":I
    .restart local v3    # "$i$a$-withLock-ArrayBroadcastChannel$offerSelectInternal$1":I
    .restart local v4    # "size":I
    :cond_2
    :try_start_3
    invoke-direct {p0}, Lkotlinx/coroutines/channels/ArrayBroadcastChannel;->getTail()J

    move-result-wide v5

    .line 121
    .local v5, "tail":J
    iget-object v7, p0, Lkotlinx/coroutines/channels/ArrayBroadcastChannel;->buffer:[Ljava/lang/Object;

    iget v8, p0, Lkotlinx/coroutines/channels/ArrayBroadcastChannel;->capacity:I

    int-to-long v8, v8

    rem-long v8, v5, v8

    long-to-int v8, v8

    aput-object p1, v7, v8

    .line 122
    add-int/lit8 v7, v4, 0x1

    invoke-direct {p0, v7}, Lkotlinx/coroutines/channels/ArrayBroadcastChannel;->setSize(I)V

    .line 123
    const-wide/16 v7, 0x1

    add-long/2addr v7, v5

    invoke-direct {p0, v7, v8}, Lkotlinx/coroutines/channels/ArrayBroadcastChannel;->setTail(J)V

    .line 124
    .end local v4    # "size":I
    .end local v5    # "tail":J
    nop

    .end local v3    # "$i$a$-withLock-ArrayBroadcastChannel$offerSelectInternal$1":I
    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 382
    nop

    .line 126
    .end local v0    # "$this$withLock$iv":Ljava/util/concurrent/locks/ReentrantLock;
    .end local v1    # "$i$f$withLock":I
    invoke-direct {p0}, Lkotlinx/coroutines/channels/ArrayBroadcastChannel;->checkSubOffers()V

    .line 127
    sget-object v0, Lkotlinx/coroutines/channels/AbstractChannelKt;->OFFER_SUCCESS:Lkotlinx/coroutines/internal/Symbol;

    return-object v0

    .line 124
    .restart local v0    # "$this$withLock$iv":Ljava/util/concurrent/locks/ReentrantLock;
    .restart local v1    # "$i$f$withLock":I
    :catchall_0
    move-exception v3

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v3
.end method

.method public openSubscription()Lkotlinx/coroutines/channels/ReceiveChannel;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/channels/ReceiveChannel<",
            "TE;>;"
        }
    .end annotation

    .line 69
    new-instance v0, Lkotlinx/coroutines/channels/ArrayBroadcastChannel$Subscriber;

    invoke-direct {v0, p0}, Lkotlinx/coroutines/channels/ArrayBroadcastChannel$Subscriber;-><init>(Lkotlinx/coroutines/channels/ArrayBroadcastChannel;)V

    move-object v1, v0

    .local v1, "it":Lkotlinx/coroutines/channels/ArrayBroadcastChannel$Subscriber;
    const/4 v2, 0x0

    .line 70
    .local v2, "$i$a$-also-ArrayBroadcastChannel$openSubscription$1":I
    const/4 v3, 0x0

    const/4 v4, 0x2

    invoke-static {p0, v1, v3, v4, v3}, Lkotlinx/coroutines/channels/ArrayBroadcastChannel;->updateHead$default(Lkotlinx/coroutines/channels/ArrayBroadcastChannel;Lkotlinx/coroutines/channels/ArrayBroadcastChannel$Subscriber;Lkotlinx/coroutines/channels/ArrayBroadcastChannel$Subscriber;ILjava/lang/Object;)V

    .line 71
    nop

    .line 69
    .end local v1    # "it":Lkotlinx/coroutines/channels/ArrayBroadcastChannel$Subscriber;
    .end local v2    # "$i$a$-also-ArrayBroadcastChannel$openSubscription$1":I
    check-cast v0, Lkotlinx/coroutines/channels/ReceiveChannel;

    .line 71
    return-object v0
.end method
