.class public final Lorg/koin/androidx/fragment/android/KoinFragmentFactory;
.super Landroidx/fragment/app/FragmentFactory;
.source "KoinFragmentFactory.kt"

# interfaces
.implements Lorg/koin/core/KoinComponent;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\u0018\u00002\u00020\u00012\u00020\u0002B\u0011\u0012\n\u0008\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u00a2\u0006\u0002\u0010\u0005J\u0018\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\rH\u0016R\u0013\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u000e"
    }
    d2 = {
        "Lorg/koin/androidx/fragment/android/KoinFragmentFactory;",
        "Landroidx/fragment/app/FragmentFactory;",
        "Lorg/koin/core/KoinComponent;",
        "scope",
        "Lorg/koin/core/scope/Scope;",
        "(Lorg/koin/core/scope/Scope;)V",
        "getScope",
        "()Lorg/koin/core/scope/Scope;",
        "instantiate",
        "Landroidx/fragment/app/Fragment;",
        "classLoader",
        "Ljava/lang/ClassLoader;",
        "className",
        "",
        "koin-androidx-fragment_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private final scope:Lorg/koin/core/scope/Scope;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v0}, Lorg/koin/androidx/fragment/android/KoinFragmentFactory;-><init>(Lorg/koin/core/scope/Scope;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lorg/koin/core/scope/Scope;)V
    .locals 0
    .param p1, "scope"    # Lorg/koin/core/scope/Scope;

    .line 11
    invoke-direct {p0}, Landroidx/fragment/app/FragmentFactory;-><init>()V

    iput-object p1, p0, Lorg/koin/androidx/fragment/android/KoinFragmentFactory;->scope:Lorg/koin/core/scope/Scope;

    return-void
.end method

.method public synthetic constructor <init>(Lorg/koin/core/scope/Scope;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    .line 11
    const/4 p1, 0x0

    check-cast p1, Lorg/koin/core/scope/Scope;

    :cond_0
    invoke-direct {p0, p1}, Lorg/koin/androidx/fragment/android/KoinFragmentFactory;-><init>(Lorg/koin/core/scope/Scope;)V

    return-void
.end method


# virtual methods
.method public getKoin()Lorg/koin/core/Koin;
    .locals 1

    .line 11
    invoke-static {p0}, Lorg/koin/core/KoinComponent$DefaultImpls;->getKoin(Lorg/koin/core/KoinComponent;)Lorg/koin/core/Koin;

    move-result-object v0

    return-object v0
.end method

.method public final getScope()Lorg/koin/core/scope/Scope;
    .locals 1

    .line 11
    iget-object v0, p0, Lorg/koin/androidx/fragment/android/KoinFragmentFactory;->scope:Lorg/koin/core/scope/Scope;

    return-object v0
.end method

.method public instantiate(Ljava/lang/ClassLoader;Ljava/lang/String;)Landroidx/fragment/app/Fragment;
    .locals 8
    .param p1, "classLoader"    # Ljava/lang/ClassLoader;
    .param p2, "className"    # Ljava/lang/String;

    const-string v0, "classLoader"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "className"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-static {p2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "Class.forName(className)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lkotlin/jvm/JvmClassMappingKt;->getKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    .line 15
    .local v0, "clazz":Lkotlin/reflect/KClass;
    iget-object v2, p0, Lorg/koin/androidx/fragment/android/KoinFragmentFactory;->scope:Lorg/koin/core/scope/Scope;

    if-eqz v2, :cond_0

    .line 16
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x6

    const/4 v7, 0x0

    move-object v3, v0

    invoke-static/range {v2 .. v7}, Lorg/koin/core/scope/Scope;->getOrNull$default(Lorg/koin/core/scope/Scope;Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/Fragment;

    goto :goto_0

    .line 18
    :cond_0
    invoke-virtual {p0}, Lorg/koin/androidx/fragment/android/KoinFragmentFactory;->getKoin()Lorg/koin/core/Koin;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x6

    const/4 v7, 0x0

    move-object v3, v0

    invoke-static/range {v2 .. v7}, Lorg/koin/core/Koin;->getOrNull$default(Lorg/koin/core/Koin;Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/Fragment;

    .line 15
    :goto_0
    nop

    .line 20
    .local v1, "instance":Landroidx/fragment/app/Fragment;
    if-eqz v1, :cond_1

    move-object v2, v1

    goto :goto_1

    :cond_1
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/FragmentFactory;->instantiate(Ljava/lang/ClassLoader;Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v2

    const-string v3, "super.instantiate(classLoader, className)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_1
    return-object v2
.end method
