.class final Lkotlinx/coroutines/ThreadState;
.super Ljava/lang/Object;
.source "Interruptible.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/Throwable;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nInterruptible.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Interruptible.kt\nkotlinx/coroutines/ThreadState\n+ 2 AtomicFU.common.kt\nkotlinx/atomicfu/AtomicFU_commonKt\n*L\n1#1,157:1\n276#2,2:158\n276#2,2:160\n276#2,2:162\n*E\n*S KotlinDebug\n*F\n+ 1 Interruptible.kt\nkotlinx/coroutines/ThreadState\n*L\n99#1,2:158\n114#1,2:160\n138#1,2:162\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0001\n\u0002\u0008\u0002\n\u0002\u0010\u0003\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\u0008\u0002\u0018\u00002#\u0012\u0015\u0012\u0013\u0018\u00010\r\u00a2\u0006\u000c\u0008\u001c\u0012\u0008\u0008\u001d\u0012\u0004\u0008\u0008(\u000e\u0012\u0004\u0012\u00020\u00050\u001bj\u0002`\u001eB\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0001\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\r\u0010\u0006\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u0017\u0010\u000b\u001a\u00020\n2\u0006\u0010\t\u001a\u00020\u0008H\u0002\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u001a\u0010\u000f\u001a\u00020\u00052\u0008\u0010\u000e\u001a\u0004\u0018\u00010\rH\u0096\u0002\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\r\u0010\u0011\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0011\u0010\u0007R\u0018\u0010\u0013\u001a\u0004\u0018\u00010\u00128\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0013\u0010\u0014R\u0016\u0010\u0002\u001a\u00020\u00018\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0002\u0010\u0015R\u001e\u0010\u0018\u001a\n \u0017*\u0004\u0018\u00010\u00160\u00168\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0018\u0010\u0019\u00a8\u0006\u001a"
    }
    d2 = {
        "Lkotlinx/coroutines/ThreadState;",
        "Lkotlinx/coroutines/Job;",
        "job",
        "<init>",
        "(Lkotlinx/coroutines/Job;)V",
        "",
        "clearInterrupt",
        "()V",
        "",
        "state",
        "",
        "invalidState",
        "(I)Ljava/lang/Void;",
        "",
        "cause",
        "invoke",
        "(Ljava/lang/Throwable;)V",
        "setup",
        "Lkotlinx/coroutines/DisposableHandle;",
        "cancelHandle",
        "Lkotlinx/coroutines/DisposableHandle;",
        "Lkotlinx/coroutines/Job;",
        "Ljava/lang/Thread;",
        "kotlin.jvm.PlatformType",
        "targetThread",
        "Ljava/lang/Thread;",
        "kotlinx-coroutines-core",
        "Lkotlin/Function1;",
        "Lkotlin/ParameterName;",
        "name",
        "Lkotlinx/coroutines/CompletionHandler;"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x0
    }
.end annotation


# static fields
.field private static final _state$FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;


# instance fields
.field private volatile _state:I

.field private cancelHandle:Lkotlinx/coroutines/DisposableHandle;

.field private final job:Lkotlinx/coroutines/Job;

.field private final targetThread:Ljava/lang/Thread;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lkotlinx/coroutines/ThreadState;

    const-string v1, "_state"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/ThreadState;->_state$FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    return-void
.end method

.method public constructor <init>(Lkotlinx/coroutines/Job;)V
    .locals 1
    .param p1, "job"    # Lkotlinx/coroutines/Job;

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlinx/coroutines/ThreadState;->job:Lkotlinx/coroutines/Job;

    .line 90
    const/4 v0, 0x0

    iput v0, p0, Lkotlinx/coroutines/ThreadState;->_state:I

    .line 91
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lkotlinx/coroutines/ThreadState;->targetThread:Ljava/lang/Thread;

    return-void
.end method

.method private final invalidState(I)Ljava/lang/Void;
    .locals 2
    .param p1, "state"    # I

    .line 155
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Illegal state "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    throw v1
.end method


# virtual methods
.method public final clearInterrupt()V
    .locals 6

    .line 114
    move-object v0, p0

    .local v0, "$this$loop$iv":Lkotlinx/coroutines/ThreadState;
    const/4 v1, 0x0

    .line 160
    .local v1, "$i$f$loop":I
    :goto_0
    nop

    .line 161
    iget v2, v0, Lkotlinx/coroutines/ThreadState;->_state:I

    .local v2, "state":I
    const/4 v3, 0x0

    .line 115
    .local v3, "$i$a$-loop-ThreadState$clearInterrupt$1":I
    if-eqz v2, :cond_2

    const/4 v4, 0x2

    if-eq v2, v4, :cond_1

    const/4 v4, 0x3

    if-ne v2, v4, :cond_0

    .line 128
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    .line 129
    return-void

    .line 131
    :cond_0
    invoke-direct {p0, v2}, Lkotlinx/coroutines/ThreadState;->invalidState(I)Ljava/lang/Void;

    new-instance v4, Lkotlin/KotlinNothingValueException;

    invoke-direct {v4}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v4

    .line 118
    :cond_1
    goto :goto_1

    .line 116
    :cond_2
    sget-object v4, Lkotlinx/coroutines/ThreadState;->_state$FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    const/4 v5, 0x1

    invoke-virtual {v4, p0, v2, v5}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 117
    iget-object v4, p0, Lkotlinx/coroutines/ThreadState;->cancelHandle:Lkotlinx/coroutines/DisposableHandle;

    if-eqz v4, :cond_3

    invoke-interface {v4}, Lkotlinx/coroutines/DisposableHandle;->dispose()V

    .line 118
    :cond_3
    return-void

    .line 133
    :cond_4
    :goto_1
    nop

    .line 160
    .end local v2    # "state":I
    .end local v3    # "$i$a$-loop-ThreadState$clearInterrupt$1":I
    goto :goto_0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 60
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lkotlinx/coroutines/ThreadState;->invoke(Ljava/lang/Throwable;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public invoke(Ljava/lang/Throwable;)V
    .locals 7
    .param p1, "cause"    # Ljava/lang/Throwable;

    .line 138
    move-object v0, p0

    .local v0, "$this$loop$iv":Lkotlinx/coroutines/ThreadState;
    const/4 v1, 0x0

    .line 162
    .local v1, "$i$f$loop":I
    :goto_0
    nop

    .line 163
    iget v2, v0, Lkotlinx/coroutines/ThreadState;->_state:I

    .local v2, "state":I
    const/4 v3, 0x0

    .line 139
    .local v3, "$i$a$-loop-ThreadState$invoke$1":I
    const/4 v4, 0x3

    const/4 v5, 0x2

    if-eqz v2, :cond_2

    const/4 v6, 0x1

    if-eq v2, v6, :cond_1

    if-eq v2, v5, :cond_1

    if-ne v2, v4, :cond_0

    goto :goto_1

    .line 150
    :cond_0
    invoke-direct {p0, v2}, Lkotlinx/coroutines/ThreadState;->invalidState(I)Ljava/lang/Void;

    new-instance v4, Lkotlin/KotlinNothingValueException;

    invoke-direct {v4}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v4

    .line 149
    :cond_1
    :goto_1
    return-void

    .line 142
    :cond_2
    sget-object v6, Lkotlinx/coroutines/ThreadState;->_state$FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v6, p0, v2, v5}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 143
    iget-object v5, p0, Lkotlinx/coroutines/ThreadState;->targetThread:Ljava/lang/Thread;

    invoke-virtual {v5}, Ljava/lang/Thread;->interrupt()V

    .line 144
    iput v4, p0, Lkotlinx/coroutines/ThreadState;->_state:I

    .line 145
    return-void

    .line 152
    :cond_3
    nop

    .line 162
    .end local v2    # "state":I
    .end local v3    # "$i$a$-loop-ThreadState$invoke$1":I
    goto :goto_0
.end method

.method public final setup()V
    .locals 6

    .line 97
    iget-object v0, p0, Lkotlinx/coroutines/ThreadState;->job:Lkotlinx/coroutines/Job;

    move-object v1, p0

    check-cast v1, Lkotlin/jvm/functions/Function1;

    const/4 v2, 0x1

    invoke-interface {v0, v2, v2, v1}, Lkotlinx/coroutines/Job;->invokeOnCompletion(ZZLkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/DisposableHandle;

    move-result-object v0

    iput-object v0, p0, Lkotlinx/coroutines/ThreadState;->cancelHandle:Lkotlinx/coroutines/DisposableHandle;

    .line 99
    move-object v0, p0

    .local v0, "$this$loop$iv":Lkotlinx/coroutines/ThreadState;
    const/4 v1, 0x0

    .line 158
    .local v1, "$i$f$loop":I
    :goto_0
    nop

    .line 159
    iget v2, v0, Lkotlinx/coroutines/ThreadState;->_state:I

    .local v2, "state":I
    const/4 v3, 0x0

    .line 100
    .local v3, "$i$a$-loop-ThreadState$setup$1":I
    if-eqz v2, :cond_2

    const/4 v4, 0x2

    if-eq v2, v4, :cond_1

    const/4 v4, 0x3

    if-ne v2, v4, :cond_0

    goto :goto_1

    .line 105
    :cond_0
    invoke-direct {p0, v2}, Lkotlinx/coroutines/ThreadState;->invalidState(I)Ljava/lang/Void;

    new-instance v4, Lkotlin/KotlinNothingValueException;

    invoke-direct {v4}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v4

    .line 104
    :cond_1
    :goto_1
    return-void

    .line 102
    :cond_2
    sget-object v4, Lkotlinx/coroutines/ThreadState;->_state$FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    const/4 v5, 0x0

    invoke-virtual {v4, p0, v2, v5}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_3

    return-void

    .line 107
    :cond_3
    nop

    .line 158
    .end local v2    # "state":I
    .end local v3    # "$i$a$-loop-ThreadState$setup$1":I
    goto :goto_0
.end method
