.class public final Lorg/koin/core/KoinComponentKt;
.super Ljava/lang/Object;
.source "KoinComponent.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nKoinComponent.kt\nKotlin\n*S Kotlin\n*F\n+ 1 KoinComponent.kt\norg/koin/core/KoinComponentKt\n+ 2 Koin.kt\norg/koin/core/Koin\n+ 3 Scope.kt\norg/koin/core/scope/Scope\n*L\n1#1,65:1\n44#1:68\n55#1:71\n64#1:76\n84#2:66\n84#2:69\n164#2:72\n164#2:77\n118#3:67\n118#3:70\n317#3,3:73\n317#3,3:78\n*E\n*S KotlinDebug\n*F\n+ 1 KoinComponent.kt\norg/koin/core/KoinComponentKt\n*L\n44#1:66\n64#1:72\n44#1:67\n64#1,3:73\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000(\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u001a:\u0010\u0000\u001a\u0002H\u0001\"\u0006\u0008\u0000\u0010\u0001\u0018\u0001\"\u0006\u0008\u0001\u0010\u0002\u0018\u0001*\u00020\u00032\u0016\u0008\n\u0010\u0004\u001a\u0010\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005j\u0004\u0018\u0001`\u0007H\u0086\u0008\u00a2\u0006\u0002\u0010\u0008\u001a>\u0010\t\u001a\u0002H\n\"\u0006\u0008\u0000\u0010\n\u0018\u0001*\u00020\u00032\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u000c2\u0016\u0008\n\u0010\u0004\u001a\u0010\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005j\u0004\u0018\u0001`\u0007H\u0086\u0008\u00a2\u0006\u0002\u0010\r\u001a?\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u0002H\n0\u000f\"\u0006\u0008\u0000\u0010\n\u0018\u0001*\u00020\u00032\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u000c2\u0016\u0008\n\u0010\u0004\u001a\u0010\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005j\u0004\u0018\u0001`\u0007H\u0086\u0008\u00a8\u0006\u0010"
    }
    d2 = {
        "bind",
        "S",
        "P",
        "Lorg/koin/core/KoinComponent;",
        "parameters",
        "Lkotlin/Function0;",
        "Lorg/koin/core/parameter/DefinitionParameters;",
        "Lorg/koin/core/parameter/ParametersDefinition;",
        "(Lorg/koin/core/KoinComponent;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;",
        "get",
        "T",
        "qualifier",
        "Lorg/koin/core/qualifier/Qualifier;",
        "(Lorg/koin/core/KoinComponent;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;",
        "inject",
        "Lkotlin/Lazy;",
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
.method public static final synthetic bind(Lorg/koin/core/KoinComponent;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;
    .locals 8
    .param p0, "$this$bind"    # Lorg/koin/core/KoinComponent;
    .param p1, "parameters"    # Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            "P:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/koin/core/KoinComponent;",
            "Lkotlin/jvm/functions/Function0<",
            "Lorg/koin/core/parameter/DefinitionParameters;",
            ">;)TS;"
        }
    .end annotation

    const/4 v0, 0x0

    .local v0, "$i$f$bind":I
    const-string v1, "$this$bind"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    invoke-interface {p0}, Lorg/koin/core/KoinComponent;->getKoin()Lorg/koin/core/Koin;

    move-result-object v1

    .local v1, "this_$iv":Lorg/koin/core/Koin;
    const/4 v2, 0x0

    .line 72
    .local v2, "$i$f$bind":I
    invoke-virtual {v1}, Lorg/koin/core/Koin;->get_scopeRegistry()Lorg/koin/core/registry/ScopeRegistry;

    move-result-object v3

    invoke-virtual {v3}, Lorg/koin/core/registry/ScopeRegistry;->getRootScope()Lorg/koin/core/scope/Scope;

    move-result-object v3

    .local v3, "this_$iv$iv":Lorg/koin/core/scope/Scope;
    const/4 v4, 0x0

    .line 73
    .local v4, "$i$f$bind":I
    const/4 v5, 0x4

    const-string v6, "S"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class v6, Ljava/lang/Object;

    invoke-static {v6}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v6

    .line 74
    .local v6, "secondaryType$iv$iv":Lkotlin/reflect/KClass;
    const-string v7, "P"

    invoke-static {v5, v7}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class v5, Ljava/lang/Object;

    invoke-static {v5}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v5

    .line 75
    .local v5, "primaryType$iv$iv":Lkotlin/reflect/KClass;
    invoke-virtual {v3, v5, v6, p1}, Lorg/koin/core/scope/Scope;->bind(Lkotlin/reflect/KClass;Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object v3

    .line 72
    .end local v3    # "this_$iv$iv":Lorg/koin/core/scope/Scope;
    .end local v4    # "$i$f$bind":I
    .end local v5    # "primaryType$iv$iv":Lkotlin/reflect/KClass;
    .end local v6    # "secondaryType$iv$iv":Lkotlin/reflect/KClass;
    nop

    .line 64
    .end local v1    # "this_$iv":Lorg/koin/core/Koin;
    .end local v2    # "$i$f$bind":I
    return-object v3
.end method

.method public static synthetic bind$default(Lorg/koin/core/KoinComponent;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .param p0, "$this$bind"    # Lorg/koin/core/KoinComponent;
    .param p1, "parameters"    # Lkotlin/jvm/functions/Function0;

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    .line 62
    const/4 p2, 0x0

    move-object p1, p2

    check-cast p1, Lkotlin/jvm/functions/Function0;

    :cond_0
    const/4 p2, 0x0

    .local p2, "$i$f$bind":I
    const-string p3, "$this$bind"

    invoke-static {p0, p3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    invoke-interface {p0}, Lorg/koin/core/KoinComponent;->getKoin()Lorg/koin/core/Koin;

    move-result-object p3

    .local p3, "this_$iv":Lorg/koin/core/Koin;
    const/4 v0, 0x0

    .line 77
    .local v0, "$i$f$bind":I
    invoke-virtual {p3}, Lorg/koin/core/Koin;->get_scopeRegistry()Lorg/koin/core/registry/ScopeRegistry;

    move-result-object v1

    invoke-virtual {v1}, Lorg/koin/core/registry/ScopeRegistry;->getRootScope()Lorg/koin/core/scope/Scope;

    move-result-object v1

    .local v1, "this_$iv$iv":Lorg/koin/core/scope/Scope;
    const/4 v2, 0x0

    .line 78
    .local v2, "$i$f$bind":I
    const/4 v3, 0x4

    const-string v4, "S"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class v4, Ljava/lang/Object;

    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    .line 79
    .local v4, "secondaryType$iv$iv":Lkotlin/reflect/KClass;
    const-string v5, "P"

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class v3, Ljava/lang/Object;

    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    .line 80
    .local v3, "primaryType$iv$iv":Lkotlin/reflect/KClass;
    invoke-virtual {v1, v3, v4, p1}, Lorg/koin/core/scope/Scope;->bind(Lkotlin/reflect/KClass;Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object v1

    .line 77
    .end local v1    # "this_$iv$iv":Lorg/koin/core/scope/Scope;
    .end local v2    # "$i$f$bind":I
    .end local v3    # "primaryType$iv$iv":Lkotlin/reflect/KClass;
    .end local v4    # "secondaryType$iv$iv":Lkotlin/reflect/KClass;
    nop

    .line 76
    .end local v0    # "$i$f$bind":I
    .end local p3    # "this_$iv":Lorg/koin/core/Koin;
    return-object v1
.end method

.method public static final synthetic get(Lorg/koin/core/KoinComponent;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;
    .locals 7
    .param p0, "$this$get"    # Lorg/koin/core/KoinComponent;
    .param p1, "qualifier"    # Lorg/koin/core/qualifier/Qualifier;
    .param p2, "parameters"    # Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/koin/core/KoinComponent;",
            "Lorg/koin/core/qualifier/Qualifier;",
            "Lkotlin/jvm/functions/Function0<",
            "Lorg/koin/core/parameter/DefinitionParameters;",
            ">;)TT;"
        }
    .end annotation

    const/4 v0, 0x0

    .local v0, "$i$f$get":I
    const-string v1, "$this$get"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    invoke-interface {p0}, Lorg/koin/core/KoinComponent;->getKoin()Lorg/koin/core/Koin;

    move-result-object v1

    .local v1, "this_$iv":Lorg/koin/core/Koin;
    const/4 v2, 0x0

    .line 66
    .local v2, "$i$f$get":I
    invoke-virtual {v1}, Lorg/koin/core/Koin;->get_scopeRegistry()Lorg/koin/core/registry/ScopeRegistry;

    move-result-object v3

    invoke-virtual {v3}, Lorg/koin/core/registry/ScopeRegistry;->getRootScope()Lorg/koin/core/scope/Scope;

    move-result-object v3

    .local v3, "this_$iv$iv":Lorg/koin/core/scope/Scope;
    const/4 v4, 0x0

    .line 67
    .local v4, "$i$f$get":I
    const/4 v5, 0x4

    const-string v6, "T"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class v5, Ljava/lang/Object;

    invoke-static {v5}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v5

    invoke-virtual {v3, v5, p1, p2}, Lorg/koin/core/scope/Scope;->get(Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object v3

    .line 66
    .end local v3    # "this_$iv$iv":Lorg/koin/core/scope/Scope;
    .end local v4    # "$i$f$get":I
    nop

    .line 44
    .end local v1    # "this_$iv":Lorg/koin/core/Koin;
    .end local v2    # "$i$f$get":I
    return-object v3
.end method

.method public static synthetic get$default(Lorg/koin/core/KoinComponent;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .param p0, "$this$get"    # Lorg/koin/core/KoinComponent;
    .param p1, "qualifier"    # Lorg/koin/core/qualifier/Qualifier;
    .param p2, "parameters"    # Lkotlin/jvm/functions/Function0;

    and-int/lit8 p4, p3, 0x1

    const/4 v0, 0x0

    if-eqz p4, :cond_0

    .line 41
    move-object p1, v0

    check-cast p1, Lorg/koin/core/qualifier/Qualifier;

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    .line 42
    move-object p2, v0

    check-cast p2, Lkotlin/jvm/functions/Function0;

    :cond_1
    const/4 p3, 0x0

    .local p3, "$i$f$get":I
    const-string p4, "$this$get"

    invoke-static {p0, p4}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    invoke-interface {p0}, Lorg/koin/core/KoinComponent;->getKoin()Lorg/koin/core/Koin;

    move-result-object p4

    .local p4, "this_$iv":Lorg/koin/core/Koin;
    const/4 v0, 0x0

    .line 69
    .local v0, "$i$f$get":I
    invoke-virtual {p4}, Lorg/koin/core/Koin;->get_scopeRegistry()Lorg/koin/core/registry/ScopeRegistry;

    move-result-object v1

    invoke-virtual {v1}, Lorg/koin/core/registry/ScopeRegistry;->getRootScope()Lorg/koin/core/scope/Scope;

    move-result-object v1

    .local v1, "this_$iv$iv":Lorg/koin/core/scope/Scope;
    const/4 v2, 0x0

    .line 70
    .local v2, "$i$f$get":I
    const/4 v3, 0x4

    const-string v4, "T"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class v3, Ljava/lang/Object;

    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    invoke-virtual {v1, v3, p1, p2}, Lorg/koin/core/scope/Scope;->get(Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object v1

    .line 69
    .end local v1    # "this_$iv$iv":Lorg/koin/core/scope/Scope;
    .end local v2    # "$i$f$get":I
    nop

    .line 68
    .end local v0    # "$i$f$get":I
    .end local p4    # "this_$iv":Lorg/koin/core/Koin;
    return-object v1
.end method

.method public static final synthetic inject(Lorg/koin/core/KoinComponent;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;
    .locals 3
    .param p0, "$this$inject"    # Lorg/koin/core/KoinComponent;
    .param p1, "qualifier"    # Lorg/koin/core/qualifier/Qualifier;
    .param p2, "parameters"    # Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/koin/core/KoinComponent;",
            "Lorg/koin/core/qualifier/Qualifier;",
            "Lkotlin/jvm/functions/Function0<",
            "Lorg/koin/core/parameter/DefinitionParameters;",
            ">;)",
            "Lkotlin/Lazy<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x0

    .local v0, "$i$f$inject":I
    const-string v1, "$this$inject"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    sget-object v1, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->needClassReification()V

    new-instance v2, Lorg/koin/core/KoinComponentKt$inject$1;

    invoke-direct {v2, p0, p1, p2}, Lorg/koin/core/KoinComponentKt$inject$1;-><init>(Lorg/koin/core/KoinComponent;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)V

    check-cast v2, Lkotlin/jvm/functions/Function0;

    invoke-static {v1, v2}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v1

    return-object v1
.end method

.method public static synthetic inject$default(Lorg/koin/core/KoinComponent;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lkotlin/Lazy;
    .locals 1
    .param p0, "$this$inject"    # Lorg/koin/core/KoinComponent;
    .param p1, "qualifier"    # Lorg/koin/core/qualifier/Qualifier;
    .param p2, "parameters"    # Lkotlin/jvm/functions/Function0;

    and-int/lit8 p4, p3, 0x1

    const/4 v0, 0x0

    if-eqz p4, :cond_0

    .line 52
    move-object p1, v0

    check-cast p1, Lorg/koin/core/qualifier/Qualifier;

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    .line 53
    move-object p2, v0

    check-cast p2, Lkotlin/jvm/functions/Function0;

    :cond_1
    const/4 p3, 0x0

    .local p3, "$i$f$inject":I
    const-string p4, "$this$inject"

    invoke-static {p0, p4}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    sget-object p4, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->needClassReification()V

    new-instance v0, Lorg/koin/core/KoinComponentKt$inject$1;

    invoke-direct {v0, p0, p1, p2}, Lorg/koin/core/KoinComponentKt$inject$1;-><init>(Lorg/koin/core/KoinComponent;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {p4, v0}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p4

    return-object p4
.end method
