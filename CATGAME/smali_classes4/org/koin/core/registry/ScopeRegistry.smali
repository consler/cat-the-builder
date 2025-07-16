.class public final Lorg/koin/core/registry/ScopeRegistry;
.super Ljava/lang/Object;
.source "ScopeRegistry.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nScopeRegistry.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ScopeRegistry.kt\norg/koin/core/registry/ScopeRegistry\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,182:1\n1366#2:183\n1435#2,3:184\n1648#2,2:187\n1648#2,2:189\n706#2:191\n783#2,2:192\n1648#2,2:194\n1648#2,2:196\n1648#2,2:198\n1648#2,2:200\n1648#2,2:202\n250#2,2:204\n706#2:206\n783#2,2:207\n1648#2,2:209\n*E\n*S KotlinDebug\n*F\n+ 1 ScopeRegistry.kt\norg/koin/core/registry/ScopeRegistry\n*L\n50#1:183\n50#1,3:184\n53#1,2:187\n69#1,2:189\n80#1:191\n80#1,2:192\n80#1,2:194\n94#1,2:196\n157#1,2:198\n161#1,2:200\n168#1,2:202\n176#1,2:204\n180#1:206\n180#1,2:207\n180#1,2:209\n*E\n"
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

    const-string v0, "_koin"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/koin/core/registry/ScopeRegistry;->_koin:Lorg/koin/core/Koin;

    .line 37
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lorg/koin/core/registry/ScopeRegistry;->_scopeDefinitions:Ljava/util/HashMap;

    .line 41
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lorg/koin/core/registry/ScopeRegistry;->_scopes:Ljava/util/HashMap;

    return-void
.end method

.method private final clearScopes()V
    .locals 2

    .line 157
    iget-object v0, p0, Lorg/koin/core/registry/ScopeRegistry;->_scopes:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    const-string v1, "_scopes.values"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Iterable;

    .line 198
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/koin/core/scope/Scope;

    .line 157
    invoke-virtual {v1}, Lorg/koin/core/scope/Scope;->clear$koin_core()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private final createScope(Ljava/lang/String;Lorg/koin/core/scope/ScopeDefinition;Ljava/lang/Object;)Lorg/koin/core/scope/Scope;
    .locals 2

    .line 133
    new-instance v0, Lorg/koin/core/scope/Scope;

    iget-object v1, p0, Lorg/koin/core/registry/ScopeRegistry;->_koin:Lorg/koin/core/Koin;

    invoke-direct {v0, p1, p2, v1, p3}, Lorg/koin/core/scope/Scope;-><init>(Ljava/lang/String;Lorg/koin/core/scope/ScopeDefinition;Lorg/koin/core/Koin;Ljava/lang/Object;)V

    .line 134
    iget-object p1, p0, Lorg/koin/core/registry/ScopeRegistry;->_rootScope:Lorg/koin/core/scope/Scope;

    if-eqz p1, :cond_0

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    .line 135
    :goto_0
    invoke-virtual {v0, p1}, Lorg/koin/core/scope/Scope;->create$koin_core(Ljava/util/List;)V

    return-object v0
.end method

.method public static synthetic createScope$default(Lorg/koin/core/registry/ScopeRegistry;Ljava/lang/String;Lorg/koin/core/qualifier/Qualifier;Ljava/lang/Object;ILjava/lang/Object;)Lorg/koin/core/scope/Scope;
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    .line 117
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lorg/koin/core/registry/ScopeRegistry;->createScope(Ljava/lang/String;Lorg/koin/core/qualifier/Qualifier;Ljava/lang/Object;)Lorg/koin/core/scope/Scope;

    move-result-object p0

    return-object p0
.end method

.method private final declareDefinitions(Lorg/koin/core/scope/ScopeDefinition;)V
    .locals 2

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

    move-result-object p1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method private final declareInstances(Lorg/koin/core/scope/ScopeDefinition;)V
    .locals 4

    .line 80
    iget-object v0, p0, Lorg/koin/core/registry/ScopeRegistry;->_scopes:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    const-string v1, "_scopes.values"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Iterable;

    .line 191
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/Collection;

    .line 192
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lorg/koin/core/scope/Scope;

    .line 80
    invoke-virtual {v3}, Lorg/koin/core/scope/Scope;->get_scopeDefinition()Lorg/koin/core/scope/ScopeDefinition;

    move-result-object v3

    invoke-static {v3, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 193
    :cond_1
    check-cast v1, Ljava/util/List;

    check-cast v1, Ljava/lang/Iterable;

    .line 194
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/koin/core/scope/Scope;

    .line 80
    invoke-virtual {v1, p1}, Lorg/koin/core/scope/Scope;->loadDefinitions(Lorg/koin/core/scope/ScopeDefinition;)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method private final declareScope(Lorg/koin/core/scope/ScopeDefinition;)V
    .locals 0

    .line 75
    invoke-direct {p0, p1}, Lorg/koin/core/registry/ScopeRegistry;->declareDefinitions(Lorg/koin/core/scope/ScopeDefinition;)V

    .line 76
    invoke-direct {p0, p1}, Lorg/koin/core/registry/ScopeRegistry;->declareInstances(Lorg/koin/core/scope/ScopeDefinition;)V

    return-void
.end method

.method private final declareScopes(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/koin/core/scope/ScopeDefinition;",
            ">;)V"
        }
    .end annotation

    .line 69
    check-cast p1, Ljava/lang/Iterable;

    .line 189
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/koin/core/scope/ScopeDefinition;

    .line 70
    invoke-direct {p0, v0}, Lorg/koin/core/registry/ScopeRegistry;->declareScope(Lorg/koin/core/scope/ScopeDefinition;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private final loadModule(Lorg/koin/core/module/Module;)V
    .locals 1

    .line 64
    invoke-virtual {p1}, Lorg/koin/core/module/Module;->getRootScope()Lorg/koin/core/scope/ScopeDefinition;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/koin/core/registry/ScopeRegistry;->declareScope(Lorg/koin/core/scope/ScopeDefinition;)V

    .line 65
    invoke-virtual {p1}, Lorg/koin/core/module/Module;->getOtherScopes()Ljava/util/ArrayList;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-direct {p0, p1}, Lorg/koin/core/registry/ScopeRegistry;->declareScopes(Ljava/util/List;)V

    return-void
.end method

.method private final mergeDefinitions(Lorg/koin/core/scope/ScopeDefinition;)V
    .locals 5

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
    invoke-virtual {p1}, Lorg/koin/core/scope/ScopeDefinition;->getDefinitions()Ljava/util/Set;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    .line 196
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/koin/core/definition/BeanDefinition;

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 95
    invoke-static {v0, v1, v4, v2, v3}, Lorg/koin/core/scope/ScopeDefinition;->save$default(Lorg/koin/core/scope/ScopeDefinition;Lorg/koin/core/definition/BeanDefinition;ZILjava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void

    .line 93
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Scope definition \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "\' not found in "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lorg/koin/core/registry/ScopeRegistry;->_scopeDefinitions:Ljava/util/HashMap;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method

.method private final unloadDefinitions(Lorg/koin/core/scope/ScopeDefinition;)V
    .locals 3

    .line 175
    invoke-direct {p0, p1}, Lorg/koin/core/registry/ScopeRegistry;->unloadInstances(Lorg/koin/core/scope/ScopeDefinition;)V

    .line 176
    iget-object v0, p0, Lorg/koin/core/registry/ScopeRegistry;->_scopeDefinitions:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    const-string v1, "_scopeDefinitions.values"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Iterable;

    .line 204
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lorg/koin/core/scope/ScopeDefinition;

    .line 176
    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 205
    :goto_0
    check-cast v1, Lorg/koin/core/scope/ScopeDefinition;

    if-eqz v1, :cond_2

    .line 176
    invoke-virtual {v1, p1}, Lorg/koin/core/scope/ScopeDefinition;->unloadDefinitions(Lorg/koin/core/scope/ScopeDefinition;)V

    :cond_2
    return-void
.end method

.method private final unloadInstances(Lorg/koin/core/scope/ScopeDefinition;)V
    .locals 4

    .line 180
    iget-object v0, p0, Lorg/koin/core/registry/ScopeRegistry;->_scopes:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    const-string v1, "_scopes.values"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Iterable;

    .line 206
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/Collection;

    .line 207
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lorg/koin/core/scope/Scope;

    .line 180
    invoke-virtual {v3}, Lorg/koin/core/scope/Scope;->get_scopeDefinition()Lorg/koin/core/scope/ScopeDefinition;

    move-result-object v3

    invoke-static {v3, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 208
    :cond_1
    check-cast v1, Ljava/util/List;

    check-cast v1, Ljava/lang/Iterable;

    .line 209
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/koin/core/scope/Scope;

    .line 180
    invoke-virtual {v1, p1}, Lorg/koin/core/scope/Scope;->dropInstances(Lorg/koin/core/scope/ScopeDefinition;)V

    goto :goto_1

    :cond_2
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

    const/4 v0, 0x0

    .line 152
    move-object v1, v0

    check-cast v1, Lorg/koin/core/scope/ScopeDefinition;

    iput-object v0, p0, Lorg/koin/core/registry/ScopeRegistry;->_rootScopeDefinition:Lorg/koin/core/scope/ScopeDefinition;

    .line 153
    move-object v1, v0

    check-cast v1, Lorg/koin/core/scope/Scope;

    iput-object v0, p0, Lorg/koin/core/registry/ScopeRegistry;->_rootScope:Lorg/koin/core/scope/Scope;

    return-void
.end method

.method public final createRootScope$koin_core()V
    .locals 3

    .line 107
    iget-object v0, p0, Lorg/koin/core/registry/ScopeRegistry;->_rootScope:Lorg/koin/core/scope/Scope;

    if-nez v0, :cond_0

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

    return-void
.end method

.method public final createScope(Ljava/lang/String;Lorg/koin/core/qualifier/Qualifier;Ljava/lang/Object;)Lorg/koin/core/scope/Scope;
    .locals 2

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

    if-eqz v0, :cond_0

    .line 124
    invoke-direct {p0, p1, v0, p3}, Lorg/koin/core/registry/ScopeRegistry;->createScope(Ljava/lang/String;Lorg/koin/core/scope/ScopeDefinition;Ljava/lang/Object;)Lorg/koin/core/scope/Scope;

    move-result-object p2

    .line 125
    iget-object p3, p0, Lorg/koin/core/registry/ScopeRegistry;->_scopes:Ljava/util/HashMap;

    check-cast p3, Ljava/util/Map;

    invoke-interface {p3, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p2

    .line 128
    :cond_0
    new-instance p1, Lorg/koin/core/error/NoScopeDefFoundException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "No Scope Definition found for qualifer \'"

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p2}, Lorg/koin/core/qualifier/Qualifier;->getValue()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const/16 p3, 0x27

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/koin/core/error/NoScopeDefFoundException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    .line 119
    :cond_1
    new-instance p2, Lorg/koin/core/error/ScopeAlreadyCreatedException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "Scope with id \'"

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p3, "\' is already created"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/koin/core/error/ScopeAlreadyCreatedException;-><init>(Ljava/lang/String;)V

    check-cast p2, Ljava/lang/Throwable;

    throw p2
.end method

.method public final deleteScope(Ljava/lang/String;)V
    .locals 1

    const-string v0, "scopeId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 141
    iget-object v0, p0, Lorg/koin/core/registry/ScopeRegistry;->_scopes:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final deleteScope(Lorg/koin/core/scope/Scope;)V
    .locals 1

    const-string v0, "scope"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 145
    iget-object v0, p0, Lorg/koin/core/registry/ScopeRegistry;->_scopes:Ljava/util/HashMap;

    invoke-virtual {p1}, Lorg/koin/core/scope/Scope;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

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

    const-string v0, "scopeId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 114
    invoke-virtual {p0}, Lorg/koin/core/registry/ScopeRegistry;->getScopes()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/koin/core/scope/Scope;

    return-object p1
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
    .locals 4
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

    .line 187
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/koin/core/module/Module;

    .line 54
    invoke-virtual {v0}, Lorg/koin/core/module/Module;->isLoaded()Z

    move-result v1

    if-nez v1, :cond_0

    .line 55
    invoke-direct {p0, v0}, Lorg/koin/core/registry/ScopeRegistry;->loadModule(Lorg/koin/core/module/Module;)V

    const/4 v1, 0x1

    .line 56
    invoke-virtual {v0, v1}, Lorg/koin/core/module/Module;->setLoaded$koin_core(Z)V

    goto :goto_0

    .line 58
    :cond_0
    iget-object v1, p0, Lorg/koin/core/registry/ScopeRegistry;->_koin:Lorg/koin/core/Koin;

    invoke-virtual {v1}, Lorg/koin/core/Koin;->get_logger()Lorg/koin/core/logger/Logger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "module \'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\' already loaded!"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/koin/core/logger/Logger;->error(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final set_rootScope(Lorg/koin/core/scope/Scope;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lorg/koin/core/registry/ScopeRegistry;->_rootScope:Lorg/koin/core/scope/Scope;

    return-void
.end method

.method public final set_rootScopeDefinition(Lorg/koin/core/scope/ScopeDefinition;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lorg/koin/core/registry/ScopeRegistry;->_rootScopeDefinition:Lorg/koin/core/scope/ScopeDefinition;

    return-void
.end method

.method public final size()I
    .locals 3

    .line 50
    invoke-virtual {p0}, Lorg/koin/core/registry/ScopeRegistry;->getScopeDefinitions()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 183
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v1, Ljava/util/Collection;

    .line 184
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 185
    check-cast v2, Lorg/koin/core/scope/ScopeDefinition;

    .line 50
    invoke-virtual {v2}, Lorg/koin/core/scope/ScopeDefinition;->size$koin_core()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 186
    :cond_0
    check-cast v1, Ljava/util/List;

    check-cast v1, Ljava/lang/Iterable;

    .line 50
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->sumOfInt(Ljava/lang/Iterable;)I

    move-result v0

    return v0
.end method

.method public final unloadModules(Ljava/lang/Iterable;)V
    .locals 1
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

    .line 200
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/koin/core/module/Module;

    .line 162
    invoke-virtual {p0, v0}, Lorg/koin/core/registry/ScopeRegistry;->unloadModules(Lorg/koin/core/module/Module;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final unloadModules(Lorg/koin/core/module/Module;)V
    .locals 2

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
    check-cast v0, Ljava/lang/Iterable;

    .line 202
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/koin/core/scope/ScopeDefinition;

    .line 169
    invoke-direct {p0, v1}, Lorg/koin/core/registry/ScopeRegistry;->unloadDefinitions(Lorg/koin/core/scope/ScopeDefinition;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 171
    invoke-virtual {p1, v0}, Lorg/koin/core/module/Module;->setLoaded$koin_core(Z)V

    return-void
.end method
