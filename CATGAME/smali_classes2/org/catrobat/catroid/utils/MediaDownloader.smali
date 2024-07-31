.class public final Lorg/catrobat/catroid/utils/MediaDownloader;
.super Ljava/lang/Object;
.source "MediaDownloader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/catrobat/catroid/utils/MediaDownloader$DownloadMediaReceiver;
    }
.end annotation


# instance fields
.field private webViewActivityWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lorg/catrobat/catroid/ui/WebViewActivity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/catrobat/catroid/ui/WebViewActivity;)V
    .locals 1
    .param p1, "webViewActivity"    # Lorg/catrobat/catroid/ui/WebViewActivity;

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/catrobat/catroid/utils/MediaDownloader;->webViewActivityWeakReference:Ljava/lang/ref/WeakReference;

    .line 43
    return-void
.end method

.method static synthetic access$000(Lorg/catrobat/catroid/utils/MediaDownloader;)Ljava/lang/ref/WeakReference;
    .locals 1
    .param p0, "x0"    # Lorg/catrobat/catroid/utils/MediaDownloader;

    .line 38
    iget-object v0, p0, Lorg/catrobat/catroid/utils/MediaDownloader;->webViewActivityWeakReference:Ljava/lang/ref/WeakReference;

    return-object v0
.end method


# virtual methods
.method public startDownload(Lorg/catrobat/catroid/ui/WebViewActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "activity"    # Lorg/catrobat/catroid/ui/WebViewActivity;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "mediaName"    # Ljava/lang/String;
    .param p4, "filePath"    # Ljava/lang/String;

    .line 46
    iget-object v0, p0, Lorg/catrobat/catroid/utils/MediaDownloader;->webViewActivityWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/ui/WebViewActivity;

    .line 47
    .local v0, "webViewActivity":Lorg/catrobat/catroid/ui/WebViewActivity;
    if-eqz p3, :cond_1

    if-nez v0, :cond_0

    goto :goto_0

    .line 51
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lorg/catrobat/catroid/transfers/MediaDownloadService;

    invoke-direct {v1, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 52
    .local v1, "downloadIntent":Landroid/content/Intent;
    new-instance v2, Lorg/catrobat/catroid/utils/MediaDownloader$DownloadMediaReceiver;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    invoke-direct {v2, p0, v3}, Lorg/catrobat/catroid/utils/MediaDownloader$DownloadMediaReceiver;-><init>(Lorg/catrobat/catroid/utils/MediaDownloader;Landroid/os/Handler;)V

    const-string v3, "receiver"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 53
    const-string v2, "url"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 54
    const-string v2, "path"

    invoke-virtual {v1, v2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 55
    invoke-virtual {v0, p3}, Lorg/catrobat/catroid/ui/WebViewActivity;->createProgressDialog(Ljava/lang/String;)V

    .line 56
    invoke-virtual {v0}, Lorg/catrobat/catroid/ui/WebViewActivity;->getResultIntent()Landroid/content/Intent;

    move-result-object v2

    .line 57
    const-string v3, "media_file_path"

    invoke-virtual {v2, v3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 56
    invoke-virtual {v0, v2}, Lorg/catrobat/catroid/ui/WebViewActivity;->setResultIntent(Landroid/content/Intent;)V

    .line 58
    invoke-virtual {p1, v1}, Lorg/catrobat/catroid/ui/WebViewActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 59
    return-void

    .line 48
    .end local v1    # "downloadIntent":Landroid/content/Intent;
    :cond_1
    :goto_0
    return-void
.end method
