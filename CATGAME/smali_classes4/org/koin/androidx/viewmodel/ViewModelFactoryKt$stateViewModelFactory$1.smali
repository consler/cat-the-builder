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
    .param p1, "$receiver"    # Lorg/koin/core/scope/Scope;
    .param p2, "$captured_local_variable$1"    # Lorg/koin/androidx/viewmodel/ViewModelParameter;
    .param p3, "$captured_local_variable$2"    # Landroidx/savedstate/SavedStateRegistryOwner;
    .param p4, "$super_call_param$3"    # Landroidx/savedstate/SavedStateRegistryOwner;
    .param p5, "$super_call_param$4"    # Landroid/os/Bundle;

    .line 21
    iput-object p1, p0, Lorg/koin/androidx/viewmodel/ViewModelFactoryKt$stateViewModelFactory$1;->$this_stateViewModelFactory:Lorg/koin/core/scope/Scope;

    iput-object p2, p0, Lorg/koin/androidx/viewmodel/ViewModelFactoryKt$stateViewModelFactory$1;->$vmParams:Lorg/koin/androidx/viewmodel/ViewModelParameter;

    iput-object p3, p0, Lorg/koin/androidx/viewmodel/ViewModelFactoryKt$stateViewModelFactory$1;->$registryOwner:Landroidx/savedstate/SavedStateRegistryOwner;

    invoke-direct {p0, p4, p5}, Landroidx/lifecycle/AbstractSavedStateViewModelFactory;-><init>(Landroidx/savedstate/SavedStateRegistryOwner;Landroid/os/Bundle;)V

    return-void
.end method

.method public static final synthetic access$insertStateParameter(Lorg/koin/androidx/viewmodel/ViewModelFactoryKt$stateViewModelFactory$1;Landroidx/lifecycle/SavedStateHandle;)[Ljava/lang/Object;
    .locals 1
    .param p0, "$this"    # Lorg/koin/androidx/viewmodel/ViewModelFactoryKt$stateViewModelFactory$1;
    .param p1, "handle"    # Landroidx/lifecycle/SavedStateHandle;

    .line 21
    invoke-direct {p0, p1}, Lorg/koin/androidx/viewmodel/ViewModelFactoryKt$stateViewModelFactory$1;->insertStateParameter(Landroidx/lifecycle/SavedStateHandle;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private final insertStateParameter(Landroidx/lifecycle/SavedStateHandle;)[Ljava/lang/Object;
    .locals 7
    .param p1, "handle"    # Landroidx/lifecycle/SavedStateHandle;

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
    .local v0, "parameters":Lorg/koin/core/parameter/DefinitionParameters;
    :goto_0
    invoke-virtual {v0}, Lorg/koin/core/parameter/DefinitionParameters;->getValues()[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/ArraysKt;->toMutableList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 34
    .local v1, "values":Ljava/util/List;
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x4

    if-gt v2, v3, :cond_2

    .line 38
    const/4 v2, 0x0

    invoke-interface {v1, v2, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 39
    move-object v3, v1

    check-cast v3, Ljava/util/Collection;

    .local v3, "$this$toTypedArray$iv":Ljava/util/Collection;
    const/4 v4, 0x0

    .line 54
    .local v4, "$i$f$toTypedArray":I
    move-object v5, v3

    .line 55
    .local v5, "thisCollection$iv":Ljava/util/Collection;
    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v5, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    .end local v3    # "$this$toTypedArray$iv":Ljava/util/Collection;
    .end local v4    # "$i$f$toTypedArray":I
    .end local v5    # "thisCollection$iv":Ljava/util/Collection;
    return-object v2

    .restart local v3    # "$this$toTypedArray$iv":Ljava/util/Collection;
    .restart local v4    # "$i$f$toTypedArray":I
    .restart local v5    # "thisCollection$iv":Ljava/util/Collection;
    :cond_1
    new-instance v2, Lkotlin/TypeCastException;

    const-string v6, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-direct {v2, v6}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 35
    .end local v3    # "$this$toTypedArray$iv":Ljava/util/Collection;
    .end local v4    # "$i$f$toTypedArray":I
    .end local v5    # "thisCollection$iv":Ljava/util/Collection;
    :cond_2
    new-instance v2, Lorg/koin/core/error/DefinitionParameterException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t add SavedStateHandle to your definition function parameters, as you already have "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " elements: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/koin/core/error/DefinitionParameterException;-><init>(Ljava/lang/String;)V

    check-cast v2, Ljava/lang/Throwable;

    throw v2
.end method


# virtual methods
.method protected create(Ljava/lang/String;Ljava/lang/Class;Landroidx/lifecycle/SavedStateHandle;)Landroidx/lifecycle/ViewModel;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "modelClass"    # Ljava/lang/Class;
    .param p3, "handle"    # Landroidx/lifecycle/SavedStateHandle;
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

    const-string v0, "modelClass"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "handle"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    iget-object v0, p0, Lorg/koin/androidx/viewmodel/ViewModelFactoryKt$stateViewModelFactory$1;->$this_stateViewModelFactory:Lorg/koin/core/scope/Scope;

    .line 26
    iget-object v1, p0, Lorg/koin/androidx/viewmodel/ViewModelFactoryKt$stateViewModelFactory$1;->$vmParams:Lorg/koin/androidx/viewmodel/ViewModelParameter;

    invoke-virtual {v1}, Lorg/koin/androidx/viewmodel/ViewModelParameter;->getClazz()Lkotlin/reflect/KClass;

    move-result-object v1

    .line 27
    iget-object v2, p0, Lorg/koin/androidx/viewmodel/ViewModelFactoryKt$stateViewModelFactory$1;->$vmParams:Lorg/koin/androidx/viewmodel/ViewModelParameter;

    invoke-virtual {v2}, Lorg/koin/androidx/viewmodel/ViewModelParameter;->getQualifier()Lorg/koin/core/qualifier/Qualifier;

    move-result-object v2

    .line 28
    new-instance v3, Lorg/koin/androidx/viewmodel/ViewModelFactoryKt$stateViewModelFactory$1$create$1;

    invoke-direct {v3, p0, p3}, Lorg/koin/androidx/viewmodel/ViewModelFactoryKt$stateViewModelFactory$1$create$1;-><init>(Lorg/koin/androidx/viewmodel/ViewModelFactoryKt$stateViewModelFactory$1;Landroidx/lifecycle/SavedStateHandle;)V

    check-cast v3, Lkotlin/jvm/functions/Function0;

    .line 25
    invoke-virtual {v0, v1, v2, v3}, Lorg/koin/core/scope/Scope;->get(Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/ViewModel;

    return-object v0
.end method
