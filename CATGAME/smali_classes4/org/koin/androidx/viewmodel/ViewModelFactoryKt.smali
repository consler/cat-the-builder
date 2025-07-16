.class public final Lorg/koin/androidx/viewmodel/ViewModelFactoryKt;
.super Ljava/lang/Object;
.source "ViewModelFactory.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nViewModelFactory.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ViewModelFactory.kt\norg/koin/androidx/viewmodel/ViewModelFactoryKt\n*L\n1#1,53:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000 \n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u001a\"\u0010\u0000\u001a\u00020\u0001\"\u0008\u0008\u0000\u0010\u0002*\u00020\u0003*\u00020\u00042\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u0002H\u00020\u0006\u001a\"\u0010\u0007\u001a\u00020\u0008\"\u0008\u0008\u0000\u0010\u0002*\u00020\u0003*\u00020\u00042\u000c\u0010\t\u001a\u0008\u0012\u0004\u0012\u0002H\u00020\u0006\u00a8\u0006\n"
    }
    d2 = {
        "defaultViewModelFactory",
        "Landroidx/lifecycle/ViewModelProvider$Factory;",
        "T",
        "Landroidx/lifecycle/ViewModel;",
        "Lorg/koin/core/scope/Scope;",
        "parameters",
        "Lorg/koin/androidx/viewmodel/ViewModelParameter;",
        "stateViewModelFactory",
        "Landroidx/lifecycle/AbstractSavedStateViewModelFactory;",
        "vmParams",
        "koin-androidx-viewmodel_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# direct methods
.method public static final defaultViewModelFactory(Lorg/koin/core/scope/Scope;Lorg/koin/androidx/viewmodel/ViewModelParameter;)Landroidx/lifecycle/ViewModelProvider$Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroidx/lifecycle/ViewModel;",
            ">(",
            "Lorg/koin/core/scope/Scope;",
            "Lorg/koin/androidx/viewmodel/ViewModelParameter<",
            "TT;>;)",
            "Landroidx/lifecycle/ViewModelProvider$Factory;"
        }
    .end annotation

    const-string v0, "$this$defaultViewModelFactory"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "parameters"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    new-instance v0, Lorg/koin/androidx/viewmodel/ViewModelFactoryKt$defaultViewModelFactory$1;

    invoke-direct {v0, p0, p1}, Lorg/koin/androidx/viewmodel/ViewModelFactoryKt$defaultViewModelFactory$1;-><init>(Lorg/koin/core/scope/Scope;Lorg/koin/androidx/viewmodel/ViewModelParameter;)V

    check-cast v0, Landroidx/lifecycle/ViewModelProvider$Factory;

    return-object v0
.end method

.method public static final stateViewModelFactory(Lorg/koin/core/scope/Scope;Lorg/koin/androidx/viewmodel/ViewModelParameter;)Landroidx/lifecycle/AbstractSavedStateViewModelFactory;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroidx/lifecycle/ViewModel;",
            ">(",
            "Lorg/koin/core/scope/Scope;",
            "Lorg/koin/androidx/viewmodel/ViewModelParameter<",
            "TT;>;)",
            "Landroidx/lifecycle/AbstractSavedStateViewModelFactory;"
        }
    .end annotation

    const-string v0, "$this$stateViewModelFactory"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "vmParams"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-virtual {p1}, Lorg/koin/androidx/viewmodel/ViewModelParameter;->getStateRegistryOwner()Landroidx/savedstate/SavedStateRegistryOwner;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 21
    new-instance v0, Lorg/koin/androidx/viewmodel/ViewModelFactoryKt$stateViewModelFactory$1;

    invoke-virtual {p1}, Lorg/koin/androidx/viewmodel/ViewModelParameter;->getBundle()Landroid/os/Bundle;

    move-result-object v6

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move-object v4, v5

    invoke-direct/range {v1 .. v6}, Lorg/koin/androidx/viewmodel/ViewModelFactoryKt$stateViewModelFactory$1;-><init>(Lorg/koin/core/scope/Scope;Lorg/koin/androidx/viewmodel/ViewModelParameter;Landroidx/savedstate/SavedStateRegistryOwner;Landroidx/savedstate/SavedStateRegistryOwner;Landroid/os/Bundle;)V

    check-cast v0, Landroidx/lifecycle/AbstractSavedStateViewModelFactory;

    return-object v0

    .line 20
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Can\'t create SavedStateViewModelFactory without a proper stateRegistryOwner"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast p0, Ljava/lang/Throwable;

    throw p0
.end method
