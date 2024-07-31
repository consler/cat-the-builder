.class public final Lorg/koin/dsl/ScopeDSL;
.super Ljava/lang/Object;
.source "ScopeDSL.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nScopeDSL.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ScopeDSL.kt\norg/koin/dsl/ScopeDSL\n+ 2 Definitions.kt\norg/koin/core/definition/Definitions\n*L\n1#1,64:1\n36#1,2:65\n44#1,5:89\n57#1,5:129\n15#2,20:67\n16#2,2:87\n15#2,20:94\n16#2,2:114\n81#2:116\n62#2,10:117\n82#2,2:127\n81#2:134\n62#2,10:135\n82#2,2:145\n*E\n*S KotlinDebug\n*F\n+ 1 ScopeDSL.kt\norg/koin/dsl/ScopeDSL\n*L\n44#1,20:67\n44#1,2:87\n57#1:116\n57#1,10:117\n57#1,2:127\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004JX\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u0002H\t0\u0008\"\u0006\u0008\u0000\u0010\t\u0018\u00012\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b2\u0008\u0008\u0002\u0010\u000c\u001a\u00020\r2)\u0008\u0008\u0010\u000e\u001a#\u0012\u0004\u0012\u00020\u0010\u0012\u0004\u0012\u00020\u0011\u0012\u0004\u0012\u0002H\t0\u000fj\u0008\u0012\u0004\u0012\u0002H\t`\u0012\u00a2\u0006\u0002\u0008\u0013H\u0086\u0008JX\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u0002H\t0\u0008\"\u0006\u0008\u0000\u0010\t\u0018\u00012\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b2\u0008\u0008\u0002\u0010\u000c\u001a\u00020\r2)\u0008\u0008\u0010\u000e\u001a#\u0012\u0004\u0012\u00020\u0010\u0012\u0004\u0012\u00020\u0011\u0012\u0004\u0012\u0002H\t0\u000fj\u0008\u0012\u0004\u0012\u0002H\t`\u0012\u00a2\u0006\u0002\u0008\u0013H\u0086\u0008JX\u0010\u0015\u001a\u0008\u0012\u0004\u0012\u0002H\t0\u0008\"\u0006\u0008\u0000\u0010\t\u0018\u00012\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b2\u0008\u0008\u0002\u0010\u000c\u001a\u00020\r2)\u0008\u0008\u0010\u000e\u001a#\u0012\u0004\u0012\u00020\u0010\u0012\u0004\u0012\u00020\u0011\u0012\u0004\u0012\u0002H\t0\u000fj\u0008\u0012\u0004\u0012\u0002H\t`\u0012\u00a2\u0006\u0002\u0008\u0013H\u0087\u0008R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u0016"
    }
    d2 = {
        "Lorg/koin/dsl/ScopeDSL;",
        "",
        "scopeDefinition",
        "Lorg/koin/core/scope/ScopeDefinition;",
        "(Lorg/koin/core/scope/ScopeDefinition;)V",
        "getScopeDefinition",
        "()Lorg/koin/core/scope/ScopeDefinition;",
        "factory",
        "Lorg/koin/core/definition/BeanDefinition;",
        "T",
        "qualifier",
        "Lorg/koin/core/qualifier/Qualifier;",
        "override",
        "",
        "definition",
        "Lkotlin/Function2;",
        "Lorg/koin/core/scope/Scope;",
        "Lorg/koin/core/parameter/DefinitionParameters;",
        "Lorg/koin/core/definition/Definition;",
        "Lkotlin/ExtensionFunctionType;",
        "scoped",
        "single",
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
.field private final scopeDefinition:Lorg/koin/core/scope/ScopeDefinition;


# direct methods
.method public constructor <init>(Lorg/koin/core/scope/ScopeDefinition;)V
    .locals 1
    .param p1, "scopeDefinition"    # Lorg/koin/core/scope/ScopeDefinition;

    const-string v0, "scopeDefinition"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/koin/dsl/ScopeDSL;->scopeDefinition:Lorg/koin/core/scope/ScopeDefinition;

    return-void
.end method

.method public static synthetic factory$default(Lorg/koin/dsl/ScopeDSL;Lorg/koin/core/qualifier/Qualifier;ZLkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lorg/koin/core/definition/BeanDefinition;
    .locals 26
    .param p0, "this"    # Lorg/koin/dsl/ScopeDSL;
    .param p1, "qualifier"    # Lorg/koin/core/qualifier/Qualifier;
    .param p2, "override"    # Z
    .param p3, "definition"    # Lkotlin/jvm/functions/Function2;

    and-int/lit8 v0, p4, 0x1

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 53
    move-object v0, v1

    check-cast v0, Lorg/koin/core/qualifier/Qualifier;

    .end local p1    # "qualifier":Lorg/koin/core/qualifier/Qualifier;
    .local v0, "qualifier":Lorg/koin/core/qualifier/Qualifier;
    goto :goto_0

    .line 0
    .end local v0    # "qualifier":Lorg/koin/core/qualifier/Qualifier;
    .restart local p1    # "qualifier":Lorg/koin/core/qualifier/Qualifier;
    :cond_0
    move-object/from16 v0, p1

    .line 53
    .end local p1    # "qualifier":Lorg/koin/core/qualifier/Qualifier;
    .restart local v0    # "qualifier":Lorg/koin/core/qualifier/Qualifier;
    :goto_0
    const/4 v14, 0x2

    and-int/lit8 v2, p4, 0x2

    if-eqz v2, :cond_1

    .line 54
    const/4 v2, 0x0

    move v15, v2

    .end local p2    # "override":Z
    .local v2, "override":Z
    goto :goto_1

    .line 53
    .end local v2    # "override":Z
    .restart local p2    # "override":Z
    :cond_1
    move/from16 v15, p2

    .line 54
    .end local p2    # "override":Z
    .local v15, "override":Z
    :goto_1
    const/16 v16, 0x0

    .local v16, "$i$f$factory":I
    const-string v2, "definition"

    move-object/from16 v13, p3

    invoke-static {v13, v2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 129
    sget-object v2, Lorg/koin/core/definition/Definitions;->INSTANCE:Lorg/koin/core/definition/Definitions;

    .line 130
    nop

    .line 131
    nop

    .line 132
    invoke-virtual/range {p0 .. p0}, Lorg/koin/dsl/ScopeDSL;->getScopeDefinition()Lorg/koin/core/scope/ScopeDefinition;

    move-result-object v3

    .line 133
    new-instance v4, Lorg/koin/core/definition/Options;

    const/4 v12, 0x0

    invoke-direct {v4, v12, v15}, Lorg/koin/core/definition/Options;-><init>(ZZ)V

    move-object v9, v4

    .local v9, "options$iv":Lorg/koin/core/definition/Options;
    move-object v11, v3

    .local v11, "scopeDefinition$iv":Lorg/koin/core/scope/ScopeDefinition;
    move-object/from16 v17, v2

    .line 129
    .local v17, "this_$iv":Lorg/koin/core/definition/Definitions;
    const/16 v18, 0x0

    .line 134
    .local v18, "$i$f$saveFactory":I
    move-object/from16 v19, v17

    .line 135
    .local v19, "this_$iv$iv":Lorg/koin/core/definition/Definitions;
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v20

    .local v20, "secondaryTypes$iv$iv":Ljava/util/List;
    const/16 v21, 0x0

    .line 137
    .local v21, "$i$f$createFactory":I
    new-instance v22, Lorg/koin/core/definition/BeanDefinition;

    .line 138
    nop

    .line 139
    const/4 v2, 0x4

    const-string v3, "T"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class v2, Ljava/lang/Object;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    .line 140
    nop

    .line 141
    nop

    .line 142
    sget-object v7, Lorg/koin/core/definition/Kind;->Factory:Lorg/koin/core/definition/Kind;

    .line 143
    nop

    .line 144
    const/4 v10, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x180

    const/16 v25, 0x0

    .line 137
    move-object/from16 v2, v22

    move-object v3, v11

    move-object v5, v0

    move-object/from16 v6, p3

    move-object/from16 v8, v20

    move-object v1, v11

    .end local v11    # "scopeDefinition$iv":Lorg/koin/core/scope/ScopeDefinition;
    .local v1, "scopeDefinition$iv":Lorg/koin/core/scope/ScopeDefinition;
    move-object/from16 v11, v23

    move v14, v12

    move/from16 v12, v24

    move-object/from16 v13, v25

    invoke-direct/range {v2 .. v13}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/scope/ScopeDefinition;Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;Ljava/util/List;Lorg/koin/core/definition/Options;Lorg/koin/core/definition/Properties;Lorg/koin/core/definition/Callbacks;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 134
    .end local v19    # "this_$iv$iv":Lorg/koin/core/definition/Definitions;
    .end local v20    # "secondaryTypes$iv$iv":Ljava/util/List;
    .end local v21    # "$i$f$createFactory":I
    nop

    .line 145
    .local v2, "beanDefinition$iv":Lorg/koin/core/definition/BeanDefinition;
    const/4 v3, 0x0

    const/4 v4, 0x2

    invoke-static {v1, v2, v14, v4, v3}, Lorg/koin/core/scope/ScopeDefinition;->save$default(Lorg/koin/core/scope/ScopeDefinition;Lorg/koin/core/definition/BeanDefinition;ZILjava/lang/Object;)V

    .line 146
    nop

    .end local v1    # "scopeDefinition$iv":Lorg/koin/core/scope/ScopeDefinition;
    .end local v2    # "beanDefinition$iv":Lorg/koin/core/definition/BeanDefinition;
    .end local v9    # "options$iv":Lorg/koin/core/definition/Options;
    .end local v17    # "this_$iv":Lorg/koin/core/definition/Definitions;
    .end local v18    # "$i$f$saveFactory":I
    return-object v2
.end method

.method public static synthetic scoped$default(Lorg/koin/dsl/ScopeDSL;Lorg/koin/core/qualifier/Qualifier;ZLkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lorg/koin/core/definition/BeanDefinition;
    .locals 26
    .param p0, "this"    # Lorg/koin/dsl/ScopeDSL;
    .param p1, "qualifier"    # Lorg/koin/core/qualifier/Qualifier;
    .param p2, "override"    # Z
    .param p3, "definition"    # Lkotlin/jvm/functions/Function2;

    and-int/lit8 v0, p4, 0x1

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 40
    move-object v0, v1

    check-cast v0, Lorg/koin/core/qualifier/Qualifier;

    .end local p1    # "qualifier":Lorg/koin/core/qualifier/Qualifier;
    .local v0, "qualifier":Lorg/koin/core/qualifier/Qualifier;
    goto :goto_0

    .line 0
    .end local v0    # "qualifier":Lorg/koin/core/qualifier/Qualifier;
    .restart local p1    # "qualifier":Lorg/koin/core/qualifier/Qualifier;
    :cond_0
    move-object/from16 v0, p1

    .line 40
    .end local p1    # "qualifier":Lorg/koin/core/qualifier/Qualifier;
    .restart local v0    # "qualifier":Lorg/koin/core/qualifier/Qualifier;
    :goto_0
    const/4 v14, 0x2

    and-int/lit8 v2, p4, 0x2

    if-eqz v2, :cond_1

    .line 41
    const/4 v2, 0x0

    move v15, v2

    .end local p2    # "override":Z
    .local v2, "override":Z
    goto :goto_1

    .line 40
    .end local v2    # "override":Z
    .restart local p2    # "override":Z
    :cond_1
    move/from16 v15, p2

    .line 41
    .end local p2    # "override":Z
    .local v15, "override":Z
    :goto_1
    const/16 v16, 0x0

    .local v16, "$i$f$scoped":I
    const-string v2, "definition"

    move-object/from16 v13, p3

    invoke-static {v13, v2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 89
    sget-object v2, Lorg/koin/core/definition/Definitions;->INSTANCE:Lorg/koin/core/definition/Definitions;

    .line 90
    nop

    .line 91
    nop

    .line 92
    invoke-virtual/range {p0 .. p0}, Lorg/koin/dsl/ScopeDSL;->getScopeDefinition()Lorg/koin/core/scope/ScopeDefinition;

    move-result-object v3

    .line 93
    new-instance v4, Lorg/koin/core/definition/Options;

    const/4 v12, 0x0

    invoke-direct {v4, v12, v15}, Lorg/koin/core/definition/Options;-><init>(ZZ)V

    move-object v9, v4

    .local v9, "options$iv":Lorg/koin/core/definition/Options;
    move-object v11, v3

    .local v11, "scopeDefinition$iv":Lorg/koin/core/scope/ScopeDefinition;
    move-object/from16 v17, v2

    .line 89
    .local v17, "this_$iv":Lorg/koin/core/definition/Definitions;
    const/16 v18, 0x0

    .line 94
    .local v18, "$i$f$saveSingle":I
    move-object/from16 v19, v17

    .line 104
    .local v19, "this_$iv$iv":Lorg/koin/core/definition/Definitions;
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v20

    .local v20, "secondaryTypes$iv$iv":Ljava/util/List;
    const/16 v21, 0x0

    .line 106
    .local v21, "$i$f$createSingle":I
    new-instance v22, Lorg/koin/core/definition/BeanDefinition;

    .line 107
    nop

    .line 108
    const/4 v2, 0x4

    const-string v3, "T"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class v2, Ljava/lang/Object;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    .line 109
    nop

    .line 110
    nop

    .line 111
    sget-object v7, Lorg/koin/core/definition/Kind;->Single:Lorg/koin/core/definition/Kind;

    .line 112
    nop

    .line 113
    const/4 v10, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x180

    const/16 v25, 0x0

    .line 106
    move-object/from16 v2, v22

    move-object v3, v11

    move-object v5, v0

    move-object/from16 v6, p3

    move-object/from16 v8, v20

    move-object v1, v11

    .end local v11    # "scopeDefinition$iv":Lorg/koin/core/scope/ScopeDefinition;
    .local v1, "scopeDefinition$iv":Lorg/koin/core/scope/ScopeDefinition;
    move-object/from16 v11, v23

    move v14, v12

    move/from16 v12, v24

    move-object/from16 v13, v25

    invoke-direct/range {v2 .. v13}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/scope/ScopeDefinition;Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;Ljava/util/List;Lorg/koin/core/definition/Options;Lorg/koin/core/definition/Properties;Lorg/koin/core/definition/Callbacks;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 94
    .end local v19    # "this_$iv$iv":Lorg/koin/core/definition/Definitions;
    .end local v20    # "secondaryTypes$iv$iv":Ljava/util/List;
    .end local v21    # "$i$f$createSingle":I
    nop

    .line 114
    .local v2, "beanDefinition$iv":Lorg/koin/core/definition/BeanDefinition;
    const/4 v3, 0x0

    const/4 v4, 0x2

    invoke-static {v1, v2, v14, v4, v3}, Lorg/koin/core/scope/ScopeDefinition;->save$default(Lorg/koin/core/scope/ScopeDefinition;Lorg/koin/core/definition/BeanDefinition;ZILjava/lang/Object;)V

    .line 115
    nop

    .end local v1    # "scopeDefinition$iv":Lorg/koin/core/scope/ScopeDefinition;
    .end local v2    # "beanDefinition$iv":Lorg/koin/core/definition/BeanDefinition;
    .end local v9    # "options$iv":Lorg/koin/core/definition/Options;
    .end local v17    # "this_$iv":Lorg/koin/core/definition/Definitions;
    .end local v18    # "$i$f$saveSingle":I
    return-object v2
.end method

.method public static synthetic single$default(Lorg/koin/dsl/ScopeDSL;Lorg/koin/core/qualifier/Qualifier;ZLkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lorg/koin/core/definition/BeanDefinition;
    .locals 1
    .param p0, "this"    # Lorg/koin/dsl/ScopeDSL;
    .param p1, "qualifier"    # Lorg/koin/core/qualifier/Qualifier;
    .param p2, "override"    # Z
    .param p3, "definition"    # Lkotlin/jvm/functions/Function2;

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    .line 32
    const/4 p5, 0x0

    move-object p1, p5

    check-cast p1, Lorg/koin/core/qualifier/Qualifier;

    :cond_0
    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_1

    .line 33
    const/4 p2, 0x0

    :cond_1
    const/4 p4, 0x0

    .local p4, "$i$f$single":I
    const-string p5, "definition"

    invoke-static {p3, p5}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    new-instance p5, Ljava/lang/IllegalStateException;

    const-string v0, "Scoped definition is deprecated and has been replaced with Single scope definitions"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p5, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast p5, Ljava/lang/Throwable;

    throw p5
.end method


# virtual methods
.method public final synthetic factory(Lorg/koin/core/qualifier/Qualifier;ZLkotlin/jvm/functions/Function2;)Lorg/koin/core/definition/BeanDefinition;
    .locals 23
    .param p1, "qualifier"    # Lorg/koin/core/qualifier/Qualifier;
    .param p2, "override"    # Z
    .param p3, "definition"    # Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/koin/core/qualifier/Qualifier;",
            "Z",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lorg/koin/core/scope/Scope;",
            "-",
            "Lorg/koin/core/parameter/DefinitionParameters;",
            "+TT;>;)",
            "Lorg/koin/core/definition/BeanDefinition<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x0

    .local v0, "$i$f$factory":I
    const-string v1, "definition"

    move-object/from16 v14, p3

    invoke-static {v14, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    sget-object v1, Lorg/koin/core/definition/Definitions;->INSTANCE:Lorg/koin/core/definition/Definitions;

    .line 58
    nop

    .line 59
    nop

    .line 60
    invoke-virtual/range {p0 .. p0}, Lorg/koin/dsl/ScopeDSL;->getScopeDefinition()Lorg/koin/core/scope/ScopeDefinition;

    move-result-object v2

    .line 61
    new-instance v3, Lorg/koin/core/definition/Options;

    const/4 v15, 0x0

    move/from16 v13, p2

    invoke-direct {v3, v15, v13}, Lorg/koin/core/definition/Options;-><init>(ZZ)V

    move-object v9, v3

    .local v9, "options$iv":Lorg/koin/core/definition/Options;
    move-object v12, v2

    .line 57
    .local v1, "this_$iv":Lorg/koin/core/definition/Definitions;
    .local v12, "scopeDefinition$iv":Lorg/koin/core/scope/ScopeDefinition;
    const/16 v16, 0x0

    .line 116
    .local v16, "$i$f$saveFactory":I
    move-object/from16 v17, v1

    .line 117
    .local v17, "this_$iv$iv":Lorg/koin/core/definition/Definitions;
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v18

    .local v18, "secondaryTypes$iv$iv":Ljava/util/List;
    const/16 v19, 0x0

    .line 119
    .local v19, "$i$f$createFactory":I
    new-instance v20, Lorg/koin/core/definition/BeanDefinition;

    .line 120
    nop

    .line 121
    const/4 v2, 0x4

    const-string v3, "T"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class v2, Ljava/lang/Object;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    .line 122
    nop

    .line 123
    nop

    .line 124
    sget-object v7, Lorg/koin/core/definition/Kind;->Factory:Lorg/koin/core/definition/Kind;

    .line 125
    nop

    .line 126
    nop

    .line 119
    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v21, 0x180

    const/16 v22, 0x0

    move-object/from16 v2, v20

    move-object v3, v12

    move-object/from16 v5, p1

    move-object/from16 v6, p3

    move-object/from16 v8, v18

    move-object v15, v12

    .end local v12    # "scopeDefinition$iv":Lorg/koin/core/scope/ScopeDefinition;
    .local v15, "scopeDefinition$iv":Lorg/koin/core/scope/ScopeDefinition;
    move/from16 v12, v21

    move-object/from16 v13, v22

    invoke-direct/range {v2 .. v13}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/scope/ScopeDefinition;Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;Ljava/util/List;Lorg/koin/core/definition/Options;Lorg/koin/core/definition/Properties;Lorg/koin/core/definition/Callbacks;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 116
    .end local v17    # "this_$iv$iv":Lorg/koin/core/definition/Definitions;
    .end local v18    # "secondaryTypes$iv$iv":Ljava/util/List;
    .end local v19    # "$i$f$createFactory":I
    nop

    .line 127
    .local v2, "beanDefinition$iv":Lorg/koin/core/definition/BeanDefinition;
    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v15, v2, v5, v3, v4}, Lorg/koin/core/scope/ScopeDefinition;->save$default(Lorg/koin/core/scope/ScopeDefinition;Lorg/koin/core/definition/BeanDefinition;ZILjava/lang/Object;)V

    .line 128
    nop

    .end local v1    # "this_$iv":Lorg/koin/core/definition/Definitions;
    .end local v2    # "beanDefinition$iv":Lorg/koin/core/definition/BeanDefinition;
    .end local v9    # "options$iv":Lorg/koin/core/definition/Options;
    .end local v15    # "scopeDefinition$iv":Lorg/koin/core/scope/ScopeDefinition;
    .end local v16    # "$i$f$saveFactory":I
    return-object v2
.end method

.method public final getScopeDefinition()Lorg/koin/core/scope/ScopeDefinition;
    .locals 1

    .line 28
    iget-object v0, p0, Lorg/koin/dsl/ScopeDSL;->scopeDefinition:Lorg/koin/core/scope/ScopeDefinition;

    return-object v0
.end method

.method public final synthetic scoped(Lorg/koin/core/qualifier/Qualifier;ZLkotlin/jvm/functions/Function2;)Lorg/koin/core/definition/BeanDefinition;
    .locals 23
    .param p1, "qualifier"    # Lorg/koin/core/qualifier/Qualifier;
    .param p2, "override"    # Z
    .param p3, "definition"    # Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/koin/core/qualifier/Qualifier;",
            "Z",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lorg/koin/core/scope/Scope;",
            "-",
            "Lorg/koin/core/parameter/DefinitionParameters;",
            "+TT;>;)",
            "Lorg/koin/core/definition/BeanDefinition<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x0

    .local v0, "$i$f$scoped":I
    const-string v1, "definition"

    move-object/from16 v14, p3

    invoke-static {v14, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    sget-object v1, Lorg/koin/core/definition/Definitions;->INSTANCE:Lorg/koin/core/definition/Definitions;

    .line 45
    nop

    .line 46
    nop

    .line 47
    invoke-virtual/range {p0 .. p0}, Lorg/koin/dsl/ScopeDSL;->getScopeDefinition()Lorg/koin/core/scope/ScopeDefinition;

    move-result-object v2

    .line 48
    new-instance v3, Lorg/koin/core/definition/Options;

    const/4 v15, 0x0

    move/from16 v13, p2

    invoke-direct {v3, v15, v13}, Lorg/koin/core/definition/Options;-><init>(ZZ)V

    move-object v9, v3

    .local v9, "options$iv":Lorg/koin/core/definition/Options;
    move-object v12, v2

    .line 44
    .local v1, "this_$iv":Lorg/koin/core/definition/Definitions;
    .local v12, "scopeDefinition$iv":Lorg/koin/core/scope/ScopeDefinition;
    const/16 v16, 0x0

    .line 67
    .local v16, "$i$f$saveSingle":I
    move-object/from16 v17, v1

    .line 77
    .local v17, "this_$iv$iv":Lorg/koin/core/definition/Definitions;
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v18

    .local v18, "secondaryTypes$iv$iv":Ljava/util/List;
    const/16 v19, 0x0

    .line 79
    .local v19, "$i$f$createSingle":I
    new-instance v20, Lorg/koin/core/definition/BeanDefinition;

    .line 80
    nop

    .line 81
    const/4 v2, 0x4

    const-string v3, "T"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class v2, Ljava/lang/Object;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    .line 82
    nop

    .line 83
    nop

    .line 84
    sget-object v7, Lorg/koin/core/definition/Kind;->Single:Lorg/koin/core/definition/Kind;

    .line 85
    nop

    .line 86
    nop

    .line 79
    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v21, 0x180

    const/16 v22, 0x0

    move-object/from16 v2, v20

    move-object v3, v12

    move-object/from16 v5, p1

    move-object/from16 v6, p3

    move-object/from16 v8, v18

    move-object v15, v12

    .end local v12    # "scopeDefinition$iv":Lorg/koin/core/scope/ScopeDefinition;
    .local v15, "scopeDefinition$iv":Lorg/koin/core/scope/ScopeDefinition;
    move/from16 v12, v21

    move-object/from16 v13, v22

    invoke-direct/range {v2 .. v13}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/scope/ScopeDefinition;Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;Ljava/util/List;Lorg/koin/core/definition/Options;Lorg/koin/core/definition/Properties;Lorg/koin/core/definition/Callbacks;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 67
    .end local v17    # "this_$iv$iv":Lorg/koin/core/definition/Definitions;
    .end local v18    # "secondaryTypes$iv$iv":Ljava/util/List;
    .end local v19    # "$i$f$createSingle":I
    nop

    .line 87
    .local v2, "beanDefinition$iv":Lorg/koin/core/definition/BeanDefinition;
    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v15, v2, v5, v3, v4}, Lorg/koin/core/scope/ScopeDefinition;->save$default(Lorg/koin/core/scope/ScopeDefinition;Lorg/koin/core/definition/BeanDefinition;ZILjava/lang/Object;)V

    .line 88
    nop

    .end local v1    # "this_$iv":Lorg/koin/core/definition/Definitions;
    .end local v2    # "beanDefinition$iv":Lorg/koin/core/definition/BeanDefinition;
    .end local v9    # "options$iv":Lorg/koin/core/definition/Options;
    .end local v15    # "scopeDefinition$iv":Lorg/koin/core/scope/ScopeDefinition;
    .end local v16    # "$i$f$saveSingle":I
    return-object v2
.end method

.method public final synthetic single(Lorg/koin/core/qualifier/Qualifier;ZLkotlin/jvm/functions/Function2;)Lorg/koin/core/definition/BeanDefinition;
    .locals 3
    .param p1, "qualifier"    # Lorg/koin/core/qualifier/Qualifier;
    .param p2, "override"    # Z
    .param p3, "definition"    # Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/koin/core/qualifier/Qualifier;",
            "Z",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lorg/koin/core/scope/Scope;",
            "-",
            "Lorg/koin/core/parameter/DefinitionParameters;",
            "+TT;>;)",
            "Lorg/koin/core/definition/BeanDefinition<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->ERROR:Lkotlin/DeprecationLevel;
        message = "Can\'t use Single in a scope. Use Scoped instead"
    .end annotation

    const/4 v0, 0x0

    .local v0, "$i$f$single":I
    const-string v1, "definition"

    invoke-static {p3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Scoped definition is deprecated and has been replaced with Single scope definitions"

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    throw v1
.end method
