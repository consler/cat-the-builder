.class final Lkotlinx/coroutines/flow/StateFlowImpl;
.super Lkotlinx/coroutines/flow/internal/AbstractSharedFlow;
.source "StateFlow.kt"

# interfaces
.implements Lkotlinx/coroutines/flow/MutableStateFlow;
.implements Lkotlinx/coroutines/flow/CancellableFlow;
.implements Lkotlinx/coroutines/flow/internal/FusibleFlow;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lkotlinx/coroutines/flow/internal/AbstractSharedFlow<",
        "Lkotlinx/coroutines/flow/StateFlowSlot;",
        ">;",
        "Lkotlinx/coroutines/flow/MutableStateFlow<",
        "TT;>;",
        "Lkotlinx/coroutines/flow/CancellableFlow<",
        "TT;>;",
        "Lkotlinx/coroutines/flow/internal/FusibleFlow<",
        "TT;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nStateFlow.kt\nKotlin\n*S Kotlin\n*F\n+ 1 StateFlow.kt\nkotlinx/coroutines/flow/StateFlowImpl\n+ 2 Symbol.kt\nkotlinx/coroutines/internal/Symbol\n+ 3 Synchronized.kt\nkotlinx/coroutines/internal/SynchronizedKt\n+ 4 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 5 CoroutineScope.kt\nkotlinx/coroutines/CoroutineScopeKt\n*L\n1#1,381:1\n16#2:382\n16#2:388\n20#3:383\n20#3:386\n13416#4,2:384\n259#5:387\n*E\n*S KotlinDebug\n*F\n+ 1 StateFlow.kt\nkotlinx/coroutines/flow/StateFlowImpl\n*L\n261#1:382\n342#1:388\n270#1:383\n298#1:386\n294#1,2:384\n331#1:387\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000h\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0011\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0010 \n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0008\u0002\u0018\u0000*\u0004\u0008\u0000\u0010\u00012\u0008\u0012\u0004\u0012\u00020\u0010052\u0008\u0012\u0004\u0012\u00028\u0000062\u0008\u0012\u0004\u0012\u00028\u0000072\u0008\u0012\u0004\u0012\u00028\u000008B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J!\u0010\t\u001a\u00020\u00082\u000c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0006H\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\t\u0010\nJ\u001f\u0010\u000e\u001a\u00020\r2\u0006\u0010\u000b\u001a\u00028\u00002\u0006\u0010\u000c\u001a\u00028\u0000H\u0016\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u000f\u0010\u0011\u001a\u00020\u0010H\u0014\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\u001f\u0010\u0016\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00100\u00152\u0006\u0010\u0014\u001a\u00020\u0013H\u0014\u00a2\u0006\u0004\u0008\u0016\u0010\u0017J\u001b\u0010\u0019\u001a\u00020\u00082\u0006\u0010\u0018\u001a\u00028\u0000H\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0019\u0010\u001aJ-\u0010!\u001a\u0008\u0012\u0004\u0012\u00028\u00000 2\u0006\u0010\u001c\u001a\u00020\u001b2\u0006\u0010\u001d\u001a\u00020\u00132\u0006\u0010\u001f\u001a\u00020\u001eH\u0016\u00a2\u0006\u0004\u0008!\u0010\"J\u000f\u0010#\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008#\u0010$J\u0017\u0010%\u001a\u00020\r2\u0006\u0010\u0018\u001a\u00028\u0000H\u0016\u00a2\u0006\u0004\u0008%\u0010&J!\u0010)\u001a\u00020\r2\u0008\u0010\'\u001a\u0004\u0018\u00010\u00022\u0006\u0010(\u001a\u00020\u0002H\u0002\u00a2\u0006\u0004\u0008)\u0010\u000fR\u001c\u0010-\u001a\u0008\u0012\u0004\u0012\u00028\u00000*8V@\u0016X\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008+\u0010,R\u0016\u0010.\u001a\u00020\u00138\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008.\u0010/R*\u0010\u0018\u001a\u00028\u00002\u0006\u0010\u0018\u001a\u00028\u00008V@VX\u0096\u000e\u00a2\u0006\u0012\u0012\u0004\u00083\u0010$\u001a\u0004\u00080\u00101\"\u0004\u00082\u0010\u0005\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u00064"
    }
    d2 = {
        "Lkotlinx/coroutines/flow/StateFlowImpl;",
        "T",
        "",
        "initialState",
        "<init>",
        "(Ljava/lang/Object;)V",
        "Lkotlinx/coroutines/flow/FlowCollector;",
        "collector",
        "",
        "collect",
        "(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "expect",
        "update",
        "",
        "compareAndSet",
        "(Ljava/lang/Object;Ljava/lang/Object;)Z",
        "Lkotlinx/coroutines/flow/StateFlowSlot;",
        "createSlot",
        "()Lkotlinx/coroutines/flow/StateFlowSlot;",
        "",
        "size",
        "",
        "createSlotArray",
        "(I)[Lkotlinx/coroutines/flow/StateFlowSlot;",
        "value",
        "emit",
        "(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "Lkotlin/coroutines/CoroutineContext;",
        "context",
        "capacity",
        "Lkotlinx/coroutines/channels/BufferOverflow;",
        "onBufferOverflow",
        "Lkotlinx/coroutines/flow/Flow;",
        "fuse",
        "(Lkotlin/coroutines/CoroutineContext;ILkotlinx/coroutines/channels/BufferOverflow;)Lkotlinx/coroutines/flow/Flow;",
        "resetReplayCache",
        "()V",
        "tryEmit",
        "(Ljava/lang/Object;)Z",
        "expectedState",
        "newState",
        "updateState",
        "",
        "getReplayCache",
        "()Ljava/util/List;",
        "replayCache",
        "sequence",
        "I",
        "getValue",
        "()Ljava/lang/Object;",
        "setValue",
        "getValue$annotations",
        "kotlinx-coroutines-core",
        "Lkotlinx/coroutines/flow/internal/AbstractSharedFlow;",
        "Lkotlinx/coroutines/flow/MutableStateFlow;",
        "Lkotlinx/coroutines/flow/CancellableFlow;",
        "Lkotlinx/coroutines/flow/internal/FusibleFlow;"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x0
    }
.end annotation


# instance fields
.field private volatile _state:Ljava/lang/Object;

.field private sequence:I


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .param p1, "initialState"    # Ljava/lang/Object;

    .line 253
    nop

    .line 255
    invoke-direct {p0}, Lkotlinx/coroutines/flow/internal/AbstractSharedFlow;-><init>()V

    .line 256
    iput-object p1, p0, Lkotlinx/coroutines/flow/StateFlowImpl;->_state:Ljava/lang/Object;

    return-void
.end method

.method public static synthetic getValue$annotations()V
    .locals 0

    return-void
.end method

.method private final updateState(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 11
    .param p1, "expectedState"    # Ljava/lang/Object;
    .param p2, "newState"    # Ljava/lang/Object;

    .line 268
    const/4 v0, 0x0

    .line 269
    .local v0, "curSequence":I
    invoke-virtual {p0}, Lkotlinx/coroutines/flow/StateFlowImpl;->getSlots()[Lkotlinx/coroutines/flow/internal/AbstractSharedFlowSlot;

    move-result-object v1

    check-cast v1, [Lkotlinx/coroutines/flow/StateFlowSlot;

    .line 270
    .local v1, "curSlots":Ljava/lang/Object;
    move-object v2, p0

    .local v2, "lock$iv":Ljava/lang/Object;
    const/4 v3, 0x0

    .line 383
    .local v3, "$i$f$synchronized":I
    monitor-enter v2

    const/4 v4, 0x0

    .line 271
    .local v4, "$i$a$-synchronized-StateFlowImpl$updateState$1":I
    :try_start_0
    iget-object v5, p0, Lkotlinx/coroutines/flow/StateFlowImpl;->_state:Ljava/lang/Object;

    .line 272
    .local v5, "oldState":Ljava/lang/Object;
    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz p1, :cond_0

    invoke-static {v5, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    xor-int/2addr v8, v7

    if-eqz v8, :cond_0

    .end local v2    # "lock$iv":Ljava/lang/Object;
    .end local v3    # "$i$f$synchronized":I
    .end local v4    # "$i$a$-synchronized-StateFlowImpl$updateState$1":I
    .end local v5    # "oldState":Ljava/lang/Object;
    monitor-exit v2

    return v6

    .line 273
    .restart local v2    # "lock$iv":Ljava/lang/Object;
    .restart local v3    # "$i$f$synchronized":I
    .restart local v4    # "$i$a$-synchronized-StateFlowImpl$updateState$1":I
    .restart local v5    # "oldState":Ljava/lang/Object;
    :cond_0
    :try_start_1
    invoke-static {v5, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v8, :cond_1

    .end local v2    # "lock$iv":Ljava/lang/Object;
    .end local v3    # "$i$f$synchronized":I
    .end local v4    # "$i$a$-synchronized-StateFlowImpl$updateState$1":I
    .end local v5    # "oldState":Ljava/lang/Object;
    monitor-exit v2

    return v7

    .line 274
    .restart local v2    # "lock$iv":Ljava/lang/Object;
    .restart local v3    # "$i$f$synchronized":I
    .restart local v4    # "$i$a$-synchronized-StateFlowImpl$updateState$1":I
    .restart local v5    # "oldState":Ljava/lang/Object;
    :cond_1
    :try_start_2
    iput-object p2, p0, Lkotlinx/coroutines/flow/StateFlowImpl;->_state:Ljava/lang/Object;

    .line 275
    iget v8, p0, Lkotlinx/coroutines/flow/StateFlowImpl;->sequence:I

    move v0, v8

    .line 276
    and-int/lit8 v8, v0, 0x1

    if-nez v8, :cond_5

    .line 277
    add-int/lit8 v0, v0, 0x1

    .line 278
    iput v0, p0, Lkotlinx/coroutines/flow/StateFlowImpl;->sequence:I

    .line 284
    invoke-virtual {p0}, Lkotlinx/coroutines/flow/StateFlowImpl;->getSlots()[Lkotlinx/coroutines/flow/internal/AbstractSharedFlowSlot;

    move-result-object v8

    check-cast v8, [Lkotlinx/coroutines/flow/StateFlowSlot;

    move-object v1, v8

    .line 285
    .end local v5    # "oldState":Ljava/lang/Object;
    nop

    .end local v4    # "$i$a$-synchronized-StateFlowImpl$updateState$1":I
    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v2

    .line 383
    nop

    .line 292
    .end local v2    # "lock$iv":Ljava/lang/Object;
    .end local v3    # "$i$f$synchronized":I
    :goto_0
    nop

    .line 294
    if-eqz v1, :cond_3

    move-object v2, v1

    .local v2, "$this$forEach$iv":[Ljava/lang/Object;
    const/4 v3, 0x0

    .line 384
    .local v3, "$i$f$forEach":I
    array-length v4, v2

    move v5, v6

    :goto_1
    if-ge v5, v4, :cond_3

    aget-object v8, v2, v5

    .local v8, "element$iv":Ljava/lang/Object;
    move-object v9, v8

    .local v9, "it":Lkotlinx/coroutines/flow/StateFlowSlot;
    const/4 v10, 0x0

    .line 295
    .local v10, "$i$a$-forEach-StateFlowImpl$updateState$2":I
    if-eqz v9, :cond_2

    invoke-virtual {v9}, Lkotlinx/coroutines/flow/StateFlowSlot;->makePending()V

    .line 296
    .end local v9    # "it":Lkotlinx/coroutines/flow/StateFlowSlot;
    .end local v10    # "$i$a$-forEach-StateFlowImpl$updateState$2":I
    :cond_2
    nop

    .end local v8    # "element$iv":Ljava/lang/Object;
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 385
    .end local v2    # "$this$forEach$iv":[Ljava/lang/Object;
    .end local v3    # "$i$f$forEach":I
    :cond_3
    nop

    .line 298
    move-object v2, p0

    .local v2, "lock$iv":Ljava/lang/Object;
    const/4 v3, 0x0

    .line 386
    .local v3, "$i$f$synchronized":I
    monitor-enter v2

    const/4 v4, 0x0

    .line 299
    .local v4, "$i$a$-synchronized-StateFlowImpl$updateState$3":I
    :try_start_3
    iget v5, p0, Lkotlinx/coroutines/flow/StateFlowImpl;->sequence:I

    if-ne v5, v0, :cond_4

    .line 300
    add-int/lit8 v5, v0, 0x1

    iput v5, p0, Lkotlinx/coroutines/flow/StateFlowImpl;->sequence:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 301
    nop

    .end local v2    # "lock$iv":Ljava/lang/Object;
    .end local v3    # "$i$f$synchronized":I
    .end local v4    # "$i$a$-synchronized-StateFlowImpl$updateState$3":I
    monitor-exit v2

    return v7

    .line 304
    .restart local v2    # "lock$iv":Ljava/lang/Object;
    .restart local v3    # "$i$f$synchronized":I
    .restart local v4    # "$i$a$-synchronized-StateFlowImpl$updateState$3":I
    :cond_4
    :try_start_4
    iget v5, p0, Lkotlinx/coroutines/flow/StateFlowImpl;->sequence:I

    move v0, v5

    .line 305
    invoke-virtual {p0}, Lkotlinx/coroutines/flow/StateFlowImpl;->getSlots()[Lkotlinx/coroutines/flow/internal/AbstractSharedFlowSlot;

    move-result-object v5

    check-cast v5, [Lkotlinx/coroutines/flow/StateFlowSlot;

    move-object v1, v5

    .line 306
    .end local v4    # "$i$a$-synchronized-StateFlowImpl$updateState$3":I
    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit v2

    .line 386
    nop

    .line 292
    .end local v2    # "lock$iv":Ljava/lang/Object;
    .end local v3    # "$i$f$synchronized":I
    goto :goto_0

    .line 306
    .restart local v2    # "lock$iv":Ljava/lang/Object;
    .restart local v3    # "$i$f$synchronized":I
    :catchall_0
    move-exception v4

    monitor-exit v2

    throw v4

    .line 281
    .local v4, "$i$a$-synchronized-StateFlowImpl$updateState$1":I
    .restart local v5    # "oldState":Ljava/lang/Object;
    :cond_5
    add-int/lit8 v6, v0, 0x2

    :try_start_5
    iput v6, p0, Lkotlinx/coroutines/flow/StateFlowImpl;->sequence:I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 282
    nop

    .end local v2    # "lock$iv":Ljava/lang/Object;
    .end local v3    # "$i$f$synchronized":I
    .end local v4    # "$i$a$-synchronized-StateFlowImpl$updateState$1":I
    .end local v5    # "oldState":Ljava/lang/Object;
    monitor-exit v2

    return v7

    .line 285
    .restart local v2    # "lock$iv":Ljava/lang/Object;
    .restart local v3    # "$i$f$synchronized":I
    :catchall_1
    move-exception v4

    monitor-exit v2

    throw v4
.end method


# virtual methods
.method public collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 17
    .param p1, "collector"    # Lkotlinx/coroutines/flow/FlowCollector;
    .param p2, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/flow/FlowCollector<",
            "-TT;>;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    instance-of v0, v3, Lkotlinx/coroutines/flow/StateFlowImpl$collect$1;

    if-eqz v0, :cond_0

    move-object v0, v3

    check-cast v0, Lkotlinx/coroutines/flow/StateFlowImpl$collect$1;

    iget v4, v0, Lkotlinx/coroutines/flow/StateFlowImpl$collect$1;->label:I

    const/high16 v5, -0x80000000

    and-int/2addr v4, v5

    if-eqz v4, :cond_0

    iget v4, v0, Lkotlinx/coroutines/flow/StateFlowImpl$collect$1;->label:I

    sub-int/2addr v4, v5

    iput v4, v0, Lkotlinx/coroutines/flow/StateFlowImpl$collect$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lkotlinx/coroutines/flow/StateFlowImpl$collect$1;

    invoke-direct {v0, v1, v3}, Lkotlinx/coroutines/flow/StateFlowImpl$collect$1;-><init>(Lkotlinx/coroutines/flow/StateFlowImpl;Lkotlin/coroutines/Continuation;)V

    :goto_0
    move-object v4, v0

    .local v4, "$continuation":Lkotlin/coroutines/Continuation;
    iget-object v5, v4, Lkotlinx/coroutines/flow/StateFlowImpl$collect$1;->result:Ljava/lang/Object;

    .local v5, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 327
    iget v6, v4, Lkotlinx/coroutines/flow/StateFlowImpl$collect$1;->label:I

    const/4 v7, 0x3

    const/4 v8, 0x2

    const/4 v9, 0x1

    const/4 v10, 0x0

    if-eqz v6, :cond_4

    if-eq v6, v9, :cond_3

    if-eq v6, v8, :cond_2

    if-ne v6, v7, :cond_1

    move-object v6, v10

    .local v6, "newState":Ljava/lang/Object;
    move-object v11, v10

    .local v11, "collectorJob":Lkotlinx/coroutines/Job;
    move-object v12, v10

    .local v12, "slot":Lkotlinx/coroutines/flow/StateFlowSlot;
    move-object v13, v10

    .local v13, "oldState":Ljava/lang/Object;
    iget-object v6, v4, Lkotlinx/coroutines/flow/StateFlowImpl$collect$1;->L$5:Ljava/lang/Object;

    iget-object v13, v4, Lkotlinx/coroutines/flow/StateFlowImpl$collect$1;->L$4:Ljava/lang/Object;

    iget-object v14, v4, Lkotlinx/coroutines/flow/StateFlowImpl$collect$1;->L$3:Ljava/lang/Object;

    move-object v11, v14

    check-cast v11, Lkotlinx/coroutines/Job;

    iget-object v14, v4, Lkotlinx/coroutines/flow/StateFlowImpl$collect$1;->L$2:Ljava/lang/Object;

    move-object v12, v14

    check-cast v12, Lkotlinx/coroutines/flow/StateFlowSlot;

    iget-object v14, v4, Lkotlinx/coroutines/flow/StateFlowImpl$collect$1;->L$1:Ljava/lang/Object;

    move-object v2, v14

    check-cast v2, Lkotlinx/coroutines/flow/FlowCollector;

    .end local p1    # "collector":Lkotlinx/coroutines/flow/FlowCollector;
    .local v2, "collector":Lkotlinx/coroutines/flow/FlowCollector;
    iget-object v14, v4, Lkotlinx/coroutines/flow/StateFlowImpl$collect$1;->L$0:Ljava/lang/Object;

    check-cast v14, Lkotlinx/coroutines/flow/StateFlowImpl;

    .end local p0    # "this":Lkotlinx/coroutines/flow/StateFlowImpl;
    .local v14, "this":Lkotlinx/coroutines/flow/StateFlowImpl;
    :try_start_0
    invoke-static {v5}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_6

    .line 352
    .end local v2    # "collector":Lkotlinx/coroutines/flow/FlowCollector;
    .end local v4    # "$continuation":Lkotlin/coroutines/Continuation;
    .end local v5    # "$result":Ljava/lang/Object;
    .end local v6    # "newState":Ljava/lang/Object;
    .end local v11    # "collectorJob":Lkotlinx/coroutines/Job;
    .end local v12    # "slot":Lkotlinx/coroutines/flow/StateFlowSlot;
    .end local v13    # "oldState":Ljava/lang/Object;
    .end local v14    # "this":Lkotlinx/coroutines/flow/StateFlowImpl;
    .restart local p1    # "collector":Lkotlinx/coroutines/flow/FlowCollector;
    :cond_1
    nop

    .line 353
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v4, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 327
    .restart local v4    # "$continuation":Lkotlin/coroutines/Continuation;
    .restart local v5    # "$result":Ljava/lang/Object;
    :cond_2
    move-object v6, v10

    .restart local v6    # "newState":Ljava/lang/Object;
    move-object v11, v10

    .restart local v11    # "collectorJob":Lkotlinx/coroutines/Job;
    move-object v12, v10

    .restart local v12    # "slot":Lkotlinx/coroutines/flow/StateFlowSlot;
    move-object v13, v10

    .restart local v13    # "oldState":Ljava/lang/Object;
    iget-object v6, v4, Lkotlinx/coroutines/flow/StateFlowImpl$collect$1;->L$5:Ljava/lang/Object;

    iget-object v13, v4, Lkotlinx/coroutines/flow/StateFlowImpl$collect$1;->L$4:Ljava/lang/Object;

    iget-object v14, v4, Lkotlinx/coroutines/flow/StateFlowImpl$collect$1;->L$3:Ljava/lang/Object;

    move-object v11, v14

    check-cast v11, Lkotlinx/coroutines/Job;

    iget-object v14, v4, Lkotlinx/coroutines/flow/StateFlowImpl$collect$1;->L$2:Ljava/lang/Object;

    move-object v12, v14

    check-cast v12, Lkotlinx/coroutines/flow/StateFlowSlot;

    iget-object v14, v4, Lkotlinx/coroutines/flow/StateFlowImpl$collect$1;->L$1:Ljava/lang/Object;

    move-object v2, v14

    check-cast v2, Lkotlinx/coroutines/flow/FlowCollector;

    .end local p1    # "collector":Lkotlinx/coroutines/flow/FlowCollector;
    .restart local v2    # "collector":Lkotlinx/coroutines/flow/FlowCollector;
    iget-object v14, v4, Lkotlinx/coroutines/flow/StateFlowImpl$collect$1;->L$0:Ljava/lang/Object;

    check-cast v14, Lkotlinx/coroutines/flow/StateFlowImpl;

    .restart local v14    # "this":Lkotlinx/coroutines/flow/StateFlowImpl;
    :try_start_1
    invoke-static {v5}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_5

    .end local v2    # "collector":Lkotlinx/coroutines/flow/FlowCollector;
    .end local v6    # "newState":Ljava/lang/Object;
    .end local v11    # "collectorJob":Lkotlinx/coroutines/Job;
    .end local v12    # "slot":Lkotlinx/coroutines/flow/StateFlowSlot;
    .end local v13    # "oldState":Ljava/lang/Object;
    .end local v14    # "this":Lkotlinx/coroutines/flow/StateFlowImpl;
    .restart local p1    # "collector":Lkotlinx/coroutines/flow/FlowCollector;
    :cond_3
    move-object v6, v10

    .local v6, "slot":Lkotlinx/coroutines/flow/StateFlowSlot;
    iget-object v11, v4, Lkotlinx/coroutines/flow/StateFlowImpl$collect$1;->L$2:Ljava/lang/Object;

    move-object v12, v11

    check-cast v12, Lkotlinx/coroutines/flow/StateFlowSlot;

    .end local v6    # "slot":Lkotlinx/coroutines/flow/StateFlowSlot;
    .restart local v12    # "slot":Lkotlinx/coroutines/flow/StateFlowSlot;
    iget-object v6, v4, Lkotlinx/coroutines/flow/StateFlowImpl$collect$1;->L$1:Ljava/lang/Object;

    move-object v2, v6

    check-cast v2, Lkotlinx/coroutines/flow/FlowCollector;

    .end local p1    # "collector":Lkotlinx/coroutines/flow/FlowCollector;
    .restart local v2    # "collector":Lkotlinx/coroutines/flow/FlowCollector;
    iget-object v6, v4, Lkotlinx/coroutines/flow/StateFlowImpl$collect$1;->L$0:Ljava/lang/Object;

    move-object v14, v6

    check-cast v14, Lkotlinx/coroutines/flow/StateFlowImpl;

    .restart local v14    # "this":Lkotlinx/coroutines/flow/StateFlowImpl;
    :try_start_2
    invoke-static {v5}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 352
    :catchall_0
    move-exception v0

    goto/16 :goto_7

    .line 327
    .end local v2    # "collector":Lkotlinx/coroutines/flow/FlowCollector;
    .end local v12    # "slot":Lkotlinx/coroutines/flow/StateFlowSlot;
    .end local v14    # "this":Lkotlinx/coroutines/flow/StateFlowImpl;
    .restart local p1    # "collector":Lkotlinx/coroutines/flow/FlowCollector;
    :cond_4
    invoke-static {v5}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 328
    invoke-virtual/range {p0 .. p0}, Lkotlinx/coroutines/flow/StateFlowImpl;->allocateSlot()Lkotlinx/coroutines/flow/internal/AbstractSharedFlowSlot;

    move-result-object v6

    move-object v12, v6

    check-cast v12, Lkotlinx/coroutines/flow/StateFlowSlot;

    .line 329
    .restart local v12    # "slot":Lkotlinx/coroutines/flow/StateFlowSlot;
    nop

    .line 330
    :try_start_3
    instance-of v6, v2, Lkotlinx/coroutines/flow/SubscribedFlowCollector;

    if-eqz v6, :cond_6

    move-object v6, v2

    check-cast v6, Lkotlinx/coroutines/flow/SubscribedFlowCollector;

    iput-object v1, v4, Lkotlinx/coroutines/flow/StateFlowImpl$collect$1;->L$0:Ljava/lang/Object;

    iput-object v2, v4, Lkotlinx/coroutines/flow/StateFlowImpl$collect$1;->L$1:Ljava/lang/Object;

    iput-object v12, v4, Lkotlinx/coroutines/flow/StateFlowImpl$collect$1;->L$2:Ljava/lang/Object;

    iput v9, v4, Lkotlinx/coroutines/flow/StateFlowImpl$collect$1;->label:I

    invoke-virtual {v6, v4}, Lkotlinx/coroutines/flow/SubscribedFlowCollector;->onSubscription(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-ne v6, v0, :cond_5

    .line 327
    return-object v0

    .line 330
    :cond_5
    move-object v14, v1

    .line 331
    .end local p1    # "collector":Lkotlinx/coroutines/flow/FlowCollector;
    .restart local v2    # "collector":Lkotlinx/coroutines/flow/FlowCollector;
    .restart local v14    # "this":Lkotlinx/coroutines/flow/StateFlowImpl;
    :goto_1
    goto :goto_2

    .line 330
    .end local v2    # "collector":Lkotlinx/coroutines/flow/FlowCollector;
    .end local v14    # "this":Lkotlinx/coroutines/flow/StateFlowImpl;
    .restart local p1    # "collector":Lkotlinx/coroutines/flow/FlowCollector;
    :cond_6
    move-object v14, v1

    .line 331
    .end local p1    # "collector":Lkotlinx/coroutines/flow/FlowCollector;
    .restart local v2    # "collector":Lkotlinx/coroutines/flow/FlowCollector;
    .restart local v14    # "this":Lkotlinx/coroutines/flow/StateFlowImpl;
    :goto_2
    const/4 v6, 0x0

    .line 387
    .local v6, "$i$f$currentCoroutineContext":I
    :try_start_4
    invoke-interface {v4}, Lkotlin/coroutines/Continuation;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v11

    .line 331
    .end local v6    # "$i$f$currentCoroutineContext":I
    sget-object v6, Lkotlinx/coroutines/Job;->Key:Lkotlinx/coroutines/Job$Key;

    check-cast v6, Lkotlin/coroutines/CoroutineContext$Key;

    invoke-interface {v11, v6}, Lkotlin/coroutines/CoroutineContext;->get(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext$Element;

    move-result-object v6

    check-cast v6, Lkotlinx/coroutines/Job;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 332
    .local v6, "collectorJob":Lkotlinx/coroutines/Job;
    const/4 v11, 0x0

    move-object v13, v11

    move-object v11, v6

    .line 334
    .end local v6    # "collectorJob":Lkotlinx/coroutines/Job;
    .end local p2    # "$completion":Lkotlin/coroutines/Continuation;
    .local v3, "$completion":Lkotlin/coroutines/Continuation;
    .restart local v11    # "collectorJob":Lkotlinx/coroutines/Job;
    .restart local v13    # "oldState":Ljava/lang/Object;
    :cond_7
    :goto_3
    nop

    .line 337
    :try_start_5
    iget-object v6, v14, Lkotlinx/coroutines/flow/StateFlowImpl;->_state:Ljava/lang/Object;

    .line 339
    .local v6, "newState":Ljava/lang/Object;
    if-eqz v11, :cond_8

    invoke-static {v11}, Lkotlinx/coroutines/JobKt;->ensureActive(Lkotlinx/coroutines/Job;)V

    .line 341
    :cond_8
    if-eqz v13, :cond_9

    invoke-static {v13, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v15

    xor-int/2addr v15, v9

    if-eqz v15, :cond_c

    .line 342
    :cond_9
    sget-object v15, Lkotlinx/coroutines/flow/internal/NullSurrogateKt;->NULL:Lkotlinx/coroutines/internal/Symbol;

    .local v15, "this_$iv":Lkotlinx/coroutines/internal/Symbol;
    const/16 v16, 0x0

    .line 388
    .local v16, "$i$f$unbox":I
    if-ne v6, v15, :cond_a

    move-object v15, v10

    goto :goto_4

    :cond_a
    move-object v15, v6

    .end local v15    # "this_$iv":Lkotlinx/coroutines/internal/Symbol;
    .end local v16    # "$i$f$unbox":I
    :goto_4
    iput-object v14, v4, Lkotlinx/coroutines/flow/StateFlowImpl$collect$1;->L$0:Ljava/lang/Object;

    iput-object v2, v4, Lkotlinx/coroutines/flow/StateFlowImpl$collect$1;->L$1:Ljava/lang/Object;

    iput-object v12, v4, Lkotlinx/coroutines/flow/StateFlowImpl$collect$1;->L$2:Ljava/lang/Object;

    iput-object v11, v4, Lkotlinx/coroutines/flow/StateFlowImpl$collect$1;->L$3:Ljava/lang/Object;

    iput-object v13, v4, Lkotlinx/coroutines/flow/StateFlowImpl$collect$1;->L$4:Ljava/lang/Object;

    iput-object v6, v4, Lkotlinx/coroutines/flow/StateFlowImpl$collect$1;->L$5:Ljava/lang/Object;

    iput v8, v4, Lkotlinx/coroutines/flow/StateFlowImpl$collect$1;->label:I

    .line 342
    invoke-interface {v2, v15, v4}, Lkotlinx/coroutines/flow/FlowCollector;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v15

    if-ne v15, v0, :cond_b

    .line 327
    return-object v0

    .line 343
    :cond_b
    :goto_5
    move-object v13, v6

    .line 346
    :cond_c
    invoke-virtual {v12}, Lkotlinx/coroutines/flow/StateFlowSlot;->takePending()Z

    move-result v15

    if-nez v15, :cond_7

    .line 347
    iput-object v14, v4, Lkotlinx/coroutines/flow/StateFlowImpl$collect$1;->L$0:Ljava/lang/Object;

    iput-object v2, v4, Lkotlinx/coroutines/flow/StateFlowImpl$collect$1;->L$1:Ljava/lang/Object;

    iput-object v12, v4, Lkotlinx/coroutines/flow/StateFlowImpl$collect$1;->L$2:Ljava/lang/Object;

    iput-object v11, v4, Lkotlinx/coroutines/flow/StateFlowImpl$collect$1;->L$3:Ljava/lang/Object;

    iput-object v13, v4, Lkotlinx/coroutines/flow/StateFlowImpl$collect$1;->L$4:Ljava/lang/Object;

    iput-object v6, v4, Lkotlinx/coroutines/flow/StateFlowImpl$collect$1;->L$5:Ljava/lang/Object;

    iput v7, v4, Lkotlinx/coroutines/flow/StateFlowImpl$collect$1;->label:I

    invoke-virtual {v12, v4}, Lkotlinx/coroutines/flow/StateFlowSlot;->awaitPending(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v15
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-ne v15, v0, :cond_d

    .line 327
    return-object v0

    .line 334
    :cond_d
    :goto_6
    goto :goto_3

    .line 352
    .end local v6    # "newState":Ljava/lang/Object;
    .end local v11    # "collectorJob":Lkotlinx/coroutines/Job;
    .end local v13    # "oldState":Ljava/lang/Object;
    :catchall_1
    move-exception v0

    goto :goto_7

    .end local v2    # "collector":Lkotlinx/coroutines/flow/FlowCollector;
    .end local v3    # "$completion":Lkotlin/coroutines/Continuation;
    .end local v14    # "this":Lkotlinx/coroutines/flow/StateFlowImpl;
    .restart local p1    # "collector":Lkotlinx/coroutines/flow/FlowCollector;
    .restart local p2    # "$completion":Lkotlin/coroutines/Continuation;
    :catchall_2
    move-exception v0

    move-object v14, v1

    .line 351
    .end local p1    # "collector":Lkotlinx/coroutines/flow/FlowCollector;
    .end local p2    # "$completion":Lkotlin/coroutines/Continuation;
    .restart local v2    # "collector":Lkotlinx/coroutines/flow/FlowCollector;
    .restart local v3    # "$completion":Lkotlin/coroutines/Continuation;
    .restart local v14    # "this":Lkotlinx/coroutines/flow/StateFlowImpl;
    :goto_7
    move-object v6, v12

    check-cast v6, Lkotlinx/coroutines/flow/internal/AbstractSharedFlowSlot;

    invoke-virtual {v14, v6}, Lkotlinx/coroutines/flow/StateFlowImpl;->freeSlot(Lkotlinx/coroutines/flow/internal/AbstractSharedFlowSlot;)V

    throw v0
.end method

.method public compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2
    .param p1, "expect"    # Ljava/lang/Object;
    .param p2, "update"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)Z"
        }
    .end annotation

    .line 265
    if-eqz p1, :cond_0

    move-object v0, p1

    goto :goto_0

    :cond_0
    sget-object v0, Lkotlinx/coroutines/flow/internal/NullSurrogateKt;->NULL:Lkotlinx/coroutines/internal/Symbol;

    :goto_0
    if-eqz p2, :cond_1

    move-object v1, p2

    goto :goto_1

    :cond_1
    sget-object v1, Lkotlinx/coroutines/flow/internal/NullSurrogateKt;->NULL:Lkotlinx/coroutines/internal/Symbol;

    :goto_1
    invoke-direct {p0, v0, v1}, Lkotlinx/coroutines/flow/StateFlowImpl;->updateState(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected createSlot()Lkotlinx/coroutines/flow/StateFlowSlot;
    .locals 1

    .line 355
    new-instance v0, Lkotlinx/coroutines/flow/StateFlowSlot;

    invoke-direct {v0}, Lkotlinx/coroutines/flow/StateFlowSlot;-><init>()V

    return-object v0
.end method

.method public bridge synthetic createSlot()Lkotlinx/coroutines/flow/internal/AbstractSharedFlowSlot;
    .locals 1

    .line 253
    invoke-virtual {p0}, Lkotlinx/coroutines/flow/StateFlowImpl;->createSlot()Lkotlinx/coroutines/flow/StateFlowSlot;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/flow/internal/AbstractSharedFlowSlot;

    return-object v0
.end method

.method protected createSlotArray(I)[Lkotlinx/coroutines/flow/StateFlowSlot;
    .locals 1
    .param p1, "size"    # I

    .line 356
    new-array v0, p1, [Lkotlinx/coroutines/flow/StateFlowSlot;

    return-object v0
.end method

.method public bridge synthetic createSlotArray(I)[Lkotlinx/coroutines/flow/internal/AbstractSharedFlowSlot;
    .locals 0

    .line 253
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/flow/StateFlowImpl;->createSlotArray(I)[Lkotlinx/coroutines/flow/StateFlowSlot;

    move-result-object p1

    check-cast p1, [Lkotlinx/coroutines/flow/internal/AbstractSharedFlowSlot;

    return-object p1
.end method

.method public emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;
    .param p2, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 319
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/flow/StateFlowImpl;->setValue(Ljava/lang/Object;)V

    .line 320
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public fuse(Lkotlin/coroutines/CoroutineContext;ILkotlinx/coroutines/channels/BufferOverflow;)Lkotlinx/coroutines/flow/Flow;
    .locals 1
    .param p1, "context"    # Lkotlin/coroutines/CoroutineContext;
    .param p2, "capacity"    # I
    .param p3, "onBufferOverflow"    # Lkotlinx/coroutines/channels/BufferOverflow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/CoroutineContext;",
            "I",
            "Lkotlinx/coroutines/channels/BufferOverflow;",
            ")",
            "Lkotlinx/coroutines/flow/Flow<",
            "TT;>;"
        }
    .end annotation

    .line 359
    invoke-static {p0, p1, p2, p3}, Lkotlinx/coroutines/flow/StateFlowKt;->fuseStateFlow(Lkotlinx/coroutines/flow/StateFlow;Lkotlin/coroutines/CoroutineContext;ILkotlinx/coroutines/channels/BufferOverflow;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v0

    return-object v0
.end method

.method public getReplayCache()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 311
    invoke-virtual {p0}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 261
    sget-object v0, Lkotlinx/coroutines/flow/internal/NullSurrogateKt;->NULL:Lkotlinx/coroutines/internal/Symbol;

    .local v0, "this_$iv":Lkotlinx/coroutines/internal/Symbol;
    iget-object v1, p0, Lkotlinx/coroutines/flow/StateFlowImpl;->_state:Ljava/lang/Object;

    .local v1, "value$iv":Ljava/lang/Object;
    const/4 v2, 0x0

    .line 382
    .local v2, "$i$f$unbox":I
    if-ne v1, v0, :cond_0

    const/4 v3, 0x0

    move-object v1, v3

    .line 261
    .end local v0    # "this_$iv":Lkotlinx/coroutines/internal/Symbol;
    .end local v1    # "value$iv":Ljava/lang/Object;
    .end local v2    # "$i$f$unbox":I
    :cond_0
    return-object v1
.end method

.method public resetReplayCache()V
    .locals 2

    .line 324
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "MutableStateFlow.resetReplayCache is not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method

.method public setValue(Ljava/lang/Object;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 262
    if-eqz p1, :cond_0

    move-object v0, p1

    goto :goto_0

    :cond_0
    sget-object v0, Lkotlinx/coroutines/flow/internal/NullSurrogateKt;->NULL:Lkotlinx/coroutines/internal/Symbol;

    :goto_0
    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lkotlinx/coroutines/flow/StateFlowImpl;->updateState(Ljava/lang/Object;Ljava/lang/Object;)Z

    return-void
.end method

.method public tryEmit(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 314
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/flow/StateFlowImpl;->setValue(Ljava/lang/Object;)V

    .line 315
    const/4 v0, 0x1

    return v0
.end method
