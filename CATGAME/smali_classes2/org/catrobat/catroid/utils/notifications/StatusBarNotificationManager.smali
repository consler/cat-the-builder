.class public final Lorg/catrobat/catroid/utils/notifications/StatusBarNotificationManager;
.super Ljava/lang/Object;
.source "StatusBarNotificationManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/catrobat/catroid/utils/notifications/StatusBarNotificationManager$NotificationActionService;
    }
.end annotation


# static fields
.field private static final ACTION_CANCEL_UPLOAD:Ljava/lang/String; = "cancel_upload"

.field private static final ACTION_RETRY_UPLOAD:Ljava/lang/String; = "retry_upload"

.field private static final ACTION_UPDATE_POCKET_CODE_VERSION:Ljava/lang/String; = "update_pocket_code_version"

.field public static final CHANNEL_ID:Ljava/lang/String; = "pocket_code_notification_channel_id"

.field private static final NOTIFICATION_PENDING_INTENT_REQUEST_CODE:I = 0x1

.field private static final TAG:Ljava/lang/String;

.field public static final UPLOAD_PENDING_INTENT_REQUEST_CODE:I = 0xffff

.field private static notificationId:I


# instance fields
.field private notificationManager:Landroid/app/NotificationManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 56
    const-class v0, Lorg/catrobat/catroid/utils/notifications/StatusBarNotificationManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/catrobat/catroid/utils/notifications/StatusBarNotificationManager;->TAG:Ljava/lang/String;

    .line 65
    const/4 v0, 0x1

    sput v0, Lorg/catrobat/catroid/utils/notifications/StatusBarNotificationManager;->notificationId:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    const-string v0, "notification"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lorg/catrobat/catroid/utils/notifications/StatusBarNotificationManager;->notificationManager:Landroid/app/NotificationManager;

    .line 70
    invoke-virtual {p0, p1}, Lorg/catrobat/catroid/utils/notifications/StatusBarNotificationManager;->createNotificationChannel(Landroid/content/Context;)V

    .line 71
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 55
    sget-object v0, Lorg/catrobat/catroid/utils/notifications/StatusBarNotificationManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lorg/catrobat/catroid/utils/notifications/StatusBarNotificationManager;Landroid/content/Context;Ljava/lang/String;)Lorg/catrobat/catroid/utils/notifications/NotificationData;
    .locals 1
    .param p0, "x0"    # Lorg/catrobat/catroid/utils/notifications/StatusBarNotificationManager;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Ljava/lang/String;

    .line 55
    invoke-direct {p0, p1, p2}, Lorg/catrobat/catroid/utils/notifications/StatusBarNotificationManager;->createAndShowUploadNotification(Landroid/content/Context;Ljava/lang/String;)Lorg/catrobat/catroid/utils/notifications/NotificationData;

    move-result-object v0

    return-object v0
.end method

.method private createAndShowUploadNotification(Landroid/content/Context;Ljava/lang/String;)Lorg/catrobat/catroid/utils/notifications/NotificationData;
    .locals 16
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "programName"    # Ljava/lang/String;

    .line 74
    move-object/from16 v0, p1

    if-eqz v0, :cond_1

    if-nez p2, :cond_0

    move-object/from16 v3, p0

    goto :goto_0

    .line 78
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lorg/catrobat/catroid/ui/MainMenuActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 79
    .local v1, "uploadIntent":Landroid/content/Intent;
    const-string v2, "android.intent.action.MAIN"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 80
    const/high16 v2, 0x200000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v13

    .line 81
    .end local v1    # "uploadIntent":Landroid/content/Intent;
    .local v13, "uploadIntent":Landroid/content/Intent;
    sget v1, Lorg/catrobat/catroid/utils/notifications/StatusBarNotificationManager;->notificationId:I

    const/high16 v2, 0x10000000

    invoke-static {v0, v1, v13, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v14

    .line 84
    .local v14, "pendingIntent":Landroid/app/PendingIntent;
    new-instance v15, Lorg/catrobat/catroid/utils/notifications/NotificationData;

    const v2, 0x7f08025f

    const v1, 0x7f1205d9

    .line 85
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v1, 0x7f1205d8

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    const v1, 0x7f1205d5

    .line 86
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    const v1, 0x7f1205d4

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/16 v9, 0x64

    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 87
    invoke-static {}, Lorg/catrobat/catroid/utils/notifications/StatusBarNotificationManager;->getNextNotificationID()I

    move-result v12

    move-object v1, v15

    move-object/from16 v3, p2

    invoke-direct/range {v1 .. v12}, Lorg/catrobat/catroid/utils/notifications/NotificationData;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZZI)V

    .line 89
    .local v1, "data":Lorg/catrobat/catroid/utils/notifications/NotificationData;
    const/4 v2, 0x0

    move-object/from16 v3, p0

    invoke-virtual {v3, v0, v1, v2, v14}, Lorg/catrobat/catroid/utils/notifications/StatusBarNotificationManager;->showOrUpdateNotification(Landroid/content/Context;Lorg/catrobat/catroid/utils/notifications/NotificationData;ILandroid/app/PendingIntent;)V

    .line 90
    return-object v1

    .line 74
    .end local v1    # "data":Lorg/catrobat/catroid/utils/notifications/NotificationData;
    .end local v13    # "uploadIntent":Landroid/content/Intent;
    .end local v14    # "pendingIntent":Landroid/app/PendingIntent;
    :cond_1
    move-object/from16 v3, p0

    .line 75
    :goto_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public static getNextNotificationID()I
    .locals 2

    .line 145
    sget v0, Lorg/catrobat/catroid/utils/notifications/StatusBarNotificationManager;->notificationId:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lorg/catrobat/catroid/utils/notifications/StatusBarNotificationManager;->notificationId:I

    return v0
.end method

.method private getPathOrFileName(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uri"    # Landroid/net/Uri;

    .line 113
    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 114
    .local v0, "path":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    const-string v2, "content"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 115
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1d

    if-lt v1, v2, :cond_2

    .line 116
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 117
    .local v1, "contentResolver":Landroid/content/ContentResolver;
    const-string v2, "_display_name"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v3

    .line 118
    .local v3, "projection":[Ljava/lang/String;
    const/4 v4, 0x0

    invoke-virtual {v1, p2, v3, v4, v4}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v4

    .line 119
    .local v4, "cursor":Landroid/database/Cursor;
    if-eqz v4, :cond_1

    .line 120
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 121
    invoke-interface {v4, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 122
    .local v2, "index":I
    invoke-interface {v4, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 123
    .local v5, "displayName":Ljava/lang/String;
    if-eqz v5, :cond_0

    .line 124
    move-object v0, v5

    .line 127
    .end local v2    # "index":I
    .end local v5    # "displayName":Ljava/lang/String;
    :cond_0
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 129
    .end local v1    # "contentResolver":Landroid/content/ContentResolver;
    .end local v3    # "projection":[Ljava/lang/String;
    .end local v4    # "cursor":Landroid/database/Cursor;
    :cond_1
    goto :goto_0

    .line 130
    :cond_2
    sget-object v1, Lorg/catrobat/catroid/utils/notifications/StatusBarNotificationManager;->TAG:Ljava/lang/String;

    const-string v2, "Error while resolving file name."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    :cond_3
    :goto_0
    return-object v0
.end method


# virtual methods
.method public abortProgressNotificationWithMessage(Landroid/content/Context;Lorg/catrobat/catroid/utils/notifications/NotificationData;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "notificationData"    # Lorg/catrobat/catroid/utils/notifications/NotificationData;
    .param p3, "changeDoneText"    # I

    .line 164
    if-nez p2, :cond_0

    .line 165
    return-void

    .line 167
    :cond_0
    invoke-virtual {p1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/catrobat/catroid/utils/notifications/NotificationData;->setTextDone(Ljava/lang/String;)V

    .line 168
    const/16 v0, 0x64

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lorg/catrobat/catroid/utils/notifications/StatusBarNotificationManager;->showOrUpdateNotification(Landroid/content/Context;Lorg/catrobat/catroid/utils/notifications/NotificationData;ILandroid/app/PendingIntent;)V

    .line 169
    return-void
.end method

.method public createNotificationChannel(Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .line 301
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_2

    .line 302
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f12004c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 303
    .local v0, "name":Ljava/lang/CharSequence;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1201ea

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 305
    .local v1, "description":Ljava/lang/String;
    const-class v2, Landroid/app/NotificationManager;

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    .line 306
    .local v2, "notificationManager":Landroid/app/NotificationManager;
    if-eqz v2, :cond_1

    const-string v3, "pocket_code_notification_channel_id"

    invoke-virtual {v2, v3}, Landroid/app/NotificationManager;->getNotificationChannel(Ljava/lang/String;)Landroid/app/NotificationChannel;

    move-result-object v5

    if-eqz v5, :cond_0

    goto :goto_0

    .line 310
    :cond_0
    const/4 v5, 0x3

    .line 312
    .local v5, "importance":I
    new-instance v6, Landroid/app/NotificationChannel;

    invoke-direct {v6, v3, v0, v5}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    move-object v3, v6

    .line 313
    .local v3, "channel":Landroid/app/NotificationChannel;
    invoke-virtual {v3, v1}, Landroid/app/NotificationChannel;->setDescription(Ljava/lang/String;)V

    .line 314
    invoke-virtual {v3, v4}, Landroid/app/NotificationChannel;->enableVibration(Z)V

    .line 315
    invoke-virtual {v3, v4}, Landroid/app/NotificationChannel;->enableLights(Z)V

    .line 316
    const/4 v4, 0x0

    invoke-virtual {v3, v4, v4}, Landroid/app/NotificationChannel;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)V

    .line 317
    invoke-virtual {v2, v3}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    goto :goto_1

    .line 307
    .end local v3    # "channel":Landroid/app/NotificationChannel;
    .end local v5    # "importance":I
    :cond_1
    :goto_0
    return-void

    .line 319
    .end local v0    # "name":Ljava/lang/CharSequence;
    .end local v1    # "description":Ljava/lang/String;
    .end local v2    # "notificationManager":Landroid/app/NotificationManager;
    :cond_2
    :goto_1
    return-void
.end method

.method public createProjectDownloadNotification(Landroid/content/Context;Ljava/lang/String;)Lorg/catrobat/catroid/utils/notifications/NotificationData;
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "programName"    # Ljava/lang/String;

    .line 137
    new-instance v12, Lorg/catrobat/catroid/utils/notifications/NotificationData;

    .line 138
    const v0, 0x7f1205ca

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v0, 0x7f1205d3

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 139
    const v0, 0x7f1205c8

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    const v0, 0x7f1205c7

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 140
    invoke-static {}, Lorg/catrobat/catroid/utils/notifications/StatusBarNotificationManager;->getNextNotificationID()I

    move-result v11

    const v1, 0x7f08025f

    const/4 v7, 0x0

    const/16 v8, 0x64

    const/4 v9, 0x1

    const/4 v10, 0x0

    move-object v0, v12

    move-object v2, p2

    invoke-direct/range {v0 .. v11}, Lorg/catrobat/catroid/utils/notifications/NotificationData;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZZI)V

    .line 137
    return-object v12
.end method

.method public createSaveProjectToExternalMemoryNotification(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Lorg/catrobat/catroid/utils/notifications/NotificationData;
    .locals 17
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "projectDestination"    # Landroid/net/Uri;
    .param p3, "programName"    # Ljava/lang/String;

    .line 95
    move-object/from16 v0, p1

    if-eqz v0, :cond_1

    if-nez p3, :cond_0

    move-object/from16 v3, p0

    const/4 v4, 0x0

    goto :goto_0

    .line 99
    :cond_0
    invoke-direct/range {p0 .. p2}, Lorg/catrobat/catroid/utils/notifications/StatusBarNotificationManager;->getPathOrFileName(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v14

    .line 100
    .local v14, "projectPath":Ljava/lang/String;
    new-instance v15, Lorg/catrobat/catroid/utils/notifications/NotificationData;

    const v3, 0x7f08025f

    const v2, 0x7f1205d1

    .line 101
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    const v2, 0x7f1205d0

    .line 102
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    const v2, 0x7f1205cf

    .line 103
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    const v2, 0x7f1205ce

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v14, v4, v13

    .line 104
    invoke-virtual {v0, v2, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const/16 v10, 0x64

    const/4 v11, 0x0

    const/4 v12, 0x0

    .line 106
    invoke-static {}, Lorg/catrobat/catroid/utils/notifications/StatusBarNotificationManager;->getNextNotificationID()I

    move-result v16

    move-object v2, v15

    move-object/from16 v4, p3

    move v1, v13

    move/from16 v13, v16

    invoke-direct/range {v2 .. v13}, Lorg/catrobat/catroid/utils/notifications/NotificationData;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZZI)V

    .line 108
    .local v2, "data":Lorg/catrobat/catroid/utils/notifications/NotificationData;
    const/4 v4, 0x0

    move-object/from16 v3, p0

    invoke-virtual {v3, v0, v2, v1, v4}, Lorg/catrobat/catroid/utils/notifications/StatusBarNotificationManager;->showOrUpdateNotification(Landroid/content/Context;Lorg/catrobat/catroid/utils/notifications/NotificationData;ILandroid/app/PendingIntent;)V

    .line 109
    return-object v2

    .line 95
    .end local v2    # "data":Lorg/catrobat/catroid/utils/notifications/NotificationData;
    .end local v14    # "projectPath":Ljava/lang/String;
    :cond_1
    move-object/from16 v3, p0

    const/4 v4, 0x0

    .line 96
    :goto_0
    return-object v4
.end method

.method public createUploadRejectedNotification(Landroid/content/Context;ILjava/lang/String;Landroid/os/Bundle;)Landroid/app/Notification;
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "statusCode"    # I
    .param p3, "serverAnswer"    # Ljava/lang/String;
    .param p4, "bundle"    # Landroid/os/Bundle;

    .line 172
    const/4 v0, 0x2

    invoke-static {v0}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v1

    .line 174
    .local v1, "alarmSound":Landroid/net/Uri;
    new-instance v2, Landroidx/core/app/NotificationCompat$Builder;

    const-string v3, "pocket_code_notification_channel_id"

    invoke-direct {v2, p1, v3}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 175
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f1205d6

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v2

    .line 176
    invoke-virtual {v2, p3}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v2

    .line 177
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/core/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v2

    .line 178
    invoke-virtual {v2, v1}, Landroidx/core/app/NotificationCompat$Builder;->setSound(Landroid/net/Uri;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v2

    new-instance v3, Landroidx/core/app/NotificationCompat$BigTextStyle;

    invoke-direct {v3}, Landroidx/core/app/NotificationCompat$BigTextStyle;-><init>()V

    .line 179
    invoke-virtual {v3, p3}, Landroidx/core/app/NotificationCompat$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$BigTextStyle;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/core/app/NotificationCompat$Builder;->setStyle(Landroidx/core/app/NotificationCompat$Style;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v2

    .line 180
    const/4 v3, 0x0

    invoke-virtual {v2, v3, v3, v3}, Landroidx/core/app/NotificationCompat$Builder;->setProgress(IIZ)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v2

    .line 181
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroidx/core/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v2

    .line 182
    invoke-virtual {v2, v0}, Landroidx/core/app/NotificationCompat$Builder;->setPriority(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    .line 183
    invoke-virtual {v0, v3}, Landroidx/core/app/NotificationCompat$Builder;->setOngoing(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    .line 185
    .local v0, "builder":Landroidx/core/app/NotificationCompat$Builder;
    const/16 v2, 0x1f4

    const/high16 v3, 0x40000000    # 2.0f

    const/high16 v5, 0x10000000

    if-eq p2, v2, :cond_1

    const/16 v2, 0x1f5

    if-eq p2, v2, :cond_1

    const/16 v2, 0x201

    if-eq p2, v2, :cond_1

    const/16 v2, 0x202

    if-eq p2, v2, :cond_1

    const/16 v2, 0x206

    if-eq p2, v2, :cond_0

    const/16 v2, 0x207

    if-eq p2, v2, :cond_0

    packed-switch p2, :pswitch_data_0

    .line 225
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lorg/catrobat/catroid/ui/MainMenuActivity;

    invoke-direct {v2, p1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 226
    .local v2, "openIntent":Landroid/content/Intent;
    const-string v3, "android.intent.action.MAIN"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    const/high16 v4, 0x4000000

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v3

    .line 227
    const-string v4, "projectName"

    invoke-virtual {p4, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 229
    sget v3, Lorg/catrobat/catroid/utils/notifications/StatusBarNotificationManager;->notificationId:I

    invoke-static {p1, v3, v2, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 231
    .local v3, "pendingIntent":Landroid/app/PendingIntent;
    invoke-virtual {v0, v3}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    goto/16 :goto_0

    .line 215
    .end local v2    # "openIntent":Landroid/content/Intent;
    .end local v3    # "pendingIntent":Landroid/app/PendingIntent;
    :cond_0
    :pswitch_0
    new-instance v2, Landroid/content/Intent;

    const-class v5, Lorg/catrobat/catroid/utils/notifications/StatusBarNotificationManager$NotificationActionService;

    invoke-direct {v2, p1, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 216
    const-string v5, "update_pocket_code_version"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 217
    const-string v5, "notificationId"

    invoke-virtual {v2, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v2

    .line 218
    .local v2, "actionIntentUpdatePocketCodeVersion":Landroid/content/Intent;
    invoke-static {p1, v4, v2, v3}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 220
    .local v3, "actionPendingIntentUpdatePocketCodeVersion":Landroid/app/PendingIntent;
    new-instance v4, Landroidx/core/app/NotificationCompat$Action;

    const v5, 0x7f0802b9

    .line 221
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f1205cc

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6, v3}, Landroidx/core/app/NotificationCompat$Action;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 220
    invoke-virtual {v0, v4}, Landroidx/core/app/NotificationCompat$Builder;->addAction(Landroidx/core/app/NotificationCompat$Action;)Landroidx/core/app/NotificationCompat$Builder;

    .line 222
    goto :goto_0

    .line 194
    .end local v2    # "actionIntentUpdatePocketCodeVersion":Landroid/content/Intent;
    .end local v3    # "actionPendingIntentUpdatePocketCodeVersion":Landroid/app/PendingIntent;
    :cond_1
    :pswitch_1
    new-instance v2, Landroid/content/Intent;

    const-class v6, Lorg/catrobat/catroid/utils/notifications/StatusBarNotificationManager$NotificationActionService;

    invoke-direct {v2, p1, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 195
    const-string v6, "retry_upload"

    invoke-virtual {v2, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 196
    .local v2, "actionIntentRetryUpload":Landroid/content/Intent;
    const-string v6, "bundle"

    invoke-virtual {v2, v6, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 198
    invoke-static {p1, v4, v2, v5}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    .line 200
    .local v5, "actionPendingIntentRetryUpload":Landroid/app/PendingIntent;
    new-instance v7, Landroidx/core/app/NotificationCompat$Action;

    const v8, 0x108005f

    .line 201
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f1205d7

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v8, v9, v5}, Landroidx/core/app/NotificationCompat$Action;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 200
    invoke-virtual {v0, v7}, Landroidx/core/app/NotificationCompat$Builder;->addAction(Landroidx/core/app/NotificationCompat$Action;)Landroidx/core/app/NotificationCompat$Builder;

    .line 203
    new-instance v7, Landroid/content/Intent;

    const-class v8, Lorg/catrobat/catroid/utils/notifications/StatusBarNotificationManager$NotificationActionService;

    invoke-direct {v7, p1, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 204
    const-string v8, "cancel_upload"

    invoke-virtual {v7, v8}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v7

    .line 205
    .local v7, "actionIntentCancelUpload":Landroid/content/Intent;
    invoke-virtual {v7, v6, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 206
    invoke-static {p1, v4, v7, v3}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 208
    .local v3, "actionPendingIntentCancelUpload":Landroid/app/PendingIntent;
    new-instance v4, Landroidx/core/app/NotificationCompat$Action;

    const v6, 0x1080038

    .line 209
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f1201b8

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v4, v6, v8, v3}, Landroidx/core/app/NotificationCompat$Action;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 208
    invoke-virtual {v0, v4}, Landroidx/core/app/NotificationCompat$Builder;->addAction(Landroidx/core/app/NotificationCompat$Action;)Landroidx/core/app/NotificationCompat$Builder;

    .line 211
    nop

    .line 235
    .end local v2    # "actionIntentRetryUpload":Landroid/content/Intent;
    .end local v3    # "actionPendingIntentCancelUpload":Landroid/app/PendingIntent;
    .end local v5    # "actionPendingIntentRetryUpload":Landroid/app/PendingIntent;
    .end local v7    # "actionIntentCancelUpload":Landroid/content/Intent;
    :goto_0
    invoke-virtual {v0}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v2

    return-object v2

    :pswitch_data_0
    .packed-switch 0x1f7
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public showOrUpdateNotification(Landroid/content/Context;Lorg/catrobat/catroid/utils/notifications/NotificationData;ILandroid/app/PendingIntent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "notificationData"    # Lorg/catrobat/catroid/utils/notifications/NotificationData;
    .param p3, "progressInPercent"    # I
    .param p4, "contentIntent"    # Landroid/app/PendingIntent;

    .line 149
    invoke-virtual {p2}, Lorg/catrobat/catroid/utils/notifications/NotificationData;->getNotificationID()I

    move-result v0

    .line 150
    .local v0, "notificationID":I
    invoke-virtual {p2, p3}, Lorg/catrobat/catroid/utils/notifications/NotificationData;->setProgressInPercent(I)V

    .line 151
    const/16 v1, 0x64

    if-ge p3, v1, :cond_0

    .line 152
    invoke-virtual {p2}, Lorg/catrobat/catroid/utils/notifications/NotificationData;->getTextWorking()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lorg/catrobat/catroid/utils/ToastUtil;->showSuccess(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 154
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Lorg/catrobat/catroid/utils/notifications/NotificationData;->setProgressInPercent(I)V

    .line 155
    invoke-virtual {p2, v1}, Lorg/catrobat/catroid/utils/notifications/NotificationData;->setMaxProgress(I)V

    .line 156
    const/4 v2, 0x1

    invoke-virtual {p2, v2}, Lorg/catrobat/catroid/utils/notifications/NotificationData;->setAutoCancel(Z)V

    .line 157
    invoke-virtual {p2, v1}, Lorg/catrobat/catroid/utils/notifications/NotificationData;->setOngoing(Z)V

    .line 158
    invoke-virtual {p2}, Lorg/catrobat/catroid/utils/notifications/NotificationData;->getTextDone()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lorg/catrobat/catroid/utils/ToastUtil;->showSuccess(Landroid/content/Context;Ljava/lang/String;)V

    .line 160
    :goto_0
    iget-object v1, p0, Lorg/catrobat/catroid/utils/notifications/StatusBarNotificationManager;->notificationManager:Landroid/app/NotificationManager;

    const-string v2, "pocket_code_notification_channel_id"

    invoke-virtual {p2, p1, v2, p4}, Lorg/catrobat/catroid/utils/notifications/NotificationData;->toNotification(Landroid/content/Context;Ljava/lang/String;Landroid/app/PendingIntent;)Landroid/app/Notification;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 161
    return-void
.end method
