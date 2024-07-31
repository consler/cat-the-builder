.class final Lorg/koin/android/ext/koin/KoinExtKt$androidContext$1;
.super Lkotlin/jvm/internal/Lambda;
.source "KoinExt.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/koin/android/ext/koin/KoinExtKt;->androidContext(Lorg/koin/core/KoinApplication;Landroid/content/Context;)Lorg/koin/core/KoinApplication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lorg/koin/core/module/Module;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nKoinExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 KoinExt.kt\norg/koin/android/ext/koin/KoinExtKt$androidContext$1\n+ 2 Module.kt\norg/koin/core/module/Module\n+ 3 Definitions.kt\norg/koin/core/definition/Definitions\n*L\n1#1,99:1\n69#2,10:100\n15#3,20:110\n16#3,2:130\n*E\n*S KotlinDebug\n*F\n+ 1 KoinExt.kt\norg/koin/android/ext/koin/KoinExtKt$androidContext$1\n*L\n55#1,10:100\n55#1,20:110\n55#1,2:130\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u000c\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n\u00a2\u0006\u0002\u0008\u0003"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lorg/koin/core/module/Module;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field final synthetic $androidContext:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lorg/koin/android/ext/koin/KoinExtKt$androidContext$1;->$androidContext:Landroid/content/Context;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lorg/koin/core/module/Module;

    invoke-virtual {p0, p1}, Lorg/koin/android/ext/koin/KoinExtKt$androidContext$1;->invoke(Lorg/koin/core/module/Module;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lorg/koin/core/module/Module;)V
    .locals 27
    .param p1, "$this$module"    # Lorg/koin/core/module/Module;

    const-string v0, "$receiver"

    move-object/from16 v1, p1

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    new-instance v0, Lorg/koin/android/ext/koin/KoinExtKt$androidContext$1$1;

    move-object/from16 v2, p0

    invoke-direct {v0, v2}, Lorg/koin/android/ext/koin/KoinExtKt$androidContext$1$1;-><init>(Lorg/koin/android/ext/koin/KoinExtKt$androidContext$1;)V

    move-object v7, v0

    check-cast v7, Lkotlin/jvm/functions/Function2;

    .local v7, "definition$iv":Lkotlin/jvm/functions/Function2;
    move-object/from16 v0, p1

    .line 100
    .local v0, "this_$iv":Lorg/koin/core/module/Module;
    const/4 v15, 0x0

    move-object/from16 v16, v15

    check-cast v16, Lorg/koin/core/qualifier/Qualifier;

    .line 101
    .local v16, "qualifier$iv":Lorg/koin/core/qualifier/Qualifier;
    const/4 v14, 0x0

    .line 102
    .local v14, "createdAtStart$iv":Z
    const/4 v13, 0x0

    .local v13, "override$iv":Z
    const/16 v17, 0x0

    .line 105
    .local v17, "$i$f$single":I
    sget-object v3, Lorg/koin/core/definition/Definitions;->INSTANCE:Lorg/koin/core/definition/Definitions;

    .line 106
    nop

    .line 107
    nop

    .line 108
    invoke-virtual {v0}, Lorg/koin/core/module/Module;->getRootScope()Lorg/koin/core/scope/ScopeDefinition;

    move-result-object v4

    .line 109
    invoke-virtual {v0, v13, v14}, Lorg/koin/core/module/Module;->makeOptions(ZZ)Lorg/koin/core/definition/Options;

    move-result-object v10

    .local v10, "options$iv$iv":Lorg/koin/core/definition/Options;
    move-object/from16 v18, v3

    .local v18, "this_$iv$iv":Lorg/koin/core/definition/Definitions;
    move-object v12, v4

    .line 105
    .local v12, "scopeDefinition$iv$iv":Lorg/koin/core/scope/ScopeDefinition;
    const/16 v19, 0x0

    .line 110
    .local v19, "$i$f$saveSingle":I
    move-object/from16 v20, v18

    .line 120
    .local v20, "this_$iv$iv$iv":Lorg/koin/core/definition/Definitions;
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v21

    .local v21, "secondaryTypes$iv$iv$iv":Ljava/util/List;
    const/16 v22, 0x0

    .line 122
    .local v22, "$i$f$createSingle":I
    new-instance v23, Lorg/koin/core/definition/BeanDefinition;

    .line 123
    nop

    .line 124
    const-class v3, Landroid/app/Application;

    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v5

    .line 125
    nop

    .line 126
    nop

    .line 127
    sget-object v8, Lorg/koin/core/definition/Kind;->Single:Lorg/koin/core/definition/Kind;

    .line 128
    nop

    .line 129
    nop

    .line 122
    const/4 v11, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x180

    const/16 v26, 0x0

    move-object/from16 v3, v23

    move-object/from16 v6, v16

    move-object/from16 v9, v21

    move-object v15, v12

    .end local v12    # "scopeDefinition$iv$iv":Lorg/koin/core/scope/ScopeDefinition;
    .local v15, "scopeDefinition$iv$iv":Lorg/koin/core/scope/ScopeDefinition;
    move-object/from16 v12, v24

    move/from16 v24, v13

    .end local v13    # "override$iv":Z
    .local v24, "override$iv":Z
    move/from16 v13, v25

    move/from16 v25, v14

    .end local v14    # "createdAtStart$iv":Z
    .local v25, "createdAtStart$iv":Z
    move-object/from16 v14, v26

    invoke-direct/range {v3 .. v14}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/scope/ScopeDefinition;Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;Ljava/util/List;Lorg/koin/core/definition/Options;Lorg/koin/core/definition/Properties;Lorg/koin/core/definition/Callbacks;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 110
    .end local v20    # "this_$iv$iv$iv":Lorg/koin/core/definition/Definitions;
    .end local v21    # "secondaryTypes$iv$iv$iv":Ljava/util/List;
    .end local v22    # "$i$f$createSingle":I
    nop

    .line 130
    .local v3, "beanDefinition$iv$iv":Lorg/koin/core/definition/BeanDefinition;
    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static {v15, v3, v4, v5, v6}, Lorg/koin/core/scope/ScopeDefinition;->save$default(Lorg/koin/core/scope/ScopeDefinition;Lorg/koin/core/definition/BeanDefinition;ZILjava/lang/Object;)V

    .line 131
    .end local v3    # "beanDefinition$iv$iv":Lorg/koin/core/definition/BeanDefinition;
    .end local v10    # "options$iv$iv":Lorg/koin/core/definition/Options;
    .end local v15    # "scopeDefinition$iv$iv":Lorg/koin/core/scope/ScopeDefinition;
    .end local v18    # "this_$iv$iv":Lorg/koin/core/definition/Definitions;
    .end local v19    # "$i$f$saveSingle":I
    nop

    .line 56
    .end local v0    # "this_$iv":Lorg/koin/core/module/Module;
    .end local v7    # "definition$iv":Lkotlin/jvm/functions/Function2;
    .end local v16    # "qualifier$iv":Lorg/koin/core/qualifier/Qualifier;
    .end local v17    # "$i$f$single":I
    .end local v24    # "override$iv":Z
    .end local v25    # "createdAtStart$iv":Z
    return-void
.end method
