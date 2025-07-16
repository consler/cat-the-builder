.class public final Lorg/koin/androidx/viewmodel/koin/KoinStateVMExtKt$stateViewModel$1;
.super Lkotlin/jvm/internal/Lambda;
.source "KoinStateVMExt.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/koin/androidx/viewmodel/koin/KoinStateVMExtKt;->stateViewModel(Lorg/koin/core/Koin;Landroidx/savedstate/SavedStateRegistryOwner;Lorg/koin/core/qualifier/Qualifier;Landroid/os/Bundle;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "TT;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nKoinStateVMExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 KoinStateVMExt.kt\norg/koin/androidx/viewmodel/koin/KoinStateVMExtKt$stateViewModel$1\n+ 2 KoinStateVMExt.kt\norg/koin/androidx/viewmodel/koin/KoinStateVMExtKt\n*L\n1#1,40:1\n29#2:41\n*E\n*S KotlinDebug\n*F\n+ 1 KoinStateVMExt.kt\norg/koin/androidx/viewmodel/koin/KoinStateVMExtKt$stateViewModel$1\n*L\n19#1:41\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u000c\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u0002H\u0001\"\n\u0008\u0000\u0010\u0001\u0018\u0001*\u00020\u0002H\n\u00a2\u0006\u0004\u0008\u0003\u0010\u0004"
    }
    d2 = {
        "<anonymous>",
        "T",
        "Landroidx/lifecycle/ViewModel;",
        "invoke",
        "()Landroidx/lifecycle/ViewModel;"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field final synthetic $bundle:Landroid/os/Bundle;

.field final synthetic $owner:Landroidx/savedstate/SavedStateRegistryOwner;

.field final synthetic $parameters:Lkotlin/jvm/functions/Function0;

.field final synthetic $qualifier:Lorg/koin/core/qualifier/Qualifier;

.field final synthetic $this_stateViewModel:Lorg/koin/core/Koin;


# direct methods
.method public constructor <init>(Lorg/koin/core/Koin;Landroidx/savedstate/SavedStateRegistryOwner;Lorg/koin/core/qualifier/Qualifier;Landroid/os/Bundle;Lkotlin/jvm/functions/Function0;)V
    .locals 0

    iput-object p1, p0, Lorg/koin/androidx/viewmodel/koin/KoinStateVMExtKt$stateViewModel$1;->$this_stateViewModel:Lorg/koin/core/Koin;

    iput-object p2, p0, Lorg/koin/androidx/viewmodel/koin/KoinStateVMExtKt$stateViewModel$1;->$owner:Landroidx/savedstate/SavedStateRegistryOwner;

    iput-object p3, p0, Lorg/koin/androidx/viewmodel/koin/KoinStateVMExtKt$stateViewModel$1;->$qualifier:Lorg/koin/core/qualifier/Qualifier;

    iput-object p4, p0, Lorg/koin/androidx/viewmodel/koin/KoinStateVMExtKt$stateViewModel$1;->$bundle:Landroid/os/Bundle;

    iput-object p5, p0, Lorg/koin/androidx/viewmodel/koin/KoinStateVMExtKt$stateViewModel$1;->$parameters:Lkotlin/jvm/functions/Function0;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Landroidx/lifecycle/ViewModel;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 19
    iget-object v0, p0, Lorg/koin/androidx/viewmodel/koin/KoinStateVMExtKt$stateViewModel$1;->$this_stateViewModel:Lorg/koin/core/Koin;

    iget-object v1, p0, Lorg/koin/androidx/viewmodel/koin/KoinStateVMExtKt$stateViewModel$1;->$owner:Landroidx/savedstate/SavedStateRegistryOwner;

    iget-object v3, p0, Lorg/koin/androidx/viewmodel/koin/KoinStateVMExtKt$stateViewModel$1;->$qualifier:Lorg/koin/core/qualifier/Qualifier;

    iget-object v4, p0, Lorg/koin/androidx/viewmodel/koin/KoinStateVMExtKt$stateViewModel$1;->$bundle:Landroid/os/Bundle;

    iget-object v5, p0, Lorg/koin/androidx/viewmodel/koin/KoinStateVMExtKt$stateViewModel$1;->$parameters:Lkotlin/jvm/functions/Function0;

    const/4 v2, 0x4

    const-string v6, "T"

    .line 41
    invoke-static {v2, v6}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class v2, Landroidx/lifecycle/ViewModel;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    invoke-static/range {v0 .. v5}, Lorg/koin/androidx/viewmodel/koin/KoinStateVMExtKt;->getStateViewModel(Lorg/koin/core/Koin;Landroidx/savedstate/SavedStateRegistryOwner;Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Landroid/os/Bundle;Lkotlin/jvm/functions/Function0;)Landroidx/lifecycle/ViewModel;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lorg/koin/androidx/viewmodel/koin/KoinStateVMExtKt$stateViewModel$1;->invoke()Landroidx/lifecycle/ViewModel;

    move-result-object v0

    return-object v0
.end method
