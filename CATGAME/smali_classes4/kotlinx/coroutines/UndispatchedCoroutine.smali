.class final Lkotlinx/coroutines/UndispatchedCoroutine;
.super Lkotlinx/coroutines/internal/ScopeCoroutine;
.source "Builders.common.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lkotlinx/coroutines/internal/ScopeCoroutine<",
        "TT;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBuilders.common.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Builders.common.kt\nkotlinx/coroutines/UndispatchedCoroutine\n+ 2 CoroutineContext.kt\nkotlinx/coroutines/CoroutineContextKt\n*L\n1#1,273:1\n43#2,5:274\n*E\n*S KotlinDebug\n*F\n+ 1 Builders.common.kt\nkotlinx/coroutines/UndispatchedCoroutine\n*L\n213#1,5:274\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\u0008\u0002\u0018\u0000*\u0006\u0008\u0000\u0010\u0001 \u00002\u0008\u0012\u0004\u0012\u0002H\u00010\u0002B\u001b\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0006\u00a2\u0006\u0002\u0010\u0007J\u0012\u0010\u0008\u001a\u00020\t2\u0008\u0010\n\u001a\u0004\u0018\u00010\u000bH\u0014\u00a8\u0006\u000c"
    }
    d2 = {
        "Lkotlinx/coroutines/UndispatchedCoroutine;",
        "T",
        "Lkotlinx/coroutines/internal/ScopeCoroutine;",
        "context",
        "Lkotlin/coroutines/CoroutineContext;",
        "uCont",
        "Lkotlin/coroutines/Continuation;",
        "(Lkotlin/coroutines/CoroutineContext;Lkotlin/coroutines/Continuation;)V",
        "afterResume",
        "",
        "state",
        "",
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
.method public constructor <init>(Lkotlin/coroutines/CoroutineContext;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .param p1, "context"    # Lkotlin/coroutines/CoroutineContext;
    .param p2, "uCont"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/CoroutineContext;",
            "Lkotlin/coroutines/Continuation<",
            "-TT;>;)V"
        }
    .end annotation

    .line 206
    nop

    .line 209
    invoke-direct {p0, p1, p2}, Lkotlinx/coroutines/internal/ScopeCoroutine;-><init>(Lkotlin/coroutines/CoroutineContext;Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method protected afterResume(Ljava/lang/Object;)V
    .locals 7
    .param p1, "state"    # Ljava/lang/Object;

    .line 212
    iget-object v0, p0, Lkotlinx/coroutines/UndispatchedCoroutine;->uCont:Lkotlin/coroutines/Continuation;

    invoke-static {p1, v0}, Lkotlinx/coroutines/CompletionStateKt;->recoverResult(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    .line 213
    .local v0, "result":Ljava/lang/Object;
    iget-object v1, p0, Lkotlinx/coroutines/UndispatchedCoroutine;->uCont:Lkotlin/coroutines/Continuation;

    invoke-interface {v1}, Lkotlin/coroutines/Continuation;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v1

    .local v1, "context$iv":Lkotlin/coroutines/CoroutineContext;
    const/4 v2, 0x0

    .local v2, "countOrElement$iv":Ljava/lang/Object;
    const/4 v3, 0x0

    .line 274
    .local v3, "$i$f$withCoroutineContext":I
    invoke-static {v1, v2}, Lkotlinx/coroutines/internal/ThreadContextKt;->updateThreadContext(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 275
    .local v4, "oldValue$iv":Ljava/lang/Object;
    nop

    .line 276
    const/4 v5, 0x0

    .line 214
    .local v5, "$i$a$-withCoroutineContext-UndispatchedCoroutine$afterResume$1":I
    :try_start_0
    iget-object v6, p0, Lkotlinx/coroutines/UndispatchedCoroutine;->uCont:Lkotlin/coroutines/Continuation;

    invoke-interface {v6, v0}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    .line 215
    .end local v5    # "$i$a$-withCoroutineContext-UndispatchedCoroutine$afterResume$1":I
    sget-object v5, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 278
    invoke-static {v1, v4}, Lkotlinx/coroutines/internal/ThreadContextKt;->restoreThreadContext(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Object;)V

    .line 276
    nop

    .line 216
    .end local v1    # "context$iv":Lkotlin/coroutines/CoroutineContext;
    .end local v2    # "countOrElement$iv":Ljava/lang/Object;
    .end local v3    # "$i$f$withCoroutineContext":I
    .end local v4    # "oldValue$iv":Ljava/lang/Object;
    return-void

    .line 276
    .restart local v1    # "context$iv":Lkotlin/coroutines/CoroutineContext;
    .restart local v2    # "countOrElement$iv":Ljava/lang/Object;
    .restart local v3    # "$i$f$withCoroutineContext":I
    .restart local v4    # "oldValue$iv":Ljava/lang/Object;
    :catchall_0
    move-exception v5

    .line 278
    invoke-static {v1, v4}, Lkotlinx/coroutines/internal/ThreadContextKt;->restoreThreadContext(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Object;)V

    throw v5
.end method
