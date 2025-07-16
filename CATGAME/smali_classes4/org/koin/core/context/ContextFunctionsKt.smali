.class public final Lorg/koin/core/context/ContextFunctionsKt;
.super Ljava/lang/Object;
.source "ContextFunctions.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u001a\u0014\u0010\u0000\u001a\u00020\u00012\u000c\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003\u001a\u000e\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u0004\u001a\u0018\u0010\u0006\u001a\u00020\u00072\u0008\u0008\u0002\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u0007\u001a-\u0010\u0006\u001a\u00020\u00072\u0008\u0008\u0002\u0010\u0008\u001a\u00020\t2\u001b\u0010\u000b\u001a\u0017\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00010\u000cj\u0002`\r\u00a2\u0006\u0002\u0008\u000e\u001a\u0006\u0010\u000f\u001a\u00020\u0001\u001a\u0014\u0010\u0010\u001a\u00020\u00012\u000c\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003\u001a\u000e\u0010\u0010\u001a\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u0004\u00a8\u0006\u0011"
    }
    d2 = {
        "loadKoinModules",
        "",
        "modules",
        "",
        "Lorg/koin/core/module/Module;",
        "module",
        "startKoin",
        "Lorg/koin/core/KoinApplication;",
        "koinContext",
        "Lorg/koin/core/context/KoinContext;",
        "koinApplication",
        "appDeclaration",
        "Lkotlin/Function1;",
        "Lorg/koin/dsl/KoinAppDeclaration;",
        "Lkotlin/ExtensionFunctionType;",
        "stopKoin",
        "unloadKoinModules",
        "koin-core"
    }
    k = 0x2
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# direct methods
.method public static final loadKoinModules(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/koin/core/module/Module;",
            ">;)V"
        }
    .end annotation

    const-string v0, "modules"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    sget-object v0, Lorg/koin/core/context/KoinContextHandler;->INSTANCE:Lorg/koin/core/context/KoinContextHandler;

    invoke-virtual {v0}, Lorg/koin/core/context/KoinContextHandler;->get()Lorg/koin/core/Koin;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/koin/core/Koin;->loadModules(Ljava/util/List;)V

    return-void
.end method

.method public static final loadKoinModules(Lorg/koin/core/module/Module;)V
    .locals 1

    const-string v0, "module"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    sget-object v0, Lorg/koin/core/context/KoinContextHandler;->INSTANCE:Lorg/koin/core/context/KoinContextHandler;

    invoke-virtual {v0}, Lorg/koin/core/context/KoinContextHandler;->get()Lorg/koin/core/Koin;

    move-result-object v0

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-virtual {v0, p0}, Lorg/koin/core/Koin;->loadModules(Ljava/util/List;)V

    return-void
.end method

.method public static final startKoin(Lorg/koin/core/context/KoinContext;Lkotlin/jvm/functions/Function1;)Lorg/koin/core/KoinApplication;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/koin/core/context/KoinContext;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lorg/koin/core/KoinApplication;",
            "Lkotlin/Unit;",
            ">;)",
            "Lorg/koin/core/KoinApplication;"
        }
    .end annotation

    const-string v0, "koinContext"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appDeclaration"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    sget-object v0, Lorg/koin/core/context/KoinContextHandler;->INSTANCE:Lorg/koin/core/context/KoinContextHandler;

    invoke-virtual {v0, p0}, Lorg/koin/core/context/KoinContextHandler;->register(Lorg/koin/core/context/KoinContext;)V

    .line 37
    sget-object p0, Lorg/koin/core/KoinApplication;->Companion:Lorg/koin/core/KoinApplication$Companion;

    invoke-virtual {p0}, Lorg/koin/core/KoinApplication$Companion;->init()Lorg/koin/core/KoinApplication;

    move-result-object p0

    .line 38
    sget-object v0, Lorg/koin/core/context/KoinContextHandler;->INSTANCE:Lorg/koin/core/context/KoinContextHandler;

    invoke-virtual {v0, p0}, Lorg/koin/core/context/KoinContextHandler;->start(Lorg/koin/core/KoinApplication;)V

    .line 39
    invoke-interface {p1, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    invoke-virtual {p0}, Lorg/koin/core/KoinApplication;->createEagerInstances()Lorg/koin/core/KoinApplication;

    return-object p0
.end method

.method public static final startKoin(Lorg/koin/core/context/KoinContext;Lorg/koin/core/KoinApplication;)Lorg/koin/core/KoinApplication;
    .locals 1

    const-string v0, "koinContext"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "koinApplication"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    sget-object v0, Lorg/koin/core/context/KoinContextHandler;->INSTANCE:Lorg/koin/core/context/KoinContextHandler;

    invoke-virtual {v0, p0}, Lorg/koin/core/context/KoinContextHandler;->register(Lorg/koin/core/context/KoinContext;)V

    .line 27
    sget-object p0, Lorg/koin/core/context/KoinContextHandler;->INSTANCE:Lorg/koin/core/context/KoinContextHandler;

    invoke-virtual {p0, p1}, Lorg/koin/core/context/KoinContextHandler;->start(Lorg/koin/core/KoinApplication;)V

    .line 28
    invoke-virtual {p1}, Lorg/koin/core/KoinApplication;->createEagerInstances()Lorg/koin/core/KoinApplication;

    return-object p1
.end method

.method public static synthetic startKoin$default(Lorg/koin/core/context/KoinContext;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lorg/koin/core/KoinApplication;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    .line 35
    new-instance p0, Lorg/koin/core/context/GlobalContext;

    invoke-direct {p0}, Lorg/koin/core/context/GlobalContext;-><init>()V

    check-cast p0, Lorg/koin/core/context/KoinContext;

    :cond_0
    invoke-static {p0, p1}, Lorg/koin/core/context/ContextFunctionsKt;->startKoin(Lorg/koin/core/context/KoinContext;Lkotlin/jvm/functions/Function1;)Lorg/koin/core/KoinApplication;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic startKoin$default(Lorg/koin/core/context/KoinContext;Lorg/koin/core/KoinApplication;ILjava/lang/Object;)Lorg/koin/core/KoinApplication;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    .line 25
    new-instance p0, Lorg/koin/core/context/GlobalContext;

    invoke-direct {p0}, Lorg/koin/core/context/GlobalContext;-><init>()V

    check-cast p0, Lorg/koin/core/context/KoinContext;

    :cond_0
    invoke-static {p0, p1}, Lorg/koin/core/context/ContextFunctionsKt;->startKoin(Lorg/koin/core/context/KoinContext;Lorg/koin/core/KoinApplication;)Lorg/koin/core/KoinApplication;

    move-result-object p0

    return-object p0
.end method

.method public static final stopKoin()V
    .locals 1

    .line 47
    sget-object v0, Lorg/koin/core/context/KoinContextHandler;->INSTANCE:Lorg/koin/core/context/KoinContextHandler;

    invoke-virtual {v0}, Lorg/koin/core/context/KoinContextHandler;->stop()V

    return-void
.end method

.method public static final unloadKoinModules(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/koin/core/module/Module;",
            ">;)V"
        }
    .end annotation

    const-string v0, "modules"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    sget-object v0, Lorg/koin/core/context/KoinContextHandler;->INSTANCE:Lorg/koin/core/context/KoinContextHandler;

    invoke-virtual {v0}, Lorg/koin/core/context/KoinContextHandler;->get()Lorg/koin/core/Koin;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/koin/core/Koin;->unloadModules(Ljava/util/List;)Z

    return-void
.end method

.method public static final unloadKoinModules(Lorg/koin/core/module/Module;)V
    .locals 1

    const-string v0, "module"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    sget-object v0, Lorg/koin/core/context/KoinContextHandler;->INSTANCE:Lorg/koin/core/context/KoinContextHandler;

    invoke-virtual {v0}, Lorg/koin/core/context/KoinContextHandler;->get()Lorg/koin/core/Koin;

    move-result-object v0

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-virtual {v0, p0}, Lorg/koin/core/Koin;->unloadModules(Ljava/util/List;)Z

    return-void
.end method
