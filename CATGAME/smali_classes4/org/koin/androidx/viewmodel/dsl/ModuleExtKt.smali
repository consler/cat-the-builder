.class public final Lorg/koin/androidx/viewmodel/dsl/ModuleExtKt;
.super Ljava/lang/Object;
.source "ModuleExt.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nModuleExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ModuleExt.kt\norg/koin/androidx/viewmodel/dsl/ModuleExtKt\n+ 2 Module.kt\norg/koin/core/module/Module\n+ 3 Definitions.kt\norg/koin/core/definition/Definitions\n*L\n1#1,51:1\n38#1:66\n39#1,2:81\n96#2:52\n96#2:67\n81#3:53\n62#3,10:54\n82#3,2:64\n81#3:68\n62#3,10:69\n82#3,2:79\n*E\n*S KotlinDebug\n*F\n+ 1 ModuleExt.kt\norg/koin/androidx/viewmodel/dsl/ModuleExtKt\n*L\n38#1:52\n38#1:53\n38#1,10:54\n38#1,2:64\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000B\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u001a\u000e\u0010\u0002\u001a\u00020\u0003*\u0006\u0012\u0002\u0008\u00030\u0004\u001a\u000e\u0010\u0005\u001a\u00020\u0006*\u0006\u0012\u0002\u0008\u00030\u0004\u001a`\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u0002H\u00080\u0004\"\n\u0008\u0000\u0010\u0008\u0018\u0001*\u00020\t*\u00020\n2\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u000c2\u0008\u0008\u0002\u0010\r\u001a\u00020\u00032)\u0008\u0008\u0010\u000e\u001a#\u0012\u0004\u0012\u00020\u0010\u0012\u0004\u0012\u00020\u0011\u0012\u0004\u0012\u0002H\u00080\u000fj\u0008\u0012\u0004\u0012\u0002H\u0008`\u0012\u00a2\u0006\u0002\u0008\u0013H\u0086\u0008\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0014"
    }
    d2 = {
        "ATTRIBUTE_VIEW_MODEL",
        "",
        "isViewModel",
        "",
        "Lorg/koin/core/definition/BeanDefinition;",
        "setIsViewModel",
        "",
        "viewModel",
        "T",
        "Landroidx/lifecycle/ViewModel;",
        "Lorg/koin/core/module/Module;",
        "qualifier",
        "Lorg/koin/core/qualifier/Qualifier;",
        "override",
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


# static fields
.field public static final ATTRIBUTE_VIEW_MODEL:Ljava/lang/String; = "isViewModel"


# direct methods
.method public static final isViewModel(Lorg/koin/core/definition/BeanDefinition;)Z
    .locals 2
    .param p0, "$this$isViewModel"    # Lorg/koin/core/definition/BeanDefinition;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/koin/core/definition/BeanDefinition<",
            "*>;)Z"
        }
    .end annotation

    const-string v0, "$this$isViewModel"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    invoke-virtual {p0}, Lorg/koin/core/definition/BeanDefinition;->getProperties()Lorg/koin/core/definition/Properties;

    move-result-object v0

    const-string v1, "isViewModel"

    invoke-virtual {v0, v1}, Lorg/koin/core/definition/Properties;->getOrNull(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static final setIsViewModel(Lorg/koin/core/definition/BeanDefinition;)V
    .locals 3
    .param p0, "$this$setIsViewModel"    # Lorg/koin/core/definition/BeanDefinition;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/koin/core/definition/BeanDefinition<",
            "*>;)V"
        }
    .end annotation

    const-string v0, "$this$setIsViewModel"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    invoke-virtual {p0}, Lorg/koin/core/definition/BeanDefinition;->getProperties()Lorg/koin/core/definition/Properties;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "isViewModel"

    invoke-virtual {v0, v2, v1}, Lorg/koin/core/definition/Properties;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 47
    return-void
.end method

.method public static final synthetic viewModel(Lorg/koin/core/module/Module;Lorg/koin/core/qualifier/Qualifier;ZLkotlin/jvm/functions/Function2;)Lorg/koin/core/definition/BeanDefinition;
    .locals 27
    .param p0, "$this$viewModel"    # Lorg/koin/core/module/Module;
    .param p1, "qualifier"    # Lorg/koin/core/qualifier/Qualifier;
    .param p2, "override"    # Z
    .param p3, "definition"    # Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroidx/lifecycle/ViewModel;",
            ">(",
            "Lorg/koin/core/module/Module;",
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

    .local v1, "this_$iv":Lorg/koin/core/module/Module;
    const/16 v16, 0x0

    .line 52
    .local v16, "$i$f$factory":I
    sget-object v17, Lorg/koin/core/definition/Definitions;->INSTANCE:Lorg/koin/core/definition/Definitions;

    .local v17, "this_$iv$iv":Lorg/koin/core/definition/Definitions;
    invoke-virtual {v1}, Lorg/koin/core/module/Module;->getRootScope()Lorg/koin/core/scope/ScopeDefinition;

    move-result-object v14

    .local v14, "scopeDefinition$iv$iv":Lorg/koin/core/scope/ScopeDefinition;
    const/4 v13, 0x0

    const/4 v12, 0x2

    const/4 v11, 0x0

    move/from16 v9, p2

    invoke-static {v1, v9, v13, v12, v11}, Lorg/koin/core/module/Module;->makeOptions$default(Lorg/koin/core/module/Module;ZZILjava/lang/Object;)Lorg/koin/core/definition/Options;

    move-result-object v10

    .local v10, "options$iv$iv":Lorg/koin/core/definition/Options;
    const/16 v18, 0x0

    .line 53
    .local v18, "$i$f$saveFactory":I
    move-object/from16 v19, v17

    .line 54
    .local v19, "this_$iv$iv$iv":Lorg/koin/core/definition/Definitions;
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v20

    .local v20, "secondaryTypes$iv$iv$iv":Ljava/util/List;
    const/16 v21, 0x0

    .line 56
    .local v21, "$i$f$createFactory":I
    new-instance v22, Lorg/koin/core/definition/BeanDefinition;

    .line 57
    nop

    .line 58
    const/4 v3, 0x4

    const-string v4, "T"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class v3, Ljava/lang/Object;

    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v5

    .line 59
    nop

    .line 60
    nop

    .line 61
    sget-object v8, Lorg/koin/core/definition/Kind;->Factory:Lorg/koin/core/definition/Kind;

    .line 62
    nop

    .line 63
    nop

    .line 56
    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x180

    const/16 v26, 0x0

    move-object/from16 v3, v22

    move-object v4, v14

    move-object/from16 v6, p1

    move-object/from16 v7, p3

    move-object/from16 v9, v20

    move-object/from16 v11, v23

    move-object/from16 v12, v24

    move/from16 v13, v25

    move/from16 v23, v0

    move-object v0, v14

    .end local v14    # "scopeDefinition$iv$iv":Lorg/koin/core/scope/ScopeDefinition;
    .local v0, "scopeDefinition$iv$iv":Lorg/koin/core/scope/ScopeDefinition;
    .local v23, "$i$f$viewModel":I
    move-object/from16 v14, v26

    invoke-direct/range {v3 .. v14}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/scope/ScopeDefinition;Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;Ljava/util/List;Lorg/koin/core/definition/Options;Lorg/koin/core/definition/Properties;Lorg/koin/core/definition/Callbacks;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 53
    .end local v19    # "this_$iv$iv$iv":Lorg/koin/core/definition/Definitions;
    .end local v20    # "secondaryTypes$iv$iv$iv":Ljava/util/List;
    .end local v21    # "$i$f$createFactory":I
    nop

    .line 64
    .local v3, "beanDefinition$iv$iv":Lorg/koin/core/definition/BeanDefinition;
    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static {v0, v3, v6, v5, v4}, Lorg/koin/core/scope/ScopeDefinition;->save$default(Lorg/koin/core/scope/ScopeDefinition;Lorg/koin/core/definition/BeanDefinition;ZILjava/lang/Object;)V

    .line 65
    nop

    .line 38
    .end local v0    # "scopeDefinition$iv$iv":Lorg/koin/core/scope/ScopeDefinition;
    .end local v1    # "this_$iv":Lorg/koin/core/module/Module;
    .end local v3    # "beanDefinition$iv$iv":Lorg/koin/core/definition/BeanDefinition;
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

.method public static synthetic viewModel$default(Lorg/koin/core/module/Module;Lorg/koin/core/qualifier/Qualifier;ZLkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lorg/koin/core/definition/BeanDefinition;
    .locals 28
    .param p0, "$this$viewModel"    # Lorg/koin/core/module/Module;
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

    .line 66
    move-object/from16 v11, p0

    .local v11, "this_$iv":Lorg/koin/core/module/Module;
    const/16 v17, 0x0

    .line 67
    .local v17, "$i$f$factory":I
    sget-object v18, Lorg/koin/core/definition/Definitions;->INSTANCE:Lorg/koin/core/definition/Definitions;

    .local v18, "this_$iv$iv":Lorg/koin/core/definition/Definitions;
    invoke-virtual {v11}, Lorg/koin/core/module/Module;->getRootScope()Lorg/koin/core/scope/ScopeDefinition;

    move-result-object v10

    .local v10, "scopeDefinition$iv$iv":Lorg/koin/core/scope/ScopeDefinition;
    const/4 v8, 0x0

    invoke-static {v11, v15, v8, v14, v1}, Lorg/koin/core/module/Module;->makeOptions$default(Lorg/koin/core/module/Module;ZZILjava/lang/Object;)Lorg/koin/core/definition/Options;

    move-result-object v9

    .local v9, "options$iv$iv":Lorg/koin/core/definition/Options;
    const/16 v19, 0x0

    .line 68
    .local v19, "$i$f$saveFactory":I
    move-object/from16 v20, v18

    .line 69
    .local v20, "this_$iv$iv$iv":Lorg/koin/core/definition/Definitions;
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v21

    .local v21, "secondaryTypes$iv$iv$iv":Ljava/util/List;
    const/16 v22, 0x0

    .line 71
    .local v22, "$i$f$createFactory":I
    new-instance v23, Lorg/koin/core/definition/BeanDefinition;

    .line 72
    nop

    .line 73
    const/4 v2, 0x4

    const-string v3, "T"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class v2, Ljava/lang/Object;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    .line 74
    nop

    .line 75
    nop

    .line 76
    sget-object v7, Lorg/koin/core/definition/Kind;->Factory:Lorg/koin/core/definition/Kind;

    .line 77
    nop

    .line 78
    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x180

    const/16 v27, 0x0

    .line 71
    move-object/from16 v2, v23

    move-object v3, v10

    move-object v5, v0

    move-object/from16 v6, p3

    move v1, v8

    move-object/from16 v8, v21

    move-object v1, v10

    .end local v10    # "scopeDefinition$iv$iv":Lorg/koin/core/scope/ScopeDefinition;
    .local v1, "scopeDefinition$iv$iv":Lorg/koin/core/scope/ScopeDefinition;
    move-object/from16 v10, v24

    move-object/from16 v24, v11

    .end local v11    # "this_$iv":Lorg/koin/core/module/Module;
    .local v24, "this_$iv":Lorg/koin/core/module/Module;
    move-object/from16 v11, v25

    move/from16 v12, v26

    move-object/from16 v13, v27

    invoke-direct/range {v2 .. v13}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/scope/ScopeDefinition;Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;Ljava/util/List;Lorg/koin/core/definition/Options;Lorg/koin/core/definition/Properties;Lorg/koin/core/definition/Callbacks;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 68
    .end local v20    # "this_$iv$iv$iv":Lorg/koin/core/definition/Definitions;
    .end local v21    # "secondaryTypes$iv$iv$iv":Ljava/util/List;
    .end local v22    # "$i$f$createFactory":I
    nop

    .line 79
    .local v2, "beanDefinition$iv$iv":Lorg/koin/core/definition/BeanDefinition;
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v14, v4}, Lorg/koin/core/scope/ScopeDefinition;->save$default(Lorg/koin/core/scope/ScopeDefinition;Lorg/koin/core/definition/BeanDefinition;ZILjava/lang/Object;)V

    .line 80
    nop

    .line 66
    .end local v1    # "scopeDefinition$iv$iv":Lorg/koin/core/scope/ScopeDefinition;
    .end local v2    # "beanDefinition$iv$iv":Lorg/koin/core/definition/BeanDefinition;
    .end local v9    # "options$iv$iv":Lorg/koin/core/definition/Options;
    .end local v17    # "$i$f$factory":I
    .end local v18    # "this_$iv$iv":Lorg/koin/core/definition/Definitions;
    .end local v19    # "$i$f$saveFactory":I
    .end local v24    # "this_$iv":Lorg/koin/core/module/Module;
    move-object v1, v2

    .line 81
    .local v1, "beanDefinition":Lorg/koin/core/definition/BeanDefinition;
    invoke-static {v1}, Lorg/koin/androidx/viewmodel/dsl/ModuleExtKt;->setIsViewModel(Lorg/koin/core/definition/BeanDefinition;)V

    .line 82
    return-object v1
.end method
