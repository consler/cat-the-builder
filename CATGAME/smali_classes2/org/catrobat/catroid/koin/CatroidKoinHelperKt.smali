.class public final Lorg/catrobat/catroid/koin/CatroidKoinHelperKt;
.super Ljava/lang/Object;
.source "CatroidKoinHelper.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000 \n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010 \n\u0002\u0008\t\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u001a\u001c\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00132\u000c\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u00020\u00010\u0007\"\u0011\u0010\u0000\u001a\u00020\u0001\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0002\u0010\u0003\"\u0011\u0010\u0004\u001a\u00020\u0001\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0003\"\u0017\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00010\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\t\"\u0011\u0010\n\u001a\u00020\u0001\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u0003\"\u0011\u0010\u000c\u001a\u00020\u0001\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u0003\"\u0011\u0010\u000e\u001a\u00020\u0001\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0003\u00a8\u0006\u0015"
    }
    d2 = {
        "adapterModules",
        "Lorg/koin/core/module/Module;",
        "getAdapterModules",
        "()Lorg/koin/core/module/Module;",
        "componentsModules",
        "getComponentsModules",
        "myModules",
        "",
        "getMyModules",
        "()Ljava/util/List;",
        "repositoryModules",
        "getRepositoryModules",
        "speechModules",
        "getSpeechModules",
        "viewModelModules",
        "getViewModelModules",
        "start",
        "",
        "application",
        "Landroid/app/Application;",
        "modules",
        "catroid_catroidDebug"
    }
    k = 0x2
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# static fields
.field private static final adapterModules:Lorg/koin/core/module/Module;

.field private static final componentsModules:Lorg/koin/core/module/Module;

.field private static final myModules:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/koin/core/module/Module;",
            ">;"
        }
    .end annotation
.end field

.field private static final repositoryModules:Lorg/koin/core/module/Module;

.field private static final speechModules:Lorg/koin/core/module/Module;

.field private static final viewModelModules:Lorg/koin/core/module/Module;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 61
    sget-object v0, Lorg/catrobat/catroid/koin/CatroidKoinHelperKt$componentsModules$1;->INSTANCE:Lorg/catrobat/catroid/koin/CatroidKoinHelperKt$componentsModules$1;

    check-cast v0, Lkotlin/jvm/functions/Function1;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Lorg/koin/dsl/ModuleKt;->module(ZZLkotlin/jvm/functions/Function1;)Lorg/koin/core/module/Module;

    move-result-object v0

    sput-object v0, Lorg/catrobat/catroid/koin/CatroidKoinHelperKt;->componentsModules:Lorg/koin/core/module/Module;

    .line 90
    sget-object v0, Lorg/catrobat/catroid/koin/CatroidKoinHelperKt$viewModelModules$1;->INSTANCE:Lorg/catrobat/catroid/koin/CatroidKoinHelperKt$viewModelModules$1;

    check-cast v0, Lkotlin/jvm/functions/Function1;

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-static {v2, v2, v0, v3, v4}, Lorg/koin/dsl/ModuleKt;->module$default(ZZLkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lorg/koin/core/module/Module;

    move-result-object v0

    sput-object v0, Lorg/catrobat/catroid/koin/CatroidKoinHelperKt;->viewModelModules:Lorg/koin/core/module/Module;

    .line 94
    sget-object v0, Lorg/catrobat/catroid/koin/CatroidKoinHelperKt$repositoryModules$1;->INSTANCE:Lorg/catrobat/catroid/koin/CatroidKoinHelperKt$repositoryModules$1;

    check-cast v0, Lkotlin/jvm/functions/Function1;

    invoke-static {v2, v2, v0, v3, v4}, Lorg/koin/dsl/ModuleKt;->module$default(ZZLkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lorg/koin/core/module/Module;

    move-result-object v0

    sput-object v0, Lorg/catrobat/catroid/koin/CatroidKoinHelperKt;->repositoryModules:Lorg/koin/core/module/Module;

    .line 108
    sget-object v0, Lorg/catrobat/catroid/koin/CatroidKoinHelperKt$adapterModules$1;->INSTANCE:Lorg/catrobat/catroid/koin/CatroidKoinHelperKt$adapterModules$1;

    check-cast v0, Lkotlin/jvm/functions/Function1;

    invoke-static {v2, v2, v0, v3, v4}, Lorg/koin/dsl/ModuleKt;->module$default(ZZLkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lorg/koin/core/module/Module;

    move-result-object v0

    sput-object v0, Lorg/catrobat/catroid/koin/CatroidKoinHelperKt;->adapterModules:Lorg/koin/core/module/Module;

    .line 118
    sget-object v0, Lorg/catrobat/catroid/koin/CatroidKoinHelperKt$speechModules$1;->INSTANCE:Lorg/catrobat/catroid/koin/CatroidKoinHelperKt$speechModules$1;

    check-cast v0, Lkotlin/jvm/functions/Function1;

    invoke-static {v2, v2, v0, v3, v4}, Lorg/koin/dsl/ModuleKt;->module$default(ZZLkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lorg/koin/core/module/Module;

    move-result-object v0

    sput-object v0, Lorg/catrobat/catroid/koin/CatroidKoinHelperKt;->speechModules:Lorg/koin/core/module/Module;

    .line 130
    const/4 v4, 0x5

    new-array v4, v4, [Lorg/koin/core/module/Module;

    .line 131
    sget-object v5, Lorg/catrobat/catroid/koin/CatroidKoinHelperKt;->componentsModules:Lorg/koin/core/module/Module;

    aput-object v5, v4, v2

    sget-object v2, Lorg/catrobat/catroid/koin/CatroidKoinHelperKt;->viewModelModules:Lorg/koin/core/module/Module;

    aput-object v2, v4, v1

    sget-object v1, Lorg/catrobat/catroid/koin/CatroidKoinHelperKt;->repositoryModules:Lorg/koin/core/module/Module;

    const/4 v2, 0x2

    aput-object v1, v4, v2

    sget-object v1, Lorg/catrobat/catroid/koin/CatroidKoinHelperKt;->adapterModules:Lorg/koin/core/module/Module;

    aput-object v1, v4, v3

    const/4 v1, 0x4

    aput-object v0, v4, v1

    .line 130
    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lorg/catrobat/catroid/koin/CatroidKoinHelperKt;->myModules:Ljava/util/List;

    return-void
.end method

.method public static final getAdapterModules()Lorg/koin/core/module/Module;
    .locals 1

    .line 108
    sget-object v0, Lorg/catrobat/catroid/koin/CatroidKoinHelperKt;->adapterModules:Lorg/koin/core/module/Module;

    return-object v0
.end method

.method public static final getComponentsModules()Lorg/koin/core/module/Module;
    .locals 1

    .line 61
    sget-object v0, Lorg/catrobat/catroid/koin/CatroidKoinHelperKt;->componentsModules:Lorg/koin/core/module/Module;

    return-object v0
.end method

.method public static final getMyModules()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/koin/core/module/Module;",
            ">;"
        }
    .end annotation

    .line 130
    sget-object v0, Lorg/catrobat/catroid/koin/CatroidKoinHelperKt;->myModules:Ljava/util/List;

    return-object v0
.end method

.method public static final getRepositoryModules()Lorg/koin/core/module/Module;
    .locals 1

    .line 94
    sget-object v0, Lorg/catrobat/catroid/koin/CatroidKoinHelperKt;->repositoryModules:Lorg/koin/core/module/Module;

    return-object v0
.end method

.method public static final getSpeechModules()Lorg/koin/core/module/Module;
    .locals 1

    .line 118
    sget-object v0, Lorg/catrobat/catroid/koin/CatroidKoinHelperKt;->speechModules:Lorg/koin/core/module/Module;

    return-object v0
.end method

.method public static final getViewModelModules()Lorg/koin/core/module/Module;
    .locals 1

    .line 90
    sget-object v0, Lorg/catrobat/catroid/koin/CatroidKoinHelperKt;->viewModelModules:Lorg/koin/core/module/Module;

    return-object v0
.end method

.method public static final start(Landroid/app/Application;Ljava/util/List;)V
    .locals 3
    .param p0, "application"    # Landroid/app/Application;
    .param p1, "modules"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Application;",
            "Ljava/util/List<",
            "Lorg/koin/core/module/Module;",
            ">;)V"
        }
    .end annotation

    const-string v0, "application"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "modules"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 135
    new-instance v0, Lorg/catrobat/catroid/koin/CatroidKoinHelperKt$start$1;

    invoke-direct {v0, p0, p1}, Lorg/catrobat/catroid/koin/CatroidKoinHelperKt$start$1;-><init>(Landroid/app/Application;Ljava/util/List;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v1, v0, v2, v1}, Lorg/koin/core/context/ContextFunctionsKt;->startKoin$default(Lorg/koin/core/context/KoinContext;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lorg/koin/core/KoinApplication;

    .line 140
    return-void
.end method
