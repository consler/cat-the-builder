.class public final Lorg/catrobat/catroid/io/asynctask/ProjectLoader;
.super Ljava/lang/Object;
.source "ProjectLoader.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/catrobat/catroid/io/asynctask/ProjectLoader$ProjectLoadListener;,
        Lorg/catrobat/catroid/io/asynctask/ProjectLoader$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u0000 \u00112\u00020\u0001:\u0002\u0011\u0012B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0012\u0010\u000b\u001a\u00020\u000c2\u0008\u0008\u0002\u0010\r\u001a\u00020\u000eH\u0007J\u000e\u0010\u000f\u001a\u00020\u00002\u0006\u0010\u0010\u001a\u00020\nR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0016\u0010\t\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0013"
    }
    d2 = {
        "Lorg/catrobat/catroid/io/asynctask/ProjectLoader;",
        "",
        "projectDir",
        "Ljava/io/File;",
        "context",
        "Landroid/content/Context;",
        "(Ljava/io/File;Landroid/content/Context;)V",
        "weakContextReference",
        "Ljava/lang/ref/WeakReference;",
        "weakListenerReference",
        "Lorg/catrobat/catroid/io/asynctask/ProjectLoader$ProjectLoadListener;",
        "loadProjectAsync",
        "",
        "scope",
        "Lkotlinx/coroutines/CoroutineScope;",
        "setListener",
        "listener",
        "Companion",
        "ProjectLoadListener",
        "catroid_catroidDebug"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# static fields
.field public static final Companion:Lorg/catrobat/catroid/io/asynctask/ProjectLoader$Companion;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private projectDir:Ljava/io/File;

.field private weakContextReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private weakListenerReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lorg/catrobat/catroid/io/asynctask/ProjectLoader$ProjectLoadListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/catrobat/catroid/io/asynctask/ProjectLoader$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/catrobat/catroid/io/asynctask/ProjectLoader$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lorg/catrobat/catroid/io/asynctask/ProjectLoader;->Companion:Lorg/catrobat/catroid/io/asynctask/ProjectLoader$Companion;

    .line 44
    const-class v0, Lorg/catrobat/catroid/io/asynctask/ProjectLoader;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/catrobat/catroid/io/asynctask/ProjectLoader;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Landroid/content/Context;)V
    .locals 1
    .param p1, "projectDir"    # Ljava/io/File;
    .param p2, "context"    # Landroid/content/Context;

    const-string v0, "projectDir"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/catrobat/catroid/io/asynctask/ProjectLoader;->projectDir:Ljava/io/File;

    .line 40
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/catrobat/catroid/io/asynctask/ProjectLoader;->weakContextReference:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public static final synthetic access$getProjectDir$p(Lorg/catrobat/catroid/io/asynctask/ProjectLoader;)Ljava/io/File;
    .locals 1
    .param p0, "$this"    # Lorg/catrobat/catroid/io/asynctask/ProjectLoader;

    .line 39
    iget-object v0, p0, Lorg/catrobat/catroid/io/asynctask/ProjectLoader;->projectDir:Ljava/io/File;

    return-object v0
.end method

.method public static final synthetic access$getTAG$cp()Ljava/lang/String;
    .locals 1

    .line 39
    sget-object v0, Lorg/catrobat/catroid/io/asynctask/ProjectLoader;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getWeakListenerReference$p(Lorg/catrobat/catroid/io/asynctask/ProjectLoader;)Ljava/lang/ref/WeakReference;
    .locals 1
    .param p0, "$this"    # Lorg/catrobat/catroid/io/asynctask/ProjectLoader;

    .line 39
    iget-object v0, p0, Lorg/catrobat/catroid/io/asynctask/ProjectLoader;->weakListenerReference:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method public static final synthetic access$setProjectDir$p(Lorg/catrobat/catroid/io/asynctask/ProjectLoader;Ljava/io/File;)V
    .locals 0
    .param p0, "$this"    # Lorg/catrobat/catroid/io/asynctask/ProjectLoader;
    .param p1, "<set-?>"    # Ljava/io/File;

    .line 39
    iput-object p1, p0, Lorg/catrobat/catroid/io/asynctask/ProjectLoader;->projectDir:Ljava/io/File;

    return-void
.end method

.method public static final synthetic access$setWeakListenerReference$p(Lorg/catrobat/catroid/io/asynctask/ProjectLoader;Ljava/lang/ref/WeakReference;)V
    .locals 0
    .param p0, "$this"    # Lorg/catrobat/catroid/io/asynctask/ProjectLoader;
    .param p1, "<set-?>"    # Ljava/lang/ref/WeakReference;

    .line 39
    iput-object p1, p0, Lorg/catrobat/catroid/io/asynctask/ProjectLoader;->weakListenerReference:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public static synthetic loadProjectAsync$default(Lorg/catrobat/catroid/io/asynctask/ProjectLoader;Lkotlinx/coroutines/CoroutineScope;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    .line 53
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object p1

    check-cast p1, Lkotlin/coroutines/CoroutineContext;

    invoke-static {p1}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object p1

    :cond_0
    invoke-virtual {p0, p1}, Lorg/catrobat/catroid/io/asynctask/ProjectLoader;->loadProjectAsync(Lkotlinx/coroutines/CoroutineScope;)V

    return-void
.end method


# virtual methods
.method public final loadProjectAsync()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1, v0}, Lorg/catrobat/catroid/io/asynctask/ProjectLoader;->loadProjectAsync$default(Lorg/catrobat/catroid/io/asynctask/ProjectLoader;Lkotlinx/coroutines/CoroutineScope;ILjava/lang/Object;)V

    return-void
.end method

.method public final loadProjectAsync(Lkotlinx/coroutines/CoroutineScope;)V
    .locals 7
    .param p1, "scope"    # Lkotlinx/coroutines/CoroutineScope;

    const-string v0, "scope"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    iget-object v0, p0, Lorg/catrobat/catroid/io/asynctask/ProjectLoader;->weakContextReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-eqz v0, :cond_0

    const-string v1, "weakContextReference.get() ?: return"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    .local v0, "context":Landroid/content/Context;
    const/4 v2, 0x0

    const/4 v3, 0x0

    new-instance v1, Lorg/catrobat/catroid/io/asynctask/ProjectLoader$loadProjectAsync$1;

    const/4 v4, 0x0

    invoke-direct {v1, p0, v0, v4}, Lorg/catrobat/catroid/io/asynctask/ProjectLoader$loadProjectAsync$1;-><init>(Lorg/catrobat/catroid/io/asynctask/ProjectLoader;Landroid/content/Context;Lkotlin/coroutines/Continuation;)V

    move-object v4, v1

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    move-object v1, p1

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 63
    return-void

    .line 54
    .end local v0    # "context":Landroid/content/Context;
    :cond_0
    return-void
.end method

.method public final setListener(Lorg/catrobat/catroid/io/asynctask/ProjectLoader$ProjectLoadListener;)Lorg/catrobat/catroid/io/asynctask/ProjectLoader;
    .locals 1
    .param p1, "listener"    # Lorg/catrobat/catroid/io/asynctask/ProjectLoader$ProjectLoadListener;

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/catrobat/catroid/io/asynctask/ProjectLoader;->weakListenerReference:Ljava/lang/ref/WeakReference;

    .line 49
    return-object p0
.end method
