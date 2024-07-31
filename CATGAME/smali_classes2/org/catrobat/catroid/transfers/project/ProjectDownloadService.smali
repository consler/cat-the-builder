.class public final Lorg/catrobat/catroid/transfers/project/ProjectDownloadService;
.super Landroid/app/IntentService;
.source "ProjectDownloadService.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/catrobat/catroid/transfers/project/ProjectDownloadService$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u0000 \u00182\u00020\u0001:\u0001\u0018B\u0005\u00a2\u0006\u0002\u0010\u0002J \u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\nH\u0002J(\u0010\u000b\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000fH\u0002J(\u0010\u0010\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0007\u001a\u00020\u0008H\u0002J\u0010\u0010\u0013\u001a\u00020\u00042\u0006\u0010\u0014\u001a\u00020\nH\u0002J\u0012\u0010\u0015\u001a\u00020\u00042\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u0017H\u0014\u00a8\u0006\u0019"
    }
    d2 = {
        "Lorg/catrobat/catroid/transfers/project/ProjectDownloadService;",
        "Landroid/app/IntentService;",
        "()V",
        "downloadErrorCallback",
        "",
        "context",
        "Landroid/content/Context;",
        "resultReceiver",
        "Landroid/os/ResultReceiver;",
        "projectName",
        "",
        "downloadProgressCallback",
        "notificationData",
        "Lorg/catrobat/catroid/utils/notifications/NotificationData;",
        "progress",
        "",
        "downloadSuccessCallback",
        "destinationFile",
        "Ljava/io/File;",
        "logWarning",
        "warningMessage",
        "onHandleIntent",
        "intent",
        "Landroid/content/Intent;",
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
.field public static final Companion:Lorg/catrobat/catroid/transfers/project/ProjectDownloadService$Companion;

.field private static final DOWNLOAD_FILE_NAME:Ljava/lang/String; = "down.catrobat"

.field public static final ERROR_CODE:I = 0x2

.field public static final EXTRA_DOWNLOAD_NAME:Ljava/lang/String; = "downloadName"

.field public static final EXTRA_NOTIFICATION_DATA:Ljava/lang/String; = "notificationData"

.field public static final EXTRA_RESULT_RECEIVER:Ljava/lang/String; = "receiver"

.field public static final EXTRA_URL:Ljava/lang/String; = "url"

.field public static final SUCCESS_CODE:I = 0x3

.field private static final TAG:Ljava/lang/String;

.field public static final UPDATE_PROGRESS_CODE:I = 0x1

.field public static final UPDATE_PROGRESS_EXTRA:Ljava/lang/String; = "progress"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/catrobat/catroid/transfers/project/ProjectDownloadService$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/catrobat/catroid/transfers/project/ProjectDownloadService$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lorg/catrobat/catroid/transfers/project/ProjectDownloadService;->Companion:Lorg/catrobat/catroid/transfers/project/ProjectDownloadService$Companion;

    .line 61
    const-class v0, Lorg/catrobat/catroid/transfers/project/ProjectDownloadService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ProjectDownloadService::class.java.simpleName"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lorg/catrobat/catroid/transfers/project/ProjectDownloadService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 58
    const-string v0, "ProjectDownloadService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$downloadErrorCallback(Lorg/catrobat/catroid/transfers/project/ProjectDownloadService;Landroid/content/Context;Landroid/os/ResultReceiver;Ljava/lang/String;)V
    .locals 0
    .param p0, "$this"    # Lorg/catrobat/catroid/transfers/project/ProjectDownloadService;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resultReceiver"    # Landroid/os/ResultReceiver;
    .param p3, "projectName"    # Ljava/lang/String;

    .line 58
    invoke-direct {p0, p1, p2, p3}, Lorg/catrobat/catroid/transfers/project/ProjectDownloadService;->downloadErrorCallback(Landroid/content/Context;Landroid/os/ResultReceiver;Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$downloadProgressCallback(Lorg/catrobat/catroid/transfers/project/ProjectDownloadService;Landroid/content/Context;Landroid/os/ResultReceiver;Lorg/catrobat/catroid/utils/notifications/NotificationData;J)V
    .locals 0
    .param p0, "$this"    # Lorg/catrobat/catroid/transfers/project/ProjectDownloadService;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resultReceiver"    # Landroid/os/ResultReceiver;
    .param p3, "notificationData"    # Lorg/catrobat/catroid/utils/notifications/NotificationData;
    .param p4, "progress"    # J

    .line 58
    invoke-direct/range {p0 .. p5}, Lorg/catrobat/catroid/transfers/project/ProjectDownloadService;->downloadProgressCallback(Landroid/content/Context;Landroid/os/ResultReceiver;Lorg/catrobat/catroid/utils/notifications/NotificationData;J)V

    return-void
.end method

.method public static final synthetic access$downloadSuccessCallback(Lorg/catrobat/catroid/transfers/project/ProjectDownloadService;Landroid/content/Context;Ljava/lang/String;Ljava/io/File;Landroid/os/ResultReceiver;)V
    .locals 0
    .param p0, "$this"    # Lorg/catrobat/catroid/transfers/project/ProjectDownloadService;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "projectName"    # Ljava/lang/String;
    .param p3, "destinationFile"    # Ljava/io/File;
    .param p4, "resultReceiver"    # Landroid/os/ResultReceiver;

    .line 58
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/catrobat/catroid/transfers/project/ProjectDownloadService;->downloadSuccessCallback(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;Landroid/os/ResultReceiver;)V

    return-void
.end method

.method public static final synthetic access$getTAG$cp()Ljava/lang/String;
    .locals 1

    .line 58
    sget-object v0, Lorg/catrobat/catroid/transfers/project/ProjectDownloadService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private final downloadErrorCallback(Landroid/content/Context;Landroid/os/ResultReceiver;Ljava/lang/String;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resultReceiver"    # Landroid/os/ResultReceiver;
    .param p3, "projectName"    # Ljava/lang/String;

    .line 177
    new-instance v0, Lorg/catrobat/catroid/utils/notifications/StatusBarNotificationManager;

    invoke-direct {v0, p1}, Lorg/catrobat/catroid/utils/notifications/StatusBarNotificationManager;-><init>(Landroid/content/Context;)V

    .line 178
    .local v0, "statusBarNotificationManager":Lorg/catrobat/catroid/utils/notifications/StatusBarNotificationManager;
    move-object v1, p0

    check-cast v1, Landroid/content/Context;

    invoke-virtual {v0, v1, p3}, Lorg/catrobat/catroid/utils/notifications/StatusBarNotificationManager;->createProjectDownloadNotification(Landroid/content/Context;Ljava/lang/String;)Lorg/catrobat/catroid/utils/notifications/NotificationData;

    move-result-object v1

    .line 179
    .local v1, "notificationData":Lorg/catrobat/catroid/utils/notifications/NotificationData;
    const v2, 0x7f1202f6

    invoke-virtual {v0, p1, v1, v2}, Lorg/catrobat/catroid/utils/notifications/StatusBarNotificationManager;->abortProgressNotificationWithMessage(Landroid/content/Context;Lorg/catrobat/catroid/utils/notifications/NotificationData;I)V

    .line 181
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const/4 v3, 0x2

    invoke-virtual {p2, v3, v2}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 182
    return-void
.end method

.method private final downloadProgressCallback(Landroid/content/Context;Landroid/os/ResultReceiver;Lorg/catrobat/catroid/utils/notifications/NotificationData;J)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resultReceiver"    # Landroid/os/ResultReceiver;
    .param p3, "notificationData"    # Lorg/catrobat/catroid/utils/notifications/NotificationData;
    .param p4, "progress"    # J

    .line 190
    nop

    .line 191
    nop

    .line 190
    new-instance v0, Lorg/catrobat/catroid/utils/notifications/StatusBarNotificationManager;

    invoke-direct {v0, p1}, Lorg/catrobat/catroid/utils/notifications/StatusBarNotificationManager;-><init>(Landroid/content/Context;)V

    .line 191
    long-to-int v1, p4

    const/4 v2, 0x0

    invoke-virtual {v0, p1, p3, v1, v2}, Lorg/catrobat/catroid/utils/notifications/StatusBarNotificationManager;->showOrUpdateNotification(Landroid/content/Context;Lorg/catrobat/catroid/utils/notifications/NotificationData;ILandroid/app/PendingIntent;)V

    .line 192
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 193
    .local v0, "bundle":Landroid/os/Bundle;
    long-to-int v1, p4

    const-string v2, "progress"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 194
    const/4 v1, 0x1

    invoke-virtual {p2, v1, v0}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 195
    return-void
.end method

.method private final downloadSuccessCallback(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;Landroid/os/ResultReceiver;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "projectName"    # Ljava/lang/String;
    .param p3, "destinationFile"    # Ljava/io/File;
    .param p4, "resultReceiver"    # Landroid/os/ResultReceiver;

    .line 134
    new-instance v0, Lorg/catrobat/catroid/utils/notifications/StatusBarNotificationManager;

    invoke-direct {v0, p1}, Lorg/catrobat/catroid/utils/notifications/StatusBarNotificationManager;-><init>(Landroid/content/Context;)V

    .line 135
    .local v0, "statusBarNotificationManager":Lorg/catrobat/catroid/utils/notifications/StatusBarNotificationManager;
    move-object v1, p0

    check-cast v1, Landroid/content/Context;

    invoke-virtual {v0, v1, p2}, Lorg/catrobat/catroid/utils/notifications/StatusBarNotificationManager;->createProjectDownloadNotification(Landroid/content/Context;Ljava/lang/String;)Lorg/catrobat/catroid/utils/notifications/NotificationData;

    move-result-object v1

    .line 137
    .local v1, "notificationData":Lorg/catrobat/catroid/utils/notifications/NotificationData;
    nop

    .line 138
    :try_start_0
    invoke-static {p2}, Lorg/catrobat/catroid/utils/FileMetaDataExtractor;->encodeSpecialCharsForFileSystem(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 139
    .local v2, "projectNameForFileSystem":Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    sget-object v4, Lorg/catrobat/catroid/common/FlavoredConstants;->DEFAULT_ROOT_DIRECTORY:Ljava/io/File;

    invoke-direct {v3, v4, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 140
    .local v3, "projectDir":Ljava/io/File;
    new-instance v4, Lorg/catrobat/catroid/io/ZipArchiver;

    invoke-direct {v4}, Lorg/catrobat/catroid/io/ZipArchiver;-><init>()V

    invoke-virtual {v4, p3, v3}, Lorg/catrobat/catroid/io/ZipArchiver;->unzip(Ljava/io/File;Ljava/io/File;)V

    .line 142
    new-instance v4, Ljava/io/File;

    const-string v5, "code.xml"

    invoke-direct {v4, v3, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v4, p2}, Lorg/catrobat/catroid/io/XstreamSerializer;->renameProject(Ljava/io/File;Ljava/lang/String;)Z

    .line 143
    invoke-static {}, Lorg/catrobat/catroid/ProjectManager;->getInstance()Lorg/catrobat/catroid/ProjectManager;

    move-result-object v4

    invoke-virtual {v4, p2}, Lorg/catrobat/catroid/ProjectManager;->addNewDownloadedProject(Ljava/lang/String;)V

    .line 145
    new-instance v4, Landroid/content/Intent;

    const-class v5, Lorg/catrobat/catroid/ui/MainMenuActivity;

    invoke-direct {v4, p1, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 146
    .local v4, "downloadIntent":Landroid/content/Intent;
    nop

    .line 148
    nop

    .line 146
    nop

    .line 147
    nop

    .line 146
    const-string v5, "android.intent.action.MAIN"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    .line 147
    const/high16 v6, 0x4000000

    invoke-virtual {v5, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v5

    .line 148
    const-string v6, "projectName"

    invoke-virtual {v5, v6, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 150
    nop

    .line 151
    invoke-virtual {v1}, Lorg/catrobat/catroid/utils/notifications/NotificationData;->getNotificationID()I

    move-result v5

    .line 152
    const/high16 v6, 0x10000000

    .line 150
    invoke-static {p1, v5, v4, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    .line 154
    .local v5, "pendingIntent":Landroid/app/PendingIntent;
    nop

    .line 155
    nop

    .line 156
    nop

    .line 157
    const/16 v6, 0x64

    .line 158
    nop

    .line 154
    invoke-virtual {v0, p1, v1, v6, v5}, Lorg/catrobat/catroid/utils/notifications/StatusBarNotificationManager;->showOrUpdateNotification(Landroid/content/Context;Lorg/catrobat/catroid/utils/notifications/NotificationData;ILandroid/app/PendingIntent;)V

    .line 160
    const/4 v6, 0x3

    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p4, v6, v7}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v2    # "projectNameForFileSystem":Ljava/lang/String;
    .end local v3    # "projectDir":Ljava/io/File;
    .end local v4    # "downloadIntent":Landroid/content/Intent;
    .end local v5    # "pendingIntent":Landroid/app/PendingIntent;
    goto :goto_0

    .line 161
    :catch_0
    move-exception v2

    .line 162
    .local v2, "exception":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .local v3, "it":Ljava/lang/String;
    const/4 v4, 0x0

    .line 163
    .local v4, "$i$a$-let-ProjectDownloadService$downloadSuccessCallback$1":I
    sget-object v5, Lorg/catrobat/catroid/transfers/project/ProjectDownloadService;->TAG:Ljava/lang/String;

    invoke-static {v5, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    .end local v3    # "it":Ljava/lang/String;
    .end local v4    # "$i$a$-let-ProjectDownloadService$downloadSuccessCallback$1":I
    nop

    .line 165
    :cond_0
    nop

    .line 166
    nop

    .line 165
    nop

    .line 166
    const v3, 0x7f1202f6

    invoke-virtual {v0, p1, v1, v3}, Lorg/catrobat/catroid/utils/notifications/StatusBarNotificationManager;->abortProgressNotificationWithMessage(Landroid/content/Context;Lorg/catrobat/catroid/utils/notifications/NotificationData;I)V

    .line 168
    const/4 v3, 0x2

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p4, v3, v4}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 169
    .end local v2    # "exception":Ljava/io/IOException;
    :goto_0
    nop

    .line 170
    return-void
.end method

.method private final logWarning(Ljava/lang/String;)V
    .locals 1
    .param p1, "warningMessage"    # Ljava/lang/String;

    .line 198
    sget-object v0, Lorg/catrobat/catroid/transfers/project/ProjectDownloadService;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    return-void
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 14
    .param p1, "intent"    # Landroid/content/Intent;

    .line 76
    if-eqz p1, :cond_5

    move-object v0, p1

    .line 78
    .local v0, "downloadIntent":Landroid/content/Intent;
    const-string v1, "downloadName"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 79
    const-string v2, "downloadIntent.getString\u2026projectName -  aborting\")"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 78
    nop

    .line 80
    .local v1, "projectName":Ljava/lang/String;
    const-string v2, "url"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v2, "Called ProjectDownloadService without url - aborting"

    if-eqz v4, :cond_3

    .line 81
    const-string v3, "downloadIntent.getString\u2026 without url - aborting\")"

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    nop

    .line 82
    .local v4, "url":Ljava/lang/String;
    const-string v3, "receiver"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/os/ResultReceiver;

    if-eqz v3, :cond_2

    .line 83
    const-string v2, "downloadIntent.getParcel\u2026 without url - aborting\")"

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 82
    move-object v2, v3

    .line 85
    .local v2, "resultReceiver":Landroid/os/ResultReceiver;
    new-instance v3, Ljava/io/File;

    new-instance v5, Ljava/io/File;

    sget-object v6, Lorg/catrobat/catroid/common/Constants;->CACHE_DIR:Ljava/io/File;

    const-string v7, "tmp"

    invoke-direct {v5, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string v6, "down.catrobat"

    invoke-direct {v3, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    .line 86
    .local v9, "zipFileString":Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v10, v3

    .line 88
    .local v10, "destinationFile":Ljava/io/File;
    invoke-virtual {v10}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    const-string v5, "destinationFile.parentFile"

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v3

    invoke-virtual {v10}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    move-result v5

    or-int/2addr v3, v5

    if-nez v3, :cond_0

    .line 89
    move-object v3, p0

    check-cast v3, Landroid/content/Context;

    const v5, 0x7f1202f6

    invoke-static {v3, v5}, Lorg/catrobat/catroid/utils/ToastUtil;->showError(Landroid/content/Context;I)V

    .line 90
    return-void

    .line 93
    :cond_0
    const-string v3, "notificationData"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v3

    if-eqz v3, :cond_1

    move-object v11, v3

    check-cast v11, Lorg/catrobat/catroid/utils/notifications/NotificationData;

    .line 94
    .local v11, "notificationData":Lorg/catrobat/catroid/utils/notifications/NotificationData;
    move-object v3, p0

    check-cast v3, Landroid/content/Context;

    const/4 v5, 0x0

    const-string v6, "pocket_code_notification_channel_id"

    invoke-virtual {v11, v3, v6, v5}, Lorg/catrobat/catroid/utils/notifications/NotificationData;->toNotification(Landroid/content/Context;Ljava/lang/String;Landroid/app/PendingIntent;)Landroid/app/Notification;

    move-result-object v12

    .line 95
    .local v12, "notification":Landroid/app/Notification;
    invoke-virtual {v11}, Lorg/catrobat/catroid/utils/notifications/NotificationData;->getNotificationID()I

    move-result v13

    .line 97
    .local v13, "id":I
    invoke-virtual {p0, v13, v12}, Lorg/catrobat/catroid/transfers/project/ProjectDownloadService;->startForeground(ILandroid/app/Notification;)V

    .line 99
    nop

    .line 100
    nop

    .line 99
    new-instance v3, Lorg/catrobat/catroid/web/CatrobatServerCalls;

    sget-object v5, Lorg/catrobat/catroid/web/CatrobatWebClient;->INSTANCE:Lorg/catrobat/catroid/web/CatrobatWebClient;

    invoke-virtual {v5}, Lorg/catrobat/catroid/web/CatrobatWebClient;->getClient()Lokhttp3/OkHttpClient;

    move-result-object v5

    invoke-direct {v3, v5}, Lorg/catrobat/catroid/web/CatrobatServerCalls;-><init>(Lokhttp3/OkHttpClient;)V

    .line 101
    nop

    .line 102
    nop

    .line 103
    new-instance v5, Lorg/catrobat/catroid/transfers/project/ProjectDownloadService$onHandleIntent$1;

    invoke-direct {v5, p0, v1, v10, v2}, Lorg/catrobat/catroid/transfers/project/ProjectDownloadService$onHandleIntent$1;-><init>(Lorg/catrobat/catroid/transfers/project/ProjectDownloadService;Ljava/lang/String;Ljava/io/File;Landroid/os/ResultReceiver;)V

    move-object v6, v5

    check-cast v6, Lorg/catrobat/catroid/web/CatrobatServerCalls$DownloadSuccessCallback;

    .line 113
    new-instance v5, Lorg/catrobat/catroid/transfers/project/ProjectDownloadService$onHandleIntent$2;

    invoke-direct {v5, p0, v2, v1}, Lorg/catrobat/catroid/transfers/project/ProjectDownloadService$onHandleIntent$2;-><init>(Lorg/catrobat/catroid/transfers/project/ProjectDownloadService;Landroid/os/ResultReceiver;Ljava/lang/String;)V

    move-object v7, v5

    check-cast v7, Lorg/catrobat/catroid/web/CatrobatServerCalls$DownloadErrorCallback;

    .line 118
    new-instance v5, Lorg/catrobat/catroid/transfers/project/ProjectDownloadService$onHandleIntent$3;

    invoke-direct {v5, p0, v2, v11}, Lorg/catrobat/catroid/transfers/project/ProjectDownloadService$onHandleIntent$3;-><init>(Lorg/catrobat/catroid/transfers/project/ProjectDownloadService;Landroid/os/ResultReceiver;Lorg/catrobat/catroid/utils/notifications/NotificationData;)V

    move-object v8, v5

    check-cast v8, Lorg/catrobat/catroid/web/CatrobatServerCalls$DownloadProgressCallback;

    .line 100
    move-object v5, v10

    invoke-virtual/range {v3 .. v8}, Lorg/catrobat/catroid/web/CatrobatServerCalls;->downloadProject(Ljava/lang/String;Ljava/io/File;Lorg/catrobat/catroid/web/CatrobatServerCalls$DownloadSuccessCallback;Lorg/catrobat/catroid/web/CatrobatServerCalls$DownloadErrorCallback;Lorg/catrobat/catroid/web/CatrobatServerCalls$DownloadProgressCallback;)V

    .line 125
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lorg/catrobat/catroid/transfers/project/ProjectDownloadService;->stopForeground(Z)V

    .line 126
    return-void

    .line 93
    .end local v11    # "notificationData":Lorg/catrobat/catroid/utils/notifications/NotificationData;
    .end local v12    # "notification":Landroid/app/Notification;
    .end local v13    # "id":I
    :cond_1
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v5, "null cannot be cast to non-null type org.catrobat.catroid.utils.notifications.NotificationData"

    invoke-direct {v3, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 83
    .end local v2    # "resultReceiver":Landroid/os/ResultReceiver;
    .end local v9    # "zipFileString":Ljava/lang/String;
    .end local v10    # "destinationFile":Ljava/io/File;
    :cond_2
    invoke-direct {p0, v2}, Lorg/catrobat/catroid/transfers/project/ProjectDownloadService;->logWarning(Ljava/lang/String;)V

    return-void

    .line 81
    .end local v4    # "url":Ljava/lang/String;
    :cond_3
    invoke-direct {p0, v2}, Lorg/catrobat/catroid/transfers/project/ProjectDownloadService;->logWarning(Ljava/lang/String;)V

    return-void

    .line 79
    .end local v1    # "projectName":Ljava/lang/String;
    :cond_4
    const-string v1, "Called ProjectDownloadService with null projectName -  aborting"

    invoke-direct {p0, v1}, Lorg/catrobat/catroid/transfers/project/ProjectDownloadService;->logWarning(Ljava/lang/String;)V

    return-void

    .line 77
    .end local v0    # "downloadIntent":Landroid/content/Intent;
    :cond_5
    const-string v0, "Called ProjectDownloadService with null intent - aborting"

    invoke-direct {p0, v0}, Lorg/catrobat/catroid/transfers/project/ProjectDownloadService;->logWarning(Ljava/lang/String;)V

    return-void
.end method
