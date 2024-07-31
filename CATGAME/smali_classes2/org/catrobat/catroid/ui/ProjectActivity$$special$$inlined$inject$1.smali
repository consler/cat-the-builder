.class public final Lorg/catrobat/catroid/ui/ProjectActivity$$special$$inlined$inject$1;
.super Lkotlin/jvm/internal/Lambda;
.source "ComponentCallbackExt.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/catrobat/catroid/ui/ProjectActivity;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lorg/catrobat/catroid/ProjectManager;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nComponentCallbackExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ComponentCallbackExt.kt\norg/koin/android/ext/android/ComponentCallbackExtKt$inject$1\n+ 2 ComponentCallbackExt.kt\norg/koin/android/ext/android/ComponentCallbackExtKt\n+ 3 Koin.kt\norg/koin/core/Koin\n+ 4 Scope.kt\norg/koin/core/scope/Scope\n*L\n1#1,48:1\n38#2:49\n84#3:50\n118#4:51\n*E\n*S KotlinDebug\n*F\n+ 1 ComponentCallbackExt.kt\norg/koin/android/ext/android/ComponentCallbackExtKt$inject$1\n*L\n27#1:49\n27#1:50\n27#1:51\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u000c\n\u0002\u0008\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\u0010\u0000\u001a\u0002H\u0001\"\n\u0008\u0000\u0010\u0001\u0018\u0001*\u00020\u0002H\n\u00a2\u0006\u0004\u0008\u0003\u0010\u0004\u00a8\u0006\u0005"
    }
    d2 = {
        "<anonymous>",
        "T",
        "",
        "invoke",
        "()Ljava/lang/Object;",
        "org/koin/android/ext/android/ComponentCallbackExtKt$inject$1"
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# instance fields
.field final synthetic $parameters:Lkotlin/jvm/functions/Function0;

.field final synthetic $qualifier:Lorg/koin/core/qualifier/Qualifier;

.field final synthetic $this_inject:Landroid/content/ComponentCallbacks;


# direct methods
.method public constructor <init>(Landroid/content/ComponentCallbacks;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)V
    .locals 0

    iput-object p1, p0, Lorg/catrobat/catroid/ui/ProjectActivity$$special$$inlined$inject$1;->$this_inject:Landroid/content/ComponentCallbacks;

    iput-object p2, p0, Lorg/catrobat/catroid/ui/ProjectActivity$$special$$inlined$inject$1;->$qualifier:Lorg/koin/core/qualifier/Qualifier;

    iput-object p3, p0, Lorg/catrobat/catroid/ui/ProjectActivity$$special$$inlined$inject$1;->$parameters:Lkotlin/jvm/functions/Function0;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/catrobat/catroid/ProjectManager;"
        }
    .end annotation

    .line 27
    iget-object v0, p0, Lorg/catrobat/catroid/ui/ProjectActivity$$special$$inlined$inject$1;->$this_inject:Landroid/content/ComponentCallbacks;

    .local v0, "$this$get$iv":Landroid/content/ComponentCallbacks;
    iget-object v1, p0, Lorg/catrobat/catroid/ui/ProjectActivity$$special$$inlined$inject$1;->$qualifier:Lorg/koin/core/qualifier/Qualifier;

    .local v1, "qualifier$iv":Lorg/koin/core/qualifier/Qualifier;
    iget-object v2, p0, Lorg/catrobat/catroid/ui/ProjectActivity$$special$$inlined$inject$1;->$parameters:Lkotlin/jvm/functions/Function0;

    .local v2, "parameters$iv":Lkotlin/jvm/functions/Function0;
    const/4 v3, 0x0

    .line 49
    .local v3, "$i$f$get":I
    invoke-static {v0}, Lorg/koin/android/ext/android/ComponentCallbackExtKt;->getKoin(Landroid/content/ComponentCallbacks;)Lorg/koin/core/Koin;

    move-result-object v4

    .local v4, "this_$iv$iv":Lorg/koin/core/Koin;
    const/4 v5, 0x0

    .line 50
    .local v5, "$i$f$get":I
    invoke-virtual {v4}, Lorg/koin/core/Koin;->get_scopeRegistry()Lorg/koin/core/registry/ScopeRegistry;

    move-result-object v6

    invoke-virtual {v6}, Lorg/koin/core/registry/ScopeRegistry;->getRootScope()Lorg/koin/core/scope/Scope;

    move-result-object v6

    .local v6, "this_$iv$iv$iv":Lorg/koin/core/scope/Scope;
    const/4 v7, 0x0

    .line 51
    .local v7, "$i$f$get":I
    const-class v8, Lorg/catrobat/catroid/ProjectManager;

    invoke-static {v8}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v8

    invoke-virtual {v6, v8, v1, v2}, Lorg/koin/core/scope/Scope;->get(Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object v6

    .line 50
    .end local v6    # "this_$iv$iv$iv":Lorg/koin/core/scope/Scope;
    .end local v7    # "$i$f$get":I
    nop

    .line 49
    .end local v4    # "this_$iv$iv":Lorg/koin/core/Koin;
    .end local v5    # "$i$f$get":I
    nop

    .line 27
    .end local v0    # "$this$get$iv":Landroid/content/ComponentCallbacks;
    .end local v1    # "qualifier$iv":Lorg/koin/core/qualifier/Qualifier;
    .end local v2    # "parameters$iv":Lkotlin/jvm/functions/Function0;
    .end local v3    # "$i$f$get":I
    return-object v6
.end method
