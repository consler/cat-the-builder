.class public final Lkotlinx/coroutines/internal/StackTraceRecoveryKt;
.super Ljava/lang/Object;
.source "StackTraceRecovery.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nStackTraceRecovery.kt\nKotlin\n*S Kotlin\n*F\n+ 1 StackTraceRecovery.kt\nkotlinx/coroutines/internal/StackTraceRecoveryKt\n+ 2 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n+ 3 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,217:1\n37#2,2:218\n12581#3,2:220\n1590#3,6:222\n12581#3,2:228\n1590#3,6:231\n1#4:230\n*E\n*S KotlinDebug\n*F\n+ 1 StackTraceRecovery.kt\nkotlinx/coroutines/internal/StackTraceRecoveryKt\n*L\n104#1,2:218\n129#1,2:220\n139#1,6:222\n170#1,2:228\n196#1,6:231\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000f\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0003\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\u0008\u0002\n\u0002\u0010\u0001\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0008\u001a\u0014\u0010\u0006\u001a\u00060\u0007j\u0002`\u00082\u0006\u0010\t\u001a\u00020\u0001H\u0007\u001a9\u0010\n\u001a\u0002H\u000b\"\u0008\u0008\u0000\u0010\u000b*\u00020\u000c2\u0006\u0010\r\u001a\u0002H\u000b2\u0006\u0010\u000e\u001a\u0002H\u000b2\u0010\u0010\u000f\u001a\u000c\u0012\u0008\u0012\u00060\u0007j\u0002`\u00080\u0010H\u0002\u00a2\u0006\u0002\u0010\u0011\u001a\u001e\u0010\u0012\u001a\u000c\u0012\u0008\u0012\u00060\u0007j\u0002`\u00080\u00102\n\u0010\u0013\u001a\u00060\u0014j\u0002`\u0015H\u0002\u001a1\u0010\u0016\u001a\u00020\u00172\u0010\u0010\u0018\u001a\u000c\u0012\u0008\u0012\u00060\u0007j\u0002`\u00080\u00192\u0010\u0010\u000e\u001a\u000c\u0012\u0008\u0012\u00060\u0007j\u0002`\u00080\u0010H\u0002\u00a2\u0006\u0002\u0010\u001a\u001a\u0019\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u000cH\u0080H\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u001e\u001a+\u0010\u001f\u001a\u0002H\u000b\"\u0008\u0008\u0000\u0010\u000b*\u00020\u000c2\u0006\u0010\u001d\u001a\u0002H\u000b2\n\u0010\u0013\u001a\u00060\u0014j\u0002`\u0015H\u0002\u00a2\u0006\u0002\u0010 \u001a\u001f\u0010!\u001a\u0002H\u000b\"\u0008\u0008\u0000\u0010\u000b*\u00020\u000c2\u0006\u0010\u001d\u001a\u0002H\u000bH\u0000\u00a2\u0006\u0002\u0010\"\u001a,\u0010!\u001a\u0002H\u000b\"\u0008\u0008\u0000\u0010\u000b*\u00020\u000c2\u0006\u0010\u001d\u001a\u0002H\u000b2\n\u0010\u0013\u001a\u0006\u0012\u0002\u0008\u00030#H\u0080\u0008\u00a2\u0006\u0002\u0010$\u001a \u0010%\u001a\u0002H\u000b\"\u0008\u0008\u0000\u0010\u000b*\u00020\u000c2\u0006\u0010\u001d\u001a\u0002H\u000bH\u0080\u0008\u00a2\u0006\u0002\u0010\"\u001a\u001f\u0010&\u001a\u0002H\u000b\"\u0008\u0008\u0000\u0010\u000b*\u00020\u000c2\u0006\u0010\u001d\u001a\u0002H\u000bH\u0000\u00a2\u0006\u0002\u0010\"\u001a1\u0010\'\u001a\u0018\u0012\u0004\u0012\u0002H\u000b\u0012\u000e\u0012\u000c\u0012\u0008\u0012\u00060\u0007j\u0002`\u00080\u00190(\"\u0008\u0008\u0000\u0010\u000b*\u00020\u000c*\u0002H\u000bH\u0002\u00a2\u0006\u0002\u0010)\u001a\u001c\u0010*\u001a\u00020+*\u00060\u0007j\u0002`\u00082\n\u0010,\u001a\u00060\u0007j\u0002`\u0008H\u0002\u001a#\u0010-\u001a\u00020.*\u000c\u0012\u0008\u0012\u00060\u0007j\u0002`\u00080\u00192\u0006\u0010/\u001a\u00020\u0001H\u0002\u00a2\u0006\u0002\u00100\u001a\u0014\u00101\u001a\u00020\u0017*\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000cH\u0000\u001a\u0010\u00102\u001a\u00020+*\u00060\u0007j\u0002`\u0008H\u0000\u001a\u001b\u00103\u001a\u0002H\u000b\"\u0008\u0008\u0000\u0010\u000b*\u00020\u000c*\u0002H\u000bH\u0002\u00a2\u0006\u0002\u0010\"\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0082T\u00a2\u0006\u0002\n\u0000\"\u0016\u0010\u0002\u001a\n \u0003*\u0004\u0018\u00010\u00010\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0004\u001a\u00020\u0001X\u0082T\u00a2\u0006\u0002\n\u0000\"\u0016\u0010\u0005\u001a\n \u0003*\u0004\u0018\u00010\u00010\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000*\u000c\u0008\u0000\u00104\"\u00020\u00142\u00020\u0014*\u000c\u0008\u0000\u00105\"\u00020\u00072\u00020\u0007\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u00066"
    }
    d2 = {
        "baseContinuationImplClass",
        "",
        "baseContinuationImplClassName",
        "kotlin.jvm.PlatformType",
        "stackTraceRecoveryClass",
        "stackTraceRecoveryClassName",
        "artificialFrame",
        "Ljava/lang/StackTraceElement;",
        "Lkotlinx/coroutines/internal/StackTraceElement;",
        "message",
        "createFinalException",
        "E",
        "",
        "cause",
        "result",
        "resultStackTrace",
        "Ljava/util/ArrayDeque;",
        "(Ljava/lang/Throwable;Ljava/lang/Throwable;Ljava/util/ArrayDeque;)Ljava/lang/Throwable;",
        "createStackTrace",
        "continuation",
        "Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;",
        "Lkotlinx/coroutines/internal/CoroutineStackFrame;",
        "mergeRecoveredTraces",
        "",
        "recoveredStacktrace",
        "",
        "([Ljava/lang/StackTraceElement;Ljava/util/ArrayDeque;)V",
        "recoverAndThrow",
        "",
        "exception",
        "(Ljava/lang/Throwable;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "recoverFromStackFrame",
        "(Ljava/lang/Throwable;Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;)Ljava/lang/Throwable;",
        "recoverStackTrace",
        "(Ljava/lang/Throwable;)Ljava/lang/Throwable;",
        "Lkotlin/coroutines/Continuation;",
        "(Ljava/lang/Throwable;Lkotlin/coroutines/Continuation;)Ljava/lang/Throwable;",
        "unwrap",
        "unwrapImpl",
        "causeAndStacktrace",
        "Lkotlin/Pair;",
        "(Ljava/lang/Throwable;)Lkotlin/Pair;",
        "elementWiseEquals",
        "",
        "e",
        "frameIndex",
        "",
        "methodName",
        "([Ljava/lang/StackTraceElement;Ljava/lang/String;)I",
        "initCause",
        "isArtificial",
        "sanitizeStackTrace",
        "CoroutineStackFrame",
        "StackTraceElement",
        "kotlinx-coroutines-core"
    }
    k = 0x2
    mv = {
        0x1,
        0x4,
        0x0
    }
.end annotation


# static fields
.field private static final baseContinuationImplClass:Ljava/lang/String; = "kotlin.coroutines.jvm.internal.BaseContinuationImpl"

.field private static final baseContinuationImplClassName:Ljava/lang/String;

.field private static final stackTraceRecoveryClass:Ljava/lang/String; = "kotlinx.coroutines.internal.StackTraceRecoveryKt"

.field private static final stackTraceRecoveryClassName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 21
    const-string v0, "kotlinx.coroutines.internal.StackTraceRecoveryKt"

    const-string v1, "kotlin.coroutines.jvm.internal.BaseContinuationImpl"

    .line 23
    nop

    .line 21
    :try_start_0
    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    const/4 v2, 0x0

    .line 22
    .local v2, "$i$a$-runCatching-StackTraceRecoveryKt$baseContinuationImplClassName$1":I
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v3

    .line 21
    .end local v2    # "$i$a$-runCatching-StackTraceRecoveryKt$baseContinuationImplClassName$1":I
    invoke-static {v3}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    sget-object v3, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v2}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 23
    :goto_0
    invoke-static {v2}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v3

    if-nez v3, :cond_0

    move-object v1, v2

    goto :goto_1

    :cond_0
    move-object v2, v3

    .line 230
    .local v2, "it":Ljava/lang/Throwable;
    const/4 v3, 0x0

    .line 23
    .local v3, "$i$a$-getOrElse-StackTraceRecoveryKt$baseContinuationImplClassName$2":I
    nop

    .end local v2    # "it":Ljava/lang/Throwable;
    .end local v3    # "$i$a$-getOrElse-StackTraceRecoveryKt$baseContinuationImplClassName$2":I
    :goto_1
    check-cast v1, Ljava/lang/String;

    sput-object v1, Lkotlinx/coroutines/internal/StackTraceRecoveryKt;->baseContinuationImplClassName:Ljava/lang/String;

    .line 25
    nop

    .line 27
    nop

    .line 25
    :try_start_1
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    const/4 v1, 0x0

    .line 26
    .local v1, "$i$a$-runCatching-StackTraceRecoveryKt$stackTraceRecoveryClassName$1":I
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    .line 25
    .end local v1    # "$i$a$-runCatching-StackTraceRecoveryKt$stackTraceRecoveryClassName$1":I
    invoke-static {v2}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v1

    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 27
    :goto_2
    invoke-static {v1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v2

    if-nez v2, :cond_1

    move-object v0, v1

    goto :goto_3

    :cond_1
    move-object v1, v2

    .line 230
    .local v1, "it":Ljava/lang/Throwable;
    const/4 v2, 0x0

    .line 27
    .local v2, "$i$a$-getOrElse-StackTraceRecoveryKt$stackTraceRecoveryClassName$2":I
    nop

    .end local v1    # "it":Ljava/lang/Throwable;
    .end local v2    # "$i$a$-getOrElse-StackTraceRecoveryKt$stackTraceRecoveryClassName$2":I
    :goto_3
    check-cast v0, Ljava/lang/String;

    sput-object v0, Lkotlinx/coroutines/internal/StackTraceRecoveryKt;->stackTraceRecoveryClassName:Ljava/lang/String;

    return-void
.end method

.method public static synthetic CoroutineStackFrame$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic StackTraceElement$annotations()V
    .locals 0

    return-void
.end method

.method public static final synthetic access$recoverFromStackFrame(Ljava/lang/Throwable;Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;)Ljava/lang/Throwable;
    .locals 1
    .param p0, "exception"    # Ljava/lang/Throwable;
    .param p1, "continuation"    # Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;

    .line 1
    invoke-static {p0, p1}, Lkotlinx/coroutines/internal/StackTraceRecoveryKt;->recoverFromStackFrame(Ljava/lang/Throwable;Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;)Ljava/lang/Throwable;

    move-result-object v0

    return-object v0
.end method

.method public static final artificialFrame(Ljava/lang/String;)Ljava/lang/StackTraceElement;
    .locals 4
    .param p0, "message"    # Ljava/lang/String;

    .line 194
    new-instance v0, Ljava/lang/StackTraceElement;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u0008\u0008\u0008("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\u0008"

    const/4 v3, -0x1

    invoke-direct {v0, v1, v2, v2, v3}, Ljava/lang/StackTraceElement;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-object v0
.end method

.method private static final causeAndStacktrace(Ljava/lang/Throwable;)Lkotlin/Pair;
    .locals 10
    .param p0, "$this$causeAndStacktrace"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Throwable;",
            ">(TE;)",
            "Lkotlin/Pair<",
            "TE;[",
            "Ljava/lang/StackTraceElement;",
            ">;"
        }
    .end annotation

    .line 126
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 127
    .local v0, "cause":Ljava/lang/Throwable;
    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 128
    invoke-virtual {p0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    .line 129
    .local v2, "currentTrace":[Ljava/lang/StackTraceElement;
    move-object v3, v2

    .local v3, "$this$any$iv":[Ljava/lang/Object;
    const/4 v4, 0x0

    .line 220
    .local v4, "$i$f$any":I
    array-length v5, v3

    move v6, v1

    :goto_0
    if-ge v6, v5, :cond_1

    aget-object v7, v3, v6

    .local v7, "element$iv":Ljava/lang/Object;
    move-object v8, v7

    .local v8, "it":Ljava/lang/StackTraceElement;
    const/4 v9, 0x0

    .line 129
    .local v9, "$i$a$-any-StackTraceRecoveryKt$causeAndStacktrace$1":I
    invoke-static {v8}, Lkotlinx/coroutines/internal/StackTraceRecoveryKt;->isArtificial(Ljava/lang/StackTraceElement;)Z

    move-result v8

    .end local v8    # "it":Ljava/lang/StackTraceElement;
    .end local v9    # "$i$a$-any-StackTraceRecoveryKt$causeAndStacktrace$1":I
    if-eqz v8, :cond_0

    const/4 v5, 0x1

    goto :goto_1

    .end local v7    # "element$iv":Ljava/lang/Object;
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 221
    :cond_1
    move v5, v1

    .line 129
    .end local v3    # "$this$any$iv":[Ljava/lang/Object;
    .end local v4    # "$i$f$any":I
    :goto_1
    if-eqz v5, :cond_2

    .line 130
    invoke-static {v0, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    goto :goto_2

    .line 131
    :cond_2
    new-array v1, v1, [Ljava/lang/StackTraceElement;

    invoke-static {p0, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    .line 129
    .end local v2    # "currentTrace":[Ljava/lang/StackTraceElement;
    goto :goto_2

    .line 133
    :cond_3
    new-array v1, v1, [Ljava/lang/StackTraceElement;

    invoke-static {p0, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    .line 127
    :goto_2
    return-object v1
.end method

.method private static final createFinalException(Ljava/lang/Throwable;Ljava/lang/Throwable;Ljava/util/ArrayDeque;)Ljava/lang/Throwable;
    .locals 7
    .param p0, "cause"    # Ljava/lang/Throwable;
    .param p1, "result"    # Ljava/lang/Throwable;
    .param p2, "resultStackTrace"    # Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Throwable;",
            ">(TE;TE;",
            "Ljava/util/ArrayDeque<",
            "Ljava/lang/StackTraceElement;",
            ">;)TE;"
        }
    .end annotation

    .line 100
    const-string v0, "Coroutine boundary"

    invoke-static {v0}, Lkotlinx/coroutines/internal/StackTraceRecoveryKt;->artificialFrame(Ljava/lang/String;)Ljava/lang/StackTraceElement;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/ArrayDeque;->addFirst(Ljava/lang/Object;)V

    .line 101
    invoke-virtual {p0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 102
    .local v0, "causeTrace":[Ljava/lang/StackTraceElement;
    sget-object v1, Lkotlinx/coroutines/internal/StackTraceRecoveryKt;->baseContinuationImplClassName:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlinx/coroutines/internal/StackTraceRecoveryKt;->frameIndex([Ljava/lang/StackTraceElement;Ljava/lang/String;)I

    move-result v1

    .line 103
    .local v1, "size":I
    const/4 v2, 0x0

    const/4 v3, -0x1

    if-ne v1, v3, :cond_1

    .line 104
    move-object v3, p2

    check-cast v3, Ljava/util/Collection;

    .local v3, "$this$toTypedArray$iv":Ljava/util/Collection;
    const/4 v4, 0x0

    .line 218
    .local v4, "$i$f$toTypedArray":I
    move-object v5, v3

    .line 219
    .local v5, "thisCollection$iv":Ljava/util/Collection;
    new-array v2, v2, [Ljava/lang/StackTraceElement;

    invoke-interface {v5, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .end local v3    # "$this$toTypedArray$iv":Ljava/util/Collection;
    .end local v4    # "$i$f$toTypedArray":I
    .end local v5    # "thisCollection$iv":Ljava/util/Collection;
    check-cast v2, [Ljava/lang/StackTraceElement;

    invoke-virtual {p1, v2}, Ljava/lang/Throwable;->setStackTrace([Ljava/lang/StackTraceElement;)V

    .line 105
    return-object p1

    .line 219
    .restart local v3    # "$this$toTypedArray$iv":Ljava/util/Collection;
    .restart local v4    # "$i$f$toTypedArray":I
    .restart local v5    # "thisCollection$iv":Ljava/util/Collection;
    :cond_0
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v6, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-direct {v2, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 108
    .end local v3    # "$this$toTypedArray$iv":Ljava/util/Collection;
    .end local v4    # "$i$f$toTypedArray":I
    .end local v5    # "thisCollection$iv":Ljava/util/Collection;
    :cond_1
    invoke-virtual {p2}, Ljava/util/ArrayDeque;->size()I

    move-result v3

    add-int/2addr v3, v1

    new-array v3, v3, [Ljava/lang/StackTraceElement;

    .line 109
    .local v3, "mergedStackTrace":[Ljava/lang/StackTraceElement;
    move v4, v2

    :goto_0
    if-ge v4, v1, :cond_2

    .line 110
    .local v4, "i":I
    aget-object v5, v0, v4

    aput-object v5, v3, v4

    .line 109
    nop

    .end local v4    # "i":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 113
    :cond_2
    move-object v4, p2

    check-cast v4, Ljava/lang/Iterable;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/StackTraceElement;

    .line 114
    .local v2, "index":I
    .local v5, "element":Ljava/lang/StackTraceElement;
    add-int v6, v1, v2

    aput-object v5, v3, v6

    .line 113
    nop

    .end local v2    # "index":I
    .end local v5    # "element":Ljava/lang/StackTraceElement;
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 117
    :cond_3
    invoke-virtual {p1, v3}, Ljava/lang/Throwable;->setStackTrace([Ljava/lang/StackTraceElement;)V

    .line 118
    return-object p1
.end method

.method private static final createStackTrace(Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;)Ljava/util/ArrayDeque;
    .locals 4
    .param p0, "continuation"    # Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;",
            ")",
            "Ljava/util/ArrayDeque<",
            "Ljava/lang/StackTraceElement;",
            ">;"
        }
    .end annotation

    .line 179
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    .line 180
    .local v0, "stack":Ljava/util/ArrayDeque;
    invoke-interface {p0}, Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;->getStackTraceElement()Ljava/lang/StackTraceElement;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 230
    .local v1, "it":Ljava/lang/StackTraceElement;
    const/4 v2, 0x0

    .line 180
    .local v2, "$i$a$-let-StackTraceRecoveryKt$createStackTrace$1":I
    invoke-virtual {v0, v1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 182
    .end local v1    # "it":Ljava/lang/StackTraceElement;
    .end local v2    # "$i$a$-let-StackTraceRecoveryKt$createStackTrace$1":I
    :cond_0
    move-object v1, p0

    .line 183
    .local v1, "last":Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;
    :goto_0
    nop

    .line 184
    instance-of v2, v1, Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;

    if-nez v2, :cond_1

    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    move-object v2, v1

    :goto_1
    if-eqz v2, :cond_3

    invoke-interface {v2}, Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;->getCallerFrame()Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;

    move-result-object v2

    if-eqz v2, :cond_3

    move-object v1, v2

    .line 185
    invoke-interface {v1}, Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;->getStackTraceElement()Ljava/lang/StackTraceElement;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 230
    .local v2, "it":Ljava/lang/StackTraceElement;
    const/4 v3, 0x0

    .line 185
    .local v3, "$i$a$-let-StackTraceRecoveryKt$createStackTrace$2":I
    invoke-virtual {v0, v2}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 183
    .end local v2    # "it":Ljava/lang/StackTraceElement;
    .end local v3    # "$i$a$-let-StackTraceRecoveryKt$createStackTrace$2":I
    :cond_2
    goto :goto_0

    .line 187
    :cond_3
    return-object v0
.end method

.method private static final elementWiseEquals(Ljava/lang/StackTraceElement;Ljava/lang/StackTraceElement;)Z
    .locals 2
    .param p0, "$this$elementWiseEquals"    # Ljava/lang/StackTraceElement;
    .param p1, "e"    # Ljava/lang/StackTraceElement;

    .line 203
    nop

    .line 204
    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 203
    :goto_0
    return v0
.end method

.method private static final frameIndex([Ljava/lang/StackTraceElement;Ljava/lang/String;)I
    .locals 7
    .param p0, "$this$frameIndex"    # [Ljava/lang/StackTraceElement;
    .param p1, "methodName"    # Ljava/lang/String;

    .line 196
    move-object v0, p0

    .local v0, "$this$indexOfFirst$iv":[Ljava/lang/Object;
    const/4 v1, 0x0

    .line 231
    .local v1, "$i$f$indexOfFirst":I
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    .line 232
    .local v3, "index$iv":I
    aget-object v4, v0, v3

    .local v4, "it":Ljava/lang/StackTraceElement;
    const/4 v5, 0x0

    .line 196
    .local v5, "$i$a$-indexOfFirst-StackTraceRecoveryKt$frameIndex$1":I
    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v6

    invoke-static {p1, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    .end local v4    # "it":Ljava/lang/StackTraceElement;
    .end local v5    # "$i$a$-indexOfFirst-StackTraceRecoveryKt$frameIndex$1":I
    if-eqz v4, :cond_0

    .line 233
    goto :goto_1

    .line 231
    :cond_0
    nop

    .end local v3    # "index$iv":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 236
    :cond_1
    const/4 v3, -0x1

    .line 196
    .end local v0    # "$this$indexOfFirst$iv":[Ljava/lang/Object;
    .end local v1    # "$i$f$indexOfFirst":I
    :goto_1
    return v3
.end method

.method public static final initCause(Ljava/lang/Throwable;Ljava/lang/Throwable;)V
    .locals 0
    .param p0, "$this$initCause"    # Ljava/lang/Throwable;
    .param p1, "cause"    # Ljava/lang/Throwable;

    .line 215
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 216
    return-void
.end method

.method public static final isArtificial(Ljava/lang/StackTraceElement;)Z
    .locals 5
    .param p0, "$this$isArtificial"    # Ljava/lang/StackTraceElement;

    .line 195
    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u0008\u0008\u0008"

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static final mergeRecoveredTraces([Ljava/lang/StackTraceElement;Ljava/util/ArrayDeque;)V
    .locals 6
    .param p0, "recoveredStacktrace"    # [Ljava/lang/StackTraceElement;
    .param p1, "result"    # Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/StackTraceElement;",
            "Ljava/util/ArrayDeque<",
            "Ljava/lang/StackTraceElement;",
            ">;)V"
        }
    .end annotation

    .line 139
    move-object v0, p0

    .local v0, "$this$indexOfFirst$iv":[Ljava/lang/Object;
    const/4 v1, 0x0

    .line 222
    .local v1, "$i$f$indexOfFirst":I
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    .line 223
    .local v3, "index$iv":I
    aget-object v4, v0, v3

    .local v4, "it":Ljava/lang/StackTraceElement;
    const/4 v5, 0x0

    .line 139
    .local v5, "$i$a$-indexOfFirst-StackTraceRecoveryKt$mergeRecoveredTraces$startIndex$1":I
    invoke-static {v4}, Lkotlinx/coroutines/internal/StackTraceRecoveryKt;->isArtificial(Ljava/lang/StackTraceElement;)Z

    move-result v4

    .end local v4    # "it":Ljava/lang/StackTraceElement;
    .end local v5    # "$i$a$-indexOfFirst-StackTraceRecoveryKt$mergeRecoveredTraces$startIndex$1":I
    if-eqz v4, :cond_0

    .line 224
    goto :goto_1

    .line 222
    :cond_0
    nop

    .end local v3    # "index$iv":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 227
    :cond_1
    const/4 v3, -0x1

    .line 139
    .end local v0    # "$this$indexOfFirst$iv":[Ljava/lang/Object;
    .end local v1    # "$i$f$indexOfFirst":I
    :goto_1
    add-int/lit8 v3, v3, 0x1

    .line 140
    .local v3, "startIndex":I
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    .line 141
    .local v0, "lastFrameIndex":I
    if-lt v0, v3, :cond_3

    move v1, v0

    .line 142
    .local v1, "i":I
    :goto_2
    aget-object v2, p0, v1

    .line 143
    .local v2, "element":Ljava/lang/StackTraceElement;
    invoke-virtual {p1}, Ljava/util/ArrayDeque;->getLast()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/StackTraceElement;

    invoke-static {v2, v4}, Lkotlinx/coroutines/internal/StackTraceRecoveryKt;->elementWiseEquals(Ljava/lang/StackTraceElement;Ljava/lang/StackTraceElement;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 144
    invoke-virtual {p1}, Ljava/util/ArrayDeque;->removeLast()Ljava/lang/Object;

    .line 146
    :cond_2
    aget-object v4, p0, v1

    invoke-virtual {p1, v4}, Ljava/util/ArrayDeque;->addFirst(Ljava/lang/Object;)V

    .line 141
    .end local v2    # "element":Ljava/lang/StackTraceElement;
    if-eq v1, v3, :cond_3

    .end local v1    # "i":I
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .line 148
    :cond_3
    return-void
.end method

.method public static final recoverAndThrow(Ljava/lang/Throwable;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4
    .param p0, "exception"    # Ljava/lang/Throwable;
    .param p1, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 152
    .local v0, "$i$f$recoverAndThrow":I
    invoke-static {}, Lkotlinx/coroutines/DebugKt;->getRECOVER_STACK_TRACES()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 153
    move-object v1, p1

    .local v1, "it":Lkotlin/coroutines/Continuation;
    const/4 v2, 0x0

    .line 154
    .local v2, "$i$a$-suspendCoroutineUninterceptedOrReturn-StackTraceRecoveryKt$recoverAndThrow$2":I
    instance-of v3, v1, Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;

    if-nez v3, :cond_0

    throw p0

    .line 155
    :cond_0
    move-object v3, v1

    check-cast v3, Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;

    invoke-static {p0, v3}, Lkotlinx/coroutines/internal/StackTraceRecoveryKt;->access$recoverFromStackFrame(Ljava/lang/Throwable;Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;)Ljava/lang/Throwable;

    move-result-object v3

    throw v3

    .line 152
    .end local v1    # "it":Lkotlin/coroutines/Continuation;
    .end local v2    # "$i$a$-suspendCoroutineUninterceptedOrReturn-StackTraceRecoveryKt$recoverAndThrow$2":I
    :cond_1
    throw p0
.end method

.method private static final recoverAndThrow$$forInline(Ljava/lang/Throwable;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .param p0, "exception"    # Ljava/lang/Throwable;

    const/4 v0, 0x0

    .line 152
    .local v0, "$i$f$recoverAndThrow":I
    invoke-static {}, Lkotlinx/coroutines/DebugKt;->getRECOVER_STACK_TRACES()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 153
    const/4 v1, 0x0

    invoke-static {v1}, Lkotlin/jvm/internal/InlineMarker;->mark(I)V

    .local p1, "it":Lkotlin/coroutines/Continuation;
    const/4 v1, 0x0

    .line 154
    .local v1, "$i$a$-suspendCoroutineUninterceptedOrReturn-StackTraceRecoveryKt$recoverAndThrow$2":I
    instance-of v2, p1, Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;

    if-nez v2, :cond_0

    throw p0

    .line 155
    :cond_0
    move-object v2, p1

    check-cast v2, Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;

    invoke-static {p0, v2}, Lkotlinx/coroutines/internal/StackTraceRecoveryKt;->access$recoverFromStackFrame(Ljava/lang/Throwable;Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;)Ljava/lang/Throwable;

    move-result-object v2

    throw v2

    .line 152
    .end local v1    # "$i$a$-suspendCoroutineUninterceptedOrReturn-StackTraceRecoveryKt$recoverAndThrow$2":I
    .end local p1    # "it":Lkotlin/coroutines/Continuation;
    :cond_1
    throw p0
.end method

.method private static final recoverFromStackFrame(Ljava/lang/Throwable;Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;)Ljava/lang/Throwable;
    .locals 5
    .param p0, "exception"    # Ljava/lang/Throwable;
    .param p1, "continuation"    # Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Throwable;",
            ">(TE;",
            "Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;",
            ")TE;"
        }
    .end annotation

    .line 66
    invoke-static {p0}, Lkotlinx/coroutines/internal/StackTraceRecoveryKt;->causeAndStacktrace(Ljava/lang/Throwable;)Lkotlin/Pair;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Throwable;

    .local v1, "cause":Ljava/lang/Throwable;
    invoke-virtual {v0}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/StackTraceElement;

    .line 69
    .local v0, "recoveredStacktrace":[Ljava/lang/StackTraceElement;
    invoke-static {v1}, Lkotlinx/coroutines/internal/ExceptionsConstuctorKt;->tryCopyException(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 71
    .local v2, "newException":Ljava/lang/Throwable;
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_0

    return-object p0

    .line 73
    :cond_0
    invoke-static {p1}, Lkotlinx/coroutines/internal/StackTraceRecoveryKt;->createStackTrace(Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;)Ljava/util/ArrayDeque;

    move-result-object v3

    .line 74
    .local v3, "stacktrace":Ljava/util/ArrayDeque;
    invoke-virtual {v3}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    return-object p0

    .line 76
    :cond_1
    if-eq v1, p0, :cond_2

    .line 77
    invoke-static {v0, v3}, Lkotlinx/coroutines/internal/StackTraceRecoveryKt;->mergeRecoveredTraces([Ljava/lang/StackTraceElement;Ljava/util/ArrayDeque;)V

    .line 80
    :cond_2
    invoke-static {v1, v2, v3}, Lkotlinx/coroutines/internal/StackTraceRecoveryKt;->createFinalException(Ljava/lang/Throwable;Ljava/lang/Throwable;Ljava/util/ArrayDeque;)Ljava/lang/Throwable;

    move-result-object v4

    return-object v4

    .line 69
    .end local v2    # "newException":Ljava/lang/Throwable;
    .end local v3    # "stacktrace":Ljava/util/ArrayDeque;
    :cond_3
    return-object p0
.end method

.method public static final recoverStackTrace(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 2
    .param p0, "exception"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Throwable;",
            ">(TE;)TE;"
        }
    .end annotation

    .line 30
    invoke-static {}, Lkotlinx/coroutines/DebugKt;->getRECOVER_STACK_TRACES()Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    .line 32
    :cond_0
    invoke-static {p0}, Lkotlinx/coroutines/internal/ExceptionsConstuctorKt;->tryCopyException(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 33
    .local v0, "copy":Ljava/lang/Throwable;
    invoke-static {v0}, Lkotlinx/coroutines/internal/StackTraceRecoveryKt;->sanitizeStackTrace(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v1

    return-object v1

    .line 32
    .end local v0    # "copy":Ljava/lang/Throwable;
    :cond_1
    return-object p0
.end method

.method public static final recoverStackTrace(Ljava/lang/Throwable;Lkotlin/coroutines/Continuation;)Ljava/lang/Throwable;
    .locals 2
    .param p0, "exception"    # Ljava/lang/Throwable;
    .param p1, "continuation"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Throwable;",
            ">(TE;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)TE;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 57
    .local v0, "$i$f$recoverStackTrace":I
    invoke-static {}, Lkotlinx/coroutines/DebugKt;->getRECOVER_STACK_TRACES()Z

    move-result v1

    if-eqz v1, :cond_1

    instance-of v1, p1, Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;

    if-nez v1, :cond_0

    goto :goto_0

    .line 58
    :cond_0
    move-object v1, p1

    check-cast v1, Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;

    invoke-static {p0, v1}, Lkotlinx/coroutines/internal/StackTraceRecoveryKt;->access$recoverFromStackFrame(Ljava/lang/Throwable;Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;)Ljava/lang/Throwable;

    move-result-object v1

    return-object v1

    .line 57
    :cond_1
    :goto_0
    return-object p0
.end method

.method private static final sanitizeStackTrace(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 12
    .param p0, "$this$sanitizeStackTrace"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Throwable;",
            ">(TE;)TE;"
        }
    .end annotation

    .line 37
    invoke-virtual {p0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 38
    .local v0, "stackTrace":[Ljava/lang/StackTraceElement;
    array-length v1, v0

    .line 39
    .local v1, "size":I
    sget-object v2, Lkotlinx/coroutines/internal/StackTraceRecoveryKt;->stackTraceRecoveryClassName:Ljava/lang/String;

    invoke-static {v0, v2}, Lkotlinx/coroutines/internal/StackTraceRecoveryKt;->frameIndex([Ljava/lang/StackTraceElement;Ljava/lang/String;)I

    move-result v2

    .line 40
    .local v2, "lastIntrinsic":I
    add-int/lit8 v3, v2, 0x1

    .line 41
    .local v3, "startIndex":I
    sget-object v4, Lkotlinx/coroutines/internal/StackTraceRecoveryKt;->baseContinuationImplClassName:Ljava/lang/String;

    invoke-static {v0, v4}, Lkotlinx/coroutines/internal/StackTraceRecoveryKt;->frameIndex([Ljava/lang/StackTraceElement;Ljava/lang/String;)I

    move-result v4

    .line 42
    .local v4, "endIndex":I
    const/4 v5, 0x0

    const/4 v6, -0x1

    if-ne v4, v6, :cond_0

    move v6, v5

    goto :goto_0

    :cond_0
    sub-int v6, v1, v4

    .line 43
    .local v6, "adjustment":I
    :goto_0
    sub-int v7, v1, v2

    sub-int/2addr v7, v6

    new-array v8, v7, [Ljava/lang/StackTraceElement;

    :goto_1
    if-ge v5, v7, :cond_2

    move v9, v5

    .local v9, "it":I
    const/4 v10, 0x0

    .line 44
    .local v10, "$i$a$-<init>-StackTraceRecoveryKt$sanitizeStackTrace$trace$1":I
    if-nez v9, :cond_1

    .line 45
    const-string v11, "Coroutine boundary"

    invoke-static {v11}, Lkotlinx/coroutines/internal/StackTraceRecoveryKt;->artificialFrame(Ljava/lang/String;)Ljava/lang/StackTraceElement;

    move-result-object v11

    goto :goto_2

    .line 47
    :cond_1
    add-int v11, v3, v9

    add-int/lit8 v11, v11, -0x1

    aget-object v11, v0, v11

    .line 44
    .end local v9    # "it":I
    .end local v10    # "$i$a$-<init>-StackTraceRecoveryKt$sanitizeStackTrace$trace$1":I
    :goto_2
    aput-object v11, v8, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 43
    :cond_2
    move-object v5, v8

    .line 51
    .local v5, "trace":[Ljava/lang/StackTraceElement;
    invoke-virtual {p0, v5}, Ljava/lang/Throwable;->setStackTrace([Ljava/lang/StackTraceElement;)V

    .line 52
    return-object p0
.end method

.method public static final unwrap(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 2
    .param p0, "exception"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Throwable;",
            ">(TE;)TE;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 161
    .local v0, "$i$f$unwrap":I
    invoke-static {}, Lkotlinx/coroutines/DebugKt;->getRECOVER_STACK_TRACES()Z

    move-result v1

    if-nez v1, :cond_0

    move-object v1, p0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lkotlinx/coroutines/internal/StackTraceRecoveryKt;->unwrapImpl(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method public static final unwrapImpl(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 10
    .param p0, "exception"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Throwable;",
            ">(TE;)TE;"
        }
    .end annotation

    .line 164
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 166
    .local v0, "cause":Ljava/lang/Throwable;
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    if-eqz v1, :cond_0

    goto :goto_2

    .line 170
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    .local v1, "$this$any$iv":[Ljava/lang/Object;
    const/4 v3, 0x0

    .line 228
    .local v3, "$i$f$any":I
    array-length v4, v1

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    if-ge v6, v4, :cond_2

    aget-object v7, v1, v6

    .local v7, "element$iv":Ljava/lang/Object;
    move-object v8, v7

    .local v8, "it":Ljava/lang/StackTraceElement;
    const/4 v9, 0x0

    .line 170
    .local v9, "$i$a$-any-StackTraceRecoveryKt$unwrapImpl$1":I
    invoke-static {v8}, Lkotlinx/coroutines/internal/StackTraceRecoveryKt;->isArtificial(Ljava/lang/StackTraceElement;)Z

    move-result v8

    .end local v8    # "it":Ljava/lang/StackTraceElement;
    .end local v9    # "$i$a$-any-StackTraceRecoveryKt$unwrapImpl$1":I
    if-eqz v8, :cond_1

    goto :goto_1

    .end local v7    # "element$iv":Ljava/lang/Object;
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 229
    :cond_2
    move v2, v5

    .line 170
    .end local v1    # "$this$any$iv":[Ljava/lang/Object;
    .end local v3    # "$i$f$any":I
    :goto_1
    if-eqz v2, :cond_3

    .line 171
    nop

    .line 172
    return-object v0

    .line 174
    :cond_3
    return-object p0

    .line 167
    :cond_4
    :goto_2
    return-object p0
.end method
