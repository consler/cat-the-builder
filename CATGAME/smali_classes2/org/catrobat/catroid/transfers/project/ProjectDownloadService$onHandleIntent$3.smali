.class public final Lorg/catrobat/catroid/transfers/project/ProjectDownloadService$onHandleIntent$3;
.super Ljava/lang/Object;
.source "ProjectDownloadService.kt"

# interfaces
.implements Lorg/catrobat/catroid/web/CatrobatServerCalls$DownloadProgressCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/catrobat/catroid/transfers/project/ProjectDownloadService;->onHandleIntent(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\t\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016\u00a8\u0006\u0006"
    }
    d2 = {
        "org/catrobat/catroid/transfers/project/ProjectDownloadService$onHandleIntent$3",
        "Lorg/catrobat/catroid/web/CatrobatServerCalls$DownloadProgressCallback;",
        "onProgress",
        "",
        "progress",
        "",
        "catroid_catroidDebug"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# instance fields
.field final synthetic $notificationData:Lorg/catrobat/catroid/utils/notifications/NotificationData;

.field final synthetic $resultReceiver:Landroid/os/ResultReceiver;

.field final synthetic this$0:Lorg/catrobat/catroid/transfers/project/ProjectDownloadService;


# direct methods
.method constructor <init>(Lorg/catrobat/catroid/transfers/project/ProjectDownloadService;Landroid/os/ResultReceiver;Lorg/catrobat/catroid/utils/notifications/NotificationData;)V
    .locals 0
    .param p1, "this$0"    # Lorg/catrobat/catroid/transfers/project/ProjectDownloadService;
    .param p2, "$captured_local_variable$1"    # Landroid/os/ResultReceiver;
    .param p3, "$captured_local_variable$2"    # Lorg/catrobat/catroid/utils/notifications/NotificationData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/ResultReceiver;",
            "Lorg/catrobat/catroid/utils/notifications/NotificationData;",
            ")V"
        }
    .end annotation

    .line 118
    iput-object p1, p0, Lorg/catrobat/catroid/transfers/project/ProjectDownloadService$onHandleIntent$3;->this$0:Lorg/catrobat/catroid/transfers/project/ProjectDownloadService;

    iput-object p2, p0, Lorg/catrobat/catroid/transfers/project/ProjectDownloadService$onHandleIntent$3;->$resultReceiver:Landroid/os/ResultReceiver;

    iput-object p3, p0, Lorg/catrobat/catroid/transfers/project/ProjectDownloadService$onHandleIntent$3;->$notificationData:Lorg/catrobat/catroid/utils/notifications/NotificationData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgress(J)V
    .locals 6
    .param p1, "progress"    # J

    .line 120
    iget-object v0, p0, Lorg/catrobat/catroid/transfers/project/ProjectDownloadService$onHandleIntent$3;->this$0:Lorg/catrobat/catroid/transfers/project/ProjectDownloadService;

    move-object v1, v0

    check-cast v1, Landroid/content/Context;

    iget-object v2, p0, Lorg/catrobat/catroid/transfers/project/ProjectDownloadService$onHandleIntent$3;->$resultReceiver:Landroid/os/ResultReceiver;

    iget-object v3, p0, Lorg/catrobat/catroid/transfers/project/ProjectDownloadService$onHandleIntent$3;->$notificationData:Lorg/catrobat/catroid/utils/notifications/NotificationData;

    move-wide v4, p1

    invoke-static/range {v0 .. v5}, Lorg/catrobat/catroid/transfers/project/ProjectDownloadService;->access$downloadProgressCallback(Lorg/catrobat/catroid/transfers/project/ProjectDownloadService;Landroid/content/Context;Landroid/os/ResultReceiver;Lorg/catrobat/catroid/utils/notifications/NotificationData;J)V

    .line 121
    return-void
.end method
