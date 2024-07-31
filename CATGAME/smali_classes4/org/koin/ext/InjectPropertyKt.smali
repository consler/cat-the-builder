.class public final Lorg/koin/ext/InjectPropertyKt;
.super Ljava/lang/Object;
.source "InjectProperty.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nInjectProperty.kt\nKotlin\n*S Kotlin\n*F\n+ 1 InjectProperty.kt\norg/koin/ext/InjectPropertyKt\n+ 2 Koin.kt\norg/koin/core/Koin\n+ 3 Scope.kt\norg/koin/core/scope/Scope\n*L\n1#1,18:1\n82#2,3:19\n82#2,3:23\n118#3:22\n118#3:26\n115#3,4:27\n*E\n*S KotlinDebug\n*F\n+ 1 InjectProperty.kt\norg/koin/ext/InjectPropertyKt\n*L\n9#1,3:19\n13#1,3:23\n9#1:22\n13#1:26\n17#1,4:27\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001a\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u001a\u001b\u0010\u0000\u001a\u00020\u0001\"\u0006\u0008\u0000\u0010\u0002\u0018\u0001*\u0008\u0012\u0004\u0012\u0002H\u00020\u0003H\u0086\u0008\u001a#\u0010\u0000\u001a\u00020\u0001\"\u0006\u0008\u0000\u0010\u0002\u0018\u0001*\u0008\u0012\u0004\u0012\u0002H\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0086\u0008\u001a#\u0010\u0000\u001a\u00020\u0001\"\u0006\u0008\u0000\u0010\u0002\u0018\u0001*\u0008\u0012\u0004\u0012\u0002H\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u0007H\u0086\u0008\u00a8\u0006\u0008"
    }
    d2 = {
        "inject",
        "",
        "T",
        "Lkotlin/reflect/KMutableProperty0;",
        "koin",
        "Lorg/koin/core/Koin;",
        "scope",
        "Lorg/koin/core/scope/Scope;",
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
.method public static final synthetic inject(Lkotlin/reflect/KMutableProperty0;)V
    .locals 9
    .param p0, "$this$inject"    # Lkotlin/reflect/KMutableProperty0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/reflect/KMutableProperty0<",
            "TT;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .local v0, "$i$f$inject":I
    const-string v1, "$this$inject"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    sget-object v1, Lorg/koin/core/context/KoinContextHandler;->INSTANCE:Lorg/koin/core/context/KoinContextHandler;

    invoke-virtual {v1}, Lorg/koin/core/context/KoinContextHandler;->get()Lorg/koin/core/Koin;

    move-result-object v1

    .line 19
    .local v1, "this_$iv":Lorg/koin/core/Koin;
    const/4 v2, 0x0

    move-object v3, v2

    check-cast v3, Lorg/koin/core/qualifier/Qualifier;

    .line 20
    .local v3, "qualifier$iv":Lorg/koin/core/qualifier/Qualifier;
    check-cast v2, Lkotlin/jvm/functions/Function0;

    .local v2, "parameters$iv":Lkotlin/jvm/functions/Function0;
    const/4 v4, 0x0

    .line 21
    .local v4, "$i$f$get":I
    invoke-virtual {v1}, Lorg/koin/core/Koin;->get_scopeRegistry()Lorg/koin/core/registry/ScopeRegistry;

    move-result-object v5

    invoke-virtual {v5}, Lorg/koin/core/registry/ScopeRegistry;->getRootScope()Lorg/koin/core/scope/Scope;

    move-result-object v5

    .local v5, "this_$iv$iv":Lorg/koin/core/scope/Scope;
    const/4 v6, 0x0

    .line 22
    .local v6, "$i$f$get":I
    const/4 v7, 0x4

    const-string v8, "T"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class v7, Ljava/lang/Object;

    invoke-static {v7}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v7

    invoke-virtual {v5, v7, v3, v2}, Lorg/koin/core/scope/Scope;->get(Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object v5

    .line 21
    .end local v5    # "this_$iv$iv":Lorg/koin/core/scope/Scope;
    .end local v6    # "$i$f$get":I
    nop

    .line 9
    .end local v1    # "this_$iv":Lorg/koin/core/Koin;
    .end local v2    # "parameters$iv":Lkotlin/jvm/functions/Function0;
    .end local v3    # "qualifier$iv":Lorg/koin/core/qualifier/Qualifier;
    .end local v4    # "$i$f$get":I
    invoke-interface {p0, v5}, Lkotlin/reflect/KMutableProperty0;->set(Ljava/lang/Object;)V

    .line 10
    return-void
.end method

.method public static final synthetic inject(Lkotlin/reflect/KMutableProperty0;Lorg/koin/core/Koin;)V
    .locals 9
    .param p0, "$this$inject"    # Lkotlin/reflect/KMutableProperty0;
    .param p1, "koin"    # Lorg/koin/core/Koin;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/reflect/KMutableProperty0<",
            "TT;>;",
            "Lorg/koin/core/Koin;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    .local v0, "$i$f$inject":I
    const-string v1, "$this$inject"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "koin"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    move-object v1, p1

    .line 23
    .local v1, "this_$iv":Lorg/koin/core/Koin;
    const/4 v2, 0x0

    move-object v3, v2

    check-cast v3, Lorg/koin/core/qualifier/Qualifier;

    .line 24
    .local v3, "qualifier$iv":Lorg/koin/core/qualifier/Qualifier;
    check-cast v2, Lkotlin/jvm/functions/Function0;

    .local v2, "parameters$iv":Lkotlin/jvm/functions/Function0;
    const/4 v4, 0x0

    .line 25
    .local v4, "$i$f$get":I
    invoke-virtual {v1}, Lorg/koin/core/Koin;->get_scopeRegistry()Lorg/koin/core/registry/ScopeRegistry;

    move-result-object v5

    invoke-virtual {v5}, Lorg/koin/core/registry/ScopeRegistry;->getRootScope()Lorg/koin/core/scope/Scope;

    move-result-object v5

    .local v5, "this_$iv$iv":Lorg/koin/core/scope/Scope;
    const/4 v6, 0x0

    .line 26
    .local v6, "$i$f$get":I
    const/4 v7, 0x4

    const-string v8, "T"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class v7, Ljava/lang/Object;

    invoke-static {v7}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v7

    invoke-virtual {v5, v7, v3, v2}, Lorg/koin/core/scope/Scope;->get(Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object v5

    .line 25
    .end local v5    # "this_$iv$iv":Lorg/koin/core/scope/Scope;
    .end local v6    # "$i$f$get":I
    nop

    .line 13
    .end local v1    # "this_$iv":Lorg/koin/core/Koin;
    .end local v2    # "parameters$iv":Lkotlin/jvm/functions/Function0;
    .end local v3    # "qualifier$iv":Lorg/koin/core/qualifier/Qualifier;
    .end local v4    # "$i$f$get":I
    invoke-interface {p0, v5}, Lkotlin/reflect/KMutableProperty0;->set(Ljava/lang/Object;)V

    .line 14
    return-void
.end method

.method public static final synthetic inject(Lkotlin/reflect/KMutableProperty0;Lorg/koin/core/scope/Scope;)V
    .locals 7
    .param p0, "$this$inject"    # Lkotlin/reflect/KMutableProperty0;
    .param p1, "scope"    # Lorg/koin/core/scope/Scope;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/reflect/KMutableProperty0<",
            "TT;>;",
            "Lorg/koin/core/scope/Scope;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    .local v0, "$i$f$inject":I
    const-string v1, "$this$inject"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "scope"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    move-object v1, p1

    .line 27
    .local v1, "this_$iv":Lorg/koin/core/scope/Scope;
    const/4 v2, 0x0

    move-object v3, v2

    check-cast v3, Lorg/koin/core/qualifier/Qualifier;

    .line 28
    .local v3, "qualifier$iv":Lorg/koin/core/qualifier/Qualifier;
    check-cast v2, Lkotlin/jvm/functions/Function0;

    .local v2, "parameters$iv":Lkotlin/jvm/functions/Function0;
    const/4 v4, 0x0

    .line 30
    .local v4, "$i$f$get":I
    const/4 v5, 0x4

    const-string v6, "T"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class v5, Ljava/lang/Object;

    invoke-static {v5}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v5

    invoke-virtual {v1, v5, v3, v2}, Lorg/koin/core/scope/Scope;->get(Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object v1

    .line 17
    .end local v1    # "this_$iv":Lorg/koin/core/scope/Scope;
    .end local v2    # "parameters$iv":Lkotlin/jvm/functions/Function0;
    .end local v3    # "qualifier$iv":Lorg/koin/core/qualifier/Qualifier;
    .end local v4    # "$i$f$get":I
    invoke-interface {p0, v1}, Lkotlin/reflect/KMutableProperty0;->set(Ljava/lang/Object;)V

    .line 18
    return-void
.end method
