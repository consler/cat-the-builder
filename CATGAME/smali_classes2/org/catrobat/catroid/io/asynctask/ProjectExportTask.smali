.class public final Lorg/catrobat/catroid/io/asynctask/ProjectExportTask;
.super Landroid/os/AsyncTask;
.source "ProjectExportTask.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/catrobat/catroid/io/asynctask/ProjectExportTask$ProjectExportCallback;,
        Lorg/catrobat/catroid/io/asynctask/ProjectExportTask$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0011\n\u0002\u0008\u0008\u0018\u0000 \u001b2\u001a\u0012\u0006\u0012\u0004\u0018\u00010\u0002\u0012\u0006\u0012\u0004\u0018\u00010\u0002\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u0001:\u0002\u001b\u001cB%\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u0012\u0006\u0010\t\u001a\u00020\n\u00a2\u0006\u0002\u0010\u000bJ\u0010\u0010\u0010\u001a\u00020\u00112\u0006\u0010\t\u001a\u00020\nH\u0002J\u0008\u0010\u0012\u001a\u00020\u0011H\u0002J\'\u0010\u0013\u001a\u0004\u0018\u00010\u00022\u0016\u0010\u0014\u001a\u000c\u0012\u0008\u0008\u0001\u0012\u0004\u0018\u00010\u00020\u0015\"\u0004\u0018\u00010\u0002H\u0014\u00a2\u0006\u0002\u0010\u0016J\u0008\u0010\u0017\u001a\u00020\u0011H\u0007J\u000e\u0010\u0018\u001a\u00020\u00112\u0006\u0010\u0019\u001a\u00020\u000fJ\u0010\u0010\u001a\u001a\u00020\u00112\u0006\u0010\t\u001a\u00020\nH\u0002R\u0014\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\n0\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000e\u001a\u0004\u0018\u00010\u000fX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001d"
    }
    d2 = {
        "Lorg/catrobat/catroid/io/asynctask/ProjectExportTask;",
        "Landroid/os/AsyncTask;",
        "Ljava/lang/Void;",
        "projectDir",
        "Ljava/io/File;",
        "projectDestination",
        "Landroid/net/Uri;",
        "notificationData",
        "Lorg/catrobat/catroid/utils/notifications/NotificationData;",
        "context",
        "Landroid/content/Context;",
        "(Ljava/io/File;Landroid/net/Uri;Lorg/catrobat/catroid/utils/notifications/NotificationData;Landroid/content/Context;)V",
        "contextWeakReference",
        "Ljava/lang/ref/WeakReference;",
        "finishedExportingCallback",
        "Lorg/catrobat/catroid/io/asynctask/ProjectExportTask$ProjectExportCallback;",
        "abortNotification",
        "",
        "deleteUndoFile",
        "doInBackground",
        "voids",
        "",
        "([Ljava/lang/Void;)Ljava/lang/Void;",
        "exportProjectToExternalStorage",
        "registerCallback",
        "callback",
        "updateNotification",
        "Companion",
        "ProjectExportCallback",
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
.field public static final Companion:Lorg/catrobat/catroid/io/asynctask/ProjectExportTask$Companion;

.field private static final NOTIFICATION_PROGRESS_COMPLETE:I = 0x64

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final contextWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private finishedExportingCallback:Lorg/catrobat/catroid/io/asynctask/ProjectExportTask$ProjectExportCallback;

.field private final notificationData:Lorg/catrobat/catroid/utils/notifications/NotificationData;

.field private final projectDestination:Landroid/net/Uri;

.field private final projectDir:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/catrobat/catroid/io/asynctask/ProjectExportTask$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/catrobat/catroid/io/asynctask/ProjectExportTask$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lorg/catrobat/catroid/io/asynctask/ProjectExportTask;->Companion:Lorg/catrobat/catroid/io/asynctask/ProjectExportTask$Companion;

    .line 115
    const-class v0, Lorg/catrobat/catroid/io/asynctask/ProjectExportTask;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/catrobat/catroid/io/asynctask/ProjectExportTask;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Landroid/net/Uri;Lorg/catrobat/catroid/utils/notifications/NotificationData;Landroid/content/Context;)V
    .locals 1
    .param p1, "projectDir"    # Ljava/io/File;
    .param p2, "projectDestination"    # Landroid/net/Uri;
    .param p3, "notificationData"    # Lorg/catrobat/catroid/utils/notifications/NotificationData;
    .param p4, "context"    # Landroid/content/Context;

    const-string v0, "projectDir"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "projectDestination"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "notificationData"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    nop

    .line 47
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p1, p0, Lorg/catrobat/catroid/io/asynctask/ProjectExportTask;->projectDir:Ljava/io/File;

    iput-object p2, p0, Lorg/catrobat/catroid/io/asynctask/ProjectExportTask;->projectDestination:Landroid/net/Uri;

    iput-object p3, p0, Lorg/catrobat/catroid/io/asynctask/ProjectExportTask;->notificationData:Lorg/catrobat/catroid/utils/notifications/NotificationData;

    .line 49
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/catrobat/catroid/io/asynctask/ProjectExportTask;->contextWeakReference:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method private final abortNotification(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 88
    new-instance v0, Lorg/catrobat/catroid/utils/notifications/StatusBarNotificationManager;

    invoke-direct {v0, p1}, Lorg/catrobat/catroid/utils/notifications/StatusBarNotificationManager;-><init>(Landroid/content/Context;)V

    .line 89
    iget-object v1, p0, Lorg/catrobat/catroid/io/asynctask/ProjectExportTask;->notificationData:Lorg/catrobat/catroid/utils/notifications/NotificationData;

    .line 90
    nop

    .line 88
    const v2, 0x7f120714

    invoke-virtual {v0, p1, v1, v2}, Lorg/catrobat/catroid/utils/notifications/StatusBarNotificationManager;->abortProgressNotificationWithMessage(Landroid/content/Context;Lorg/catrobat/catroid/utils/notifications/NotificationData;I)V

    .line 92
    return-void
.end method

.method private final deleteUndoFile()V
    .locals 5

    .line 95
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lorg/catrobat/catroid/io/asynctask/ProjectExportTask;->projectDir:Ljava/io/File;

    const-string v2, "undo_code.xml"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 96
    .local v0, "undoCodeFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 97
    nop

    .line 98
    :try_start_0
    invoke-static {v0}, Lorg/catrobat/catroid/io/StorageOperations;->deleteFile(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 99
    :catch_0
    move-exception v1

    .line 100
    .local v1, "exception":Ljava/io/IOException;
    sget-object v2, Lorg/catrobat/catroid/io/asynctask/ProjectExportTask;->TAG:Ljava/lang/String;

    move-object v3, v1

    check-cast v3, Ljava/lang/Throwable;

    const-string v4, "Deleting undo file failed."

    invoke-static {v2, v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 101
    .end local v1    # "exception":Ljava/io/IOException;
    :cond_0
    :goto_0
    nop

    .line 103
    return-void
.end method

.method private final updateNotification(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .line 83
    new-instance v0, Lorg/catrobat/catroid/utils/notifications/StatusBarNotificationManager;

    invoke-direct {v0, p1}, Lorg/catrobat/catroid/utils/notifications/StatusBarNotificationManager;-><init>(Landroid/content/Context;)V

    .line 84
    iget-object v1, p0, Lorg/catrobat/catroid/io/asynctask/ProjectExportTask;->notificationData:Lorg/catrobat/catroid/utils/notifications/NotificationData;

    .line 83
    const/16 v2, 0x64

    const/4 v3, 0x0

    invoke-virtual {v0, p1, v1, v2, v3}, Lorg/catrobat/catroid/utils/notifications/StatusBarNotificationManager;->showOrUpdateNotification(Landroid/content/Context;Lorg/catrobat/catroid/utils/notifications/NotificationData;ILandroid/app/PendingIntent;)V

    .line 85
    return-void
.end method


# virtual methods
.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 42
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lorg/catrobat/catroid/io/asynctask/ProjectExportTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 1
    .param p1, "voids"    # [Ljava/lang/Void;

    const-string v0, "voids"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 106
    invoke-virtual {p0}, Lorg/catrobat/catroid/io/asynctask/ProjectExportTask;->exportProjectToExternalStorage()V

    .line 107
    const/4 v0, 0x0

    return-object v0
.end method

.method public final exportProjectToExternalStorage()V
    .locals 7

    .line 54
    iget-object v0, p0, Lorg/catrobat/catroid/io/asynctask/ProjectExportTask;->contextWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-eqz v0, :cond_4

    const-string v1, "contextWeakReference.get() ?: return"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    .local v0, "context":Landroid/content/Context;
    invoke-direct {p0}, Lorg/catrobat/catroid/io/asynctask/ProjectExportTask;->deleteUndoFile()V

    .line 57
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/catrobat/catroid/io/asynctask/ProjectExportTask;->projectDir:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".zip"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 58
    .local v1, "projectFileName":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    sget-object v3, Lorg/catrobat/catroid/common/Constants;->CACHE_DIR:Ljava/io/File;

    invoke-direct {v2, v3, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 59
    .local v2, "cacheFile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 60
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 62
    :cond_0
    nop

    .line 63
    :try_start_0
    new-instance v3, Lorg/catrobat/catroid/io/ZipArchiver;

    invoke-direct {v3}, Lorg/catrobat/catroid/io/ZipArchiver;-><init>()V

    iget-object v4, p0, Lorg/catrobat/catroid/io/asynctask/ProjectExportTask;->projectDir:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Lorg/catrobat/catroid/io/ZipArchiver;->zip(Ljava/io/File;[Ljava/io/File;)V

    .line 64
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 65
    .local v3, "contentResolver":Landroid/content/ContentResolver;
    iget-object v4, p0, Lorg/catrobat/catroid/io/asynctask/ProjectExportTask;->projectDestination:Landroid/net/Uri;

    invoke-static {v3, v4, v2}, Lorg/catrobat/catroid/io/StorageOperations;->copyFileContentToUri(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/io/File;)V

    .line 66
    invoke-direct {p0, v0}, Lorg/catrobat/catroid/io/asynctask/ProjectExportTask;->updateNotification(Landroid/content/Context;)V

    .line 67
    iget-object v4, p0, Lorg/catrobat/catroid/io/asynctask/ProjectExportTask;->finishedExportingCallback:Lorg/catrobat/catroid/io/asynctask/ProjectExportTask$ProjectExportCallback;

    if-eqz v4, :cond_1

    invoke-interface {v4}, Lorg/catrobat/catroid/io/asynctask/ProjectExportTask$ProjectExportCallback;->onProjectExportFinished()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    .end local v3    # "contentResolver":Landroid/content/ContentResolver;
    :cond_1
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 73
    goto :goto_0

    .line 75
    :catchall_0
    move-exception v3

    goto :goto_1

    .line 68
    :catch_0
    move-exception v3

    .line 69
    .local v3, "e":Ljava/io/IOException;
    :try_start_1
    sget-object v4, Lorg/catrobat/catroid/io/asynctask/ProjectExportTask;->TAG:Ljava/lang/String;

    const-string v5, "Cannot create archive."

    move-object v6, v3

    check-cast v6, Ljava/lang/Throwable;

    invoke-static {v4, v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 70
    invoke-direct {p0, v0}, Lorg/catrobat/catroid/io/asynctask/ProjectExportTask;->abortNotification(Landroid/content/Context;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 72
    .end local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 73
    :goto_0
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 75
    :cond_2
    nop

    .line 76
    return-void

    .line 72
    :goto_1
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 73
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    :cond_3
    throw v3

    .line 54
    .end local v0    # "context":Landroid/content/Context;
    .end local v1    # "projectFileName":Ljava/lang/String;
    .end local v2    # "cacheFile":Ljava/io/File;
    :cond_4
    return-void
.end method

.method public final registerCallback(Lorg/catrobat/catroid/io/asynctask/ProjectExportTask$ProjectExportCallback;)V
    .locals 1
    .param p1, "callback"    # Lorg/catrobat/catroid/io/asynctask/ProjectExportTask$ProjectExportCallback;

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    iput-object p1, p0, Lorg/catrobat/catroid/io/asynctask/ProjectExportTask;->finishedExportingCallback:Lorg/catrobat/catroid/io/asynctask/ProjectExportTask$ProjectExportCallback;

    .line 80
    return-void
.end method
