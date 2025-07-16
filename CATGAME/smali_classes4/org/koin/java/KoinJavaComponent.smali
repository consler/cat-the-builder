.class public final Lorg/koin/java/KoinJavaComponent;
.super Ljava/lang/Object;
.source "KoinJavaComponent.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002JU\u0010\u0003\u001a\u0002H\u0004\"\u0008\u0008\u0000\u0010\u0005*\u00020\u0001\"\u0008\u0008\u0001\u0010\u0004*\u00020\u00012\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u0002H\u00050\u00072\u000c\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u0002H\u00040\u00072\u0016\u0008\u0002\u0010\t\u001a\u0010\u0012\u0004\u0012\u00020\u000b\u0018\u00010\nj\u0004\u0018\u0001`\u000cH\u0007\u00a2\u0006\u0002\u0010\rJI\u0010\u000e\u001a\u0002H\u000f\"\u0008\u0008\u0000\u0010\u000f*\u00020\u00012\u000c\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u0002H\u000f0\u00072\n\u0008\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u00122\u0016\u0008\u0002\u0010\t\u001a\u0010\u0012\u0004\u0012\u00020\u000b\u0018\u00010\nj\u0004\u0018\u0001`\u000cH\u0007\u00a2\u0006\u0002\u0010\u0013J\u0008\u0010\u0014\u001a\u00020\u0015H\u0007JJ\u0010\u0016\u001a\u0008\u0012\u0004\u0012\u0002H\u000f0\u0017\"\u0008\u0008\u0000\u0010\u000f*\u00020\u00012\u000c\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u0002H\u000f0\u00072\n\u0008\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u00122\u0016\u0008\u0002\u0010\t\u001a\u0010\u0012\u0004\u0012\u00020\u000b\u0018\u00010\nj\u0004\u0018\u0001`\u000cH\u0007\u00a8\u0006\u0018"
    }
    d2 = {
        "Lorg/koin/java/KoinJavaComponent;",
        "",
        "()V",
        "bind",
        "S",
        "P",
        "primary",
        "Ljava/lang/Class;",
        "secondary",
        "parameters",
        "Lkotlin/Function0;",
        "Lorg/koin/core/parameter/DefinitionParameters;",
        "Lorg/koin/core/parameter/ParametersDefinition;",
        "(Ljava/lang/Class;Ljava/lang/Class;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;",
        "get",
        "T",
        "clazz",
        "qualifier",
        "Lorg/koin/core/qualifier/Qualifier;",
        "(Ljava/lang/Class;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;",
        "getKoin",
        "Lorg/koin/core/Koin;",
        "inject",
        "Lkotlin/Lazy;",
        "koin-core"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# static fields
.field public static final INSTANCE:Lorg/koin/java/KoinJavaComponent;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 29
    new-instance v0, Lorg/koin/java/KoinJavaComponent;

    invoke-direct {v0}, Lorg/koin/java/KoinJavaComponent;-><init>()V

    sput-object v0, Lorg/koin/java/KoinJavaComponent;->INSTANCE:Lorg/koin/java/KoinJavaComponent;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final bind(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P:",
            "Ljava/lang/Object;",
            "S:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TP;>;",
            "Ljava/lang/Class<",
            "TS;>;)TS;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x4

    invoke-static {p0, p1, v0, v1, v0}, Lorg/koin/java/KoinJavaComponent;->bind$default(Ljava/lang/Class;Ljava/lang/Class;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final bind(Ljava/lang/Class;Ljava/lang/Class;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P:",
            "Ljava/lang/Object;",
            "S:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TP;>;",
            "Ljava/lang/Class<",
            "TS;>;",
            "Lkotlin/jvm/functions/Function0<",
            "Lorg/koin/core/parameter/DefinitionParameters;",
            ">;)TS;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "primary"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "secondary"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 88
    invoke-static {}, Lorg/koin/java/KoinJavaComponent;->getKoin()Lorg/koin/core/Koin;

    move-result-object v0

    .line 89
    invoke-static {p0}, Lkotlin/jvm/JvmClassMappingKt;->getKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object p0

    invoke-static {p1}, Lkotlin/jvm/JvmClassMappingKt;->getKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object p1

    invoke-virtual {v0, p0, p1, p2}, Lorg/koin/core/Koin;->bind(Lkotlin/reflect/KClass;Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic bind$default(Ljava/lang/Class;Ljava/lang/Class;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    and-int/lit8 p3, p3, 0x4

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 86
    move-object p3, p2

    check-cast p3, Lkotlin/jvm/functions/Function0;

    :cond_0
    invoke-static {p0, p1, p2}, Lorg/koin/java/KoinJavaComponent;->bind(Ljava/lang/Class;Ljava/lang/Class;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final get(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x6

    invoke-static {p0, v0, v0, v1, v0}, Lorg/koin/java/KoinJavaComponent;->get$default(Ljava/lang/Class;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final get(Ljava/lang/Class;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lorg/koin/core/qualifier/Qualifier;",
            ")TT;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x4

    invoke-static {p0, p1, v0, v1, v0}, Lorg/koin/java/KoinJavaComponent;->get$default(Ljava/lang/Class;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final get(Ljava/lang/Class;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lorg/koin/core/qualifier/Qualifier;",
            "Lkotlin/jvm/functions/Function0<",
            "Lorg/koin/core/parameter/DefinitionParameters;",
            ">;)TT;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "clazz"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    invoke-static {p0}, Lkotlin/jvm/JvmClassMappingKt;->getKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object p0

    .line 63
    invoke-static {}, Lorg/koin/java/KoinJavaComponent;->getKoin()Lorg/koin/core/Koin;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lorg/koin/core/Koin;->get(Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 67
    :cond_0
    invoke-static {}, Lorg/koin/java/KoinJavaComponent;->getKoin()Lorg/koin/core/Koin;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lorg/koin/core/Koin;->get(Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public static synthetic get$default(Ljava/lang/Class;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1

    and-int/lit8 p4, p3, 0x2

    const/4 v0, 0x0

    if-eqz p4, :cond_0

    .line 59
    move-object p1, v0

    check-cast p1, Lorg/koin/core/qualifier/Qualifier;

    move-object p1, v0

    :cond_0
    and-int/lit8 p3, p3, 0x4

    if-eqz p3, :cond_1

    .line 60
    move-object p2, v0

    check-cast p2, Lkotlin/jvm/functions/Function0;

    move-object p2, v0

    :cond_1
    invoke-static {p0, p1, p2}, Lorg/koin/java/KoinJavaComponent;->get(Ljava/lang/Class;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final getKoin()Lorg/koin/core/Koin;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 97
    sget-object v0, Lorg/koin/core/context/KoinContextHandler;->INSTANCE:Lorg/koin/core/context/KoinContextHandler;

    invoke-virtual {v0}, Lorg/koin/core/context/KoinContextHandler;->get()Lorg/koin/core/Koin;

    move-result-object v0

    return-object v0
.end method

.method public static final inject(Ljava/lang/Class;)Lkotlin/Lazy;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lkotlin/Lazy<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x6

    invoke-static {p0, v0, v0, v1, v0}, Lorg/koin/java/KoinJavaComponent;->inject$default(Ljava/lang/Class;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lkotlin/Lazy;

    move-result-object p0

    return-object p0
.end method

.method public static final inject(Ljava/lang/Class;Lorg/koin/core/qualifier/Qualifier;)Lkotlin/Lazy;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lorg/koin/core/qualifier/Qualifier;",
            ")",
            "Lkotlin/Lazy<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x4

    invoke-static {p0, p1, v0, v1, v0}, Lorg/koin/java/KoinJavaComponent;->inject$default(Ljava/lang/Class;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lkotlin/Lazy;

    move-result-object p0

    return-object p0
.end method

.method public static final inject(Ljava/lang/Class;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lorg/koin/core/qualifier/Qualifier;",
            "Lkotlin/jvm/functions/Function0<",
            "Lorg/koin/core/parameter/DefinitionParameters;",
            ">;)",
            "Lkotlin/Lazy<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "clazz"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance v1, Lorg/koin/java/KoinJavaComponent$inject$1;

    invoke-direct {v1, p0, p1, p2}, Lorg/koin/java/KoinJavaComponent$inject$1;-><init>(Ljava/lang/Class;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-static {v0, v1}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic inject$default(Ljava/lang/Class;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lkotlin/Lazy;
    .locals 1

    and-int/lit8 p4, p3, 0x2

    const/4 v0, 0x0

    if-eqz p4, :cond_0

    .line 42
    move-object p1, v0

    check-cast p1, Lorg/koin/core/qualifier/Qualifier;

    move-object p1, v0

    :cond_0
    and-int/lit8 p3, p3, 0x4

    if-eqz p3, :cond_1

    .line 43
    move-object p2, v0

    check-cast p2, Lkotlin/jvm/functions/Function0;

    move-object p2, v0

    :cond_1
    invoke-static {p0, p1, p2}, Lorg/koin/java/KoinJavaComponent;->inject(Ljava/lang/Class;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p0

    return-object p0
.end method
