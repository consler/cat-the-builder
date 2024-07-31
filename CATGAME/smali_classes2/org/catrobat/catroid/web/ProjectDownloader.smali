.class public final Lorg/catrobat/catroid/web/ProjectDownloader;
.super Ljava/lang/Object;
.source "ProjectDownloader.kt"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/catrobat/catroid/web/ProjectDownloader$Receiver;,
        Lorg/catrobat/catroid/web/ProjectDownloader$ProjectDownloadQueue;,
        Lorg/catrobat/catroid/web/ProjectDownloader$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u0000 \u00142\u00020\u0001:\u0003\u0014\u0015\u0016B\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0002\u0010\u0008J\u000e\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000eJ\u0016\u0010\u000f\u001a\u00020\u000c2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0005J\u0018\u0010\u0013\u001a\u00020\u000c2\u0006\u0010\u0012\u001a\u00020\u00052\u0006\u0010\u0010\u001a\u00020\u0011H\u0007R\u0014\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u00070\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0017"
    }
    d2 = {
        "Lorg/catrobat/catroid/web/ProjectDownloader;",
        "Ljava/io/Serializable;",
        "queue",
        "Lorg/catrobat/catroid/web/ProjectDownloader$ProjectDownloadQueue;",
        "url",
        "",
        "callback",
        "Lorg/catrobat/catroid/scratchconverter/Client$ProjectDownloadCallback;",
        "(Lorg/catrobat/catroid/web/ProjectDownloader$ProjectDownloadQueue;Ljava/lang/String;Lorg/catrobat/catroid/scratchconverter/Client$ProjectDownloadCallback;)V",
        "callbackWeakReference",
        "Ljava/lang/ref/WeakReference;",
        "download",
        "",
        "activity",
        "Landroidx/appcompat/app/AppCompatActivity;",
        "downloadOverwriteExistingProject",
        "context",
        "Landroid/content/Context;",
        "projectName",
        "startService",
        "Companion",
        "ProjectDownloadQueue",
        "Receiver",
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
.field public static final Companion:Lorg/catrobat/catroid/web/ProjectDownloader$Companion;

.field private static final FILENAME_QUERY_PARAM:Ljava/lang/String; = "fname="

.field private static final TAG:Ljava/lang/String;

.field private static final serialVersionUID:J = 0x2aL


# instance fields
.field private final callbackWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lorg/catrobat/catroid/scratchconverter/Client$ProjectDownloadCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final queue:Lorg/catrobat/catroid/web/ProjectDownloader$ProjectDownloadQueue;

.field private final url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/catrobat/catroid/web/ProjectDownloader$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/catrobat/catroid/web/ProjectDownloader$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lorg/catrobat/catroid/web/ProjectDownloader;->Companion:Lorg/catrobat/catroid/web/ProjectDownloader$Companion;

    .line 65
    const-class v0, Lorg/catrobat/catroid/web/ProjectDownloader;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/catrobat/catroid/web/ProjectDownloader;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/catrobat/catroid/web/ProjectDownloader$ProjectDownloadQueue;Ljava/lang/String;Lorg/catrobat/catroid/scratchconverter/Client$ProjectDownloadCallback;)V
    .locals 1
    .param p1, "queue"    # Lorg/catrobat/catroid/web/ProjectDownloader$ProjectDownloadQueue;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "callback"    # Lorg/catrobat/catroid/scratchconverter/Client$ProjectDownloadCallback;

    const-string v0, "queue"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "url"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/catrobat/catroid/web/ProjectDownloader;->queue:Lorg/catrobat/catroid/web/ProjectDownloader$ProjectDownloadQueue;

    iput-object p2, p0, Lorg/catrobat/catroid/web/ProjectDownloader;->url:Ljava/lang/String;

    .line 60
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/catrobat/catroid/web/ProjectDownloader;->callbackWeakReference:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public static final synthetic access$getCallbackWeakReference$p(Lorg/catrobat/catroid/web/ProjectDownloader;)Ljava/lang/ref/WeakReference;
    .locals 1
    .param p0, "$this"    # Lorg/catrobat/catroid/web/ProjectDownloader;

    .line 55
    iget-object v0, p0, Lorg/catrobat/catroid/web/ProjectDownloader;->callbackWeakReference:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method public static final synthetic access$getQueue$p(Lorg/catrobat/catroid/web/ProjectDownloader;)Lorg/catrobat/catroid/web/ProjectDownloader$ProjectDownloadQueue;
    .locals 1
    .param p0, "$this"    # Lorg/catrobat/catroid/web/ProjectDownloader;

    .line 55
    iget-object v0, p0, Lorg/catrobat/catroid/web/ProjectDownloader;->queue:Lorg/catrobat/catroid/web/ProjectDownloader$ProjectDownloadQueue;

    return-object v0
.end method

.method public static final synthetic access$getTAG$cp()Ljava/lang/String;
    .locals 1

    .line 55
    sget-object v0, Lorg/catrobat/catroid/web/ProjectDownloader;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getUrl$p(Lorg/catrobat/catroid/web/ProjectDownloader;)Ljava/lang/String;
    .locals 1
    .param p0, "$this"    # Lorg/catrobat/catroid/web/ProjectDownloader;

    .line 55
    iget-object v0, p0, Lorg/catrobat/catroid/web/ProjectDownloader;->url:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final download(Landroidx/appcompat/app/AppCompatActivity;)V
    .locals 4
    .param p1, "activity"    # Landroidx/appcompat/app/AppCompatActivity;

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    sget-object v0, Lorg/catrobat/catroid/web/ProjectDownloader;->Companion:Lorg/catrobat/catroid/web/ProjectDownloader$Companion;

    iget-object v1, p0, Lorg/catrobat/catroid/web/ProjectDownloader;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/web/ProjectDownloader$Companion;->getProjectNameFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 82
    .local v0, "projectName":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 83
    move-object v1, p1

    check-cast v1, Landroid/content/Context;

    const v2, 0x7f1202d9

    invoke-static {v1, v2}, Lorg/catrobat/catroid/utils/ToastUtil;->showError(Landroid/content/Context;I)V

    .line 84
    return-void

    .line 87
    :cond_0
    iget-object v1, p0, Lorg/catrobat/catroid/web/ProjectDownloader;->queue:Lorg/catrobat/catroid/web/ProjectDownloader$ProjectDownloadQueue;

    invoke-interface {v1, v0}, Lorg/catrobat/catroid/web/ProjectDownloader$ProjectDownloadQueue;->alreadyInQueue(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {v0}, Lorg/catrobat/catroid/ui/recyclerview/dialog/ReplaceExistingProjectDialogFragment;->projectExistsInDirectory(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "projectExistsInDirectory(projectName)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 91
    :cond_1
    move-object v1, p1

    check-cast v1, Landroid/content/Context;

    invoke-virtual {p0, v1, v0}, Lorg/catrobat/catroid/web/ProjectDownloader;->downloadOverwriteExistingProject(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    .line 88
    :cond_2
    :goto_0
    invoke-static {v0, p0}, Lorg/catrobat/catroid/ui/recyclerview/dialog/ReplaceExistingProjectDialogFragment;->newInstance(Ljava/lang/String;Lorg/catrobat/catroid/web/ProjectDownloader;)Lorg/catrobat/catroid/ui/recyclerview/dialog/ReplaceExistingProjectDialogFragment;

    move-result-object v1

    .line 89
    .local v1, "dialog":Lorg/catrobat/catroid/ui/recyclerview/dialog/ReplaceExistingProjectDialogFragment;
    invoke-virtual {p1}, Landroidx/appcompat/app/AppCompatActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v2

    sget-object v3, Lorg/catrobat/catroid/ui/recyclerview/dialog/ReplaceExistingProjectDialogFragment;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/catrobat/catroid/ui/recyclerview/dialog/ReplaceExistingProjectDialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 92
    .end local v1    # "dialog":Lorg/catrobat/catroid/ui/recyclerview/dialog/ReplaceExistingProjectDialogFragment;
    :goto_1
    nop

    .line 93
    return-void
.end method

.method public final downloadOverwriteExistingProject(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "projectName"    # Ljava/lang/String;

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "projectName"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 96
    iget-object v0, p0, Lorg/catrobat/catroid/web/ProjectDownloader;->queue:Lorg/catrobat/catroid/web/ProjectDownloader$ProjectDownloadQueue;

    monitor-enter v0

    const/4 v1, 0x0

    .line 97
    .local v1, "$i$a$-synchronized-ProjectDownloader$downloadOverwriteExistingProject$1":I
    :try_start_0
    iget-object v2, p0, Lorg/catrobat/catroid/web/ProjectDownloader;->queue:Lorg/catrobat/catroid/web/ProjectDownloader$ProjectDownloadQueue;

    invoke-interface {v2, p2}, Lorg/catrobat/catroid/web/ProjectDownloader$ProjectDownloadQueue;->alreadyInQueue(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 98
    nop

    .line 99
    const v2, 0x7f1202f4

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    .line 100
    const/4 v4, 0x0

    aput-object p2, v3, v4

    .line 98
    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "context.getString(\n     \u2026             projectName)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 101
    .local v2, "errorMessage":Ljava/lang/String;
    sget-object v3, Lorg/catrobat/catroid/web/ProjectDownloader;->TAG:Ljava/lang/String;

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    invoke-static {p1, v2}, Lorg/catrobat/catroid/utils/ToastUtil;->showError(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 103
    .end local v1    # "$i$a$-synchronized-ProjectDownloader$downloadOverwriteExistingProject$1":I
    .end local v2    # "errorMessage":Ljava/lang/String;
    monitor-exit v0

    return-void

    .line 106
    .restart local v1    # "$i$a$-synchronized-ProjectDownloader$downloadOverwriteExistingProject$1":I
    :cond_0
    :try_start_1
    iget-object v2, p0, Lorg/catrobat/catroid/web/ProjectDownloader;->queue:Lorg/catrobat/catroid/web/ProjectDownloader$ProjectDownloadQueue;

    invoke-interface {v2, p2}, Lorg/catrobat/catroid/web/ProjectDownloader$ProjectDownloadQueue;->enqueue(Ljava/lang/String;)V

    .line 107
    invoke-virtual {p0, p2, p1}, Lorg/catrobat/catroid/web/ProjectDownloader;->startService(Ljava/lang/String;Landroid/content/Context;)V

    .line 108
    nop

    .end local v1    # "$i$a$-synchronized-ProjectDownloader$downloadOverwriteExistingProject$1":I
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 96
    monitor-exit v0

    .line 109
    return-void

    .line 96
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public final startService(Ljava/lang/String;Landroid/content/Context;)V
    .locals 5
    .param p1, "projectName"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;

    const-string v0, "projectName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 113
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lorg/catrobat/catroid/transfers/project/ProjectDownloadService;

    invoke-direct {v0, p2, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 114
    .local v0, "downloadIntent":Landroid/content/Intent;
    const-string v1, "downloadName"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 115
    iget-object v1, p0, Lorg/catrobat/catroid/web/ProjectDownloader;->url:Ljava/lang/String;

    const-string v2, "url"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 116
    new-instance v1, Lorg/catrobat/catroid/web/ProjectDownloader$Receiver;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {v1, p0, p1, v2}, Lorg/catrobat/catroid/web/ProjectDownloader$Receiver;-><init>(Lorg/catrobat/catroid/web/ProjectDownloader;Ljava/lang/String;Landroid/os/Handler;)V

    check-cast v1, Landroid/os/Parcelable;

    const-string v2, "receiver"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 118
    new-instance v1, Lorg/catrobat/catroid/utils/notifications/StatusBarNotificationManager;

    invoke-direct {v1, p2}, Lorg/catrobat/catroid/utils/notifications/StatusBarNotificationManager;-><init>(Landroid/content/Context;)V

    .line 119
    .local v1, "statusBarNotificationManager":Lorg/catrobat/catroid/utils/notifications/StatusBarNotificationManager;
    invoke-virtual {v1, p2, p1}, Lorg/catrobat/catroid/utils/notifications/StatusBarNotificationManager;->createProjectDownloadNotification(Landroid/content/Context;Ljava/lang/String;)Lorg/catrobat/catroid/utils/notifications/NotificationData;

    move-result-object v2

    .line 120
    .local v2, "notificationData":Lorg/catrobat/catroid/utils/notifications/NotificationData;
    move-object v3, v2

    check-cast v3, Ljava/io/Serializable;

    const-string v4, "notificationData"

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 121
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, p2, v2, v3, v4}, Lorg/catrobat/catroid/utils/notifications/StatusBarNotificationManager;->showOrUpdateNotification(Landroid/content/Context;Lorg/catrobat/catroid/utils/notifications/NotificationData;ILandroid/app/PendingIntent;)V

    .line 123
    iget-object v3, p0, Lorg/catrobat/catroid/web/ProjectDownloader;->callbackWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/catrobat/catroid/scratchconverter/Client$ProjectDownloadCallback;

    if-eqz v3, :cond_0

    iget-object v4, p0, Lorg/catrobat/catroid/web/ProjectDownloader;->url:Ljava/lang/String;

    invoke-interface {v3, v4}, Lorg/catrobat/catroid/scratchconverter/Client$ProjectDownloadCallback;->onDownloadStarted(Ljava/lang/String;)V

    .line 124
    :cond_0
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1a

    if-lt v3, v4, :cond_1

    .line 125
    invoke-virtual {p2, v0}, Landroid/content/Context;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    .line 127
    :cond_1
    invoke-virtual {p2, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 128
    :goto_0
    nop

    .line 129
    return-void
.end method
