.class final Lorg/catrobat/catroid/koin/CatroidKoinHelperKt$adapterModules$1;
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
    value = "SMAP\nCatroidKoinHelper.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CatroidKoinHelper.kt\norg/catrobat/catroid/koin/CatroidKoinHelperKt$adapterModules$1\n+ 2 Module.kt\norg/koin/core/module/Module\n+ 3 Definitions.kt\norg/koin/core/definition/Definitions\n*L\n1#1,141:1\n69#2,10:142\n69#2,10:172\n15#3,20:152\n15#3,20:182\n*E\n*S KotlinDebug\n*F\n+ 1 CatroidKoinHelper.kt\norg/catrobat/catroid/koin/CatroidKoinHelperKt$adapterModules$1\n*L\n109#1,10:142\n113#1,10:172\n109#1,20:152\n113#1,20:182\n*E\n"
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
.field public static final INSTANCE:Lorg/catrobat/catroid/koin/CatroidKoinHelperKt$adapterModules$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/catrobat/catroid/koin/CatroidKoinHelperKt$adapterModules$1;

    invoke-direct {v0}, Lorg/catrobat/catroid/koin/CatroidKoinHelperKt$adapterModules$1;-><init>()V

    sput-object v0, Lorg/catrobat/catroid/koin/CatroidKoinHelperKt$adapterModules$1;->INSTANCE:Lorg/catrobat/catroid/koin/CatroidKoinHelperKt$adapterModules$1;

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

    invoke-virtual {p0, p1}, Lorg/catrobat/catroid/koin/CatroidKoinHelperKt$adapterModules$1;->invoke(Lorg/koin/core/module/Module;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lorg/koin/core/module/Module;)V
    .locals 28
    .param p1, "$this$module"    # Lorg/koin/core/module/Module;

    const-string v0, "$receiver"

    move-object/from16 v1, p1

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 109
    sget-object v0, Lorg/catrobat/catroid/koin/CatroidKoinHelperKt$adapterModules$1$1;->INSTANCE:Lorg/catrobat/catroid/koin/CatroidKoinHelperKt$adapterModules$1$1;

    move-object v6, v0

    check-cast v6, Lkotlin/jvm/functions/Function2;

    .local v6, "definition$iv":Lkotlin/jvm/functions/Function2;
    move-object/from16 v0, p1

    .line 142
    .local v0, "this_$iv":Lorg/koin/core/module/Module;
    const/4 v14, 0x0

    move-object v15, v14

    check-cast v15, Lorg/koin/core/qualifier/Qualifier;

    .line 143
    .local v15, "qualifier$iv":Lorg/koin/core/qualifier/Qualifier;
    const/4 v13, 0x0

    .line 144
    .local v13, "createdAtStart$iv":Z
    const/4 v12, 0x0

    .local v12, "override$iv":Z
    const/16 v16, 0x0

    .line 147
    .local v16, "$i$f$single":I
    sget-object v2, Lorg/koin/core/definition/Definitions;->INSTANCE:Lorg/koin/core/definition/Definitions;

    .line 148
    nop

    .line 149
    nop

    .line 150
    invoke-virtual {v0}, Lorg/koin/core/module/Module;->getRootScope()Lorg/koin/core/scope/ScopeDefinition;

    move-result-object v3

    .line 151
    invoke-virtual {v0, v12, v13}, Lorg/koin/core/module/Module;->makeOptions(ZZ)Lorg/koin/core/definition/Options;

    move-result-object v9

    .local v9, "options$iv$iv":Lorg/koin/core/definition/Options;
    move-object/from16 v17, v2

    .local v17, "this_$iv$iv":Lorg/koin/core/definition/Definitions;
    move-object v11, v3

    .line 147
    .local v11, "scopeDefinition$iv$iv":Lorg/koin/core/scope/ScopeDefinition;
    const/16 v18, 0x0

    .line 152
    .local v18, "$i$f$saveSingle":I
    move-object/from16 v19, v17

    .line 162
    .local v19, "this_$iv$iv$iv":Lorg/koin/core/definition/Definitions;
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v20

    .local v20, "secondaryTypes$iv$iv$iv":Ljava/util/List;
    const/16 v21, 0x0

    .line 164
    .local v21, "$i$f$createSingle":I
    new-instance v22, Lorg/koin/core/definition/BeanDefinition;

    .line 165
    nop

    .line 166
    const-class v2, Lorg/catrobat/catroid/ui/recyclerview/adapter/FeaturedProjectsAdapter;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    .line 167
    nop

    .line 168
    nop

    .line 169
    sget-object v7, Lorg/koin/core/definition/Kind;->Single:Lorg/koin/core/definition/Kind;

    .line 170
    nop

    .line 171
    nop

    .line 164
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

    .line 152
    .end local v19    # "this_$iv$iv$iv":Lorg/koin/core/definition/Definitions;
    .end local v20    # "secondaryTypes$iv$iv$iv":Ljava/util/List;
    .end local v21    # "$i$f$createSingle":I
    nop

    .line 153
    .local v2, "beanDefinition$iv$iv":Lorg/koin/core/definition/BeanDefinition;
    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static {v14, v2, v3, v4, v5}, Lorg/koin/core/scope/ScopeDefinition;->save$default(Lorg/koin/core/scope/ScopeDefinition;Lorg/koin/core/definition/BeanDefinition;ZILjava/lang/Object;)V

    .line 154
    nop

    .line 113
    .end local v0    # "this_$iv":Lorg/koin/core/module/Module;
    .end local v2    # "beanDefinition$iv$iv":Lorg/koin/core/definition/BeanDefinition;
    .end local v6    # "definition$iv":Lkotlin/jvm/functions/Function2;
    .end local v9    # "options$iv$iv":Lorg/koin/core/definition/Options;
    .end local v14    # "scopeDefinition$iv$iv":Lorg/koin/core/scope/ScopeDefinition;
    .end local v15    # "qualifier$iv":Lorg/koin/core/qualifier/Qualifier;
    .end local v16    # "$i$f$single":I
    .end local v17    # "this_$iv$iv":Lorg/koin/core/definition/Definitions;
    .end local v18    # "$i$f$saveSingle":I
    .end local v23    # "override$iv":Z
    .end local v24    # "createdAtStart$iv":Z
    sget-object v0, Lorg/catrobat/catroid/koin/CatroidKoinHelperKt$adapterModules$1$2;->INSTANCE:Lorg/catrobat/catroid/koin/CatroidKoinHelperKt$adapterModules$1$2;

    move-object v10, v0

    check-cast v10, Lkotlin/jvm/functions/Function2;

    .local v10, "definition$iv":Lkotlin/jvm/functions/Function2;
    move-object/from16 v0, p1

    .line 172
    .restart local v0    # "this_$iv":Lorg/koin/core/module/Module;
    move-object v2, v5

    check-cast v2, Lorg/koin/core/qualifier/Qualifier;

    .line 173
    .local v2, "qualifier$iv":Lorg/koin/core/qualifier/Qualifier;
    const/4 v5, 0x0

    .line 174
    .local v5, "createdAtStart$iv":Z
    const/4 v15, 0x0

    .local v15, "override$iv":Z
    const/16 v18, 0x0

    .line 177
    .local v18, "$i$f$single":I
    sget-object v6, Lorg/koin/core/definition/Definitions;->INSTANCE:Lorg/koin/core/definition/Definitions;

    .line 178
    nop

    .line 179
    nop

    .line 180
    invoke-virtual {v0}, Lorg/koin/core/module/Module;->getRootScope()Lorg/koin/core/scope/ScopeDefinition;

    move-result-object v7

    .line 181
    invoke-virtual {v0, v15, v5}, Lorg/koin/core/module/Module;->makeOptions(ZZ)Lorg/koin/core/definition/Options;

    move-result-object v13

    .local v13, "options$iv$iv":Lorg/koin/core/definition/Options;
    move-object/from16 v19, v6

    .local v19, "this_$iv$iv":Lorg/koin/core/definition/Definitions;
    move-object v14, v7

    .line 177
    .restart local v14    # "scopeDefinition$iv$iv":Lorg/koin/core/scope/ScopeDefinition;
    const/16 v20, 0x0

    .line 182
    .local v20, "$i$f$saveSingle":I
    move-object/from16 v21, v19

    .line 192
    .local v21, "this_$iv$iv$iv":Lorg/koin/core/definition/Definitions;
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v22

    .local v22, "secondaryTypes$iv$iv$iv":Ljava/util/List;
    const/16 v23, 0x0

    .line 194
    .local v23, "$i$f$createSingle":I
    new-instance v24, Lorg/koin/core/definition/BeanDefinition;

    .line 195
    nop

    .line 196
    const-class v6, Lorg/catrobat/catroid/ui/recyclerview/adapter/CategoriesAdapter;

    invoke-static {v6}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v8

    .line 197
    nop

    .line 198
    nop

    .line 199
    sget-object v11, Lorg/koin/core/definition/Kind;->Single:Lorg/koin/core/definition/Kind;

    .line 200
    nop

    .line 201
    nop

    .line 194
    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v25, 0x180

    const/16 v26, 0x0

    move-object/from16 v6, v24

    move-object v9, v2

    move-object/from16 v12, v22

    move-object v3, v14

    .end local v14    # "scopeDefinition$iv$iv":Lorg/koin/core/scope/ScopeDefinition;
    .local v3, "scopeDefinition$iv$iv":Lorg/koin/core/scope/ScopeDefinition;
    move-object/from16 v14, v16

    move/from16 v27, v15

    .end local v15    # "override$iv":Z
    .local v27, "override$iv":Z
    move-object/from16 v15, v17

    move/from16 v16, v25

    move-object/from16 v17, v26

    invoke-direct/range {v6 .. v17}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/scope/ScopeDefinition;Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;Ljava/util/List;Lorg/koin/core/definition/Options;Lorg/koin/core/definition/Properties;Lorg/koin/core/definition/Callbacks;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 182
    .end local v21    # "this_$iv$iv$iv":Lorg/koin/core/definition/Definitions;
    .end local v22    # "secondaryTypes$iv$iv$iv":Ljava/util/List;
    .end local v23    # "$i$f$createSingle":I
    nop

    .line 183
    .local v6, "beanDefinition$iv$iv":Lorg/koin/core/definition/BeanDefinition;
    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static {v3, v6, v7, v4, v8}, Lorg/koin/core/scope/ScopeDefinition;->save$default(Lorg/koin/core/scope/ScopeDefinition;Lorg/koin/core/definition/BeanDefinition;ZILjava/lang/Object;)V

    .line 184
    nop

    .line 116
    .end local v0    # "this_$iv":Lorg/koin/core/module/Module;
    .end local v2    # "qualifier$iv":Lorg/koin/core/qualifier/Qualifier;
    .end local v3    # "scopeDefinition$iv$iv":Lorg/koin/core/scope/ScopeDefinition;
    .end local v5    # "createdAtStart$iv":Z
    .end local v6    # "beanDefinition$iv$iv":Lorg/koin/core/definition/BeanDefinition;
    .end local v10    # "definition$iv":Lkotlin/jvm/functions/Function2;
    .end local v13    # "options$iv$iv":Lorg/koin/core/definition/Options;
    .end local v18    # "$i$f$single":I
    .end local v19    # "this_$iv$iv":Lorg/koin/core/definition/Definitions;
    .end local v20    # "$i$f$saveSingle":I
    .end local v27    # "override$iv":Z
    return-void
.end method
