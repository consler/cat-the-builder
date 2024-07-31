.class final Lkotlinx/coroutines/sync/SemaphoreImpl;
.super Ljava/lang/Object;
.source "Semaphore.kt"

# interfaces
.implements Lkotlinx/coroutines/sync/Semaphore;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSemaphore.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Semaphore.kt\nkotlinx/coroutines/sync/SemaphoreImpl\n+ 2 AtomicFU.common.kt\nkotlinx/atomicfu/AtomicFU_commonKt\n+ 3 CancellableContinuation.kt\nkotlinx/coroutines/CancellableContinuationKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 5 ConcurrentLinkedList.kt\nkotlinx/coroutines/internal/ConcurrentLinkedListKt\n+ 6 ConcurrentLinkedList.kt\nkotlinx/coroutines/internal/ConcurrentLinkedListNode\n+ 7 Semaphore.kt\nkotlinx/coroutines/sync/SemaphoreSegment\n+ 8 CompletionHandler.kt\nkotlinx/coroutines/CompletionHandlerKt\n*L\n1#1,305:1\n276#2,2:306\n296#2,3:313\n299#2:317\n92#2,2:343\n92#2,2:382\n326#3,5:308\n1#4:316\n70#5,2:318\n24#5,3:320\n27#5,11:330\n72#5:341\n44#5:342\n45#5,8:345\n70#5,2:357\n24#5,3:359\n27#5,11:369\n72#5:380\n44#5:381\n45#5,8:384\n105#6,7:323\n105#6,7:362\n277#7:353\n277#7:355\n269#7:356\n280#7:392\n269#7:393\n277#7:394\n19#8:354\n*E\n*S KotlinDebug\n*F\n+ 1 Semaphore.kt\nkotlinx/coroutines/sync/SemaphoreImpl\n*L\n155#1,2:306\n183#1,3:313\n183#1:317\n198#1,2:343\n223#1,2:382\n170#1,5:308\n198#1,2:318\n198#1,3:320\n198#1,11:330\n198#1:341\n198#1:342\n198#1,8:345\n223#1,2:357\n223#1,3:359\n223#1,11:369\n223#1:380\n223#1:381\n223#1,8:384\n198#1,7:323\n223#1,7:362\n202#1:353\n208#1:355\n214#1:356\n228#1:392\n234#1:393\n237#1:394\n203#1:354\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0002\u0008\u0004\n\u0002\u0018\u0002\u0008\u0002\u0018\u00002\u00020\u001eB\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0001\u0012\u0006\u0010\u0003\u001a\u00020\u0001\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0013\u0010\u0007\u001a\u00020\u0006H\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u0013\u0010\t\u001a\u00020\u0006H\u0082@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\t\u0010\u0008J\u001d\u0010\r\u001a\u00020\u000c2\u000c\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\u00060\nH\u0002\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u000f\u0010\u000f\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u000f\u0010\u0011\u001a\u00020\u000cH\u0016\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\u000f\u0010\u0013\u001a\u00020\u000cH\u0002\u00a2\u0006\u0004\u0008\u0013\u0010\u0012J\u0019\u0010\u0014\u001a\u00020\u000c*\u0008\u0012\u0004\u0012\u00020\u00060\nH\u0002\u00a2\u0006\u0004\u0008\u0014\u0010\u000eR\u0016\u0010\u0017\u001a\u00020\u00018V@\u0016X\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0015\u0010\u0016R\"\u0010\u001a\u001a\u000e\u0012\u0004\u0012\u00020\u0019\u0012\u0004\u0012\u00020\u00060\u00188\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001a\u0010\u001bR\u0016\u0010\u0002\u001a\u00020\u00018\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0002\u0010\u001c\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\u001d"
    }
    d2 = {
        "Lkotlinx/coroutines/sync/SemaphoreImpl;",
        "",
        "permits",
        "acquiredPermits",
        "<init>",
        "(II)V",
        "",
        "acquire",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "acquireSlowPath",
        "Lkotlinx/coroutines/CancellableContinuation;",
        "cont",
        "",
        "addAcquireToQueue",
        "(Lkotlinx/coroutines/CancellableContinuation;)Z",
        "release",
        "()V",
        "tryAcquire",
        "()Z",
        "tryResumeNextFromQueue",
        "tryResumeAcquire",
        "getAvailablePermits",
        "()I",
        "availablePermits",
        "Lkotlin/Function1;",
        "",
        "onCancellationRelease",
        "Lkotlin/jvm/functions/Function1;",
        "I",
        "kotlinx-coroutines-core",
        "Lkotlinx/coroutines/sync/Semaphore;"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x0
    }
.end annotation


# static fields
.field static final _availablePermits$FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

.field private static final deqIdx$FU:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

.field private static final enqIdx$FU:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

.field private static final head$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

.field private static final tail$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;


# instance fields
.field volatile _availablePermits:I

.field private volatile deqIdx:J

.field private volatile enqIdx:J

.field private volatile head:Ljava/lang/Object;

.field private final onCancellationRelease:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Throwable;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final permits:I

.field private volatile tail:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-class v0, Lkotlinx/coroutines/sync/SemaphoreImpl;

    const-class v1, Ljava/lang/Object;

    const-string v2, "head"

    invoke-static {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v1

    sput-object v1, Lkotlinx/coroutines/sync/SemaphoreImpl;->head$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const-string v1, "deqIdx"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v1

    sput-object v1, Lkotlinx/coroutines/sync/SemaphoreImpl;->deqIdx$FU:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    const-class v1, Ljava/lang/Object;

    const-string v2, "tail"

    invoke-static {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v1

    sput-object v1, Lkotlinx/coroutines/sync/SemaphoreImpl;->tail$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const-string v1, "enqIdx"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v1

    sput-object v1, Lkotlinx/coroutines/sync/SemaphoreImpl;->enqIdx$FU:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    const-string v1, "_availablePermits"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/sync/SemaphoreImpl;->_availablePermits$FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    return-void
.end method

.method public constructor <init>(II)V
    .locals 5
    .param p1, "permits"    # I
    .param p2, "acquiredPermits"    # I

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lkotlinx/coroutines/sync/SemaphoreImpl;->permits:I

    .line 130
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lkotlinx/coroutines/sync/SemaphoreImpl;->deqIdx:J

    .line 132
    iput-wide v0, p0, Lkotlinx/coroutines/sync/SemaphoreImpl;->enqIdx:J

    .line 134
    nop

    .line 135
    iget v2, p0, Lkotlinx/coroutines/sync/SemaphoreImpl;->permits:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-lez v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v4

    :goto_0
    if-eqz v2, :cond_4

    .line 136
    iget v2, p0, Lkotlinx/coroutines/sync/SemaphoreImpl;->permits:I

    if-gez p2, :cond_1

    goto :goto_1

    :cond_1
    if-lt v2, p2, :cond_2

    goto :goto_2

    :cond_2
    :goto_1
    move v3, v4

    :goto_2
    if-eqz v3, :cond_3

    .line 137
    new-instance v2, Lkotlinx/coroutines/sync/SemaphoreSegment;

    const/4 v3, 0x0

    const/4 v4, 0x2

    invoke-direct {v2, v0, v1, v3, v4}, Lkotlinx/coroutines/sync/SemaphoreSegment;-><init>(JLkotlinx/coroutines/sync/SemaphoreSegment;I)V

    move-object v0, v2

    .line 138
    .local v0, "s":Lkotlinx/coroutines/sync/SemaphoreSegment;
    iput-object v0, p0, Lkotlinx/coroutines/sync/SemaphoreImpl;->head:Ljava/lang/Object;

    .line 139
    iput-object v0, p0, Lkotlinx/coroutines/sync/SemaphoreImpl;->tail:Ljava/lang/Object;

    .line 140
    .end local v0    # "s":Lkotlinx/coroutines/sync/SemaphoreSegment;
    nop

    .line 149
    iget v0, p0, Lkotlinx/coroutines/sync/SemaphoreImpl;->permits:I

    sub-int/2addr v0, p2

    iput v0, p0, Lkotlinx/coroutines/sync/SemaphoreImpl;->_availablePermits:I

    .line 152
    new-instance v0, Lkotlinx/coroutines/sync/SemaphoreImpl$onCancellationRelease$1;

    invoke-direct {v0, p0}, Lkotlinx/coroutines/sync/SemaphoreImpl$onCancellationRelease$1;-><init>(Lkotlinx/coroutines/sync/SemaphoreImpl;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    iput-object v0, p0, Lkotlinx/coroutines/sync/SemaphoreImpl;->onCancellationRelease:Lkotlin/jvm/functions/Function1;

    return-void

    .line 316
    :cond_3
    const/4 v0, 0x0

    .line 136
    .local v0, "$i$a$-require-SemaphoreImpl$2":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The number of acquired permits should be in 0.."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lkotlinx/coroutines/sync/SemaphoreImpl;->permits:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .end local v0    # "$i$a$-require-SemaphoreImpl$2":I
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    throw v1

    .line 316
    :cond_4
    const/4 v0, 0x0

    .line 135
    .local v0, "$i$a$-require-SemaphoreImpl$1":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Semaphore should have at least 1 permit, but had "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lkotlinx/coroutines/sync/SemaphoreImpl;->permits:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .end local v0    # "$i$a$-require-SemaphoreImpl$1":I
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    throw v1
.end method

.method public static final synthetic access$addAcquireToQueue(Lkotlinx/coroutines/sync/SemaphoreImpl;Lkotlinx/coroutines/CancellableContinuation;)Z
    .locals 1
    .param p0, "$this"    # Lkotlinx/coroutines/sync/SemaphoreImpl;
    .param p1, "cont"    # Lkotlinx/coroutines/CancellableContinuation;

    .line 93
    invoke-direct {p0, p1}, Lkotlinx/coroutines/sync/SemaphoreImpl;->addAcquireToQueue(Lkotlinx/coroutines/CancellableContinuation;)Z

    move-result v0

    return v0
.end method

.method private final addAcquireToQueue(Lkotlinx/coroutines/CancellableContinuation;)Z
    .locals 22
    .param p1, "cont"    # Lkotlinx/coroutines/CancellableContinuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CancellableContinuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)Z"
        }
    .end annotation

    .line 196
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lkotlinx/coroutines/sync/SemaphoreImpl;->tail:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/sync/SemaphoreSegment;

    .line 197
    .local v2, "curTail":Lkotlinx/coroutines/sync/SemaphoreSegment;
    sget-object v3, Lkotlinx/coroutines/sync/SemaphoreImpl;->enqIdx$FU:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-virtual {v3, v0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->getAndIncrement(Ljava/lang/Object;)J

    move-result-wide v3

    .line 198
    .local v3, "enqIdx":J
    nop

    .line 199
    nop

    .line 198
    invoke-static {}, Lkotlinx/coroutines/sync/SemaphoreKt;->access$getSEGMENT_SIZE$p()I

    move-result v5

    int-to-long v5, v5

    div-long v5, v3, v5

    .local v5, "id$iv":J
    move-object/from16 v7, p0

    .local v7, "$this$findSegmentAndMoveForward$iv":Lkotlinx/coroutines/sync/SemaphoreImpl;
    const/4 v8, 0x0

    .line 318
    .local v8, "$i$f$findSegmentAndMoveForward":I
    :goto_0
    nop

    .line 319
    move-object v9, v2

    check-cast v9, Lkotlinx/coroutines/internal/Segment;

    .local v9, "$this$findSegmentInternal$iv$iv":Lkotlinx/coroutines/internal/Segment;
    const/4 v10, 0x0

    .line 320
    .local v10, "$i$f$findSegmentInternal":I
    move-object v11, v9

    .line 321
    .local v11, "cur$iv$iv":Lkotlinx/coroutines/internal/Segment;
    :goto_1
    invoke-virtual {v11}, Lkotlinx/coroutines/internal/Segment;->getId()J

    move-result-wide v12

    cmp-long v12, v12, v5

    if-ltz v12, :cond_1

    invoke-virtual {v11}, Lkotlinx/coroutines/internal/Segment;->getRemoved()Z

    move-result v12

    if-eqz v12, :cond_0

    goto :goto_2

    .line 340
    :cond_0
    invoke-static {v11}, Lkotlinx/coroutines/internal/SegmentOrClosed;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    goto :goto_3

    .line 322
    :cond_1
    :goto_2
    move-object v12, v11

    check-cast v12, Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;

    .local v12, "this_$iv$iv$iv":Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;
    const/4 v13, 0x0

    .line 323
    .local v13, "$i$f$nextOrIfClosed":I
    invoke-static {v12}, Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;->access$getNextOrClosed$p(Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;)Ljava/lang/Object;

    move-result-object v14

    .local v14, "it$iv$iv$iv":Ljava/lang/Object;
    const/4 v15, 0x0

    .line 324
    .local v15, "$i$a$-let-ConcurrentLinkedListNode$nextOrIfClosed$1$iv$iv$iv":I
    invoke-static {}, Lkotlinx/coroutines/internal/ConcurrentLinkedListKt;->access$getCLOSED$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v0

    if-ne v14, v0, :cond_e

    .line 325
    const/4 v0, 0x0

    .line 322
    .local v0, "$i$a$-nextOrIfClosed-ConcurrentLinkedListKt$findSegmentInternal$next$1$iv$iv":I
    invoke-static {}, Lkotlinx/coroutines/internal/ConcurrentLinkedListKt;->access$getCLOSED$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lkotlinx/coroutines/internal/SegmentOrClosed;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v12, v16

    .line 319
    .end local v0    # "$i$a$-nextOrIfClosed-ConcurrentLinkedListKt$findSegmentInternal$next$1$iv$iv":I
    .end local v9    # "$this$findSegmentInternal$iv$iv":Lkotlinx/coroutines/internal/Segment;
    .end local v10    # "$i$f$findSegmentInternal":I
    .end local v11    # "cur$iv$iv":Lkotlinx/coroutines/internal/Segment;
    .end local v12    # "this_$iv$iv$iv":Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;
    .end local v13    # "$i$f$nextOrIfClosed":I
    .end local v14    # "it$iv$iv$iv":Ljava/lang/Object;
    .end local v15    # "$i$a$-let-ConcurrentLinkedListNode$nextOrIfClosed$1$iv$iv$iv":I
    :goto_3
    move-object v0, v12

    .line 341
    .local v0, "s$iv":Ljava/lang/Object;
    invoke-static {v0}, Lkotlinx/coroutines/internal/SegmentOrClosed;->isClosed-impl(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_8

    invoke-static {v0}, Lkotlinx/coroutines/internal/SegmentOrClosed;->getSegment-impl(Ljava/lang/Object;)Lkotlinx/coroutines/internal/Segment;

    move-result-object v9

    .local v9, "to$iv$iv":Lkotlinx/coroutines/internal/Segment;
    move-object v12, v7

    .local v12, "$this$moveForward$iv$iv":Lkotlinx/coroutines/sync/SemaphoreImpl;
    const/4 v13, 0x0

    .line 342
    .local v13, "$i$f$moveForward":I
    move-object v14, v12

    .local v14, "$this$loop$iv$iv$iv":Lkotlinx/coroutines/sync/SemaphoreImpl;
    const/4 v15, 0x0

    .line 343
    .local v15, "$i$f$loop":I
    :goto_4
    nop

    .line 344
    iget-object v10, v14, Lkotlinx/coroutines/sync/SemaphoreImpl;->tail:Ljava/lang/Object;

    check-cast v10, Lkotlinx/coroutines/internal/Segment;

    .local v10, "cur$iv$iv":Lkotlinx/coroutines/internal/Segment;
    const/16 v17, 0x0

    .line 345
    .local v17, "$i$a$-loop-ConcurrentLinkedListKt$moveForward$1$iv$iv":I
    invoke-virtual {v10}, Lkotlinx/coroutines/internal/Segment;->getId()J

    move-result-wide v18

    invoke-virtual {v9}, Lkotlinx/coroutines/internal/Segment;->getId()J

    move-result-wide v20

    cmp-long v18, v18, v20

    if-ltz v18, :cond_2

    const/4 v11, 0x1

    goto :goto_5

    .line 346
    :cond_2
    invoke-virtual {v9}, Lkotlinx/coroutines/internal/Segment;->tryIncPointers$kotlinx_coroutines_core()Z

    move-result v18

    if-nez v18, :cond_3

    const/4 v11, 0x0

    goto :goto_5

    .line 347
    :cond_3
    sget-object v11, Lkotlinx/coroutines/sync/SemaphoreImpl;->tail$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v11, v12, v10, v9}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 348
    invoke-virtual {v10}, Lkotlinx/coroutines/internal/Segment;->decPointers$kotlinx_coroutines_core()Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-virtual {v10}, Lkotlinx/coroutines/internal/Segment;->remove()V

    .line 349
    :cond_4
    const/4 v11, 0x1

    .line 341
    .end local v9    # "to$iv$iv":Lkotlinx/coroutines/internal/Segment;
    .end local v10    # "cur$iv$iv":Lkotlinx/coroutines/internal/Segment;
    .end local v12    # "$this$moveForward$iv$iv":Lkotlinx/coroutines/sync/SemaphoreImpl;
    .end local v13    # "$i$f$moveForward":I
    .end local v14    # "$this$loop$iv$iv$iv":Lkotlinx/coroutines/sync/SemaphoreImpl;
    .end local v15    # "$i$f$loop":I
    .end local v17    # "$i$a$-loop-ConcurrentLinkedListKt$moveForward$1$iv$iv":I
    :goto_5
    if-eqz v11, :cond_5

    goto :goto_6

    .line 318
    .end local v0    # "s$iv":Ljava/lang/Object;
    :cond_5
    move-object/from16 v0, p0

    goto :goto_0

    .line 351
    .restart local v0    # "s$iv":Ljava/lang/Object;
    .restart local v9    # "to$iv$iv":Lkotlinx/coroutines/internal/Segment;
    .restart local v10    # "cur$iv$iv":Lkotlinx/coroutines/internal/Segment;
    .restart local v12    # "$this$moveForward$iv$iv":Lkotlinx/coroutines/sync/SemaphoreImpl;
    .restart local v13    # "$i$f$moveForward":I
    .restart local v14    # "$this$loop$iv$iv$iv":Lkotlinx/coroutines/sync/SemaphoreImpl;
    .restart local v15    # "$i$f$loop":I
    .restart local v17    # "$i$a$-loop-ConcurrentLinkedListKt$moveForward$1$iv$iv":I
    :cond_6
    invoke-virtual {v9}, Lkotlinx/coroutines/internal/Segment;->decPointers$kotlinx_coroutines_core()Z

    move-result v11

    if-eqz v11, :cond_7

    invoke-virtual {v9}, Lkotlinx/coroutines/internal/Segment;->remove()V

    .line 352
    :cond_7
    nop

    .line 343
    .end local v10    # "cur$iv$iv":Lkotlinx/coroutines/internal/Segment;
    .end local v17    # "$i$a$-loop-ConcurrentLinkedListKt$moveForward$1$iv$iv":I
    goto :goto_4

    .line 318
    .end local v0    # "s$iv":Ljava/lang/Object;
    .end local v5    # "id$iv":J
    .end local v7    # "$this$findSegmentAndMoveForward$iv":Lkotlinx/coroutines/sync/SemaphoreImpl;
    .end local v8    # "$i$f$findSegmentAndMoveForward":I
    .end local v9    # "to$iv$iv":Lkotlinx/coroutines/internal/Segment;
    .end local v12    # "$this$moveForward$iv$iv":Lkotlinx/coroutines/sync/SemaphoreImpl;
    .end local v13    # "$i$f$moveForward":I
    .end local v14    # "$this$loop$iv$iv$iv":Lkotlinx/coroutines/sync/SemaphoreImpl;
    .end local v15    # "$i$f$loop":I
    :cond_8
    :goto_6
    invoke-static {v0}, Lkotlinx/coroutines/internal/SegmentOrClosed;->getSegment-impl(Ljava/lang/Object;)Lkotlinx/coroutines/internal/Segment;

    move-result-object v0

    .line 198
    check-cast v0, Lkotlinx/coroutines/sync/SemaphoreSegment;

    .line 200
    .local v0, "segment":Lkotlinx/coroutines/sync/SemaphoreSegment;
    invoke-static {}, Lkotlinx/coroutines/sync/SemaphoreKt;->access$getSEGMENT_SIZE$p()I

    move-result v5

    int-to-long v5, v5

    rem-long v5, v3, v5

    long-to-int v5, v5

    .line 202
    .local v5, "i":I
    const/4 v6, 0x0

    .local v6, "expected$iv":Ljava/lang/Object;
    move-object v7, v0

    .local v7, "this_$iv":Lkotlinx/coroutines/sync/SemaphoreSegment;
    const/4 v8, 0x0

    .line 353
    .local v8, "$i$f$cas":I
    iget-object v9, v7, Lkotlinx/coroutines/sync/SemaphoreSegment;->acquirers:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v9, v5, v6, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->compareAndSet(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    .line 202
    .end local v6    # "expected$iv":Ljava/lang/Object;
    .end local v7    # "this_$iv":Lkotlinx/coroutines/sync/SemaphoreSegment;
    .end local v8    # "$i$f$cas":I
    if-eqz v6, :cond_9

    .line 203
    new-instance v6, Lkotlinx/coroutines/sync/CancelSemaphoreAcquisitionHandler;

    invoke-direct {v6, v0, v5}, Lkotlinx/coroutines/sync/CancelSemaphoreAcquisitionHandler;-><init>(Lkotlinx/coroutines/sync/SemaphoreSegment;I)V

    check-cast v6, Lkotlinx/coroutines/CancelHandlerBase;

    .local v6, "$this$asHandler$iv":Lkotlinx/coroutines/CancelHandlerBase;
    const/4 v7, 0x0

    .line 354
    .local v7, "$i$f$getAsHandler":I
    check-cast v6, Lkotlin/jvm/functions/Function1;

    .line 203
    .end local v6    # "$this$asHandler$iv":Lkotlinx/coroutines/CancelHandlerBase;
    .end local v7    # "$i$f$getAsHandler":I
    invoke-interface {v1, v6}, Lkotlinx/coroutines/CancellableContinuation;->invokeOnCancellation(Lkotlin/jvm/functions/Function1;)V

    .line 204
    const/4 v6, 0x1

    return v6

    .line 208
    :cond_9
    invoke-static {}, Lkotlinx/coroutines/sync/SemaphoreKt;->access$getPERMIT$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v6

    .local v6, "expected$iv":Ljava/lang/Object;
    invoke-static {}, Lkotlinx/coroutines/sync/SemaphoreKt;->access$getTAKEN$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v7

    .local v7, "value$iv":Ljava/lang/Object;
    move-object v8, v0

    .local v8, "this_$iv":Lkotlinx/coroutines/sync/SemaphoreSegment;
    const/4 v9, 0x0

    .line 355
    .local v9, "$i$f$cas":I
    iget-object v10, v8, Lkotlinx/coroutines/sync/SemaphoreSegment;->acquirers:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v10, v5, v6, v7}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->compareAndSet(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    .line 208
    .end local v6    # "expected$iv":Ljava/lang/Object;
    .end local v7    # "value$iv":Ljava/lang/Object;
    .end local v8    # "this_$iv":Lkotlinx/coroutines/sync/SemaphoreSegment;
    .end local v9    # "$i$f$cas":I
    if-eqz v6, :cond_a

    .line 211
    move-object v6, v1

    check-cast v6, Lkotlin/coroutines/Continuation;

    sget-object v7, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    sget-object v8, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v7}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v6, v7}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    .line 212
    const/4 v6, 0x1

    return v6

    .line 214
    :cond_a
    const/4 v6, 0x1

    invoke-static {}, Lkotlinx/coroutines/DebugKt;->getASSERTIONS_ENABLED()Z

    move-result v7

    if-eqz v7, :cond_d

    .line 316
    const/4 v7, 0x0

    .line 214
    .local v7, "$i$a$-assert-SemaphoreImpl$addAcquireToQueue$1":I
    move v8, v5

    .local v8, "index$iv":I
    move-object v9, v0

    .local v9, "this_$iv":Lkotlinx/coroutines/sync/SemaphoreSegment;
    const/4 v10, 0x0

    .line 356
    .local v10, "$i$f$get":I
    iget-object v11, v9, Lkotlinx/coroutines/sync/SemaphoreSegment;->acquirers:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v11, v8}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    .end local v8    # "index$iv":I
    .end local v9    # "this_$iv":Lkotlinx/coroutines/sync/SemaphoreSegment;
    .end local v10    # "$i$f$get":I
    invoke-static {}, Lkotlinx/coroutines/sync/SemaphoreKt;->access$getBROKEN$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v9

    if-ne v8, v9, :cond_b

    move v11, v6

    goto :goto_7

    :cond_b
    const/4 v11, 0x0

    .line 214
    .end local v7    # "$i$a$-assert-SemaphoreImpl$addAcquireToQueue$1":I
    :goto_7
    if-eqz v11, :cond_c

    goto :goto_8

    :cond_c
    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    check-cast v6, Ljava/lang/Throwable;

    throw v6

    .line 215
    :cond_d
    :goto_8
    const/4 v6, 0x0

    return v6

    .line 327
    .end local v0    # "segment":Lkotlinx/coroutines/sync/SemaphoreSegment;
    .local v5, "id$iv":J
    .local v7, "$this$findSegmentAndMoveForward$iv":Lkotlinx/coroutines/sync/SemaphoreImpl;
    .local v8, "$i$f$findSegmentAndMoveForward":I
    .local v9, "$this$findSegmentInternal$iv$iv":Lkotlinx/coroutines/internal/Segment;
    .local v10, "$i$f$findSegmentInternal":I
    .restart local v11    # "cur$iv$iv":Lkotlinx/coroutines/internal/Segment;
    .local v12, "this_$iv$iv$iv":Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;
    .local v13, "$i$f$nextOrIfClosed":I
    .local v14, "it$iv$iv$iv":Ljava/lang/Object;
    .local v15, "$i$a$-let-ConcurrentLinkedListNode$nextOrIfClosed$1$iv$iv$iv":I
    :cond_e
    move-object v0, v14

    check-cast v0, Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;

    .line 324
    nop

    .line 323
    .end local v14    # "it$iv$iv$iv":Ljava/lang/Object;
    .end local v15    # "$i$a$-let-ConcurrentLinkedListNode$nextOrIfClosed$1$iv$iv$iv":I
    nop

    .line 329
    nop

    .line 322
    .end local v12    # "this_$iv$iv$iv":Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;
    .end local v13    # "$i$f$nextOrIfClosed":I
    check-cast v0, Lkotlinx/coroutines/internal/Segment;

    .line 330
    .local v0, "next$iv$iv":Lkotlinx/coroutines/internal/Segment;
    if-eqz v0, :cond_f

    .line 331
    move-object v11, v0

    .line 332
    move-object/from16 v0, p0

    goto/16 :goto_1

    .line 334
    :cond_f
    invoke-virtual {v11}, Lkotlinx/coroutines/internal/Segment;->getId()J

    move-result-wide v12

    const-wide/16 v14, 0x1

    add-long/2addr v12, v14

    .local v12, "p1":J
    move-object v14, v11

    check-cast v14, Lkotlinx/coroutines/sync/SemaphoreSegment;

    .local v14, "p2":Lkotlinx/coroutines/sync/SemaphoreSegment;
    const/4 v15, 0x0

    .line 199
    .local v15, "$i$a$-unknown-SemaphoreImpl$addAcquireToQueue$segment$1":I
    invoke-static {v12, v13, v14}, Lkotlinx/coroutines/sync/SemaphoreKt;->access$createSegment(JLkotlinx/coroutines/sync/SemaphoreSegment;)Lkotlinx/coroutines/sync/SemaphoreSegment;

    move-result-object v12

    .end local v12    # "p1":J
    .end local v14    # "p2":Lkotlinx/coroutines/sync/SemaphoreSegment;
    .end local v15    # "$i$a$-unknown-SemaphoreImpl$addAcquireToQueue$segment$1":I
    check-cast v12, Lkotlinx/coroutines/internal/Segment;

    .line 335
    .local v12, "newTail$iv$iv":Lkotlinx/coroutines/internal/Segment;
    move-object v13, v12

    check-cast v13, Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;

    invoke-virtual {v11, v13}, Lkotlinx/coroutines/internal/Segment;->trySetNext(Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;)Z

    move-result v13

    if-eqz v13, :cond_11

    .line 336
    invoke-virtual {v11}, Lkotlinx/coroutines/internal/Segment;->getRemoved()Z

    move-result v13

    if-eqz v13, :cond_10

    invoke-virtual {v11}, Lkotlinx/coroutines/internal/Segment;->remove()V

    .line 337
    :cond_10
    move-object v11, v12

    .line 321
    .end local v0    # "next$iv$iv":Lkotlinx/coroutines/internal/Segment;
    .end local v12    # "newTail$iv$iv":Lkotlinx/coroutines/internal/Segment;
    :cond_11
    move-object/from16 v0, p0

    goto/16 :goto_1
.end method

.method private final tryResumeAcquire(Lkotlinx/coroutines/CancellableContinuation;)Z
    .locals 3
    .param p1, "$this$tryResumeAcquire"    # Lkotlinx/coroutines/CancellableContinuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CancellableContinuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)Z"
        }
    .end annotation

    .line 245
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    iget-object v1, p0, Lkotlinx/coroutines/sync/SemaphoreImpl;->onCancellationRelease:Lkotlin/jvm/functions/Function1;

    const/4 v2, 0x0

    invoke-interface {p1, v0, v2, v1}, Lkotlinx/coroutines/CancellableContinuation;->tryResume(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 246
    .local v0, "token":Ljava/lang/Object;
    invoke-interface {p1, v0}, Lkotlinx/coroutines/CancellableContinuation;->completeResume(Ljava/lang/Object;)V

    .line 247
    const/4 v1, 0x1

    return v1

    .line 245
    .end local v0    # "token":Ljava/lang/Object;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private final tryResumeNextFromQueue()Z
    .locals 22

    .line 220
    move-object/from16 v0, p0

    iget-object v1, v0, Lkotlinx/coroutines/sync/SemaphoreImpl;->head:Ljava/lang/Object;

    check-cast v1, Lkotlinx/coroutines/sync/SemaphoreSegment;

    .line 221
    .local v1, "curHead":Lkotlinx/coroutines/sync/SemaphoreSegment;
    sget-object v2, Lkotlinx/coroutines/sync/SemaphoreImpl;->deqIdx$FU:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->getAndIncrement(Ljava/lang/Object;)J

    move-result-wide v2

    .line 222
    .local v2, "deqIdx":J
    invoke-static {}, Lkotlinx/coroutines/sync/SemaphoreKt;->access$getSEGMENT_SIZE$p()I

    move-result v4

    int-to-long v4, v4

    div-long v4, v2, v4

    .line 223
    .local v4, "id":J
    nop

    .line 224
    nop

    .line 223
    move-object/from16 v6, p0

    .local v6, "$this$findSegmentAndMoveForward$iv":Lkotlinx/coroutines/sync/SemaphoreImpl;
    const/4 v7, 0x0

    .line 357
    .local v7, "$i$f$findSegmentAndMoveForward":I
    :goto_0
    nop

    .line 358
    move-object v8, v1

    check-cast v8, Lkotlinx/coroutines/internal/Segment;

    .local v8, "$this$findSegmentInternal$iv$iv":Lkotlinx/coroutines/internal/Segment;
    const/4 v9, 0x0

    .line 359
    .local v9, "$i$f$findSegmentInternal":I
    move-object v10, v8

    .line 360
    .local v10, "cur$iv$iv":Lkotlinx/coroutines/internal/Segment;
    :goto_1
    invoke-virtual {v10}, Lkotlinx/coroutines/internal/Segment;->getId()J

    move-result-wide v11

    cmp-long v11, v11, v4

    if-ltz v11, :cond_1

    invoke-virtual {v10}, Lkotlinx/coroutines/internal/Segment;->getRemoved()Z

    move-result v11

    if-eqz v11, :cond_0

    goto :goto_2

    .line 379
    :cond_0
    invoke-static {v10}, Lkotlinx/coroutines/internal/SegmentOrClosed;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    goto :goto_3

    .line 361
    :cond_1
    :goto_2
    move-object v11, v10

    check-cast v11, Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;

    .local v11, "this_$iv$iv$iv":Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;
    const/4 v12, 0x0

    .line 362
    .local v12, "$i$f$nextOrIfClosed":I
    invoke-static {v11}, Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;->access$getNextOrClosed$p(Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;)Ljava/lang/Object;

    move-result-object v13

    .local v13, "it$iv$iv$iv":Ljava/lang/Object;
    const/4 v14, 0x0

    .line 363
    .local v14, "$i$a$-let-ConcurrentLinkedListNode$nextOrIfClosed$1$iv$iv$iv":I
    invoke-static {}, Lkotlinx/coroutines/internal/ConcurrentLinkedListKt;->access$getCLOSED$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v15

    if-ne v13, v15, :cond_e

    .line 364
    const/4 v15, 0x0

    .line 361
    .local v15, "$i$a$-nextOrIfClosed-ConcurrentLinkedListKt$findSegmentInternal$next$1$iv$iv":I
    invoke-static {}, Lkotlinx/coroutines/internal/ConcurrentLinkedListKt;->access$getCLOSED$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lkotlinx/coroutines/internal/SegmentOrClosed;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v11, v16

    .line 358
    .end local v8    # "$this$findSegmentInternal$iv$iv":Lkotlinx/coroutines/internal/Segment;
    .end local v9    # "$i$f$findSegmentInternal":I
    .end local v10    # "cur$iv$iv":Lkotlinx/coroutines/internal/Segment;
    .end local v11    # "this_$iv$iv$iv":Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;
    .end local v12    # "$i$f$nextOrIfClosed":I
    .end local v13    # "it$iv$iv$iv":Ljava/lang/Object;
    .end local v14    # "$i$a$-let-ConcurrentLinkedListNode$nextOrIfClosed$1$iv$iv$iv":I
    .end local v15    # "$i$a$-nextOrIfClosed-ConcurrentLinkedListKt$findSegmentInternal$next$1$iv$iv":I
    :goto_3
    move-object v8, v11

    .line 380
    .local v8, "s$iv":Ljava/lang/Object;
    invoke-static {v8}, Lkotlinx/coroutines/internal/SegmentOrClosed;->isClosed-impl(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_8

    invoke-static {v8}, Lkotlinx/coroutines/internal/SegmentOrClosed;->getSegment-impl(Ljava/lang/Object;)Lkotlinx/coroutines/internal/Segment;

    move-result-object v9

    .local v9, "to$iv$iv":Lkotlinx/coroutines/internal/Segment;
    move-object v12, v6

    .local v12, "$this$moveForward$iv$iv":Lkotlinx/coroutines/sync/SemaphoreImpl;
    const/4 v13, 0x0

    .line 381
    .local v13, "$i$f$moveForward":I
    move-object v14, v12

    .local v14, "$this$loop$iv$iv$iv":Lkotlinx/coroutines/sync/SemaphoreImpl;
    const/4 v15, 0x0

    .line 382
    .local v15, "$i$f$loop":I
    :goto_4
    nop

    .line 383
    iget-object v11, v14, Lkotlinx/coroutines/sync/SemaphoreImpl;->head:Ljava/lang/Object;

    check-cast v11, Lkotlinx/coroutines/internal/Segment;

    .local v11, "cur$iv$iv":Lkotlinx/coroutines/internal/Segment;
    const/16 v17, 0x0

    .line 384
    .local v17, "$i$a$-loop-ConcurrentLinkedListKt$moveForward$1$iv$iv":I
    invoke-virtual {v11}, Lkotlinx/coroutines/internal/Segment;->getId()J

    move-result-wide v18

    invoke-virtual {v9}, Lkotlinx/coroutines/internal/Segment;->getId()J

    move-result-wide v20

    cmp-long v18, v18, v20

    if-ltz v18, :cond_2

    const/4 v10, 0x1

    goto :goto_5

    .line 385
    :cond_2
    invoke-virtual {v9}, Lkotlinx/coroutines/internal/Segment;->tryIncPointers$kotlinx_coroutines_core()Z

    move-result v18

    if-nez v18, :cond_3

    const/4 v10, 0x0

    goto :goto_5

    .line 386
    :cond_3
    sget-object v10, Lkotlinx/coroutines/sync/SemaphoreImpl;->head$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v10, v12, v11, v9}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 387
    invoke-virtual {v11}, Lkotlinx/coroutines/internal/Segment;->decPointers$kotlinx_coroutines_core()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-virtual {v11}, Lkotlinx/coroutines/internal/Segment;->remove()V

    .line 388
    :cond_4
    const/4 v10, 0x1

    .line 380
    .end local v9    # "to$iv$iv":Lkotlinx/coroutines/internal/Segment;
    .end local v11    # "cur$iv$iv":Lkotlinx/coroutines/internal/Segment;
    .end local v12    # "$this$moveForward$iv$iv":Lkotlinx/coroutines/sync/SemaphoreImpl;
    .end local v13    # "$i$f$moveForward":I
    .end local v14    # "$this$loop$iv$iv$iv":Lkotlinx/coroutines/sync/SemaphoreImpl;
    .end local v15    # "$i$f$loop":I
    .end local v17    # "$i$a$-loop-ConcurrentLinkedListKt$moveForward$1$iv$iv":I
    :goto_5
    if-eqz v10, :cond_5

    goto :goto_6

    .line 357
    .end local v8    # "s$iv":Ljava/lang/Object;
    :cond_5
    goto :goto_0

    .line 390
    .restart local v8    # "s$iv":Ljava/lang/Object;
    .restart local v9    # "to$iv$iv":Lkotlinx/coroutines/internal/Segment;
    .restart local v11    # "cur$iv$iv":Lkotlinx/coroutines/internal/Segment;
    .restart local v12    # "$this$moveForward$iv$iv":Lkotlinx/coroutines/sync/SemaphoreImpl;
    .restart local v13    # "$i$f$moveForward":I
    .restart local v14    # "$this$loop$iv$iv$iv":Lkotlinx/coroutines/sync/SemaphoreImpl;
    .restart local v15    # "$i$f$loop":I
    .restart local v17    # "$i$a$-loop-ConcurrentLinkedListKt$moveForward$1$iv$iv":I
    :cond_6
    invoke-virtual {v9}, Lkotlinx/coroutines/internal/Segment;->decPointers$kotlinx_coroutines_core()Z

    move-result v10

    if-eqz v10, :cond_7

    invoke-virtual {v9}, Lkotlinx/coroutines/internal/Segment;->remove()V

    .line 391
    :cond_7
    nop

    .line 382
    .end local v11    # "cur$iv$iv":Lkotlinx/coroutines/internal/Segment;
    .end local v17    # "$i$a$-loop-ConcurrentLinkedListKt$moveForward$1$iv$iv":I
    goto :goto_4

    .line 357
    .end local v6    # "$this$findSegmentAndMoveForward$iv":Lkotlinx/coroutines/sync/SemaphoreImpl;
    .end local v7    # "$i$f$findSegmentAndMoveForward":I
    .end local v8    # "s$iv":Ljava/lang/Object;
    .end local v9    # "to$iv$iv":Lkotlinx/coroutines/internal/Segment;
    .end local v12    # "$this$moveForward$iv$iv":Lkotlinx/coroutines/sync/SemaphoreImpl;
    .end local v13    # "$i$f$moveForward":I
    .end local v14    # "$this$loop$iv$iv$iv":Lkotlinx/coroutines/sync/SemaphoreImpl;
    .end local v15    # "$i$f$loop":I
    :cond_8
    :goto_6
    invoke-static {v8}, Lkotlinx/coroutines/internal/SegmentOrClosed;->getSegment-impl(Ljava/lang/Object;)Lkotlinx/coroutines/internal/Segment;

    move-result-object v6

    .line 223
    check-cast v6, Lkotlinx/coroutines/sync/SemaphoreSegment;

    .line 225
    .local v6, "segment":Lkotlinx/coroutines/sync/SemaphoreSegment;
    invoke-virtual {v6}, Lkotlinx/coroutines/sync/SemaphoreSegment;->cleanPrev()V

    .line 226
    invoke-virtual {v6}, Lkotlinx/coroutines/sync/SemaphoreSegment;->getId()J

    move-result-wide v7

    cmp-long v7, v7, v4

    if-lez v7, :cond_9

    const/4 v7, 0x0

    return v7

    .line 227
    :cond_9
    invoke-static {}, Lkotlinx/coroutines/sync/SemaphoreKt;->access$getSEGMENT_SIZE$p()I

    move-result v7

    int-to-long v7, v7

    rem-long v7, v2, v7

    long-to-int v7, v7

    .line 228
    .local v7, "i":I
    invoke-static {}, Lkotlinx/coroutines/sync/SemaphoreKt;->access$getPERMIT$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v8

    .local v8, "value$iv":Ljava/lang/Object;
    move-object v9, v6

    .local v9, "this_$iv":Lkotlinx/coroutines/sync/SemaphoreSegment;
    const/4 v10, 0x0

    .line 392
    .local v10, "$i$f$getAndSet":I
    iget-object v11, v9, Lkotlinx/coroutines/sync/SemaphoreSegment;->acquirers:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v11, v7, v8}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->getAndSet(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 228
    .end local v8    # "value$iv":Ljava/lang/Object;
    .end local v9    # "this_$iv":Lkotlinx/coroutines/sync/SemaphoreSegment;
    .end local v10    # "$i$f$getAndSet":I
    nop

    .line 229
    .local v8, "cellState":Ljava/lang/Object;
    nop

    .line 230
    if-nez v8, :cond_c

    .line 233
    invoke-static {}, Lkotlinx/coroutines/sync/SemaphoreKt;->access$getMAX_SPIN_CYCLES$p()I

    move-result v9

    const/4 v10, 0x0

    :goto_7
    if-ge v10, v9, :cond_b

    move v11, v10

    .local v11, "it":I
    const/4 v12, 0x0

    .line 234
    .local v12, "$i$a$-repeat-SemaphoreImpl$tryResumeNextFromQueue$1":I
    move v13, v7

    .local v13, "index$iv":I
    move-object v14, v6

    .local v14, "this_$iv":Lkotlinx/coroutines/sync/SemaphoreSegment;
    const/4 v15, 0x0

    .line 393
    .local v15, "$i$f$get":I
    move-object/from16 v17, v1

    .end local v1    # "curHead":Lkotlinx/coroutines/sync/SemaphoreSegment;
    .local v17, "curHead":Lkotlinx/coroutines/sync/SemaphoreSegment;
    iget-object v1, v14, Lkotlinx/coroutines/sync/SemaphoreSegment;->acquirers:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v1, v13}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 234
    .end local v13    # "index$iv":I
    .end local v14    # "this_$iv":Lkotlinx/coroutines/sync/SemaphoreSegment;
    .end local v15    # "$i$f$get":I
    invoke-static {}, Lkotlinx/coroutines/sync/SemaphoreKt;->access$getTAKEN$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v13

    if-ne v1, v13, :cond_a

    const/4 v1, 0x1

    return v1

    .line 235
    :cond_a
    nop

    .line 233
    .end local v11    # "it":I
    .end local v12    # "$i$a$-repeat-SemaphoreImpl$tryResumeNextFromQueue$1":I
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v1, v17

    goto :goto_7

    .line 237
    .end local v17    # "curHead":Lkotlinx/coroutines/sync/SemaphoreSegment;
    .restart local v1    # "curHead":Lkotlinx/coroutines/sync/SemaphoreSegment;
    :cond_b
    move-object/from16 v17, v1

    .end local v1    # "curHead":Lkotlinx/coroutines/sync/SemaphoreSegment;
    .restart local v17    # "curHead":Lkotlinx/coroutines/sync/SemaphoreSegment;
    invoke-static {}, Lkotlinx/coroutines/sync/SemaphoreKt;->access$getPERMIT$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v1

    .local v1, "expected$iv":Ljava/lang/Object;
    invoke-static {}, Lkotlinx/coroutines/sync/SemaphoreKt;->access$getBROKEN$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v9

    .local v9, "value$iv":Ljava/lang/Object;
    move-object v10, v6

    .local v10, "this_$iv":Lkotlinx/coroutines/sync/SemaphoreSegment;
    const/4 v11, 0x0

    .line 394
    .local v11, "$i$f$cas":I
    iget-object v12, v10, Lkotlinx/coroutines/sync/SemaphoreSegment;->acquirers:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v12, v7, v1, v9}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->compareAndSet(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    .end local v1    # "expected$iv":Ljava/lang/Object;
    .end local v9    # "value$iv":Ljava/lang/Object;
    .end local v10    # "this_$iv":Lkotlinx/coroutines/sync/SemaphoreSegment;
    .end local v11    # "$i$f$cas":I
    const/4 v9, 0x1

    .line 237
    xor-int/2addr v1, v9

    return v1

    .line 239
    .end local v17    # "curHead":Lkotlinx/coroutines/sync/SemaphoreSegment;
    .local v1, "curHead":Lkotlinx/coroutines/sync/SemaphoreSegment;
    :cond_c
    move-object/from16 v17, v1

    .end local v1    # "curHead":Lkotlinx/coroutines/sync/SemaphoreSegment;
    .restart local v17    # "curHead":Lkotlinx/coroutines/sync/SemaphoreSegment;
    invoke-static {}, Lkotlinx/coroutines/sync/SemaphoreKt;->access$getCANCELLED$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v1

    if-ne v8, v1, :cond_d

    const/4 v1, 0x0

    return v1

    .line 240
    :cond_d
    move-object v1, v8

    check-cast v1, Lkotlinx/coroutines/CancellableContinuation;

    invoke-direct {v0, v1}, Lkotlinx/coroutines/sync/SemaphoreImpl;->tryResumeAcquire(Lkotlinx/coroutines/CancellableContinuation;)Z

    move-result v1

    return v1

    .line 366
    .end local v17    # "curHead":Lkotlinx/coroutines/sync/SemaphoreSegment;
    .restart local v1    # "curHead":Lkotlinx/coroutines/sync/SemaphoreSegment;
    .local v6, "$this$findSegmentAndMoveForward$iv":Lkotlinx/coroutines/sync/SemaphoreImpl;
    .local v7, "$i$f$findSegmentAndMoveForward":I
    .local v8, "$this$findSegmentInternal$iv$iv":Lkotlinx/coroutines/internal/Segment;
    .local v9, "$i$f$findSegmentInternal":I
    .local v10, "cur$iv$iv":Lkotlinx/coroutines/internal/Segment;
    .local v11, "this_$iv$iv$iv":Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;
    .local v12, "$i$f$nextOrIfClosed":I
    .local v13, "it$iv$iv$iv":Ljava/lang/Object;
    .local v14, "$i$a$-let-ConcurrentLinkedListNode$nextOrIfClosed$1$iv$iv$iv":I
    :cond_e
    move-object/from16 v17, v1

    .end local v1    # "curHead":Lkotlinx/coroutines/sync/SemaphoreSegment;
    .restart local v17    # "curHead":Lkotlinx/coroutines/sync/SemaphoreSegment;
    move-object v1, v13

    check-cast v1, Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;

    .line 363
    nop

    .line 362
    .end local v13    # "it$iv$iv$iv":Ljava/lang/Object;
    .end local v14    # "$i$a$-let-ConcurrentLinkedListNode$nextOrIfClosed$1$iv$iv$iv":I
    nop

    .line 368
    nop

    .line 361
    .end local v11    # "this_$iv$iv$iv":Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;
    .end local v12    # "$i$f$nextOrIfClosed":I
    check-cast v1, Lkotlinx/coroutines/internal/Segment;

    .line 369
    .local v1, "next$iv$iv":Lkotlinx/coroutines/internal/Segment;
    if-eqz v1, :cond_f

    .line 370
    move-object v10, v1

    .line 371
    move-object/from16 v1, v17

    goto/16 :goto_1

    .line 373
    :cond_f
    invoke-virtual {v10}, Lkotlinx/coroutines/internal/Segment;->getId()J

    move-result-wide v11

    const-wide/16 v13, 0x1

    add-long/2addr v11, v13

    .local v11, "p1":J
    move-object v13, v10

    check-cast v13, Lkotlinx/coroutines/sync/SemaphoreSegment;

    .local v13, "p2":Lkotlinx/coroutines/sync/SemaphoreSegment;
    const/4 v14, 0x0

    .line 224
    .local v14, "$i$a$-unknown-SemaphoreImpl$tryResumeNextFromQueue$segment$1":I
    invoke-static {v11, v12, v13}, Lkotlinx/coroutines/sync/SemaphoreKt;->access$createSegment(JLkotlinx/coroutines/sync/SemaphoreSegment;)Lkotlinx/coroutines/sync/SemaphoreSegment;

    move-result-object v11

    .end local v11    # "p1":J
    .end local v13    # "p2":Lkotlinx/coroutines/sync/SemaphoreSegment;
    .end local v14    # "$i$a$-unknown-SemaphoreImpl$tryResumeNextFromQueue$segment$1":I
    check-cast v11, Lkotlinx/coroutines/internal/Segment;

    .line 374
    .local v11, "newTail$iv$iv":Lkotlinx/coroutines/internal/Segment;
    move-object v12, v11

    check-cast v12, Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;

    invoke-virtual {v10, v12}, Lkotlinx/coroutines/internal/Segment;->trySetNext(Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;)Z

    move-result v12

    if-eqz v12, :cond_11

    .line 375
    invoke-virtual {v10}, Lkotlinx/coroutines/internal/Segment;->getRemoved()Z

    move-result v12

    if-eqz v12, :cond_10

    invoke-virtual {v10}, Lkotlinx/coroutines/internal/Segment;->remove()V

    .line 376
    :cond_10
    move-object v10, v11

    .line 360
    .end local v1    # "next$iv$iv":Lkotlinx/coroutines/internal/Segment;
    .end local v11    # "newTail$iv$iv":Lkotlinx/coroutines/internal/Segment;
    :cond_11
    move-object/from16 v1, v17

    goto/16 :goto_1
.end method


# virtual methods
.method public acquire(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .param p1, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 162
    sget-object v0, Lkotlinx/coroutines/sync/SemaphoreImpl;->_availablePermits$FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->getAndDecrement(Ljava/lang/Object;)I

    move-result v0

    .line 163
    .local v0, "p":I
    if-lez v0, :cond_0

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1

    .line 167
    :cond_0
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/sync/SemaphoreImpl;->acquireSlowPath(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    if-ne v1, v2, :cond_1

    return-object v1

    .line 168
    :cond_1
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1
.end method

.method final synthetic acquireSlowPath(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 10
    .param p1, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 170
    const/4 v0, 0x0

    .line 308
    .local v0, "$i$f$suspendCancellableCoroutineReusable":I
    move-object v1, p1

    .local v1, "uCont$iv":Lkotlin/coroutines/Continuation;
    const/4 v2, 0x0

    .line 309
    .local v2, "$i$a$-suspendCoroutineUninterceptedOrReturn-CancellableContinuationKt$suspendCancellableCoroutineReusable$2$iv":I
    invoke-static {v1}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v3

    invoke-static {v3}, Lkotlinx/coroutines/CancellableContinuationKt;->getOrCreateCancellableContinuation(Lkotlin/coroutines/Continuation;)Lkotlinx/coroutines/CancellableContinuationImpl;

    move-result-object v3

    .line 310
    .local v3, "cancellable$iv":Lkotlinx/coroutines/CancellableContinuationImpl;
    move-object v4, v3

    check-cast v4, Lkotlinx/coroutines/CancellableContinuation;

    .local v4, "cont":Lkotlinx/coroutines/CancellableContinuation;
    const/4 v5, 0x0

    .line 171
    .local v5, "$i$a$-suspendCancellableCoroutineReusable-SemaphoreImpl$acquireSlowPath$2":I
    :goto_0
    nop

    .line 172
    invoke-static {p0, v4}, Lkotlinx/coroutines/sync/SemaphoreImpl;->access$addAcquireToQueue(Lkotlinx/coroutines/sync/SemaphoreImpl;Lkotlinx/coroutines/CancellableContinuation;)Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_1

    .line 173
    :cond_0
    sget-object v6, Lkotlinx/coroutines/sync/SemaphoreImpl;->_availablePermits$FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v6, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->getAndDecrement(Ljava/lang/Object;)I

    move-result v6

    .line 174
    .local v6, "p":I
    if-lez v6, :cond_2

    .line 175
    move-object v7, v4

    check-cast v7, Lkotlin/coroutines/Continuation;

    sget-object v8, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    sget-object v9, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v8}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v7, v8}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    .line 176
    nop

    .line 311
    .end local v4    # "cont":Lkotlinx/coroutines/CancellableContinuation;
    .end local v5    # "$i$a$-suspendCancellableCoroutineReusable-SemaphoreImpl$acquireSlowPath$2":I
    .end local v6    # "p":I
    :goto_1
    invoke-virtual {v3}, Lkotlinx/coroutines/CancellableContinuationImpl;->getResult()Ljava/lang/Object;

    move-result-object v3

    .line 308
    .end local v1    # "uCont$iv":Lkotlin/coroutines/Continuation;
    .end local v2    # "$i$a$-suspendCoroutineUninterceptedOrReturn-CancellableContinuationKt$suspendCancellableCoroutineReusable$2$iv":I
    .end local v3    # "cancellable$iv":Lkotlinx/coroutines/CancellableContinuationImpl;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    if-ne v3, v1, :cond_1

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/DebugProbesKt;->probeCoroutineSuspended(Lkotlin/coroutines/Continuation;)V

    .line 312
    :cond_1
    nop

    .line 179
    .end local v0    # "$i$f$suspendCancellableCoroutineReusable":I
    return-object v3

    .line 171
    .restart local v0    # "$i$f$suspendCancellableCoroutineReusable":I
    .restart local v1    # "uCont$iv":Lkotlin/coroutines/Continuation;
    .restart local v2    # "$i$a$-suspendCoroutineUninterceptedOrReturn-CancellableContinuationKt$suspendCancellableCoroutineReusable$2$iv":I
    .restart local v3    # "cancellable$iv":Lkotlinx/coroutines/CancellableContinuationImpl;
    .restart local v4    # "cont":Lkotlinx/coroutines/CancellableContinuation;
    .restart local v5    # "$i$a$-suspendCancellableCoroutineReusable-SemaphoreImpl$acquireSlowPath$2":I
    :cond_2
    goto :goto_0
.end method

.method public getAvailablePermits()I
    .locals 2

    .line 150
    iget v0, p0, Lkotlinx/coroutines/sync/SemaphoreImpl;->_availablePermits:I

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public release()V
    .locals 8

    .line 182
    :goto_0
    nop

    .line 183
    move-object v0, p0

    .local v0, "$this$getAndUpdate$iv":Lkotlinx/coroutines/sync/SemaphoreImpl;
    const/4 v1, 0x0

    .line 313
    .local v1, "$i$f$getAndUpdate":I
    :goto_1
    nop

    .line 314
    iget v2, v0, Lkotlinx/coroutines/sync/SemaphoreImpl;->_availablePermits:I

    .line 315
    .local v2, "cur$iv":I
    move v3, v2

    .local v3, "cur":I
    const/4 v4, 0x0

    .line 184
    .local v4, "$i$a$-getAndUpdate-SemaphoreImpl$release$p$1":I
    iget v5, p0, Lkotlinx/coroutines/sync/SemaphoreImpl;->permits:I

    if-ge v3, v5, :cond_0

    const/4 v5, 0x1

    goto :goto_2

    :cond_0
    const/4 v5, 0x0

    :goto_2
    if-eqz v5, :cond_4

    .line 185
    add-int/lit8 v3, v3, 0x1

    .line 317
    .end local v4    # "$i$a$-getAndUpdate-SemaphoreImpl$release$p$1":I
    .local v3, "upd$iv":I
    sget-object v4, Lkotlinx/coroutines/sync/SemaphoreImpl;->_availablePermits$FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v4, v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 183
    .end local v0    # "$this$getAndUpdate$iv":Lkotlinx/coroutines/sync/SemaphoreImpl;
    .end local v1    # "$i$f$getAndUpdate":I
    .end local v2    # "cur$iv":I
    .end local v3    # "upd$iv":I
    move v0, v2

    .line 187
    .local v0, "p":I
    if-ltz v0, :cond_1

    return-void

    .line 188
    :cond_1
    invoke-direct {p0}, Lkotlinx/coroutines/sync/SemaphoreImpl;->tryResumeNextFromQueue()Z

    move-result v1

    if-eqz v1, :cond_2

    return-void

    .line 182
    .end local v0    # "p":I
    :cond_2
    goto :goto_0

    .line 313
    .local v0, "$this$getAndUpdate$iv":Lkotlinx/coroutines/sync/SemaphoreImpl;
    .restart local v1    # "$i$f$getAndUpdate":I
    :cond_3
    goto :goto_1

    .line 316
    .restart local v2    # "cur$iv":I
    .local v3, "cur":I
    .restart local v4    # "$i$a$-getAndUpdate-SemaphoreImpl$release$p$1":I
    :cond_4
    const/4 v5, 0x0

    .line 184
    .local v5, "$i$a$-check-SemaphoreImpl$release$p$1$1":I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "The number of released permits cannot be greater than "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Lkotlinx/coroutines/sync/SemaphoreImpl;->permits:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .end local v5    # "$i$a$-check-SemaphoreImpl$release$p$1$1":I
    new-instance v6, Ljava/lang/IllegalStateException;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v6, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v6, Ljava/lang/Throwable;

    throw v6
.end method

.method public tryAcquire()Z
    .locals 6

    .line 155
    move-object v0, p0

    .local v0, "$this$loop$iv":Lkotlinx/coroutines/sync/SemaphoreImpl;
    const/4 v1, 0x0

    .line 306
    .local v1, "$i$f$loop":I
    :goto_0
    nop

    .line 307
    iget v2, v0, Lkotlinx/coroutines/sync/SemaphoreImpl;->_availablePermits:I

    .local v2, "p":I
    const/4 v3, 0x0

    .line 156
    .local v3, "$i$a$-loop-SemaphoreImpl$tryAcquire$1":I
    if-gtz v2, :cond_0

    const/4 v4, 0x0

    return v4

    .line 157
    :cond_0
    sget-object v4, Lkotlinx/coroutines/sync/SemaphoreImpl;->_availablePermits$FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    add-int/lit8 v5, v2, -0x1

    invoke-virtual {v4, p0, v2, v5}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x1

    return v4

    .line 158
    :cond_1
    nop

    .line 306
    .end local v2    # "p":I
    .end local v3    # "$i$a$-loop-SemaphoreImpl$tryAcquire$1":I
    goto :goto_0
.end method
