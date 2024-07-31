.class public final Landroidx/webkit/WebViewAssetLoader$AssetsPathHandler;
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
    name = "AssetsPathHandler"
.end annotation


# instance fields
.field private mAssetHelper:Landroidx/webkit/internal/AssetHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 141
    new-instance v0, Landroidx/webkit/internal/AssetHelper;

    invoke-direct {v0, p1}, Landroidx/webkit/internal/AssetHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroidx/webkit/WebViewAssetLoader$AssetsPathHandler;->mAssetHelper:Landroidx/webkit/internal/AssetHelper;

    .line 142
    return-void
.end method

.method constructor <init>(Landroidx/webkit/internal/AssetHelper;)V
    .locals 0
    .param p1, "assetHelper"    # Landroidx/webkit/internal/AssetHelper;

    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 146
    iput-object p1, p0, Landroidx/webkit/WebViewAssetLoader$AssetsPathHandler;->mAssetHelper:Landroidx/webkit/internal/AssetHelper;

    .line 147
    return-void
.end method


# virtual methods
.method public handle(Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .locals 4
    .param p1, "path"    # Ljava/lang/String;

    .line 172
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Landroidx/webkit/WebViewAssetLoader$AssetsPathHandler;->mAssetHelper:Landroidx/webkit/internal/AssetHelper;

    invoke-virtual {v1, p1}, Landroidx/webkit/internal/AssetHelper;->openAsset(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 173
    .local v1, "is":Ljava/io/InputStream;
    invoke-static {p1}, Landroidx/webkit/internal/AssetHelper;->guessMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 174
    .local v2, "mimeType":Ljava/lang/String;
    new-instance v3, Landroid/webkit/WebResourceResponse;

    invoke-direct {v3, v2, v0, v1}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 175
    .end local v1    # "is":Ljava/io/InputStream;
    .end local v2    # "mimeType":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 176
    .local v1, "e":Ljava/io/IOException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error opening asset path: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "WebViewAssetLoader"

    invoke-static {v3, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 177
    new-instance v2, Landroid/webkit/WebResourceResponse;

    invoke-direct {v2, v0, v0, v0}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V

    return-object v2
.end method
