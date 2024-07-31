.class final Lorg/catrobat/catroid/transfers/project/ProjectUploadService$onHandleIntent$1;
.super Lkotlin/jvm/internal/Lambda;
.source "ProjectUploadService.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


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
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/String;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nProjectUploadService.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ProjectUploadService.kt\norg/catrobat/catroid/transfers/project/ProjectUploadService$onHandleIntent$1\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,218:1\n1#2:219\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "projectId",
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
.field final synthetic $notificationID:I

.field final synthetic $projectName:Ljava/lang/String;

.field final synthetic $resultReceiver:Landroid/os/ResultReceiver;

.field final synthetic this$0:Lorg/catrobat/catroid/transfers/project/ProjectUploadService;


# direct methods
.method constructor <init>(Lorg/catrobat/catroid/transfers/project/ProjectUploadService;ILjava/lang/String;Landroid/os/ResultReceiver;)V
    .locals 0

    iput-object p1, p0, Lorg/catrobat/catroid/transfers/project/ProjectUploadService$onHandleIntent$1;->this$0:Lorg/catrobat/catroid/transfers/project/ProjectUploadService;

    iput p2, p0, Lorg/catrobat/catroid/transfers/project/ProjectUploadService$onHandleIntent$1;->$notificationID:I

    iput-object p3, p0, Lorg/catrobat/catroid/transfers/project/ProjectUploadService$onHandleIntent$1;->$projectName:Ljava/lang/String;

    iput-object p4, p0, Lorg/catrobat/catroid/transfers/project/ProjectUploadService$onHandleIntent$1;->$resultReceiver:Landroid/os/ResultReceiver;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 70
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lorg/catrobat/catroid/transfers/project/ProjectUploadService$onHandleIntent$1;->invoke(Ljava/lang/String;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Ljava/lang/String;)V
    .locals 6
    .param p1, "projectId"    # Ljava/lang/String;

    const-string v0, "projectId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 121
    invoke-static {}, Lorg/catrobat/catroid/transfers/project/ProjectUploadService;->access$getTAG$cp()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Upload successful"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    iget-object v1, p0, Lorg/catrobat/catroid/transfers/project/ProjectUploadService$onHandleIntent$1;->this$0:Lorg/catrobat/catroid/transfers/project/ProjectUploadService;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/catrobat/catroid/transfers/project/ProjectUploadService;->stopForeground(Z)V

    .line 123
    iget-object v1, p0, Lorg/catrobat/catroid/transfers/project/ProjectUploadService$onHandleIntent$1;->this$0:Lorg/catrobat/catroid/transfers/project/ProjectUploadService;

    const-string v3, "notification"

    invoke-virtual {v1, v3}, Lorg/catrobat/catroid/transfers/project/ProjectUploadService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    instance-of v3, v1, Landroid/app/NotificationManager;

    if-nez v3, :cond_0

    const/4 v1, 0x0

    :cond_0
    check-cast v1, Landroid/app/NotificationManager;

    .line 124
    .local v1, "notificationManager":Landroid/app/NotificationManager;
    if-eqz v1, :cond_1

    iget v3, p0, Lorg/catrobat/catroid/transfers/project/ProjectUploadService$onHandleIntent$1;->$notificationID:I

    iget-object v4, p0, Lorg/catrobat/catroid/transfers/project/ProjectUploadService$onHandleIntent$1;->this$0:Lorg/catrobat/catroid/transfers/project/ProjectUploadService;

    iget-object v5, p0, Lorg/catrobat/catroid/transfers/project/ProjectUploadService$onHandleIntent$1;->$projectName:Ljava/lang/String;

    invoke-static {v4, v5}, Lorg/catrobat/catroid/transfers/project/ProjectUploadService;->access$createUploadFinishedNotification(Lorg/catrobat/catroid/transfers/project/ProjectUploadService;Ljava/lang/String;)Landroid/app/Notification;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 126
    :cond_1
    iget-object v3, p0, Lorg/catrobat/catroid/transfers/project/ProjectUploadService$onHandleIntent$1;->this$0:Lorg/catrobat/catroid/transfers/project/ProjectUploadService;

    check-cast v3, Landroid/content/Context;

    const v4, 0x7f1205d4

    invoke-static {v3, v4}, Lorg/catrobat/catroid/utils/ToastUtil;->showSuccess(Landroid/content/Context;I)V

    .line 127
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    move-object v4, v3

    .line 219
    .local v4, "$this$apply":Landroid/os/Bundle;
    const/4 v5, 0x0

    .line 127
    .local v5, "$i$a$-apply-ProjectUploadService$onHandleIntent$1$result$1":I
    invoke-virtual {v4, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .end local v4    # "$this$apply":Landroid/os/Bundle;
    .end local v5    # "$i$a$-apply-ProjectUploadService$onHandleIntent$1$result$1":I
    move-object v0, v3

    .line 128
    .local v0, "result":Landroid/os/Bundle;
    iget-object v3, p0, Lorg/catrobat/catroid/transfers/project/ProjectUploadService$onHandleIntent$1;->$resultReceiver:Landroid/os/ResultReceiver;

    invoke-virtual {v3, v2, v0}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 129
    .end local v0    # "result":Landroid/os/Bundle;
    .end local v1    # "notificationManager":Landroid/app/NotificationManager;
    return-void
.end method
