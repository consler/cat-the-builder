.class public abstract Lkotlinx/coroutines/channels/AbstractChannel;
.super Lkotlinx/coroutines/channels/AbstractSendChannel;
.source "AbstractChannel.kt"

# interfaces
.implements Lkotlinx/coroutines/channels/Channel;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlinx/coroutines/channels/AbstractChannel$TryPollDesc;,
        Lkotlinx/coroutines/channels/AbstractChannel$RemoveReceiveOnCancel;,
        Lkotlinx/coroutines/channels/AbstractChannel$Itr;,
        Lkotlinx/coroutines/channels/AbstractChannel$ReceiveElement;,
        Lkotlinx/coroutines/channels/AbstractChannel$ReceiveElementWithUndeliveredHandler;,
        Lkotlinx/coroutines/channels/AbstractChannel$ReceiveHasNext;,
        Lkotlinx/coroutines/channels/AbstractChannel$ReceiveSelect;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lkotlinx/coroutines/channels/AbstractSendChannel<",
        "TE;>;",
        "Lkotlinx/coroutines/channels/Channel<",
        "TE;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAbstractChannel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AbstractChannel.kt\nkotlinx/coroutines/channels/AbstractChannel\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 CancellableContinuation.kt\nkotlinx/coroutines/CancellableContinuationKt\n+ 4 LockFreeLinkedList.kt\nkotlinx/coroutines/internal/LockFreeLinkedListNode\n+ 5 AbstractChannel.kt\nkotlinx/coroutines/channels/AbstractChannelKt\n+ 6 Channel.kt\nkotlinx/coroutines/channels/ValueOrClosed$Companion\n+ 7 InlineList.kt\nkotlinx/coroutines/internal/InlineList\n+ 8 CompletionHandler.kt\nkotlinx/coroutines/CompletionHandlerKt\n*L\n1#1,1130:1\n1#2:1131\n326#3,5:1132\n161#4,4:1137\n173#4:1141\n87#4,3:1142\n174#4,6:1145\n1126#5:1151\n1126#5:1166\n420#6:1152\n416#6:1153\n420#6:1165\n420#6:1167\n416#6:1168\n35#7,11:1154\n19#8:1169\n*E\n*S KotlinDebug\n*F\n+ 1 AbstractChannel.kt\nkotlinx/coroutines/channels/AbstractChannel\n*L\n570#1,5:1132\n593#1,4:1137\n594#1:1141\n594#1,3:1142\n594#1,6:1145\n622#1:1151\n772#1:1166\n622#1:1152\n622#1:1153\n758#1:1165\n772#1:1167\n772#1:1168\n671#1,11:1154\n813#1:1169\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u008a\u0001\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0015\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000b\u0008 \u0018\u0000*\u0004\u0008\u0000\u0010\u00012\u0008\u0012\u0004\u0012\u0002H\u00010\u00022\u0008\u0012\u0004\u0012\u0002H\u00010\u0003:\u0007PQRSTUVB\'\u0012 \u0010\u0004\u001a\u001c\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005j\n\u0012\u0004\u0012\u00028\u0000\u0018\u0001`\u0007\u00a2\u0006\u0002\u0010\u0008J\u0012\u0010\u001b\u001a\u00020\n2\u0008\u0010\u001c\u001a\u0004\u0018\u00010\u001dH\u0007J\u0016\u0010\u001b\u001a\u00020\u00062\u000e\u0010\u001c\u001a\n\u0018\u00010\u001ej\u0004\u0018\u0001`\u001fJ\u0017\u0010 \u001a\u00020\n2\u0008\u0010\u001c\u001a\u0004\u0018\u00010\u001dH\u0000\u00a2\u0006\u0002\u0008!J\u000e\u0010\"\u001a\u0008\u0012\u0004\u0012\u00028\u00000#H\u0004J\u0016\u0010$\u001a\u00020\n2\u000c\u0010%\u001a\u0008\u0012\u0004\u0012\u00028\u00000&H\u0002J\u0016\u0010\'\u001a\u00020\n2\u000c\u0010%\u001a\u0008\u0012\u0004\u0012\u00028\u00000&H\u0014JR\u0010(\u001a\u00020\n\"\u0004\u0008\u0001\u0010)2\u000c\u0010*\u001a\u0008\u0012\u0004\u0012\u0002H)0+2$\u0010,\u001a \u0008\u0001\u0012\u0006\u0012\u0004\u0018\u00010.\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002H)0/\u0012\u0006\u0012\u0004\u0018\u00010.0-2\u0006\u00100\u001a\u000201H\u0002\u00f8\u0001\u0000\u00a2\u0006\u0002\u00102J\u000f\u00103\u001a\u0008\u0012\u0004\u0012\u00028\u000004H\u0086\u0002J\u0010\u00105\u001a\u00020\u00062\u0006\u00106\u001a\u00020\nH\u0014J\u0008\u00107\u001a\u00020\u0006H\u0014J\u0008\u00108\u001a\u00020\u0006H\u0014J\r\u00109\u001a\u0004\u0018\u00018\u0000\u00a2\u0006\u0002\u0010:J\n\u0010;\u001a\u0004\u0018\u00010.H\u0014J\u0016\u0010<\u001a\u0004\u0018\u00010.2\n\u0010*\u001a\u0006\u0012\u0002\u0008\u00030+H\u0014J\u0011\u0010%\u001a\u00028\u0000H\u0086@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010=J\u001f\u0010>\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0017H\u0086@\u00f8\u0001\u0000\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008?\u0010=J\u0013\u0010@\u001a\u0004\u0018\u00018\u0000H\u0086@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010=J\u0019\u0010A\u001a\u0004\u0018\u00018\u00002\u0008\u0010B\u001a\u0004\u0018\u00010.H\u0002\u00a2\u0006\u0002\u0010CJ\u001f\u0010D\u001a\u0002H)\"\u0004\u0008\u0001\u0010)2\u0006\u00100\u001a\u000201H\u0082@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010EJR\u0010F\u001a\u00020\u0006\"\u0004\u0008\u0001\u0010)2\u000c\u0010*\u001a\u0008\u0012\u0004\u0012\u0002H)0+2\u0006\u00100\u001a\u0002012$\u0010,\u001a \u0008\u0001\u0012\u0006\u0012\u0004\u0018\u00010.\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002H)0/\u0012\u0006\u0012\u0004\u0018\u00010.0-H\u0002\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010GJ \u0010H\u001a\u00020\u00062\n\u0010I\u001a\u0006\u0012\u0002\u0008\u00030J2\n\u0010%\u001a\u0006\u0012\u0002\u0008\u00030&H\u0002J\u0010\u0010K\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010LH\u0014JX\u0010M\u001a\u00020\u0006\"\u0004\u0008\u0001\u0010)* \u0008\u0001\u0012\u0006\u0012\u0004\u0018\u00010.\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002H)0/\u0012\u0006\u0012\u0004\u0018\u00010.0-2\u000c\u0010*\u001a\u0008\u0012\u0004\u0012\u0002H)0+2\u0006\u00100\u001a\u0002012\u0008\u0010N\u001a\u0004\u0018\u00010.H\u0002\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010OR\u0014\u0010\t\u001a\u00020\n8DX\u0084\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000b\u0010\u000cR\u0012\u0010\r\u001a\u00020\nX\u00a4\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\r\u0010\u000cR\u0012\u0010\u000e\u001a\u00020\nX\u00a4\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000e\u0010\u000cR\u0014\u0010\u000f\u001a\u00020\n8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000f\u0010\u000cR\u0014\u0010\u0010\u001a\u00020\n8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0010\u0010\u000cR\u0014\u0010\u0011\u001a\u00020\n8DX\u0084\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0011\u0010\u000cR\u0017\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00138F\u00a2\u0006\u0006\u001a\u0004\u0008\u0014\u0010\u0015R \u0010\u0016\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00000\u00170\u00138F\u00f8\u0001\u0000\u00a2\u0006\u0006\u001a\u0004\u0008\u0018\u0010\u0015R\u0019\u0010\u0019\u001a\n\u0012\u0006\u0012\u0004\u0018\u00018\u00000\u00138F\u00a2\u0006\u0006\u001a\u0004\u0008\u001a\u0010\u0015\u0082\u0002\u0008\n\u0002\u0008\u0019\n\u0002\u0008!\u00a8\u0006W"
    }
    d2 = {
        "Lkotlinx/coroutines/channels/AbstractChannel;",
        "E",
        "Lkotlinx/coroutines/channels/AbstractSendChannel;",
        "Lkotlinx/coroutines/channels/Channel;",
        "onUndeliveredElement",
        "Lkotlin/Function1;",
        "",
        "Lkotlinx/coroutines/internal/OnUndeliveredElement;",
        "(Lkotlin/jvm/functions/Function1;)V",
        "hasReceiveOrClosed",
        "",
        "getHasReceiveOrClosed",
        "()Z",
        "isBufferAlwaysEmpty",
        "isBufferEmpty",
        "isClosedForReceive",
        "isEmpty",
        "isEmptyImpl",
        "onReceive",
        "Lkotlinx/coroutines/selects/SelectClause1;",
        "getOnReceive",
        "()Lkotlinx/coroutines/selects/SelectClause1;",
        "onReceiveOrClosed",
        "Lkotlinx/coroutines/channels/ValueOrClosed;",
        "getOnReceiveOrClosed",
        "onReceiveOrNull",
        "getOnReceiveOrNull",
        "cancel",
        "cause",
        "",
        "Ljava/util/concurrent/CancellationException;",
        "Lkotlinx/coroutines/CancellationException;",
        "cancelInternal",
        "cancelInternal$kotlinx_coroutines_core",
        "describeTryPoll",
        "Lkotlinx/coroutines/channels/AbstractChannel$TryPollDesc;",
        "enqueueReceive",
        "receive",
        "Lkotlinx/coroutines/channels/Receive;",
        "enqueueReceiveInternal",
        "enqueueReceiveSelect",
        "R",
        "select",
        "Lkotlinx/coroutines/selects/SelectInstance;",
        "block",
        "Lkotlin/Function2;",
        "",
        "Lkotlin/coroutines/Continuation;",
        "receiveMode",
        "",
        "(Lkotlinx/coroutines/selects/SelectInstance;Lkotlin/jvm/functions/Function2;I)Z",
        "iterator",
        "Lkotlinx/coroutines/channels/ChannelIterator;",
        "onCancelIdempotent",
        "wasClosed",
        "onReceiveDequeued",
        "onReceiveEnqueued",
        "poll",
        "()Ljava/lang/Object;",
        "pollInternal",
        "pollSelectInternal",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "receiveOrClosed",
        "receiveOrClosed-ZYPwvRU",
        "receiveOrNull",
        "receiveOrNullResult",
        "result",
        "(Ljava/lang/Object;)Ljava/lang/Object;",
        "receiveSuspend",
        "(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "registerSelectReceiveMode",
        "(Lkotlinx/coroutines/selects/SelectInstance;ILkotlin/jvm/functions/Function2;)V",
        "removeReceiveOnCancel",
        "cont",
        "Lkotlinx/coroutines/CancellableContinuation;",
        "takeFirstReceiveOrPeekClosed",
        "Lkotlinx/coroutines/channels/ReceiveOrClosed;",
        "tryStartBlockUnintercepted",
        "value",
        "(Lkotlin/jvm/functions/Function2;Lkotlinx/coroutines/selects/SelectInstance;ILjava/lang/Object;)V",
        "Itr",
        "ReceiveElement",
        "ReceiveElementWithUndeliveredHandler",
        "ReceiveHasNext",
        "ReceiveSelect",
        "RemoveReceiveOnCancel",
        "TryPollDesc",
        "kotlinx-coroutines-core"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x0
    }
.end annotation


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function1;)V
    .locals 0
    .param p1, "onUndeliveredElement"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-TE;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 488
    nop

    .line 490
    invoke-direct {p0, p1}, Lkotlinx/coroutines/channels/AbstractSendChannel;-><init>(Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public static final synthetic access$enqueueReceive(Lkotlinx/coroutines/channels/AbstractChannel;Lkotlinx/coroutines/channels/Receive;)Z
    .locals 1
    .param p0, "$this"    # Lkotlinx/coroutines/channels/AbstractChannel;
    .param p1, "receive"    # Lkotlinx/coroutines/channels/Receive;

    .line 488
    invoke-direct {p0, p1}, Lkotlinx/coroutines/channels/AbstractChannel;->enqueueReceive(Lkotlinx/coroutines/channels/Receive;)Z

    move-result v0

    return v0
.end method

.method public static final synthetic access$registerSelectReceiveMode(Lkotlinx/coroutines/channels/AbstractChannel;Lkotlinx/coroutines/selects/SelectInstance;ILkotlin/jvm/functions/Function2;)V
    .locals 0
    .param p0, "$this"    # Lkotlinx/coroutines/channels/AbstractChannel;
    .param p1, "select"    # Lkotlinx/coroutines/selects/SelectInstance;
    .param p2, "receiveMode"    # I
    .param p3, "block"    # Lkotlin/jvm/functions/Function2;

    .line 488
    invoke-direct {p0, p1, p2, p3}, Lkotlinx/coroutines/channels/AbstractChannel;->registerSelectReceiveMode(Lkotlinx/coroutines/selects/SelectInstance;ILkotlin/jvm/functions/Function2;)V

    return-void
.end method

.method public static final synthetic access$removeReceiveOnCancel(Lkotlinx/coroutines/channels/AbstractChannel;Lkotlinx/coroutines/CancellableContinuation;Lkotlinx/coroutines/channels/Receive;)V
    .locals 0
    .param p0, "$this"    # Lkotlinx/coroutines/channels/AbstractChannel;
    .param p1, "cont"    # Lkotlinx/coroutines/CancellableContinuation;
    .param p2, "receive"    # Lkotlinx/coroutines/channels/Receive;

    .line 488
    invoke-direct {p0, p1, p2}, Lkotlinx/coroutines/channels/AbstractChannel;->removeReceiveOnCancel(Lkotlinx/coroutines/CancellableContinuation;Lkotlinx/coroutines/channels/Receive;)V

    return-void
.end method

.method private final enqueueReceive(Lkotlinx/coroutines/channels/Receive;)Z
    .locals 3
    .param p1, "receive"    # Lkotlinx/coroutines/channels/Receive;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/channels/Receive<",
            "-TE;>;)Z"
        }
    .end annotation

    .line 596
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/channels/AbstractChannel;->enqueueReceiveInternal(Lkotlinx/coroutines/channels/Receive;)Z

    move-result v0

    move v1, v0

    .local v1, "result":Z
    const/4 v2, 0x0

    .line 597
    .local v2, "$i$a$-also-AbstractChannel$enqueueReceive$1":I
    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lkotlinx/coroutines/channels/AbstractChannel;->onReceiveEnqueued()V

    .line 598
    :cond_0
    nop

    .line 596
    .end local v1    # "result":Z
    .end local v2    # "$i$a$-also-AbstractChannel$enqueueReceive$1":I
    nop

    .line 598
    return v0
.end method

.method private final enqueueReceiveSelect(Lkotlinx/coroutines/selects/SelectInstance;Lkotlin/jvm/functions/Function2;I)Z
    .locals 3
    .param p1, "select"    # Lkotlinx/coroutines/selects/SelectInstance;
    .param p2, "block"    # Lkotlin/jvm/functions/Function2;
    .param p3, "receiveMode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/coroutines/selects/SelectInstance<",
            "-TR;>;",
            "Lkotlin/jvm/functions/Function2<",
            "Ljava/lang/Object;",
            "-",
            "Lkotlin/coroutines/Continuation<",
            "-TR;>;+",
            "Ljava/lang/Object;",
            ">;I)Z"
        }
    .end annotation

    .line 785
    new-instance v0, Lkotlinx/coroutines/channels/AbstractChannel$ReceiveSelect;

    invoke-direct {v0, p0, p1, p2, p3}, Lkotlinx/coroutines/channels/AbstractChannel$ReceiveSelect;-><init>(Lkotlinx/coroutines/channels/AbstractChannel;Lkotlinx/coroutines/selects/SelectInstance;Lkotlin/jvm/functions/Function2;I)V

    .line 786
    .local v0, "node":Lkotlinx/coroutines/channels/AbstractChannel$ReceiveSelect;
    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/channels/Receive;

    invoke-direct {p0, v1}, Lkotlinx/coroutines/channels/AbstractChannel;->enqueueReceive(Lkotlinx/coroutines/channels/Receive;)Z

    move-result v1

    .line 787
    .local v1, "result":Z
    if-eqz v1, :cond_0

    move-object v2, v0

    check-cast v2, Lkotlinx/coroutines/DisposableHandle;

    invoke-interface {p1, v2}, Lkotlinx/coroutines/selects/SelectInstance;->disposeOnSelect(Lkotlinx/coroutines/DisposableHandle;)V

    .line 788
    :cond_0
    return v1
.end method

.method private final receiveOrNullResult(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "result"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TE;"
        }
    .end annotation

    .line 611
    instance-of v0, p1, Lkotlinx/coroutines/channels/Closed;

    if-eqz v0, :cond_1

    .line 612
    move-object v0, p1

    check-cast v0, Lkotlinx/coroutines/channels/Closed;

    iget-object v0, v0, Lkotlinx/coroutines/channels/Closed;->closeCause:Ljava/lang/Throwable;

    if-nez v0, :cond_0

    .line 613
    const/4 v0, 0x0

    return-object v0

    .line 612
    :cond_0
    move-object v0, p1

    check-cast v0, Lkotlinx/coroutines/channels/Closed;

    iget-object v0, v0, Lkotlinx/coroutines/channels/Closed;->closeCause:Ljava/lang/Throwable;

    invoke-static {v0}, Lkotlinx/coroutines/internal/StackTraceRecoveryKt;->recoverStackTrace(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    throw v0

    .line 615
    :cond_1
    return-object p1
.end method

.method private final registerSelectReceiveMode(Lkotlinx/coroutines/selects/SelectInstance;ILkotlin/jvm/functions/Function2;)V
    .locals 2
    .param p1, "select"    # Lkotlinx/coroutines/selects/SelectInstance;
    .param p2, "receiveMode"    # I
    .param p3, "block"    # Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/coroutines/selects/SelectInstance<",
            "-TR;>;I",
            "Lkotlin/jvm/functions/Function2<",
            "Ljava/lang/Object;",
            "-",
            "Lkotlin/coroutines/Continuation<",
            "-TR;>;+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 733
    :goto_0
    nop

    .line 734
    invoke-interface {p1}, Lkotlinx/coroutines/selects/SelectInstance;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 735
    :cond_0
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/AbstractChannel;->isEmptyImpl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 736
    invoke-direct {p0, p1, p3, p2}, Lkotlinx/coroutines/channels/AbstractChannel;->enqueueReceiveSelect(Lkotlinx/coroutines/selects/SelectInstance;Lkotlin/jvm/functions/Function2;I)Z

    move-result v0

    if-eqz v0, :cond_5

    return-void

    .line 738
    :cond_1
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/channels/AbstractChannel;->pollSelectInternal(Lkotlinx/coroutines/selects/SelectInstance;)Ljava/lang/Object;

    move-result-object v0

    .line 739
    .local v0, "pollResult":Ljava/lang/Object;
    nop

    .line 740
    invoke-static {}, Lkotlinx/coroutines/selects/SelectKt;->getALREADY_SELECTED()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_2

    return-void

    .line 741
    :cond_2
    sget-object v1, Lkotlinx/coroutines/channels/AbstractChannelKt;->POLL_FAILED:Lkotlinx/coroutines/internal/Symbol;

    if-ne v0, v1, :cond_3

    goto :goto_1

    .line 742
    :cond_3
    sget-object v1, Lkotlinx/coroutines/internal/AtomicKt;->RETRY_ATOMIC:Ljava/lang/Object;

    if-ne v0, v1, :cond_4

    goto :goto_1

    .line 743
    :cond_4
    invoke-direct {p0, p3, p1, p2, v0}, Lkotlinx/coroutines/channels/AbstractChannel;->tryStartBlockUnintercepted(Lkotlin/jvm/functions/Function2;Lkotlinx/coroutines/selects/SelectInstance;ILjava/lang/Object;)V

    .line 744
    .end local v0    # "pollResult":Ljava/lang/Object;
    :cond_5
    :goto_1
    nop

    .line 745
    nop

    .line 733
    goto :goto_0
.end method

.method private final removeReceiveOnCancel(Lkotlinx/coroutines/CancellableContinuation;Lkotlinx/coroutines/channels/Receive;)V
    .locals 2
    .param p1, "cont"    # Lkotlinx/coroutines/CancellableContinuation;
    .param p2, "receive"    # Lkotlinx/coroutines/channels/Receive;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CancellableContinuation<",
            "*>;",
            "Lkotlinx/coroutines/channels/Receive<",
            "*>;)V"
        }
    .end annotation

    .line 813
    new-instance v0, Lkotlinx/coroutines/channels/AbstractChannel$RemoveReceiveOnCancel;

    invoke-direct {v0, p0, p2}, Lkotlinx/coroutines/channels/AbstractChannel$RemoveReceiveOnCancel;-><init>(Lkotlinx/coroutines/channels/AbstractChannel;Lkotlinx/coroutines/channels/Receive;)V

    check-cast v0, Lkotlinx/coroutines/CancelHandlerBase;

    .local v0, "$this$asHandler$iv":Lkotlinx/coroutines/CancelHandlerBase;
    const/4 v1, 0x0

    .line 1169
    .local v1, "$i$f$getAsHandler":I
    check-cast v0, Lkotlin/jvm/functions/Function1;

    .line 813
    .end local v0    # "$this$asHandler$iv":Lkotlinx/coroutines/CancelHandlerBase;
    .end local v1    # "$i$f$getAsHandler":I
    invoke-interface {p1, v0}, Lkotlinx/coroutines/CancellableContinuation;->invokeOnCancellation(Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method private final tryStartBlockUnintercepted(Lkotlin/jvm/functions/Function2;Lkotlinx/coroutines/selects/SelectInstance;ILjava/lang/Object;)V
    .locals 6
    .param p1, "$this$tryStartBlockUnintercepted"    # Lkotlin/jvm/functions/Function2;
    .param p2, "select"    # Lkotlinx/coroutines/selects/SelectInstance;
    .param p3, "receiveMode"    # I
    .param p4, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/jvm/functions/Function2<",
            "Ljava/lang/Object;",
            "-",
            "Lkotlin/coroutines/Continuation<",
            "-TR;>;+",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlinx/coroutines/selects/SelectInstance<",
            "-TR;>;I",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 750
    nop

    .line 751
    instance-of v0, p4, Lkotlinx/coroutines/channels/Closed;

    const/4 v1, 0x2

    if-eqz v0, :cond_6

    .line 752
    if-eqz p3, :cond_5

    const/4 v0, 0x1

    if-eq p3, v0, :cond_2

    if-eq p3, v1, :cond_0

    .line 768
    goto/16 :goto_1

    .line 757
    :cond_0
    invoke-interface {p2}, Lkotlinx/coroutines/selects/SelectInstance;->trySelect()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 758
    :cond_1
    sget-object v0, Lkotlinx/coroutines/channels/ValueOrClosed;->Companion:Lkotlinx/coroutines/channels/ValueOrClosed$Companion;

    .local v0, "this_$iv":Lkotlinx/coroutines/channels/ValueOrClosed$Companion;
    move-object v1, p4

    check-cast v1, Lkotlinx/coroutines/channels/Closed;

    iget-object v1, v1, Lkotlinx/coroutines/channels/Closed;->closeCause:Ljava/lang/Throwable;

    .local v1, "cause$iv":Ljava/lang/Throwable;
    const/4 v2, 0x0

    .line 1165
    .local v2, "$i$f$closed-ZYPwvRU$kotlinx_coroutines_core":I
    new-instance v3, Lkotlinx/coroutines/channels/ValueOrClosed$Closed;

    invoke-direct {v3, v1}, Lkotlinx/coroutines/channels/ValueOrClosed$Closed;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v3}, Lkotlinx/coroutines/channels/ValueOrClosed;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "this_$iv":Lkotlinx/coroutines/channels/ValueOrClosed$Companion;
    .end local v1    # "cause$iv":Ljava/lang/Throwable;
    .end local v2    # "$i$f$closed-ZYPwvRU$kotlinx_coroutines_core":I
    invoke-static {v0}, Lkotlinx/coroutines/channels/ValueOrClosed;->box-impl(Ljava/lang/Object;)Lkotlinx/coroutines/channels/ValueOrClosed;

    move-result-object v0

    .line 758
    invoke-interface {p2}, Lkotlinx/coroutines/selects/SelectInstance;->getCompletion()Lkotlin/coroutines/Continuation;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lkotlinx/coroutines/intrinsics/UndispatchedKt;->startCoroutineUnintercepted(Lkotlin/jvm/functions/Function2;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)V

    goto :goto_1

    .line 761
    :cond_2
    move-object v0, p4

    check-cast v0, Lkotlinx/coroutines/channels/Closed;

    iget-object v0, v0, Lkotlinx/coroutines/channels/Closed;->closeCause:Ljava/lang/Throwable;

    if-nez v0, :cond_4

    .line 762
    invoke-interface {p2}, Lkotlinx/coroutines/selects/SelectInstance;->trySelect()Z

    move-result v0

    if-nez v0, :cond_3

    return-void

    .line 763
    :cond_3
    const/4 v0, 0x0

    invoke-interface {p2}, Lkotlinx/coroutines/selects/SelectInstance;->getCompletion()Lkotlin/coroutines/Continuation;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lkotlinx/coroutines/intrinsics/UndispatchedKt;->startCoroutineUnintercepted(Lkotlin/jvm/functions/Function2;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)V

    goto :goto_1

    .line 765
    :cond_4
    move-object v0, p4

    check-cast v0, Lkotlinx/coroutines/channels/Closed;

    invoke-virtual {v0}, Lkotlinx/coroutines/channels/Closed;->getReceiveException()Ljava/lang/Throwable;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/internal/StackTraceRecoveryKt;->recoverStackTrace(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    throw v0

    .line 754
    :cond_5
    move-object v0, p4

    check-cast v0, Lkotlinx/coroutines/channels/Closed;

    invoke-virtual {v0}, Lkotlinx/coroutines/channels/Closed;->getReceiveException()Ljava/lang/Throwable;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/internal/StackTraceRecoveryKt;->recoverStackTrace(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    throw v0

    .line 771
    :cond_6
    if-ne p3, v1, :cond_8

    .line 772
    move-object v0, p4

    .local v0, "$this$toResult$iv":Ljava/lang/Object;
    const/4 v1, 0x0

    .line 1166
    .local v1, "$i$f$toResult":I
    instance-of v2, v0, Lkotlinx/coroutines/channels/Closed;

    if-eqz v2, :cond_7

    sget-object v2, Lkotlinx/coroutines/channels/ValueOrClosed;->Companion:Lkotlinx/coroutines/channels/ValueOrClosed$Companion;

    .local v2, "this_$iv$iv":Lkotlinx/coroutines/channels/ValueOrClosed$Companion;
    move-object v3, v0

    check-cast v3, Lkotlinx/coroutines/channels/Closed;

    iget-object v3, v3, Lkotlinx/coroutines/channels/Closed;->closeCause:Ljava/lang/Throwable;

    .local v3, "cause$iv$iv":Ljava/lang/Throwable;
    const/4 v4, 0x0

    .line 1167
    .local v4, "$i$f$closed-ZYPwvRU$kotlinx_coroutines_core":I
    new-instance v5, Lkotlinx/coroutines/channels/ValueOrClosed$Closed;

    invoke-direct {v5, v3}, Lkotlinx/coroutines/channels/ValueOrClosed$Closed;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v5}, Lkotlinx/coroutines/channels/ValueOrClosed;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "this_$iv$iv":Lkotlinx/coroutines/channels/ValueOrClosed$Companion;
    .end local v3    # "cause$iv$iv":Ljava/lang/Throwable;
    .end local v4    # "$i$f$closed-ZYPwvRU$kotlinx_coroutines_core":I
    goto :goto_0

    .line 1166
    :cond_7
    sget-object v2, Lkotlinx/coroutines/channels/ValueOrClosed;->Companion:Lkotlinx/coroutines/channels/ValueOrClosed$Companion;

    .restart local v2    # "this_$iv$iv":Lkotlinx/coroutines/channels/ValueOrClosed$Companion;
    move-object v3, v0

    .local v3, "value$iv$iv":Ljava/lang/Object;
    const/4 v4, 0x0

    .line 1168
    .local v4, "$i$f$value-ZYPwvRU$kotlinx_coroutines_core":I
    invoke-static {v3}, Lkotlinx/coroutines/channels/ValueOrClosed;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 1166
    .end local v2    # "this_$iv$iv":Lkotlinx/coroutines/channels/ValueOrClosed$Companion;
    .end local v3    # "value$iv$iv":Ljava/lang/Object;
    .end local v4    # "$i$f$value-ZYPwvRU$kotlinx_coroutines_core":I
    nop

    .end local v0    # "$this$toResult$iv":Ljava/lang/Object;
    .end local v1    # "$i$f$toResult":I
    :goto_0
    invoke-static {v2}, Lkotlinx/coroutines/channels/ValueOrClosed;->box-impl(Ljava/lang/Object;)Lkotlinx/coroutines/channels/ValueOrClosed;

    move-result-object v0

    .line 772
    invoke-interface {p2}, Lkotlinx/coroutines/selects/SelectInstance;->getCompletion()Lkotlin/coroutines/Continuation;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lkotlinx/coroutines/intrinsics/UndispatchedKt;->startCoroutineUnintercepted(Lkotlin/jvm/functions/Function2;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)V

    goto :goto_1

    .line 774
    :cond_8
    invoke-interface {p2}, Lkotlinx/coroutines/selects/SelectInstance;->getCompletion()Lkotlin/coroutines/Continuation;

    move-result-object v0

    invoke-static {p1, p4, v0}, Lkotlinx/coroutines/intrinsics/UndispatchedKt;->startCoroutineUnintercepted(Lkotlin/jvm/functions/Function2;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)V

    .line 775
    :goto_1
    nop

    .line 777
    nop

    .line 778
    return-void
.end method


# virtual methods
.method public synthetic cancel()V
    .locals 0
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->HIDDEN:Lkotlin/DeprecationLevel;
        message = "Since 1.2.0, binary compatibility with versions <= 1.1.x"
    .end annotation

    .line 488
    invoke-static {p0}, Lkotlinx/coroutines/channels/Channel$DefaultImpls;->cancel(Lkotlinx/coroutines/channels/Channel;)V

    return-void
.end method

.method public final cancel(Ljava/util/concurrent/CancellationException;)V
    .locals 3
    .param p1, "cause"    # Ljava/util/concurrent/CancellationException;

    .line 638
    if-eqz p1, :cond_0

    move-object v0, p1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/concurrent/CancellationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lkotlinx/coroutines/DebugStringsKt;->getClassSimpleName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " was cancelled"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    :goto_0
    check-cast v0, Ljava/lang/Throwable;

    invoke-virtual {p0, v0}, Lkotlinx/coroutines/channels/AbstractChannel;->cancelInternal$kotlinx_coroutines_core(Ljava/lang/Throwable;)Z

    .line 639
    return-void
.end method

.method public final synthetic cancel(Ljava/lang/Throwable;)Z
    .locals 1
    .param p1, "cause"    # Ljava/lang/Throwable;
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->HIDDEN:Lkotlin/DeprecationLevel;
        message = "Since 1.2.0, binary compatibility with versions <= 1.1.x"
    .end annotation

    .line 635
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/channels/AbstractChannel;->cancelInternal$kotlinx_coroutines_core(Ljava/lang/Throwable;)Z

    move-result v0

    return v0
.end method

.method public final cancelInternal$kotlinx_coroutines_core(Ljava/lang/Throwable;)Z
    .locals 3
    .param p1, "cause"    # Ljava/lang/Throwable;

    .line 643
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/channels/AbstractChannel;->close(Ljava/lang/Throwable;)Z

    move-result v0

    move v1, v0

    .local v1, "it":Z
    const/4 v2, 0x0

    .line 644
    .local v2, "$i$a$-also-AbstractChannel$cancelInternal$1":I
    invoke-virtual {p0, v1}, Lkotlinx/coroutines/channels/AbstractChannel;->onCancelIdempotent(Z)V

    .line 645
    nop

    .line 643
    .end local v1    # "it":Z
    .end local v2    # "$i$a$-also-AbstractChannel$cancelInternal$1":I
    nop

    .line 645
    return v0
.end method

.method protected final describeTryPoll()Lkotlinx/coroutines/channels/AbstractChannel$TryPollDesc;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/channels/AbstractChannel$TryPollDesc<",
            "TE;>;"
        }
    .end annotation

    .line 681
    new-instance v0, Lkotlinx/coroutines/channels/AbstractChannel$TryPollDesc;

    invoke-virtual {p0}, Lkotlinx/coroutines/channels/AbstractChannel;->getQueue()Lkotlinx/coroutines/internal/LockFreeLinkedListHead;

    move-result-object v1

    invoke-direct {v0, v1}, Lkotlinx/coroutines/channels/AbstractChannel$TryPollDesc;-><init>(Lkotlinx/coroutines/internal/LockFreeLinkedListHead;)V

    return-object v0
.end method

.method protected enqueueReceiveInternal(Lkotlinx/coroutines/channels/Receive;)Z
    .locals 9
    .param p1, "receive"    # Lkotlinx/coroutines/channels/Receive;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/channels/Receive<",
            "-TE;>;)Z"
        }
    .end annotation

    .line 592
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/AbstractChannel;->isBufferAlwaysEmpty()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 593
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/AbstractChannel;->getQueue()Lkotlinx/coroutines/internal/LockFreeLinkedListHead;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    .local v0, "this_$iv":Lkotlinx/coroutines/internal/LockFreeLinkedListNode;
    const/4 v3, 0x0

    .line 1137
    .local v3, "$i$f$addLastIfPrev":I
    :goto_0
    nop

    .line 1138
    invoke-virtual {v0}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->getPrevNode()Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    move-result-object v4

    .line 1139
    .local v4, "prev$iv":Lkotlinx/coroutines/internal/LockFreeLinkedListNode;
    move-object v5, v4

    .local v5, "it":Lkotlinx/coroutines/internal/LockFreeLinkedListNode;
    const/4 v6, 0x0

    .line 593
    .local v6, "$i$a$-addLastIfPrev-AbstractChannel$enqueueReceiveInternal$1":I
    instance-of v7, v5, Lkotlinx/coroutines/channels/Send;

    .end local v5    # "it":Lkotlinx/coroutines/internal/LockFreeLinkedListNode;
    .end local v6    # "$i$a$-addLastIfPrev-AbstractChannel$enqueueReceiveInternal$1":I
    xor-int/lit8 v5, v7, 0x1

    if-nez v5, :cond_0

    goto :goto_2

    .line 1140
    :cond_0
    move-object v5, p1

    check-cast v5, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    invoke-virtual {v4, v5, v0}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->addNext(Lkotlinx/coroutines/internal/LockFreeLinkedListNode;Lkotlinx/coroutines/internal/LockFreeLinkedListNode;)Z

    move-result v5

    if-eqz v5, :cond_1

    move v1, v2

    goto :goto_2

    .line 1137
    .end local v4    # "prev$iv":Lkotlinx/coroutines/internal/LockFreeLinkedListNode;
    :cond_1
    goto :goto_0

    .line 594
    .end local v0    # "this_$iv":Lkotlinx/coroutines/internal/LockFreeLinkedListNode;
    .end local v3    # "$i$f$addLastIfPrev":I
    :cond_2
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/AbstractChannel;->getQueue()Lkotlinx/coroutines/internal/LockFreeLinkedListHead;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    .restart local v0    # "this_$iv":Lkotlinx/coroutines/internal/LockFreeLinkedListNode;
    const/4 v3, 0x0

    .line 1141
    .local v3, "$i$f$addLastIfPrevAndIf":I
    move-object v4, v0

    .local v4, "this_$iv$iv":Lkotlinx/coroutines/internal/LockFreeLinkedListNode;
    const/4 v5, 0x0

    .line 1142
    .local v5, "$i$f$makeCondAddOp":I
    new-instance v6, Lkotlinx/coroutines/channels/AbstractChannel$enqueueReceiveInternal$$inlined$addLastIfPrevAndIf$1;

    move-object v7, p1

    check-cast v7, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    move-object v8, p1

    check-cast v8, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    invoke-direct {v6, v7, v8, p0}, Lkotlinx/coroutines/channels/AbstractChannel$enqueueReceiveInternal$$inlined$addLastIfPrevAndIf$1;-><init>(Lkotlinx/coroutines/internal/LockFreeLinkedListNode;Lkotlinx/coroutines/internal/LockFreeLinkedListNode;Lkotlinx/coroutines/channels/AbstractChannel;)V

    check-cast v6, Lkotlinx/coroutines/internal/LockFreeLinkedListNode$CondAddOp;

    .line 1144
    nop

    .line 1141
    .end local v4    # "this_$iv$iv":Lkotlinx/coroutines/internal/LockFreeLinkedListNode;
    .end local v5    # "$i$f$makeCondAddOp":I
    move-object v4, v6

    .line 1145
    .local v4, "condAdd$iv":Lkotlinx/coroutines/internal/LockFreeLinkedListNode$CondAddOp;
    :goto_1
    nop

    .line 1146
    invoke-virtual {v0}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->getPrevNode()Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    move-result-object v5

    .line 1147
    .local v5, "prev$iv":Lkotlinx/coroutines/internal/LockFreeLinkedListNode;
    move-object v6, v5

    .local v6, "it":Lkotlinx/coroutines/internal/LockFreeLinkedListNode;
    const/4 v7, 0x0

    .line 594
    .local v7, "$i$a$-addLastIfPrevAndIf-AbstractChannel$enqueueReceiveInternal$2":I
    instance-of v8, v6, Lkotlinx/coroutines/channels/Send;

    .end local v6    # "it":Lkotlinx/coroutines/internal/LockFreeLinkedListNode;
    .end local v7    # "$i$a$-addLastIfPrevAndIf-AbstractChannel$enqueueReceiveInternal$2":I
    xor-int/lit8 v6, v8, 0x1

    if-nez v6, :cond_3

    goto :goto_2

    .line 1148
    :cond_3
    move-object v6, p1

    check-cast v6, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    invoke-virtual {v5, v6, v0, v4}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->tryCondAddNext(Lkotlinx/coroutines/internal/LockFreeLinkedListNode;Lkotlinx/coroutines/internal/LockFreeLinkedListNode;Lkotlinx/coroutines/internal/LockFreeLinkedListNode$CondAddOp;)I

    move-result v6

    if-eq v6, v2, :cond_5

    const/4 v7, 0x2

    if-eq v6, v7, :cond_4

    .line 1145
    .end local v5    # "prev$iv":Lkotlinx/coroutines/internal/LockFreeLinkedListNode;
    goto :goto_1

    .line 1150
    .restart local v5    # "prev$iv":Lkotlinx/coroutines/internal/LockFreeLinkedListNode;
    :cond_4
    goto :goto_2

    .line 1149
    :cond_5
    move v1, v2

    .line 592
    .end local v0    # "this_$iv":Lkotlinx/coroutines/internal/LockFreeLinkedListNode;
    .end local v3    # "$i$f$addLastIfPrevAndIf":I
    .end local v4    # "condAdd$iv":Lkotlinx/coroutines/internal/LockFreeLinkedListNode$CondAddOp;
    .end local v5    # "prev$iv":Lkotlinx/coroutines/internal/LockFreeLinkedListNode;
    :goto_2
    nop

    .line 594
    return v1
.end method

.method protected final getHasReceiveOrClosed()Z
    .locals 1

    .line 547
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/AbstractChannel;->getQueue()Lkotlinx/coroutines/internal/LockFreeLinkedListHead;

    move-result-object v0

    invoke-virtual {v0}, Lkotlinx/coroutines/internal/LockFreeLinkedListHead;->getNextNode()Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    move-result-object v0

    instance-of v0, v0, Lkotlinx/coroutines/channels/ReceiveOrClosed;

    return v0
.end method

.method public final getOnReceive()Lkotlinx/coroutines/selects/SelectClause1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/selects/SelectClause1<",
            "TE;>;"
        }
    .end annotation

    .line 709
    new-instance v0, Lkotlinx/coroutines/channels/AbstractChannel$onReceive$1;

    invoke-direct {v0, p0}, Lkotlinx/coroutines/channels/AbstractChannel$onReceive$1;-><init>(Lkotlinx/coroutines/channels/AbstractChannel;)V

    check-cast v0, Lkotlinx/coroutines/selects/SelectClause1;

    .line 714
    return-object v0
.end method

.method public final getOnReceiveOrClosed()Lkotlinx/coroutines/selects/SelectClause1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/selects/SelectClause1<",
            "Lkotlinx/coroutines/channels/ValueOrClosed<",
            "TE;>;>;"
        }
    .end annotation

    .line 725
    new-instance v0, Lkotlinx/coroutines/channels/AbstractChannel$onReceiveOrClosed$1;

    invoke-direct {v0, p0}, Lkotlinx/coroutines/channels/AbstractChannel$onReceiveOrClosed$1;-><init>(Lkotlinx/coroutines/channels/AbstractChannel;)V

    check-cast v0, Lkotlinx/coroutines/selects/SelectClause1;

    .line 730
    return-object v0
.end method

.method public final getOnReceiveOrNull()Lkotlinx/coroutines/selects/SelectClause1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/selects/SelectClause1<",
            "TE;>;"
        }
    .end annotation

    .line 717
    new-instance v0, Lkotlinx/coroutines/channels/AbstractChannel$onReceiveOrNull$1;

    invoke-direct {v0, p0}, Lkotlinx/coroutines/channels/AbstractChannel$onReceiveOrNull$1;-><init>(Lkotlinx/coroutines/channels/AbstractChannel;)V

    check-cast v0, Lkotlinx/coroutines/selects/SelectClause1;

    .line 722
    return-object v0
.end method

.method protected abstract isBufferAlwaysEmpty()Z
.end method

.method protected abstract isBufferEmpty()Z
.end method

.method public isClosedForReceive()Z
    .locals 1

    .line 551
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/AbstractChannel;->getClosedForReceive()Lkotlinx/coroutines/channels/Closed;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lkotlinx/coroutines/channels/AbstractChannel;->isBufferEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 552
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/AbstractChannel;->isEmptyImpl()Z

    move-result v0

    return v0
.end method

.method protected final isEmptyImpl()Z
    .locals 1

    .line 553
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/AbstractChannel;->getQueue()Lkotlinx/coroutines/internal/LockFreeLinkedListHead;

    move-result-object v0

    invoke-virtual {v0}, Lkotlinx/coroutines/internal/LockFreeLinkedListHead;->getNextNode()Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    move-result-object v0

    instance-of v0, v0, Lkotlinx/coroutines/channels/Send;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lkotlinx/coroutines/channels/AbstractChannel;->isBufferEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final iterator()Lkotlinx/coroutines/channels/ChannelIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/channels/ChannelIterator<",
            "TE;>;"
        }
    .end annotation

    .line 674
    new-instance v0, Lkotlinx/coroutines/channels/AbstractChannel$Itr;

    invoke-direct {v0, p0}, Lkotlinx/coroutines/channels/AbstractChannel$Itr;-><init>(Lkotlinx/coroutines/channels/AbstractChannel;)V

    check-cast v0, Lkotlinx/coroutines/channels/ChannelIterator;

    return-object v0
.end method

.method protected onCancelIdempotent(Z)V
    .locals 8
    .param p1, "wasClosed"    # Z

    .line 656
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/AbstractChannel;->getClosedForSend()Lkotlinx/coroutines/channels/Closed;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 657
    .local v0, "closed":Lkotlinx/coroutines/channels/Closed;
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v1, v2, v1}, Lkotlinx/coroutines/internal/InlineList;->constructor-impl$default(Ljava/lang/Object;ILkotlin/jvm/internal/DefaultConstructorMarker;)Ljava/lang/Object;

    move-result-object v1

    .line 658
    .local v1, "list":Ljava/lang/Object;
    :goto_0
    nop

    .line 659
    invoke-virtual {v0}, Lkotlinx/coroutines/channels/Closed;->getPrevNode()Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    move-result-object v3

    .line 660
    .local v3, "previous":Lkotlinx/coroutines/internal/LockFreeLinkedListNode;
    instance-of v4, v3, Lkotlinx/coroutines/internal/LockFreeLinkedListHead;

    if-eqz v4, :cond_4

    .line 661
    nop

    .line 671
    .end local v3    # "previous":Lkotlinx/coroutines/internal/LockFreeLinkedListNode;
    move-object v3, v1

    .local v3, "$this$iv":Ljava/lang/Object;
    const/4 v4, 0x0

    .line 1154
    .local v4, "$i$f$forEachReversed":I
    if-nez v3, :cond_0

    .line 1155
    goto :goto_3

    .line 1156
    :cond_0
    instance-of v5, v3, Ljava/util/ArrayList;

    if-nez v5, :cond_1

    move-object v2, v3

    check-cast v2, Lkotlinx/coroutines/channels/Send;

    .local v2, "it":Lkotlinx/coroutines/channels/Send;
    const/4 v5, 0x0

    .line 671
    .local v5, "$i$a$-forEachReversed-AbstractChannel$onCancelIdempotent$2":I
    invoke-virtual {v2, v0}, Lkotlinx/coroutines/channels/Send;->resumeSendClosed(Lkotlinx/coroutines/channels/Closed;)V

    .end local v2    # "it":Lkotlinx/coroutines/channels/Send;
    .end local v5    # "$i$a$-forEachReversed-AbstractChannel$onCancelIdempotent$2":I
    goto :goto_2

    .line 1158
    :cond_1
    if-eqz v3, :cond_3

    move-object v5, v3

    check-cast v5, Ljava/util/ArrayList;

    .line 1159
    .local v5, "list$iv":Ljava/util/ArrayList;
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    sub-int/2addr v6, v2

    :goto_1
    if-ltz v6, :cond_2

    move v2, v6

    .line 1160
    .local v2, "i$iv":I
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lkotlinx/coroutines/channels/Send;

    .local v6, "it":Lkotlinx/coroutines/channels/Send;
    const/4 v7, 0x0

    .line 671
    .local v7, "$i$a$-forEachReversed-AbstractChannel$onCancelIdempotent$2":I
    invoke-virtual {v6, v0}, Lkotlinx/coroutines/channels/Send;->resumeSendClosed(Lkotlinx/coroutines/channels/Closed;)V

    .line 1159
    .end local v6    # "it":Lkotlinx/coroutines/channels/Send;
    .end local v7    # "$i$a$-forEachReversed-AbstractChannel$onCancelIdempotent$2":I
    nop

    .end local v2    # "i$iv":I
    add-int/lit8 v6, v2, -0x1

    goto :goto_1

    .line 1163
    .end local v5    # "list$iv":Ljava/util/ArrayList;
    :cond_2
    :goto_2
    nop

    .line 1164
    nop

    .line 672
    .end local v3    # "$this$iv":Ljava/lang/Object;
    .end local v4    # "$i$f$forEachReversed":I
    :goto_3
    return-void

    .line 1158
    .restart local v3    # "$this$iv":Ljava/lang/Object;
    .restart local v4    # "$i$f$forEachReversed":I
    :cond_3
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v5, "null cannot be cast to non-null type kotlin.collections.ArrayList<E> /* = java.util.ArrayList<E> */"

    invoke-direct {v2, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 663
    .end local v4    # "$i$f$forEachReversed":I
    .local v3, "previous":Lkotlinx/coroutines/internal/LockFreeLinkedListNode;
    :cond_4
    invoke-static {}, Lkotlinx/coroutines/DebugKt;->getASSERTIONS_ENABLED()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1131
    const/4 v4, 0x0

    .line 663
    .local v4, "$i$a$-assert-AbstractChannel$onCancelIdempotent$1":I
    instance-of v4, v3, Lkotlinx/coroutines/channels/Send;

    .end local v4    # "$i$a$-assert-AbstractChannel$onCancelIdempotent$1":I
    if-eqz v4, :cond_5

    goto :goto_4

    :cond_5
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    check-cast v2, Ljava/lang/Throwable;

    throw v2

    .line 664
    :cond_6
    :goto_4
    invoke-virtual {v3}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->remove()Z

    move-result v4

    if-nez v4, :cond_7

    .line 665
    invoke-virtual {v3}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->helpRemove()V

    .line 666
    goto :goto_0

    .line 669
    :cond_7
    if-eqz v3, :cond_8

    move-object v4, v3

    check-cast v4, Lkotlinx/coroutines/channels/Send;

    invoke-static {v1, v4}, Lkotlinx/coroutines/internal/InlineList;->plus-UZ7vuAc(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 658
    .end local v3    # "previous":Lkotlinx/coroutines/internal/LockFreeLinkedListNode;
    goto :goto_0

    .line 669
    .restart local v3    # "previous":Lkotlinx/coroutines/internal/LockFreeLinkedListNode;
    :cond_8
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v4, "null cannot be cast to non-null type kotlinx.coroutines.channels.Send"

    invoke-direct {v2, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 656
    .end local v0    # "closed":Lkotlinx/coroutines/channels/Closed;
    .end local v1    # "list":Ljava/lang/Object;
    .end local v3    # "previous":Lkotlinx/coroutines/internal/LockFreeLinkedListNode;
    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot happen"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method

.method protected onReceiveDequeued()V
    .locals 0

    .line 808
    return-void
.end method

.method protected onReceiveEnqueued()V
    .locals 0

    .line 802
    return-void
.end method

.method public final poll()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 629
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/AbstractChannel;->pollInternal()Ljava/lang/Object;

    move-result-object v0

    .line 630
    .local v0, "result":Ljava/lang/Object;
    sget-object v1, Lkotlinx/coroutines/channels/AbstractChannelKt;->POLL_FAILED:Lkotlinx/coroutines/internal/Symbol;

    if-ne v0, v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-direct {p0, v0}, Lkotlinx/coroutines/channels/AbstractChannel;->receiveOrNullResult(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method protected pollInternal()Ljava/lang/Object;
    .locals 4

    .line 514
    :goto_0
    nop

    .line 515
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/AbstractChannel;->takeFirstSendOrPeekClosed()Lkotlinx/coroutines/channels/Send;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 516
    .local v0, "send":Lkotlinx/coroutines/channels/Send;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lkotlinx/coroutines/channels/Send;->tryResumeSend(Lkotlinx/coroutines/internal/LockFreeLinkedListNode$PrepareOp;)Lkotlinx/coroutines/internal/Symbol;

    move-result-object v1

    .line 517
    .local v1, "token":Lkotlinx/coroutines/internal/Symbol;
    if-eqz v1, :cond_3

    .line 518
    invoke-static {}, Lkotlinx/coroutines/DebugKt;->getASSERTIONS_ENABLED()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1131
    const/4 v2, 0x0

    .line 518
    .local v2, "$i$a$-assert-AbstractChannel$pollInternal$1":I
    sget-object v3, Lkotlinx/coroutines/CancellableContinuationImplKt;->RESUME_TOKEN:Lkotlinx/coroutines/internal/Symbol;

    if-ne v1, v3, :cond_0

    const/4 v3, 0x1

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    .end local v2    # "$i$a$-assert-AbstractChannel$pollInternal$1":I
    :goto_1
    if-eqz v3, :cond_1

    goto :goto_2

    :cond_1
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    check-cast v2, Ljava/lang/Throwable;

    throw v2

    .line 519
    :cond_2
    :goto_2
    invoke-virtual {v0}, Lkotlinx/coroutines/channels/Send;->completeResumeSend()V

    .line 520
    invoke-virtual {v0}, Lkotlinx/coroutines/channels/Send;->getPollResult()Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 523
    :cond_3
    invoke-virtual {v0}, Lkotlinx/coroutines/channels/Send;->undeliveredElement()V

    .line 514
    .end local v0    # "send":Lkotlinx/coroutines/channels/Send;
    .end local v1    # "token":Lkotlinx/coroutines/internal/Symbol;
    goto :goto_0

    .line 515
    :cond_4
    sget-object v0, Lkotlinx/coroutines/channels/AbstractChannelKt;->POLL_FAILED:Lkotlinx/coroutines/internal/Symbol;

    return-object v0
.end method

.method protected pollSelectInternal(Lkotlinx/coroutines/selects/SelectInstance;)Ljava/lang/Object;
    .locals 4
    .param p1, "select"    # Lkotlinx/coroutines/selects/SelectInstance;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/selects/SelectInstance<",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 534
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/AbstractChannel;->describeTryPoll()Lkotlinx/coroutines/channels/AbstractChannel$TryPollDesc;

    move-result-object v0

    .line 535
    .local v0, "pollOp":Lkotlinx/coroutines/channels/AbstractChannel$TryPollDesc;
    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/internal/AtomicDesc;

    invoke-interface {p1, v1}, Lkotlinx/coroutines/selects/SelectInstance;->performAtomicTrySelect(Lkotlinx/coroutines/internal/AtomicDesc;)Ljava/lang/Object;

    move-result-object v1

    .line 536
    .local v1, "failure":Ljava/lang/Object;
    if-eqz v1, :cond_0

    return-object v1

    .line 537
    :cond_0
    invoke-virtual {v0}, Lkotlinx/coroutines/channels/AbstractChannel$TryPollDesc;->getResult()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlinx/coroutines/channels/Send;

    .line 538
    .local v2, "send":Lkotlinx/coroutines/channels/Send;
    invoke-virtual {v2}, Lkotlinx/coroutines/channels/Send;->completeResumeSend()V

    .line 539
    invoke-virtual {v0}, Lkotlinx/coroutines/channels/AbstractChannel$TryPollDesc;->getResult()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkotlinx/coroutines/channels/Send;

    invoke-virtual {v3}, Lkotlinx/coroutines/channels/Send;->getPollResult()Ljava/lang/Object;

    move-result-object v3

    return-object v3
.end method

.method public final receive(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .param p1, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-TE;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 557
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/AbstractChannel;->pollInternal()Ljava/lang/Object;

    move-result-object v0

    .line 563
    .local v0, "result":Ljava/lang/Object;
    nop

    .line 564
    sget-object v1, Lkotlinx/coroutines/channels/AbstractChannelKt;->POLL_FAILED:Lkotlinx/coroutines/internal/Symbol;

    if-eq v0, v1, :cond_0

    instance-of v1, v0, Lkotlinx/coroutines/channels/Closed;

    if-nez v1, :cond_0

    return-object v0

    .line 566
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1, p1}, Lkotlinx/coroutines/channels/AbstractChannel;->receiveSuspend(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public final receiveOrClosed-ZYPwvRU(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 9
    .param p1, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlinx/coroutines/channels/ValueOrClosed<",
            "+TE;>;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lkotlinx/coroutines/channels/AbstractChannel$receiveOrClosed$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lkotlinx/coroutines/channels/AbstractChannel$receiveOrClosed$1;

    iget v1, v0, Lkotlinx/coroutines/channels/AbstractChannel$receiveOrClosed$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget v1, v0, Lkotlinx/coroutines/channels/AbstractChannel$receiveOrClosed$1;->label:I

    sub-int/2addr v1, v2

    iput v1, v0, Lkotlinx/coroutines/channels/AbstractChannel$receiveOrClosed$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lkotlinx/coroutines/channels/AbstractChannel$receiveOrClosed$1;

    invoke-direct {v0, p0, p1}, Lkotlinx/coroutines/channels/AbstractChannel$receiveOrClosed$1;-><init>(Lkotlinx/coroutines/channels/AbstractChannel;Lkotlin/coroutines/Continuation;)V

    .local v0, "$continuation":Lkotlin/coroutines/Continuation;
    :goto_0
    iget-object v1, v0, Lkotlinx/coroutines/channels/AbstractChannel$receiveOrClosed$1;->result:Ljava/lang/Object;

    .local v1, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    .line 619
    iget v3, v0, Lkotlinx/coroutines/channels/AbstractChannel$receiveOrClosed$1;->label:I

    const/4 v4, 0x1

    if-eqz v3, :cond_2

    if-ne v3, v4, :cond_1

    const/4 v2, 0x0

    .local v2, "result":Ljava/lang/Object;
    iget-object v2, v0, Lkotlinx/coroutines/channels/AbstractChannel$receiveOrClosed$1;->L$1:Ljava/lang/Object;

    iget-object v3, v0, Lkotlinx/coroutines/channels/AbstractChannel$receiveOrClosed$1;->L$0:Ljava/lang/Object;

    check-cast v3, Lkotlinx/coroutines/channels/AbstractChannel;

    .end local p0    # "this":Lkotlinx/coroutines/channels/AbstractChannel;
    .local v3, "this":Lkotlinx/coroutines/channels/AbstractChannel;
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v4, v1

    goto :goto_2

    .line 624
    .end local v0    # "$continuation":Lkotlin/coroutines/Continuation;
    .end local v1    # "$result":Ljava/lang/Object;
    .end local v2    # "result":Ljava/lang/Object;
    .end local v3    # "this":Lkotlinx/coroutines/channels/AbstractChannel;
    .restart local p0    # "this":Lkotlinx/coroutines/channels/AbstractChannel;
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 619
    .restart local v0    # "$continuation":Lkotlin/coroutines/Continuation;
    .restart local v1    # "$result":Ljava/lang/Object;
    :cond_2
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 621
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/AbstractChannel;->pollInternal()Ljava/lang/Object;

    move-result-object v3

    .line 622
    .local v3, "result":Ljava/lang/Object;
    sget-object v5, Lkotlinx/coroutines/channels/AbstractChannelKt;->POLL_FAILED:Lkotlinx/coroutines/internal/Symbol;

    if-eq v3, v5, :cond_4

    move-object v2, v3

    .local v2, "$this$toResult$iv":Ljava/lang/Object;
    const/4 v4, 0x0

    .line 1151
    .local v4, "$i$f$toResult":I
    instance-of v5, v2, Lkotlinx/coroutines/channels/Closed;

    if-eqz v5, :cond_3

    sget-object v5, Lkotlinx/coroutines/channels/ValueOrClosed;->Companion:Lkotlinx/coroutines/channels/ValueOrClosed$Companion;

    .local v5, "this_$iv$iv":Lkotlinx/coroutines/channels/ValueOrClosed$Companion;
    move-object v6, v2

    check-cast v6, Lkotlinx/coroutines/channels/Closed;

    iget-object v6, v6, Lkotlinx/coroutines/channels/Closed;->closeCause:Ljava/lang/Throwable;

    .local v6, "cause$iv$iv":Ljava/lang/Throwable;
    const/4 v7, 0x0

    .line 1152
    .local v7, "$i$f$closed-ZYPwvRU$kotlinx_coroutines_core":I
    new-instance v8, Lkotlinx/coroutines/channels/ValueOrClosed$Closed;

    invoke-direct {v8, v6}, Lkotlinx/coroutines/channels/ValueOrClosed$Closed;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v8}, Lkotlinx/coroutines/channels/ValueOrClosed;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "this_$iv$iv":Lkotlinx/coroutines/channels/ValueOrClosed$Companion;
    .end local v6    # "cause$iv$iv":Ljava/lang/Throwable;
    .end local v7    # "$i$f$closed-ZYPwvRU$kotlinx_coroutines_core":I
    goto :goto_1

    .line 1151
    :cond_3
    sget-object v5, Lkotlinx/coroutines/channels/ValueOrClosed;->Companion:Lkotlinx/coroutines/channels/ValueOrClosed$Companion;

    .restart local v5    # "this_$iv$iv":Lkotlinx/coroutines/channels/ValueOrClosed$Companion;
    move-object v6, v2

    .local v6, "value$iv$iv":Ljava/lang/Object;
    const/4 v7, 0x0

    .line 1153
    .local v7, "$i$f$value-ZYPwvRU$kotlinx_coroutines_core":I
    invoke-static {v6}, Lkotlinx/coroutines/channels/ValueOrClosed;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 1151
    .end local v5    # "this_$iv$iv":Lkotlinx/coroutines/channels/ValueOrClosed$Companion;
    .end local v6    # "value$iv$iv":Ljava/lang/Object;
    .end local v7    # "$i$f$value-ZYPwvRU$kotlinx_coroutines_core":I
    nop

    .line 622
    .end local v2    # "$this$toResult$iv":Ljava/lang/Object;
    .end local v4    # "$i$f$toResult":I
    :goto_1
    return-object v5

    .line 624
    :cond_4
    const/4 v5, 0x2

    iput-object p0, v0, Lkotlinx/coroutines/channels/AbstractChannel$receiveOrClosed$1;->L$0:Ljava/lang/Object;

    iput-object v3, v0, Lkotlinx/coroutines/channels/AbstractChannel$receiveOrClosed$1;->L$1:Ljava/lang/Object;

    iput v4, v0, Lkotlinx/coroutines/channels/AbstractChannel$receiveOrClosed$1;->label:I

    invoke-virtual {p0, v5, v0}, Lkotlinx/coroutines/channels/AbstractChannel;->receiveSuspend(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v2, :cond_5

    .line 619
    return-object v2

    .line 624
    :cond_5
    move-object v2, v3

    move-object v3, p0

    .end local p0    # "this":Lkotlinx/coroutines/channels/AbstractChannel;
    .local v2, "result":Ljava/lang/Object;
    .local v3, "this":Lkotlinx/coroutines/channels/AbstractChannel;
    :goto_2
    check-cast v4, Lkotlinx/coroutines/channels/ValueOrClosed;

    invoke-virtual {v4}, Lkotlinx/coroutines/channels/ValueOrClosed;->unbox-impl()Ljava/lang/Object;

    move-result-object v4

    return-object v4
.end method

.method public final receiveOrNull(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .param p1, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-TE;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 602
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/AbstractChannel;->pollInternal()Ljava/lang/Object;

    move-result-object v0

    .line 603
    .local v0, "result":Ljava/lang/Object;
    nop

    .line 604
    sget-object v1, Lkotlinx/coroutines/channels/AbstractChannelKt;->POLL_FAILED:Lkotlinx/coroutines/internal/Symbol;

    if-eq v0, v1, :cond_0

    instance-of v1, v0, Lkotlinx/coroutines/channels/Closed;

    if-nez v1, :cond_0

    return-object v0

    .line 606
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p0, v1, p1}, Lkotlinx/coroutines/channels/AbstractChannel;->receiveSuspend(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method final synthetic receiveSuspend(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 10
    .param p1, "receiveMode"    # I
    .param p2, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(I",
            "Lkotlin/coroutines/Continuation<",
            "-TR;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 570
    const/4 v0, 0x0

    .line 1132
    .local v0, "$i$f$suspendCancellableCoroutineReusable":I
    move-object v1, p2

    .local v1, "uCont$iv":Lkotlin/coroutines/Continuation;
    const/4 v2, 0x0

    .line 1133
    .local v2, "$i$a$-suspendCoroutineUninterceptedOrReturn-CancellableContinuationKt$suspendCancellableCoroutineReusable$2$iv":I
    invoke-static {v1}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v3

    invoke-static {v3}, Lkotlinx/coroutines/CancellableContinuationKt;->getOrCreateCancellableContinuation(Lkotlin/coroutines/Continuation;)Lkotlinx/coroutines/CancellableContinuationImpl;

    move-result-object v3

    .line 1134
    .local v3, "cancellable$iv":Lkotlinx/coroutines/CancellableContinuationImpl;
    move-object v4, v3

    check-cast v4, Lkotlinx/coroutines/CancellableContinuation;

    .local v4, "cont":Lkotlinx/coroutines/CancellableContinuation;
    const/4 v5, 0x0

    .line 571
    .local v5, "$i$a$-suspendCancellableCoroutineReusable-AbstractChannel$receiveSuspend$2":I
    iget-object v6, p0, Lkotlinx/coroutines/channels/AbstractChannel;->onUndeliveredElement:Lkotlin/jvm/functions/Function1;

    const-string v7, "null cannot be cast to non-null type kotlinx.coroutines.CancellableContinuation<kotlin.Any?>"

    if-nez v6, :cond_1

    .line 572
    new-instance v6, Lkotlinx/coroutines/channels/AbstractChannel$ReceiveElement;

    if-eqz v4, :cond_0

    invoke-direct {v6, v4, p1}, Lkotlinx/coroutines/channels/AbstractChannel$ReceiveElement;-><init>(Lkotlinx/coroutines/CancellableContinuation;I)V

    goto :goto_0

    :cond_0
    new-instance v6, Ljava/lang/NullPointerException;

    invoke-direct {v6, v7}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 573
    :cond_1
    new-instance v6, Lkotlinx/coroutines/channels/AbstractChannel$ReceiveElementWithUndeliveredHandler;

    if-eqz v4, :cond_6

    iget-object v7, p0, Lkotlinx/coroutines/channels/AbstractChannel;->onUndeliveredElement:Lkotlin/jvm/functions/Function1;

    invoke-direct {v6, v4, p1, v7}, Lkotlinx/coroutines/channels/AbstractChannel$ReceiveElementWithUndeliveredHandler;-><init>(Lkotlinx/coroutines/CancellableContinuation;ILkotlin/jvm/functions/Function1;)V

    check-cast v6, Lkotlinx/coroutines/channels/AbstractChannel$ReceiveElement;

    .line 571
    :goto_0
    nop

    .line 574
    .local v6, "receive":Lkotlinx/coroutines/channels/AbstractChannel$ReceiveElement;
    :goto_1
    nop

    .line 575
    move-object v7, v6

    check-cast v7, Lkotlinx/coroutines/channels/Receive;

    invoke-static {p0, v7}, Lkotlinx/coroutines/channels/AbstractChannel;->access$enqueueReceive(Lkotlinx/coroutines/channels/AbstractChannel;Lkotlinx/coroutines/channels/Receive;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 576
    move-object v7, v6

    check-cast v7, Lkotlinx/coroutines/channels/Receive;

    invoke-static {p0, v4, v7}, Lkotlinx/coroutines/channels/AbstractChannel;->access$removeReceiveOnCancel(Lkotlinx/coroutines/channels/AbstractChannel;Lkotlinx/coroutines/CancellableContinuation;Lkotlinx/coroutines/channels/Receive;)V

    .line 577
    goto :goto_2

    .line 580
    :cond_2
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/AbstractChannel;->pollInternal()Ljava/lang/Object;

    move-result-object v7

    .line 581
    .local v7, "result":Ljava/lang/Object;
    instance-of v8, v7, Lkotlinx/coroutines/channels/Closed;

    if-eqz v8, :cond_3

    .line 582
    move-object v8, v7

    check-cast v8, Lkotlinx/coroutines/channels/Closed;

    invoke-virtual {v6, v8}, Lkotlinx/coroutines/channels/AbstractChannel$ReceiveElement;->resumeReceiveClosed(Lkotlinx/coroutines/channels/Closed;)V

    .line 583
    goto :goto_2

    .line 585
    :cond_3
    sget-object v8, Lkotlinx/coroutines/channels/AbstractChannelKt;->POLL_FAILED:Lkotlinx/coroutines/internal/Symbol;

    if-eq v7, v8, :cond_5

    .line 586
    invoke-virtual {v6, v7}, Lkotlinx/coroutines/channels/AbstractChannel$ReceiveElement;->resumeValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v6, v7}, Lkotlinx/coroutines/channels/AbstractChannel$ReceiveElement;->resumeOnCancellationFun(Ljava/lang/Object;)Lkotlin/jvm/functions/Function1;

    move-result-object v9

    invoke-interface {v4, v8, v9}, Lkotlinx/coroutines/CancellableContinuation;->resume(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)V

    .line 587
    nop

    .line 1135
    .end local v4    # "cont":Lkotlinx/coroutines/CancellableContinuation;
    .end local v5    # "$i$a$-suspendCancellableCoroutineReusable-AbstractChannel$receiveSuspend$2":I
    .end local v6    # "receive":Lkotlinx/coroutines/channels/AbstractChannel$ReceiveElement;
    .end local v7    # "result":Ljava/lang/Object;
    :goto_2
    invoke-virtual {v3}, Lkotlinx/coroutines/CancellableContinuationImpl;->getResult()Ljava/lang/Object;

    move-result-object v3

    .line 1132
    .end local v1    # "uCont$iv":Lkotlin/coroutines/Continuation;
    .end local v2    # "$i$a$-suspendCoroutineUninterceptedOrReturn-CancellableContinuationKt$suspendCancellableCoroutineReusable$2$iv":I
    .end local v3    # "cancellable$iv":Lkotlinx/coroutines/CancellableContinuationImpl;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    if-ne v3, v1, :cond_4

    invoke-static {p2}, Lkotlin/coroutines/jvm/internal/DebugProbesKt;->probeCoroutineSuspended(Lkotlin/coroutines/Continuation;)V

    .line 1136
    :cond_4
    nop

    .line 590
    .end local v0    # "$i$f$suspendCancellableCoroutineReusable":I
    return-object v3

    .line 574
    .restart local v0    # "$i$f$suspendCancellableCoroutineReusable":I
    .restart local v1    # "uCont$iv":Lkotlin/coroutines/Continuation;
    .restart local v2    # "$i$a$-suspendCoroutineUninterceptedOrReturn-CancellableContinuationKt$suspendCancellableCoroutineReusable$2$iv":I
    .restart local v3    # "cancellable$iv":Lkotlinx/coroutines/CancellableContinuationImpl;
    .restart local v4    # "cont":Lkotlinx/coroutines/CancellableContinuation;
    .restart local v5    # "$i$a$-suspendCancellableCoroutineReusable-AbstractChannel$receiveSuspend$2":I
    .restart local v6    # "receive":Lkotlinx/coroutines/channels/AbstractChannel$ReceiveElement;
    :cond_5
    goto :goto_1

    .line 573
    .end local v6    # "receive":Lkotlinx/coroutines/channels/AbstractChannel$ReceiveElement;
    :cond_6
    new-instance v6, Ljava/lang/NullPointerException;

    invoke-direct {v6, v7}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v6
.end method

.method protected takeFirstReceiveOrPeekClosed()Lkotlinx/coroutines/channels/ReceiveOrClosed;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/channels/ReceiveOrClosed<",
            "TE;>;"
        }
    .end annotation

    .line 794
    invoke-super {p0}, Lkotlinx/coroutines/channels/AbstractSendChannel;->takeFirstReceiveOrPeekClosed()Lkotlinx/coroutines/channels/ReceiveOrClosed;

    move-result-object v0

    move-object v1, v0

    .local v1, "it":Lkotlinx/coroutines/channels/ReceiveOrClosed;
    const/4 v2, 0x0

    .line 795
    .local v2, "$i$a$-also-AbstractChannel$takeFirstReceiveOrPeekClosed$1":I
    if-eqz v1, :cond_0

    instance-of v3, v1, Lkotlinx/coroutines/channels/Closed;

    if-nez v3, :cond_0

    invoke-virtual {p0}, Lkotlinx/coroutines/channels/AbstractChannel;->onReceiveDequeued()V

    .line 796
    :cond_0
    nop

    .line 794
    .end local v1    # "it":Lkotlinx/coroutines/channels/ReceiveOrClosed;
    .end local v2    # "$i$a$-also-AbstractChannel$takeFirstReceiveOrPeekClosed$1":I
    nop

    .line 796
    return-object v0
.end method
