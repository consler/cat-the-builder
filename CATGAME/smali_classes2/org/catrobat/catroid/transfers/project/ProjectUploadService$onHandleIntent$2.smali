.class final Lorg/catrobat/catroid/transfers/project/ProjectUploadService$onHandleIntent$2;
.super Lkotlin/jvm/internal/Lambda;
.source "ProjectUploadService.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/catrobat/catroid/transfers/project/ProjectUploadService;->onHandleIntent(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Ljava/lang/Integer;",
        "Ljava/lang/String;",
        "Lkotlin/Unit;",
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
        "\u0000\u0014\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\n\u00a2\u0006\u0002\u0008\u0006"
    }
    d2 = {
        "<anonymous>",
        "",
        "errorCode",
        "",
        "errorMessage",
        "",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# instance fields
.field final synthetic $reUploadBundle:Landroid/os/Bundle;

.field final synthetic $resultReceiver:Landroid/os/ResultReceiver;

.field final synthetic this$0:Lorg/catrobat/catroid/transfers/project/ProjectUploadService;


# direct methods
.method constructor <init>(Lorg/catrobat/catroid/transfers/project/ProjectUploadService;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V
    .locals 0

    iput-object p1, p0, Lorg/catrobat/catroid/transfers/project/ProjectUploadService$onHandleIntent$2;->this$0:Lorg/catrobat/catroid/transfers/project/ProjectUploadService;

    iput-object p2, p0, Lorg/catrobat/catroid/transfers/project/ProjectUploadService$onHandleIntent$2;->$reUploadBundle:Landroid/os/Bundle;

    iput-object p3, p0, Lorg/catrobat/catroid/transfers/project/ProjectUploadService$onHandleIntent$2;->$resultReceiver:Landroid/os/ResultReceiver;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 70
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lorg/catrobat/catroid/transfers/project/ProjectUploadService$onHandleIntent$2;->invoke(ILjava/lang/String;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(ILjava/lang/String;)V
    .locals 4
    .param p1, "errorCode"    # I
    .param p2, "errorMessage"    # Ljava/lang/String;

    const-string v0, "errorMessage"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 131
    invoke-static {}, Lorg/catrobat/catroid/transfers/project/ProjectUploadService;->access$getTAG$cp()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    iget-object v0, p0, Lorg/catrobat/catroid/transfers/project/ProjectUploadService$onHandleIntent$2;->this$0:Lorg/catrobat/catroid/transfers/project/ProjectUploadService;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/transfers/project/ProjectUploadService;->stopForeground(Z)V

    .line 133
    iget-object v0, p0, Lorg/catrobat/catroid/transfers/project/ProjectUploadService$onHandleIntent$2;->this$0:Lorg/catrobat/catroid/transfers/project/ProjectUploadService;

    check-cast v0, Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/catrobat/catroid/transfers/project/ProjectUploadService$onHandleIntent$2;->this$0:Lorg/catrobat/catroid/transfers/project/ProjectUploadService;

    invoke-virtual {v2}, Lorg/catrobat/catroid/transfers/project/ProjectUploadService;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f1202f7

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/catrobat/catroid/utils/ToastUtil;->showError(Landroid/content/Context;Ljava/lang/String;)V

    .line 134
    nop

    .line 135
    nop

    .line 134
    new-instance v0, Lorg/catrobat/catroid/utils/notifications/StatusBarNotificationManager;

    iget-object v1, p0, Lorg/catrobat/catroid/transfers/project/ProjectUploadService$onHandleIntent$2;->this$0:Lorg/catrobat/catroid/transfers/project/ProjectUploadService;

    invoke-virtual {v1}, Lorg/catrobat/catroid/transfers/project/ProjectUploadService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/catrobat/catroid/utils/notifications/StatusBarNotificationManager;-><init>(Landroid/content/Context;)V

    .line 135
    iget-object v1, p0, Lorg/catrobat/catroid/transfers/project/ProjectUploadService$onHandleIntent$2;->this$0:Lorg/catrobat/catroid/transfers/project/ProjectUploadService;

    invoke-virtual {v1}, Lorg/catrobat/catroid/transfers/project/ProjectUploadService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lorg/catrobat/catroid/transfers/project/ProjectUploadService$onHandleIntent$2;->$reUploadBundle:Landroid/os/Bundle;

    invoke-virtual {v0, v1, p1, p2, v2}, Lorg/catrobat/catroid/utils/notifications/StatusBarNotificationManager;->createUploadRejectedNotification(Landroid/content/Context;ILjava/lang/String;Landroid/os/Bundle;)Landroid/app/Notification;

    .line 136
    iget-object v0, p0, Lorg/catrobat/catroid/transfers/project/ProjectUploadService$onHandleIntent$2;->$resultReceiver:Landroid/os/ResultReceiver;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 137
    return-void
.end method
