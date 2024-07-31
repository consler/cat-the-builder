.class final Landroidx/camera/core/ImageSaver;
.super Ljava/lang/Object;
.source "ImageSaver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/core/ImageSaver$OnImageSavedCallback;,
        Landroidx/camera/core/ImageSaver$SaveError;
    }
.end annotation


# static fields
.field private static final COPY_BUFFER_SIZE:I = 0x400

.field private static final NOT_PENDING:I = 0x0

.field private static final PENDING:I = 0x1

.field private static final TAG:Ljava/lang/String; = "ImageSaver"

.field private static final TEMP_FILE_PREFIX:Ljava/lang/String; = "CameraX"

.field private static final TEMP_FILE_SUFFIX:Ljava/lang/String; = ".tmp"


# instance fields
.field final mCallback:Landroidx/camera/core/ImageSaver$OnImageSavedCallback;

.field private final mExecutor:Ljava/util/concurrent/Executor;

.field private final mImage:Landroidx/camera/core/ImageProxy;

.field private final mOrientation:I

.field private final mOutputFileOptions:Landroidx/camera/core/ImageCapture$OutputFileOptions;


# direct methods
.method constructor <init>(Landroidx/camera/core/ImageProxy;Landroidx/camera/core/ImageCapture$OutputFileOptions;ILjava/util/concurrent/Executor;Landroidx/camera/core/ImageSaver$OnImageSavedCallback;)V
    .locals 0
    .param p1, "image"    # Landroidx/camera/core/ImageProxy;
    .param p2, "outputFileOptions"    # Landroidx/camera/core/ImageCapture$OutputFileOptions;
    .param p3, "orientation"    # I
    .param p4, "executor"    # Ljava/util/concurrent/Executor;
    .param p5, "callback"    # Landroidx/camera/core/ImageSaver$OnImageSavedCallback;

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-object p1, p0, Landroidx/camera/core/ImageSaver;->mImage:Landroidx/camera/core/ImageProxy;

    .line 71
    iput-object p2, p0, Landroidx/camera/core/ImageSaver;->mOutputFileOptions:Landroidx/camera/core/ImageCapture$OutputFileOptions;

    .line 72
    iput p3, p0, Landroidx/camera/core/ImageSaver;->mOrientation:I

    .line 73
    iput-object p5, p0, Landroidx/camera/core/ImageSaver;->mCallback:Landroidx/camera/core/ImageSaver$OnImageSavedCallback;

    .line 74
    iput-object p4, p0, Landroidx/camera/core/ImageSaver;->mExecutor:Ljava/util/concurrent/Executor;

    .line 75
    return-void
.end method

.method private copyTempFileToOutputStream(Ljava/io/File;Ljava/io/OutputStream;)V
    .locals 4
    .param p1, "tempFile"    # Ljava/io/File;
    .param p2, "outputStream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 241
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 242
    .local v0, "in":Ljava/io/InputStream;
    const/16 v1, 0x400

    :try_start_0
    new-array v1, v1, [B

    .line 244
    .local v1, "buf":[B
    :goto_0
    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    move v3, v2

    .local v3, "len":I
    if-lez v2, :cond_0

    .line 245
    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2, v3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 247
    .end local v1    # "buf":[B
    .end local v3    # "len":I
    :cond_0
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 248
    .end local v0    # "in":Ljava/io/InputStream;
    return-void

    .line 241
    .restart local v0    # "in":Ljava/io/InputStream;
    :catchall_0
    move-exception v1

    :try_start_1
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw v1
.end method

.method private copyTempFileToUri(Ljava/io/File;Landroid/net/Uri;)Z
    .locals 3
    .param p1, "tempFile"    # Ljava/io/File;
    .param p2, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 228
    iget-object v0, p0, Landroidx/camera/core/ImageSaver;->mOutputFileOptions:Landroidx/camera/core/ImageCapture$OutputFileOptions;

    .line 229
    invoke-virtual {v0}, Landroidx/camera/core/ImageCapture$OutputFileOptions;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v0

    .line 230
    .local v0, "outputStream":Ljava/io/OutputStream;
    if-nez v0, :cond_1

    .line 232
    const/4 v1, 0x0

    .line 235
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 232
    :cond_0
    return v1

    .line 234
    :cond_1
    :try_start_0
    invoke-direct {p0, p1, v0}, Landroidx/camera/core/ImageSaver;->copyTempFileToOutputStream(Ljava/io/File;Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 235
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 236
    .end local v0    # "outputStream":Ljava/io/OutputStream;
    :cond_2
    const/4 v0, 0x1

    return v0

    .line 228
    .restart local v0    # "outputStream":Ljava/io/OutputStream;
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_3

    :try_start_1
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_0
    throw v1
.end method

.method private isSaveToFile()Z
    .locals 1

    .line 197
    iget-object v0, p0, Landroidx/camera/core/ImageSaver;->mOutputFileOptions:Landroidx/camera/core/ImageCapture$OutputFileOptions;

    invoke-virtual {v0}, Landroidx/camera/core/ImageCapture$OutputFileOptions;->getFile()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isSaveToMediaStore()Z
    .locals 1

    .line 191
    iget-object v0, p0, Landroidx/camera/core/ImageSaver;->mOutputFileOptions:Landroidx/camera/core/ImageCapture$OutputFileOptions;

    invoke-virtual {v0}, Landroidx/camera/core/ImageCapture$OutputFileOptions;->getSaveCollection()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/camera/core/ImageSaver;->mOutputFileOptions:Landroidx/camera/core/ImageCapture$OutputFileOptions;

    .line 192
    invoke-virtual {v0}, Landroidx/camera/core/ImageCapture$OutputFileOptions;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/camera/core/ImageSaver;->mOutputFileOptions:Landroidx/camera/core/ImageCapture$OutputFileOptions;

    .line 193
    invoke-virtual {v0}, Landroidx/camera/core/ImageCapture$OutputFileOptions;->getContentValues()Landroid/content/ContentValues;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 191
    :goto_0
    return v0
.end method

.method private isSaveToOutputStream()Z
    .locals 1

    .line 201
    iget-object v0, p0, Landroidx/camera/core/ImageSaver;->mOutputFileOptions:Landroidx/camera/core/ImageCapture$OutputFileOptions;

    invoke-virtual {v0}, Landroidx/camera/core/ImageCapture$OutputFileOptions;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private postError(Landroidx/camera/core/ImageSaver$SaveError;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "saveError"    # Landroidx/camera/core/ImageSaver$SaveError;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "cause"    # Ljava/lang/Throwable;

    .line 263
    :try_start_0
    iget-object v0, p0, Landroidx/camera/core/ImageSaver;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroidx/camera/core/-$$Lambda$ImageSaver$eAp-cZyzsEk-LVLazzLE-ezQzwo;

    invoke-direct {v1, p0, p1, p2, p3}, Landroidx/camera/core/-$$Lambda$ImageSaver$eAp-cZyzsEk-LVLazzLE-ezQzwo;-><init>(Landroidx/camera/core/ImageSaver;Landroidx/camera/core/ImageSaver$SaveError;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 267
    goto :goto_0

    .line 264
    :catch_0
    move-exception v0

    .line 265
    .local v0, "e":Ljava/util/concurrent/RejectedExecutionException;
    const-string v1, "ImageSaver"

    const-string v2, "Application executor rejected executing OnImageSavedCallback.onError callback. Skipping."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    .end local v0    # "e":Ljava/util/concurrent/RejectedExecutionException;
    :goto_0
    return-void
.end method

.method private postSuccess(Landroid/net/Uri;)V
    .locals 3
    .param p1, "outputUri"    # Landroid/net/Uri;

    .line 252
    :try_start_0
    iget-object v0, p0, Landroidx/camera/core/ImageSaver;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroidx/camera/core/-$$Lambda$ImageSaver$S9mrYGMPcUwPIjUa0oK9HMzbx_o;

    invoke-direct {v1, p0, p1}, Landroidx/camera/core/-$$Lambda$ImageSaver$S9mrYGMPcUwPIjUa0oK9HMzbx_o;-><init>(Landroidx/camera/core/ImageSaver;Landroid/net/Uri;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 257
    goto :goto_0

    .line 254
    :catch_0
    move-exception v0

    .line 255
    .local v0, "e":Ljava/util/concurrent/RejectedExecutionException;
    const-string v1, "ImageSaver"

    const-string v2, "Application executor rejected executing OnImageSavedCallback.onImageSaved callback. Skipping."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    .end local v0    # "e":Ljava/util/concurrent/RejectedExecutionException;
    :goto_0
    return-void
.end method

.method private setContentValuePending(Landroid/content/ContentValues;I)V
    .locals 2
    .param p1, "values"    # Landroid/content/ContentValues;
    .param p2, "isPending"    # I

    .line 217
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    .line 218
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "is_pending"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 220
    :cond_0
    return-void
.end method

.method private setUriNotPending(Landroid/net/Uri;)V
    .locals 3
    .param p1, "outputUri"    # Landroid/net/Uri;

    .line 208
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    .line 209
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 210
    .local v0, "values":Landroid/content/ContentValues;
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroidx/camera/core/ImageSaver;->setContentValuePending(Landroid/content/ContentValues;I)V

    .line 211
    iget-object v1, p0, Landroidx/camera/core/ImageSaver;->mOutputFileOptions:Landroidx/camera/core/ImageCapture$OutputFileOptions;

    invoke-virtual {v1}, Landroidx/camera/core/ImageCapture$OutputFileOptions;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v0, v2, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 213
    .end local v0    # "values":Landroid/content/ContentValues;
    :cond_0
    return-void
.end method


# virtual methods
.method public synthetic lambda$postError$1$ImageSaver(Landroidx/camera/core/ImageSaver$SaveError;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "saveError"    # Landroidx/camera/core/ImageSaver$SaveError;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "cause"    # Ljava/lang/Throwable;

    .line 263
    iget-object v0, p0, Landroidx/camera/core/ImageSaver;->mCallback:Landroidx/camera/core/ImageSaver$OnImageSavedCallback;

    invoke-interface {v0, p1, p2, p3}, Landroidx/camera/core/ImageSaver$OnImageSavedCallback;->onError(Landroidx/camera/core/ImageSaver$SaveError;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public synthetic lambda$postSuccess$0$ImageSaver(Landroid/net/Uri;)V
    .locals 2
    .param p1, "outputUri"    # Landroid/net/Uri;

    .line 253
    iget-object v0, p0, Landroidx/camera/core/ImageSaver;->mCallback:Landroidx/camera/core/ImageSaver$OnImageSavedCallback;

    new-instance v1, Landroidx/camera/core/ImageCapture$OutputFileResults;

    invoke-direct {v1, p1}, Landroidx/camera/core/ImageCapture$OutputFileResults;-><init>(Landroid/net/Uri;)V

    invoke-interface {v0, v1}, Landroidx/camera/core/ImageSaver$OnImageSavedCallback;->onImageSaved(Landroidx/camera/core/ImageCapture$OutputFileResults;)V

    return-void
.end method

.method public run()V
    .locals 15

    .line 80
    const/4 v0, 0x0

    .line 81
    .local v0, "saveError":Landroidx/camera/core/ImageSaver$SaveError;
    const/4 v1, 0x0

    .line 82
    .local v1, "errorMessage":Ljava/lang/String;
    const/4 v2, 0x0

    .line 85
    .local v2, "exception":Ljava/lang/Exception;
    const/4 v3, 0x0

    .line 89
    .local v3, "outputUri":Landroid/net/Uri;
    :try_start_0
    invoke-direct {p0}, Landroidx/camera/core/ImageSaver;->isSaveToFile()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Landroidx/camera/core/ImageSaver;->mOutputFileOptions:Landroidx/camera/core/ImageCapture$OutputFileOptions;

    invoke-virtual {v4}, Landroidx/camera/core/ImageCapture$OutputFileOptions;->getFile()Ljava/io/File;

    move-result-object v4

    goto :goto_0

    .line 90
    :cond_0
    const-string v4, "CameraX"

    const-string v5, ".tmp"

    invoke-static {v4, v5}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    :goto_0
    nop

    .line 94
    .local v4, "file":Ljava/io/File;
    nop

    .line 96
    const/4 v5, 0x1

    :try_start_1
    iget-object v6, p0, Landroidx/camera/core/ImageSaver;->mImage:Landroidx/camera/core/ImageProxy;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroidx/camera/core/internal/utils/ImageUtil$CodecFailedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    .line 97
    .local v6, "imageToClose":Landroidx/camera/core/ImageProxy;
    :try_start_2
    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 98
    .local v7, "output":Ljava/io/FileOutputStream;
    :try_start_3
    iget-object v8, p0, Landroidx/camera/core/ImageSaver;->mImage:Landroidx/camera/core/ImageProxy;

    invoke-static {v8}, Landroidx/camera/core/internal/utils/ImageUtil;->imageToJpegByteArray(Landroidx/camera/core/ImageProxy;)[B

    move-result-object v8

    .line 99
    .local v8, "bytes":[B
    invoke-virtual {v7, v8}, Ljava/io/FileOutputStream;->write([B)V

    .line 101
    invoke-static {v4}, Landroidx/camera/core/impl/utils/Exif;->createFromFile(Ljava/io/File;)Landroidx/camera/core/impl/utils/Exif;

    move-result-object v9

    .line 102
    .local v9, "exif":Landroidx/camera/core/impl/utils/Exif;
    invoke-virtual {v9}, Landroidx/camera/core/impl/utils/Exif;->attachTimestamp()V

    .line 106
    iget-object v10, p0, Landroidx/camera/core/ImageSaver;->mImage:Landroidx/camera/core/ImageProxy;

    invoke-interface {v10}, Landroidx/camera/core/ImageProxy;->getFormat()I

    move-result v10

    const/16 v11, 0x100

    if-ne v10, v11, :cond_1

    .line 107
    iget-object v10, p0, Landroidx/camera/core/ImageSaver;->mImage:Landroidx/camera/core/ImageProxy;

    invoke-interface {v10}, Landroidx/camera/core/ImageProxy;->getPlanes()[Landroidx/camera/core/ImageProxy$PlaneProxy;

    move-result-object v10

    const/4 v11, 0x0

    aget-object v10, v10, v11

    invoke-interface {v10}, Landroidx/camera/core/ImageProxy$PlaneProxy;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v10

    .line 109
    .local v10, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 111
    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v11

    new-array v11, v11, [B

    .line 112
    .local v11, "data":[B
    invoke-virtual {v10, v11}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 113
    new-instance v12, Ljava/io/ByteArrayInputStream;

    invoke-direct {v12, v11}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 114
    .local v12, "inputStream":Ljava/io/InputStream;
    invoke-static {v12}, Landroidx/camera/core/impl/utils/Exif;->createFromInputStream(Ljava/io/InputStream;)Landroidx/camera/core/impl/utils/Exif;

    move-result-object v13

    .line 116
    .local v13, "originalExif":Landroidx/camera/core/impl/utils/Exif;
    invoke-virtual {v13}, Landroidx/camera/core/impl/utils/Exif;->getOrientation()I

    move-result v14

    invoke-virtual {v9, v14}, Landroidx/camera/core/impl/utils/Exif;->setOrientation(I)V

    .line 117
    .end local v10    # "buffer":Ljava/nio/ByteBuffer;
    .end local v11    # "data":[B
    .end local v12    # "inputStream":Ljava/io/InputStream;
    .end local v13    # "originalExif":Landroidx/camera/core/impl/utils/Exif;
    goto :goto_1

    .line 118
    :cond_1
    iget v10, p0, Landroidx/camera/core/ImageSaver;->mOrientation:I

    invoke-virtual {v9, v10}, Landroidx/camera/core/impl/utils/Exif;->rotate(I)V

    .line 121
    :goto_1
    iget-object v10, p0, Landroidx/camera/core/ImageSaver;->mOutputFileOptions:Landroidx/camera/core/ImageCapture$OutputFileOptions;

    invoke-virtual {v10}, Landroidx/camera/core/ImageCapture$OutputFileOptions;->getMetadata()Landroidx/camera/core/ImageCapture$Metadata;

    move-result-object v10

    .line 122
    .local v10, "metadata":Landroidx/camera/core/ImageCapture$Metadata;
    invoke-virtual {v10}, Landroidx/camera/core/ImageCapture$Metadata;->isReversedHorizontal()Z

    move-result v11

    if-eqz v11, :cond_2

    .line 123
    invoke-virtual {v9}, Landroidx/camera/core/impl/utils/Exif;->flipHorizontally()V

    .line 125
    :cond_2
    invoke-virtual {v10}, Landroidx/camera/core/ImageCapture$Metadata;->isReversedVertical()Z

    move-result v11

    if-eqz v11, :cond_3

    .line 126
    invoke-virtual {v9}, Landroidx/camera/core/impl/utils/Exif;->flipVertically()V

    .line 128
    :cond_3
    invoke-virtual {v10}, Landroidx/camera/core/ImageCapture$Metadata;->getLocation()Landroid/location/Location;

    move-result-object v11

    if-eqz v11, :cond_4

    .line 129
    iget-object v11, p0, Landroidx/camera/core/ImageSaver;->mOutputFileOptions:Landroidx/camera/core/ImageCapture$OutputFileOptions;

    invoke-virtual {v11}, Landroidx/camera/core/ImageCapture$OutputFileOptions;->getMetadata()Landroidx/camera/core/ImageCapture$Metadata;

    move-result-object v11

    invoke-virtual {v11}, Landroidx/camera/core/ImageCapture$Metadata;->getLocation()Landroid/location/Location;

    move-result-object v11

    invoke-virtual {v9, v11}, Landroidx/camera/core/impl/utils/Exif;->attachLocation(Landroid/location/Location;)V

    .line 132
    :cond_4
    invoke-virtual {v9}, Landroidx/camera/core/impl/utils/Exif;->save()V

    .line 134
    invoke-direct {p0}, Landroidx/camera/core/ImageSaver;->isSaveToMediaStore()Z

    move-result v11

    if-eqz v11, :cond_9

    .line 135
    iget-object v11, p0, Landroidx/camera/core/ImageSaver;->mOutputFileOptions:Landroidx/camera/core/ImageCapture$OutputFileOptions;

    invoke-virtual {v11}, Landroidx/camera/core/ImageCapture$OutputFileOptions;->getContentValues()Landroid/content/ContentValues;

    move-result-object v11

    if-eqz v11, :cond_5

    .line 136
    new-instance v11, Landroid/content/ContentValues;

    iget-object v12, p0, Landroidx/camera/core/ImageSaver;->mOutputFileOptions:Landroidx/camera/core/ImageCapture$OutputFileOptions;

    invoke-virtual {v12}, Landroidx/camera/core/ImageCapture$OutputFileOptions;->getContentValues()Landroid/content/ContentValues;

    move-result-object v12

    invoke-direct {v11, v12}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    goto :goto_2

    .line 137
    :cond_5
    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    :goto_2
    nop

    .line 138
    .local v11, "values":Landroid/content/ContentValues;
    invoke-direct {p0, v11, v5}, Landroidx/camera/core/ImageSaver;->setContentValuePending(Landroid/content/ContentValues;I)V

    .line 139
    iget-object v12, p0, Landroidx/camera/core/ImageSaver;->mOutputFileOptions:Landroidx/camera/core/ImageCapture$OutputFileOptions;

    invoke-virtual {v12}, Landroidx/camera/core/ImageCapture$OutputFileOptions;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    iget-object v13, p0, Landroidx/camera/core/ImageSaver;->mOutputFileOptions:Landroidx/camera/core/ImageCapture$OutputFileOptions;

    .line 140
    invoke-virtual {v13}, Landroidx/camera/core/ImageCapture$OutputFileOptions;->getSaveCollection()Landroid/net/Uri;

    move-result-object v13

    .line 139
    invoke-virtual {v12, v13, v11}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v12

    move-object v3, v12

    .line 142
    if-nez v3, :cond_6

    .line 143
    sget-object v12, Landroidx/camera/core/ImageSaver$SaveError;->FILE_IO_FAILED:Landroidx/camera/core/ImageSaver$SaveError;

    move-object v0, v12

    .line 144
    const-string v12, "Failed to insert URI."

    move-object v1, v12

    goto :goto_3

    .line 146
    :cond_6
    invoke-direct {p0, v4, v3}, Landroidx/camera/core/ImageSaver;->copyTempFileToUri(Ljava/io/File;Landroid/net/Uri;)Z

    move-result v12

    if-nez v12, :cond_7

    .line 147
    sget-object v12, Landroidx/camera/core/ImageSaver$SaveError;->FILE_IO_FAILED:Landroidx/camera/core/ImageSaver$SaveError;

    move-object v0, v12

    .line 148
    const-string v12, "Failed to save to URI."

    move-object v1, v12

    .line 150
    :cond_7
    invoke-direct {p0, v3}, Landroidx/camera/core/ImageSaver;->setUriNotPending(Landroid/net/Uri;)V

    .line 152
    .end local v11    # "values":Landroid/content/ContentValues;
    :cond_8
    :goto_3
    goto :goto_4

    :cond_9
    invoke-direct {p0}, Landroidx/camera/core/ImageSaver;->isSaveToOutputStream()Z

    move-result v11

    if-eqz v11, :cond_8

    .line 153
    iget-object v11, p0, Landroidx/camera/core/ImageSaver;->mOutputFileOptions:Landroidx/camera/core/ImageCapture$OutputFileOptions;

    invoke-virtual {v11}, Landroidx/camera/core/ImageCapture$OutputFileOptions;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v11

    invoke-direct {p0, v4, v11}, Landroidx/camera/core/ImageSaver;->copyTempFileToOutputStream(Ljava/io/File;Ljava/io/OutputStream;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 155
    .end local v8    # "bytes":[B
    .end local v9    # "exif":Landroidx/camera/core/impl/utils/Exif;
    .end local v10    # "metadata":Landroidx/camera/core/ImageCapture$Metadata;
    :goto_4
    :try_start_4
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .end local v7    # "output":Ljava/io/FileOutputStream;
    if-eqz v6, :cond_a

    :try_start_5
    invoke-interface {v6}, Landroidx/camera/core/ImageProxy;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Landroidx/camera/core/internal/utils/ImageUtil$CodecFailedException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 177
    .end local v6    # "imageToClose":Landroidx/camera/core/ImageProxy;
    :cond_a
    invoke-direct {p0}, Landroidx/camera/core/ImageSaver;->isSaveToFile()Z

    move-result v5

    if-nez v5, :cond_e

    .line 179
    :goto_5
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    goto/16 :goto_a

    .line 96
    .restart local v6    # "imageToClose":Landroidx/camera/core/ImageProxy;
    .restart local v7    # "output":Ljava/io/FileOutputStream;
    :catchall_0
    move-exception v8

    :try_start_6
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_6

    :catchall_1
    move-exception v9

    :try_start_7
    invoke-virtual {v8, v9}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "saveError":Landroidx/camera/core/ImageSaver$SaveError;
    .end local v1    # "errorMessage":Ljava/lang/String;
    .end local v2    # "exception":Ljava/lang/Exception;
    .end local v3    # "outputUri":Landroid/net/Uri;
    .end local v4    # "file":Ljava/io/File;
    .end local v6    # "imageToClose":Landroidx/camera/core/ImageProxy;
    :goto_6
    throw v8
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .end local v7    # "output":Ljava/io/FileOutputStream;
    .restart local v0    # "saveError":Landroidx/camera/core/ImageSaver$SaveError;
    .restart local v1    # "errorMessage":Ljava/lang/String;
    .restart local v2    # "exception":Ljava/lang/Exception;
    .restart local v3    # "outputUri":Landroid/net/Uri;
    .restart local v4    # "file":Ljava/io/File;
    .restart local v6    # "imageToClose":Landroidx/camera/core/ImageProxy;
    :catchall_2
    move-exception v7

    if-eqz v6, :cond_b

    :try_start_8
    invoke-interface {v6}, Landroidx/camera/core/ImageProxy;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    goto :goto_7

    :catchall_3
    move-exception v8

    :try_start_9
    invoke-virtual {v7, v8}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "saveError":Landroidx/camera/core/ImageSaver$SaveError;
    .end local v1    # "errorMessage":Ljava/lang/String;
    .end local v2    # "exception":Ljava/lang/Exception;
    .end local v3    # "outputUri":Landroid/net/Uri;
    .end local v4    # "file":Ljava/io/File;
    :cond_b
    :goto_7
    throw v7
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Landroidx/camera/core/internal/utils/ImageUtil$CodecFailedException; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    .line 177
    .end local v6    # "imageToClose":Landroidx/camera/core/ImageProxy;
    .restart local v0    # "saveError":Landroidx/camera/core/ImageSaver$SaveError;
    .restart local v1    # "errorMessage":Ljava/lang/String;
    .restart local v2    # "exception":Ljava/lang/Exception;
    .restart local v3    # "outputUri":Landroid/net/Uri;
    .restart local v4    # "file":Ljava/io/File;
    :catchall_4
    move-exception v5

    goto :goto_c

    .line 159
    :catch_0
    move-exception v6

    .line 160
    .local v6, "e":Landroidx/camera/core/internal/utils/ImageUtil$CodecFailedException;
    :try_start_a
    sget-object v7, Landroidx/camera/core/ImageSaver$1;->$SwitchMap$androidx$camera$core$internal$utils$ImageUtil$CodecFailedException$FailureType:[I

    invoke-virtual {v6}, Landroidx/camera/core/internal/utils/ImageUtil$CodecFailedException;->getFailureType()Landroidx/camera/core/internal/utils/ImageUtil$CodecFailedException$FailureType;

    move-result-object v8

    invoke-virtual {v8}, Landroidx/camera/core/internal/utils/ImageUtil$CodecFailedException$FailureType;->ordinal()I

    move-result v8

    aget v7, v7, v8

    if-eq v7, v5, :cond_d

    const/4 v5, 0x2

    if-eq v7, v5, :cond_c

    .line 171
    sget-object v5, Landroidx/camera/core/ImageSaver$SaveError;->UNKNOWN:Landroidx/camera/core/ImageSaver$SaveError;

    move-object v0, v5

    .line 172
    const-string v5, "Failed to transcode mImage"

    move-object v1, v5

    goto :goto_8

    .line 166
    :cond_c
    sget-object v5, Landroidx/camera/core/ImageSaver$SaveError;->CROP_FAILED:Landroidx/camera/core/ImageSaver$SaveError;

    move-object v0, v5

    .line 167
    const-string v5, "Failed to crop mImage"

    move-object v1, v5

    .line 168
    goto :goto_8

    .line 162
    :cond_d
    sget-object v5, Landroidx/camera/core/ImageSaver$SaveError;->ENCODE_FAILED:Landroidx/camera/core/ImageSaver$SaveError;

    move-object v0, v5

    .line 163
    const-string v5, "Failed to encode mImage"
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    move-object v1, v5

    .line 164
    nop

    .line 175
    :goto_8
    move-object v2, v6

    .line 177
    .end local v6    # "e":Landroidx/camera/core/internal/utils/ImageUtil$CodecFailedException;
    invoke-direct {p0}, Landroidx/camera/core/ImageSaver;->isSaveToFile()Z

    move-result v5

    if-nez v5, :cond_e

    .line 179
    goto :goto_5

    .line 155
    :catch_1
    move-exception v5

    goto :goto_9

    :catch_2
    move-exception v5

    .line 156
    .local v5, "e":Ljava/lang/Exception;
    :goto_9
    :try_start_b
    sget-object v6, Landroidx/camera/core/ImageSaver$SaveError;->FILE_IO_FAILED:Landroidx/camera/core/ImageSaver$SaveError;

    move-object v0, v6

    .line 157
    const-string v6, "Failed to write or close the file"
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    move-object v1, v6

    .line 158
    move-object v2, v5

    .line 177
    .end local v5    # "e":Ljava/lang/Exception;
    invoke-direct {p0}, Landroidx/camera/core/ImageSaver;->isSaveToFile()Z

    move-result v5

    if-nez v5, :cond_e

    .line 179
    goto :goto_5

    .line 183
    :cond_e
    :goto_a
    if-eqz v0, :cond_f

    .line 184
    invoke-direct {p0, v0, v1, v2}, Landroidx/camera/core/ImageSaver;->postError(Landroidx/camera/core/ImageSaver$SaveError;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_b

    .line 186
    :cond_f
    invoke-direct {p0, v3}, Landroidx/camera/core/ImageSaver;->postSuccess(Landroid/net/Uri;)V

    .line 188
    :goto_b
    return-void

    .line 177
    :goto_c
    invoke-direct {p0}, Landroidx/camera/core/ImageSaver;->isSaveToFile()Z

    move-result v6

    if-nez v6, :cond_10

    .line 179
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 181
    :cond_10
    throw v5

    .line 91
    .end local v4    # "file":Ljava/io/File;
    :catch_3
    move-exception v4

    .line 92
    .local v4, "e":Ljava/io/IOException;
    sget-object v5, Landroidx/camera/core/ImageSaver$SaveError;->FILE_IO_FAILED:Landroidx/camera/core/ImageSaver$SaveError;

    const-string v6, "Failed to create temp file"

    invoke-direct {p0, v5, v6, v4}, Landroidx/camera/core/ImageSaver;->postError(Landroidx/camera/core/ImageSaver$SaveError;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 93
    return-void
.end method
