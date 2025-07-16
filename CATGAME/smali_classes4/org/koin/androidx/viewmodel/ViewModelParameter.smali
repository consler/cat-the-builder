.class public final Lorg/koin/androidx/viewmodel/ViewModelParameter;
.super Ljava/lang/Object;
.source "ViewModelParameter.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000e\u0018\u0000*\u0008\u0008\u0000\u0010\u0001*\u00020\u00022\u00020\u0002BW\u0012\u000c\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0004\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\u0016\u0008\u0002\u0010\u0007\u001a\u0010\u0012\u0004\u0012\u00020\t\u0018\u00010\u0008j\u0004\u0018\u0001`\n\u0012\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u000c\u0012\u0006\u0010\r\u001a\u00020\u000e\u0012\n\u0008\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u0010\u00a2\u0006\u0002\u0010\u0011R\u0013\u0010\u000b\u001a\u0004\u0018\u00010\u000c\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013R\u0017\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015R\u001f\u0010\u0007\u001a\u0010\u0012\u0004\u0012\u00020\t\u0018\u00010\u0008j\u0004\u0018\u0001`\n\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0016\u0010\u0017R\u0013\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0018\u0010\u0019R\u0013\u0010\u000f\u001a\u0004\u0018\u00010\u0010\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001a\u0010\u001bR\u0011\u0010\r\u001a\u00020\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001c\u0010\u001d\u00a8\u0006\u001e"
    }
    d2 = {
        "Lorg/koin/androidx/viewmodel/ViewModelParameter;",
        "T",
        "",
        "clazz",
        "Lkotlin/reflect/KClass;",
        "qualifier",
        "Lorg/koin/core/qualifier/Qualifier;",
        "parameters",
        "Lkotlin/Function0;",
        "Lorg/koin/core/parameter/DefinitionParameters;",
        "Lorg/koin/core/parameter/ParametersDefinition;",
        "bundle",
        "Landroid/os/Bundle;",
        "viewModelStore",
        "Landroidx/lifecycle/ViewModelStore;",
        "stateRegistryOwner",
        "Landroidx/savedstate/SavedStateRegistryOwner;",
        "(Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;Landroid/os/Bundle;Landroidx/lifecycle/ViewModelStore;Landroidx/savedstate/SavedStateRegistryOwner;)V",
        "getBundle",
        "()Landroid/os/Bundle;",
        "getClazz",
        "()Lkotlin/reflect/KClass;",
        "getParameters",
        "()Lkotlin/jvm/functions/Function0;",
        "getQualifier",
        "()Lorg/koin/core/qualifier/Qualifier;",
        "getStateRegistryOwner",
        "()Landroidx/savedstate/SavedStateRegistryOwner;",
        "getViewModelStore",
        "()Landroidx/lifecycle/ViewModelStore;",
        "koin-androidx-viewmodel_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private final bundle:Landroid/os/Bundle;

.field private final clazz:Lkotlin/reflect/KClass;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/reflect/KClass<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final parameters:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lorg/koin/core/parameter/DefinitionParameters;",
            ">;"
        }
    .end annotation
.end field

.field private final qualifier:Lorg/koin/core/qualifier/Qualifier;

.field private final stateRegistryOwner:Landroidx/savedstate/SavedStateRegistryOwner;

.field private final viewModelStore:Landroidx/lifecycle/ViewModelStore;


# direct methods
.method public constructor <init>(Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;Landroid/os/Bundle;Landroidx/lifecycle/ViewModelStore;Landroidx/savedstate/SavedStateRegistryOwner;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/KClass<",
            "TT;>;",
            "Lorg/koin/core/qualifier/Qualifier;",
            "Lkotlin/jvm/functions/Function0<",
            "Lorg/koin/core/parameter/DefinitionParameters;",
            ">;",
            "Landroid/os/Bundle;",
            "Landroidx/lifecycle/ViewModelStore;",
            "Landroidx/savedstate/SavedStateRegistryOwner;",
            ")V"
        }
    .end annotation

    const-string v0, "clazz"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "viewModelStore"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/koin/androidx/viewmodel/ViewModelParameter;->clazz:Lkotlin/reflect/KClass;

    iput-object p2, p0, Lorg/koin/androidx/viewmodel/ViewModelParameter;->qualifier:Lorg/koin/core/qualifier/Qualifier;

    iput-object p3, p0, Lorg/koin/androidx/viewmodel/ViewModelParameter;->parameters:Lkotlin/jvm/functions/Function0;

    iput-object p4, p0, Lorg/koin/androidx/viewmodel/ViewModelParameter;->bundle:Landroid/os/Bundle;

    iput-object p5, p0, Lorg/koin/androidx/viewmodel/ViewModelParameter;->viewModelStore:Landroidx/lifecycle/ViewModelStore;

    iput-object p6, p0, Lorg/koin/androidx/viewmodel/ViewModelParameter;->stateRegistryOwner:Landroidx/savedstate/SavedStateRegistryOwner;

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;Landroid/os/Bundle;Landroidx/lifecycle/ViewModelStore;Landroidx/savedstate/SavedStateRegistryOwner;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 9

    and-int/lit8 v0, p7, 0x2

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 12
    move-object v0, v1

    check-cast v0, Lorg/koin/core/qualifier/Qualifier;

    move-object v4, v1

    goto :goto_0

    :cond_0
    move-object v4, p2

    :goto_0
    and-int/lit8 v0, p7, 0x4

    if-eqz v0, :cond_1

    .line 13
    move-object v0, v1

    check-cast v0, Lkotlin/jvm/functions/Function0;

    move-object v5, v1

    goto :goto_1

    :cond_1
    move-object v5, p3

    :goto_1
    and-int/lit8 v0, p7, 0x8

    if-eqz v0, :cond_2

    .line 14
    move-object v0, v1

    check-cast v0, Landroid/os/Bundle;

    move-object v6, v1

    goto :goto_2

    :cond_2
    move-object v6, p4

    :goto_2
    and-int/lit8 v0, p7, 0x20

    if-eqz v0, :cond_3

    .line 16
    move-object v0, v1

    check-cast v0, Landroidx/savedstate/SavedStateRegistryOwner;

    move-object v8, v1

    goto :goto_3

    :cond_3
    move-object v8, p6

    :goto_3
    move-object v2, p0

    move-object v3, p1

    move-object v7, p5

    invoke-direct/range {v2 .. v8}, Lorg/koin/androidx/viewmodel/ViewModelParameter;-><init>(Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;Landroid/os/Bundle;Landroidx/lifecycle/ViewModelStore;Landroidx/savedstate/SavedStateRegistryOwner;)V

    return-void
.end method


# virtual methods
.method public final getBundle()Landroid/os/Bundle;
    .locals 1

    .line 14
    iget-object v0, p0, Lorg/koin/androidx/viewmodel/ViewModelParameter;->bundle:Landroid/os/Bundle;

    return-object v0
.end method

.method public final getClazz()Lkotlin/reflect/KClass;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/reflect/KClass<",
            "TT;>;"
        }
    .end annotation

    .line 11
    iget-object v0, p0, Lorg/koin/androidx/viewmodel/ViewModelParameter;->clazz:Lkotlin/reflect/KClass;

    return-object v0
.end method

.method public final getParameters()Lkotlin/jvm/functions/Function0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function0<",
            "Lorg/koin/core/parameter/DefinitionParameters;",
            ">;"
        }
    .end annotation

    .line 13
    iget-object v0, p0, Lorg/koin/androidx/viewmodel/ViewModelParameter;->parameters:Lkotlin/jvm/functions/Function0;

    return-object v0
.end method

.method public final getQualifier()Lorg/koin/core/qualifier/Qualifier;
    .locals 1

    .line 12
    iget-object v0, p0, Lorg/koin/androidx/viewmodel/ViewModelParameter;->qualifier:Lorg/koin/core/qualifier/Qualifier;

    return-object v0
.end method

.method public final getStateRegistryOwner()Landroidx/savedstate/SavedStateRegistryOwner;
    .locals 1

    .line 16
    iget-object v0, p0, Lorg/koin/androidx/viewmodel/ViewModelParameter;->stateRegistryOwner:Landroidx/savedstate/SavedStateRegistryOwner;

    return-object v0
.end method

.method public final getViewModelStore()Landroidx/lifecycle/ViewModelStore;
    .locals 1

    .line 15
    iget-object v0, p0, Lorg/koin/androidx/viewmodel/ViewModelParameter;->viewModelStore:Landroidx/lifecycle/ViewModelStore;

    return-object v0
.end method
