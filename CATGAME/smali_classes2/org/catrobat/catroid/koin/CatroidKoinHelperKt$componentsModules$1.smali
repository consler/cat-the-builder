.class final Lorg/catrobat/catroid/koin/CatroidKoinHelperKt$componentsModules$1;
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
    value = "SMAP\nCatroidKoinHelper.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CatroidKoinHelper.kt\norg/catrobat/catroid/koin/CatroidKoinHelperKt$componentsModules$1\n+ 2 Module.kt\norg/koin/core/module/Module\n+ 3 Definitions.kt\norg/koin/core/definition/Definitions\n*L\n1#1,141:1\n69#2,10:142\n69#2,10:172\n92#2,5:202\n69#2,10:220\n69#2,10:250\n92#2,5:280\n92#2,5:298\n92#2,5:316\n69#2,10:334\n69#2,10:364\n15#3,20:152\n15#3,20:182\n81#3:207\n62#3,10:208\n82#3,2:218\n15#3,20:230\n15#3,20:260\n81#3:285\n62#3,10:286\n82#3,2:296\n81#3:303\n62#3,10:304\n82#3,2:314\n81#3:321\n62#3,10:322\n82#3,2:332\n15#3,20:344\n15#3,20:374\n*E\n*S KotlinDebug\n*F\n+ 1 CatroidKoinHelper.kt\norg/catrobat/catroid/koin/CatroidKoinHelperKt$componentsModules$1\n*L\n62#1,10:142\n67#1,10:172\n70#1,5:202\n71#1,10:220\n72#1,10:250\n73#1,5:280\n74#1,5:298\n75#1,5:316\n77#1,10:334\n81#1,10:364\n62#1,20:152\n67#1,20:182\n70#1:207\n70#1,10:208\n70#1,2:218\n71#1,20:230\n72#1,20:260\n73#1:285\n73#1,10:286\n73#1,2:296\n74#1:303\n74#1,10:304\n74#1,2:314\n75#1:321\n75#1,10:322\n75#1,2:332\n77#1,20:344\n81#1,20:374\n*E\n"
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
.field public static final INSTANCE:Lorg/catrobat/catroid/koin/CatroidKoinHelperKt$componentsModules$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/catrobat/catroid/koin/CatroidKoinHelperKt$componentsModules$1;

    invoke-direct {v0}, Lorg/catrobat/catroid/koin/CatroidKoinHelperKt$componentsModules$1;-><init>()V

    sput-object v0, Lorg/catrobat/catroid/koin/CatroidKoinHelperKt$componentsModules$1;->INSTANCE:Lorg/catrobat/catroid/koin/CatroidKoinHelperKt$componentsModules$1;

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

    invoke-virtual {p0, p1}, Lorg/catrobat/catroid/koin/CatroidKoinHelperKt$componentsModules$1;->invoke(Lorg/koin/core/module/Module;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lorg/koin/core/module/Module;)V
    .locals 28
    .param p1, "$this$module"    # Lorg/koin/core/module/Module;

    const-string v0, "$receiver"

    move-object/from16 v1, p1

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    sget-object v0, Lorg/catrobat/catroid/koin/CatroidKoinHelperKt$componentsModules$1$1;->INSTANCE:Lorg/catrobat/catroid/koin/CatroidKoinHelperKt$componentsModules$1$1;

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
    const-class v2, Lorg/catrobat/catroid/db/AppDatabase;

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

    .line 67
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
    sget-object v0, Lorg/catrobat/catroid/koin/CatroidKoinHelperKt$componentsModules$1$2;->INSTANCE:Lorg/catrobat/catroid/koin/CatroidKoinHelperKt$componentsModules$1$2;

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
    const-class v6, Lorg/catrobat/catroid/retrofit/WebService;

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

    .line 70
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
    sget-object v0, Lorg/catrobat/catroid/koin/CatroidKoinHelperKt$componentsModules$1$3;->INSTANCE:Lorg/catrobat/catroid/koin/CatroidKoinHelperKt$componentsModules$1$3;

    move-object v13, v0

    check-cast v13, Lkotlin/jvm/functions/Function2;

    .local v13, "definition$iv":Lkotlin/jvm/functions/Function2;
    move-object/from16 v0, p1

    .line 202
    .restart local v0    # "this_$iv":Lorg/koin/core/module/Module;
    move-object v2, v8

    check-cast v2, Lorg/koin/core/qualifier/Qualifier;

    .line 203
    .restart local v2    # "qualifier$iv":Lorg/koin/core/qualifier/Qualifier;
    const/4 v3, 0x0

    .local v3, "override$iv":Z
    const/4 v5, 0x0

    .line 206
    .local v5, "$i$f$factory":I
    sget-object v6, Lorg/koin/core/definition/Definitions;->INSTANCE:Lorg/koin/core/definition/Definitions;

    .local v6, "this_$iv$iv":Lorg/koin/core/definition/Definitions;
    invoke-virtual {v0}, Lorg/koin/core/module/Module;->getRootScope()Lorg/koin/core/scope/ScopeDefinition;

    move-result-object v7

    const/4 v9, 0x0

    .local v7, "scopeDefinition$iv$iv":Lorg/koin/core/scope/ScopeDefinition;
    invoke-static {v0, v3, v9, v4, v8}, Lorg/koin/core/module/Module;->makeOptions$default(Lorg/koin/core/module/Module;ZZILjava/lang/Object;)Lorg/koin/core/definition/Options;

    move-result-object v16

    .local v16, "options$iv$iv":Lorg/koin/core/definition/Options;
    const/4 v8, 0x0

    .line 207
    .local v8, "$i$f$saveFactory":I
    move-object/from16 v21, v6

    .line 208
    .restart local v21    # "this_$iv$iv$iv":Lorg/koin/core/definition/Definitions;
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v22

    .restart local v22    # "secondaryTypes$iv$iv$iv":Ljava/util/List;
    const/16 v23, 0x0

    .line 210
    .local v23, "$i$f$createFactory":I
    new-instance v24, Lorg/koin/core/definition/BeanDefinition;

    .line 211
    nop

    .line 212
    const-class v9, Landroidx/work/WorkManager;

    invoke-static {v9}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v11

    .line 213
    nop

    .line 214
    nop

    .line 215
    sget-object v14, Lorg/koin/core/definition/Kind;->Factory:Lorg/koin/core/definition/Kind;

    .line 216
    nop

    .line 217
    nop

    .line 210
    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x180

    const/16 v20, 0x0

    move-object/from16 v9, v24

    move-object v10, v7

    move-object v12, v2

    move-object/from16 v15, v22

    invoke-direct/range {v9 .. v20}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/scope/ScopeDefinition;Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;Ljava/util/List;Lorg/koin/core/definition/Options;Lorg/koin/core/definition/Properties;Lorg/koin/core/definition/Callbacks;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 207
    .end local v21    # "this_$iv$iv$iv":Lorg/koin/core/definition/Definitions;
    .end local v22    # "secondaryTypes$iv$iv$iv":Ljava/util/List;
    .end local v23    # "$i$f$createFactory":I
    nop

    .line 218
    .local v9, "beanDefinition$iv$iv":Lorg/koin/core/definition/BeanDefinition;
    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static {v7, v9, v10, v4, v11}, Lorg/koin/core/scope/ScopeDefinition;->save$default(Lorg/koin/core/scope/ScopeDefinition;Lorg/koin/core/definition/BeanDefinition;ZILjava/lang/Object;)V

    .line 219
    nop

    .line 71
    .end local v0    # "this_$iv":Lorg/koin/core/module/Module;
    .end local v2    # "qualifier$iv":Lorg/koin/core/qualifier/Qualifier;
    .end local v3    # "override$iv":Z
    .end local v5    # "$i$f$factory":I
    .end local v6    # "this_$iv$iv":Lorg/koin/core/definition/Definitions;
    .end local v7    # "scopeDefinition$iv$iv":Lorg/koin/core/scope/ScopeDefinition;
    .end local v8    # "$i$f$saveFactory":I
    .end local v9    # "beanDefinition$iv$iv":Lorg/koin/core/definition/BeanDefinition;
    .end local v13    # "definition$iv":Lkotlin/jvm/functions/Function2;
    .end local v16    # "options$iv$iv":Lorg/koin/core/definition/Options;
    sget-object v0, Lorg/catrobat/catroid/koin/CatroidKoinHelperKt$componentsModules$1$4;->INSTANCE:Lorg/catrobat/catroid/koin/CatroidKoinHelperKt$componentsModules$1$4;

    move-object/from16 v16, v0

    check-cast v16, Lkotlin/jvm/functions/Function2;

    .local v16, "definition$iv":Lkotlin/jvm/functions/Function2;
    move-object/from16 v0, p1

    .line 220
    .restart local v0    # "this_$iv":Lorg/koin/core/module/Module;
    move-object v2, v11

    check-cast v2, Lorg/koin/core/qualifier/Qualifier;

    .line 221
    .restart local v2    # "qualifier$iv":Lorg/koin/core/qualifier/Qualifier;
    const/4 v3, 0x0

    .line 222
    .local v3, "createdAtStart$iv":Z
    const/4 v5, 0x0

    .local v5, "override$iv":Z
    const/4 v6, 0x0

    .line 225
    .local v6, "$i$f$single":I
    sget-object v7, Lorg/koin/core/definition/Definitions;->INSTANCE:Lorg/koin/core/definition/Definitions;

    .line 226
    nop

    .line 227
    nop

    .line 228
    invoke-virtual {v0}, Lorg/koin/core/module/Module;->getRootScope()Lorg/koin/core/scope/ScopeDefinition;

    move-result-object v8

    .line 229
    invoke-virtual {v0, v5, v3}, Lorg/koin/core/module/Module;->makeOptions(ZZ)Lorg/koin/core/definition/Options;

    move-result-object v19

    .line 225
    .local v7, "this_$iv$iv":Lorg/koin/core/definition/Definitions;
    .local v8, "scopeDefinition$iv$iv":Lorg/koin/core/scope/ScopeDefinition;
    .local v19, "options$iv$iv":Lorg/koin/core/definition/Options;
    const/4 v9, 0x0

    .line 230
    .local v9, "$i$f$saveSingle":I
    move-object v10, v7

    .line 240
    .local v10, "this_$iv$iv$iv":Lorg/koin/core/definition/Definitions;
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v11

    .local v11, "secondaryTypes$iv$iv$iv":Ljava/util/List;
    const/16 v24, 0x0

    .line 242
    .local v24, "$i$f$createSingle":I
    new-instance v25, Lorg/koin/core/definition/BeanDefinition;

    .line 243
    nop

    .line 244
    const-class v12, Lorg/catrobat/catroid/ProjectManager;

    invoke-static {v12}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v14

    .line 245
    nop

    .line 246
    nop

    .line 247
    sget-object v17, Lorg/koin/core/definition/Kind;->Single:Lorg/koin/core/definition/Kind;

    .line 248
    nop

    .line 249
    nop

    .line 242
    const/16 v21, 0x0

    const/16 v22, 0x180

    const/16 v23, 0x0

    move-object/from16 v12, v25

    move-object v13, v8

    move-object v15, v2

    move-object/from16 v18, v11

    invoke-direct/range {v12 .. v23}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/scope/ScopeDefinition;Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;Ljava/util/List;Lorg/koin/core/definition/Options;Lorg/koin/core/definition/Properties;Lorg/koin/core/definition/Callbacks;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 230
    .end local v10    # "this_$iv$iv$iv":Lorg/koin/core/definition/Definitions;
    .end local v11    # "secondaryTypes$iv$iv$iv":Ljava/util/List;
    .end local v24    # "$i$f$createSingle":I
    move-object/from16 v10, v25

    .line 231
    .local v10, "beanDefinition$iv$iv":Lorg/koin/core/definition/BeanDefinition;
    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static {v8, v10, v11, v4, v12}, Lorg/koin/core/scope/ScopeDefinition;->save$default(Lorg/koin/core/scope/ScopeDefinition;Lorg/koin/core/definition/BeanDefinition;ZILjava/lang/Object;)V

    .line 232
    nop

    .line 72
    .end local v0    # "this_$iv":Lorg/koin/core/module/Module;
    .end local v2    # "qualifier$iv":Lorg/koin/core/qualifier/Qualifier;
    .end local v3    # "createdAtStart$iv":Z
    .end local v5    # "override$iv":Z
    .end local v6    # "$i$f$single":I
    .end local v7    # "this_$iv$iv":Lorg/koin/core/definition/Definitions;
    .end local v8    # "scopeDefinition$iv$iv":Lorg/koin/core/scope/ScopeDefinition;
    .end local v9    # "$i$f$saveSingle":I
    .end local v10    # "beanDefinition$iv$iv":Lorg/koin/core/definition/BeanDefinition;
    .end local v16    # "definition$iv":Lkotlin/jvm/functions/Function2;
    .end local v19    # "options$iv$iv":Lorg/koin/core/definition/Options;
    sget-object v0, Lorg/catrobat/catroid/koin/CatroidKoinHelperKt$componentsModules$1$5;->INSTANCE:Lorg/catrobat/catroid/koin/CatroidKoinHelperKt$componentsModules$1$5;

    move-object/from16 v17, v0

    check-cast v17, Lkotlin/jvm/functions/Function2;

    .local v17, "definition$iv":Lkotlin/jvm/functions/Function2;
    move-object/from16 v0, p1

    .line 250
    .restart local v0    # "this_$iv":Lorg/koin/core/module/Module;
    move-object v2, v12

    check-cast v2, Lorg/koin/core/qualifier/Qualifier;

    .line 251
    .restart local v2    # "qualifier$iv":Lorg/koin/core/qualifier/Qualifier;
    const/4 v3, 0x0

    .line 252
    .restart local v3    # "createdAtStart$iv":Z
    const/4 v5, 0x0

    .restart local v5    # "override$iv":Z
    const/4 v6, 0x0

    .line 255
    .restart local v6    # "$i$f$single":I
    sget-object v7, Lorg/koin/core/definition/Definitions;->INSTANCE:Lorg/koin/core/definition/Definitions;

    .line 256
    nop

    .line 257
    nop

    .line 258
    invoke-virtual {v0}, Lorg/koin/core/module/Module;->getRootScope()Lorg/koin/core/scope/ScopeDefinition;

    move-result-object v8

    .line 259
    invoke-virtual {v0, v5, v3}, Lorg/koin/core/module/Module;->makeOptions(ZZ)Lorg/koin/core/definition/Options;

    move-result-object v20

    .line 255
    .restart local v7    # "this_$iv$iv":Lorg/koin/core/definition/Definitions;
    .restart local v8    # "scopeDefinition$iv$iv":Lorg/koin/core/scope/ScopeDefinition;
    .local v20, "options$iv$iv":Lorg/koin/core/definition/Options;
    const/4 v9, 0x0

    .line 260
    .restart local v9    # "$i$f$saveSingle":I
    move-object v10, v7

    .line 270
    .local v10, "this_$iv$iv$iv":Lorg/koin/core/definition/Definitions;
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v11

    .restart local v11    # "secondaryTypes$iv$iv$iv":Ljava/util/List;
    const/4 v12, 0x0

    .line 272
    .local v12, "$i$f$createSingle":I
    new-instance v25, Lorg/koin/core/definition/BeanDefinition;

    .line 273
    nop

    .line 274
    const-class v13, Lorg/catrobat/catroid/utils/NetworkConnectionMonitor;

    invoke-static {v13}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v15

    .line 275
    nop

    .line 276
    nop

    .line 277
    sget-object v18, Lorg/koin/core/definition/Kind;->Single:Lorg/koin/core/definition/Kind;

    .line 278
    nop

    .line 279
    nop

    .line 272
    const/16 v22, 0x0

    const/16 v23, 0x180

    const/16 v24, 0x0

    move-object/from16 v13, v25

    move-object v14, v8

    move-object/from16 v16, v2

    move-object/from16 v19, v11

    invoke-direct/range {v13 .. v24}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/scope/ScopeDefinition;Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;Ljava/util/List;Lorg/koin/core/definition/Options;Lorg/koin/core/definition/Properties;Lorg/koin/core/definition/Callbacks;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 260
    .end local v10    # "this_$iv$iv$iv":Lorg/koin/core/definition/Definitions;
    .end local v11    # "secondaryTypes$iv$iv$iv":Ljava/util/List;
    .end local v12    # "$i$f$createSingle":I
    move-object/from16 v10, v25

    .line 261
    .local v10, "beanDefinition$iv$iv":Lorg/koin/core/definition/BeanDefinition;
    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static {v8, v10, v11, v4, v12}, Lorg/koin/core/scope/ScopeDefinition;->save$default(Lorg/koin/core/scope/ScopeDefinition;Lorg/koin/core/definition/BeanDefinition;ZILjava/lang/Object;)V

    .line 262
    nop

    .line 73
    .end local v0    # "this_$iv":Lorg/koin/core/module/Module;
    .end local v2    # "qualifier$iv":Lorg/koin/core/qualifier/Qualifier;
    .end local v3    # "createdAtStart$iv":Z
    .end local v5    # "override$iv":Z
    .end local v6    # "$i$f$single":I
    .end local v7    # "this_$iv$iv":Lorg/koin/core/definition/Definitions;
    .end local v8    # "scopeDefinition$iv$iv":Lorg/koin/core/scope/ScopeDefinition;
    .end local v9    # "$i$f$saveSingle":I
    .end local v10    # "beanDefinition$iv$iv":Lorg/koin/core/definition/BeanDefinition;
    .end local v17    # "definition$iv":Lkotlin/jvm/functions/Function2;
    .end local v20    # "options$iv$iv":Lorg/koin/core/definition/Options;
    sget-object v0, Lorg/catrobat/catroid/koin/CatroidKoinHelperKt$componentsModules$1$6;->INSTANCE:Lorg/catrobat/catroid/koin/CatroidKoinHelperKt$componentsModules$1$6;

    move-object/from16 v17, v0

    check-cast v17, Lkotlin/jvm/functions/Function2;

    .restart local v17    # "definition$iv":Lkotlin/jvm/functions/Function2;
    move-object/from16 v0, p1

    .line 280
    .restart local v0    # "this_$iv":Lorg/koin/core/module/Module;
    move-object v2, v12

    check-cast v2, Lorg/koin/core/qualifier/Qualifier;

    .line 281
    .restart local v2    # "qualifier$iv":Lorg/koin/core/qualifier/Qualifier;
    const/4 v3, 0x0

    .local v3, "override$iv":Z
    const/4 v5, 0x0

    .line 284
    .local v5, "$i$f$factory":I
    sget-object v6, Lorg/koin/core/definition/Definitions;->INSTANCE:Lorg/koin/core/definition/Definitions;

    .local v6, "this_$iv$iv":Lorg/koin/core/definition/Definitions;
    invoke-virtual {v0}, Lorg/koin/core/module/Module;->getRootScope()Lorg/koin/core/scope/ScopeDefinition;

    move-result-object v7

    const/4 v8, 0x0

    .local v7, "scopeDefinition$iv$iv":Lorg/koin/core/scope/ScopeDefinition;
    invoke-static {v0, v3, v8, v4, v12}, Lorg/koin/core/module/Module;->makeOptions$default(Lorg/koin/core/module/Module;ZZILjava/lang/Object;)Lorg/koin/core/definition/Options;

    move-result-object v20

    .restart local v20    # "options$iv$iv":Lorg/koin/core/definition/Options;
    const/4 v8, 0x0

    .line 285
    .local v8, "$i$f$saveFactory":I
    move-object v9, v6

    .line 286
    .local v9, "this_$iv$iv$iv":Lorg/koin/core/definition/Definitions;
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v10

    .local v10, "secondaryTypes$iv$iv$iv":Ljava/util/List;
    const/4 v11, 0x0

    .line 288
    .local v11, "$i$f$createFactory":I
    new-instance v12, Lorg/koin/core/definition/BeanDefinition;

    .line 289
    nop

    .line 290
    const-class v13, Lcom/huawei/hms/api/HuaweiApiAvailability;

    invoke-static {v13}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v15

    .line 291
    nop

    .line 292
    nop

    .line 293
    sget-object v18, Lorg/koin/core/definition/Kind;->Factory:Lorg/koin/core/definition/Kind;

    .line 294
    nop

    .line 295
    nop

    .line 288
    move-object v13, v12

    move-object v14, v7

    move-object/from16 v16, v2

    move-object/from16 v19, v10

    invoke-direct/range {v13 .. v24}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/scope/ScopeDefinition;Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;Ljava/util/List;Lorg/koin/core/definition/Options;Lorg/koin/core/definition/Properties;Lorg/koin/core/definition/Callbacks;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 285
    .end local v9    # "this_$iv$iv$iv":Lorg/koin/core/definition/Definitions;
    .end local v10    # "secondaryTypes$iv$iv$iv":Ljava/util/List;
    .end local v11    # "$i$f$createFactory":I
    move-object v9, v12

    .line 296
    .local v9, "beanDefinition$iv$iv":Lorg/koin/core/definition/BeanDefinition;
    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static {v7, v9, v10, v4, v11}, Lorg/koin/core/scope/ScopeDefinition;->save$default(Lorg/koin/core/scope/ScopeDefinition;Lorg/koin/core/definition/BeanDefinition;ZILjava/lang/Object;)V

    .line 297
    nop

    .line 74
    .end local v0    # "this_$iv":Lorg/koin/core/module/Module;
    .end local v2    # "qualifier$iv":Lorg/koin/core/qualifier/Qualifier;
    .end local v3    # "override$iv":Z
    .end local v5    # "$i$f$factory":I
    .end local v6    # "this_$iv$iv":Lorg/koin/core/definition/Definitions;
    .end local v7    # "scopeDefinition$iv$iv":Lorg/koin/core/scope/ScopeDefinition;
    .end local v8    # "$i$f$saveFactory":I
    .end local v9    # "beanDefinition$iv$iv":Lorg/koin/core/definition/BeanDefinition;
    .end local v17    # "definition$iv":Lkotlin/jvm/functions/Function2;
    .end local v20    # "options$iv$iv":Lorg/koin/core/definition/Options;
    sget-object v0, Lorg/catrobat/catroid/koin/CatroidKoinHelperKt$componentsModules$1$7;->INSTANCE:Lorg/catrobat/catroid/koin/CatroidKoinHelperKt$componentsModules$1$7;

    move-object/from16 v16, v0

    check-cast v16, Lkotlin/jvm/functions/Function2;

    .restart local v16    # "definition$iv":Lkotlin/jvm/functions/Function2;
    move-object/from16 v0, p1

    .line 298
    .restart local v0    # "this_$iv":Lorg/koin/core/module/Module;
    move-object v2, v11

    check-cast v2, Lorg/koin/core/qualifier/Qualifier;

    .line 299
    .restart local v2    # "qualifier$iv":Lorg/koin/core/qualifier/Qualifier;
    const/4 v3, 0x0

    .restart local v3    # "override$iv":Z
    const/4 v5, 0x0

    .line 302
    .restart local v5    # "$i$f$factory":I
    sget-object v6, Lorg/koin/core/definition/Definitions;->INSTANCE:Lorg/koin/core/definition/Definitions;

    .restart local v6    # "this_$iv$iv":Lorg/koin/core/definition/Definitions;
    invoke-virtual {v0}, Lorg/koin/core/module/Module;->getRootScope()Lorg/koin/core/scope/ScopeDefinition;

    move-result-object v7

    const/4 v8, 0x0

    .restart local v7    # "scopeDefinition$iv$iv":Lorg/koin/core/scope/ScopeDefinition;
    invoke-static {v0, v3, v8, v4, v11}, Lorg/koin/core/module/Module;->makeOptions$default(Lorg/koin/core/module/Module;ZZILjava/lang/Object;)Lorg/koin/core/definition/Options;

    move-result-object v19

    .restart local v19    # "options$iv$iv":Lorg/koin/core/definition/Options;
    const/4 v8, 0x0

    .line 303
    .restart local v8    # "$i$f$saveFactory":I
    move-object v9, v6

    .line 304
    .local v9, "this_$iv$iv$iv":Lorg/koin/core/definition/Definitions;
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v10

    .restart local v10    # "secondaryTypes$iv$iv$iv":Ljava/util/List;
    const/4 v11, 0x0

    .line 306
    .restart local v11    # "$i$f$createFactory":I
    new-instance v24, Lorg/koin/core/definition/BeanDefinition;

    .line 307
    nop

    .line 308
    const-class v12, Lcom/google/android/gms/common/GoogleApiAvailability;

    invoke-static {v12}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v14

    .line 309
    nop

    .line 310
    nop

    .line 311
    sget-object v17, Lorg/koin/core/definition/Kind;->Factory:Lorg/koin/core/definition/Kind;

    .line 312
    nop

    .line 313
    nop

    .line 306
    const/16 v20, 0x0

    const/16 v22, 0x180

    const/16 v23, 0x0

    move-object/from16 v12, v24

    move-object v13, v7

    move-object v15, v2

    move-object/from16 v18, v10

    invoke-direct/range {v12 .. v23}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/scope/ScopeDefinition;Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;Ljava/util/List;Lorg/koin/core/definition/Options;Lorg/koin/core/definition/Properties;Lorg/koin/core/definition/Callbacks;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 303
    .end local v9    # "this_$iv$iv$iv":Lorg/koin/core/definition/Definitions;
    .end local v10    # "secondaryTypes$iv$iv$iv":Ljava/util/List;
    .end local v11    # "$i$f$createFactory":I
    move-object/from16 v9, v24

    .line 314
    .local v9, "beanDefinition$iv$iv":Lorg/koin/core/definition/BeanDefinition;
    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static {v7, v9, v10, v4, v11}, Lorg/koin/core/scope/ScopeDefinition;->save$default(Lorg/koin/core/scope/ScopeDefinition;Lorg/koin/core/definition/BeanDefinition;ZILjava/lang/Object;)V

    .line 315
    nop

    .line 75
    .end local v0    # "this_$iv":Lorg/koin/core/module/Module;
    .end local v2    # "qualifier$iv":Lorg/koin/core/qualifier/Qualifier;
    .end local v3    # "override$iv":Z
    .end local v5    # "$i$f$factory":I
    .end local v6    # "this_$iv$iv":Lorg/koin/core/definition/Definitions;
    .end local v7    # "scopeDefinition$iv$iv":Lorg/koin/core/scope/ScopeDefinition;
    .end local v8    # "$i$f$saveFactory":I
    .end local v9    # "beanDefinition$iv$iv":Lorg/koin/core/definition/BeanDefinition;
    .end local v16    # "definition$iv":Lkotlin/jvm/functions/Function2;
    .end local v19    # "options$iv$iv":Lorg/koin/core/definition/Options;
    sget-object v0, Lorg/catrobat/catroid/koin/CatroidKoinHelperKt$componentsModules$1$8;->INSTANCE:Lorg/catrobat/catroid/koin/CatroidKoinHelperKt$componentsModules$1$8;

    move-object/from16 v16, v0

    check-cast v16, Lkotlin/jvm/functions/Function2;

    .restart local v16    # "definition$iv":Lkotlin/jvm/functions/Function2;
    move-object/from16 v0, p1

    .line 316
    .restart local v0    # "this_$iv":Lorg/koin/core/module/Module;
    move-object v2, v11

    check-cast v2, Lorg/koin/core/qualifier/Qualifier;

    .line 317
    .restart local v2    # "qualifier$iv":Lorg/koin/core/qualifier/Qualifier;
    const/4 v3, 0x0

    .restart local v3    # "override$iv":Z
    const/4 v5, 0x0

    .line 320
    .restart local v5    # "$i$f$factory":I
    sget-object v6, Lorg/koin/core/definition/Definitions;->INSTANCE:Lorg/koin/core/definition/Definitions;

    .restart local v6    # "this_$iv$iv":Lorg/koin/core/definition/Definitions;
    invoke-virtual {v0}, Lorg/koin/core/module/Module;->getRootScope()Lorg/koin/core/scope/ScopeDefinition;

    move-result-object v7

    const/4 v8, 0x0

    .restart local v7    # "scopeDefinition$iv$iv":Lorg/koin/core/scope/ScopeDefinition;
    invoke-static {v0, v3, v8, v4, v11}, Lorg/koin/core/module/Module;->makeOptions$default(Lorg/koin/core/module/Module;ZZILjava/lang/Object;)Lorg/koin/core/definition/Options;

    move-result-object v19

    .restart local v19    # "options$iv$iv":Lorg/koin/core/definition/Options;
    const/4 v8, 0x0

    .line 321
    .restart local v8    # "$i$f$saveFactory":I
    move-object v9, v6

    .line 322
    .local v9, "this_$iv$iv$iv":Lorg/koin/core/definition/Definitions;
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v10

    .restart local v10    # "secondaryTypes$iv$iv$iv":Ljava/util/List;
    const/4 v11, 0x0

    .line 324
    .restart local v11    # "$i$f$createFactory":I
    new-instance v24, Lorg/koin/core/definition/BeanDefinition;

    .line 325
    nop

    .line 326
    const-class v12, Lorg/catrobat/catroid/utils/MobileServiceAvailability;

    invoke-static {v12}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v14

    .line 327
    nop

    .line 328
    nop

    .line 329
    sget-object v17, Lorg/koin/core/definition/Kind;->Factory:Lorg/koin/core/definition/Kind;

    .line 330
    nop

    .line 331
    nop

    .line 324
    move-object/from16 v12, v24

    move-object v13, v7

    move-object v15, v2

    move-object/from16 v18, v10

    invoke-direct/range {v12 .. v23}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/scope/ScopeDefinition;Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;Ljava/util/List;Lorg/koin/core/definition/Options;Lorg/koin/core/definition/Properties;Lorg/koin/core/definition/Callbacks;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 321
    .end local v9    # "this_$iv$iv$iv":Lorg/koin/core/definition/Definitions;
    .end local v10    # "secondaryTypes$iv$iv$iv":Ljava/util/List;
    .end local v11    # "$i$f$createFactory":I
    move-object/from16 v9, v24

    .line 332
    .local v9, "beanDefinition$iv$iv":Lorg/koin/core/definition/BeanDefinition;
    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static {v7, v9, v10, v4, v11}, Lorg/koin/core/scope/ScopeDefinition;->save$default(Lorg/koin/core/scope/ScopeDefinition;Lorg/koin/core/definition/BeanDefinition;ZILjava/lang/Object;)V

    .line 333
    nop

    .line 77
    .end local v0    # "this_$iv":Lorg/koin/core/module/Module;
    .end local v2    # "qualifier$iv":Lorg/koin/core/qualifier/Qualifier;
    .end local v3    # "override$iv":Z
    .end local v5    # "$i$f$factory":I
    .end local v6    # "this_$iv$iv":Lorg/koin/core/definition/Definitions;
    .end local v7    # "scopeDefinition$iv$iv":Lorg/koin/core/scope/ScopeDefinition;
    .end local v8    # "$i$f$saveFactory":I
    .end local v9    # "beanDefinition$iv$iv":Lorg/koin/core/definition/BeanDefinition;
    .end local v16    # "definition$iv":Lkotlin/jvm/functions/Function2;
    .end local v19    # "options$iv$iv":Lorg/koin/core/definition/Options;
    sget-object v0, Lorg/catrobat/catroid/koin/CatroidKoinHelperKt$componentsModules$1$9;->INSTANCE:Lorg/catrobat/catroid/koin/CatroidKoinHelperKt$componentsModules$1$9;

    move-object/from16 v16, v0

    check-cast v16, Lkotlin/jvm/functions/Function2;

    .restart local v16    # "definition$iv":Lkotlin/jvm/functions/Function2;
    move-object/from16 v0, p1

    .line 334
    .restart local v0    # "this_$iv":Lorg/koin/core/module/Module;
    move-object v2, v11

    check-cast v2, Lorg/koin/core/qualifier/Qualifier;

    .line 335
    .restart local v2    # "qualifier$iv":Lorg/koin/core/qualifier/Qualifier;
    const/4 v3, 0x0

    .line 336
    .local v3, "createdAtStart$iv":Z
    const/4 v5, 0x0

    .local v5, "override$iv":Z
    const/4 v6, 0x0

    .line 339
    .local v6, "$i$f$single":I
    sget-object v7, Lorg/koin/core/definition/Definitions;->INSTANCE:Lorg/koin/core/definition/Definitions;

    .line 340
    nop

    .line 341
    nop

    .line 342
    invoke-virtual {v0}, Lorg/koin/core/module/Module;->getRootScope()Lorg/koin/core/scope/ScopeDefinition;

    move-result-object v8

    .line 343
    invoke-virtual {v0, v5, v3}, Lorg/koin/core/module/Module;->makeOptions(ZZ)Lorg/koin/core/definition/Options;

    move-result-object v19

    .line 339
    .local v7, "this_$iv$iv":Lorg/koin/core/definition/Definitions;
    .local v8, "scopeDefinition$iv$iv":Lorg/koin/core/scope/ScopeDefinition;
    .restart local v19    # "options$iv$iv":Lorg/koin/core/definition/Options;
    const/4 v9, 0x0

    .line 344
    .local v9, "$i$f$saveSingle":I
    move-object v10, v7

    .line 354
    .local v10, "this_$iv$iv$iv":Lorg/koin/core/definition/Definitions;
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v11

    .local v11, "secondaryTypes$iv$iv$iv":Ljava/util/List;
    const/16 v24, 0x0

    .line 356
    .restart local v24    # "$i$f$createSingle":I
    new-instance v25, Lorg/koin/core/definition/BeanDefinition;

    .line 357
    nop

    .line 358
    const-class v12, Lorg/catrobat/catroid/sync/FeaturedProjectsSync;

    invoke-static {v12}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v14

    .line 359
    nop

    .line 360
    nop

    .line 361
    sget-object v17, Lorg/koin/core/definition/Kind;->Single:Lorg/koin/core/definition/Kind;

    .line 362
    nop

    .line 363
    nop

    .line 356
    move-object/from16 v12, v25

    move-object v13, v8

    move-object v15, v2

    move-object/from16 v18, v11

    invoke-direct/range {v12 .. v23}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/scope/ScopeDefinition;Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;Ljava/util/List;Lorg/koin/core/definition/Options;Lorg/koin/core/definition/Properties;Lorg/koin/core/definition/Callbacks;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 344
    .end local v10    # "this_$iv$iv$iv":Lorg/koin/core/definition/Definitions;
    .end local v11    # "secondaryTypes$iv$iv$iv":Ljava/util/List;
    .end local v24    # "$i$f$createSingle":I
    move-object/from16 v10, v25

    .line 345
    .local v10, "beanDefinition$iv$iv":Lorg/koin/core/definition/BeanDefinition;
    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static {v8, v10, v11, v4, v12}, Lorg/koin/core/scope/ScopeDefinition;->save$default(Lorg/koin/core/scope/ScopeDefinition;Lorg/koin/core/definition/BeanDefinition;ZILjava/lang/Object;)V

    .line 346
    nop

    .line 81
    .end local v0    # "this_$iv":Lorg/koin/core/module/Module;
    .end local v2    # "qualifier$iv":Lorg/koin/core/qualifier/Qualifier;
    .end local v3    # "createdAtStart$iv":Z
    .end local v5    # "override$iv":Z
    .end local v6    # "$i$f$single":I
    .end local v7    # "this_$iv$iv":Lorg/koin/core/definition/Definitions;
    .end local v8    # "scopeDefinition$iv$iv":Lorg/koin/core/scope/ScopeDefinition;
    .end local v9    # "$i$f$saveSingle":I
    .end local v10    # "beanDefinition$iv$iv":Lorg/koin/core/definition/BeanDefinition;
    .end local v16    # "definition$iv":Lkotlin/jvm/functions/Function2;
    .end local v19    # "options$iv$iv":Lorg/koin/core/definition/Options;
    sget-object v0, Lorg/catrobat/catroid/koin/CatroidKoinHelperKt$componentsModules$1$10;->INSTANCE:Lorg/catrobat/catroid/koin/CatroidKoinHelperKt$componentsModules$1$10;

    move-object/from16 v17, v0

    check-cast v17, Lkotlin/jvm/functions/Function2;

    .restart local v17    # "definition$iv":Lkotlin/jvm/functions/Function2;
    move-object/from16 v0, p1

    .line 364
    .restart local v0    # "this_$iv":Lorg/koin/core/module/Module;
    move-object v2, v12

    check-cast v2, Lorg/koin/core/qualifier/Qualifier;

    .line 365
    .restart local v2    # "qualifier$iv":Lorg/koin/core/qualifier/Qualifier;
    const/4 v3, 0x0

    .line 366
    .restart local v3    # "createdAtStart$iv":Z
    const/4 v5, 0x0

    .restart local v5    # "override$iv":Z
    const/4 v6, 0x0

    .line 369
    .restart local v6    # "$i$f$single":I
    sget-object v7, Lorg/koin/core/definition/Definitions;->INSTANCE:Lorg/koin/core/definition/Definitions;

    .line 370
    nop

    .line 371
    nop

    .line 372
    invoke-virtual {v0}, Lorg/koin/core/module/Module;->getRootScope()Lorg/koin/core/scope/ScopeDefinition;

    move-result-object v8

    .line 373
    invoke-virtual {v0, v5, v3}, Lorg/koin/core/module/Module;->makeOptions(ZZ)Lorg/koin/core/definition/Options;

    move-result-object v20

    .line 369
    .restart local v7    # "this_$iv$iv":Lorg/koin/core/definition/Definitions;
    .restart local v8    # "scopeDefinition$iv$iv":Lorg/koin/core/scope/ScopeDefinition;
    .restart local v20    # "options$iv$iv":Lorg/koin/core/definition/Options;
    const/4 v9, 0x0

    .line 374
    .restart local v9    # "$i$f$saveSingle":I
    move-object v10, v7

    .line 384
    .local v10, "this_$iv$iv$iv":Lorg/koin/core/definition/Definitions;
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v11

    .restart local v11    # "secondaryTypes$iv$iv$iv":Ljava/util/List;
    const/4 v12, 0x0

    .line 386
    .restart local v12    # "$i$f$createSingle":I
    new-instance v25, Lorg/koin/core/definition/BeanDefinition;

    .line 387
    nop

    .line 388
    const-class v13, Lorg/catrobat/catroid/sync/ProjectsCategoriesSync;

    invoke-static {v13}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v15

    .line 389
    nop

    .line 390
    nop

    .line 391
    sget-object v18, Lorg/koin/core/definition/Kind;->Single:Lorg/koin/core/definition/Kind;

    .line 392
    nop

    .line 393
    nop

    .line 386
    const/16 v22, 0x0

    const/16 v23, 0x180

    const/16 v24, 0x0

    move-object/from16 v13, v25

    move-object v14, v8

    move-object/from16 v16, v2

    move-object/from16 v19, v11

    invoke-direct/range {v13 .. v24}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/scope/ScopeDefinition;Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;Ljava/util/List;Lorg/koin/core/definition/Options;Lorg/koin/core/definition/Properties;Lorg/koin/core/definition/Callbacks;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 374
    .end local v10    # "this_$iv$iv$iv":Lorg/koin/core/definition/Definitions;
    .end local v11    # "secondaryTypes$iv$iv$iv":Ljava/util/List;
    .end local v12    # "$i$f$createSingle":I
    move-object/from16 v10, v25

    .line 375
    .local v10, "beanDefinition$iv$iv":Lorg/koin/core/definition/BeanDefinition;
    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static {v8, v10, v11, v4, v12}, Lorg/koin/core/scope/ScopeDefinition;->save$default(Lorg/koin/core/scope/ScopeDefinition;Lorg/koin/core/definition/BeanDefinition;ZILjava/lang/Object;)V

    .line 376
    nop

    .line 84
    .end local v0    # "this_$iv":Lorg/koin/core/module/Module;
    .end local v2    # "qualifier$iv":Lorg/koin/core/qualifier/Qualifier;
    .end local v3    # "createdAtStart$iv":Z
    .end local v5    # "override$iv":Z
    .end local v6    # "$i$f$single":I
    .end local v7    # "this_$iv$iv":Lorg/koin/core/definition/Definitions;
    .end local v8    # "scopeDefinition$iv$iv":Lorg/koin/core/scope/ScopeDefinition;
    .end local v9    # "$i$f$saveSingle":I
    .end local v10    # "beanDefinition$iv$iv":Lorg/koin/core/definition/BeanDefinition;
    .end local v17    # "definition$iv":Lkotlin/jvm/functions/Function2;
    .end local v20    # "options$iv$iv":Lorg/koin/core/definition/Options;
    return-void
.end method
