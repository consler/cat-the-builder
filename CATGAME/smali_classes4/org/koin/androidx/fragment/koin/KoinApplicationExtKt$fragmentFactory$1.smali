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
    .locals 14

    const-string v0, "$receiver"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    sget-object v0, Lorg/koin/androidx/fragment/koin/KoinApplicationExtKt$fragmentFactory$1$1;->INSTANCE:Lorg/koin/androidx/fragment/koin/KoinApplicationExtKt$fragmentFactory$1$1;

    move-object v5, v0

    check-cast v5, Lkotlin/jvm/functions/Function2;

    const/4 v4, 0x0

    .line 16
    move-object v0, v4

    check-cast v0, Lorg/koin/core/qualifier/Qualifier;

    .line 21
    sget-object v0, Lorg/koin/core/definition/Definitions;->INSTANCE:Lorg/koin/core/definition/Definitions;

    .line 24
    invoke-virtual {p1}, Lorg/koin/core/module/Module;->getRootScope()Lorg/koin/core/scope/ScopeDefinition;

    move-result-object v0

    const/4 v13, 0x0

    .line 25
    invoke-virtual {p1, v13, v13}, Lorg/koin/core/module/Module;->makeOptions(ZZ)Lorg/koin/core/definition/Options;

    move-result-object v8

    .line 36
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v7

    .line 38
    new-instance p1, Lorg/koin/core/definition/BeanDefinition;

    .line 40
    const-class v1, Landroidx/fragment/app/FragmentFactory;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    .line 43
    sget-object v6, Lorg/koin/core/definition/Kind;->Single:Lorg/koin/core/definition/Kind;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0x180

    const/4 v12, 0x0

    move-object v1, p1

    move-object v2, v0

    .line 38
    invoke-direct/range {v1 .. v12}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/scope/ScopeDefinition;Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;Ljava/util/List;Lorg/koin/core/definition/Options;Lorg/koin/core/definition/Properties;Lorg/koin/core/definition/Callbacks;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/4 v1, 0x2

    const/4 v2, 0x0

    .line 46
    invoke-static {v0, p1, v13, v1, v2}, Lorg/koin/core/scope/ScopeDefinition;->save$default(Lorg/koin/core/scope/ScopeDefinition;Lorg/koin/core/definition/BeanDefinition;ZILjava/lang/Object;)V

    return-void
.end method
