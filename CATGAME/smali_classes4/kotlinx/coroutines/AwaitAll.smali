.class final Lkotlinx/coroutines/AwaitAll;
.super Ljava/lang/Object;
.source "Await.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlinx/coroutines/AwaitAll$DisposeHandlersOnCancel;,
        Lkotlinx/coroutines/AwaitAll$AwaitAllNode;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAwait.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Await.kt\nkotlinx/coroutines/AwaitAll\n+ 2 CancellableContinuation.kt\nkotlinx/coroutines/CancellableContinuationKt\n+ 3 CompletionHandler.kt\nkotlinx/coroutines/CompletionHandlerKt\n+ 4 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,128:1\n308#2,9:129\n317#2,2:142\n13#3:138\n19#3:141\n13416#4,2:139\n*E\n*S KotlinDebug\n*F\n+ 1 Await.kt\nkotlinx/coroutines/AwaitAll\n*L\n72#1,9:129\n72#1,2:142\n79#1:138\n91#1:141\n84#1,2:139\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0008\u0006\n\u0002\u0010\u0000\u0008\u0002\u0018\u0000*\u0004\u0008\u0000\u0010\u00012\u00020\u000e:\u0002\u000b\u000cB\u001d\u0012\u0014\u0010\u0004\u001a\u0010\u0012\u000c\u0008\u0001\u0012\u0008\u0012\u0004\u0012\u00028\u00000\u00030\u0002\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u0019\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0007H\u0086@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0008\u0010\tR$\u0010\u0004\u001a\u0010\u0012\u000c\u0008\u0001\u0012\u0008\u0012\u0004\u0012\u00028\u00000\u00030\u00028\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0004\u0010\n\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\r"
    }
    d2 = {
        "Lkotlinx/coroutines/AwaitAll;",
        "T",
        "",
        "Lkotlinx/coroutines/Deferred;",
        "deferreds",
        "<init>",
        "([Lkotlinx/coroutines/Deferred;)V",
        "",
        "await",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "[Lkotlinx/coroutines/Deferred;",
        "AwaitAllNode",
        "DisposeHandlersOnCancel",
        "kotlinx-coroutines-core",
        ""
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x0
    }
.end annotation


# static fields
.field static final notCompletedCount$FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;


# instance fields
.field private final deferreds:[Lkotlinx/coroutines/Deferred;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lkotlinx/coroutines/Deferred<",
            "TT;>;"
        }
    .end annotation
.end field

.field volatile notCompletedCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lkotlinx/coroutines/AwaitAll;

    const-string v1, "notCompletedCount"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/AwaitAll;->notCompletedCount$FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    return-void
.end method

.method public constructor <init>([Lkotlinx/coroutines/Deferred;)V
    .locals 1
    .param p1, "deferreds"    # [Lkotlinx/coroutines/Deferred;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lkotlinx/coroutines/Deferred<",
            "+TT;>;)V"
        }
    .end annotation

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlinx/coroutines/AwaitAll;->deferreds:[Lkotlinx/coroutines/Deferred;

    .line 70
    array-length v0, p1

    iput v0, p0, Lkotlinx/coroutines/AwaitAll;->notCompletedCount:I

    return-void
.end method

.method public static final synthetic access$getDeferreds$p(Lkotlinx/coroutines/AwaitAll;)[Lkotlinx/coroutines/Deferred;
    .locals 1
    .param p0, "$this"    # Lkotlinx/coroutines/AwaitAll;

    .line 69
    iget-object v0, p0, Lkotlinx/coroutines/AwaitAll;->deferreds:[Lkotlinx/coroutines/Deferred;

    return-object v0
.end method


# virtual methods
.method public final await(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 19
    .param p1, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/util/List<",
            "+TT;>;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 72
    move-object/from16 v0, p0

    const/4 v1, 0x0

    .line 129
    .local v1, "$i$f$suspendCancellableCoroutine":I
    move-object/from16 v2, p1

    .local v2, "uCont$iv":Lkotlin/coroutines/Continuation;
    const/4 v3, 0x0

    .line 130
    .local v3, "$i$a$-suspendCoroutineUninterceptedOrReturn-CancellableContinuationKt$suspendCancellableCoroutine$2$iv":I
    new-instance v4, Lkotlinx/coroutines/CancellableContinuationImpl;

    invoke-static {v2}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v5

    const/4 v6, 0x1

    invoke-direct {v4, v5, v6}, Lkotlinx/coroutines/CancellableContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;I)V

    .line 136
    .local v4, "cancellable$iv":Lkotlinx/coroutines/CancellableContinuationImpl;
    invoke-virtual {v4}, Lkotlinx/coroutines/CancellableContinuationImpl;->initCancellability()V

    .line 137
    move-object v5, v4

    check-cast v5, Lkotlinx/coroutines/CancellableContinuation;

    .local v5, "cont":Lkotlinx/coroutines/CancellableContinuation;
    const/4 v6, 0x0

    .line 75
    .local v6, "$i$a$-suspendCancellableCoroutine-AwaitAll$await$2":I
    invoke-static/range {p0 .. p0}, Lkotlinx/coroutines/AwaitAll;->access$getDeferreds$p(Lkotlinx/coroutines/AwaitAll;)[Lkotlinx/coroutines/Deferred;

    move-result-object v7

    array-length v7, v7

    new-array v8, v7, [Lkotlinx/coroutines/AwaitAll$AwaitAllNode;

    const/4 v10, 0x0

    :goto_0
    if-ge v10, v7, :cond_0

    invoke-static {v10}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object v11

    check-cast v11, Ljava/lang/Number;

    invoke-virtual {v11}, Ljava/lang/Number;->intValue()I

    move-result v11

    .local v11, "i":I
    const/4 v12, 0x0

    .line 76
    .local v12, "$i$a$-<init>-AwaitAll$await$2$nodes$1":I
    invoke-static/range {p0 .. p0}, Lkotlinx/coroutines/AwaitAll;->access$getDeferreds$p(Lkotlinx/coroutines/AwaitAll;)[Lkotlinx/coroutines/Deferred;

    move-result-object v13

    aget-object v13, v13, v11

    .line 77
    .local v13, "deferred":Lkotlinx/coroutines/Deferred;
    invoke-interface {v13}, Lkotlinx/coroutines/Deferred;->start()Z

    .line 78
    new-instance v14, Lkotlinx/coroutines/AwaitAll$AwaitAllNode;

    move-object v15, v13

    check-cast v15, Lkotlinx/coroutines/Job;

    invoke-direct {v14, v0, v5, v15}, Lkotlinx/coroutines/AwaitAll$AwaitAllNode;-><init>(Lkotlinx/coroutines/AwaitAll;Lkotlinx/coroutines/CancellableContinuation;Lkotlinx/coroutines/Job;)V

    move-object v15, v14

    .local v15, "$this$apply":Lkotlinx/coroutines/AwaitAll$AwaitAllNode;
    const/16 v16, 0x0

    .line 79
    .local v16, "$i$a$-apply-AwaitAll$await$2$nodes$1$1":I
    move-object/from16 v17, v15

    check-cast v17, Lkotlinx/coroutines/CompletionHandlerBase;

    .local v17, "$this$asHandler$iv":Lkotlinx/coroutines/CompletionHandlerBase;
    const/16 v18, 0x0

    .line 138
    .local v18, "$i$f$getAsHandler":I
    move-object/from16 v9, v17

    check-cast v9, Lkotlin/jvm/functions/Function1;

    .line 79
    .end local v17    # "$this$asHandler$iv":Lkotlinx/coroutines/CompletionHandlerBase;
    .end local v18    # "$i$f$getAsHandler":I
    invoke-interface {v13, v9}, Lkotlinx/coroutines/Deferred;->invokeOnCompletion(Lkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/DisposableHandle;

    move-result-object v9

    invoke-virtual {v15, v9}, Lkotlinx/coroutines/AwaitAll$AwaitAllNode;->setHandle(Lkotlinx/coroutines/DisposableHandle;)V

    .line 80
    nop

    .line 78
    .end local v15    # "$this$apply":Lkotlinx/coroutines/AwaitAll$AwaitAllNode;
    .end local v16    # "$i$a$-apply-AwaitAll$await$2$nodes$1$1":I
    nop

    .end local v11    # "i":I
    .end local v12    # "$i$a$-<init>-AwaitAll$await$2$nodes$1":I
    .end local v13    # "deferred":Lkotlinx/coroutines/Deferred;
    aput-object v14, v8, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 75
    :cond_0
    move-object v7, v8

    .line 82
    .local v7, "nodes":[Lkotlinx/coroutines/AwaitAll$AwaitAllNode;
    new-instance v8, Lkotlinx/coroutines/AwaitAll$DisposeHandlersOnCancel;

    invoke-direct {v8, v0, v7}, Lkotlinx/coroutines/AwaitAll$DisposeHandlersOnCancel;-><init>(Lkotlinx/coroutines/AwaitAll;[Lkotlinx/coroutines/AwaitAll$AwaitAllNode;)V

    .line 84
    .local v8, "disposer":Lkotlinx/coroutines/AwaitAll$DisposeHandlersOnCancel;
    move-object v9, v7

    .local v9, "$this$forEach$iv":[Ljava/lang/Object;
    const/4 v10, 0x0

    .line 139
    .local v10, "$i$f$forEach":I
    array-length v11, v9

    const/4 v12, 0x0

    :goto_1
    if-ge v12, v11, :cond_1

    aget-object v13, v9, v12

    .local v13, "element$iv":Ljava/lang/Object;
    move-object v14, v13

    .local v14, "it":Lkotlinx/coroutines/AwaitAll$AwaitAllNode;
    const/4 v15, 0x0

    .line 84
    .local v15, "$i$a$-forEach-AwaitAll$await$2$1":I
    invoke-virtual {v14, v8}, Lkotlinx/coroutines/AwaitAll$AwaitAllNode;->setDisposer(Lkotlinx/coroutines/AwaitAll$DisposeHandlersOnCancel;)V

    .end local v13    # "element$iv":Ljava/lang/Object;
    .end local v14    # "it":Lkotlinx/coroutines/AwaitAll$AwaitAllNode;
    .end local v15    # "$i$a$-forEach-AwaitAll$await$2$1":I
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 140
    :cond_1
    nop

    .line 87
    .end local v9    # "$this$forEach$iv":[Ljava/lang/Object;
    .end local v10    # "$i$f$forEach":I
    invoke-interface {v5}, Lkotlinx/coroutines/CancellableContinuation;->isCompleted()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 89
    invoke-virtual {v8}, Lkotlinx/coroutines/AwaitAll$DisposeHandlersOnCancel;->disposeAll()V

    goto :goto_2

    .line 91
    :cond_2
    move-object v9, v8

    check-cast v9, Lkotlinx/coroutines/CancelHandlerBase;

    .local v9, "$this$asHandler$iv":Lkotlinx/coroutines/CancelHandlerBase;
    const/4 v10, 0x0

    .line 141
    .local v10, "$i$f$getAsHandler":I
    check-cast v9, Lkotlin/jvm/functions/Function1;

    .line 91
    .end local v9    # "$this$asHandler$iv":Lkotlinx/coroutines/CancelHandlerBase;
    .end local v10    # "$i$f$getAsHandler":I
    invoke-interface {v5, v9}, Lkotlinx/coroutines/CancellableContinuation;->invokeOnCancellation(Lkotlin/jvm/functions/Function1;)V

    .line 92
    .end local v7    # "nodes":[Lkotlinx/coroutines/AwaitAll$AwaitAllNode;
    .end local v8    # "disposer":Lkotlinx/coroutines/AwaitAll$DisposeHandlersOnCancel;
    :goto_2
    nop

    .line 93
    nop

    .line 142
    .end local v5    # "cont":Lkotlinx/coroutines/CancellableContinuation;
    .end local v6    # "$i$a$-suspendCancellableCoroutine-AwaitAll$await$2":I
    invoke-virtual {v4}, Lkotlinx/coroutines/CancellableContinuationImpl;->getResult()Ljava/lang/Object;

    move-result-object v4

    .line 129
    .end local v2    # "uCont$iv":Lkotlin/coroutines/Continuation;
    .end local v3    # "$i$a$-suspendCoroutineUninterceptedOrReturn-CancellableContinuationKt$suspendCancellableCoroutine$2$iv":I
    .end local v4    # "cancellable$iv":Lkotlinx/coroutines/CancellableContinuationImpl;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    if-ne v4, v2, :cond_3

    invoke-static/range {p1 .. p1}, Lkotlin/coroutines/jvm/internal/DebugProbesKt;->probeCoroutineSuspended(Lkotlin/coroutines/Continuation;)V

    .line 143
    :cond_3
    nop

    .line 93
    .end local v1    # "$i$f$suspendCancellableCoroutine":I
    return-object v4
.end method
