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
    .locals 15
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

    const-string v0, "$this$viewModel"

    move-object v1, p0

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "definition"

    move-object/from16 v5, p3

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    sget-object v0, Lorg/koin/core/definition/Definitions;->INSTANCE:Lorg/koin/core/definition/Definitions;

    .line 45
    invoke-virtual {p0}, Lorg/koin/dsl/ScopeDSL;->getScopeDefinition()Lorg/koin/core/scope/ScopeDefinition;

    move-result-object v0

    .line 46
    new-instance v8, Lorg/koin/core/definition/Options;

    const/4 v13, 0x0

    move/from16 v1, p2

    invoke-direct {v8, v13, v1}, Lorg/koin/core/definition/Options;-><init>(ZZ)V

    .line 48
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v7

    .line 50
    new-instance v14, Lorg/koin/core/definition/BeanDefinition;

    const/4 v1, 0x4

    const-string v2, "T"

    .line 52
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class v1, Ljava/lang/Object;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    .line 55
    sget-object v6, Lorg/koin/core/definition/Kind;->Factory:Lorg/koin/core/definition/Kind;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0x180

    const/4 v12, 0x0

    move-object v1, v14

    move-object v2, v0

    move-object/from16 v4, p1

    .line 50
    invoke-direct/range {v1 .. v12}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/scope/ScopeDefinition;Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;Ljava/util/List;Lorg/koin/core/definition/Options;Lorg/koin/core/definition/Properties;Lorg/koin/core/definition/Callbacks;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/4 v1, 0x2

    const/4 v2, 0x0

    .line 58
    invoke-static {v0, v14, v13, v1, v2}, Lorg/koin/core/scope/ScopeDefinition;->save$default(Lorg/koin/core/scope/ScopeDefinition;Lorg/koin/core/definition/BeanDefinition;ZILjava/lang/Object;)V

    .line 39
    invoke-static {v14}, Lorg/koin/androidx/viewmodel/dsl/ModuleExtKt;->setIsViewModel(Lorg/koin/core/definition/BeanDefinition;)V

    return-object v14
.end method

.method public static synthetic viewModel$default(Lorg/koin/dsl/ScopeDSL;Lorg/koin/core/qualifier/Qualifier;ZLkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lorg/koin/core/definition/BeanDefinition;
    .locals 18

    and-int/lit8 v0, p4, 0x1

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 34
    move-object v0, v1

    check-cast v0, Lorg/koin/core/qualifier/Qualifier;

    move-object v5, v1

    goto :goto_0

    :cond_0
    move-object/from16 v5, p1

    :goto_0
    const/4 v0, 0x2

    and-int/lit8 v2, p4, 0x2

    const/4 v14, 0x0

    if-eqz v2, :cond_1

    move v2, v14

    goto :goto_1

    :cond_1
    move/from16 v2, p2

    :goto_1
    const-string v3, "$this$viewModel"

    move-object/from16 v4, p0

    .line 35
    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "definition"

    move-object/from16 v6, p3

    invoke-static {v6, v3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    sget-object v3, Lorg/koin/core/definition/Definitions;->INSTANCE:Lorg/koin/core/definition/Definitions;

    .line 64
    invoke-virtual/range {p0 .. p0}, Lorg/koin/dsl/ScopeDSL;->getScopeDefinition()Lorg/koin/core/scope/ScopeDefinition;

    move-result-object v15

    .line 65
    new-instance v9, Lorg/koin/core/definition/Options;

    invoke-direct {v9, v14, v2}, Lorg/koin/core/definition/Options;-><init>(ZZ)V

    .line 67
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v8

    .line 69
    new-instance v13, Lorg/koin/core/definition/BeanDefinition;

    const/4 v2, 0x4

    const-string v3, "T"

    .line 71
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class v2, Ljava/lang/Object;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    .line 74
    sget-object v7, Lorg/koin/core/definition/Kind;->Factory:Lorg/koin/core/definition/Kind;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v12, 0x180

    const/16 v16, 0x0

    move-object v2, v13

    move-object v3, v15

    move-object/from16 v17, v13

    move-object/from16 v13, v16

    .line 69
    invoke-direct/range {v2 .. v13}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/scope/ScopeDefinition;Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;Ljava/util/List;Lorg/koin/core/definition/Options;Lorg/koin/core/definition/Properties;Lorg/koin/core/definition/Callbacks;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v2, v17

    .line 77
    invoke-static {v15, v2, v14, v0, v1}, Lorg/koin/core/scope/ScopeDefinition;->save$default(Lorg/koin/core/scope/ScopeDefinition;Lorg/koin/core/definition/BeanDefinition;ZILjava/lang/Object;)V

    .line 79
    invoke-static {v2}, Lorg/koin/androidx/viewmodel/dsl/ModuleExtKt;->setIsViewModel(Lorg/koin/core/definition/BeanDefinition;)V

    return-object v2
.end method
