.class public final Lorg/koin/androidx/viewmodel/dsl/ScopeSetExtKt;
.super Ljava/lang/Object;
.source "ScopeSetExt.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nScopeSetExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ScopeSetExt.kt\norg/koin/androidx/viewmodel/dsl/ScopeSetExtKt\n+ 2 ScopeDSL.kt\norg/koin/dsl/ScopeDSL\n+ 3 Definitions.kt\norg/koin/core/definition/Definitions\n*L\n1#1,41:1\n38#1:60\n39#1,2:79\n57#2,5:42\n57#2,5:61\n81#3:47\n62#3,10:48\n82#3,2:58\n81#3:66\n62#3,10:67\n82#3,2:77\n*E\n*S KotlinDebug\n*F\n+ 1 ScopeSetExt.kt\norg/koin/androidx/viewmodel/dsl/ScopeSetExtKt\n*L\n38#1,5:42\n38#1:47\n38#1,10:48\n38#1,2:58\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00004\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u001a`\u0010\u0000\u001a\u0008\u0012\u0004\u0012\u0002H\u00020\u0001\"\n\u0008\u0000\u0010\u0002\u0018\u0001*\u00020\u0003*\u00020\u00042\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00082)\u0008\u0008\u0010\t\u001a#\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u000c\u0012\u0004\u0012\u0002H\u00020\nj\u0008\u0012\u0004\u0012\u0002H\u0002`\r\u00a2\u0006\u0002\u0008\u000eH\u0086\u0008\u00a8\u0006\u000f"
    }
    d2 = {
        "viewModel",
        "Lorg/koin/core/definition/BeanDefinition;",
        "T",
        "Landroidx/lifecycle/ViewModel;",
        "Lorg/koin/dsl/ScopeDSL;",
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
        "koin-androidx-viewmodel_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# direct methods
.method public static final synthetic viewModel(Lorg/koin/dsl/ScopeDSL;Lorg/koin/core/qualifier/Qualifier;ZLkotlin/jvm/functions/Function2;)Lorg/koin/core/definition/BeanDefinition;
    .locals 27
    .param p0, "$this$viewModel"    # Lorg/koin/dsl/ScopeDSL;
    .param p1, "qualifier"    # Lorg/koin/core/qualifier/Qualifier;
    .param p2, "override"    # Z
    .param p3, "definition"    # Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroidx/lifecycle/ViewModel;",
            ">(",
            "Lorg/koin/dsl/ScopeDSL;",
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

    .local v0, "$i$f$viewModel":I
    const-string v1, "$this$viewModel"

    move-object/from16 v2, p0

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "definition"

    move-object/from16 v15, p3

    invoke-static {v15, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    move-object/from16 v1, p0

    .local v1, "this_$iv":Lorg/koin/dsl/ScopeDSL;
    const/16 v16, 0x0

    .line 42
    .local v16, "$i$f$factory":I
    sget-object v3, Lorg/koin/core/definition/Definitions;->INSTANCE:Lorg/koin/core/definition/Definitions;

    .line 43
    nop

    .line 44
    nop

    .line 45
    invoke-virtual {v1}, Lorg/koin/dsl/ScopeDSL;->getScopeDefinition()Lorg/koin/core/scope/ScopeDefinition;

    move-result-object v4

    .line 46
    new-instance v5, Lorg/koin/core/definition/Options;

    const/4 v14, 0x0

    move/from16 v13, p2

    invoke-direct {v5, v14, v13}, Lorg/koin/core/definition/Options;-><init>(ZZ)V

    move-object v10, v5

    .local v10, "options$iv$iv":Lorg/koin/core/definition/Options;
    move-object/from16 v17, v3

    .local v17, "this_$iv$iv":Lorg/koin/core/definition/Definitions;
    move-object v12, v4

    .line 42
    .local v12, "scopeDefinition$iv$iv":Lorg/koin/core/scope/ScopeDefinition;
    const/16 v18, 0x0

    .line 47
    .local v18, "$i$f$saveFactory":I
    move-object/from16 v19, v17

    .line 48
    .local v19, "this_$iv$iv$iv":Lorg/koin/core/definition/Definitions;
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v20

    .local v20, "secondaryTypes$iv$iv$iv":Ljava/util/List;
    const/16 v21, 0x0

    .line 50
    .local v21, "$i$f$createFactory":I
    new-instance v22, Lorg/koin/core/definition/BeanDefinition;

    .line 51
    nop

    .line 52
    const/4 v3, 0x4

    const-string v4, "T"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class v3, Ljava/lang/Object;

    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v5

    .line 53
    nop

    .line 54
    nop

    .line 55
    sget-object v8, Lorg/koin/core/definition/Kind;->Factory:Lorg/koin/core/definition/Kind;

    .line 56
    nop

    .line 57
    nop

    .line 50
    const/4 v11, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x180

    const/16 v25, 0x0

    move-object/from16 v3, v22

    move-object v4, v12

    move-object/from16 v6, p1

    move-object/from16 v7, p3

    move-object/from16 v9, v20

    move-object/from16 v26, v12

    .end local v12    # "scopeDefinition$iv$iv":Lorg/koin/core/scope/ScopeDefinition;
    .local v26, "scopeDefinition$iv$iv":Lorg/koin/core/scope/ScopeDefinition;
    move-object/from16 v12, v23

    move/from16 v13, v24

    move/from16 v23, v0

    move v0, v14

    .end local v0    # "$i$f$viewModel":I
    .local v23, "$i$f$viewModel":I
    move-object/from16 v14, v25

    invoke-direct/range {v3 .. v14}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/scope/ScopeDefinition;Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;Ljava/util/List;Lorg/koin/core/definition/Options;Lorg/koin/core/definition/Properties;Lorg/koin/core/definition/Callbacks;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 47
    .end local v19    # "this_$iv$iv$iv":Lorg/koin/core/definition/Definitions;
    .end local v20    # "secondaryTypes$iv$iv$iv":Ljava/util/List;
    .end local v21    # "$i$f$createFactory":I
    nop

    .line 58
    .local v3, "beanDefinition$iv$iv":Lorg/koin/core/definition/BeanDefinition;
    const/4 v4, 0x2

    const/4 v5, 0x0

    move-object/from16 v6, v26

    .end local v26    # "scopeDefinition$iv$iv":Lorg/koin/core/scope/ScopeDefinition;
    .local v6, "scopeDefinition$iv$iv":Lorg/koin/core/scope/ScopeDefinition;
    invoke-static {v6, v3, v0, v4, v5}, Lorg/koin/core/scope/ScopeDefinition;->save$default(Lorg/koin/core/scope/ScopeDefinition;Lorg/koin/core/definition/BeanDefinition;ZILjava/lang/Object;)V

    .line 59
    nop

    .line 38
    .end local v1    # "this_$iv":Lorg/koin/dsl/ScopeDSL;
    .end local v3    # "beanDefinition$iv$iv":Lorg/koin/core/definition/BeanDefinition;
    .end local v6    # "scopeDefinition$iv$iv":Lorg/koin/core/scope/ScopeDefinition;
    .end local v10    # "options$iv$iv":Lorg/koin/core/definition/Options;
    .end local v16    # "$i$f$factory":I
    .end local v17    # "this_$iv$iv":Lorg/koin/core/definition/Definitions;
    .end local v18    # "$i$f$saveFactory":I
    move-object v0, v3

    .line 39
    .local v0, "beanDefinition":Lorg/koin/core/definition/BeanDefinition;
    invoke-static {v0}, Lorg/koin/androidx/viewmodel/dsl/ModuleExtKt;->setIsViewModel(Lorg/koin/core/definition/BeanDefinition;)V

    .line 40
    return-object v0
.end method

.method public static synthetic viewModel$default(Lorg/koin/dsl/ScopeDSL;Lorg/koin/core/qualifier/Qualifier;ZLkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lorg/koin/core/definition/BeanDefinition;
    .locals 29
    .param p0, "$this$viewModel"    # Lorg/koin/dsl/ScopeDSL;
    .param p1, "qualifier"    # Lorg/koin/core/qualifier/Qualifier;
    .param p2, "override"    # Z
    .param p3, "definition"    # Lkotlin/jvm/functions/Function2;

    and-int/lit8 v0, p4, 0x1

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 34
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

    .line 34
    .end local p1    # "qualifier":Lorg/koin/core/qualifier/Qualifier;
    .restart local v0    # "qualifier":Lorg/koin/core/qualifier/Qualifier;
    :goto_0
    const/4 v14, 0x2

    and-int/lit8 v2, p4, 0x2

    if-eqz v2, :cond_1

    .line 35
    const/4 v2, 0x0

    move v15, v2

    .end local p2    # "override":Z
    .local v2, "override":Z
    goto :goto_1

    .line 34
    .end local v2    # "override":Z
    .restart local p2    # "override":Z
    :cond_1
    move/from16 v15, p2

    .line 35
    .end local p2    # "override":Z
    .local v15, "override":Z
    :goto_1
    const/16 v16, 0x0

    .local v16, "$i$f$viewModel":I
    const-string v2, "$this$viewModel"

    move-object/from16 v13, p0

    invoke-static {v13, v2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "definition"

    move-object/from16 v12, p3

    invoke-static {v12, v2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    move-object/from16 v17, p0

    .local v17, "this_$iv":Lorg/koin/dsl/ScopeDSL;
    const/16 v18, 0x0

    .line 61
    .local v18, "$i$f$factory":I
    sget-object v2, Lorg/koin/core/definition/Definitions;->INSTANCE:Lorg/koin/core/definition/Definitions;

    .line 62
    nop

    .line 63
    nop

    .line 64
    invoke-virtual/range {v17 .. v17}, Lorg/koin/dsl/ScopeDSL;->getScopeDefinition()Lorg/koin/core/scope/ScopeDefinition;

    move-result-object v3

    .line 65
    new-instance v4, Lorg/koin/core/definition/Options;

    const/4 v11, 0x0

    invoke-direct {v4, v11, v15}, Lorg/koin/core/definition/Options;-><init>(ZZ)V

    move-object v9, v4

    .local v9, "options$iv$iv":Lorg/koin/core/definition/Options;
    move-object/from16 v19, v2

    .local v19, "this_$iv$iv":Lorg/koin/core/definition/Definitions;
    move-object v10, v3

    .line 61
    .local v10, "scopeDefinition$iv$iv":Lorg/koin/core/scope/ScopeDefinition;
    const/16 v20, 0x0

    .line 66
    .local v20, "$i$f$saveFactory":I
    move-object/from16 v21, v19

    .line 67
    .local v21, "this_$iv$iv$iv":Lorg/koin/core/definition/Definitions;
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v22

    .local v22, "secondaryTypes$iv$iv$iv":Ljava/util/List;
    const/16 v23, 0x0

    .line 69
    .local v23, "$i$f$createFactory":I
    new-instance v24, Lorg/koin/core/definition/BeanDefinition;

    .line 70
    nop

    .line 71
    const/4 v2, 0x4

    const-string v3, "T"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class v2, Ljava/lang/Object;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    .line 72
    nop

    .line 73
    nop

    .line 74
    sget-object v7, Lorg/koin/core/definition/Kind;->Factory:Lorg/koin/core/definition/Kind;

    .line 75
    nop

    .line 76
    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x180

    const/16 v28, 0x0

    .line 69
    move-object/from16 v2, v24

    move-object v3, v10

    move-object v5, v0

    move-object/from16 v6, p3

    move-object/from16 v8, v22

    move-object v1, v10

    .end local v10    # "scopeDefinition$iv$iv":Lorg/koin/core/scope/ScopeDefinition;
    .local v1, "scopeDefinition$iv$iv":Lorg/koin/core/scope/ScopeDefinition;
    move-object/from16 v10, v25

    move v14, v11

    move-object/from16 v11, v26

    move/from16 v12, v27

    move-object/from16 v13, v28

    invoke-direct/range {v2 .. v13}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/scope/ScopeDefinition;Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;Ljava/util/List;Lorg/koin/core/definition/Options;Lorg/koin/core/definition/Properties;Lorg/koin/core/definition/Callbacks;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 66
    .end local v21    # "this_$iv$iv$iv":Lorg/koin/core/definition/Definitions;
    .end local v22    # "secondaryTypes$iv$iv$iv":Ljava/util/List;
    .end local v23    # "$i$f$createFactory":I
    nop

    .line 77
    .local v2, "beanDefinition$iv$iv":Lorg/koin/core/definition/BeanDefinition;
    const/4 v3, 0x0

    const/4 v4, 0x2

    invoke-static {v1, v2, v14, v4, v3}, Lorg/koin/core/scope/ScopeDefinition;->save$default(Lorg/koin/core/scope/ScopeDefinition;Lorg/koin/core/definition/BeanDefinition;ZILjava/lang/Object;)V

    .line 78
    nop

    .line 60
    .end local v1    # "scopeDefinition$iv$iv":Lorg/koin/core/scope/ScopeDefinition;
    .end local v2    # "beanDefinition$iv$iv":Lorg/koin/core/definition/BeanDefinition;
    .end local v9    # "options$iv$iv":Lorg/koin/core/definition/Options;
    .end local v17    # "this_$iv":Lorg/koin/dsl/ScopeDSL;
    .end local v18    # "$i$f$factory":I
    .end local v19    # "this_$iv$iv":Lorg/koin/core/definition/Definitions;
    .end local v20    # "$i$f$saveFactory":I
    move-object v1, v2

    .line 79
    .local v1, "beanDefinition":Lorg/koin/core/definition/BeanDefinition;
    invoke-static {v1}, Lorg/koin/androidx/viewmodel/dsl/ModuleExtKt;->setIsViewModel(Lorg/koin/core/definition/BeanDefinition;)V

    .line 80
    return-object v1
.end method
