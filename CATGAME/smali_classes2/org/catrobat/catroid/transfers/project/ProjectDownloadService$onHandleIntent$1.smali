.class public final Lorg/catrobat/catroid/transfers/project/ProjectDownloadService$onHandleIntent$1;
.super Ljava/lang/Object;
.source "ProjectDownloadService.kt"

# interfaces
.implements Lorg/catrobat/catroid/web/CatrobatServerCalls$DownloadSuccessCallback;


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
        "\u0000\u0011\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016\u00a8\u0006\u0004"
    }
    d2 = {
        "org/catrobat/catroid/transfers/project/ProjectDownloadService$onHandleIntent$1",
        "Lorg/catrobat/catroid/web/CatrobatServerCalls$DownloadSuccessCallback;",
        "onSuccess",
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
.field final synthetic $destinationFile:Ljava/io/File;

.field final synthetic $projectName:Ljava/lang/String;

.field final synthetic $resultReceiver:Landroid/os/ResultReceiver;

.field final synthetic this$0:Lorg/catrobat/catroid/transfers/project/ProjectDownloadService;


# direct methods
.method constructor <init>(Lorg/catrobat/catroid/transfers/project/ProjectDownloadService;Ljava/lang/String;Ljava/io/File;Landroid/os/ResultReceiver;)V
    .locals 0
    .param p1, "this$0"    # Lorg/catrobat/catroid/transfers/project/ProjectDownloadService;
    .param p2, "$captured_local_variable$1"    # Ljava/lang/String;
    .param p3, "$captured_local_variable$2"    # Ljava/io/File;
    .param p4, "$captured_local_variable$3"    # Landroid/os/ResultReceiver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            "Landroid/os/ResultReceiver;",
            ")V"
        }
    .end annotation

    .line 103
    iput-object p1, p0, Lorg/catrobat/catroid/transfers/project/ProjectDownloadService$onHandleIntent$1;->this$0:Lorg/catrobat/catroid/transfers/project/ProjectDownloadService;

    iput-object p2, p0, Lorg/catrobat/catroid/transfers/project/ProjectDownloadService$onHandleIntent$1;->$projectName:Ljava/lang/String;

    iput-object p3, p0, Lorg/catrobat/catroid/transfers/project/ProjectDownloadService$onHandleIntent$1;->$destinationFile:Ljava/io/File;

    iput-object p4, p0, Lorg/catrobat/catroid/transfers/project/ProjectDownloadService$onHandleIntent$1;->$resultReceiver:Landroid/os/ResultReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSuccess()V
    .locals 5

    .line 105
    iget-object v0, p0, Lorg/catrobat/catroid/transfers/project/ProjectDownloadService$onHandleIntent$1;->this$0:Lorg/catrobat/catroid/transfers/project/ProjectDownloadService;

    .line 106
    move-object v1, v0

    check-cast v1, Landroid/content/Context;

    .line 107
    iget-object v2, p0, Lorg/catrobat/catroid/transfers/project/ProjectDownloadService$onHandleIntent$1;->$projectName:Ljava/lang/String;

    .line 108
    iget-object v3, p0, Lorg/catrobat/catroid/transfers/project/ProjectDownloadService$onHandleIntent$1;->$destinationFile:Ljava/io/File;

    .line 109
    iget-object v4, p0, Lorg/catrobat/catroid/transfers/project/ProjectDownloadService$onHandleIntent$1;->$resultReceiver:Landroid/os/ResultReceiver;

    .line 105
    invoke-static {v0, v1, v2, v3, v4}, Lorg/catrobat/catroid/transfers/project/ProjectDownloadService;->access$downloadSuccessCallback(Lorg/catrobat/catroid/transfers/project/ProjectDownloadService;Landroid/content/Context;Ljava/lang/String;Ljava/io/File;Landroid/os/ResultReceiver;)V

    .line 111
    return-void
.end method
