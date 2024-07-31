.class public final Lorg/catrobat/catroid/io/asynctask/ProjectLoaderKt;
.super Ljava/lang/Object;
.source "ProjectLoader.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0014\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u001a\u0018\u0010\u0000\u001a\u00020\u00012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u00032\u0006\u0010\u0004\u001a\u00020\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "loadProject",
        "",
        "projectDir",
        "Ljava/io/File;",
        "context",
        "Landroid/content/Context;",
        "catroid_catroidDebug"
    }
    k = 0x2
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# direct methods
.method public static final loadProject(Ljava/io/File;Landroid/content/Context;)Z
    .locals 5
    .param p0, "projectDir"    # Ljava/io/File;
    .param p1, "context"    # Landroid/content/Context;

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    nop

    .line 72
    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Lorg/catrobat/catroid/ProjectManager;->getInstance()Lorg/catrobat/catroid/ProjectManager;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Lorg/catrobat/catroid/ProjectManager;->loadProject(Ljava/io/File;Landroid/content/Context;)V

    .line 73
    invoke-static {}, Lorg/catrobat/catroid/ProjectManager;->getInstance()Lorg/catrobat/catroid/ProjectManager;

    move-result-object v1

    const-string v2, "ProjectManager.getInstance()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/catrobat/catroid/ProjectManager;->getCurrentProject()Lorg/catrobat/catroid/content/Project;

    move-result-object v1

    .line 74
    .local v1, "project":Lorg/catrobat/catroid/content/Project;
    new-instance v2, Lorg/catrobat/catroid/io/DeviceVariableAccessor;

    invoke-direct {v2, p0}, Lorg/catrobat/catroid/io/DeviceVariableAccessor;-><init>(Ljava/io/File;)V

    invoke-virtual {v2, v1}, Lorg/catrobat/catroid/io/DeviceVariableAccessor;->cleanUpDeletedUserData(Lorg/catrobat/catroid/content/Project;)V

    .line 75
    new-instance v2, Lorg/catrobat/catroid/io/DeviceListAccessor;

    invoke-direct {v2, p0}, Lorg/catrobat/catroid/io/DeviceListAccessor;-><init>(Ljava/io/File;)V

    invoke-virtual {v2, v1}, Lorg/catrobat/catroid/io/DeviceListAccessor;->cleanUpDeletedUserData(Lorg/catrobat/catroid/content/Project;)V

    .line 76
    new-instance v2, Lorg/catrobat/catroid/io/LookFileGarbageCollector;

    invoke-direct {v2}, Lorg/catrobat/catroid/io/LookFileGarbageCollector;-><init>()V

    const-string v3, "project"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Lorg/catrobat/catroid/io/LookFileGarbageCollector;->cleanUpUnusedLookFiles(Lorg/catrobat/catroid/content/Project;)V
    :try_end_0
    .catch Lorg/catrobat/catroid/exceptions/ProjectException; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    const/4 v0, 0x1

    .end local v1    # "project":Lorg/catrobat/catroid/content/Project;
    goto :goto_0

    .line 78
    :catch_0
    move-exception v1

    .line 79
    .local v1, "e":Lorg/catrobat/catroid/exceptions/ProjectException;
    if-eqz p0, :cond_0

    .line 80
    sget-object v2, Lorg/catrobat/catroid/io/asynctask/ProjectLoader;->Companion:Lorg/catrobat/catroid/io/asynctask/ProjectLoader$Companion;

    invoke-virtual {v2}, Lorg/catrobat/catroid/io/asynctask/ProjectLoader$Companion;->getTAG()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot load project in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v4, v1

    check-cast v4, Ljava/lang/Throwable;

    invoke-static {v2, v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 81
    nop

    .line 71
    .end local v1    # "e":Lorg/catrobat/catroid/exceptions/ProjectException;
    :goto_0
    return v0

    .line 79
    .restart local v1    # "e":Lorg/catrobat/catroid/exceptions/ProjectException;
    :cond_0
    return v0
.end method
