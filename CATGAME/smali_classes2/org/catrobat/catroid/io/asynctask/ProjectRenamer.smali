.class public final Lorg/catrobat/catroid/io/asynctask/ProjectRenamer;
.super Ljava/lang/Object;
.source "ProjectRenamer.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J2\u0010\u0007\u001a\u00020\u00082\u0014\u0008\u0002\u0010\t\u001a\u000e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u00080\n2\u0008\u0008\u0002\u0010\u000c\u001a\u00020\r2\u0008\u0008\u0002\u0010\u000e\u001a\u00020\u000fH\u0007R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0010"
    }
    d2 = {
        "Lorg/catrobat/catroid/io/asynctask/ProjectRenamer;",
        "",
        "projectDirectory",
        "Ljava/io/File;",
        "destinationName",
        "",
        "(Ljava/io/File;Ljava/lang/String;)V",
        "renameProjectAsync",
        "",
        "onRenameProjectComplete",
        "Lkotlin/Function1;",
        "",
        "scope",
        "Lkotlinx/coroutines/CoroutineScope;",
        "dispatcherOnFinished",
        "Lkotlinx/coroutines/CoroutineDispatcher;",
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
.field private final destinationName:Ljava/lang/String;

.field private final projectDirectory:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/io/File;Ljava/lang/String;)V
    .locals 1
    .param p1, "projectDirectory"    # Ljava/io/File;
    .param p2, "destinationName"    # Ljava/lang/String;

    const-string v0, "projectDirectory"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "destinationName"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/catrobat/catroid/io/asynctask/ProjectRenamer;->projectDirectory:Ljava/io/File;

    iput-object p2, p0, Lorg/catrobat/catroid/io/asynctask/ProjectRenamer;->destinationName:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$getDestinationName$p(Lorg/catrobat/catroid/io/asynctask/ProjectRenamer;)Ljava/lang/String;
    .locals 1
    .param p0, "$this"    # Lorg/catrobat/catroid/io/asynctask/ProjectRenamer;

    .line 40
    iget-object v0, p0, Lorg/catrobat/catroid/io/asynctask/ProjectRenamer;->destinationName:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getProjectDirectory$p(Lorg/catrobat/catroid/io/asynctask/ProjectRenamer;)Ljava/io/File;
    .locals 1
    .param p0, "$this"    # Lorg/catrobat/catroid/io/asynctask/ProjectRenamer;

    .line 40
    iget-object v0, p0, Lorg/catrobat/catroid/io/asynctask/ProjectRenamer;->projectDirectory:Ljava/io/File;

    return-object v0
.end method

.method public static synthetic renameProjectAsync$default(Lorg/catrobat/catroid/io/asynctask/ProjectRenamer;Lkotlin/jvm/functions/Function1;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/CoroutineDispatcher;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    .line 46
    sget-object p1, Lorg/catrobat/catroid/io/asynctask/ProjectRenamer$renameProjectAsync$1;->INSTANCE:Lorg/catrobat/catroid/io/asynctask/ProjectRenamer$renameProjectAsync$1;

    check-cast p1, Lkotlin/jvm/functions/Function1;

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    .line 47
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object p2

    check-cast p2, Lkotlin/coroutines/CoroutineContext;

    invoke-static {p2}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object p2

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    .line 48
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object p3

    check-cast p3, Lkotlinx/coroutines/CoroutineDispatcher;

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lorg/catrobat/catroid/io/asynctask/ProjectRenamer;->renameProjectAsync(Lkotlin/jvm/functions/Function1;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/CoroutineDispatcher;)V

    return-void
.end method


# virtual methods
.method public final renameProjectAsync()V
    .locals 6

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x7

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lorg/catrobat/catroid/io/asynctask/ProjectRenamer;->renameProjectAsync$default(Lorg/catrobat/catroid/io/asynctask/ProjectRenamer;Lkotlin/jvm/functions/Function1;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/CoroutineDispatcher;ILjava/lang/Object;)V

    return-void
.end method

.method public final renameProjectAsync(Lkotlin/jvm/functions/Function1;)V
    .locals 6
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

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-static/range {v0 .. v5}, Lorg/catrobat/catroid/io/asynctask/ProjectRenamer;->renameProjectAsync$default(Lorg/catrobat/catroid/io/asynctask/ProjectRenamer;Lkotlin/jvm/functions/Function1;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/CoroutineDispatcher;ILjava/lang/Object;)V

    return-void
.end method

.method public final renameProjectAsync(Lkotlin/jvm/functions/Function1;Lkotlinx/coroutines/CoroutineScope;)V
    .locals 6
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

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-static/range {v0 .. v5}, Lorg/catrobat/catroid/io/asynctask/ProjectRenamer;->renameProjectAsync$default(Lorg/catrobat/catroid/io/asynctask/ProjectRenamer;Lkotlin/jvm/functions/Function1;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/CoroutineDispatcher;ILjava/lang/Object;)V

    return-void
.end method

.method public final renameProjectAsync(Lkotlin/jvm/functions/Function1;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/CoroutineDispatcher;)V
    .locals 8
    .param p1, "onRenameProjectComplete"    # Lkotlin/jvm/functions/Function1;
    .param p2, "scope"    # Lkotlinx/coroutines/CoroutineScope;
    .param p3, "dispatcherOnFinished"    # Lkotlinx/coroutines/CoroutineDispatcher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Lkotlinx/coroutines/CoroutineDispatcher;",
            ")V"
        }
    .end annotation

    const-string v0, "onRenameProjectComplete"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "scope"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dispatcherOnFinished"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    new-instance v0, Lorg/catrobat/catroid/io/asynctask/ProjectRenamer$renameProjectAsync$2;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p3, p1, v1}, Lorg/catrobat/catroid/io/asynctask/ProjectRenamer$renameProjectAsync$2;-><init>(Lorg/catrobat/catroid/io/asynctask/ProjectRenamer;Lkotlinx/coroutines/CoroutineDispatcher;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V

    move-object v5, v0

    check-cast v5, Lkotlin/jvm/functions/Function2;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x3

    const/4 v7, 0x0

    move-object v2, p2

    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 56
    return-void
.end method
