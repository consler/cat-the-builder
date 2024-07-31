.class public final Lorg/koin/android/ext/android/ComponentCallbackExtKt;
.super Ljava/lang/Object;
.source "ComponentCallbackExt.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nComponentCallbackExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ComponentCallbackExt.kt\norg/koin/android/ext/android/ComponentCallbackExtKt\n+ 2 Koin.kt\norg/koin/core/Koin\n+ 3 Scope.kt\norg/koin/core/scope/Scope\n*L\n1#1,48:1\n27#1:49\n38#1:52\n48#1:59\n84#2:50\n84#2:53\n164#2:55\n164#2:60\n118#3:51\n118#3:54\n317#3,3:56\n317#3,3:61\n*E\n*S KotlinDebug\n*F\n+ 1 ComponentCallbackExt.kt\norg/koin/android/ext/android/ComponentCallbackExtKt\n*L\n38#1:50\n48#1:55\n38#1:51\n48#1,3:56\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00004\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u001a:\u0010\u0000\u001a\u0002H\u0001\"\u0006\u0008\u0000\u0010\u0001\u0018\u0001\"\u0006\u0008\u0001\u0010\u0002\u0018\u0001*\u00020\u00032\u0016\u0008\n\u0010\u0004\u001a\u0010\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005j\u0004\u0018\u0001`\u0007H\u0086\u0008\u00a2\u0006\u0002\u0010\u0008\u001aB\u0010\t\u001a\u0002H\n\"\n\u0008\u0000\u0010\n\u0018\u0001*\u00020\u000b*\u00020\u00032\n\u0008\u0002\u0010\u000c\u001a\u0004\u0018\u00010\r2\u0016\u0008\n\u0010\u0004\u001a\u0010\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005j\u0004\u0018\u0001`\u0007H\u0086\u0008\u00a2\u0006\u0002\u0010\u000e\u001a\n\u0010\u000f\u001a\u00020\u0010*\u00020\u0003\u001aC\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u0002H\n0\u0012\"\n\u0008\u0000\u0010\n\u0018\u0001*\u00020\u000b*\u00020\u00032\n\u0008\u0002\u0010\u000c\u001a\u0004\u0018\u00010\r2\u0016\u0008\n\u0010\u0004\u001a\u0010\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005j\u0004\u0018\u0001`\u0007H\u0086\u0008\u00a8\u0006\u0013"
    }
    d2 = {
        "bind",
        "S",
        "P",
        "Landroid/content/ComponentCallbacks;",
        "parameters",
        "Lkotlin/Function0;",
        "Lorg/koin/core/parameter/DefinitionParameters;",
        "Lorg/koin/core/parameter/ParametersDefinition;",
        "(Landroid/content/ComponentCallbacks;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;",
        "get",
        "T",
        "",
        "qualifier",
        "Lorg/koin/core/qualifier/Qualifier;",
        "(Landroid/content/ComponentCallbacks;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;",
        "getKoin",
        "Lorg/koin/core/Koin;",
        "inject",
        "Lkotlin/Lazy;",
        "koin-android_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# direct methods
.method public static final synthetic bind(Landroid/content/ComponentCallbacks;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;
    .locals 8
    .param p0, "$this$bind"    # Landroid/content/ComponentCallbacks;
    .param p1, "parameters"    # Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            "P:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/content/ComponentCallbacks;",
            "Lkotlin/jvm/functions/Function0<",
            "Lorg/koin/core/parameter/DefinitionParameters;",
            ">;)TS;"
        }
    .end annotation

    const/4 v0, 0x0

    .local v0, "$i$f$bind":I
    const-string v1, "$this$bind"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    invoke-static {p0}, Lorg/koin/android/ext/android/ComponentCallbackExtKt;->getKoin(Landroid/content/ComponentCallbacks;)Lorg/koin/core/Koin;

    move-result-object v1

    .local v1, "this_$iv":Lorg/koin/core/Koin;
    const/4 v2, 0x0

    .line 55
    .local v2, "$i$f$bind":I
    invoke-virtual {v1}, Lorg/koin/core/Koin;->get_scopeRegistry()Lorg/koin/core/registry/ScopeRegistry;

    move-result-object v3

    invoke-virtual {v3}, Lorg/koin/core/registry/ScopeRegistry;->getRootScope()Lorg/koin/core/scope/Scope;

    move-result-object v3

    .local v3, "this_$iv$iv":Lorg/koin/core/scope/Scope;
    const/4 v4, 0x0

    .line 56
    .local v4, "$i$f$bind":I
    const/4 v5, 0x4

    const-string v6, "S"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class v6, Ljava/lang/Object;

    invoke-static {v6}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v6

    .line 57
    .local v6, "secondaryType$iv$iv":Lkotlin/reflect/KClass;
    const-string v7, "P"

    invoke-static {v5, v7}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class v5, Ljava/lang/Object;

    invoke-static {v5}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v5

    .line 58
    .local v5, "primaryType$iv$iv":Lkotlin/reflect/KClass;
    invoke-virtual {v3, v5, v6, p1}, Lorg/koin/core/scope/Scope;->bind(Lkotlin/reflect/KClass;Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object v3

    .line 55
    .end local v3    # "this_$iv$iv":Lorg/koin/core/scope/Scope;
    .end local v4    # "$i$f$bind":I
    .end local v5    # "primaryType$iv$iv":Lkotlin/reflect/KClass;
    .end local v6    # "secondaryType$iv$iv":Lkotlin/reflect/KClass;
    nop

    .line 48
    .end local v1    # "this_$iv":Lorg/koin/core/Koin;
    .end local v2    # "$i$f$bind":I
    return-object v3
.end method

.method public static synthetic bind$default(Landroid/content/ComponentCallbacks;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .param p0, "$this$bind"    # Landroid/content/ComponentCallbacks;
    .param p1, "parameters"    # Lkotlin/jvm/functions/Function0;

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    .line 47
    const/4 p2, 0x0

    move-object p1, p2

    check-cast p1, Lkotlin/jvm/functions/Function0;

    :cond_0
    const/4 p2, 0x0

    .local p2, "$i$f$bind":I
    const-string p3, "$this$bind"

    invoke-static {p0, p3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    invoke-static {p0}, Lorg/koin/android/ext/android/ComponentCallbackExtKt;->getKoin(Landroid/content/ComponentCallbacks;)Lorg/koin/core/Koin;

    move-result-object p3

    .local p3, "this_$iv":Lorg/koin/core/Koin;
    const/4 v0, 0x0

    .line 60
    .local v0, "$i$f$bind":I
    invoke-virtual {p3}, Lorg/koin/core/Koin;->get_scopeRegistry()Lorg/koin/core/registry/ScopeRegistry;

    move-result-object v1

    invoke-virtual {v1}, Lorg/koin/core/registry/ScopeRegistry;->getRootScope()Lorg/koin/core/scope/Scope;

    move-result-object v1

    .local v1, "this_$iv$iv":Lorg/koin/core/scope/Scope;
    const/4 v2, 0x0

    .line 61
    .local v2, "$i$f$bind":I
    const/4 v3, 0x4

    const-string v4, "S"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class v4, Ljava/lang/Object;

    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    .line 62
    .local v4, "secondaryType$iv$iv":Lkotlin/reflect/KClass;
    const-string v5, "P"

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class v3, Ljava/lang/Object;

    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    .line 63
    .local v3, "primaryType$iv$iv":Lkotlin/reflect/KClass;
    invoke-virtual {v1, v3, v4, p1}, Lorg/koin/core/scope/Scope;->bind(Lkotlin/reflect/KClass;Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object v1

    .line 60
    .end local v1    # "this_$iv$iv":Lorg/koin/core/scope/Scope;
    .end local v2    # "$i$f$bind":I
    .end local v3    # "primaryType$iv$iv":Lkotlin/reflect/KClass;
    .end local v4    # "secondaryType$iv$iv":Lkotlin/reflect/KClass;
    nop

    .line 59
    .end local v0    # "$i$f$bind":I
    .end local p3    # "this_$iv":Lorg/koin/core/Koin;
    return-object v1
.end method

.method public static final synthetic get(Landroid/content/ComponentCallbacks;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;
    .locals 7
    .param p0, "$this$get"    # Landroid/content/ComponentCallbacks;
    .param p1, "qualifier"    # Lorg/koin/core/qualifier/Qualifier;
    .param p2, "parameters"    # Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/content/ComponentCallbacks;",
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

    .line 38
    invoke-static {p0}, Lorg/koin/android/ext/android/ComponentCallbackExtKt;->getKoin(Landroid/content/ComponentCallbacks;)Lorg/koin/core/Koin;

    move-result-object v1

    .local v1, "this_$iv":Lorg/koin/core/Koin;
    const/4 v2, 0x0

    .line 50
    .local v2, "$i$f$get":I
    invoke-virtual {v1}, Lorg/koin/core/Koin;->get_scopeRegistry()Lorg/koin/core/registry/ScopeRegistry;

    move-result-object v3

    invoke-virtual {v3}, Lorg/koin/core/registry/ScopeRegistry;->getRootScope()Lorg/koin/core/scope/Scope;

    move-result-object v3

    .local v3, "this_$iv$iv":Lorg/koin/core/scope/Scope;
    const/4 v4, 0x0

    .line 51
    .local v4, "$i$f$get":I
    const/4 v5, 0x4

    const-string v6, "T"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class v5, Ljava/lang/Object;

    invoke-static {v5}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v5

    invoke-virtual {v3, v5, p1, p2}, Lorg/koin/core/scope/Scope;->get(Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object v3

    .line 50
    .end local v3    # "this_$iv$iv":Lorg/koin/core/scope/Scope;
    .end local v4    # "$i$f$get":I
    nop

    .line 38
    .end local v1    # "this_$iv":Lorg/koin/core/Koin;
    .end local v2    # "$i$f$get":I
    return-object v3
.end method

.method public static synthetic get$default(Landroid/content/ComponentCallbacks;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .param p0, "$this$get"    # Landroid/content/ComponentCallbacks;
    .param p1, "qualifier"    # Lorg/koin/core/qualifier/Qualifier;
    .param p2, "parameters"    # Lkotlin/jvm/functions/Function0;

    and-int/lit8 p4, p3, 0x1

    const/4 v0, 0x0

    if-eqz p4, :cond_0

    .line 36
    move-object p1, v0

    check-cast p1, Lorg/koin/core/qualifier/Qualifier;

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    .line 37
    move-object p2, v0

    check-cast p2, Lkotlin/jvm/functions/Function0;

    :cond_1
    const/4 p3, 0x0

    .local p3, "$i$f$get":I
    const-string p4, "$this$get"

    invoke-static {p0, p4}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    invoke-static {p0}, Lorg/koin/android/ext/android/ComponentCallbackExtKt;->getKoin(Landroid/content/ComponentCallbacks;)Lorg/koin/core/Koin;

    move-result-object p4

    .local p4, "this_$iv":Lorg/koin/core/Koin;
    const/4 v0, 0x0

    .line 53
    .local v0, "$i$f$get":I
    invoke-virtual {p4}, Lorg/koin/core/Koin;->get_scopeRegistry()Lorg/koin/core/registry/ScopeRegistry;

    move-result-object v1

    invoke-virtual {v1}, Lorg/koin/core/registry/ScopeRegistry;->getRootScope()Lorg/koin/core/scope/Scope;

    move-result-object v1

    .local v1, "this_$iv$iv":Lorg/koin/core/scope/Scope;
    const/4 v2, 0x0

    .line 54
    .local v2, "$i$f$get":I
    const/4 v3, 0x4

    const-string v4, "T"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class v3, Ljava/lang/Object;

    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    invoke-virtual {v1, v3, p1, p2}, Lorg/koin/core/scope/Scope;->get(Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object v1

    .line 53
    .end local v1    # "this_$iv$iv":Lorg/koin/core/scope/Scope;
    .end local v2    # "$i$f$get":I
    nop

    .line 52
    .end local v0    # "$i$f$get":I
    .end local p4    # "this_$iv":Lorg/koin/core/Koin;
    return-object v1
.end method

.method public static final getKoin(Landroid/content/ComponentCallbacks;)Lorg/koin/core/Koin;
    .locals 1
    .param p0, "$this$getKoin"    # Landroid/content/ComponentCallbacks;

    const-string v0, "$this$getKoin"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    nop

    .line 14
    instance-of v0, p0, Lorg/koin/core/KoinComponent;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lorg/koin/core/KoinComponent;

    invoke-interface {v0}, Lorg/koin/core/KoinComponent;->getKoin()Lorg/koin/core/Koin;

    move-result-object v0

    goto :goto_0

    .line 15
    :cond_0
    sget-object v0, Lorg/koin/core/context/KoinContextHandler;->INSTANCE:Lorg/koin/core/context/KoinContextHandler;

    invoke-virtual {v0}, Lorg/koin/core/context/KoinContextHandler;->get()Lorg/koin/core/Koin;

    move-result-object v0

    .line 13
    :goto_0
    nop

    .line 16
    return-object v0
.end method

.method public static final synthetic inject(Landroid/content/ComponentCallbacks;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;
    .locals 3
    .param p0, "$this$inject"    # Landroid/content/ComponentCallbacks;
    .param p1, "qualifier"    # Lorg/koin/core/qualifier/Qualifier;
    .param p2, "parameters"    # Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/content/ComponentCallbacks;",
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

    .line 27
    sget-object v1, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->needClassReification()V

    new-instance v2, Lorg/koin/android/ext/android/ComponentCallbackExtKt$inject$1;

    invoke-direct {v2, p0, p1, p2}, Lorg/koin/android/ext/android/ComponentCallbackExtKt$inject$1;-><init>(Landroid/content/ComponentCallbacks;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)V

    check-cast v2, Lkotlin/jvm/functions/Function0;

    invoke-static {v1, v2}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v1

    return-object v1
.end method

.method public static synthetic inject$default(Landroid/content/ComponentCallbacks;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lkotlin/Lazy;
    .locals 1
    .param p0, "$this$inject"    # Landroid/content/ComponentCallbacks;
    .param p1, "qualifier"    # Lorg/koin/core/qualifier/Qualifier;
    .param p2, "parameters"    # Lkotlin/jvm/functions/Function0;

    and-int/lit8 p4, p3, 0x1

    const/4 v0, 0x0

    if-eqz p4, :cond_0

    .line 25
    move-object p1, v0

    check-cast p1, Lorg/koin/core/qualifier/Qualifier;

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    .line 26
    move-object p2, v0

    check-cast p2, Lkotlin/jvm/functions/Function0;

    :cond_1
    const/4 p3, 0x0

    .local p3, "$i$f$inject":I
    const-string p4, "$this$inject"

    invoke-static {p0, p4}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    sget-object p4, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->needClassReification()V

    new-instance v0, Lorg/koin/android/ext/android/ComponentCallbackExtKt$inject$1;

    invoke-direct {v0, p0, p1, p2}, Lorg/koin/android/ext/android/ComponentCallbackExtKt$inject$1;-><init>(Landroid/content/ComponentCallbacks;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {p4, v0}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p4

    return-object p4
.end method
