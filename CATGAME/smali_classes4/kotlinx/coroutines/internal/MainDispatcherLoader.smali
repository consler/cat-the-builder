.class public final Lkotlinx/coroutines/internal/MainDispatcherLoader;
.super Ljava/lang/Object;
.source "MainDispatchers.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMainDispatchers.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MainDispatchers.kt\nkotlinx/coroutines/internal/MainDispatcherLoader\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,129:1\n1835#2,24:130\n*E\n*S KotlinDebug\n*F\n+ 1 MainDispatchers.kt\nkotlinx/coroutines/internal/MainDispatcherLoader\n*L\n38#1,24:130\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u00c0\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0007\u001a\u00020\u0006H\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u00020\u00068\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0008"
    }
    d2 = {
        "Lkotlinx/coroutines/internal/MainDispatcherLoader;",
        "",
        "()V",
        "FAST_SERVICE_LOADER_ENABLED",
        "",
        "dispatcher",
        "Lkotlinx/coroutines/MainCoroutineDispatcher;",
        "loadMainDispatcher",
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
.field private static final FAST_SERVICE_LOADER_ENABLED:Z

.field public static final INSTANCE:Lkotlinx/coroutines/internal/MainDispatcherLoader;

.field public static final dispatcher:Lkotlinx/coroutines/MainCoroutineDispatcher;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 17
    new-instance v0, Lkotlinx/coroutines/internal/MainDispatcherLoader;

    invoke-direct {v0}, Lkotlinx/coroutines/internal/MainDispatcherLoader;-><init>()V

    sput-object v0, Lkotlinx/coroutines/internal/MainDispatcherLoader;->INSTANCE:Lkotlinx/coroutines/internal/MainDispatcherLoader;

    .line 19
    const-string v1, "kotlinx.coroutines.fast.service.loader"

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lkotlinx/coroutines/internal/SystemPropsKt;->systemProp(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lkotlinx/coroutines/internal/MainDispatcherLoader;->FAST_SERVICE_LOADER_ENABLED:Z

    .line 22
    invoke-direct {v0}, Lkotlinx/coroutines/internal/MainDispatcherLoader;->loadMainDispatcher()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/internal/MainDispatcherLoader;->dispatcher:Lkotlinx/coroutines/MainCoroutineDispatcher;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final loadMainDispatcher()Lkotlinx/coroutines/MainCoroutineDispatcher;
    .locals 13

    .line 25
    nop

    .line 26
    const/4 v0, 0x0

    :try_start_0
    sget-boolean v1, Lkotlinx/coroutines/internal/MainDispatcherLoader;->FAST_SERVICE_LOADER_ENABLED:Z

    if-eqz v1, :cond_0

    .line 27
    sget-object v1, Lkotlinx/coroutines/internal/FastServiceLoader;->INSTANCE:Lkotlinx/coroutines/internal/FastServiceLoader;

    invoke-virtual {v1}, Lkotlinx/coroutines/internal/FastServiceLoader;->loadMainDispatcherFactory$kotlinx_coroutines_core()Ljava/util/List;

    move-result-object v1

    goto :goto_0

    .line 32
    :cond_0
    nop

    .line 35
    nop

    .line 32
    nop

    .line 35
    nop

    .line 32
    nop

    .line 35
    nop

    .line 32
    nop

    .line 33
    const-class v1, Lkotlinx/coroutines/internal/MainDispatcherFactory;

    .line 34
    const-class v2, Lkotlinx/coroutines/internal/MainDispatcherFactory;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    .line 32
    invoke-static {v1, v2}, Ljava/util/ServiceLoader;->load(Ljava/lang/Class;Ljava/lang/ClassLoader;)Ljava/util/ServiceLoader;

    move-result-object v1

    .line 35
    invoke-virtual {v1}, Ljava/util/ServiceLoader;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-static {v1}, Lkotlin/sequences/SequencesKt;->asSequence(Ljava/util/Iterator;)Lkotlin/sequences/Sequence;

    move-result-object v1

    invoke-static {v1}, Lkotlin/sequences/SequencesKt;->toList(Lkotlin/sequences/Sequence;)Ljava/util/List;

    move-result-object v1

    .line 26
    :goto_0
    nop

    .line 37
    .local v1, "factories":Ljava/util/List;
    nop

    .line 38
    move-object v2, v1

    check-cast v2, Ljava/lang/Iterable;

    .local v2, "$this$maxBy$iv":Ljava/lang/Iterable;
    const/4 v3, 0x0

    .line 130
    .local v3, "$i$f$maxBy":I
    move-object v4, v2

    .local v4, "$this$maxByOrNull$iv$iv":Ljava/lang/Iterable;
    const/4 v5, 0x0

    .line 140
    .local v5, "$i$f$maxByOrNull":I
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 141
    .local v6, "iterator$iv$iv":Ljava/util/Iterator;
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_1

    move-object v7, v0

    goto :goto_1

    .line 142
    :cond_1
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .line 143
    .local v7, "maxElem$iv$iv":Ljava/lang/Object;
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_2

    goto :goto_1

    .line 144
    :cond_2
    move-object v8, v7

    check-cast v8, Lkotlinx/coroutines/internal/MainDispatcherFactory;

    .local v8, "it":Lkotlinx/coroutines/internal/MainDispatcherFactory;
    const/4 v9, 0x0

    .line 38
    .local v9, "$i$a$-maxBy-MainDispatcherLoader$loadMainDispatcher$1":I
    invoke-interface {v8}, Lkotlinx/coroutines/internal/MainDispatcherFactory;->getLoadPriority()I

    move-result v10

    .end local v8    # "it":Lkotlinx/coroutines/internal/MainDispatcherFactory;
    .end local v9    # "$i$a$-maxBy-MainDispatcherLoader$loadMainDispatcher$1":I
    move v8, v10

    .line 145
    .local v8, "maxValue$iv$iv":I
    :cond_3
    nop

    .line 146
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    .line 147
    .local v9, "e$iv$iv":Ljava/lang/Object;
    move-object v10, v9

    check-cast v10, Lkotlinx/coroutines/internal/MainDispatcherFactory;

    .local v10, "it":Lkotlinx/coroutines/internal/MainDispatcherFactory;
    const/4 v11, 0x0

    .line 38
    .local v11, "$i$a$-maxBy-MainDispatcherLoader$loadMainDispatcher$1":I
    invoke-interface {v10}, Lkotlinx/coroutines/internal/MainDispatcherFactory;->getLoadPriority()I

    move-result v12

    .end local v10    # "it":Lkotlinx/coroutines/internal/MainDispatcherFactory;
    .end local v11    # "$i$a$-maxBy-MainDispatcherLoader$loadMainDispatcher$1":I
    move v10, v12

    .line 148
    .local v10, "v$iv$iv":I
    if-ge v8, v10, :cond_4

    .line 149
    move-object v7, v9

    .line 150
    move v8, v10

    .line 152
    :cond_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-nez v11, :cond_3

    .line 153
    .end local v9    # "e$iv$iv":Ljava/lang/Object;
    .end local v10    # "v$iv$iv":I
    nop

    .line 130
    .end local v4    # "$this$maxByOrNull$iv$iv":Ljava/lang/Iterable;
    .end local v5    # "$i$f$maxByOrNull":I
    .end local v6    # "iterator$iv$iv":Ljava/util/Iterator;
    .end local v7    # "maxElem$iv$iv":Ljava/lang/Object;
    .end local v8    # "maxValue$iv$iv":I
    :goto_1
    nop

    .end local v2    # "$this$maxBy$iv":Ljava/lang/Iterable;
    .end local v3    # "$i$f$maxBy":I
    check-cast v7, Lkotlinx/coroutines/internal/MainDispatcherFactory;

    if-eqz v7, :cond_5

    .line 38
    invoke-static {v7, v1}, Lkotlinx/coroutines/internal/MainDispatchersKt;->tryCreateDispatcher(Lkotlinx/coroutines/internal/MainDispatcherFactory;Ljava/util/List;)Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v2

    if-eqz v2, :cond_5

    goto :goto_2

    .line 39
    :cond_5
    const/4 v2, 0x3

    invoke-static {v0, v0, v2, v0}, Lkotlinx/coroutines/internal/MainDispatchersKt;->createMissingDispatcher$default(Ljava/lang/Throwable;Ljava/lang/String;ILjava/lang/Object;)Lkotlinx/coroutines/internal/MissingMainCoroutineDispatcher;

    move-result-object v2

    check-cast v2, Lkotlinx/coroutines/MainCoroutineDispatcher;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v1    # "factories":Ljava/util/List;
    :goto_2
    goto :goto_3

    .line 40
    :catchall_0
    move-exception v1

    .line 42
    .local v1, "e":Ljava/lang/Throwable;
    const/4 v2, 0x2

    invoke-static {v1, v0, v2, v0}, Lkotlinx/coroutines/internal/MainDispatchersKt;->createMissingDispatcher$default(Ljava/lang/Throwable;Ljava/lang/String;ILjava/lang/Object;)Lkotlinx/coroutines/internal/MissingMainCoroutineDispatcher;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lkotlinx/coroutines/MainCoroutineDispatcher;

    .line 25
    .end local v1    # "e":Ljava/lang/Throwable;
    :goto_3
    return-object v2
.end method
