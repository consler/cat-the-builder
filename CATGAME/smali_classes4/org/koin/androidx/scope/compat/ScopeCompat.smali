.class public final Lorg/koin/androidx/scope/compat/ScopeCompat;
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
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0007\u00a8\u0006\u0007"
    }
    d2 = {
        "Lorg/koin/androidx/scope/compat/ScopeCompat;",
        "",
        "()V",
        "lifecycleScope",
        "Lorg/koin/core/scope/Scope;",
        "owner",
        "Landroidx/lifecycle/LifecycleOwner;",
        "koin-androidx-scope_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# static fields
.field public static final INSTANCE:Lorg/koin/androidx/scope/compat/ScopeCompat;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 27
    new-instance v0, Lorg/koin/androidx/scope/compat/ScopeCompat;

    invoke-direct {v0}, Lorg/koin/androidx/scope/compat/ScopeCompat;-><init>()V

    sput-object v0, Lorg/koin/androidx/scope/compat/ScopeCompat;->INSTANCE:Lorg/koin/androidx/scope/compat/ScopeCompat;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final lifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Lorg/koin/core/scope/Scope;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "owner"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    invoke-static {p0}, Lorg/koin/androidx/scope/LifecycleOwnerExtKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Lorg/koin/core/scope/Scope;

    move-result-object p0

    return-object p0
.end method
