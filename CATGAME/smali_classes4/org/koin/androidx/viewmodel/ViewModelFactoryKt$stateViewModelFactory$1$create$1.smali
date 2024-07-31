.class final Lorg/koin/androidx/viewmodel/ViewModelFactoryKt$stateViewModelFactory$1$create$1;
.super Lkotlin/jvm/internal/Lambda;
.source "ViewModelFactory.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/koin/androidx/viewmodel/ViewModelFactoryKt$stateViewModelFactory$1;->create(Ljava/lang/String;Ljava/lang/Class;Landroidx/lifecycle/SavedStateHandle;)Landroidx/lifecycle/ViewModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lorg/koin/core/parameter/DefinitionParameters;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001\"\n\u0008\u0000\u0010\u0002*\u0004\u0018\u00010\u0003\"\u0008\u0008\u0001\u0010\u0002*\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "Lorg/koin/core/parameter/DefinitionParameters;",
        "T",
        "Landroidx/lifecycle/ViewModel;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field final synthetic $handle:Landroidx/lifecycle/SavedStateHandle;

.field final synthetic this$0:Lorg/koin/androidx/viewmodel/ViewModelFactoryKt$stateViewModelFactory$1;


# direct methods
.method constructor <init>(Lorg/koin/androidx/viewmodel/ViewModelFactoryKt$stateViewModelFactory$1;Landroidx/lifecycle/SavedStateHandle;)V
    .locals 0

    iput-object p1, p0, Lorg/koin/androidx/viewmodel/ViewModelFactoryKt$stateViewModelFactory$1$create$1;->this$0:Lorg/koin/androidx/viewmodel/ViewModelFactoryKt$stateViewModelFactory$1;

    iput-object p2, p0, Lorg/koin/androidx/viewmodel/ViewModelFactoryKt$stateViewModelFactory$1$create$1;->$handle:Landroidx/lifecycle/SavedStateHandle;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 21
    invoke-virtual {p0}, Lorg/koin/androidx/viewmodel/ViewModelFactoryKt$stateViewModelFactory$1$create$1;->invoke()Lorg/koin/core/parameter/DefinitionParameters;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Lorg/koin/core/parameter/DefinitionParameters;
    .locals 2

    .line 28
    iget-object v0, p0, Lorg/koin/androidx/viewmodel/ViewModelFactoryKt$stateViewModelFactory$1$create$1;->this$0:Lorg/koin/androidx/viewmodel/ViewModelFactoryKt$stateViewModelFactory$1;

    iget-object v1, p0, Lorg/koin/androidx/viewmodel/ViewModelFactoryKt$stateViewModelFactory$1$create$1;->$handle:Landroidx/lifecycle/SavedStateHandle;

    invoke-static {v0, v1}, Lorg/koin/androidx/viewmodel/ViewModelFactoryKt$stateViewModelFactory$1;->access$insertStateParameter(Lorg/koin/androidx/viewmodel/ViewModelFactoryKt$stateViewModelFactory$1;Landroidx/lifecycle/SavedStateHandle;)[Ljava/lang/Object;

    move-result-object v0

    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/koin/core/parameter/DefinitionParametersKt;->parametersOf([Ljava/lang/Object;)Lorg/koin/core/parameter/DefinitionParameters;

    move-result-object v0

    return-object v0
.end method
