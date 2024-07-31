.class public final Lorg/koin/core/registry/ScopeRegistry;
.super Ljava/lang/Object;
.source "ScopeRegistry.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nScopeRegistry.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ScopeRegistry.kt\norg/koin/core/registry/ScopeRegistry\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,182:1\n1360#2:183\n1429#2,3:184\n1642#2,2:187\n1642#2,2:189\n704#2:191\n777#2,2:192\n1642#2,2:194\n1642#2,2:196\n1642#2,2:198\n1642#2,2:200\n1642#2,2:202\n250#2,2:204\n704#2:206\n777#2,2:207\n1642#2,2:209\n*E\n*S KotlinDebug\n*F\n+ 1 ScopeRegistry.kt\norg/koin/core/registry/ScopeRegistry\n*L\n50#1:183\n50#1,3:184\n53#1,2:187\n69#1,2:189\n80#1:191\n80#1,2:192\n80#1,2:194\n94#1,2:196\n157#1,2:198\n161#1,2:200\n168#1,2:202\n176#1,2:204\n180#1:206\n180#1,2:207\n180#1,2:209\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000t\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010$\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010 \n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u001c\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0008\u0010 \u001a\u00020!H\u0002J\r\u0010\"\u001a\u00020!H\u0000\u00a2\u0006\u0002\u0008#J\r\u0010$\u001a\u00020!H\u0000\u00a2\u0006\u0002\u0008%J\r\u0010&\u001a\u00020!H\u0000\u00a2\u0006\u0002\u0008\'J&\u0010(\u001a\u00020\u00062\n\u0010)\u001a\u00060\u0013j\u0002`\u00172\u0006\u0010*\u001a\u00020+2\n\u0008\u0002\u0010,\u001a\u0004\u0018\u00010\u0001J&\u0010(\u001a\u00020\u00062\n\u0010)\u001a\u00060\u0013j\u0002`\u00172\u0006\u0010-\u001a\u00020\u000c2\u0008\u0010,\u001a\u0004\u0018\u00010\u0001H\u0002J\u0010\u0010.\u001a\u00020!2\u0006\u0010/\u001a\u00020\u000cH\u0002J\u0010\u00100\u001a\u00020!2\u0006\u0010-\u001a\u00020\u000cH\u0002J\u0010\u00101\u001a\u00020!2\u0006\u0010-\u001a\u00020\u000cH\u0002J\u0016\u00102\u001a\u00020!2\u000c\u00103\u001a\u0008\u0012\u0004\u0012\u00020\u000c04H\u0002J\u000e\u00105\u001a\u00020!2\u0006\u00106\u001a\u00020\u0006J\u0012\u00105\u001a\u00020!2\n\u0010)\u001a\u00060\u0013j\u0002`\u0017J\u0014\u00107\u001a\u0004\u0018\u00010\u00062\n\u0010)\u001a\u00060\u0013j\u0002`\u0017J\u0010\u00108\u001a\u00020!2\u0006\u00109\u001a\u00020:H\u0002J\u001b\u0010;\u001a\u00020!2\u000c\u0010<\u001a\u0008\u0012\u0004\u0012\u00020:0=H\u0000\u00a2\u0006\u0002\u0008>J\u0010\u0010?\u001a\u00020!2\u0006\u0010/\u001a\u00020\u000cH\u0002J\u0006\u0010@\u001a\u00020AJ\u0010\u0010B\u001a\u00020!2\u0006\u0010-\u001a\u00020\u000cH\u0002J\u0010\u0010C\u001a\u00020!2\u0006\u0010-\u001a\u00020\u000cH\u0002J\u0014\u0010D\u001a\u00020!2\u000c\u0010<\u001a\u0008\u0012\u0004\u0012\u00020:0=J\u000e\u0010D\u001a\u00020!2\u0006\u00109\u001a\u00020:R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001c\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\"\u0004\u0008\t\u0010\nR\u001c\u0010\u000b\u001a\u0004\u0018\u00010\u000cX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\r\u0010\u000e\"\u0004\u0008\u000f\u0010\u0010R2\u0010\u0011\u001a&\u0012\u0008\u0012\u00060\u0013j\u0002`\u0014\u0012\u0004\u0012\u00020\u000c0\u0012j\u0012\u0012\u0008\u0012\u00060\u0013j\u0002`\u0014\u0012\u0004\u0012\u00020\u000c`\u0015X\u0082\u0004\u00a2\u0006\u0002\n\u0000R2\u0010\u0016\u001a&\u0012\u0008\u0012\u00060\u0013j\u0002`\u0017\u0012\u0004\u0012\u00020\u00060\u0012j\u0012\u0012\u0008\u0012\u00060\u0013j\u0002`\u0017\u0012\u0004\u0012\u00020\u0006`\u0015X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0018\u001a\u00020\u00068F\u00a2\u0006\u0006\u001a\u0004\u0008\u0019\u0010\u0008R!\u0010\u001a\u001a\u0012\u0012\u0008\u0012\u00060\u0013j\u0002`\u0014\u0012\u0004\u0012\u00020\u000c0\u001b8F\u00a2\u0006\u0006\u001a\u0004\u0008\u001c\u0010\u001dR!\u0010\u001e\u001a\u0012\u0012\u0008\u0012\u00060\u0013j\u0002`\u0017\u0012\u0004\u0012\u00020\u00060\u001b8F\u00a2\u0006\u0006\u001a\u0004\u0008\u001f\u0010\u001d\u00a8\u0006E"
    }
    d2 = {
        "Lorg/koin/core/registry/ScopeRegistry;",
        "",
        "_koin",
        "Lorg/koin/core/Koin;",
        "(Lorg/koin/core/Koin;)V",
        "_rootScope",
        "Lorg/koin/core/scope/Scope;",
        "get_rootScope",
        "()Lorg/koin/core/scope/Scope;",
        "set_rootScope",
        "(Lorg/koin/core/scope/Scope;)V",
        "_rootScopeDefinition",
        "Lorg/koin/core/scope/ScopeDefinition;",
        "get_rootScopeDefinition",
        "()Lorg/koin/core/scope/ScopeDefinition;",
        "set_rootScopeDefinition",
        "(Lorg/koin/core/scope/ScopeDefinition;)V",
        "_scopeDefinitions",
        "Ljava/util/HashMap;",
        "",
        "Lorg/koin/core/qualifier/QualifierValue;",
        "Lkotlin/collections/HashMap;",
        "_scopes",
        "Lorg/koin/core/scope/ScopeID;",
        "rootScope",
        "getRootScope",
        "scopeDefinitions",
        "",
        "getScopeDefinitions",
        "()Ljava/util/Map;",
        "scopes",
        "getScopes",
        "clearScopes",
        "",
        "close",
        "close$koin_core",
        "createRootScope",
        "createRootScope$koin_core",
        "createRootScopeDefinition",
        "createRootScopeDefinition$koin_core",
        "createScope",
        "scopeId",
        "qualifier",
        "Lorg/koin/core/qualifier/Qualifier;",
        "source",
        "scopeDefinition",
        "declareDefinitions",
        "definition",
        "declareInstances",
        "declareScope",
        "declareScopes",
        "list",
        "",
        "deleteScope",
        "scope",
        "getScopeOrNull",
        "loadModule",
        "module",
        "Lorg/koin/core/module/Module;",
        "loadModules",
        "modules",
        "",
        "loadModules$koin_core",
        "mergeDefinitions",
        "size",
        "",
        "unloadDefinitions",
        "unloadInstances",
        "unloadModules",
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
.field private final _koin:Lorg/koin/core/Koin;

.field private _rootScope:Lorg/koin/core/scope/Scope;

.field private _rootScopeDefinition:Lorg/koin/core/scope/ScopeDefinition;

.field private final _scopeDefinitions:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lorg/koin/core/scope/ScopeDefinition;",
            ">;"
        }
    .end annotation
.end field

.field private final _scopes:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lorg/koin/core/scope/Scope;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/koin/core/Koin;)V
    .locals 1
    .param p1, "_koin"    # Lorg/koin/core/Koin;

    const-string v0, "_koin"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/koin/core/registry/ScopeRegistry;->_koin:Lorg/koin/core/Koin;

    .line 37
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/koin/core/registry/ScopeRegistry;->_scopeDefinitions:Ljava/util/HashMap;

    .line 41
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/koin/core/registry/ScopeRegistry;->_scopes:Ljava/util/HashMap;

    return-void
.end method

.method private final clearScopes()V
    .locals 6

    .line 157
    iget-object v0, p0, Lorg/koin/core/registry/ScopeRegistry;->_scopes:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    const-string v1, "_scopes.values"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Iterable;

    .local v0, "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v1, 0x0

    .line 198
    .local v1, "$i$f$forEach":I
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .local v3, "element$iv":Ljava/lang/Object;
    move-object v4, v3

    check-cast v4, Lorg/koin/core/scope/Scope;

    .local v4, "scope":Lorg/koin/core/scope/Scope;
    const/4 v5, 0x0

    .line 157
    .local v5, "$i$a$-forEach-ScopeRegistry$clearScopes$1":I
    invoke-virtual {v4}, Lorg/koin/core/scope/Scope;->clear$koin_core()V

    .end local v3    # "element$iv":Ljava/lang/Object;
    .end local v4    # "scope":Lorg/koin/core/scope/Scope;
    .end local v5    # "$i$a$-forEach-ScopeRegistry$clearScopes$1":I
    goto :goto_0

    .line 199
    :cond_0
    nop

    .line 158
    .end local v0    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v1    # "$i$f$forEach":I
    return-void
.end method

.method private final createScope(Ljava/lang/String;Lorg/koin/core/scope/ScopeDefinition;Ljava/lang/Object;)Lorg/koin/core/scope/Scope;
    .locals 3
    .param p1, "scopeId"    # Ljava/lang/String;
    .param p2, "scopeDefinition"    # Lorg/koin/core/scope/ScopeDefinition;
    .param p3, "source"    # Ljava/lang/Object;

    .line 133
    new-instance v0, Lorg/koin/core/scope/Scope;

    iget-object v1, p0, Lorg/koin/core/registry/ScopeRegistry;->_koin:Lorg/koin/core/Koin;

    invoke-direct {v0, p1, p2, v1, p3}, Lorg/koin/core/scope/Scope;-><init>(Ljava/lang/String;Lorg/koin/core/scope/ScopeDefinition;Lorg/koin/core/Koin;Ljava/lang/Object;)V

    .line 134
    .local v0, "scope":Lorg/koin/core/scope/Scope;
    iget-object v1, p0, Lorg/koin/core/registry/ScopeRegistry;->_rootScope:Lorg/koin/core/scope/Scope;

    if-eqz v1, :cond_0

    .local v1, "it":Lorg/koin/core/scope/Scope;
    const/4 v2, 0x0

    .local v2, "$i$a$-let-ScopeRegistry$createScope$links$1":I
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .end local v1    # "it":Lorg/koin/core/scope/Scope;
    .end local v2    # "$i$a$-let-ScopeRegistry$createScope$links$1":I
    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v1

    .line 135
    .local v1, "links":Ljava/util/List;
    :goto_0
    invoke-virtual {v0, v1}, Lorg/koin/core/scope/Scope;->create$koin_core(Ljava/util/List;)V

    .line 136
    return-object v0
.end method

.method public static synthetic createScope$default(Lorg/koin/core/registry/ScopeRegistry;Ljava/lang/String;Lorg/koin/core/qualifier/Qualifier;Ljava/lang/Object;ILjava/lang/Object;)Lorg/koin/core/scope/Scope;
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    .line 117
    const/4 p3, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lorg/koin/core/registry/ScopeRegistry;->createScope(Ljava/lang/String;Lorg/koin/core/qualifier/Qualifier;Ljava/lang/Object;)Lorg/koin/core/scope/Scope;

    move-result-object p0

    return-object p0
.end method

.method private final declareDefinitions(Lorg/koin/core/scope/ScopeDefinition;)V
    .locals 3
    .param p1, "definition"    # Lorg/koin/core/scope/ScopeDefinition;

    .line 84
    invoke-virtual {p0}, Lorg/koin/core/registry/ScopeRegistry;->getScopeDefinitions()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p1}, Lorg/koin/core/scope/ScopeDefinition;->getQualifier()Lorg/koin/core/qualifier/Qualifier;

    move-result-object v1

    invoke-interface {v1}, Lorg/koin/core/qualifier/Qualifier;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    invoke-direct {p0, p1}, Lorg/koin/core/registry/ScopeRegistry;->mergeDefinitions(Lorg/koin/core/scope/ScopeDefinition;)V

    goto :goto_0

    .line 87
    :cond_0
    iget-object v0, p0, Lorg/koin/core/registry/ScopeRegistry;->_scopeDefinitions:Ljava/util/HashMap;

    check-cast v0, Ljava/util/Map;

    invoke-virtual {p1}, Lorg/koin/core/scope/ScopeDefinition;->getQualifier()Lorg/koin/core/qualifier/Qualifier;

    move-result-object v1

    invoke-interface {v1}, Lorg/koin/core/qualifier/Qualifier;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lorg/koin/core/scope/ScopeDefinition;->copy()Lorg/koin/core/scope/ScopeDefinition;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    :goto_0
    nop

    .line 89
    return-void
.end method

.method private final declareInstances(Lorg/koin/core/scope/ScopeDefinition;)V
    .locals 10
    .param p1, "scopeDefinition"    # Lorg/koin/core/scope/ScopeDefinition;

    .line 80
    iget-object v0, p0, Lorg/koin/core/registry/ScopeRegistry;->_scopes:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    const-string v1, "_scopes.values"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Iterable;

    .local v0, "$this$filter$iv":Ljava/lang/Iterable;
    const/4 v1, 0x0

    .line 191
    .local v1, "$i$f$filter":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    check-cast v2, Ljava/util/Collection;

    .local v2, "destination$iv$iv":Ljava/util/Collection;
    move-object v3, v0

    .local v3, "$this$filterTo$iv$iv":Ljava/lang/Iterable;
    const/4 v4, 0x0

    .line 192
    .local v4, "$i$f$filterTo":I
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .local v6, "element$iv$iv":Ljava/lang/Object;
    move-object v7, v6

    check-cast v7, Lorg/koin/core/scope/Scope;

    .local v7, "it":Lorg/koin/core/scope/Scope;
    const/4 v8, 0x0

    .line 80
    .local v8, "$i$a$-filter-ScopeRegistry$declareInstances$1":I
    invoke-virtual {v7}, Lorg/koin/core/scope/Scope;->get_scopeDefinition()Lorg/koin/core/scope/ScopeDefinition;

    move-result-object v9

    invoke-static {v9, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    .end local v7    # "it":Lorg/koin/core/scope/Scope;
    .end local v8    # "$i$a$-filter-ScopeRegistry$declareInstances$1":I
    if-eqz v7, :cond_0

    invoke-interface {v2, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 193
    .end local v6    # "element$iv$iv":Ljava/lang/Object;
    :cond_1
    nop

    .end local v2    # "destination$iv$iv":Ljava/util/Collection;
    .end local v3    # "$this$filterTo$iv$iv":Ljava/lang/Iterable;
    .end local v4    # "$i$f$filterTo":I
    move-object v0, v2

    check-cast v0, Ljava/util/List;

    .end local v0    # "$this$filter$iv":Ljava/lang/Iterable;
    .end local v1    # "$i$f$filter":I
    check-cast v0, Ljava/lang/Iterable;

    .line 80
    .local v0, "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v1, 0x0

    .line 194
    .local v1, "$i$f$forEach":I
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .local v3, "element$iv":Ljava/lang/Object;
    move-object v4, v3

    check-cast v4, Lorg/koin/core/scope/Scope;

    .local v4, "it":Lorg/koin/core/scope/Scope;
    const/4 v5, 0x0

    .line 80
    .local v5, "$i$a$-forEach-ScopeRegistry$declareInstances$2":I
    invoke-virtual {v4, p1}, Lorg/koin/core/scope/Scope;->loadDefinitions(Lorg/koin/core/scope/ScopeDefinition;)V

    .end local v3    # "element$iv":Ljava/lang/Object;
    .end local v4    # "it":Lorg/koin/core/scope/Scope;
    .end local v5    # "$i$a$-forEach-ScopeRegistry$declareInstances$2":I
    goto :goto_1

    .line 195
    :cond_2
    nop

    .line 81
    .end local v0    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v1    # "$i$f$forEach":I
    return-void
.end method

.method private final declareScope(Lorg/koin/core/scope/ScopeDefinition;)V
    .locals 0
    .param p1, "scopeDefinition"    # Lorg/koin/core/scope/ScopeDefinition;

    .line 75
    invoke-direct {p0, p1}, Lorg/koin/core/registry/ScopeRegistry;->declareDefinitions(Lorg/koin/core/scope/ScopeDefinition;)V

    .line 76
    invoke-direct {p0, p1}, Lorg/koin/core/registry/ScopeRegistry;->declareInstances(Lorg/koin/core/scope/ScopeDefinition;)V

    .line 77
    return-void
.end method

.method private final declareScopes(Ljava/util/List;)V
    .locals 6
    .param p1, "list"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/koin/core/scope/ScopeDefinition;",
            ">;)V"
        }
    .end annotation

    .line 69
    move-object v0, p1

    check-cast v0, Ljava/lang/Iterable;

    .local v0, "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v1, 0x0

    .line 189
    .local v1, "$i$f$forEach":I
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .local v3, "element$iv":Ljava/lang/Object;
    move-object v4, v3

    check-cast v4, Lorg/koin/core/scope/ScopeDefinition;

    .local v4, "scopeDefinition":Lorg/koin/core/scope/ScopeDefinition;
    const/4 v5, 0x0

    .line 70
    .local v5, "$i$a$-forEach-ScopeRegistry$declareScopes$1":I
    invoke-direct {p0, v4}, Lorg/koin/core/registry/ScopeRegistry;->declareScope(Lorg/koin/core/scope/ScopeDefinition;)V

    .line 71
    .end local v4    # "scopeDefinition":Lorg/koin/core/scope/ScopeDefinition;
    .end local v5    # "$i$a$-forEach-ScopeRegistry$declareScopes$1":I
    nop

    .end local v3    # "element$iv":Ljava/lang/Object;
    goto :goto_0

    .line 190
    :cond_0
    nop

    .line 72
    .end local v0    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v1    # "$i$f$forEach":I
    return-void
.end method

.method private final loadModule(Lorg/koin/core/module/Module;)V
    .locals 1
    .param p1, "module"    # Lorg/koin/core/module/Module;

    .line 64
    invoke-virtual {p1}, Lorg/koin/core/module/Module;->getRootScope()Lorg/koin/core/scope/ScopeDefinition;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/koin/core/registry/ScopeRegistry;->declareScope(Lorg/koin/core/scope/ScopeDefinition;)V

    .line 65
    invoke-virtual {p1}, Lorg/koin/core/module/Module;->getOtherScopes()Ljava/util/ArrayList;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-direct {p0, v0}, Lorg/koin/core/registry/ScopeRegistry;->declareScopes(Ljava/util/List;)V

    .line 66
    return-void
.end method

.method private final mergeDefinitions(Lorg/koin/core/scope/ScopeDefinition;)V
    .locals 10
    .param p1, "definition"    # Lorg/koin/core/scope/ScopeDefinition;

    .line 92
    invoke-virtual {p0}, Lorg/koin/core/registry/ScopeRegistry;->getScopeDefinitions()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p1}, Lorg/koin/core/scope/ScopeDefinition;->getQualifier()Lorg/koin/core/qualifier/Qualifier;

    move-result-object v1

    invoke-interface {v1}, Lorg/koin/core/qualifier/Qualifier;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/koin/core/scope/ScopeDefinition;

    if-eqz v0, :cond_1

    .line 94
    .local v0, "existing":Lorg/koin/core/scope/ScopeDefinition;
    invoke-virtual {p1}, Lorg/koin/core/scope/ScopeDefinition;->getDefinitions()Ljava/util/Set;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    .local v1, "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v2, 0x0

    .line 196
    .local v2, "$i$f$forEach":I
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .local v4, "element$iv":Ljava/lang/Object;
    move-object v5, v4

    check-cast v5, Lorg/koin/core/definition/BeanDefinition;

    .local v5, "it":Lorg/koin/core/definition/BeanDefinition;
    const/4 v6, 0x0

    .line 95
    .local v6, "$i$a$-forEach-ScopeRegistry$mergeDefinitions$1":I
    const/4 v7, 0x0

    const/4 v8, 0x2

    const/4 v9, 0x0

    invoke-static {v0, v5, v7, v8, v9}, Lorg/koin/core/scope/ScopeDefinition;->save$default(Lorg/koin/core/scope/ScopeDefinition;Lorg/koin/core/definition/BeanDefinition;ZILjava/lang/Object;)V

    .line 96
    .end local v5    # "it":Lorg/koin/core/definition/BeanDefinition;
    .end local v6    # "$i$a$-forEach-ScopeRegistry$mergeDefinitions$1":I
    nop

    .end local v4    # "element$iv":Ljava/lang/Object;
    goto :goto_0

    .line 197
    :cond_0
    nop

    .line 97
    .end local v1    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v2    # "$i$f$forEach":I
    return-void

    .line 93
    .end local v0    # "existing":Lorg/koin/core/scope/ScopeDefinition;
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Scope definition \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\' not found in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/koin/core/registry/ScopeRegistry;->_scopeDefinitions:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    throw v1
.end method

.method private final unloadDefinitions(Lorg/koin/core/scope/ScopeDefinition;)V
    .locals 6
    .param p1, "scopeDefinition"    # Lorg/koin/core/scope/ScopeDefinition;

    .line 175
    invoke-direct {p0, p1}, Lorg/koin/core/registry/ScopeRegistry;->unloadInstances(Lorg/koin/core/scope/ScopeDefinition;)V

    .line 176
    iget-object v0, p0, Lorg/koin/core/registry/ScopeRegistry;->_scopeDefinitions:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    const-string v1, "_scopeDefinitions.values"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Iterable;

    .local v0, "$this$firstOrNull$iv":Ljava/lang/Iterable;
    const/4 v1, 0x0

    .line 204
    .local v1, "$i$f$firstOrNull":I
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .local v3, "element$iv":Ljava/lang/Object;
    move-object v4, v3

    check-cast v4, Lorg/koin/core/scope/ScopeDefinition;

    .local v4, "it":Lorg/koin/core/scope/ScopeDefinition;
    const/4 v5, 0x0

    .line 176
    .local v5, "$i$a$-firstOrNull-ScopeRegistry$unloadDefinitions$1":I
    invoke-static {v4, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    .end local v4    # "it":Lorg/koin/core/scope/ScopeDefinition;
    .end local v5    # "$i$a$-firstOrNull-ScopeRegistry$unloadDefinitions$1":I
    if-eqz v4, :cond_0

    goto :goto_0

    .line 205
    .end local v3    # "element$iv":Ljava/lang/Object;
    :cond_1
    const/4 v3, 0x0

    .end local v0    # "$this$firstOrNull$iv":Ljava/lang/Iterable;
    .end local v1    # "$i$f$firstOrNull":I
    :goto_0
    check-cast v3, Lorg/koin/core/scope/ScopeDefinition;

    if-eqz v3, :cond_2

    .line 176
    invoke-virtual {v3, p1}, Lorg/koin/core/scope/ScopeDefinition;->unloadDefinitions(Lorg/koin/core/scope/ScopeDefinition;)V

    goto :goto_1

    :cond_2
    nop

    .line 177
    :goto_1
    return-void
.end method

.method private final unloadInstances(Lorg/koin/core/scope/ScopeDefinition;)V
    .locals 10
    .param p1, "scopeDefinition"    # Lorg/koin/core/scope/ScopeDefinition;

    .line 180
    iget-object v0, p0, Lorg/koin/core/registry/ScopeRegistry;->_scopes:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    const-string v1, "_scopes.values"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Iterable;

    .local v0, "$this$filter$iv":Ljava/lang/Iterable;
    const/4 v1, 0x0

    .line 206
    .local v1, "$i$f$filter":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    check-cast v2, Ljava/util/Collection;

    .local v2, "destination$iv$iv":Ljava/util/Collection;
    move-object v3, v0

    .local v3, "$this$filterTo$iv$iv":Ljava/lang/Iterable;
    const/4 v4, 0x0

    .line 207
    .local v4, "$i$f$filterTo":I
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .local v6, "element$iv$iv":Ljava/lang/Object;
    move-object v7, v6

    check-cast v7, Lorg/koin/core/scope/Scope;

    .local v7, "it":Lorg/koin/core/scope/Scope;
    const/4 v8, 0x0

    .line 180
    .local v8, "$i$a$-filter-ScopeRegistry$unloadInstances$1":I
    invoke-virtual {v7}, Lorg/koin/core/scope/Scope;->get_scopeDefinition()Lorg/koin/core/scope/ScopeDefinition;

    move-result-object v9

    invoke-static {v9, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    .end local v7    # "it":Lorg/koin/core/scope/Scope;
    .end local v8    # "$i$a$-filter-ScopeRegistry$unloadInstances$1":I
    if-eqz v7, :cond_0

    invoke-interface {v2, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 208
    .end local v6    # "element$iv$iv":Ljava/lang/Object;
    :cond_1
    nop

    .end local v2    # "destination$iv$iv":Ljava/util/Collection;
    .end local v3    # "$this$filterTo$iv$iv":Ljava/lang/Iterable;
    .end local v4    # "$i$f$filterTo":I
    move-object v0, v2

    check-cast v0, Ljava/util/List;

    .end local v0    # "$this$filter$iv":Ljava/lang/Iterable;
    .end local v1    # "$i$f$filter":I
    check-cast v0, Ljava/lang/Iterable;

    .line 180
    .local v0, "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v1, 0x0

    .line 209
    .local v1, "$i$f$forEach":I
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .local v3, "element$iv":Ljava/lang/Object;
    move-object v4, v3

    check-cast v4, Lorg/koin/core/scope/Scope;

    .local v4, "it":Lorg/koin/core/scope/Scope;
    const/4 v5, 0x0

    .line 180
    .local v5, "$i$a$-forEach-ScopeRegistry$unloadInstances$2":I
    invoke-virtual {v4, p1}, Lorg/koin/core/scope/Scope;->dropInstances(Lorg/koin/core/scope/ScopeDefinition;)V

    .end local v3    # "element$iv":Ljava/lang/Object;
    .end local v4    # "it":Lorg/koin/core/scope/Scope;
    .end local v5    # "$i$a$-forEach-ScopeRegistry$unloadInstances$2":I
    goto :goto_1

    .line 210
    :cond_2
    nop

    .line 181
    .end local v0    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v1    # "$i$f$forEach":I
    return-void
.end method


# virtual methods
.method public final close$koin_core()V
    .locals 2

    .line 149
    invoke-direct {p0}, Lorg/koin/core/registry/ScopeRegistry;->clearScopes()V

    .line 150
    iget-object v0, p0, Lorg/koin/core/registry/ScopeRegistry;->_scopes:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 151
    iget-object v0, p0, Lorg/koin/core/registry/ScopeRegistry;->_scopeDefinitions:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 152
    const/4 v0, 0x0

    move-object v1, v0

    check-cast v1, Lorg/koin/core/scope/ScopeDefinition;

    iput-object v1, p0, Lorg/koin/core/registry/ScopeRegistry;->_rootScopeDefinition:Lorg/koin/core/scope/ScopeDefinition;

    .line 153
    check-cast v0, Lorg/koin/core/scope/Scope;

    iput-object v0, p0, Lorg/koin/core/registry/ScopeRegistry;->_rootScope:Lorg/koin/core/scope/Scope;

    .line 154
    return-void
.end method

.method public final createRootScope$koin_core()V
    .locals 3

    .line 107
    iget-object v0, p0, Lorg/koin/core/registry/ScopeRegistry;->_rootScope:Lorg/koin/core/scope/Scope;

    if-nez v0, :cond_0

    .line 108
    nop

    .line 109
    sget-object v0, Lorg/koin/core/scope/ScopeDefinition;->Companion:Lorg/koin/core/scope/ScopeDefinition$Companion;

    invoke-virtual {v0}, Lorg/koin/core/scope/ScopeDefinition$Companion;->getROOT_SCOPE_QUALIFIER()Lorg/koin/core/qualifier/StringQualifier;

    move-result-object v0

    check-cast v0, Lorg/koin/core/qualifier/Qualifier;

    const/4 v1, 0x0

    const-string v2, "-Root-"

    invoke-virtual {p0, v2, v0, v1}, Lorg/koin/core/registry/ScopeRegistry;->createScope(Ljava/lang/String;Lorg/koin/core/qualifier/Qualifier;Ljava/lang/Object;)Lorg/koin/core/scope/Scope;

    move-result-object v0

    iput-object v0, p0, Lorg/koin/core/registry/ScopeRegistry;->_rootScope:Lorg/koin/core/scope/Scope;

    .line 111
    :cond_0
    return-void
.end method

.method public final createRootScopeDefinition$koin_core()V
    .locals 3

    .line 100
    sget-object v0, Lorg/koin/core/scope/ScopeDefinition;->Companion:Lorg/koin/core/scope/ScopeDefinition$Companion;

    invoke-virtual {v0}, Lorg/koin/core/scope/ScopeDefinition$Companion;->rootDefinition()Lorg/koin/core/scope/ScopeDefinition;

    move-result-object v0

    .line 101
    .local v0, "scopeDefinition":Lorg/koin/core/scope/ScopeDefinition;
    nop

    .line 102
    nop

    .line 101
    iget-object v1, p0, Lorg/koin/core/registry/ScopeRegistry;->_scopeDefinitions:Ljava/util/HashMap;

    check-cast v1, Ljava/util/Map;

    sget-object v2, Lorg/koin/core/scope/ScopeDefinition;->Companion:Lorg/koin/core/scope/ScopeDefinition$Companion;

    invoke-virtual {v2}, Lorg/koin/core/scope/ScopeDefinition$Companion;->getROOT_SCOPE_QUALIFIER()Lorg/koin/core/qualifier/StringQualifier;

    move-result-object v2

    invoke-virtual {v2}, Lorg/koin/core/qualifier/StringQualifier;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    iput-object v0, p0, Lorg/koin/core/registry/ScopeRegistry;->_rootScopeDefinition:Lorg/koin/core/scope/ScopeDefinition;

    .line 104
    return-void
.end method

.method public final createScope(Ljava/lang/String;Lorg/koin/core/qualifier/Qualifier;Ljava/lang/Object;)Lorg/koin/core/scope/Scope;
    .locals 4
    .param p1, "scopeId"    # Ljava/lang/String;
    .param p2, "qualifier"    # Lorg/koin/core/qualifier/Qualifier;
    .param p3, "source"    # Ljava/lang/Object;

    const-string v0, "scopeId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "qualifier"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 118
    invoke-virtual {p0}, Lorg/koin/core/registry/ScopeRegistry;->getScopes()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 122
    invoke-virtual {p0}, Lorg/koin/core/registry/ScopeRegistry;->getScopeDefinitions()Ljava/util/Map;

    move-result-object v0

    invoke-interface {p2}, Lorg/koin/core/qualifier/Qualifier;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/koin/core/scope/ScopeDefinition;

    .line 123
    .local v0, "scopeDefinition":Lorg/koin/core/scope/ScopeDefinition;
    if-eqz v0, :cond_0

    .line 124
    invoke-direct {p0, p1, v0, p3}, Lorg/koin/core/registry/ScopeRegistry;->createScope(Ljava/lang/String;Lorg/koin/core/scope/ScopeDefinition;Ljava/lang/Object;)Lorg/koin/core/scope/Scope;

    move-result-object v1

    .line 125
    .local v1, "createdScope":Lorg/koin/core/scope/Scope;
    iget-object v2, p0, Lorg/koin/core/registry/ScopeRegistry;->_scopes:Ljava/util/HashMap;

    check-cast v2, Ljava/util/Map;

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    nop

    .line 123
    .end local v1    # "createdScope":Lorg/koin/core/scope/Scope;
    return-object v1

    .line 128
    :cond_0
    new-instance v1, Lorg/koin/core/error/NoScopeDefFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No Scope Definition found for qualifer \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Lorg/koin/core/qualifier/Qualifier;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x27

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/koin/core/error/NoScopeDefFoundException;-><init>(Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    throw v1

    .line 119
    .end local v0    # "scopeDefinition":Lorg/koin/core/scope/ScopeDefinition;
    :cond_1
    new-instance v0, Lorg/koin/core/error/ScopeAlreadyCreatedException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Scope with id \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\' is already created"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/koin/core/error/ScopeAlreadyCreatedException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method

.method public final deleteScope(Ljava/lang/String;)V
    .locals 1
    .param p1, "scopeId"    # Ljava/lang/String;

    const-string v0, "scopeId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 141
    iget-object v0, p0, Lorg/koin/core/registry/ScopeRegistry;->_scopes:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    return-void
.end method

.method public final deleteScope(Lorg/koin/core/scope/Scope;)V
    .locals 2
    .param p1, "scope"    # Lorg/koin/core/scope/Scope;

    const-string v0, "scope"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 145
    iget-object v0, p0, Lorg/koin/core/registry/ScopeRegistry;->_scopes:Ljava/util/HashMap;

    invoke-virtual {p1}, Lorg/koin/core/scope/Scope;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    return-void
.end method

.method public final getRootScope()Lorg/koin/core/scope/Scope;
    .locals 2

    .line 48
    iget-object v0, p0, Lorg/koin/core/registry/ScopeRegistry;->_rootScope:Lorg/koin/core/scope/Scope;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No root scoped initialized"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method

.method public final getScopeDefinitions()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/koin/core/scope/ScopeDefinition;",
            ">;"
        }
    .end annotation

    .line 39
    iget-object v0, p0, Lorg/koin/core/registry/ScopeRegistry;->_scopeDefinitions:Ljava/util/HashMap;

    check-cast v0, Ljava/util/Map;

    return-object v0
.end method

.method public final getScopeOrNull(Ljava/lang/String;)Lorg/koin/core/scope/Scope;
    .locals 1
    .param p1, "scopeId"    # Ljava/lang/String;

    const-string v0, "scopeId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 114
    invoke-virtual {p0}, Lorg/koin/core/registry/ScopeRegistry;->getScopes()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/koin/core/scope/Scope;

    return-object v0
.end method

.method public final getScopes()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/koin/core/scope/Scope;",
            ">;"
        }
    .end annotation

    .line 43
    iget-object v0, p0, Lorg/koin/core/registry/ScopeRegistry;->_scopes:Ljava/util/HashMap;

    check-cast v0, Ljava/util/Map;

    return-object v0
.end method

.method public final get_rootScope()Lorg/koin/core/scope/Scope;
    .locals 1

    .line 46
    iget-object v0, p0, Lorg/koin/core/registry/ScopeRegistry;->_rootScope:Lorg/koin/core/scope/Scope;

    return-object v0
.end method

.method public final get_rootScopeDefinition()Lorg/koin/core/scope/ScopeDefinition;
    .locals 1

    .line 45
    iget-object v0, p0, Lorg/koin/core/registry/ScopeRegistry;->_rootScopeDefinition:Lorg/koin/core/scope/ScopeDefinition;

    return-object v0
.end method

.method public final loadModules$koin_core(Ljava/lang/Iterable;)V
    .locals 9
    .param p1, "modules"    # Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Lorg/koin/core/module/Module;",
            ">;)V"
        }
    .end annotation

    const-string v0, "modules"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    move-object v0, p1

    .local v0, "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v1, 0x0

    .line 187
    .local v1, "$i$f$forEach":I
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .local v3, "element$iv":Ljava/lang/Object;
    move-object v4, v3

    check-cast v4, Lorg/koin/core/module/Module;

    .local v4, "module":Lorg/koin/core/module/Module;
    const/4 v5, 0x0

    .line 54
    .local v5, "$i$a$-forEach-ScopeRegistry$loadModules$1":I
    invoke-virtual {v4}, Lorg/koin/core/module/Module;->isLoaded()Z

    move-result v6

    if-nez v6, :cond_0

    .line 55
    invoke-direct {p0, v4}, Lorg/koin/core/registry/ScopeRegistry;->loadModule(Lorg/koin/core/module/Module;)V

    .line 56
    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Lorg/koin/core/module/Module;->setLoaded$koin_core(Z)V

    goto :goto_1

    .line 58
    :cond_0
    iget-object v6, p0, Lorg/koin/core/registry/ScopeRegistry;->_koin:Lorg/koin/core/Koin;

    invoke-virtual {v6}, Lorg/koin/core/Koin;->get_logger()Lorg/koin/core/logger/Logger;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "module \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, "\' already loaded!"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/koin/core/logger/Logger;->error(Ljava/lang/String;)V

    .line 59
    .end local v4    # "module":Lorg/koin/core/module/Module;
    .end local v5    # "$i$a$-forEach-ScopeRegistry$loadModules$1":I
    :goto_1
    nop

    .line 60
    nop

    .end local v3    # "element$iv":Ljava/lang/Object;
    goto :goto_0

    .line 188
    :cond_1
    nop

    .line 61
    .end local v0    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v1    # "$i$f$forEach":I
    return-void
.end method

.method public final set_rootScope(Lorg/koin/core/scope/Scope;)V
    .locals 0
    .param p1, "<set-?>"    # Lorg/koin/core/scope/Scope;

    .line 46
    iput-object p1, p0, Lorg/koin/core/registry/ScopeRegistry;->_rootScope:Lorg/koin/core/scope/Scope;

    return-void
.end method

.method public final set_rootScopeDefinition(Lorg/koin/core/scope/ScopeDefinition;)V
    .locals 0
    .param p1, "<set-?>"    # Lorg/koin/core/scope/ScopeDefinition;

    .line 45
    iput-object p1, p0, Lorg/koin/core/registry/ScopeRegistry;->_rootScopeDefinition:Lorg/koin/core/scope/ScopeDefinition;

    return-void
.end method

.method public final size()I
    .locals 9

    .line 50
    invoke-virtual {p0}, Lorg/koin/core/registry/ScopeRegistry;->getScopeDefinitions()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .local v0, "$this$map$iv":Ljava/lang/Iterable;
    const/4 v1, 0x0

    .line 183
    .local v1, "$i$f$map":I
    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v0, v3}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v2, Ljava/util/Collection;

    .local v2, "destination$iv$iv":Ljava/util/Collection;
    move-object v3, v0

    .local v3, "$this$mapTo$iv$iv":Ljava/lang/Iterable;
    const/4 v4, 0x0

    .line 184
    .local v4, "$i$f$mapTo":I
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 185
    .local v6, "item$iv$iv":Ljava/lang/Object;
    move-object v7, v6

    check-cast v7, Lorg/koin/core/scope/ScopeDefinition;

    .local v7, "it":Lorg/koin/core/scope/ScopeDefinition;
    const/4 v8, 0x0

    .line 50
    .local v8, "$i$a$-map-ScopeRegistry$size$1":I
    invoke-virtual {v7}, Lorg/koin/core/scope/ScopeDefinition;->size$koin_core()I

    move-result v7

    .end local v7    # "it":Lorg/koin/core/scope/ScopeDefinition;
    .end local v8    # "$i$a$-map-ScopeRegistry$size$1":I
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v2, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 184
    .end local v6    # "item$iv$iv":Ljava/lang/Object;
    goto :goto_0

    .line 186
    :cond_0
    nop

    .end local v2    # "destination$iv$iv":Ljava/util/Collection;
    .end local v3    # "$this$mapTo$iv$iv":Ljava/lang/Iterable;
    .end local v4    # "$i$f$mapTo":I
    move-object v0, v2

    check-cast v0, Ljava/util/List;

    .end local v0    # "$this$map$iv":Ljava/lang/Iterable;
    .end local v1    # "$i$f$map":I
    check-cast v0, Ljava/lang/Iterable;

    .line 50
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->sumOfInt(Ljava/lang/Iterable;)I

    move-result v0

    return v0
.end method

.method public final unloadModules(Ljava/lang/Iterable;)V
    .locals 6
    .param p1, "modules"    # Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Lorg/koin/core/module/Module;",
            ">;)V"
        }
    .end annotation

    const-string v0, "modules"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 161
    move-object v0, p1

    .local v0, "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v1, 0x0

    .line 200
    .local v1, "$i$f$forEach":I
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .local v3, "element$iv":Ljava/lang/Object;
    move-object v4, v3

    check-cast v4, Lorg/koin/core/module/Module;

    .local v4, "it":Lorg/koin/core/module/Module;
    const/4 v5, 0x0

    .line 162
    .local v5, "$i$a$-forEach-ScopeRegistry$unloadModules$1":I
    invoke-virtual {p0, v4}, Lorg/koin/core/registry/ScopeRegistry;->unloadModules(Lorg/koin/core/module/Module;)V

    .line 163
    .end local v4    # "it":Lorg/koin/core/module/Module;
    .end local v5    # "$i$a$-forEach-ScopeRegistry$unloadModules$1":I
    nop

    .end local v3    # "element$iv":Ljava/lang/Object;
    goto :goto_0

    .line 201
    :cond_0
    nop

    .line 164
    .end local v0    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v1    # "$i$f$forEach":I
    return-void
.end method

.method public final unloadModules(Lorg/koin/core/module/Module;)V
    .locals 7
    .param p1, "module"    # Lorg/koin/core/module/Module;

    const-string v0, "module"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 167
    invoke-virtual {p1}, Lorg/koin/core/module/Module;->getOtherScopes()Ljava/util/ArrayList;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-virtual {p1}, Lorg/koin/core/module/Module;->getRootScope()Lorg/koin/core/scope/ScopeDefinition;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 168
    .local v0, "scopeDefinitions":Ljava/util/List;
    move-object v1, v0

    check-cast v1, Ljava/lang/Iterable;

    .local v1, "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v2, 0x0

    .line 202
    .local v2, "$i$f$forEach":I
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .local v4, "element$iv":Ljava/lang/Object;
    move-object v5, v4

    check-cast v5, Lorg/koin/core/scope/ScopeDefinition;

    .local v5, "it":Lorg/koin/core/scope/ScopeDefinition;
    const/4 v6, 0x0

    .line 169
    .local v6, "$i$a$-forEach-ScopeRegistry$unloadModules$2":I
    invoke-direct {p0, v5}, Lorg/koin/core/registry/ScopeRegistry;->unloadDefinitions(Lorg/koin/core/scope/ScopeDefinition;)V

    .line 170
    .end local v5    # "it":Lorg/koin/core/scope/ScopeDefinition;
    .end local v6    # "$i$a$-forEach-ScopeRegistry$unloadModules$2":I
    nop

    .end local v4    # "element$iv":Ljava/lang/Object;
    goto :goto_0

    .line 203
    :cond_0
    nop

    .line 171
    .end local v1    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v2    # "$i$f$forEach":I
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lorg/koin/core/module/Module;->setLoaded$koin_core(Z)V

    .line 172
    return-void
.end method
