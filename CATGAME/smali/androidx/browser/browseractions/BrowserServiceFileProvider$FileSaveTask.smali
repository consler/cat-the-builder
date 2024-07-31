.class Landroidx/browser/browseractions/BrowserServiceFileProvider$FileSaveTask;
.super Landroid/os/AsyncTask;
.source "BrowserServiceFileProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/browser/browseractions/BrowserServiceFileProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FileSaveTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final mAppContext:Landroid/content/Context;

.field private final mBitmap:Landroid/graphics/Bitmap;

.field private final mFileUri:Landroid/net/Uri;

.field private final mFilename:Ljava/lang/String;

.field private final mResultFuture:Landroidx/concurrent/futures/ResolvableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/concurrent/futures/ResolvableFuture<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/net/Uri;Landroidx/concurrent/futures/ResolvableFuture;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "filename"    # Ljava/lang/String;
    .param p3, "bitmap"    # Landroid/graphics/Bitmap;
    .param p4, "fileUri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            "Landroid/net/Uri;",
            "Landroidx/concurrent/futures/ResolvableFuture<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    .line 142
    .local p5, "resultFuture":Landroidx/concurrent/futures/ResolvableFuture;, "Landroidx/concurrent/futures/ResolvableFuture<Landroid/net/Uri;>;"
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 143
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Landroidx/browser/browseractions/BrowserServiceFileProvider$FileSaveTask;->mAppContext:Landroid/content/Context;

    .line 144
    iput-object p2, p0, Landroidx/browser/browseractions/BrowserServiceFileProvider$FileSaveTask;->mFilename:Ljava/lang/String;

    .line 145
    iput-object p3, p0, Landroidx/browser/browseractions/BrowserServiceFileProvider$FileSaveTask;->mBitmap:Landroid/graphics/Bitmap;

    .line 146
    iput-object p4, p0, Landroidx/browser/browseractions/BrowserServiceFileProvider$FileSaveTask;->mFileUri:Landroid/net/Uri;

    .line 147
    iput-object p5, p0, Landroidx/browser/browseractions/BrowserServiceFileProvider$FileSaveTask;->mResultFuture:Landroidx/concurrent/futures/ResolvableFuture;

    .line 148
    return-void
.end method

.method private saveFileBlocking(Ljava/io/File;)V
    .locals 5
    .param p1, "img"    # Ljava/io/File;

    .line 181
    const/4 v0, 0x0

    .line 182
    .local v0, "fOut":Ljava/io/FileOutputStream;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x64

    const/16 v3, 0x16

    if-lt v1, v3, :cond_0

    .line 183
    new-instance v1, Landroidx/core/util/AtomicFile;

    invoke-direct {v1, p1}, Landroidx/core/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 185
    .local v1, "atomicFile":Landroidx/core/util/AtomicFile;
    :try_start_0
    invoke-virtual {v1}, Landroidx/core/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v3

    move-object v0, v3

    .line 186
    iget-object v3, p0, Landroidx/browser/browseractions/BrowserServiceFileProvider$FileSaveTask;->mBitmap:Landroid/graphics/Bitmap;

    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {v3, v4, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 187
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    .line 188
    invoke-virtual {v1, v0}, Landroidx/core/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V

    .line 190
    iget-object v2, p0, Landroidx/browser/browseractions/BrowserServiceFileProvider$FileSaveTask;->mResultFuture:Landroidx/concurrent/futures/ResolvableFuture;

    iget-object v3, p0, Landroidx/browser/browseractions/BrowserServiceFileProvider$FileSaveTask;->mFileUri:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Landroidx/concurrent/futures/ResolvableFuture;->set(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 195
    goto :goto_0

    .line 191
    :catch_0
    move-exception v2

    .line 192
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v1, v0}, Landroidx/core/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 194
    iget-object v3, p0, Landroidx/browser/browseractions/BrowserServiceFileProvider$FileSaveTask;->mResultFuture:Landroidx/concurrent/futures/ResolvableFuture;

    invoke-virtual {v3, v2}, Landroidx/concurrent/futures/ResolvableFuture;->setException(Ljava/lang/Throwable;)Z

    .line 196
    .end local v1    # "atomicFile":Landroidx/core/util/AtomicFile;
    .end local v2    # "e":Ljava/io/IOException;
    :goto_0
    goto :goto_1

    .line 198
    :cond_0
    :try_start_1
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object v0, v1

    .line 199
    iget-object v1, p0, Landroidx/browser/browseractions/BrowserServiceFileProvider$FileSaveTask;->mBitmap:Landroid/graphics/Bitmap;

    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {v1, v3, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 200
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    .line 202
    iget-object v1, p0, Landroidx/browser/browseractions/BrowserServiceFileProvider$FileSaveTask;->mResultFuture:Landroidx/concurrent/futures/ResolvableFuture;

    iget-object v2, p0, Landroidx/browser/browseractions/BrowserServiceFileProvider$FileSaveTask;->mFileUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Landroidx/concurrent/futures/ResolvableFuture;->set(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 205
    goto :goto_1

    .line 203
    :catch_1
    move-exception v1

    .line 204
    .local v1, "e":Ljava/io/IOException;
    iget-object v2, p0, Landroidx/browser/browseractions/BrowserServiceFileProvider$FileSaveTask;->mResultFuture:Landroidx/concurrent/futures/ResolvableFuture;

    invoke-virtual {v2, v1}, Landroidx/concurrent/futures/ResolvableFuture;->setException(Ljava/lang/Throwable;)Z

    .line 207
    .end local v1    # "e":Ljava/io/IOException;
    :goto_1
    return-void
.end method

.method private saveFileIfNeededBlocking()V
    .locals 5

    .line 162
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Landroidx/browser/browseractions/BrowserServiceFileProvider$FileSaveTask;->mAppContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "image_provider"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 163
    .local v0, "path":Ljava/io/File;
    sget-object v1, Landroidx/browser/browseractions/BrowserServiceFileProvider;->sFileCleanupLock:Ljava/lang/Object;

    monitor-enter v1

    .line 164
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    move-result v2

    if-nez v2, :cond_0

    .line 165
    iget-object v2, p0, Landroidx/browser/browseractions/BrowserServiceFileProvider$FileSaveTask;->mResultFuture:Landroidx/concurrent/futures/ResolvableFuture;

    new-instance v3, Ljava/io/IOException;

    const-string v4, "Could not create file directory."

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroidx/concurrent/futures/ResolvableFuture;->setException(Ljava/lang/Throwable;)Z

    .line 166
    monitor-exit v1

    return-void

    .line 168
    :cond_0
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Landroidx/browser/browseractions/BrowserServiceFileProvider$FileSaveTask;->mFilename:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".png"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 170
    .local v2, "img":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 171
    iget-object v3, p0, Landroidx/browser/browseractions/BrowserServiceFileProvider$FileSaveTask;->mResultFuture:Landroidx/concurrent/futures/ResolvableFuture;

    iget-object v4, p0, Landroidx/browser/browseractions/BrowserServiceFileProvider$FileSaveTask;->mFileUri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Landroidx/concurrent/futures/ResolvableFuture;->set(Ljava/lang/Object;)Z

    goto :goto_0

    .line 173
    :cond_1
    invoke-direct {p0, v2}, Landroidx/browser/browseractions/BrowserServiceFileProvider$FileSaveTask;->saveFileBlocking(Ljava/io/File;)V

    .line 176
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/io/File;->setLastModified(J)Z

    .line 177
    nop

    .end local v2    # "img":Ljava/io/File;
    monitor-exit v1

    .line 178
    return-void

    .line 177
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 133
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Landroidx/browser/browseractions/BrowserServiceFileProvider$FileSaveTask;->doInBackground([Ljava/lang/String;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Void;
    .locals 1
    .param p1, "params"    # [Ljava/lang/String;

    .line 152
    invoke-direct {p0}, Landroidx/browser/browseractions/BrowserServiceFileProvider$FileSaveTask;->saveFileIfNeededBlocking()V

    .line 153
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 133
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Landroidx/browser/browseractions/BrowserServiceFileProvider$FileSaveTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 3
    .param p1, "result"    # Ljava/lang/Void;

    .line 158
    new-instance v0, Landroidx/browser/browseractions/BrowserServiceFileProvider$FileCleanupTask;

    iget-object v1, p0, Landroidx/browser/browseractions/BrowserServiceFileProvider$FileSaveTask;->mAppContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroidx/browser/browseractions/BrowserServiceFileProvider$FileCleanupTask;-><init>(Landroid/content/Context;)V

    sget-object v1, Landroid/os/AsyncTask;->SERIAL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Landroidx/browser/browseractions/BrowserServiceFileProvider$FileCleanupTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 159
    return-void
.end method
