.class public Lorg/catrobat/catroid/transfers/MediaDownloadService;
.super Landroid/app/IntentService;
.source "MediaDownloadService.java"


# static fields
.field public static final MEDIA_FILE_PATH:Ljava/lang/String; = "path"

.field public static final RECEIVER_TAG:Ljava/lang/String; = "receiver"

.field public static final TAG:Ljava/lang/String;

.field public static final URL_TAG:Ljava/lang/String; = "url"


# instance fields
.field private handler:Landroid/os/Handler;

.field public receiver:Landroid/os/ResultReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 42
    const-class v0, Lorg/catrobat/catroid/transfers/MediaDownloadService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/catrobat/catroid/transfers/MediaDownloadService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 52
    const-class v0, Lorg/catrobat/catroid/transfers/MediaDownloadService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 53
    return-void
.end method

.method private showToast(IZ)V
    .locals 2
    .param p1, "messageId"    # I
    .param p2, "error"    # Z

    .line 91
    if-eqz p2, :cond_0

    .line 92
    iget-object v0, p0, Lorg/catrobat/catroid/transfers/MediaDownloadService;->handler:Landroid/os/Handler;

    new-instance v1, Lorg/catrobat/catroid/transfers/MediaDownloadService$1;

    invoke-direct {v1, p0, p1}, Lorg/catrobat/catroid/transfers/MediaDownloadService$1;-><init>(Lorg/catrobat/catroid/transfers/MediaDownloadService;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 100
    :cond_0
    iget-object v0, p0, Lorg/catrobat/catroid/transfers/MediaDownloadService;->handler:Landroid/os/Handler;

    new-instance v1, Lorg/catrobat/catroid/transfers/MediaDownloadService$2;

    invoke-direct {v1, p0, p1}, Lorg/catrobat/catroid/transfers/MediaDownloadService$2;-><init>(Lorg/catrobat/catroid/transfers/MediaDownloadService;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 108
    :goto_0
    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 1

    .line 57
    invoke-super {p0}, Landroid/app/IntentService;->onCreate()V

    .line 58
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lorg/catrobat/catroid/transfers/MediaDownloadService;->handler:Landroid/os/Handler;

    .line 59
    return-void
.end method

.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 9
    .param p1, "intent"    # Landroid/content/Intent;

    .line 63
    const/4 v0, 0x1

    .line 64
    .local v0, "result":Z
    const-string v1, "url"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 65
    .local v1, "url":Ljava/lang/String;
    const-string v2, "path"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 66
    .local v2, "fileString":Ljava/lang/String;
    const v3, 0x7f12030f

    .line 68
    .local v3, "errorMessage":I
    const-string v4, "receiver"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/os/ResultReceiver;

    iput-object v4, p0, Lorg/catrobat/catroid/transfers/MediaDownloadService;->receiver:Landroid/os/ResultReceiver;

    .line 70
    const/4 v4, 0x0

    const/16 v5, 0x69

    :try_start_0
    new-instance v6, Lorg/catrobat/catroid/web/ServerCalls;

    sget-object v7, Lorg/catrobat/catroid/web/CatrobatWebClient;->INSTANCE:Lorg/catrobat/catroid/web/CatrobatWebClient;

    invoke-virtual {v7}, Lorg/catrobat/catroid/web/CatrobatWebClient;->getClient()Lokhttp3/OkHttpClient;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/catrobat/catroid/web/ServerCalls;-><init>(Lokhttp3/OkHttpClient;)V

    iget-object v7, p0, Lorg/catrobat/catroid/transfers/MediaDownloadService;->receiver:Landroid/os/ResultReceiver;

    invoke-virtual {v6, v1, v2, v7}, Lorg/catrobat/catroid/web/ServerCalls;->downloadMedia(Ljava/lang/String;Ljava/lang/String;Landroid/os/ResultReceiver;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/catrobat/catroid/web/WebconnectionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 75
    :catch_0
    move-exception v6

    .line 76
    .local v6, "webconnectionException":Lorg/catrobat/catroid/web/WebconnectionException;
    sget-object v7, Lorg/catrobat/catroid/transfers/MediaDownloadService;->TAG:Ljava/lang/String;

    invoke-static {v6}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    const/4 v0, 0x0

    .line 78
    const v3, 0x7f1202e5

    .line 79
    iget-object v7, p0, Lorg/catrobat/catroid/transfers/MediaDownloadService;->receiver:Landroid/os/ResultReceiver;

    invoke-virtual {v7, v5, v4}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    goto :goto_1

    .line 71
    .end local v6    # "webconnectionException":Lorg/catrobat/catroid/web/WebconnectionException;
    :catch_1
    move-exception v6

    .line 72
    .local v6, "ioException":Ljava/io/IOException;
    sget-object v7, Lorg/catrobat/catroid/transfers/MediaDownloadService;->TAG:Ljava/lang/String;

    invoke-static {v6}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    const/4 v0, 0x0

    .line 74
    iget-object v7, p0, Lorg/catrobat/catroid/transfers/MediaDownloadService;->receiver:Landroid/os/ResultReceiver;

    invoke-virtual {v7, v5, v4}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 80
    .end local v6    # "ioException":Ljava/io/IOException;
    :goto_0
    nop

    .line 82
    :goto_1
    if-nez v0, :cond_0

    .line 83
    const/4 v4, 0x1

    invoke-direct {p0, v3, v4}, Lorg/catrobat/catroid/transfers/MediaDownloadService;->showToast(IZ)V

    .line 84
    return-void

    .line 87
    :cond_0
    const v4, 0x7f1205c7

    const/4 v5, 0x0

    invoke-direct {p0, v4, v5}, Lorg/catrobat/catroid/transfers/MediaDownloadService;->showToast(IZ)V

    .line 88
    return-void
.end method
