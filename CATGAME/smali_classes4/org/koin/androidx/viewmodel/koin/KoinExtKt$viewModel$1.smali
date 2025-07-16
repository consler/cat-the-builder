.class public final Lorg/koin/androidx/viewmodel/koin/KoinExtKt$viewModel$1;
.super Lkotlin/jvm/internal/Lambda;
.source "KoinExt.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/koin/androidx/viewmodel/koin/KoinExtKt;->viewModel(Lorg/koin/core/Koin;Landroidx/lifecycle/ViewModelStoreOwner;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;
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
    value = "SMAP\nKoinExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 KoinExt.kt\norg/koin/androidx/viewmodel/koin/KoinExtKt$viewModel$1\n+ 2 KoinExt.kt\norg/koin/androidx/viewmodel/koin/KoinExtKt\n*L\n1#1,39:1\n25#2:40\n*E\n*S KotlinDebug\n*F\n+ 1 KoinExt.kt\norg/koin/androidx/viewmodel/koin/KoinExtKt$viewModel$1\n*L\n17#1:40\n*E\n"
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
.field final synthetic $owner:Landroidx/lifecycle/ViewModelStoreOwner;

.field final synthetic $parameters:Lkotlin/jvm/functions/Function0;

.field final synthetic $qualifier:Lorg/koin/core/qualifier/Qualifier;

.field final synthetic $this_viewModel:Lorg/koin/core/Koin;


# direct methods
.method public constructor <init>(Lorg/koin/core/Koin;Landroidx/lifecycle/ViewModelStoreOwner;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)V
    .locals 0

    iput-object p1, p0, Lorg/koin/androidx/viewmodel/koin/KoinExtKt$viewModel$1;->$this_viewModel:Lorg/koin/core/Koin;

    iput-object p2, p0, Lorg/koin/androidx/viewmodel/koin/KoinExtKt$viewModel$1;->$owner:Landroidx/lifecycle/ViewModelStoreOwner;

    iput-object p3, p0, Lorg/koin/androidx/viewmodel/koin/KoinExtKt$viewModel$1;->$qualifier:Lorg/koin/core/qualifier/Qualifier;

    iput-object p4, p0, Lorg/koin/androidx/viewmodel/koin/KoinExtKt$viewModel$1;->$parameters:Lkotlin/jvm/functions/Function0;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Landroidx/lifecycle/ViewModel;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 17
    iget-object v0, p0, Lorg/koin/androidx/viewmodel/koin/KoinExtKt$viewModel$1;->$this_viewModel:Lorg/koin/core/Koin;

    iget-object v1, p0, Lorg/koin/androidx/viewmodel/koin/KoinExtKt$viewModel$1;->$owner:Landroidx/lifecycle/ViewModelStoreOwner;

    iget-object v2, p0, Lorg/koin/androidx/viewmodel/koin/KoinExtKt$viewModel$1;->$qualifier:Lorg/koin/core/qualifier/Qualifier;

    iget-object v3, p0, Lorg/koin/androidx/viewmodel/koin/KoinExtKt$viewModel$1;->$parameters:Lkotlin/jvm/functions/Function0;

    const/4 v4, 0x4

    const-string v5, "T"

    .line 40
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class v4, Landroidx/lifecycle/ViewModel;

    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    invoke-static {v0, v1, v4, v2, v3}, Lorg/koin/androidx/viewmodel/koin/KoinExtKt;->getViewModel(Lorg/koin/core/Koin;Landroidx/lifecycle/ViewModelStoreOwner;Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)Landroidx/lifecycle/ViewModel;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lorg/koin/androidx/viewmodel/koin/KoinExtKt$viewModel$1;->invoke()Landroidx/lifecycle/ViewModel;

    move-result-object v0

    return-object v0
.end method
