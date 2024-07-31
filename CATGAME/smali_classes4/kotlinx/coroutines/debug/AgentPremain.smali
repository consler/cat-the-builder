.class public final Lkotlinx/coroutines/debug/AgentPremain;
.super Ljava/lang/Object;
.source "AgentPremain.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlinx/coroutines/debug/AgentPremain$DebugProbesTransformer;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u00c1\u0002\u0018\u00002\u00020\u0001:\u0001\u0010B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\t\u001a\u00020\nH\u0002J\u001a\u0010\u000b\u001a\u00020\n2\u0008\u0010\u000c\u001a\u0004\u0018\u00010\r2\u0006\u0010\u000e\u001a\u00020\u000fH\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0005\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\u0011"
    }
    d2 = {
        "Lkotlinx/coroutines/debug/AgentPremain;",
        "",
        "()V",
        "enableCreationStackTraces",
        "",
        "isInstalledStatically",
        "()Z",
        "setInstalledStatically",
        "(Z)V",
        "installSignalHandler",
        "",
        "premain",
        "args",
        "",
        "instrumentation",
        "Ljava/lang/instrument/Instrumentation;",
        "DebugProbesTransformer",
        "kotlinx-coroutines-core"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x0
    }
.end annotation


# static fields
.field public static final INSTANCE:Lkotlinx/coroutines/debug/AgentPremain;

.field private static final enableCreationStackTraces:Z

.field private static isInstalledStatically:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 20
    new-instance v0, Lkotlinx/coroutines/debug/AgentPremain;

    invoke-direct {v0}, Lkotlinx/coroutines/debug/AgentPremain;-><init>()V

    sput-object v0, Lkotlinx/coroutines/debug/AgentPremain;->INSTANCE:Lkotlinx/coroutines/debug/AgentPremain;

    .line 24
    nop

    .line 26
    nop

    .line 24
    const/4 v1, 0x0

    :try_start_0
    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .local v0, "$this$runCatching":Lkotlinx/coroutines/debug/AgentPremain;
    const/4 v2, 0x0

    .line 25
    .local v2, "$i$a$-runCatching-AgentPremain$enableCreationStackTraces$1":I
    const-string v3, "kotlinx.coroutines.debug.enable.creation.stack.trace"

    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    goto :goto_0

    :cond_0
    move-object v3, v1

    .line 24
    .end local v0    # "$this$runCatching":Lkotlinx/coroutines/debug/AgentPremain;
    .end local v2    # "$i$a$-runCatching-AgentPremain$enableCreationStackTraces$1":I
    :goto_0
    invoke-static {v3}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 26
    :goto_1
    invoke-static {v0}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_2

    :cond_1
    move-object v1, v0

    :goto_2
    check-cast v1, Ljava/lang/Boolean;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_3

    :cond_2
    sget-object v0, Lkotlinx/coroutines/debug/internal/DebugProbesImpl;->INSTANCE:Lkotlinx/coroutines/debug/internal/DebugProbesImpl;

    invoke-virtual {v0}, Lkotlinx/coroutines/debug/internal/DebugProbesImpl;->getEnableCreationStackTraces()Z

    move-result v0

    :goto_3
    sput-boolean v0, Lkotlinx/coroutines/debug/AgentPremain;->enableCreationStackTraces:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final installSignalHandler()V
    .locals 2

    .line 61
    nop

    .line 62
    :try_start_0
    new-instance v0, Lsun/misc/Signal;

    const-string v1, "TRAP"

    invoke-direct {v0, v1}, Lsun/misc/Signal;-><init>(Ljava/lang/String;)V

    sget-object v1, Lkotlinx/coroutines/debug/AgentPremain$installSignalHandler$1;->INSTANCE:Lkotlinx/coroutines/debug/AgentPremain$installSignalHandler$1;

    check-cast v1, Lsun/misc/SignalHandler;

    invoke-static {v0, v1}, Lsun/misc/Signal;->handle(Lsun/misc/Signal;Lsun/misc/SignalHandler;)Lsun/misc/SignalHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 71
    :catchall_0
    move-exception v0

    .line 73
    :goto_0
    nop

    .line 74
    return-void
.end method

.method public static final premain(Ljava/lang/String;Ljava/lang/instrument/Instrumentation;)V
    .locals 2
    .param p0, "args"    # Ljava/lang/String;
    .param p1, "instrumentation"    # Ljava/lang/instrument/Instrumentation;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 30
    const/4 v0, 0x1

    sput-boolean v0, Lkotlinx/coroutines/debug/AgentPremain;->isInstalledStatically:Z

    .line 31
    sget-object v0, Lkotlinx/coroutines/debug/AgentPremain$DebugProbesTransformer;->INSTANCE:Lkotlinx/coroutines/debug/AgentPremain$DebugProbesTransformer;

    check-cast v0, Ljava/lang/instrument/ClassFileTransformer;

    invoke-interface {p1, v0}, Ljava/lang/instrument/Instrumentation;->addTransformer(Ljava/lang/instrument/ClassFileTransformer;)V

    .line 32
    sget-object v0, Lkotlinx/coroutines/debug/internal/DebugProbesImpl;->INSTANCE:Lkotlinx/coroutines/debug/internal/DebugProbesImpl;

    sget-boolean v1, Lkotlinx/coroutines/debug/AgentPremain;->enableCreationStackTraces:Z

    invoke-virtual {v0, v1}, Lkotlinx/coroutines/debug/internal/DebugProbesImpl;->setEnableCreationStackTraces(Z)V

    .line 33
    sget-object v0, Lkotlinx/coroutines/debug/internal/DebugProbesImpl;->INSTANCE:Lkotlinx/coroutines/debug/internal/DebugProbesImpl;

    invoke-virtual {v0}, Lkotlinx/coroutines/debug/internal/DebugProbesImpl;->install()V

    .line 34
    sget-object v0, Lkotlinx/coroutines/debug/AgentPremain;->INSTANCE:Lkotlinx/coroutines/debug/AgentPremain;

    invoke-direct {v0}, Lkotlinx/coroutines/debug/AgentPremain;->installSignalHandler()V

    .line 35
    return-void
.end method


# virtual methods
.method public final isInstalledStatically()Z
    .locals 1

    .line 22
    sget-boolean v0, Lkotlinx/coroutines/debug/AgentPremain;->isInstalledStatically:Z

    return v0
.end method

.method public final setInstalledStatically(Z)V
    .locals 0
    .param p1, "<set-?>"    # Z

    .line 22
    sput-boolean p1, Lkotlinx/coroutines/debug/AgentPremain;->isInstalledStatically:Z

    return-void
.end method
