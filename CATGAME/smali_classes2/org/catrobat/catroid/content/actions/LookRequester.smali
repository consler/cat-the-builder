.class public final Lorg/catrobat/catroid/content/actions/LookRequester;
.super Ljava/lang/Object;
.source "PaintNewLookAction.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\t\u001a\u0004\u0018\u00010\nJ\u000e\u0010\u000b\u001a\u00020\u00042\u0006\u0010\u000c\u001a\u00020\rR\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\u000e"
    }
    d2 = {
        "Lorg/catrobat/catroid/content/actions/LookRequester;",
        "",
        "()V",
        "anyAsked",
        "",
        "getAnyAsked",
        "()Z",
        "setAnyAsked",
        "(Z)V",
        "getFile",
        "Ljava/io/File;",
        "requestNewLook",
        "pocketPaintAction",
        "Lorg/catrobat/catroid/content/actions/PocketPaintAction;",
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
.field public static final INSTANCE:Lorg/catrobat/catroid/content/actions/LookRequester;

.field private static anyAsked:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 116
    new-instance v0, Lorg/catrobat/catroid/content/actions/LookRequester;

    invoke-direct {v0}, Lorg/catrobat/catroid/content/actions/LookRequester;-><init>()V

    sput-object v0, Lorg/catrobat/catroid/content/actions/LookRequester;->INSTANCE:Lorg/catrobat/catroid/content/actions/LookRequester;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getAnyAsked()Z
    .locals 1

    .line 117
    sget-boolean v0, Lorg/catrobat/catroid/content/actions/LookRequester;->anyAsked:Z

    return v0
.end method

.method public final declared-synchronized getFile()Ljava/io/File;
    .locals 7

    monitor-enter p0

    .line 131
    const/4 v0, 0x0

    :try_start_0
    check-cast v0, Ljava/io/File;

    .line 132
    .local v0, "file":Ljava/io/File;
    const-string v1, "LookRequester"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 133
    .local v1, "TAG":Ljava/lang/String;
    nop

    .line 134
    :try_start_1
    invoke-static {}, Lorg/catrobat/catroid/ProjectManager;->getInstance()Lorg/catrobat/catroid/ProjectManager;

    move-result-object v2

    const-string v3, "ProjectManager.getInstance()"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Lorg/catrobat/catroid/ProjectManager;->getCurrentlyPlayingScene()Lorg/catrobat/catroid/content/Scene;

    move-result-object v2

    .line 135
    .local v2, "currentScene":Lorg/catrobat/catroid/content/Scene;
    new-instance v3, Ljava/io/File;

    const-string v4, "currentScene"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Lorg/catrobat/catroid/content/Scene;->getDirectory()Ljava/io/File;

    move-result-object v4

    const-string v5, "images"

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 136
    .local v3, "imageDirectory":Ljava/io/File;
    const-string v4, "image.png"

    .line 137
    .local v4, "pocketPaintImageFileName":Ljava/lang/String;
    new-instance v5, Ljava/io/File;

    sget-object v6, Lorg/catrobat/catroid/common/Constants;->POCKET_PAINT_CACHE_DIR:Ljava/io/File;

    invoke-direct {v5, v6, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 138
    .local v5, "pocketPaintFile":Ljava/io/File;
    invoke-static {v5, v3}, Lorg/catrobat/catroid/io/StorageOperations;->copyFileToDir(Ljava/io/File;Ljava/io/File;)Ljava/io/File;

    move-result-object v6
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, v6

    goto :goto_0

    .line 139
    .end local v2    # "currentScene":Lorg/catrobat/catroid/content/Scene;
    .end local v3    # "imageDirectory":Ljava/io/File;
    .end local v4    # "pocketPaintImageFileName":Ljava/lang/String;
    .end local v5    # "pocketPaintFile":Ljava/io/File;
    .end local p0    # "this":Lorg/catrobat/catroid/content/actions/LookRequester;
    :catch_0
    move-exception v2

    .line 140
    .local v2, "e":Ljava/io/IOException;
    :try_start_2
    move-object v3, v2

    check-cast v3, Ljava/lang/Throwable;

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    .end local v2    # "e":Ljava/io/IOException;
    :goto_0
    nop

    .line 142
    const/4 v2, 0x0

    sput-boolean v2, Lorg/catrobat/catroid/content/actions/LookRequester;->anyAsked:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 143
    monitor-exit p0

    return-object v0

    .line 130
    .end local v0    # "file":Ljava/io/File;
    .end local v1    # "TAG":Ljava/lang/String;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized requestNewLook(Lorg/catrobat/catroid/content/actions/PocketPaintAction;)Z
    .locals 4
    .param p1, "pocketPaintAction"    # Lorg/catrobat/catroid/content/actions/PocketPaintAction;

    monitor-enter p0

    :try_start_0
    const-string v0, "pocketPaintAction"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 120
    sget-boolean v0, Lorg/catrobat/catroid/content/actions/LookRequester;->anyAsked:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 121
    monitor-exit p0

    return v1

    .line 123
    :cond_0
    nop

    .line 124
    :try_start_1
    sget-object v0, Lorg/catrobat/catroid/stage/StageActivity;->messageHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 123
    new-array v3, v2, [Lorg/catrobat/catroid/content/actions/PocketPaintAction;

    aput-object p1, v3, v1

    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 124
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .end local p0    # "this":Lorg/catrobat/catroid/content/actions/LookRequester;
    :cond_1
    nop

    .line 125
    :goto_0
    sput-boolean v2, Lorg/catrobat/catroid/content/actions/LookRequester;->anyAsked:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 126
    monitor-exit p0

    return v2

    .line 119
    .end local p1    # "pocketPaintAction":Lorg/catrobat/catroid/content/actions/PocketPaintAction;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final setAnyAsked(Z)V
    .locals 0
    .param p1, "<set-?>"    # Z

    .line 117
    sput-boolean p1, Lorg/catrobat/catroid/content/actions/LookRequester;->anyAsked:Z

    return-void
.end method
