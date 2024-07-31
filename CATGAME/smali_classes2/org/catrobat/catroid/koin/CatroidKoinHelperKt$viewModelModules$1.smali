.class final Lorg/catrobat/catroid/koin/CatroidKoinHelperKt$viewModelModules$1;
.super Lkotlin/jvm/internal/Lambda;
.source "CatroidKoinHelper.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/catrobat/catroid/koin/CatroidKoinHelperKt;
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
    value = "SMAP\nCatroidKoinHelper.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CatroidKoinHelper.kt\norg/catrobat/catroid/koin/CatroidKoinHelperKt$viewModelModules$1\n+ 2 ModuleExt.kt\norg/koin/androidx/viewmodel/dsl/ModuleExtKt\n+ 3 Module.kt\norg/koin/core/module/Module\n+ 4 Definitions.kt\norg/koin/core/definition/Definitions\n*L\n1#1,141:1\n34#2,5:142\n39#2,2:161\n96#3:147\n81#4:148\n62#4,10:149\n82#4,2:159\n*E\n*S KotlinDebug\n*F\n+ 1 CatroidKoinHelper.kt\norg/catrobat/catroid/koin/CatroidKoinHelperKt$viewModelModules$1\n*L\n91#1,5:142\n91#1,2:161\n91#1:147\n91#1:148\n91#1,10:149\n91#1,2:159\n*E\n"
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
        0x4,
        0x2
    }
.end annotation


# static fields
.field public static final INSTANCE:Lorg/catrobat/catroid/koin/CatroidKoinHelperKt$viewModelModules$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/catrobat/catroid/koin/CatroidKoinHelperKt$viewModelModules$1;

    invoke-direct {v0}, Lorg/catrobat/catroid/koin/CatroidKoinHelperKt$viewModelModules$1;-><init>()V

    sput-object v0, Lorg/catrobat/catroid/koin/CatroidKoinHelperKt$viewModelModules$1;->INSTANCE:Lorg/catrobat/catroid/koin/CatroidKoinHelperKt$viewModelModules$1;

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

    invoke-virtual {p0, p1}, Lorg/catrobat/catroid/koin/CatroidKoinHelperKt$viewModelModules$1;->invoke(Lorg/koin/core/module/Module;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lorg/koin/core/module/Module;)V
    .locals 29
    .param p1, "$this$module"    # Lorg/koin/core/module/Module;

    const-string v0, "$receiver"

    move-object/from16 v1, p1

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 91
    sget-object v0, Lorg/catrobat/catroid/koin/CatroidKoinHelperKt$viewModelModules$1$1;->INSTANCE:Lorg/catrobat/catroid/koin/CatroidKoinHelperKt$viewModelModules$1$1;

    move-object v6, v0

    check-cast v6, Lkotlin/jvm/functions/Function2;

    .local v6, "definition$iv":Lkotlin/jvm/functions/Function2;
    move-object/from16 v0, p1

    .line 142
    .local v0, "$this$viewModel$iv":Lorg/koin/core/module/Module;
    const/4 v14, 0x0

    move-object v15, v14

    check-cast v15, Lorg/koin/core/qualifier/Qualifier;

    .line 143
    .local v15, "qualifier$iv":Lorg/koin/core/qualifier/Qualifier;
    const/4 v13, 0x0

    .local v13, "override$iv":Z
    const/16 v16, 0x0

    .line 146
    .local v16, "$i$f$viewModel":I
    move-object v12, v0

    .local v12, "this_$iv$iv":Lorg/koin/core/module/Module;
    const/16 v17, 0x0

    .line 147
    .local v17, "$i$f$factory":I
    sget-object v18, Lorg/koin/core/definition/Definitions;->INSTANCE:Lorg/koin/core/definition/Definitions;

    .local v18, "this_$iv$iv$iv":Lorg/koin/core/definition/Definitions;
    invoke-virtual {v12}, Lorg/koin/core/module/Module;->getRootScope()Lorg/koin/core/scope/ScopeDefinition;

    move-result-object v11

    .local v11, "scopeDefinition$iv$iv$iv":Lorg/koin/core/scope/ScopeDefinition;
    const/4 v10, 0x0

    const/4 v9, 0x2

    invoke-static {v12, v13, v10, v9, v14}, Lorg/koin/core/module/Module;->makeOptions$default(Lorg/koin/core/module/Module;ZZILjava/lang/Object;)Lorg/koin/core/definition/Options;

    move-result-object v19

    .local v19, "options$iv$iv$iv":Lorg/koin/core/definition/Options;
    const/16 v20, 0x0

    .line 148
    .local v20, "$i$f$saveFactory":I
    move-object/from16 v21, v18

    .line 149
    .local v21, "this_$iv$iv$iv$iv":Lorg/koin/core/definition/Definitions;
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v22

    .local v22, "secondaryTypes$iv$iv$iv$iv":Ljava/util/List;
    const/16 v23, 0x0

    .line 151
    .local v23, "$i$f$createFactory":I
    new-instance v24, Lorg/koin/core/definition/BeanDefinition;

    .line 152
    nop

    .line 153
    const-class v2, Lorg/catrobat/catroid/ui/recyclerview/viewmodel/MainFragmentViewModel;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    .line 154
    nop

    .line 155
    nop

    .line 156
    sget-object v7, Lorg/koin/core/definition/Kind;->Factory:Lorg/koin/core/definition/Kind;

    .line 157
    nop

    .line 158
    nop

    .line 151
    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x180

    const/16 v28, 0x0

    move-object/from16 v2, v24

    move-object v3, v11

    move-object v5, v15

    move-object/from16 v8, v22

    move v14, v9

    move-object/from16 v9, v19

    move v14, v10

    move-object/from16 v10, v25

    move-object v14, v11

    .end local v11    # "scopeDefinition$iv$iv$iv":Lorg/koin/core/scope/ScopeDefinition;
    .local v14, "scopeDefinition$iv$iv$iv":Lorg/koin/core/scope/ScopeDefinition;
    move-object/from16 v11, v26

    move-object/from16 v26, v12

    .end local v12    # "this_$iv$iv":Lorg/koin/core/module/Module;
    .local v26, "this_$iv$iv":Lorg/koin/core/module/Module;
    move/from16 v12, v27

    move/from16 v27, v13

    .end local v13    # "override$iv":Z
    .local v27, "override$iv":Z
    move-object/from16 v13, v28

    invoke-direct/range {v2 .. v13}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/scope/ScopeDefinition;Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;Ljava/util/List;Lorg/koin/core/definition/Options;Lorg/koin/core/definition/Properties;Lorg/koin/core/definition/Callbacks;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 148
    .end local v21    # "this_$iv$iv$iv$iv":Lorg/koin/core/definition/Definitions;
    .end local v22    # "secondaryTypes$iv$iv$iv$iv":Ljava/util/List;
    .end local v23    # "$i$f$createFactory":I
    nop

    .line 159
    .local v2, "beanDefinition$iv$iv$iv":Lorg/koin/core/definition/BeanDefinition;
    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v14, v2, v4, v3, v5}, Lorg/koin/core/scope/ScopeDefinition;->save$default(Lorg/koin/core/scope/ScopeDefinition;Lorg/koin/core/definition/BeanDefinition;ZILjava/lang/Object;)V

    .line 160
    nop

    .line 146
    .end local v2    # "beanDefinition$iv$iv$iv":Lorg/koin/core/definition/BeanDefinition;
    .end local v14    # "scopeDefinition$iv$iv$iv":Lorg/koin/core/scope/ScopeDefinition;
    .end local v17    # "$i$f$factory":I
    .end local v18    # "this_$iv$iv$iv":Lorg/koin/core/definition/Definitions;
    .end local v19    # "options$iv$iv$iv":Lorg/koin/core/definition/Options;
    .end local v20    # "$i$f$saveFactory":I
    .end local v26    # "this_$iv$iv":Lorg/koin/core/module/Module;
    nop

    .line 161
    .local v2, "beanDefinition$iv":Lorg/koin/core/definition/BeanDefinition;
    invoke-static {v2}, Lorg/koin/androidx/viewmodel/dsl/ModuleExtKt;->setIsViewModel(Lorg/koin/core/definition/BeanDefinition;)V

    .line 162
    nop

    .line 92
    .end local v0    # "$this$viewModel$iv":Lorg/koin/core/module/Module;
    .end local v2    # "beanDefinition$iv":Lorg/koin/core/definition/BeanDefinition;
    .end local v6    # "definition$iv":Lkotlin/jvm/functions/Function2;
    .end local v15    # "qualifier$iv":Lorg/koin/core/qualifier/Qualifier;
    .end local v16    # "$i$f$viewModel":I
    .end local v27    # "override$iv":Z
    return-void
.end method
