.class public final Landroidx/webkit/WebViewAssetLoader$ResourcesPathHandler;
.super Ljava/lang/Object;
.source "WebViewAssetLoader.java"

# interfaces
.implements Landroidx/webkit/WebViewAssetLoader$PathHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/webkit/WebViewAssetLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ResourcesPathHandler"
.end annotation


# instance fields
.field private mAssetHelper:Landroidx/webkit/internal/AssetHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 191
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 192
    new-instance v0, Landroidx/webkit/internal/AssetHelper;

    invoke-direct {v0, p1}, Landroidx/webkit/internal/AssetHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroidx/webkit/WebViewAssetLoader$ResourcesPathHandler;->mAssetHelper:Landroidx/webkit/internal/AssetHelper;

    return-void
.end method

.method constructor <init>(Landroidx/webkit/internal/AssetHelper;)V
    .locals 0

    .line 196
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 197
    iput-object p1, p0, Landroidx/webkit/WebViewAssetLoader$ResourcesPathHandler;->mAssetHelper:Landroidx/webkit/internal/AssetHelper;

    return-void
.end method


# virtual methods
.method public handle(Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .locals 5

    const-string v0, "WebViewAssetLoader"

    const/4 v1, 0x0

    .line 223
    :try_start_0
    iget-object v2, p0, Landroidx/webkit/WebViewAssetLoader$ResourcesPathHandler;->mAssetHelper:Landroidx/webkit/internal/AssetHelper;

    invoke-virtual {v2, p1}, Landroidx/webkit/internal/AssetHelper;->openResource(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    .line 224
    invoke-static {p1}, Landroidx/webkit/internal/AssetHelper;->guessMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 225
    new-instance v4, Landroid/webkit/WebResourceResponse;

    invoke-direct {v4, v3, v1, v2}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v4

    :catch_0
    move-exception v2

    .line 229
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Error opening resource from the path: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    move-exception v2

    .line 227
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Resource not found from the path: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 231
    :goto_0
    new-instance p1, Landroid/webkit/WebResourceResponse;

    invoke-direct {p1, v1, v1, v1}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V

    return-object p1
.end method
