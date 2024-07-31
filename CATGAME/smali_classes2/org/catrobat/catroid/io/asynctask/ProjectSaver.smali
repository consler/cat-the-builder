.class public final Lorg/catrobat/catroid/io/asynctask/ProjectSaver;
.super Ljava/lang/Object;
.source "ProjectSaver.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J(\u0010\t\u001a\u00020\n2\u0014\u0008\u0002\u0010\u000b\u001a\u000e\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\n0\u000c2\u0008\u0008\u0002\u0010\u000e\u001a\u00020\u000fH\u0007R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0010"
    }
    d2 = {
        "Lorg/catrobat/catroid/io/asynctask/ProjectSaver;",
        "",
        "project",
        "Lorg/catrobat/catroid/content/Project;",
        "context",
        "Landroid/content/Context;",
        "(Lorg/catrobat/catroid/content/Project;Landroid/content/Context;)V",
        "weakContextReference",
        "Ljava/lang/ref/WeakReference;",
        "saveProjectAsync",
        "",
        "onSaveProjectComplete",
        "Lkotlin/Function1;",
        "",
        "scope",
        "Lkotlinx/coroutines/CoroutineScope;",
        "catroid_catroidDebug"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# instance fields
.field private final project:Lorg/catrobat/catroid/content/Project;

.field private final weakContextReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/catrobat/catroid/content/Project;Landroid/content/Context;)V
    .locals 1
    .param p1, "project"    # Lorg/catrobat/catroid/content/Project;
    .param p2, "context"    # Landroid/content/Context;

    const-string v0, "project"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/catrobat/catroid/io/asynctask/ProjectSaver;->project:Lorg/catrobat/catroid/content/Project;

    .line 39
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/catrobat/catroid/io/asynctask/ProjectSaver;->weakContextReference:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public static final synthetic access$getProject$p(Lorg/catrobat/catroid/io/asynctask/ProjectSaver;)Lorg/catrobat/catroid/content/Project;
    .locals 1
    .param p0, "$this"    # Lorg/catrobat/catroid/io/asynctask/ProjectSaver;

    .line 38
    iget-object v0, p0, Lorg/catrobat/catroid/io/asynctask/ProjectSaver;->project:Lorg/catrobat/catroid/content/Project;

    return-object v0
.end method

.method public static synthetic saveProjectAsync$default(Lorg/catrobat/catroid/io/asynctask/ProjectSaver;Lkotlin/jvm/functions/Function1;Lkotlinx/coroutines/CoroutineScope;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    .line 43
    sget-object p1, Lorg/catrobat/catroid/io/asynctask/ProjectSaver$saveProjectAsync$1;->INSTANCE:Lorg/catrobat/catroid/io/asynctask/ProjectSaver$saveProjectAsync$1;

    check-cast p1, Lkotlin/jvm/functions/Function1;

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    .line 44
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object p2

    check-cast p2, Lkotlin/coroutines/CoroutineContext;

    invoke-static {p2}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object p2

    :cond_1
    invoke-virtual {p0, p1, p2}, Lorg/catrobat/catroid/io/asynctask/ProjectSaver;->saveProjectAsync(Lkotlin/jvm/functions/Function1;Lkotlinx/coroutines/CoroutineScope;)V

    return-void
.end method


# virtual methods
.method public final saveProjectAsync()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-static {p0, v0, v0, v1, v0}, Lorg/catrobat/catroid/io/asynctask/ProjectSaver;->saveProjectAsync$default(Lorg/catrobat/catroid/io/asynctask/ProjectSaver;Lkotlin/jvm/functions/Function1;Lkotlinx/coroutines/CoroutineScope;ILjava/lang/Object;)V

    return-void
.end method

.method public final saveProjectAsync(Lkotlin/jvm/functions/Function1;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-static {p0, p1, v0, v1, v0}, Lorg/catrobat/catroid/io/asynctask/ProjectSaver;->saveProjectAsync$default(Lorg/catrobat/catroid/io/asynctask/ProjectSaver;Lkotlin/jvm/functions/Function1;Lkotlinx/coroutines/CoroutineScope;ILjava/lang/Object;)V

    return-void
.end method

.method public final saveProjectAsync(Lkotlin/jvm/functions/Function1;Lkotlinx/coroutines/CoroutineScope;)V
    .locals 7
    .param p1, "onSaveProjectComplete"    # Lkotlin/jvm/functions/Function1;
    .param p2, "scope"    # Lkotlinx/coroutines/CoroutineScope;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlinx/coroutines/CoroutineScope;",
            ")V"
        }
    .end annotation

    const-string v0, "onSaveProjectComplete"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "scope"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    iget-object v0, p0, Lorg/catrobat/catroid/io/asynctask/ProjectSaver;->weakContextReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-eqz v0, :cond_0

    const-string v1, "weakContextReference.get() ?: return"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    .local v0, "context":Landroid/content/Context;
    const/4 v2, 0x0

    const/4 v3, 0x0

    new-instance v1, Lorg/catrobat/catroid/io/asynctask/ProjectSaver$saveProjectAsync$2;

    const/4 v4, 0x0

    invoke-direct {v1, p0, v0, p1, v4}, Lorg/catrobat/catroid/io/asynctask/ProjectSaver$saveProjectAsync$2;-><init>(Lorg/catrobat/catroid/io/asynctask/ProjectSaver;Landroid/content/Context;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V

    move-object v4, v1

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    move-object v1, p2

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 54
    return-void

    .line 46
    .end local v0    # "context":Landroid/content/Context;
    :cond_0
    return-void
.end method
