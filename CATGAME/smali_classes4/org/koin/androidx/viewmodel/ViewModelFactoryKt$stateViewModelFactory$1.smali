.class public final Lorg/koin/androidx/viewmodel/ViewModelFactoryKt$stateViewModelFactory$1;
.super Landroidx/lifecycle/AbstractSavedStateViewModelFactory;
.source "ViewModelFactory.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/koin/androidx/viewmodel/ViewModelFactoryKt;->stateViewModelFactory(Lorg/koin/core/scope/Scope;Lorg/koin/androidx/viewmodel/ViewModelParameter;)Landroidx/lifecycle/AbstractSavedStateViewModelFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nViewModelFactory.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ViewModelFactory.kt\norg/koin/androidx/viewmodel/ViewModelFactoryKt$stateViewModelFactory$1\n+ 2 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,53:1\n37#2,2:54\n*E\n*S KotlinDebug\n*F\n+ 1 ViewModelFactory.kt\norg/koin/androidx/viewmodel/ViewModelFactoryKt$stateViewModelFactory$1\n*L\n39#1,2:54\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00003\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0011\n\u0002\u0010\u0000\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J7\u0010\u0002\u001a\u0002H\u0003\"\n\u0008\u0000\u0010\u0003*\u0004\u0018\u00010\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u000c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u0002H\u00030\u00082\u0006\u0010\t\u001a\u00020\nH\u0014\u00a2\u0006\u0002\u0010\u000bJ\u001f\u0010\u000c\u001a\u000c\u0012\u0008\u0008\u0001\u0012\u0004\u0018\u00010\u000e0\r2\u0006\u0010\t\u001a\u00020\nH\u0002\u00a2\u0006\u0002\u0010\u000f\u00a8\u0006\u0010"
    }
    d2 = {
        "org/koin/androidx/viewmodel/ViewModelFactoryKt$stateViewModelFactory$1",
        "Landroidx/lifecycle/AbstractSavedStateViewModelFactory;",
        "create",
        "T",
        "Landroidx/lifecycle/ViewModel;",
        "key",
        "",
        "modelClass",
        "Ljava/lang/Class;",
        "handle",
        "Landroidx/lifecycle/SavedStateHandle;",
        "(Ljava/lang/String;Ljava/lang/Class;Landroidx/lifecycle/SavedStateHandle;)Landroidx/lifecycle/ViewModel;",
        "insertStateParameter",
        "",
        "",
        "(Landroidx/lifecycle/SavedStateHandle;)[Ljava/lang/Object;",
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
.field final synthetic $registryOwner:Landroidx/savedstate/SavedStateRegistryOwner;

.field final synthetic $this_stateViewModelFactory:Lorg/koin/core/scope/Scope;

.field final synthetic $vmParams:Lorg/koin/androidx/viewmodel/ViewModelParameter;


# direct methods
.method constructor <init>(Lorg/koin/core/scope/Scope;Lorg/koin/androidx/viewmodel/ViewModelParameter;Landroidx/savedstate/SavedStateRegistryOwner;Landroidx/savedstate/SavedStateRegistryOwner;Landroid/os/Bundle;)V
    .locals 0

    .line 21
    iput-object p1, p0, Lorg/koin/androidx/viewmodel/ViewModelFactoryKt$stateViewModelFactory$1;->$this_stateViewModelFactory:Lorg/koin/core/scope/Scope;

    iput-object p2, p0, Lorg/koin/androidx/viewmodel/ViewModelFactoryKt$stateViewModelFactory$1;->$vmParams:Lorg/koin/androidx/viewmodel/ViewModelParameter;

    iput-object p3, p0, Lorg/koin/androidx/viewmodel/ViewModelFactoryKt$stateViewModelFactory$1;->$registryOwner:Landroidx/savedstate/SavedStateRegistryOwner;

    invoke-direct {p0, p4, p5}, Landroidx/lifecycle/AbstractSavedStateViewModelFactory;-><init>(Landroidx/savedstate/SavedStateRegistryOwner;Landroid/os/Bundle;)V

    return-void
.end method

.method public static final synthetic access$insertStateParameter(Lorg/koin/androidx/viewmodel/ViewModelFactoryKt$stateViewModelFactory$1;Landroidx/lifecycle/SavedStateHandle;)[Ljava/lang/Object;
    .locals 0

    .line 21
    invoke-direct {p0, p1}, Lorg/koin/androidx/viewmodel/ViewModelFactoryKt$stateViewModelFactory$1;->insertStateParameter(Landroidx/lifecycle/SavedStateHandle;)[Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private final insertStateParameter(Landroidx/lifecycle/SavedStateHandle;)[Ljava/lang/Object;
    .locals 3

    .line 32
    iget-object v0, p0, Lorg/koin/androidx/viewmodel/ViewModelFactoryKt$stateViewModelFactory$1;->$vmParams:Lorg/koin/androidx/viewmodel/ViewModelParameter;

    invoke-virtual {v0}, Lorg/koin/androidx/viewmodel/ViewModelParameter;->getParameters()Lkotlin/jvm/functions/Function0;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/koin/core/parameter/DefinitionParameters;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lorg/koin/core/parameter/DefinitionParametersKt;->emptyParametersHolder()Lorg/koin/core/parameter/DefinitionParameters;

    move-result-object v0

    .line 33
    :goto_0
    invoke-virtual {v0}, Lorg/koin/core/parameter/DefinitionParameters;->getValues()[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/ArraysKt;->toMutableList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 34
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x4

    if-gt v1, v2, :cond_2

    const/4 v1, 0x0

    .line 38
    invoke-interface {v0, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 39
    check-cast v0, Ljava/util/Collection;

    new-array p1, v1, [Ljava/lang/Object;

    .line 55
    invoke-interface {v0, p1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    return-object p1

    :cond_1
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 35
    :cond_2
    new-instance p1, Lorg/koin/core/error/DefinitionParameterException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Can\'t add SavedStateHandle to your definition function parameters, as you already have "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " elements: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/koin/core/error/DefinitionParameterException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1
.end method


# virtual methods
.method protected create(Ljava/lang/String;Ljava/lang/Class;Landroidx/lifecycle/SavedStateHandle;)Landroidx/lifecycle/ViewModel;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroidx/lifecycle/ViewModel;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Landroidx/lifecycle/SavedStateHandle;",
            ")TT;"
        }
    .end annotation

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "modelClass"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "handle"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    iget-object p1, p0, Lorg/koin/androidx/viewmodel/ViewModelFactoryKt$stateViewModelFactory$1;->$this_stateViewModelFactory:Lorg/koin/core/scope/Scope;

    .line 26
    iget-object p2, p0, Lorg/koin/androidx/viewmodel/ViewModelFactoryKt$stateViewModelFactory$1;->$vmParams:Lorg/koin/androidx/viewmodel/ViewModelParameter;

    invoke-virtual {p2}, Lorg/koin/androidx/viewmodel/ViewModelParameter;->getClazz()Lkotlin/reflect/KClass;

    move-result-object p2

    .line 27
    iget-object v0, p0, Lorg/koin/androidx/viewmodel/ViewModelFactoryKt$stateViewModelFactory$1;->$vmParams:Lorg/koin/androidx/viewmodel/ViewModelParameter;

    invoke-virtual {v0}, Lorg/koin/androidx/viewmodel/ViewModelParameter;->getQualifier()Lorg/koin/core/qualifier/Qualifier;

    move-result-object v0

    .line 28
    new-instance v1, Lorg/koin/androidx/viewmodel/ViewModelFactoryKt$stateViewModelFactory$1$create$1;

    invoke-direct {v1, p0, p3}, Lorg/koin/androidx/viewmodel/ViewModelFactoryKt$stateViewModelFactory$1$create$1;-><init>(Lorg/koin/androidx/viewmodel/ViewModelFactoryKt$stateViewModelFactory$1;Landroidx/lifecycle/SavedStateHandle;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    .line 25
    invoke-virtual {p1, p2, v0, v1}, Lorg/koin/core/scope/Scope;->get(Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/lifecycle/ViewModel;

    return-object p1
.end method
