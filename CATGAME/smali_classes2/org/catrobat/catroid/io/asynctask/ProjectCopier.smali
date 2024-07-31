.class public final Lorg/catrobat/catroid/io/asynctask/ProjectCopier;
.super Ljava/lang/Object;
.source "ProjectCopier.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/catrobat/catroid/io/asynctask/ProjectCopier$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u0000 \u00112\u00020\u0001:\u0001\u0011B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0018\u0010\u0007\u001a\u00020\u00082\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0002J2\u0010\t\u001a\u00020\n2\u0014\u0008\u0002\u0010\u000b\u001a\u000e\u0012\u0004\u0012\u00020\u0008\u0012\u0004\u0012\u00020\n0\u000c2\u0008\u0008\u0002\u0010\r\u001a\u00020\u000e2\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u0010H\u0007R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0012"
    }
    d2 = {
        "Lorg/catrobat/catroid/io/asynctask/ProjectCopier;",
        "",
        "sourceDir",
        "Ljava/io/File;",
        "destinationName",
        "",
        "(Ljava/io/File;Ljava/lang/String;)V",
        "copyProject",
        "",
        "copyProjectAsync",
        "",
        "onCopyProjectComplete",
        "Lkotlin/Function1;",
        "scope",
        "Lkotlinx/coroutines/CoroutineScope;",
        "dispatcherOnFinished",
        "Lkotlinx/coroutines/CoroutineDispatcher;",
        "Companion",
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
.field public static final Companion:Lorg/catrobat/catroid/io/asynctask/ProjectCopier$Companion;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final destinationName:Ljava/lang/String;

.field private final sourceDir:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/catrobat/catroid/io/asynctask/ProjectCopier$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/catrobat/catroid/io/asynctask/ProjectCopier$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lorg/catrobat/catroid/io/asynctask/ProjectCopier;->Companion:Lorg/catrobat/catroid/io/asynctask/ProjectCopier$Companion;

    .line 84
    const-class v0, Lorg/catrobat/catroid/io/asynctask/ProjectCopier;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/catrobat/catroid/io/asynctask/ProjectCopier;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/lang/String;)V
    .locals 1
    .param p1, "sourceDir"    # Ljava/io/File;
    .param p2, "destinationName"    # Ljava/lang/String;

    const-string v0, "sourceDir"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "destinationName"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/catrobat/catroid/io/asynctask/ProjectCopier;->sourceDir:Ljava/io/File;

    iput-object p2, p0, Lorg/catrobat/catroid/io/asynctask/ProjectCopier;->destinationName:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$copyProject(Lorg/catrobat/catroid/io/asynctask/ProjectCopier;Ljava/io/File;Ljava/lang/String;)Z
    .locals 1
    .param p0, "$this"    # Lorg/catrobat/catroid/io/asynctask/ProjectCopier;
    .param p1, "sourceDir"    # Ljava/io/File;
    .param p2, "destinationName"    # Ljava/lang/String;

    .line 40
    invoke-direct {p0, p1, p2}, Lorg/catrobat/catroid/io/asynctask/ProjectCopier;->copyProject(Ljava/io/File;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static final synthetic access$getDestinationName$p(Lorg/catrobat/catroid/io/asynctask/ProjectCopier;)Ljava/lang/String;
    .locals 1
    .param p0, "$this"    # Lorg/catrobat/catroid/io/asynctask/ProjectCopier;

    .line 40
    iget-object v0, p0, Lorg/catrobat/catroid/io/asynctask/ProjectCopier;->destinationName:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getSourceDir$p(Lorg/catrobat/catroid/io/asynctask/ProjectCopier;)Ljava/io/File;
    .locals 1
    .param p0, "$this"    # Lorg/catrobat/catroid/io/asynctask/ProjectCopier;

    .line 40
    iget-object v0, p0, Lorg/catrobat/catroid/io/asynctask/ProjectCopier;->sourceDir:Ljava/io/File;

    return-object v0
.end method

.method public static final synthetic access$getTAG$cp()Ljava/lang/String;
    .locals 1

    .line 40
    sget-object v0, Lorg/catrobat/catroid/io/asynctask/ProjectCopier;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private final copyProject(Ljava/io/File;Ljava/lang/String;)Z
    .locals 6
    .param p1, "sourceDir"    # Ljava/io/File;
    .param p2, "destinationName"    # Ljava/lang/String;

    .line 60
    new-instance v0, Ljava/io/File;

    .line 61
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    .line 62
    invoke-static {p2}, Lorg/catrobat/catroid/utils/FileMetaDataExtractor;->encodeSpecialCharsForFileSystem(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 60
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 64
    .local v0, "destinationDir":Ljava/io/File;
    nop

    .line 65
    :try_start_0
    invoke-static {p1, v0}, Lorg/catrobat/catroid/io/StorageOperations;->copyDir(Ljava/io/File;Ljava/io/File;)Ljava/io/File;

    .line 66
    new-instance v1, Ljava/io/File;

    const-string v2, "code.xml"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v1, p2}, Lorg/catrobat/catroid/io/XstreamSerializer;->renameProject(Ljava/io/File;Ljava/lang/String;)Z

    .line 67
    invoke-static {}, Lorg/catrobat/catroid/ProjectManager;->getInstance()Lorg/catrobat/catroid/ProjectManager;

    move-result-object v1

    invoke-virtual {v1, p2}, Lorg/catrobat/catroid/ProjectManager;->addNewDownloadedProject(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    const/4 v1, 0x1

    goto :goto_1

    .line 69
    :catch_0
    move-exception v1

    .line 70
    .local v1, "e":Ljava/io/IOException;
    sget-object v2, Lorg/catrobat/catroid/io/asynctask/ProjectCopier;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Something went wrong while copying "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v4, v1

    check-cast v4, Ljava/lang/Throwable;

    invoke-static {v2, v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 71
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 72
    sget-object v2, Lorg/catrobat/catroid/io/asynctask/ProjectCopier;->TAG:Ljava/lang/String;

    const-string v3, "Folder exists, trying to delete folder."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    nop

    .line 74
    :try_start_1
    invoke-static {v0}, Lorg/catrobat/catroid/io/StorageOperations;->deleteDir(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 75
    :catch_1
    move-exception v2

    .line 76
    .local v2, "deleteException":Ljava/io/IOException;
    sget-object v3, Lorg/catrobat/catroid/io/asynctask/ProjectCopier;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot delete folder "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v5, v2

    check-cast v5, Ljava/lang/Throwable;

    invoke-static {v3, v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 77
    .end local v2    # "deleteException":Ljava/io/IOException;
    :cond_0
    :goto_0
    nop

    .line 79
    const/4 v2, 0x0

    move v1, v2

    .line 64
    .end local v1    # "e":Ljava/io/IOException;
    :goto_1
    return v1
.end method

.method public static synthetic copyProjectAsync$default(Lorg/catrobat/catroid/io/asynctask/ProjectCopier;Lkotlin/jvm/functions/Function1;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/CoroutineDispatcher;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    .line 47
    sget-object p1, Lorg/catrobat/catroid/io/asynctask/ProjectCopier$copyProjectAsync$1;->INSTANCE:Lorg/catrobat/catroid/io/asynctask/ProjectCopier$copyProjectAsync$1;

    check-cast p1, Lkotlin/jvm/functions/Function1;

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    .line 48
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object p2

    check-cast p2, Lkotlin/coroutines/CoroutineContext;

    invoke-static {p2}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object p2

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    .line 49
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object p3

    check-cast p3, Lkotlinx/coroutines/CoroutineDispatcher;

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lorg/catrobat/catroid/io/asynctask/ProjectCopier;->copyProjectAsync(Lkotlin/jvm/functions/Function1;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/CoroutineDispatcher;)V

    return-void
.end method


# virtual methods
.method public final copyProjectAsync()V
    .locals 6

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x7

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lorg/catrobat/catroid/io/asynctask/ProjectCopier;->copyProjectAsync$default(Lorg/catrobat/catroid/io/asynctask/ProjectCopier;Lkotlin/jvm/functions/Function1;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/CoroutineDispatcher;ILjava/lang/Object;)V

    return-void
.end method

.method public final copyProjectAsync(Lkotlin/jvm/functions/Function1;)V
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

    invoke-static/range {v0 .. v5}, Lorg/catrobat/catroid/io/asynctask/ProjectCopier;->copyProjectAsync$default(Lorg/catrobat/catroid/io/asynctask/ProjectCopier;Lkotlin/jvm/functions/Function1;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/CoroutineDispatcher;ILjava/lang/Object;)V

    return-void
.end method

.method public final copyProjectAsync(Lkotlin/jvm/functions/Function1;Lkotlinx/coroutines/CoroutineScope;)V
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

    invoke-static/range {v0 .. v5}, Lorg/catrobat/catroid/io/asynctask/ProjectCopier;->copyProjectAsync$default(Lorg/catrobat/catroid/io/asynctask/ProjectCopier;Lkotlin/jvm/functions/Function1;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/CoroutineDispatcher;ILjava/lang/Object;)V

    return-void
.end method

.method public final copyProjectAsync(Lkotlin/jvm/functions/Function1;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/CoroutineDispatcher;)V
    .locals 8
    .param p1, "onCopyProjectComplete"    # Lkotlin/jvm/functions/Function1;
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

    const-string v0, "onCopyProjectComplete"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "scope"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dispatcherOnFinished"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    new-instance v0, Lorg/catrobat/catroid/io/asynctask/ProjectCopier$copyProjectAsync$2;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p3, p1, v1}, Lorg/catrobat/catroid/io/asynctask/ProjectCopier$copyProjectAsync$2;-><init>(Lorg/catrobat/catroid/io/asynctask/ProjectCopier;Lkotlinx/coroutines/CoroutineDispatcher;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V

    move-object v5, v0

    check-cast v5, Lkotlin/jvm/functions/Function2;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x3

    const/4 v7, 0x0

    move-object v2, p2

    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 57
    return-void
.end method
