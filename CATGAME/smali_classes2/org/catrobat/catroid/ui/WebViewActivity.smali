.class public Lorg/catrobat/catroid/ui/WebViewActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "WebViewActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/catrobat/catroid/ui/WebViewActivity$MyWebViewClient;
    }
.end annotation


# static fields
.field public static final ANDROID_APPLICATION_EXTENSION:Ljava/lang/String; = ".apk"

.field public static final INTENT_FORCE_OPEN_IN_APP:Ljava/lang/String; = "openInApp"

.field public static final INTENT_PARAMETER_URL:Ljava/lang/String; = "url"

.field public static final MEDIA_FILE_PATH:Ljava/lang/String; = "media_file_path"

.field private static final PACKAGE_NAME_WHATSAPP:Ljava/lang/String; = "com.whatsapp"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private allowGoBack:Z

.field private forceOpenInApp:Z

.field private progressDialog:Landroid/app/ProgressDialog;

.field private resultIntent:Landroid/content/Intent;

.field private webView:Landroid/webkit/WebView;

.field private webViewLoadingDialog:Landroid/app/ProgressDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 74
    const-class v0, Lorg/catrobat/catroid/ui/WebViewActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/catrobat/catroid/ui/WebViewActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 72
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    .line 83
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/catrobat/catroid/ui/WebViewActivity;->allowGoBack:Z

    .line 84
    iput-boolean v0, p0, Lorg/catrobat/catroid/ui/WebViewActivity;->forceOpenInApp:Z

    .line 87
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iput-object v0, p0, Lorg/catrobat/catroid/ui/WebViewActivity;->resultIntent:Landroid/content/Intent;

    return-void
.end method

.method static synthetic access$100(Lorg/catrobat/catroid/ui/WebViewActivity;)Landroid/app/ProgressDialog;
    .locals 1
    .param p0, "x0"    # Lorg/catrobat/catroid/ui/WebViewActivity;

    .line 72
    iget-object v0, p0, Lorg/catrobat/catroid/ui/WebViewActivity;->webViewLoadingDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$102(Lorg/catrobat/catroid/ui/WebViewActivity;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .locals 0
    .param p0, "x0"    # Lorg/catrobat/catroid/ui/WebViewActivity;
    .param p1, "x1"    # Landroid/app/ProgressDialog;

    .line 72
    iput-object p1, p0, Lorg/catrobat/catroid/ui/WebViewActivity;->webViewLoadingDialog:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method static synthetic access$200(Lorg/catrobat/catroid/ui/WebViewActivity;)Z
    .locals 1
    .param p0, "x0"    # Lorg/catrobat/catroid/ui/WebViewActivity;

    .line 72
    iget-boolean v0, p0, Lorg/catrobat/catroid/ui/WebViewActivity;->allowGoBack:Z

    return v0
.end method

.method static synthetic access$202(Lorg/catrobat/catroid/ui/WebViewActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/catrobat/catroid/ui/WebViewActivity;
    .param p1, "x1"    # Z

    .line 72
    iput-boolean p1, p0, Lorg/catrobat/catroid/ui/WebViewActivity;->allowGoBack:Z

    return p1
.end method

.method static synthetic access$300(Lorg/catrobat/catroid/ui/WebViewActivity;)Z
    .locals 1
    .param p0, "x0"    # Lorg/catrobat/catroid/ui/WebViewActivity;

    .line 72
    invoke-direct {p0}, Lorg/catrobat/catroid/ui/WebViewActivity;->isWhatsappInstalled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lorg/catrobat/catroid/ui/WebViewActivity;)Z
    .locals 1
    .param p0, "x0"    # Lorg/catrobat/catroid/ui/WebViewActivity;

    .line 72
    iget-boolean v0, p0, Lorg/catrobat/catroid/ui/WebViewActivity;->forceOpenInApp:Z

    return v0
.end method

.method static synthetic access$500()Ljava/lang/String;
    .locals 1

    .line 72
    sget-object v0, Lorg/catrobat/catroid/ui/WebViewActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static clearCookies()V
    .locals 2

    .line 304
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/CookieManager;->removeAllCookies(Landroid/webkit/ValueCallback;)V

    .line 305
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieManager;->flush()V

    .line 306
    return-void
.end method

.method private getExtensionFromContentDisposition(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "contentDisposition"    # Ljava/lang/String;

    .line 274
    const/16 v0, 0x2e

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 275
    .local v0, "extensionIndex":I
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 276
    .local v1, "extension":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 277
    return-object v1
.end method

.method private isWhatsappInstalled()Z
    .locals 3

    .line 309
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/WebViewActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 311
    .local v0, "packageManager":Landroid/content/pm/PackageManager;
    :try_start_0
    const-string v1, "com.whatsapp"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 312
    return v2

    .line 313
    :catch_0
    move-exception v1

    .line 314
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v2, 0x0

    return v2
.end method

.method public static setLoginCookies(Ljava/lang/String;Landroid/content/SharedPreferences;Landroid/webkit/CookieManager;)V
    .locals 6
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "sharedPreferences"    # Landroid/content/SharedPreferences;
    .param p2, "cookieManager"    # Landroid/webkit/CookieManager;

    .line 282
    const-string v0, "username"

    const-string v1, "no_username"

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 283
    .local v0, "username":Ljava/lang/String;
    const-string v2, "token"

    const-string v3, "no_token"

    invoke-interface {p1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 285
    .local v2, "token":Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 291
    :cond_0
    :try_start_0
    const-string v1, "UTF-8"

    invoke-static {v0, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 295
    .local v1, "encodedUsername":Ljava/lang/String;
    nop

    .line 297
    new-instance v3, Lorg/catrobat/catroid/web/Cookie;

    const-string v4, "CATRO_LOGIN_USER"

    invoke-direct {v3, v4, v1}, Lorg/catrobat/catroid/web/Cookie;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    .local v3, "usernameCookie":Lorg/catrobat/catroid/web/Cookie;
    new-instance v4, Lorg/catrobat/catroid/web/Cookie;

    const-string v5, "CATRO_LOGIN_TOKEN"

    invoke-direct {v4, v5, v2}, Lorg/catrobat/catroid/web/Cookie;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    .local v4, "tokenCookie":Lorg/catrobat/catroid/web/Cookie;
    invoke-virtual {v3}, Lorg/catrobat/catroid/web/Cookie;->generateCookieString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, p0, v5}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    invoke-virtual {v4}, Lorg/catrobat/catroid/web/Cookie;->generateCookieString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, p0, v5}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    return-void

    .line 292
    .end local v1    # "encodedUsername":Ljava/lang/String;
    .end local v3    # "usernameCookie":Lorg/catrobat/catroid/web/Cookie;
    .end local v4    # "tokenCookie":Lorg/catrobat/catroid/web/Cookie;
    :catch_0
    move-exception v1

    .line 293
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    sget-object v3, Lorg/catrobat/catroid/ui/WebViewActivity;->TAG:Ljava/lang/String;

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    return-void

    .line 286
    .end local v1    # "e":Ljava/io/UnsupportedEncodingException;
    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public createProgressDialog(Ljava/lang/String;)V
    .locals 3
    .param p1, "mediaName"    # Ljava/lang/String;

    .line 235
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/catrobat/catroid/ui/WebViewActivity;->progressDialog:Landroid/app/ProgressDialog;

    .line 237
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f1205ca

    invoke-virtual {p0, v2}, Lorg/catrobat/catroid/ui/WebViewActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 238
    iget-object v0, p0, Lorg/catrobat/catroid/ui/WebViewActivity;->progressDialog:Landroid/app/ProgressDialog;

    const v1, 0x7f1205c8

    invoke-virtual {p0, v1}, Lorg/catrobat/catroid/ui/WebViewActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 239
    iget-object v0, p0, Lorg/catrobat/catroid/ui/WebViewActivity;->progressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 240
    iget-object v0, p0, Lorg/catrobat/catroid/ui/WebViewActivity;->progressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 241
    iget-object v0, p0, Lorg/catrobat/catroid/ui/WebViewActivity;->progressDialog:Landroid/app/ProgressDialog;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMax(I)V

    .line 242
    iget-object v0, p0, Lorg/catrobat/catroid/ui/WebViewActivity;->progressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgressNumberFormat(Ljava/lang/String;)V

    .line 243
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/WebViewActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 244
    iget-object v0, p0, Lorg/catrobat/catroid/ui/WebViewActivity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 246
    :cond_0
    return-void
.end method

.method public dismissProgressDialog()V
    .locals 1

    .line 262
    iget-object v0, p0, Lorg/catrobat/catroid/ui/WebViewActivity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 263
    return-void
.end method

.method public getResultIntent()Landroid/content/Intent;
    .locals 1

    .line 266
    iget-object v0, p0, Lorg/catrobat/catroid/ui/WebViewActivity;->resultIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public synthetic lambda$onCreate$0$WebViewActivity(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 5
    .param p1, "downloadUrl"    # Ljava/lang/String;
    .param p2, "userAgent"    # Ljava/lang/String;
    .param p3, "contentDisposition"    # Ljava/lang/String;
    .param p4, "mimetype"    # Ljava/lang/String;
    .param p5, "contentLength"    # J

    .line 118
    invoke-direct {p0, p3}, Lorg/catrobat/catroid/ui/WebViewActivity;->getExtensionFromContentDisposition(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ".catrobat"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "https://share.catrob.at/pocketcode/download-media/"

    if-eqz v0, :cond_0

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 119
    new-instance v0, Lorg/catrobat/catroid/web/ProjectDownloader;

    sget-object v1, Lorg/catrobat/catroid/web/GlobalProjectDownloadQueue;->INSTANCE:Lorg/catrobat/catroid/web/GlobalProjectDownloadQueue;

    invoke-virtual {v1}, Lorg/catrobat/catroid/web/GlobalProjectDownloadQueue;->getQueue()Lorg/catrobat/catroid/web/GlobalProjectDownloadQueue$ProjectDownloadQueue;

    move-result-object v1

    sget-object v2, Lorg/catrobat/catroid/utils/ProjectDownloadUtil;->INSTANCE:Lorg/catrobat/catroid/utils/ProjectDownloadUtil;

    invoke-direct {v0, v1, p1, v2}, Lorg/catrobat/catroid/web/ProjectDownloader;-><init>(Lorg/catrobat/catroid/web/ProjectDownloader$ProjectDownloadQueue;Ljava/lang/String;Lorg/catrobat/catroid/scratchconverter/Client$ProjectDownloadCallback;)V

    .line 120
    invoke-virtual {v0, p0}, Lorg/catrobat/catroid/web/ProjectDownloader;->download(Landroidx/appcompat/app/AppCompatActivity;)V

    goto/16 :goto_0

    .line 121
    :cond_0
    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 122
    invoke-static {p1, p3, p4}, Landroid/webkit/URLUtil;->guessFileName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 124
    .local v0, "fileName":Ljava/lang/String;
    sget-object v1, Lorg/catrobat/catroid/common/Constants;->MEDIA_LIBRARY_CACHE_DIR:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 125
    sget-object v1, Lorg/catrobat/catroid/common/Constants;->MEDIA_LIBRARY_CACHE_DIR:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_1

    .line 126
    sget-object v1, Lorg/catrobat/catroid/ui/WebViewActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot create "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lorg/catrobat/catroid/common/Constants;->MEDIA_LIBRARY_CACHE_DIR:Ljava/io/File;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    return-void

    .line 130
    :cond_1
    new-instance v1, Ljava/io/File;

    sget-object v2, Lorg/catrobat/catroid/common/Constants;->MEDIA_LIBRARY_CACHE_DIR:Ljava/io/File;

    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 131
    .local v1, "file":Ljava/io/File;
    iget-object v2, p0, Lorg/catrobat/catroid/ui/WebViewActivity;->resultIntent:Landroid/content/Intent;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    const-string v4, "media_file_path"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 132
    new-instance v2, Lorg/catrobat/catroid/utils/MediaDownloader;

    invoke-direct {v2, p0}, Lorg/catrobat/catroid/utils/MediaDownloader;-><init>(Lorg/catrobat/catroid/ui/WebViewActivity;)V

    .line 133
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, p0, p1, v0, v3}, Lorg/catrobat/catroid/utils/MediaDownloader;->startDownload(Lorg/catrobat/catroid/ui/WebViewActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    .end local v0    # "fileName":Ljava/lang/String;
    .end local v1    # "file":Ljava/io/File;
    goto :goto_0

    .line 135
    :cond_2
    new-instance v0, Landroid/app/DownloadManager$Request;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/DownloadManager$Request;-><init>(Landroid/net/Uri;)V

    .line 136
    .local v0, "request":Landroid/app/DownloadManager$Request;
    sget-object v1, Lorg/catrobat/catroid/web/ProjectDownloader;->Companion:Lorg/catrobat/catroid/web/ProjectDownloader$Companion;

    invoke-virtual {v1, p1}, Lorg/catrobat/catroid/web/ProjectDownloader$Companion;->getProjectNameFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 137
    .local v1, "projectName":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x7f1205ca

    invoke-virtual {p0, v3}, Lorg/catrobat/catroid/ui/WebViewActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/DownloadManager$Request;->setTitle(Ljava/lang/CharSequence;)Landroid/app/DownloadManager$Request;

    .line 138
    const v2, 0x7f1205c8

    invoke-virtual {p0, v2}, Lorg/catrobat/catroid/ui/WebViewActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/DownloadManager$Request;->setDescription(Ljava/lang/CharSequence;)Landroid/app/DownloadManager$Request;

    .line 139
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/DownloadManager$Request;->setNotificationVisibility(I)Landroid/app/DownloadManager$Request;

    .line 140
    sget-object v2, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".apk"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/app/DownloadManager$Request;->setDestinationInExternalPublicDir(Ljava/lang/String;Ljava/lang/String;)Landroid/app/DownloadManager$Request;

    .line 142
    invoke-virtual {v0, p4}, Landroid/app/DownloadManager$Request;->setMimeType(Ljava/lang/String;)Landroid/app/DownloadManager$Request;

    .line 144
    const-string v2, "download"

    invoke-virtual {p0, v2}, Lorg/catrobat/catroid/ui/WebViewActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/DownloadManager;

    .line 145
    .local v2, "downloadManager":Landroid/app/DownloadManager;
    invoke-virtual {v2, v0}, Landroid/app/DownloadManager;->enqueue(Landroid/app/DownloadManager$Request;)J

    .line 147
    .end local v0    # "request":Landroid/app/DownloadManager$Request;
    .end local v1    # "projectName":Ljava/lang/String;
    .end local v2    # "downloadManager":Landroid/app/DownloadManager;
    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 91
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 92
    const v0, 0x7f0d0031

    invoke-virtual {p0, v0}, Lorg/catrobat/catroid/ui/WebViewActivity;->setContentView(I)V

    .line 94
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/WebViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "url"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 95
    .local v0, "url":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 96
    const-string v0, "https://share.catrob.at/pocketcode/"

    .line 99
    :cond_0
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/WebViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "openInApp"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lorg/catrobat/catroid/ui/WebViewActivity;->forceOpenInApp:Z

    .line 101
    const v1, 0x7f0a063b

    invoke-virtual {p0, v1}, Lorg/catrobat/catroid/ui/WebViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/webkit/WebView;

    iput-object v1, p0, Lorg/catrobat/catroid/ui/WebViewActivity;->webView:Landroid/webkit/WebView;

    .line 102
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/WebViewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060020

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroidx/core/content/res/ResourcesCompat;->getColor(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 103
    iget-object v1, p0, Lorg/catrobat/catroid/ui/WebViewActivity;->webView:Landroid/webkit/WebView;

    new-instance v2, Lorg/catrobat/catroid/ui/WebViewActivity$MyWebViewClient;

    invoke-direct {v2, p0, v4}, Lorg/catrobat/catroid/ui/WebViewActivity$MyWebViewClient;-><init>(Lorg/catrobat/catroid/ui/WebViewActivity;Lorg/catrobat/catroid/ui/WebViewActivity$1;)V

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 104
    iget-object v1, p0, Lorg/catrobat/catroid/ui/WebViewActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 105
    const-wide v1, 0x3ff1c28f5c28f5c3L    # 1.11

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v1

    .line 106
    .local v1, "language":Ljava/lang/String;
    const-string v2, "PocketCode"

    .line 107
    .local v2, "flavor":Ljava/lang/String;
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/WebViewActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lorg/catrobat/catroid/utils/Utils;->getVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 108
    .local v3, "version":Ljava/lang/String;
    const-string v4, "Android"

    .line 109
    .local v4, "platform":Ljava/lang/String;
    const-string v5, "catroid"

    const-string v6, "pocketCodeBeta"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const-string v5, "debug"

    .line 110
    .local v5, "buildType":Ljava/lang/String;
    iget-object v6, p0, Lorg/catrobat/catroid/ui/WebViewActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v6}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Catrobat/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " Platform/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " BuildType/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    .line 113
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/WebViewActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v6

    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v7

    invoke-static {v0, v6, v7}, Lorg/catrobat/catroid/ui/WebViewActivity;->setLoginCookies(Ljava/lang/String;Landroid/content/SharedPreferences;Landroid/webkit/CookieManager;)V

    .line 114
    iget-object v6, p0, Lorg/catrobat/catroid/ui/WebViewActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v6, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 116
    iget-object v6, p0, Lorg/catrobat/catroid/ui/WebViewActivity;->webView:Landroid/webkit/WebView;

    new-instance v7, Lorg/catrobat/catroid/ui/-$$Lambda$WebViewActivity$XQ1jslfWfPHXzdBSoiz66nIi1vs;

    invoke-direct {v7, p0}, Lorg/catrobat/catroid/ui/-$$Lambda$WebViewActivity$XQ1jslfWfPHXzdBSoiz66nIi1vs;-><init>(Lorg/catrobat/catroid/ui/WebViewActivity;)V

    invoke-virtual {v6, v7}, Landroid/webkit/WebView;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    .line 148
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 320
    iget-object v0, p0, Lorg/catrobat/catroid/ui/WebViewActivity;->webView:Landroid/webkit/WebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    .line 321
    iget-object v0, p0, Lorg/catrobat/catroid/ui/WebViewActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    .line 323
    sget-object v0, Lorg/catrobat/catroid/ui/MainMenuActivity;->surveyCampaign:Lorg/catrobat/catroid/common/Survey;

    if-eqz v0, :cond_0

    .line 324
    sget-object v0, Lorg/catrobat/catroid/ui/MainMenuActivity;->surveyCampaign:Lorg/catrobat/catroid/common/Survey;

    invoke-virtual {v0, p0}, Lorg/catrobat/catroid/common/Survey;->showSurvey(Landroid/content/Context;)V

    .line 327
    :cond_0
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    .line 328
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 152
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lorg/catrobat/catroid/ui/WebViewActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 153
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/catrobat/catroid/ui/WebViewActivity;->allowGoBack:Z

    .line 154
    iget-object v0, p0, Lorg/catrobat/catroid/ui/WebViewActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    .line 155
    const/4 v0, 0x1

    return v0

    .line 157
    :cond_0
    invoke-super {p0, p1, p2}, Landroidx/appcompat/app/AppCompatActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public setResultIntent(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .line 270
    iput-object p1, p0, Lorg/catrobat/catroid/ui/WebViewActivity;->resultIntent:Landroid/content/Intent;

    .line 271
    return-void
.end method

.method public updateProgressDialog(J)V
    .locals 2
    .param p1, "progress"    # J

    .line 249
    const-wide/16 v0, 0x64

    cmp-long v0, p1, v0

    if-nez v0, :cond_1

    .line 250
    iget-object v0, p0, Lorg/catrobat/catroid/ui/WebViewActivity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/WebViewActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 251
    iget-object v0, p0, Lorg/catrobat/catroid/ui/WebViewActivity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getMax()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 252
    const/4 v0, -0x1

    iget-object v1, p0, Lorg/catrobat/catroid/ui/WebViewActivity;->resultIntent:Landroid/content/Intent;

    invoke-virtual {p0, v0, v1}, Lorg/catrobat/catroid/ui/WebViewActivity;->setResult(ILandroid/content/Intent;)V

    .line 253
    iget-object v0, p0, Lorg/catrobat/catroid/ui/WebViewActivity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 255
    :cond_0
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/WebViewActivity;->finish()V

    goto :goto_0

    .line 257
    :cond_1
    iget-object v0, p0, Lorg/catrobat/catroid/ui/WebViewActivity;->progressDialog:Landroid/app/ProgressDialog;

    long-to-int v1, p1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 259
    :goto_0
    return-void
.end method
