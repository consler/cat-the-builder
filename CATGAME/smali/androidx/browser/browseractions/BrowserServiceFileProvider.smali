.class public final Landroidx/browser/browseractions/BrowserServiceFileProvider;
.super Landroidx/core/content/FileProvider;
.source "BrowserServiceFileProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/browser/browseractions/BrowserServiceFileProvider$FileSaveTask;,
        Landroidx/browser/browseractions/BrowserServiceFileProvider$FileCleanupTask;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final AUTHORITY_SUFFIX:Ljava/lang/String; = ".image_provider"

.field private static final CLIP_DATA_LABEL:Ljava/lang/String; = "image_provider_uris"

.field private static final CONTENT_SCHEME:Ljava/lang/String; = "content"

.field private static final FILE_EXTENSION:Ljava/lang/String; = ".png"

.field private static final FILE_SUB_DIR:Ljava/lang/String; = "image_provider"

.field private static final FILE_SUB_DIR_NAME:Ljava/lang/String; = "image_provider_images/"

.field private static final LAST_CLEANUP_TIME_KEY:Ljava/lang/String; = "last_cleanup_time"

.field private static final TAG:Ljava/lang/String; = "BrowserServiceFP"

.field static sFileCleanupLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 75
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/browser/browseractions/BrowserServiceFileProvider;->sFileCleanupLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 64
    invoke-direct {p0}, Landroidx/core/content/FileProvider;-><init>()V

    return-void
.end method

.method private static generateUri(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "filename"    # Ljava/lang/String;

    .line 236
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "image_provider_images/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 237
    .local v0, "fileName":Ljava/lang/String;
    new-instance v1, Landroid/net/Uri$Builder;

    invoke-direct {v1}, Landroid/net/Uri$Builder;-><init>()V

    .line 238
    const-string v2, "content"

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 239
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".image_provider"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    .line 240
    invoke-virtual {v1, v0}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    .line 241
    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 237
    return-object v1
.end method

.method public static grantReadPermission(Landroid/content/Intent;Ljava/util/List;Landroid/content/Context;)V
    .locals 5
    .param p0, "intent"    # Landroid/content/Intent;
    .param p2, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .line 253
    .local p1, "uris":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 254
    :cond_0
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 255
    .local v0, "resolver":Landroid/content/ContentResolver;
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 256
    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    const-string v2, "image_provider_uris"

    invoke-static {v0, v2, v1}, Landroid/content/ClipData;->newUri(Landroid/content/ContentResolver;Ljava/lang/CharSequence;Landroid/net/Uri;)Landroid/content/ClipData;

    move-result-object v1

    .line 257
    .local v1, "clipData":Landroid/content/ClipData;
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 258
    new-instance v3, Landroid/content/ClipData$Item;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/Uri;

    invoke-direct {v3, v4}, Landroid/content/ClipData$Item;-><init>(Landroid/net/Uri;)V

    invoke-virtual {v1, v3}, Landroid/content/ClipData;->addItem(Landroid/content/ClipData$Item;)V

    .line 257
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 260
    .end local v2    # "i":I
    :cond_1
    invoke-virtual {p0, v1}, Landroid/content/Intent;->setClipData(Landroid/content/ClipData;)V

    .line 261
    return-void

    .line 253
    .end local v0    # "resolver":Landroid/content/ContentResolver;
    .end local v1    # "clipData":Landroid/content/ClipData;
    :cond_2
    :goto_1
    return-void
.end method

.method public static loadBitmap(Landroid/content/ContentResolver;Landroid/net/Uri;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 3
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "Landroid/net/Uri;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 273
    invoke-static {}, Landroidx/concurrent/futures/ResolvableFuture;->create()Landroidx/concurrent/futures/ResolvableFuture;

    move-result-object v0

    .line 275
    .local v0, "result":Landroidx/concurrent/futures/ResolvableFuture;, "Landroidx/concurrent/futures/ResolvableFuture<Landroid/graphics/Bitmap;>;"
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-instance v2, Landroidx/browser/browseractions/BrowserServiceFileProvider$1;

    invoke-direct {v2, p0, p1, v0}, Landroidx/browser/browseractions/BrowserServiceFileProvider$1;-><init>(Landroid/content/ContentResolver;Landroid/net/Uri;Landroidx/concurrent/futures/ResolvableFuture;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 302
    return-object v0
.end method

.method public static saveBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;Ljava/lang/String;I)Landroidx/concurrent/futures/ResolvableFuture;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "version"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/graphics/Bitmap;",
            "Ljava/lang/String;",
            "I)",
            "Landroidx/concurrent/futures/ResolvableFuture<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    .line 226
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 227
    .local v0, "filename":Ljava/lang/String;
    invoke-static {p0, v0}, Landroidx/browser/browseractions/BrowserServiceFileProvider;->generateUri(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 229
    .local v1, "uri":Landroid/net/Uri;
    invoke-static {}, Landroidx/concurrent/futures/ResolvableFuture;->create()Landroidx/concurrent/futures/ResolvableFuture;

    move-result-object v8

    .line 230
    .local v8, "result":Landroidx/concurrent/futures/ResolvableFuture;, "Landroidx/concurrent/futures/ResolvableFuture<Landroid/net/Uri;>;"
    new-instance v9, Landroidx/browser/browseractions/BrowserServiceFileProvider$FileSaveTask;

    move-object v2, v9

    move-object v3, p0

    move-object v4, v0

    move-object v5, p1

    move-object v6, v1

    move-object v7, v8

    invoke-direct/range {v2 .. v7}, Landroidx/browser/browseractions/BrowserServiceFileProvider$FileSaveTask;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/net/Uri;Landroidx/concurrent/futures/ResolvableFuture;)V

    sget-object v2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    .line 231
    invoke-virtual {v9, v2, v3}, Landroidx/browser/browseractions/BrowserServiceFileProvider$FileSaveTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 232
    return-object v8
.end method
