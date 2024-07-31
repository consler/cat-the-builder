.class public final Lorg/catrobat/catroid/transfers/project/ProjectUploadService;
.super Landroid/app/IntentService;
.source "ProjectUploadService.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/catrobat/catroid/transfers/project/ProjectUploadService$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u0000 \u00112\u00020\u0001:\u0001\u0011B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0002J\u0010\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0002J\u0012\u0010\u0008\u001a\u00020\u00062\u0008\u0010\t\u001a\u0004\u0018\u00010\u0006H\u0002J\u0010\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\u0006H\u0002J\u0008\u0010\r\u001a\u00020\u000bH\u0016J\u0012\u0010\u000e\u001a\u00020\u000b2\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u0014\u00a8\u0006\u0012"
    }
    d2 = {
        "Lorg/catrobat/catroid/transfers/project/ProjectUploadService;",
        "Landroid/app/IntentService;",
        "()V",
        "createUploadFinishedNotification",
        "Landroid/app/Notification;",
        "programName",
        "",
        "createUploadNotification",
        "getUserEmail",
        "provider",
        "logWarning",
        "",
        "warningMessage",
        "onDestroy",
        "onHandleIntent",
        "projectUploadIntent",
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
.field public static final Companion:Lorg/catrobat/catroid/transfers/project/ProjectUploadService$Companion;

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/catrobat/catroid/transfers/project/ProjectUploadService$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/catrobat/catroid/transfers/project/ProjectUploadService$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lorg/catrobat/catroid/transfers/project/ProjectUploadService;->Companion:Lorg/catrobat/catroid/transfers/project/ProjectUploadService$Companion;

    .line 215
    const-class v0, Lorg/catrobat/catroid/transfers/project/ProjectUploadService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/catrobat/catroid/transfers/project/ProjectUploadService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 70
    const-string v0, "ProjectUploadService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$createUploadFinishedNotification(Lorg/catrobat/catroid/transfers/project/ProjectUploadService;Ljava/lang/String;)Landroid/app/Notification;
    .locals 1
    .param p0, "$this"    # Lorg/catrobat/catroid/transfers/project/ProjectUploadService;
    .param p1, "programName"    # Ljava/lang/String;

    .line 70
    invoke-direct {p0, p1}, Lorg/catrobat/catroid/transfers/project/ProjectUploadService;->createUploadFinishedNotification(Ljava/lang/String;)Landroid/app/Notification;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$getTAG$cp()Ljava/lang/String;
    .locals 1

    .line 70
    sget-object v0, Lorg/catrobat/catroid/transfers/project/ProjectUploadService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private final createUploadFinishedNotification(Ljava/lang/String;)Landroid/app/Notification;
    .locals 6
    .param p1, "programName"    # Ljava/lang/String;

    .line 171
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lorg/catrobat/catroid/transfers/project/ProjectUploadService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lorg/catrobat/catroid/ui/MainMenuActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 172
    .local v0, "uploadIntent":Landroid/content/Intent;
    const-string v1, "android.intent.action.MAIN"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 173
    const/high16 v1, 0x200000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "uploadIntent.setFlags(In\u2026ITY_RESET_TASK_IF_NEEDED)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, v1

    .line 174
    nop

    .line 175
    invoke-virtual {p0}, Lorg/catrobat/catroid/transfers/project/ProjectUploadService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 176
    nop

    .line 177
    nop

    .line 174
    const v2, 0xffff

    const/high16 v3, 0x10000000

    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 180
    .local v1, "pendingIntent":Landroid/app/PendingIntent;
    nop

    .line 190
    nop

    .line 180
    nop

    .line 189
    nop

    .line 180
    nop

    .line 188
    nop

    .line 180
    nop

    .line 187
    nop

    .line 180
    nop

    .line 186
    nop

    .line 180
    nop

    .line 183
    nop

    .line 180
    nop

    .line 182
    nop

    .line 180
    nop

    .line 181
    nop

    .line 180
    new-instance v2, Landroidx/core/app/NotificationCompat$Builder;

    invoke-virtual {p0}, Lorg/catrobat/catroid/transfers/project/ProjectUploadService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "pocket_code_notification_channel_id"

    invoke-direct {v2, v3, v4}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 181
    invoke-virtual {v2, v1}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v2

    .line 182
    const v3, 0x7f08025f

    invoke-virtual {v2, v3}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v2

    .line 184
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/catrobat/catroid/transfers/project/ProjectUploadService;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f1205d8

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    .line 183
    invoke-virtual {v2, v3}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v2

    .line 186
    invoke-virtual {p0}, Lorg/catrobat/catroid/transfers/project/ProjectUploadService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f1205d4

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v2

    .line 187
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroidx/core/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v2

    .line 188
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroidx/core/app/NotificationCompat$Builder;->setOngoing(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v2

    .line 189
    invoke-virtual {v2, v3, v3, v3}, Landroidx/core/app/NotificationCompat$Builder;->setProgress(IIZ)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v2

    .line 190
    invoke-virtual {v2}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v2

    const-string v3, "NotificationCompat.Build\u2026lse)\n            .build()"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 180
    return-object v2
.end method

.method private final createUploadNotification(Ljava/lang/String;)Landroid/app/Notification;
    .locals 6
    .param p1, "programName"    # Ljava/lang/String;

    .line 147
    new-instance v0, Lorg/catrobat/catroid/utils/notifications/StatusBarNotificationManager;

    invoke-virtual {p0}, Lorg/catrobat/catroid/transfers/project/ProjectUploadService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/catrobat/catroid/utils/notifications/StatusBarNotificationManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lorg/catrobat/catroid/transfers/project/ProjectUploadService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/utils/notifications/StatusBarNotificationManager;->createNotificationChannel(Landroid/content/Context;)V

    .line 149
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lorg/catrobat/catroid/transfers/project/ProjectUploadService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lorg/catrobat/catroid/ui/MainMenuActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 150
    .local v0, "uploadIntent":Landroid/content/Intent;
    const-string v1, "android.intent.action.MAIN"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 151
    const/high16 v1, 0x200000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "uploadIntent.setFlags(In\u2026ITY_RESET_TASK_IF_NEEDED)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, v1

    .line 152
    nop

    .line 153
    invoke-virtual {p0}, Lorg/catrobat/catroid/transfers/project/ProjectUploadService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 154
    nop

    .line 155
    nop

    .line 152
    const v2, 0xffff

    const/high16 v3, 0x10000000

    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 158
    .local v1, "pendingIntent":Landroid/app/PendingIntent;
    nop

    .line 167
    nop

    .line 158
    nop

    .line 166
    nop

    .line 158
    nop

    .line 165
    nop

    .line 158
    nop

    .line 164
    nop

    .line 158
    nop

    .line 161
    nop

    .line 158
    nop

    .line 160
    nop

    .line 158
    nop

    .line 159
    nop

    .line 158
    new-instance v2, Landroidx/core/app/NotificationCompat$Builder;

    invoke-virtual {p0}, Lorg/catrobat/catroid/transfers/project/ProjectUploadService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "pocket_code_notification_channel_id"

    invoke-direct {v2, v3, v4}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 159
    invoke-virtual {v2, v1}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v2

    .line 160
    const v3, 0x7f08025f

    invoke-virtual {v2, v3}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v2

    .line 162
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/catrobat/catroid/transfers/project/ProjectUploadService;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f1205d9

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    .line 161
    invoke-virtual {v2, v3}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v2

    .line 164
    invoke-virtual {p0}, Lorg/catrobat/catroid/transfers/project/ProjectUploadService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f1205d5

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v2

    .line 165
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroidx/core/app/NotificationCompat$Builder;->setOngoing(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v2

    .line 166
    const/16 v4, 0x64

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5, v3}, Landroidx/core/app/NotificationCompat$Builder;->setProgress(IIZ)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v2

    .line 167
    invoke-virtual {v2}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v2

    const-string v3, "NotificationCompat.Build\u2026rue)\n            .build()"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 158
    return-object v2
.end method

.method private final getUserEmail(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "provider"    # Ljava/lang/String;

    .line 194
    invoke-virtual {p0}, Lorg/catrobat/catroid/transfers/project/ProjectUploadService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 196
    .local v0, "sharedPreferences":Landroid/content/SharedPreferences;
    const-string v1, "no_email"

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, 0x40e0a61

    if-eq v2, v3, :cond_1

    :goto_0
    goto :goto_1

    .line 197
    :cond_1
    const-string v2, "GPLUS"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "GOOGLE_EMAIL"

    const-string v3, "NO_GOOGLE_EMAIL"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    .line 198
    :cond_2
    :goto_1
    const-string v2, "email"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 196
    :goto_2
    nop

    .line 201
    .local v2, "email":Ljava/lang/String;
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 202
    move-object v1, p0

    check-cast v1, Landroid/content/Context;

    invoke-static {v1}, Lorg/catrobat/catroid/utils/DeviceSettingsProvider;->getUserEmail(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    .line 204
    :cond_3
    move-object v1, v2

    .line 201
    :goto_3
    nop

    .line 207
    .local v1, "result":Ljava/lang/String;
    if-eqz v1, :cond_4

    move-object v3, v1

    goto :goto_4

    :cond_4
    const-string v3, ""

    :goto_4
    return-object v3
.end method

.method private final logWarning(Ljava/lang/String;)V
    .locals 1
    .param p1, "warningMessage"    # Ljava/lang/String;

    .line 211
    sget-object v0, Lorg/catrobat/catroid/transfers/project/ProjectUploadService;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    return-void
.end method


# virtual methods
.method public onDestroy()V
    .locals 1

    .line 142
    invoke-virtual {p0}, Lorg/catrobat/catroid/transfers/project/ProjectUploadService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/catrobat/catroid/utils/Utils;->invalidateLoginTokenIfUserRestricted(Landroid/content/Context;)V

    .line 143
    invoke-super {p0}, Landroid/app/IntentService;->onDestroy()V

    .line 144
    return-void
.end method

.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 20
    .param p1, "projectUploadIntent"    # Landroid/content/Intent;

    .line 73
    move-object/from16 v0, p0

    if-eqz p1, :cond_7

    move-object/from16 v1, p1

    .line 76
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "projectPath"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 77
    const-string v4, "intent.getStringExtra(EX\u2026e without project path!\")"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    nop

    .line 79
    .local v3, "projectPath":Ljava/lang/String;
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 80
    .local v5, "projectDirectory":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    const-string v6, "projectDirectory.listFiles()"

    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v4, v4

    if-nez v4, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    if-eqz v4, :cond_1

    .line 81
    const-string v2, "Called ProjectUploadService with empty project directory!"

    invoke-direct {v0, v2}, Lorg/catrobat/catroid/transfers/project/ProjectUploadService;->logWarning(Ljava/lang/String;)V

    return-void

    .line 84
    :cond_1
    const-string v4, "resultReceiver"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    instance-of v6, v4, Landroid/os/ResultReceiver;

    if-nez v6, :cond_2

    const/4 v4, 0x0

    :cond_2
    check-cast v4, Landroid/os/ResultReceiver;

    if-eqz v4, :cond_5

    move-object v15, v4

    .line 87
    .local v15, "resultReceiver":Landroid/os/ResultReceiver;
    const-string v4, "uploadName"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 88
    const-string v6, "intent.getStringExtra(EX\u2026ith empty project name!\")"

    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 87
    move-object v14, v4

    .line 90
    .local v14, "projectName":Ljava/lang/String;
    invoke-static {}, Lorg/catrobat/catroid/utils/notifications/StatusBarNotificationManager;->getNextNotificationID()I

    move-result v13

    .line 91
    .local v13, "notificationID":I
    nop

    .line 92
    nop

    .line 93
    invoke-direct {v0, v14}, Lorg/catrobat/catroid/transfers/project/ProjectUploadService;->createUploadNotification(Ljava/lang/String;)Landroid/app/Notification;

    move-result-object v4

    .line 91
    invoke-virtual {v0, v13, v4}, Lorg/catrobat/catroid/transfers/project/ProjectUploadService;->startForeground(ILandroid/app/Notification;)V

    .line 96
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    move-object v6, v4

    .local v6, "$this$apply":Landroid/os/Bundle;
    const/4 v7, 0x0

    .line 97
    .local v7, "$i$a$-apply-ProjectUploadService$onHandleIntent$reUploadBundle$1":I
    const-string v8, "projectName"

    invoke-virtual {v6, v8, v14}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    const-string v8, "projectDescription"

    invoke-virtual {v1, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    invoke-virtual {v6, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    const-string v2, "sceneNames"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v2, v9}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 101
    const-string v9, "provider"

    invoke-virtual {v1, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v0, v10}, Lorg/catrobat/catroid/transfers/project/ProjectUploadService;->getUserEmail(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "userEmail"

    invoke-virtual {v6, v11, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v10

    const-string v11, "Locale.getDefault()"

    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v10

    const-string v11, "language"

    invoke-virtual {v6, v11, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    nop

    .line 96
    .end local v6    # "$this$apply":Landroid/os/Bundle;
    .end local v7    # "$i$a$-apply-ProjectUploadService$onHandleIntent$reUploadBundle$1":I
    move-object v12, v4

    .line 105
    .local v12, "reUploadBundle":Landroid/os/Bundle;
    nop

    .line 119
    nop

    .line 105
    new-instance v11, Lorg/catrobat/catroid/transfers/project/ProjectUpload;

    .line 106
    nop

    .line 107
    nop

    .line 108
    invoke-virtual {v1, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3

    goto :goto_1

    :cond_3
    const-string v4, ""

    :goto_1
    move-object v7, v4

    const-string v4, "intent.getStringExtra(EX\u2026ROJECT_DESCRIPTION) ?: \"\""

    invoke-static {v7, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 109
    invoke-virtual {v1, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Lorg/catrobat/catroid/transfers/project/ProjectUploadService;->getUserEmail(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 110
    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 111
    new-instance v10, Ljava/io/File;

    invoke-virtual/range {p0 .. p0}, Lorg/catrobat/catroid/transfers/project/ProjectUploadService;->getCacheDir()Ljava/io/File;

    move-result-object v2

    const-string v4, "upload.catrobat"

    invoke-direct {v10, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 112
    new-instance v2, Lorg/catrobat/catroid/io/ZipArchiver;

    invoke-direct {v2}, Lorg/catrobat/catroid/io/ZipArchiver;-><init>()V

    .line 113
    new-instance v6, Lorg/catrobat/catroid/io/ProjectAndSceneScreenshotLoader;

    .line 114
    invoke-virtual/range {p0 .. p0}, Lorg/catrobat/catroid/transfers/project/ProjectUploadService;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    move-object/from16 v16, v1

    .end local v1    # "intent":Landroid/content/Intent;
    .local v16, "intent":Landroid/content/Intent;
    const-string v1, "applicationContext"

    invoke-static {v4, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    move-object/from16 v17, v3

    .end local v3    # "projectPath":Ljava/lang/String;
    .local v17, "projectPath":Ljava/lang/String;
    const v3, 0x7f070196

    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 115
    invoke-virtual/range {p0 .. p0}, Lorg/catrobat/catroid/transfers/project/ProjectUploadService;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f070195

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 113
    invoke-direct {v6, v3, v1}, Lorg/catrobat/catroid/io/ProjectAndSceneScreenshotLoader;-><init>(II)V

    .line 117
    move-object v1, v0

    check-cast v1, Landroid/content/Context;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v3, "PreferenceManager.getDef\u2026ltSharedPreferences(this)"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 118
    new-instance v3, Lorg/catrobat/catroid/web/ServerCalls;

    sget-object v4, Lorg/catrobat/catroid/web/CatrobatWebClient;->INSTANCE:Lorg/catrobat/catroid/web/CatrobatWebClient;

    invoke-virtual {v4}, Lorg/catrobat/catroid/web/CatrobatWebClient;->getClient()Lokhttp3/OkHttpClient;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/catrobat/catroid/web/ServerCalls;-><init>(Lokhttp3/OkHttpClient;)V

    .line 105
    move-object v4, v11

    move-object/from16 v18, v6

    move-object v6, v14

    move-object/from16 v19, v11

    move-object v11, v2

    move-object v2, v12

    .end local v12    # "reUploadBundle":Landroid/os/Bundle;
    .local v2, "reUploadBundle":Landroid/os/Bundle;
    move-object/from16 v12, v18

    move-object/from16 v18, v2

    move v2, v13

    .end local v13    # "notificationID":I
    .local v2, "notificationID":I
    .local v18, "reUploadBundle":Landroid/os/Bundle;
    move-object v13, v1

    move-object v1, v14

    .end local v14    # "projectName":Ljava/lang/String;
    .local v1, "projectName":Ljava/lang/String;
    move-object v14, v3

    invoke-direct/range {v4 .. v14}, Lorg/catrobat/catroid/transfers/project/ProjectUpload;-><init>(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/io/File;Lorg/catrobat/catroid/io/ZipArchiver;Lorg/catrobat/catroid/io/ProjectAndSceneScreenshotLoader;Landroid/content/SharedPreferences;Lorg/catrobat/catroid/web/ServerCalls;)V

    .line 120
    new-instance v3, Lorg/catrobat/catroid/transfers/project/ProjectUploadService$onHandleIntent$1;

    invoke-direct {v3, v0, v2, v1, v15}, Lorg/catrobat/catroid/transfers/project/ProjectUploadService$onHandleIntent$1;-><init>(Lorg/catrobat/catroid/transfers/project/ProjectUploadService;ILjava/lang/String;Landroid/os/ResultReceiver;)V

    check-cast v3, Lkotlin/jvm/functions/Function1;

    .line 130
    new-instance v4, Lorg/catrobat/catroid/transfers/project/ProjectUploadService$onHandleIntent$2;

    move-object/from16 v6, v18

    .end local v18    # "reUploadBundle":Landroid/os/Bundle;
    .local v6, "reUploadBundle":Landroid/os/Bundle;
    invoke-direct {v4, v0, v6, v15}, Lorg/catrobat/catroid/transfers/project/ProjectUploadService$onHandleIntent$2;-><init>(Lorg/catrobat/catroid/transfers/project/ProjectUploadService;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V

    check-cast v4, Lkotlin/jvm/functions/Function2;

    .line 119
    move-object/from16 v7, v19

    invoke-virtual {v7, v3, v4}, Lorg/catrobat/catroid/transfers/project/ProjectUpload;->start(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;)V

    .line 139
    return-void

    .line 88
    .end local v2    # "notificationID":I
    .end local v6    # "reUploadBundle":Landroid/os/Bundle;
    .end local v16    # "intent":Landroid/content/Intent;
    .end local v17    # "projectPath":Ljava/lang/String;
    .local v1, "intent":Landroid/content/Intent;
    .restart local v3    # "projectPath":Ljava/lang/String;
    :cond_4
    move-object/from16 v16, v1

    .end local v1    # "intent":Landroid/content/Intent;
    .restart local v16    # "intent":Landroid/content/Intent;
    const-string v1, "Called ProjectUploadService with empty project name!"

    invoke-direct {v0, v1}, Lorg/catrobat/catroid/transfers/project/ProjectUploadService;->logWarning(Ljava/lang/String;)V

    return-void

    .line 85
    .end local v15    # "resultReceiver":Landroid/os/ResultReceiver;
    .end local v16    # "intent":Landroid/content/Intent;
    .restart local v1    # "intent":Landroid/content/Intent;
    :cond_5
    move-object/from16 v16, v1

    .end local v1    # "intent":Landroid/content/Intent;
    .restart local v16    # "intent":Landroid/content/Intent;
    const-string v1, "Called ProjectUploadService without resultReceiver!"

    invoke-direct {v0, v1}, Lorg/catrobat/catroid/transfers/project/ProjectUploadService;->logWarning(Ljava/lang/String;)V

    return-void

    .line 77
    .end local v3    # "projectPath":Ljava/lang/String;
    .end local v5    # "projectDirectory":Ljava/io/File;
    .end local v16    # "intent":Landroid/content/Intent;
    .restart local v1    # "intent":Landroid/content/Intent;
    :cond_6
    move-object/from16 v16, v1

    .end local v1    # "intent":Landroid/content/Intent;
    .restart local v16    # "intent":Landroid/content/Intent;
    const-string v1, "Called ProjectUploadService without project path!"

    invoke-direct {v0, v1}, Lorg/catrobat/catroid/transfers/project/ProjectUploadService;->logWarning(Ljava/lang/String;)V

    return-void

    .line 74
    .end local v16    # "intent":Landroid/content/Intent;
    :cond_7
    const-string v1, "Called ProjectUploadService with null intent!"

    invoke-direct {v0, v1}, Lorg/catrobat/catroid/transfers/project/ProjectUploadService;->logWarning(Ljava/lang/String;)V

    return-void
.end method
