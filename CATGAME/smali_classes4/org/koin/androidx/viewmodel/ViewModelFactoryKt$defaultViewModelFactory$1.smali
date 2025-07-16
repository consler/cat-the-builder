.class public final Lorg/koin/androidx/viewmodel/ViewModelFactoryKt$defaultViewModelFactory$1;
.super Ljava/lang/Object;
.source "ViewModelFactory.kt"

# interfaces
.implements Landroidx/lifecycle/ViewModelProvider$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/koin/androidx/viewmodel/ViewModelFactoryKt;->defaultViewModelFactory(Lorg/koin/core/scope/Scope;Lorg/koin/androidx/viewmodel/ViewModelParameter;)Landroidx/lifecycle/ViewModelProvider$Factory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J%\u0010\u0002\u001a\u0002H\u0003\"\u0008\u0008\u0000\u0010\u0003*\u00020\u00042\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u0002H\u00030\u0006H\u0016\u00a2\u0006\u0002\u0010\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "org/koin/androidx/viewmodel/ViewModelFactoryKt$defaultViewModelFactory$1",
        "Landroidx/lifecycle/ViewModelProvider$Factory;",
        "create",
        "T",
        "Landroidx/lifecycle/ViewModel;",
        "modelClass",
        "Ljava/lang/Class;",
        "(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;",
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
.field final synthetic $parameters:Lorg/koin/androidx/viewmodel/ViewModelParameter;

.field final synthetic $this_defaultViewModelFactory:Lorg/koin/core/scope/Scope;


# direct methods
.method constructor <init>(Lorg/koin/core/scope/Scope;Lorg/koin/androidx/viewmodel/ViewModelParameter;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lorg/koin/androidx/viewmodel/ViewModelFactoryKt$defaultViewModelFactory$1;->$this_defaultViewModelFactory:Lorg/koin/core/scope/Scope;

    iput-object p2, p0, Lorg/koin/androidx/viewmodel/ViewModelFactoryKt$defaultViewModelFactory$1;->$parameters:Lorg/koin/androidx/viewmodel/ViewModelParameter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroidx/lifecycle/ViewModel;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    const-string v0, "modelClass"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    iget-object p1, p0, Lorg/koin/androidx/viewmodel/ViewModelFactoryKt$defaultViewModelFactory$1;->$this_defaultViewModelFactory:Lorg/koin/core/scope/Scope;

    iget-object v0, p0, Lorg/koin/androidx/viewmodel/ViewModelFactoryKt$defaultViewModelFactory$1;->$parameters:Lorg/koin/androidx/viewmodel/ViewModelParameter;

    invoke-virtual {v0}, Lorg/koin/androidx/viewmodel/ViewModelParameter;->getClazz()Lkotlin/reflect/KClass;

    move-result-object v0

    iget-object v1, p0, Lorg/koin/androidx/viewmodel/ViewModelFactoryKt$defaultViewModelFactory$1;->$parameters:Lorg/koin/androidx/viewmodel/ViewModelParameter;

    invoke-virtual {v1}, Lorg/koin/androidx/viewmodel/ViewModelParameter;->getQualifier()Lorg/koin/core/qualifier/Qualifier;

    move-result-object v1

    iget-object v2, p0, Lorg/koin/androidx/viewmodel/ViewModelFactoryKt$defaultViewModelFactory$1;->$parameters:Lorg/koin/androidx/viewmodel/ViewModelParameter;

    invoke-virtual {v2}, Lorg/koin/androidx/viewmodel/ViewModelParameter;->getParameters()Lkotlin/jvm/functions/Function0;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Lorg/koin/core/scope/Scope;->get(Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/lifecycle/ViewModel;

    return-object p1
.end method
