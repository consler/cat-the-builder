.class public final Lorg/catrobat/catroid/io/ResourceImporter;
.super Ljava/lang/Object;
.source "ResourceImporter.java"


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public static createImageFileFromResourcesInDirectory(Landroid/content/res/Resources;ILjava/io/File;Ljava/lang/String;D)Ljava/io/File;
    .locals 4
    .param p0, "resources"    # Landroid/content/res/Resources;
    .param p1, "resourceId"    # I
    .param p2, "dstDir"    # Ljava/io/File;
    .param p3, "fileName"    # Ljava/lang/String;
    .param p4, "scaleFactor"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 43
    const-wide/16 v0, 0x0

    cmpg-double v0, p4, v0

    if-lez v0, :cond_1

    .line 47
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v0

    .line 48
    .local v0, "inputStream":Ljava/io/InputStream;
    invoke-static {v0, p2, p3}, Lorg/catrobat/catroid/io/StorageOperations;->copyStreamToDir(Ljava/io/InputStream;Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 50
    .local v1, "file":Ljava/io/File;
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpl-double v2, p4, v2

    if-eqz v2, :cond_0

    .line 51
    invoke-static {v1, p4, p5}, Lorg/catrobat/catroid/utils/ImageEditing;->scaleImageFile(Ljava/io/File;D)V

    .line 54
    :cond_0
    return-object v1

    .line 44
    .end local v0    # "inputStream":Ljava/io/InputStream;
    .end local v1    # "file":Ljava/io/File;
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "scaleFactor was: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4, p5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, ", it has to be > 0."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static createSoundFileFromResourcesInDirectory(Landroid/content/res/Resources;ILjava/io/File;Ljava/lang/String;)Ljava/io/File;
    .locals 2
    .param p0, "resources"    # Landroid/content/res/Resources;
    .param p1, "resourceId"    # I
    .param p2, "dstDir"    # Ljava/io/File;
    .param p3, "fileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 60
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v0

    .line 61
    .local v0, "inputStream":Ljava/io/InputStream;
    invoke-static {v0, p2, p3}, Lorg/catrobat/catroid/io/StorageOperations;->copyStreamToDir(Ljava/io/InputStream;Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    return-object v1
.end method
