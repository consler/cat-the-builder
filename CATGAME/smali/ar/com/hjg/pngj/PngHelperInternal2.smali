.class final Lar/com/hjg/pngj/PngHelperInternal2;
.super Ljava/lang/Object;
.source "PngHelperInternal2.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static ostreamFromFile(Ljava/io/File;Z)Ljava/io/OutputStream;
    .locals 3

    .line 25
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 26
    :cond_0
    new-instance p1, Lar/com/hjg/pngj/PngjOutputException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "File already exists: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lar/com/hjg/pngj/PngjOutputException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 28
    :cond_1
    :goto_0
    :try_start_0
    new-instance p1, Ljava/io/FileOutputStream;

    invoke-direct {p1, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 30
    new-instance v0, Lar/com/hjg/pngj/PngjInputException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Could not open for write"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Lar/com/hjg/pngj/PngjInputException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method
