.class public final Lorg/koin/core/context/GlobalContext;
.super Ljava/lang/Object;
.source "GlobalContext.kt"

# interfaces
.implements Lorg/koin/core/context/KoinContext;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nGlobalContext.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GlobalContext.kt\norg/koin/core/context/GlobalContext\n*L\n1#1,49:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0005\u001a\u00020\u0004H\u0016J\n\u0010\u0006\u001a\u0004\u0018\u00010\u0004H\u0016J\u0010\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\nH\u0016J\u0008\u0010\u000b\u001a\u00020\u0008H\u0016R\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000c"
    }
    d2 = {
        "Lorg/koin/core/context/GlobalContext;",
        "Lorg/koin/core/context/KoinContext;",
        "()V",
        "_koin",
        "Lorg/koin/core/Koin;",
        "get",
        "getOrNull",
        "setup",
        "",
        "koinApplication",
        "Lorg/koin/core/KoinApplication;",
        "stop",
        "koin-core"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private _koin:Lorg/koin/core/Koin;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Lorg/koin/core/Koin;
    .locals 2

    .line 33
    iget-object v0, p0, Lorg/koin/core/context/GlobalContext;->_koin:Lorg/koin/core/Koin;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "KoinApplication has not been started"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method

.method public getOrNull()Lorg/koin/core/Koin;
    .locals 1

    .line 35
    iget-object v0, p0, Lorg/koin/core/context/GlobalContext;->_koin:Lorg/koin/core/Koin;

    return-object v0
.end method

.method public setup(Lorg/koin/core/KoinApplication;)V
    .locals 3
    .param p1, "koinApplication"    # Lorg/koin/core/KoinApplication;

    const-string v0, "koinApplication"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    monitor-enter p0

    const/4 v0, 0x0

    .line 38
    .local v0, "$i$a$-synchronized-GlobalContext$setup$1":I
    :try_start_0
    iget-object v1, p0, Lorg/koin/core/context/GlobalContext;->_koin:Lorg/koin/core/Koin;

    if-nez v1, :cond_0

    .line 41
    invoke-virtual {p1}, Lorg/koin/core/KoinApplication;->getKoin()Lorg/koin/core/Koin;

    move-result-object v1

    iput-object v1, p0, Lorg/koin/core/context/GlobalContext;->_koin:Lorg/koin/core/Koin;

    .line 42
    .end local v0    # "$i$a$-synchronized-GlobalContext$setup$1":I
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    monitor-exit p0

    .line 42
    return-void

    .line 39
    .restart local v0    # "$i$a$-synchronized-GlobalContext$setup$1":I
    :cond_0
    :try_start_1
    new-instance v1, Lorg/koin/core/error/KoinAppAlreadyStartedException;

    const-string v2, "A Koin Application has already been started"

    invoke-direct {v1, v2}, Lorg/koin/core/error/KoinAppAlreadyStartedException;-><init>(Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    .end local p1    # "koinApplication":Lorg/koin/core/KoinApplication;
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 37
    .end local v0    # "$i$a$-synchronized-GlobalContext$setup$1":I
    .restart local p1    # "koinApplication":Lorg/koin/core/KoinApplication;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public stop()V
    .locals 2

    .line 44
    monitor-enter p0

    const/4 v0, 0x0

    .line 45
    .local v0, "$i$a$-synchronized-GlobalContext$stop$1":I
    :try_start_0
    iget-object v1, p0, Lorg/koin/core/context/GlobalContext;->_koin:Lorg/koin/core/Koin;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lorg/koin/core/Koin;->close()V

    .line 46
    :cond_0
    const/4 v1, 0x0

    check-cast v1, Lorg/koin/core/Koin;

    iput-object v1, p0, Lorg/koin/core/context/GlobalContext;->_koin:Lorg/koin/core/Koin;

    .line 47
    .end local v0    # "$i$a$-synchronized-GlobalContext$stop$1":I
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    monitor-exit p0

    .line 47
    return-void

    .line 44
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
