.class public Lcom/huawei/hms/framework/common/CreateFileUtil;
.super Ljava/lang/Object;


# static fields
.field private static final BUILDEX_NAME:Ljava/lang/String; = "com.huawei.android.os.BuildEx"

.field private static final EXTERNAL_FILE_NAME:Ljava/lang/String; = "com.huawei.libcore.io.ExternalStorageFile"

.field private static final EXTERNAL_INPUTSTREAM_NAME:Ljava/lang/String; = "com.huawei.libcore.io.ExternalStorageFileInputStream"

.field private static final EXTERNAL_OUTPUTSTREAM_NAME:Ljava/lang/String; = "com.huawei.libcore.io.ExternalStorageFileOutputStream"

.field private static final RANDOM_ACCESS_FILE_NAME:Ljava/lang/String; = "com.huawei.libcore.io.ExternalStorageRandomAccessFile"

.field private static final TAG:Ljava/lang/String; = "CreateFileUtil"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkCompatible(Ljava/lang/String;)Z
    .locals 1

    :try_start_0
    invoke-static {p0}, Lcom/huawei/hms/framework/common/CreateFileUtil;->tryLoadClass(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "ClassNotFoundException"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "CreateFileUtil"

    invoke-static {v0, p0}, Lcom/huawei/hms/framework/common/Logger;->w(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 p0, 0x0

    return p0
.end method

.method public static deleteSecure(Ljava/io/File;)V
    .locals 1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result p0

    if-nez p0, :cond_0

    const-string p0, "CreateFileUtil"

    const-string v0, "deleteSecure exception"

    invoke-static {p0, v0}, Lcom/huawei/hms/framework/common/Logger;->w(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public static deleteSecure(Ljava/lang/String;)V
    .locals 1

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/huawei/hms/framework/common/CreateFileUtil;->newFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    invoke-static {p0}, Lcom/huawei/hms/framework/common/CreateFileUtil;->deleteSecure(Ljava/io/File;)V

    :cond_0
    return-void
.end method

.method public static getCacheDirPath(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-ge v0, v1, :cond_1

    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->createDeviceProtectedStorageContext()Landroid/content/Context;

    move-result-object p0

    goto :goto_0
.end method

.method public static isPVersion()Z
    .locals 2

    const-string v0, "com.huawei.android.os.BuildEx"

    invoke-static {v0}, Lcom/huawei/hms/framework/common/CreateFileUtil;->checkCompatible(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/huawei/android/os/BuildEx$VERSION;->EMUI_SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static newFile(Ljava/lang/String;)Ljava/io/File;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-static {}, Lcom/huawei/hms/framework/common/CreateFileUtil;->isPVersion()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "com.huawei.libcore.io.ExternalStorageFile"

    invoke-static {v0}, Lcom/huawei/hms/framework/common/CreateFileUtil;->checkCompatible(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/huawei/libcore/io/ExternalStorageFile;

    invoke-direct {v0, p0}, Lcom/huawei/libcore/io/ExternalStorageFile;-><init>(Ljava/lang/String;)V

    return-object v0

    :cond_1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0

    :cond_2
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static newFileInputStream(Ljava/lang/String;)Ljava/io/FileInputStream;
    .locals 1

    if-eqz p0, :cond_2

    invoke-static {}, Lcom/huawei/hms/framework/common/CreateFileUtil;->isPVersion()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "com.huawei.libcore.io.ExternalStorageFileInputStream"

    invoke-static {v0}, Lcom/huawei/hms/framework/common/CreateFileUtil;->checkCompatible(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/huawei/libcore/io/ExternalStorageFileInputStream;

    invoke-direct {v0, p0}, Lcom/huawei/libcore/io/ExternalStorageFileInputStream;-><init>(Ljava/lang/String;)V

    return-object v0

    :cond_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    return-object v0

    :cond_1
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    return-object v0

    :cond_2
    const-string p0, "CreateFileUtil"

    const-string v0, "newFileInputStream  file is null"

    invoke-static {p0, v0}, Lcom/huawei/hms/framework/common/Logger;->w(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance p0, Ljava/io/FileNotFoundException;

    const-string v0, "file is null"

    invoke-direct {p0, v0}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static newFileOutputStream(Ljava/io/File;)Ljava/io/FileOutputStream;
    .locals 1

    if-eqz p0, :cond_2

    invoke-static {}, Lcom/huawei/hms/framework/common/CreateFileUtil;->isPVersion()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "com.huawei.libcore.io.ExternalStorageFileOutputStream"

    invoke-static {v0}, Lcom/huawei/hms/framework/common/CreateFileUtil;->checkCompatible(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/huawei/libcore/io/ExternalStorageFileOutputStream;

    invoke-direct {v0, p0}, Lcom/huawei/libcore/io/ExternalStorageFileOutputStream;-><init>(Ljava/io/File;)V

    return-object v0

    :cond_0
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    return-object v0

    :cond_1
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    return-object v0

    :cond_2
    const-string p0, "CreateFileUtil"

    const-string v0, "newFileOutputStream  file is null"

    invoke-static {p0, v0}, Lcom/huawei/hms/framework/common/Logger;->e(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance p0, Ljava/io/FileNotFoundException;

    const-string v0, "file is null"

    invoke-direct {p0, v0}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static newRandomAccessFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/RandomAccessFile;
    .locals 1

    if-eqz p0, :cond_2

    invoke-static {}, Lcom/huawei/hms/framework/common/CreateFileUtil;->isPVersion()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "com.huawei.libcore.io.ExternalStorageRandomAccessFile"

    invoke-static {v0}, Lcom/huawei/hms/framework/common/CreateFileUtil;->checkCompatible(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/huawei/libcore/io/ExternalStorageRandomAccessFile;

    invoke-direct {v0, p0, p1}, Lcom/huawei/libcore/io/ExternalStorageRandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_0
    new-instance v0, Ljava/io/RandomAccessFile;

    invoke-direct {v0, p0, p1}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_1
    new-instance v0, Ljava/io/RandomAccessFile;

    invoke-direct {v0, p0, p1}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_2
    const-string p0, "CreateFileUtil"

    const-string p1, "newFileOutputStream  file is null"

    invoke-static {p0, p1}, Lcom/huawei/hms/framework/common/Logger;->w(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance p0, Ljava/io/FileNotFoundException;

    const-string p1, "file is null"

    invoke-direct {p0, p1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static tryLoadClass(Ljava/lang/String;)V
    .locals 1

    const-class v0, Lcom/huawei/hms/framework/common/CreateFileUtil;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/ClassNotFoundException;

    const-string v0, "not found classloader"

    invoke-direct {p0, v0}, Ljava/lang/ClassNotFoundException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
