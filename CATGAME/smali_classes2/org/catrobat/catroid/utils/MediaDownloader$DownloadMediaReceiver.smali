.class Lorg/catrobat/catroid/utils/MediaDownloader$DownloadMediaReceiver;
.super Landroid/os/ResultReceiver;
.source "MediaDownloader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/catrobat/catroid/utils/MediaDownloader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DownloadMediaReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/catrobat/catroid/utils/MediaDownloader;


# direct methods
.method constructor <init>(Lorg/catrobat/catroid/utils/MediaDownloader;Landroid/os/Handler;)V
    .locals 0
    .param p2, "handler"    # Landroid/os/Handler;

    .line 63
    iput-object p1, p0, Lorg/catrobat/catroid/utils/MediaDownloader$DownloadMediaReceiver;->this$0:Lorg/catrobat/catroid/utils/MediaDownloader;

    .line 64
    invoke-direct {p0, p2}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    .line 65
    return-void
.end method


# virtual methods
.method protected onReceiveResult(ILandroid/os/Bundle;)V
    .locals 4
    .param p1, "resultCode"    # I
    .param p2, "resultData"    # Landroid/os/Bundle;

    .line 69
    invoke-super {p0, p1, p2}, Landroid/os/ResultReceiver;->onReceiveResult(ILandroid/os/Bundle;)V

    .line 70
    iget-object v0, p0, Lorg/catrobat/catroid/utils/MediaDownloader$DownloadMediaReceiver;->this$0:Lorg/catrobat/catroid/utils/MediaDownloader;

    invoke-static {v0}, Lorg/catrobat/catroid/utils/MediaDownloader;->access$000(Lorg/catrobat/catroid/utils/MediaDownloader;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/ui/WebViewActivity;

    .line 71
    .local v0, "webViewActivity":Lorg/catrobat/catroid/ui/WebViewActivity;
    if-nez v0, :cond_0

    .line 72
    return-void

    .line 75
    :cond_0
    const/16 v1, 0x65

    if-ne p1, v1, :cond_2

    .line 76
    const-string v1, "currentDownloadProgress"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    .line 77
    .local v1, "progress":J
    const-string v3, "endOfFileReached"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    .line 78
    .local v3, "endOfFileReached":Z
    if-eqz v3, :cond_1

    .line 79
    const-wide/16 v1, 0x64

    .line 82
    :cond_1
    invoke-virtual {v0, v1, v2}, Lorg/catrobat/catroid/ui/WebViewActivity;->updateProgressDialog(J)V

    .end local v1    # "progress":J
    .end local v3    # "endOfFileReached":Z
    goto :goto_0

    .line 83
    :cond_2
    const/16 v1, 0x69

    if-ne p1, v1, :cond_3

    .line 84
    invoke-virtual {v0}, Lorg/catrobat/catroid/ui/WebViewActivity;->dismissProgressDialog()V

    goto :goto_1

    .line 83
    :cond_3
    :goto_0
    nop

    .line 86
    :goto_1
    return-void
.end method
