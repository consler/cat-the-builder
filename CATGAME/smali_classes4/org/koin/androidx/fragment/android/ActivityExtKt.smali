.class public final Lorg/koin/androidx/fragment/android/ActivityExtKt;
.super Ljava/lang/Object;
.source "ActivityExt.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nActivityExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ActivityExt.kt\norg/koin/androidx/fragment/android/ActivityExtKt\n+ 2 ComponentCallbackExt.kt\norg/koin/android/ext/android/ComponentCallbackExtKt\n+ 3 Koin.kt\norg/koin/core/Koin\n+ 4 Scope.kt\norg/koin/core/scope/Scope\n*L\n1#1,16:1\n36#2,3:17\n84#3:20\n118#4:21\n*E\n*S KotlinDebug\n*F\n+ 1 ActivityExt.kt\norg/koin/androidx/fragment/android/ActivityExtKt\n*L\n12#1,3:17\n12#1:20\n12#1:21\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0012\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u001a\u0016\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\n\u0008\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u00a8\u0006\u0005"
    }
    d2 = {
        "setupKoinFragmentFactory",
        "",
        "Landroidx/fragment/app/FragmentActivity;",
        "scope",
        "Lorg/koin/core/scope/Scope;",
        "koin-androidx-fragment_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# direct methods
.method public static final setupKoinFragmentFactory(Landroidx/fragment/app/FragmentActivity;Lorg/koin/core/scope/Scope;)V
    .locals 10
    .param p0, "$this$setupKoinFragmentFactory"    # Landroidx/fragment/app/FragmentActivity;
    .param p1, "scope"    # Lorg/koin/core/scope/Scope;

    const-string v0, "$this$setupKoinFragmentFactory"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    const-string v0, "supportFragmentManager"

    if-nez p1, :cond_0

    .line 12
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p0

    check-cast v0, Landroid/content/ComponentCallbacks;

    .line 17
    .local v0, "$this$get$iv":Landroid/content/ComponentCallbacks;
    const/4 v2, 0x0

    move-object v3, v2

    check-cast v3, Lorg/koin/core/qualifier/Qualifier;

    .line 18
    .local v3, "qualifier$iv":Lorg/koin/core/qualifier/Qualifier;
    check-cast v2, Lkotlin/jvm/functions/Function0;

    .local v2, "parameters$iv":Lkotlin/jvm/functions/Function0;
    const/4 v4, 0x0

    .line 19
    .local v4, "$i$f$get":I
    invoke-static {v0}, Lorg/koin/android/ext/android/ComponentCallbackExtKt;->getKoin(Landroid/content/ComponentCallbacks;)Lorg/koin/core/Koin;

    move-result-object v5

    .local v5, "this_$iv$iv":Lorg/koin/core/Koin;
    const/4 v6, 0x0

    .line 20
    .local v6, "$i$f$get":I
    invoke-virtual {v5}, Lorg/koin/core/Koin;->get_scopeRegistry()Lorg/koin/core/registry/ScopeRegistry;

    move-result-object v7

    invoke-virtual {v7}, Lorg/koin/core/registry/ScopeRegistry;->getRootScope()Lorg/koin/core/scope/Scope;

    move-result-object v7

    .local v7, "this_$iv$iv$iv":Lorg/koin/core/scope/Scope;
    const/4 v8, 0x0

    .line 21
    .local v8, "$i$f$get":I
    const-class v9, Landroidx/fragment/app/FragmentFactory;

    invoke-static {v9}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v9

    invoke-virtual {v7, v9, v3, v2}, Lorg/koin/core/scope/Scope;->get(Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object v7

    .line 20
    .end local v7    # "this_$iv$iv$iv":Lorg/koin/core/scope/Scope;
    .end local v8    # "$i$f$get":I
    nop

    .line 19
    .end local v5    # "this_$iv$iv":Lorg/koin/core/Koin;
    .end local v6    # "$i$f$get":I
    nop

    .end local v0    # "$this$get$iv":Landroid/content/ComponentCallbacks;
    .end local v2    # "parameters$iv":Lkotlin/jvm/functions/Function0;
    .end local v3    # "qualifier$iv":Lorg/koin/core/qualifier/Qualifier;
    .end local v4    # "$i$f$get":I
    check-cast v7, Landroidx/fragment/app/FragmentFactory;

    invoke-virtual {v1, v7}, Landroidx/fragment/app/FragmentManager;->setFragmentFactory(Landroidx/fragment/app/FragmentFactory;)V

    goto :goto_0

    .line 14
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lorg/koin/androidx/fragment/android/KoinFragmentFactory;

    invoke-direct {v0, p1}, Lorg/koin/androidx/fragment/android/KoinFragmentFactory;-><init>(Lorg/koin/core/scope/Scope;)V

    check-cast v0, Landroidx/fragment/app/FragmentFactory;

    invoke-virtual {v1, v0}, Landroidx/fragment/app/FragmentManager;->setFragmentFactory(Landroidx/fragment/app/FragmentFactory;)V

    .line 15
    :goto_0
    nop

    .line 16
    return-void
.end method

.method public static synthetic setupKoinFragmentFactory$default(Landroidx/fragment/app/FragmentActivity;Lorg/koin/core/scope/Scope;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    .line 10
    const/4 p1, 0x0

    check-cast p1, Lorg/koin/core/scope/Scope;

    :cond_0
    invoke-static {p0, p1}, Lorg/koin/androidx/fragment/android/ActivityExtKt;->setupKoinFragmentFactory(Landroidx/fragment/app/FragmentActivity;Lorg/koin/core/scope/Scope;)V

    return-void
.end method
