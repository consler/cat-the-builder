.class public final Lorg/catrobat/catroid/transfers/project/ProjectDownloadService$onHandleIntent$2;
.super Ljava/lang/Object;
.source "ProjectDownloadService.kt"

# interfaces
.implements Lorg/catrobat/catroid/web/CatrobatServerCalls$DownloadErrorCallback;


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
        "\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016\u00a8\u0006\u0008"
    }
    d2 = {
        "org/catrobat/catroid/transfers/project/ProjectDownloadService$onHandleIntent$2",
        "Lorg/catrobat/catroid/web/CatrobatServerCalls$DownloadErrorCallback;",
        "onError",
        "",
        "code",
        "",
        "message",
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
.field final synthetic $projectName:Ljava/lang/String;

.field final synthetic $resultReceiver:Landroid/os/ResultReceiver;

.field final synthetic this$0:Lorg/catrobat/catroid/transfers/project/ProjectDownloadService;


# direct methods
.method constructor <init>(Lorg/catrobat/catroid/transfers/project/ProjectDownloadService;Landroid/os/ResultReceiver;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lorg/catrobat/catroid/transfers/project/ProjectDownloadService;
    .param p2, "$captured_local_variable$1"    # Landroid/os/ResultReceiver;
    .param p3, "$captured_local_variable$2"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/ResultReceiver;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 113
    iput-object p1, p0, Lorg/catrobat/catroid/transfers/project/ProjectDownloadService$onHandleIntent$2;->this$0:Lorg/catrobat/catroid/transfers/project/ProjectDownloadService;

    iput-object p2, p0, Lorg/catrobat/catroid/transfers/project/ProjectDownloadService$onHandleIntent$2;->$resultReceiver:Landroid/os/ResultReceiver;

    iput-object p3, p0, Lorg/catrobat/catroid/transfers/project/ProjectDownloadService$onHandleIntent$2;->$projectName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/String;)V
    .locals 4
    .param p1, "code"    # I
    .param p2, "message"    # Ljava/lang/String;

    const-string v0, "message"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 115
    iget-object v0, p0, Lorg/catrobat/catroid/transfers/project/ProjectDownloadService$onHandleIntent$2;->this$0:Lorg/catrobat/catroid/transfers/project/ProjectDownloadService;

    move-object v1, v0

    check-cast v1, Landroid/content/Context;

    iget-object v2, p0, Lorg/catrobat/catroid/transfers/project/ProjectDownloadService$onHandleIntent$2;->$resultReceiver:Landroid/os/ResultReceiver;

    iget-object v3, p0, Lorg/catrobat/catroid/transfers/project/ProjectDownloadService$onHandleIntent$2;->$projectName:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lorg/catrobat/catroid/transfers/project/ProjectDownloadService;->access$downloadErrorCallback(Lorg/catrobat/catroid/transfers/project/ProjectDownloadService;Landroid/content/Context;Landroid/os/ResultReceiver;Ljava/lang/String;)V

    .line 116
    return-void
.end method
