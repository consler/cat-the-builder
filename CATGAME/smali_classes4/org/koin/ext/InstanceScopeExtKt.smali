.class public final Lorg/koin/ext/InstanceScopeExtKt;
.super Ljava/lang/Object;
.source "InstanceScopeExt.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000(\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u001a\u001b\u0010\u0006\u001a\u00020\u0001\"\u0008\u0008\u0000\u0010\u0002*\u00020\u0003*\u0002H\u0002H\u0002\u00a2\u0006\u0002\u0010\u0005\u001a#\u0010\u0006\u001a\u00020\u0001\"\u0008\u0008\u0000\u0010\u0002*\u00020\u0003*\u0002H\u00022\u0006\u0010\u0007\u001a\u00020\u0008H\u0002\u00a2\u0006\u0002\u0010\t\u001a\u0019\u0010\n\u001a\u00020\u0001\"\u0008\u0008\u0000\u0010\u0002*\u00020\u0003*\u0002H\u0002\u00a2\u0006\u0002\u0010\u0005\u001a!\u0010\n\u001a\u00020\u0001\"\u0008\u0008\u0000\u0010\u0002*\u00020\u0003*\u0002H\u00022\u0006\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0002\u0010\t\u001a\u0019\u0010\u000b\u001a\u00020\u000c\"\u0008\u0008\u0000\u0010\u0002*\u00020\u0003*\u0002H\u0002\u00a2\u0006\u0002\u0010\r\u001a\u0019\u0010\u000e\u001a\u00020\u000f\"\u0008\u0008\u0000\u0010\u0002*\u00020\u0003*\u0002H\u0002\u00a2\u0006\u0002\u0010\u0010\u001a\'\u0010\u0011\u001a\u0004\u0018\u00010\u0001\"\u0008\u0008\u0000\u0010\u0002*\u00020\u0003*\u0002H\u00022\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0008H\u0002\u00a2\u0006\u0002\u0010\t\"\u001f\u0010\u0000\u001a\u00020\u0001\"\u0008\u0008\u0000\u0010\u0002*\u00020\u0003*\u0002H\u00028F\u00a2\u0006\u0006\u001a\u0004\u0008\u0004\u0010\u0005\u00a8\u0006\u0012"
    }
    d2 = {
        "scope",
        "Lorg/koin/core/scope/Scope;",
        "T",
        "",
        "getScope",
        "(Ljava/lang/Object;)Lorg/koin/core/scope/Scope;",
        "createScope",
        "koin",
        "Lorg/koin/core/Koin;",
        "(Ljava/lang/Object;Lorg/koin/core/Koin;)Lorg/koin/core/scope/Scope;",
        "getOrCreateScope",
        "getScopeId",
        "",
        "(Ljava/lang/Object;)Ljava/lang/String;",
        "getScopeName",
        "Lorg/koin/core/qualifier/TypeQualifier;",
        "(Ljava/lang/Object;)Lorg/koin/core/qualifier/TypeQualifier;",
        "getScopeOrNull",
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
.method private static final createScope(Ljava/lang/Object;)Lorg/koin/core/scope/Scope;
    .locals 3
    .param p0, "$this$createScope"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lorg/koin/core/scope/Scope;"
        }
    .end annotation

    .line 30
    sget-object v0, Lorg/koin/core/context/KoinContextHandler;->INSTANCE:Lorg/koin/core/context/KoinContextHandler;

    invoke-virtual {v0}, Lorg/koin/core/context/KoinContextHandler;->get()Lorg/koin/core/Koin;

    move-result-object v0

    invoke-static {p0}, Lorg/koin/ext/InstanceScopeExtKt;->getScopeId(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0}, Lorg/koin/ext/InstanceScopeExtKt;->getScopeName(Ljava/lang/Object;)Lorg/koin/core/qualifier/TypeQualifier;

    move-result-object v2

    check-cast v2, Lorg/koin/core/qualifier/Qualifier;

    invoke-virtual {v0, v1, v2, p0}, Lorg/koin/core/Koin;->createScope(Ljava/lang/String;Lorg/koin/core/qualifier/Qualifier;Ljava/lang/Object;)Lorg/koin/core/scope/Scope;

    move-result-object v0

    return-object v0
.end method

.method private static final createScope(Ljava/lang/Object;Lorg/koin/core/Koin;)Lorg/koin/core/scope/Scope;
    .locals 2
    .param p0, "$this$createScope"    # Ljava/lang/Object;
    .param p1, "koin"    # Lorg/koin/core/Koin;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lorg/koin/core/Koin;",
            ")",
            "Lorg/koin/core/scope/Scope;"
        }
    .end annotation

    .line 34
    invoke-static {p0}, Lorg/koin/ext/InstanceScopeExtKt;->getScopeId(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Lorg/koin/ext/InstanceScopeExtKt;->getScopeName(Ljava/lang/Object;)Lorg/koin/core/qualifier/TypeQualifier;

    move-result-object v1

    check-cast v1, Lorg/koin/core/qualifier/Qualifier;

    invoke-virtual {p1, v0, v1, p0}, Lorg/koin/core/Koin;->createScope(Ljava/lang/String;Lorg/koin/core/qualifier/Qualifier;Ljava/lang/Object;)Lorg/koin/core/scope/Scope;

    move-result-object v0

    return-object v0
.end method

.method public static final getOrCreateScope(Ljava/lang/Object;)Lorg/koin/core/scope/Scope;
    .locals 2
    .param p0, "$this$getOrCreateScope"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lorg/koin/core/scope/Scope;"
        }
    .end annotation

    const-string v0, "$this$getOrCreateScope"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    sget-object v0, Lorg/koin/core/context/KoinContextHandler;->INSTANCE:Lorg/koin/core/context/KoinContextHandler;

    invoke-virtual {v0}, Lorg/koin/core/context/KoinContextHandler;->get()Lorg/koin/core/Koin;

    move-result-object v0

    .line 16
    .local v0, "koin":Lorg/koin/core/Koin;
    invoke-static {p0, v0}, Lorg/koin/ext/InstanceScopeExtKt;->getScopeOrNull(Ljava/lang/Object;Lorg/koin/core/Koin;)Lorg/koin/core/scope/Scope;

    move-result-object v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0, v0}, Lorg/koin/ext/InstanceScopeExtKt;->createScope(Ljava/lang/Object;Lorg/koin/core/Koin;)Lorg/koin/core/scope/Scope;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method public static final getOrCreateScope(Ljava/lang/Object;Lorg/koin/core/Koin;)Lorg/koin/core/scope/Scope;
    .locals 2
    .param p0, "$this$getOrCreateScope"    # Ljava/lang/Object;
    .param p1, "koin"    # Lorg/koin/core/Koin;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lorg/koin/core/Koin;",
            ")",
            "Lorg/koin/core/scope/Scope;"
        }
    .end annotation

    const-string v0, "$this$getOrCreateScope"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "koin"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-static {p0}, Lorg/koin/ext/InstanceScopeExtKt;->getScopeId(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 21
    .local v0, "scopeId":Ljava/lang/String;
    invoke-virtual {p1, v0}, Lorg/koin/core/Koin;->getScopeOrNull(Ljava/lang/String;)Lorg/koin/core/scope/Scope;

    move-result-object v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lorg/koin/ext/InstanceScopeExtKt;->getScopeName(Ljava/lang/Object;)Lorg/koin/core/qualifier/TypeQualifier;

    move-result-object v1

    check-cast v1, Lorg/koin/core/qualifier/Qualifier;

    invoke-virtual {p1, v0, v1, p0}, Lorg/koin/core/Koin;->createScope(Ljava/lang/String;Lorg/koin/core/qualifier/Qualifier;Ljava/lang/Object;)Lorg/koin/core/scope/Scope;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method public static final getScope(Ljava/lang/Object;)Lorg/koin/core/scope/Scope;
    .locals 1
    .param p0, "$this$scope"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lorg/koin/core/scope/Scope;"
        }
    .end annotation

    const-string v0, "$this$scope"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-static {p0}, Lorg/koin/ext/InstanceScopeExtKt;->getOrCreateScope(Ljava/lang/Object;)Lorg/koin/core/scope/Scope;

    move-result-object v0

    return-object v0
.end method

.method public static final getScopeId(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .param p0, "$this$getScopeId"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const-string v0, "$this$getScopeId"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    invoke-static {v1}, Lorg/koin/ext/KClassExtKt;->getFullName(Lkotlin/reflect/KClass;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final getScopeName(Ljava/lang/Object;)Lorg/koin/core/qualifier/TypeQualifier;
    .locals 2
    .param p0, "$this$getScopeName"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lorg/koin/core/qualifier/TypeQualifier;"
        }
    .end annotation

    const-string v0, "$this$getScopeName"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    new-instance v0, Lorg/koin/core/qualifier/TypeQualifier;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/koin/core/qualifier/TypeQualifier;-><init>(Lkotlin/reflect/KClass;)V

    return-object v0
.end method

.method private static final getScopeOrNull(Ljava/lang/Object;Lorg/koin/core/Koin;)Lorg/koin/core/scope/Scope;
    .locals 2
    .param p0, "$this$getScopeOrNull"    # Ljava/lang/Object;
    .param p1, "koin"    # Lorg/koin/core/Koin;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lorg/koin/core/Koin;",
            ")",
            "Lorg/koin/core/scope/Scope;"
        }
    .end annotation

    .line 25
    invoke-static {p0}, Lorg/koin/ext/InstanceScopeExtKt;->getScopeId(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 26
    .local v0, "scopeId":Ljava/lang/String;
    invoke-virtual {p1, v0}, Lorg/koin/core/Koin;->getScopeOrNull(Ljava/lang/String;)Lorg/koin/core/scope/Scope;

    move-result-object v1

    return-object v1
.end method

.method static synthetic getScopeOrNull$default(Ljava/lang/Object;Lorg/koin/core/Koin;ILjava/lang/Object;)Lorg/koin/core/scope/Scope;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    .line 24
    sget-object p1, Lorg/koin/core/context/KoinContextHandler;->INSTANCE:Lorg/koin/core/context/KoinContextHandler;

    invoke-virtual {p1}, Lorg/koin/core/context/KoinContextHandler;->get()Lorg/koin/core/Koin;

    move-result-object p1

    :cond_0
    invoke-static {p0, p1}, Lorg/koin/ext/InstanceScopeExtKt;->getScopeOrNull(Ljava/lang/Object;Lorg/koin/core/Koin;)Lorg/koin/core/scope/Scope;

    move-result-object p0

    return-object p0
.end method
