.class public final Lorg/koin/androidx/viewmodel/compat/ScopeCompat;
.super Ljava/lang/Object;
.source "ScopeCompat.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002JY\u0010\u0003\u001a\u0002H\u0004\"\u0008\u0008\u0000\u0010\u0004*\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u000c\u0010\n\u001a\u0008\u0012\u0004\u0012\u0002H\u00040\u000b2\n\u0008\u0002\u0010\u000c\u001a\u0004\u0018\u00010\r2\u0016\u0008\u0002\u0010\u000e\u001a\u0010\u0012\u0004\u0012\u00020\u0010\u0018\u00010\u000fj\u0004\u0018\u0001`\u0011H\u0007\u00a2\u0006\u0002\u0010\u0012JZ\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u0002H\u00040\u0014\"\u0008\u0008\u0000\u0010\u0004*\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u000c\u0010\n\u001a\u0008\u0012\u0004\u0012\u0002H\u00040\u000b2\n\u0008\u0002\u0010\u000c\u001a\u0004\u0018\u00010\r2\u0016\u0008\u0002\u0010\u000e\u001a\u0010\u0012\u0004\u0012\u00020\u0010\u0018\u00010\u000fj\u0004\u0018\u0001`\u0011H\u0007\u00a8\u0006\u0015"
    }
    d2 = {
        "Lorg/koin/androidx/viewmodel/compat/ScopeCompat;",
        "",
        "()V",
        "getViewModel",
        "T",
        "Landroidx/lifecycle/ViewModel;",
        "scope",
        "Lorg/koin/core/scope/Scope;",
        "owner",
        "Landroidx/lifecycle/ViewModelStoreOwner;",
        "clazz",
        "Ljava/lang/Class;",
        "qualifier",
        "Lorg/koin/core/qualifier/Qualifier;",
        "parameters",
        "Lkotlin/Function0;",
        "Lorg/koin/core/parameter/DefinitionParameters;",
        "Lorg/koin/core/parameter/ParametersDefinition;",
        "(Lorg/koin/core/scope/Scope;Landroidx/lifecycle/ViewModelStoreOwner;Ljava/lang/Class;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)Landroidx/lifecycle/ViewModel;",
        "viewModel",
        "Lkotlin/Lazy;",
        "koin-androidx-viewmodel_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# static fields
.field public static final INSTANCE:Lorg/koin/androidx/viewmodel/compat/ScopeCompat;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 31
    new-instance v0, Lorg/koin/androidx/viewmodel/compat/ScopeCompat;

    invoke-direct {v0}, Lorg/koin/androidx/viewmodel/compat/ScopeCompat;-><init>()V

    sput-object v0, Lorg/koin/androidx/viewmodel/compat/ScopeCompat;->INSTANCE:Lorg/koin/androidx/viewmodel/compat/ScopeCompat;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getViewModel(Lorg/koin/core/scope/Scope;Landroidx/lifecycle/ViewModelStoreOwner;Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroidx/lifecycle/ViewModel;",
            ">(",
            "Lorg/koin/core/scope/Scope;",
            "Landroidx/lifecycle/ViewModelStoreOwner;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0x18

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-static/range {v0 .. v6}, Lorg/koin/androidx/viewmodel/compat/ScopeCompat;->getViewModel$default(Lorg/koin/core/scope/Scope;Landroidx/lifecycle/ViewModelStoreOwner;Ljava/lang/Class;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Landroidx/lifecycle/ViewModel;

    move-result-object p0

    return-object p0
.end method

.method public static final getViewModel(Lorg/koin/core/scope/Scope;Landroidx/lifecycle/ViewModelStoreOwner;Ljava/lang/Class;Lorg/koin/core/qualifier/Qualifier;)Landroidx/lifecycle/ViewModel;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroidx/lifecycle/ViewModel;",
            ">(",
            "Lorg/koin/core/scope/Scope;",
            "Landroidx/lifecycle/ViewModelStoreOwner;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lorg/koin/core/qualifier/Qualifier;",
            ")TT;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const/4 v4, 0x0

    const/16 v5, 0x10

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-static/range {v0 .. v6}, Lorg/koin/androidx/viewmodel/compat/ScopeCompat;->getViewModel$default(Lorg/koin/core/scope/Scope;Landroidx/lifecycle/ViewModelStoreOwner;Ljava/lang/Class;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Landroidx/lifecycle/ViewModel;

    move-result-object p0

    return-object p0
.end method

.method public static final getViewModel(Lorg/koin/core/scope/Scope;Landroidx/lifecycle/ViewModelStoreOwner;Ljava/lang/Class;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)Landroidx/lifecycle/ViewModel;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroidx/lifecycle/ViewModel;",
            ">(",
            "Lorg/koin/core/scope/Scope;",
            "Landroidx/lifecycle/ViewModelStoreOwner;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lorg/koin/core/qualifier/Qualifier;",
            "Lkotlin/jvm/functions/Function0<",
            "Lorg/koin/core/parameter/DefinitionParameters;",
            ">;)TT;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "scope"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "owner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clazz"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    invoke-static {p2}, Lkotlin/jvm/JvmClassMappingKt;->getKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object p2

    invoke-static {p0, p1, p2, p3, p4}, Lorg/koin/androidx/viewmodel/scope/ScopeExtKt;->getViewModel(Lorg/koin/core/scope/Scope;Landroidx/lifecycle/ViewModelStoreOwner;Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)Landroidx/lifecycle/ViewModel;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic getViewModel$default(Lorg/koin/core/scope/Scope;Landroidx/lifecycle/ViewModelStoreOwner;Ljava/lang/Class;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Landroidx/lifecycle/ViewModel;
    .locals 1

    and-int/lit8 p6, p5, 0x8

    const/4 v0, 0x0

    if-eqz p6, :cond_0

    .line 65
    move-object p3, v0

    check-cast p3, Lorg/koin/core/qualifier/Qualifier;

    move-object p3, v0

    :cond_0
    and-int/lit8 p5, p5, 0x10

    if-eqz p5, :cond_1

    .line 66
    move-object p4, v0

    check-cast p4, Lkotlin/jvm/functions/Function0;

    move-object p4, v0

    :cond_1
    invoke-static {p0, p1, p2, p3, p4}, Lorg/koin/androidx/viewmodel/compat/ScopeCompat;->getViewModel(Lorg/koin/core/scope/Scope;Landroidx/lifecycle/ViewModelStoreOwner;Ljava/lang/Class;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)Landroidx/lifecycle/ViewModel;

    move-result-object p0

    return-object p0
.end method

.method public static final viewModel(Lorg/koin/core/scope/Scope;Landroidx/lifecycle/ViewModelStoreOwner;Ljava/lang/Class;)Lkotlin/Lazy;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroidx/lifecycle/ViewModel;",
            ">(",
            "Lorg/koin/core/scope/Scope;",
            "Landroidx/lifecycle/ViewModelStoreOwner;",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lkotlin/Lazy<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0x18

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-static/range {v0 .. v6}, Lorg/koin/androidx/viewmodel/compat/ScopeCompat;->viewModel$default(Lorg/koin/core/scope/Scope;Landroidx/lifecycle/ViewModelStoreOwner;Ljava/lang/Class;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lkotlin/Lazy;

    move-result-object p0

    return-object p0
.end method

.method public static final viewModel(Lorg/koin/core/scope/Scope;Landroidx/lifecycle/ViewModelStoreOwner;Ljava/lang/Class;Lorg/koin/core/qualifier/Qualifier;)Lkotlin/Lazy;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroidx/lifecycle/ViewModel;",
            ">(",
            "Lorg/koin/core/scope/Scope;",
            "Landroidx/lifecycle/ViewModelStoreOwner;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lorg/koin/core/qualifier/Qualifier;",
            ")",
            "Lkotlin/Lazy<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const/4 v4, 0x0

    const/16 v5, 0x10

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-static/range {v0 .. v6}, Lorg/koin/androidx/viewmodel/compat/ScopeCompat;->viewModel$default(Lorg/koin/core/scope/Scope;Landroidx/lifecycle/ViewModelStoreOwner;Ljava/lang/Class;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lkotlin/Lazy;

    move-result-object p0

    return-object p0
.end method

.method public static final viewModel(Lorg/koin/core/scope/Scope;Landroidx/lifecycle/ViewModelStoreOwner;Ljava/lang/Class;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroidx/lifecycle/ViewModel;",
            ">(",
            "Lorg/koin/core/scope/Scope;",
            "Landroidx/lifecycle/ViewModelStoreOwner;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lorg/koin/core/qualifier/Qualifier;",
            "Lkotlin/jvm/functions/Function0<",
            "Lorg/koin/core/parameter/DefinitionParameters;",
            ">;)",
            "Lkotlin/Lazy<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "scope"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "owner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clazz"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance v7, Lorg/koin/androidx/viewmodel/compat/ScopeCompat$viewModel$1;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lorg/koin/androidx/viewmodel/compat/ScopeCompat$viewModel$1;-><init>(Lorg/koin/core/scope/Scope;Landroidx/lifecycle/ViewModelStoreOwner;Ljava/lang/Class;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)V

    check-cast v7, Lkotlin/jvm/functions/Function0;

    invoke-static {v0, v7}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic viewModel$default(Lorg/koin/core/scope/Scope;Landroidx/lifecycle/ViewModelStoreOwner;Ljava/lang/Class;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lkotlin/Lazy;
    .locals 1

    and-int/lit8 p6, p5, 0x8

    const/4 v0, 0x0

    if-eqz p6, :cond_0

    .line 47
    move-object p3, v0

    check-cast p3, Lorg/koin/core/qualifier/Qualifier;

    move-object p3, v0

    :cond_0
    and-int/lit8 p5, p5, 0x10

    if-eqz p5, :cond_1

    .line 48
    move-object p4, v0

    check-cast p4, Lkotlin/jvm/functions/Function0;

    move-object p4, v0

    :cond_1
    invoke-static {p0, p1, p2, p3, p4}, Lorg/koin/androidx/viewmodel/compat/ScopeCompat;->viewModel(Lorg/koin/core/scope/Scope;Landroidx/lifecycle/ViewModelStoreOwner;Ljava/lang/Class;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p0

    return-object p0
.end method
