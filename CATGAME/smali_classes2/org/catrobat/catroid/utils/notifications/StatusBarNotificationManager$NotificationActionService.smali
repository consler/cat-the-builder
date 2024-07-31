.class public Lorg/catrobat/catroid/utils/notifications/StatusBarNotificationManager$NotificationActionService;
.super Landroid/app/IntentService;
.source "StatusBarNotificationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/catrobat/catroid/utils/notifications/StatusBarNotificationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NotificationActionService"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 240
    const-class v0, Lorg/catrobat/catroid/utils/notifications/StatusBarNotificationManager$NotificationActionService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 241
    return-void
.end method

.method private closeNotificationBar()V
    .locals 2

    .line 295
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 296
    .local v0, "it":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lorg/catrobat/catroid/utils/notifications/StatusBarNotificationManager$NotificationActionService;->sendBroadcast(Landroid/content/Intent;)V

    .line 297
    return-void
.end method

.method private prepareReuploadIntent(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 16
    .param p1, "intent"    # Landroid/content/Intent;

    .line 275
    move-object/from16 v0, p1

    const-string v1, "bundle"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "projectName"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 276
    .local v2, "projectName":Ljava/lang/String;
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "projectDescription"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 277
    .local v3, "projectDescription":Ljava/lang/String;
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "projectPath"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 278
    .local v5, "projectPath":Ljava/lang/String;
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v7

    const-string v8, "sceneNames"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 279
    .local v7, "sceneNames":[Ljava/lang/String;
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v9

    const-string v10, "token"

    invoke-virtual {v9, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 280
    .local v9, "token":Ljava/lang/String;
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v11

    const-string v12, "username"

    invoke-virtual {v11, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 281
    .local v11, "username":Ljava/lang/String;
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    const-string v13, "receiver"

    invoke-virtual {v1, v13}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/os/ResultReceiver;

    .line 283
    .local v1, "receiver":Landroid/os/ResultReceiver;
    new-instance v14, Landroid/content/Intent;

    invoke-virtual/range {p0 .. p0}, Lorg/catrobat/catroid/utils/notifications/StatusBarNotificationManager$NotificationActionService;->getApplicationContext()Landroid/content/Context;

    move-result-object v15

    const-class v0, Lorg/catrobat/catroid/transfers/project/ProjectUploadService;

    invoke-direct {v14, v15, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    move-object v0, v14

    .line 284
    .local v0, "reuploadIntent":Landroid/content/Intent;
    invoke-virtual {v0, v13, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 285
    const-string v13, "uploadName"

    invoke-virtual {v0, v13, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 286
    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 287
    invoke-virtual {v0, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 288
    invoke-virtual {v0, v12, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 289
    invoke-virtual {v0, v10, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 290
    invoke-virtual {v0, v8, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 291
    return-object v0
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 7
    .param p1, "intent"    # Landroid/content/Intent;

    .line 245
    const-string v0, "android.intent.action.VIEW"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 246
    .local v1, "action":Ljava/lang/String;
    invoke-static {}, Lorg/catrobat/catroid/utils/notifications/StatusBarNotificationManager;->access$000()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Received notification, action is: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    const-string v2, "update_pocket_code_version"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 249
    invoke-virtual {p0}, Lorg/catrobat/catroid/utils/notifications/StatusBarNotificationManager$NotificationActionService;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 252
    .local v2, "appPackageName":Ljava/lang/String;
    :try_start_0
    new-instance v3, Landroid/content/Intent;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "market://details?id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v3, v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v4, 0x10000000

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/catrobat/catroid/utils/notifications/StatusBarNotificationManager$NotificationActionService;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 255
    goto :goto_0

    .line 253
    :catch_0
    move-exception v3

    .line 254
    .local v3, "anfe":Landroid/content/ActivityNotFoundException;
    new-instance v4, Landroid/content/Intent;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "https://play.google.com/store/apps/details?id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v4, v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v4}, Lorg/catrobat/catroid/utils/notifications/StatusBarNotificationManager$NotificationActionService;->startActivity(Landroid/content/Intent;)V

    .line 256
    .end local v3    # "anfe":Landroid/content/ActivityNotFoundException;
    :goto_0
    invoke-direct {p0}, Lorg/catrobat/catroid/utils/notifications/StatusBarNotificationManager$NotificationActionService;->closeNotificationBar()V

    .line 258
    .end local v2    # "appPackageName":Ljava/lang/String;
    :cond_0
    const-string v0, "retry_upload"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 259
    invoke-direct {p0, p1}, Lorg/catrobat/catroid/utils/notifications/StatusBarNotificationManager$NotificationActionService;->prepareReuploadIntent(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    .line 260
    .local v0, "reuploadIntent":Landroid/content/Intent;
    const-string v2, "bundle"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "projectName"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 262
    .local v2, "projectName":Ljava/lang/String;
    new-instance v3, Lorg/catrobat/catroid/utils/notifications/StatusBarNotificationManager;

    invoke-virtual {p0}, Lorg/catrobat/catroid/utils/notifications/StatusBarNotificationManager$NotificationActionService;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/catrobat/catroid/utils/notifications/StatusBarNotificationManager;-><init>(Landroid/content/Context;)V

    .line 263
    invoke-virtual {p0}, Lorg/catrobat/catroid/utils/notifications/StatusBarNotificationManager$NotificationActionService;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v3, v4, v2}, Lorg/catrobat/catroid/utils/notifications/StatusBarNotificationManager;->access$100(Lorg/catrobat/catroid/utils/notifications/StatusBarNotificationManager;Landroid/content/Context;Ljava/lang/String;)Lorg/catrobat/catroid/utils/notifications/NotificationData;

    move-result-object v3

    .line 264
    .local v3, "notificationData":Lorg/catrobat/catroid/utils/notifications/NotificationData;
    if-nez v3, :cond_1

    const/4 v4, -0x1

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Lorg/catrobat/catroid/utils/notifications/NotificationData;->getNotificationID()I

    move-result v4

    .line 265
    .local v4, "notificationId":I
    :goto_1
    const-string v5, "notificationId"

    invoke-virtual {v0, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 266
    invoke-virtual {p0}, Lorg/catrobat/catroid/utils/notifications/StatusBarNotificationManager$NotificationActionService;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 269
    .end local v0    # "reuploadIntent":Landroid/content/Intent;
    .end local v2    # "projectName":Ljava/lang/String;
    .end local v3    # "notificationData":Lorg/catrobat/catroid/utils/notifications/NotificationData;
    .end local v4    # "notificationId":I
    :cond_2
    const-string v0, "cancel_upload"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 270
    invoke-direct {p0}, Lorg/catrobat/catroid/utils/notifications/StatusBarNotificationManager$NotificationActionService;->closeNotificationBar()V

    .line 272
    :cond_3
    return-void
.end method
