.class public Lcom/amitshekhar/utils/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Utils"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    return-void
.end method

.method public static detectMimeType(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "fileName"    # Ljava/lang/String;

    .line 48
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49
    const/4 v0, 0x0

    return-object v0

    .line 50
    :cond_0
    const-string v0, ".html"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 51
    const-string v0, "text/html"

    return-object v0

    .line 52
    :cond_1
    const-string v0, ".js"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 53
    const-string v0, "application/javascript"

    return-object v0

    .line 54
    :cond_2
    const-string v0, ".css"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 55
    const-string v0, "text/css"

    return-object v0

    .line 57
    :cond_3
    const-string v0, "application/octet-stream"

    return-object v0
.end method

.method public static getDatabase(Ljava/lang/String;Ljava/util/HashMap;)[B
    .locals 9
    .param p0, "selectedDatabase"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/util/Pair<",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            ">;>;)[B"
        }
    .end annotation

    .line 87
    .local p1, "databaseFiles":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/util/Pair<Ljava/io/File;Ljava/lang/String;>;>;"
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_3

    .line 91
    :cond_0
    const/4 v0, 0x0

    new-array v1, v0, [B

    .line 93
    .local v1, "byteArray":[B
    :try_start_0
    invoke-virtual {p1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/io/File;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 95
    .local v2, "file":Ljava/io/File;
    const/4 v1, 0x0

    .line 97
    :try_start_1
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 98
    .local v3, "inputStream":Ljava/io/InputStream;
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 99
    .local v4, "bos":Ljava/io/ByteArrayOutputStream;
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v5

    long-to-int v5, v5

    new-array v5, v5, [B

    .line 102
    .local v5, "b":[B
    :goto_0
    invoke-virtual {v3, v5}, Ljava/io/InputStream;->read([B)I

    move-result v6

    move v7, v6

    .local v7, "bytesRead":I
    const/4 v8, -0x1

    if-eq v6, v8, :cond_1

    .line 103
    invoke-virtual {v4, v5, v0, v7}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 106
    :cond_1
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v1, v0

    .line 109
    .end local v3    # "inputStream":Ljava/io/InputStream;
    .end local v4    # "bos":Ljava/io/ByteArrayOutputStream;
    .end local v5    # "b":[B
    .end local v7    # "bytesRead":I
    goto :goto_1

    .line 107
    :catch_0
    move-exception v0

    .line 108
    .local v0, "e":Ljava/io/IOException;
    :try_start_2
    const-string v3, "Utils"

    const-string v4, "getDatabase: "

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 112
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "file":Ljava/io/File;
    :goto_1
    goto :goto_2

    .line 110
    :catch_1
    move-exception v0

    .line 111
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 114
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_2
    return-object v1

    .line 88
    .end local v1    # "byteArray":[B
    :cond_2
    :goto_3
    const/4 v0, 0x0

    return-object v0
.end method

.method public static loadContent(Ljava/lang/String;Landroid/content/res/AssetManager;)[B
    .locals 6
    .param p0, "fileName"    # Ljava/lang/String;
    .param p1, "assetManager"    # Landroid/content/res/AssetManager;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 62
    const/4 v0, 0x0

    .line 64
    .local v0, "input":Ljava/io/InputStream;
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 65
    .local v1, "output":Ljava/io/ByteArrayOutputStream;
    invoke-virtual {p1, p0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    move-object v0, v2

    .line 66
    const/16 v2, 0x400

    new-array v2, v2, [B

    .line 68
    .local v2, "buffer":[B
    :goto_0
    const/4 v3, -0x1

    invoke-virtual {v0, v2}, Ljava/io/InputStream;->read([B)I

    move-result v4

    move v5, v4

    .local v5, "size":I
    if-eq v3, v4, :cond_0

    .line 69
    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 71
    :cond_0
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 72
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    if-eqz v0, :cond_1

    .line 78
    :try_start_1
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 80
    :catch_0
    move-exception v4

    .line 81
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 82
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_1
    nop

    .line 72
    :goto_2
    return-object v3

    .line 76
    .end local v1    # "output":Ljava/io/ByteArrayOutputStream;
    .end local v2    # "buffer":[B
    .end local v5    # "size":I
    :catchall_0
    move-exception v1

    .line 77
    if-eqz v0, :cond_2

    .line 78
    :try_start_2
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    .line 80
    :catch_1
    move-exception v2

    .line 81
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4

    .line 82
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_2
    :goto_3
    nop

    .line 83
    :goto_4
    throw v1

    .line 73
    :catch_2
    move-exception v1

    .line 74
    .local v1, "e":Ljava/io/FileNotFoundException;
    const/4 v2, 0x0

    .line 77
    if-eqz v0, :cond_3

    .line 78
    :try_start_3
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_5

    .line 80
    :catch_3
    move-exception v3

    .line 81
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_6

    .line 82
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_3
    :goto_5
    nop

    .line 74
    :goto_6
    return-object v2
.end method
