.class final Lorg/koin/androidx/fragment/koin/KoinApplicationExtKt$fragmentFactory$1;
.super Lkotlin/jvm/internal/Lambda;
.source "KoinApplicationExt.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/koin/androidx/fragment/koin/KoinApplicationExtKt;->fragmentFactory(Lorg/koin/core/KoinApplication;)V
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
    value = "SMAP\nKoinApplicationExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 KoinApplicationExt.kt\norg/koin/androidx/fragment/koin/KoinApplicationExtKt$fragmentFactory$1\n+ 2 Module.kt\norg/koin/core/module/Module\n+ 3 Definitions.kt\norg/koin/core/definition/Definitions\n*L\n1#1,15:1\n69#2,10:16\n15#3,20:26\n16#3,2:46\n*E\n*S KotlinDebug\n*F\n+ 1 KoinApplicationExt.kt\norg/koin/androidx/fragment/koin/KoinApplicationExtKt$fragmentFactory$1\n*L\n13#1,10:16\n13#1,20:26\n13#1,2:46\n*E\n"
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


# static fields
.field public static final INSTANCE:Lorg/koin/androidx/fragment/koin/KoinApplicationExtKt$fragmentFactory$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/koin/androidx/fragment/koin/KoinApplicationExtKt$fragmentFactory$1;

    invoke-direct {v0}, Lorg/koin/androidx/fragment/koin/KoinApplicationExtKt$fragmentFactory$1;-><init>()V

    sput-object v0, Lorg/koin/androidx/fragment/koin/KoinApplicationExtKt$fragmentFactory$1;->INSTANCE:Lorg/koin/androidx/fragment/koin/KoinApplicationExtKt$fragmentFactory$1;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lorg/koin/core/module/Module;

    invoke-virtual {p0, p1}, Lorg/koin/androidx/fragment/koin/KoinApplicationExtKt$fragmentFactory$1;->invoke(Lorg/koin/core/module/Module;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lorg/koin/core/module/Module;)V
    .locals 26
    .param p1, "$this$module"    # Lorg/koin/core/module/Module;

    const-string v0, "$receiver"

    move-object/from16 v1, p1

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    sget-object v0, Lorg/koin/androidx/fragment/koin/KoinApplicationExtKt$fragmentFactory$1$1;->INSTANCE:Lorg/koin/androidx/fragment/koin/KoinApplicationExtKt$fragmentFactory$1$1;

    move-object v6, v0

    check-cast v6, Lkotlin/jvm/functions/Function2;

    .local v6, "definition$iv":Lkotlin/jvm/functions/Function2;
    move-object/from16 v0, p1

    .line 16
    .local v0, "this_$iv":Lorg/koin/core/module/Module;
    const/4 v14, 0x0

    move-object v15, v14

    check-cast v15, Lorg/koin/core/qualifier/Qualifier;

    .line 17
    .local v15, "qualifier$iv":Lorg/koin/core/qualifier/Qualifier;
    const/4 v13, 0x0

    .line 18
    .local v13, "createdAtStart$iv":Z
    const/4 v12, 0x0

    .local v12, "override$iv":Z
    const/16 v16, 0x0

    .line 21
    .local v16, "$i$f$single":I
    sget-object v2, Lorg/koin/core/definition/Definitions;->INSTANCE:Lorg/koin/core/definition/Definitions;

    .line 22
    nop

    .line 23
    nop

    .line 24
    invoke-virtual {v0}, Lorg/koin/core/module/Module;->getRootScope()Lorg/koin/core/scope/ScopeDefinition;

    move-result-object v3

    .line 25
    invoke-virtual {v0, v12, v13}, Lorg/koin/core/module/Module;->makeOptions(ZZ)Lorg/koin/core/definition/Options;

    move-result-object v9

    .local v9, "options$iv$iv":Lorg/koin/core/definition/Options;
    move-object/from16 v17, v2

    .local v17, "this_$iv$iv":Lorg/koin/core/definition/Definitions;
    move-object v11, v3

    .line 21
    .local v11, "scopeDefinition$iv$iv":Lorg/koin/core/scope/ScopeDefinition;
    const/16 v18, 0x0

    .line 26
    .local v18, "$i$f$saveSingle":I
    move-object/from16 v19, v17

    .line 36
    .local v19, "this_$iv$iv$iv":Lorg/koin/core/definition/Definitions;
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v20

    .local v20, "secondaryTypes$iv$iv$iv":Ljava/util/List;
    const/16 v21, 0x0

    .line 38
    .local v21, "$i$f$createSingle":I
    new-instance v22, Lorg/koin/core/definition/BeanDefinition;

    .line 39
    nop

    .line 40
    const-class v2, Landroidx/fragment/app/FragmentFactory;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    .line 41
    nop

    .line 42
    nop

    .line 43
    sget-object v7, Lorg/koin/core/definition/Kind;->Single:Lorg/koin/core/definition/Kind;

    .line 44
    nop

    .line 45
    nop

    .line 38
    const/4 v10, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x180

    const/16 v25, 0x0

    move-object/from16 v2, v22

    move-object v5, v15

    move-object/from16 v8, v20

    move-object v14, v11

    .end local v11    # "scopeDefinition$iv$iv":Lorg/koin/core/scope/ScopeDefinition;
    .local v14, "scopeDefinition$iv$iv":Lorg/koin/core/scope/ScopeDefinition;
    move-object/from16 v11, v23

    move/from16 v23, v12

    .end local v12    # "override$iv":Z
    .local v23, "override$iv":Z
    move/from16 v12, v24

    move/from16 v24, v13

    .end local v13    # "createdAtStart$iv":Z
    .local v24, "createdAtStart$iv":Z
    move-object/from16 v13, v25

    invoke-direct/range {v2 .. v13}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/scope/ScopeDefinition;Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;Ljava/util/List;Lorg/koin/core/definition/Options;Lorg/koin/core/definition/Properties;Lorg/koin/core/definition/Callbacks;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 26
    .end local v19    # "this_$iv$iv$iv":Lorg/koin/core/definition/Definitions;
    .end local v20    # "secondaryTypes$iv$iv$iv":Ljava/util/List;
    .end local v21    # "$i$f$createSingle":I
    nop

    .line 46
    .local v2, "beanDefinition$iv$iv":Lorg/koin/core/definition/BeanDefinition;
    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static {v14, v2, v3, v4, v5}, Lorg/koin/core/scope/ScopeDefinition;->save$default(Lorg/koin/core/scope/ScopeDefinition;Lorg/koin/core/definition/BeanDefinition;ZILjava/lang/Object;)V

    .line 47
    .end local v2    # "beanDefinition$iv$iv":Lorg/koin/core/definition/BeanDefinition;
    .end local v9    # "options$iv$iv":Lorg/koin/core/definition/Options;
    .end local v14    # "scopeDefinition$iv$iv":Lorg/koin/core/scope/ScopeDefinition;
    .end local v17    # "this_$iv$iv":Lorg/koin/core/definition/Definitions;
    .end local v18    # "$i$f$saveSingle":I
    nop

    .line 14
    .end local v0    # "this_$iv":Lorg/koin/core/module/Module;
    .end local v6    # "definition$iv":Lkotlin/jvm/functions/Function2;
    .end local v15    # "qualifier$iv":Lorg/koin/core/qualifier/Qualifier;
    .end local v16    # "$i$f$single":I
    .end local v23    # "override$iv":Z
    .end local v24    # "createdAtStart$iv":Z
    return-void
.end method
