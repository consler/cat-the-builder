.class final Lorg/catrobat/catroid/koin/CatroidKoinHelperKt$repositoryModules$1$2;
.super Lkotlin/jvm/internal/Lambda;
.source "CatroidKoinHelper.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/catrobat/catroid/koin/CatroidKoinHelperKt$repositoryModules$1;->invoke(Lorg/koin/core/module/Module;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lorg/koin/core/scope/Scope;",
        "Lorg/koin/core/parameter/DefinitionParameters;",
        "Lorg/catrobat/catroid/ui/recyclerview/repository/FeaturedProjectsRepository;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCatroidKoinHelper.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CatroidKoinHelper.kt\norg/catrobat/catroid/koin/CatroidKoinHelperKt$repositoryModules$1$2\n+ 2 Scope.kt\norg/koin/core/scope/Scope\n*L\n1#1,141:1\n115#2,4:142\n*E\n*S KotlinDebug\n*F\n+ 1 CatroidKoinHelper.kt\norg/catrobat/catroid/koin/CatroidKoinHelperKt$repositoryModules$1$2\n*L\n100#1,4:142\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0004H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "Lorg/catrobat/catroid/ui/recyclerview/repository/FeaturedProjectsRepository;",
        "Lorg/koin/core/scope/Scope;",
        "it",
        "Lorg/koin/core/parameter/DefinitionParameters;",
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
.field public static final INSTANCE:Lorg/catrobat/catroid/koin/CatroidKoinHelperKt$repositoryModules$1$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/catrobat/catroid/koin/CatroidKoinHelperKt$repositoryModules$1$2;

    invoke-direct {v0}, Lorg/catrobat/catroid/koin/CatroidKoinHelperKt$repositoryModules$1$2;-><init>()V

    sput-object v0, Lorg/catrobat/catroid/koin/CatroidKoinHelperKt$repositoryModules$1$2;->INSTANCE:Lorg/catrobat/catroid/koin/CatroidKoinHelperKt$repositoryModules$1$2;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lorg/koin/core/scope/Scope;

    check-cast p2, Lorg/koin/core/parameter/DefinitionParameters;

    invoke-virtual {p0, p1, p2}, Lorg/catrobat/catroid/koin/CatroidKoinHelperKt$repositoryModules$1$2;->invoke(Lorg/koin/core/scope/Scope;Lorg/koin/core/parameter/DefinitionParameters;)Lorg/catrobat/catroid/ui/recyclerview/repository/FeaturedProjectsRepository;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lorg/koin/core/scope/Scope;Lorg/koin/core/parameter/DefinitionParameters;)Lorg/catrobat/catroid/ui/recyclerview/repository/FeaturedProjectsRepository;
    .locals 6
    .param p1, "$this$single"    # Lorg/koin/core/scope/Scope;
    .param p2, "it"    # Lorg/koin/core/parameter/DefinitionParameters;

    const-string v0, "$receiver"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 100
    new-instance v0, Lorg/catrobat/catroid/ui/recyclerview/repository/DefaultFeaturedProjectsRepository;

    move-object v1, p1

    .line 142
    .local v1, "this_$iv":Lorg/koin/core/scope/Scope;
    const/4 v2, 0x0

    move-object v3, v2

    check-cast v3, Lorg/koin/core/qualifier/Qualifier;

    .line 143
    .local v3, "qualifier$iv":Lorg/koin/core/qualifier/Qualifier;
    check-cast v2, Lkotlin/jvm/functions/Function0;

    .local v2, "parameters$iv":Lkotlin/jvm/functions/Function0;
    const/4 v4, 0x0

    .line 145
    .local v4, "$i$f$get":I
    const-class v5, Lorg/catrobat/catroid/db/AppDatabase;

    invoke-static {v5}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v5

    invoke-virtual {v1, v5, v3, v2}, Lorg/koin/core/scope/Scope;->get(Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "this_$iv":Lorg/koin/core/scope/Scope;
    .end local v2    # "parameters$iv":Lkotlin/jvm/functions/Function0;
    .end local v3    # "qualifier$iv":Lorg/koin/core/qualifier/Qualifier;
    .end local v4    # "$i$f$get":I
    check-cast v1, Lorg/catrobat/catroid/db/AppDatabase;

    .line 100
    invoke-direct {v0, v1}, Lorg/catrobat/catroid/ui/recyclerview/repository/DefaultFeaturedProjectsRepository;-><init>(Lorg/catrobat/catroid/db/AppDatabase;)V

    check-cast v0, Lorg/catrobat/catroid/ui/recyclerview/repository/FeaturedProjectsRepository;

    return-object v0
.end method
