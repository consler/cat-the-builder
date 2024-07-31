.class public Lcom/huawei/updatesdk/a/b/b/b;
.super Landroid/os/AsyncTask;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/updatesdk/a/b/b/b$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/net/HttpURLConnection;

.field private b:Z

.field private c:Lcom/huawei/updatesdk/a/b/b/a;

.field private d:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lcom/huawei/updatesdk/a/b/b/a;)V
    .locals 2

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/huawei/updatesdk/a/b/b/b;->b:Z

    new-instance v0, Lcom/huawei/updatesdk/a/b/b/b$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/huawei/updatesdk/a/b/b/b$a;-><init>(Lcom/huawei/updatesdk/a/b/b/b$1;)V

    iput-object v0, p0, Lcom/huawei/updatesdk/a/b/b/b;->d:Landroid/os/Handler;

    iput-object p1, p0, Lcom/huawei/updatesdk/a/b/b/b;->c:Lcom/huawei/updatesdk/a/b/b/a;

    return-void
.end method

.method private a(III)V
    .locals 1

    new-instance v0, Lcom/huawei/updatesdk/a/b/b/a;

    invoke-direct {v0}, Lcom/huawei/updatesdk/a/b/b/a;-><init>()V

    invoke-virtual {v0, p1}, Lcom/huawei/updatesdk/a/b/b/a;->a(I)V

    invoke-virtual {v0, p2}, Lcom/huawei/updatesdk/a/b/b/a;->b(I)V

    iget-object p1, p0, Lcom/huawei/updatesdk/a/b/b/b;->d:Landroid/os/Handler;

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1, p3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private a(Lcom/huawei/updatesdk/a/b/b/a;Ljava/lang/String;)V
    .locals 5

    const-string v0, "Close FileOutputStream failed!"

    const-string v1, "DownloadMarketTask"

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/huawei/updatesdk/a/b/b/a;->c()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_5

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "/appmarket.apk"

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    :try_start_0
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-direct {p0, p1, v4, p2}, Lcom/huawei/updatesdk/a/b/b/b;->a(Lcom/huawei/updatesdk/a/b/b/a;Ljava/io/OutputStream;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    new-instance p1, Ljava/io/File;

    invoke-static {}, Lcom/huawei/updatesdk/a/b/b/b;->d()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/huawei/updatesdk/a/a/c/d;->a(Ljava/io/File;)Z
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    :try_start_2
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    invoke-static {v1, v0}, Lcom/huawei/updatesdk/a/a/b/a/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :catchall_0
    move-exception p1

    move-object v3, v4

    goto :goto_3

    :catch_1
    move-exception p1

    move-object v3, v4

    goto :goto_0

    :catch_2
    move-exception p1

    move-object v3, v4

    goto :goto_1

    :catchall_1
    move-exception p1

    goto :goto_3

    :catch_3
    move-exception p1

    :goto_0
    :try_start_3
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "download market package Exception error:"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/huawei/updatesdk/a/a/b/a/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v3, :cond_2

    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_2

    :catch_4
    move-exception p1

    :goto_1
    :try_start_5
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "download market package FileNotFoundException error:"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/huawei/updatesdk/a/a/b/a/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v3, :cond_2

    :try_start_6
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    :cond_2
    :goto_2
    return-void

    :goto_3
    if-eqz v3, :cond_3

    :try_start_7
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    goto :goto_4

    :catch_5
    move-exception p2

    invoke-static {v1, v0}, Lcom/huawei/updatesdk/a/a/b/a/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_4
    throw p1

    :cond_4
    :goto_5
    return-void
.end method

.method private a(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 3

    const-string v0, "downloadUrlToStream(String urlString,OutputStream outputStream) "

    const-string v1, "DownloadMarketTask"

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/huawei/updatesdk/a/a/b/a/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    if-eqz p2, :cond_1

    :try_start_1
    invoke-virtual {p2}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/huawei/updatesdk/a/a/b/a/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_1
    return-void
.end method

.method private a(Lcom/huawei/updatesdk/a/b/b/a;Ljava/io/OutputStream;Ljava/lang/String;)Z
    .locals 17

    move-object/from16 v1, p0

    const/4 v2, -0x1

    const/4 v3, 0x3

    const/4 v4, 0x5

    const/4 v5, 0x0

    const/4 v6, 0x0

    :try_start_0
    invoke-static {}, Lcom/huawei/updatesdk/a/b/b/c;->a()Lcom/huawei/updatesdk/a/b/b/c;

    move-result-object v0

    invoke-virtual/range {p1 .. p1}, Lcom/huawei/updatesdk/a/b/b/a;->c()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/huawei/updatesdk/a/b/b/c;->a(Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object v0

    iput-object v0, v1, Lcom/huawei/updatesdk/a/b/b/b;->a:Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_7

    if-nez v0, :cond_1

    iget-boolean v0, v1, Lcom/huawei/updatesdk/a/b/b/b;->b:Z

    if-eqz v0, :cond_0

    :goto_0
    invoke-direct {v1, v6, v2, v3}, Lcom/huawei/updatesdk/a/b/b/b;->a(III)V

    goto :goto_1

    :cond_0
    invoke-direct {v1, v6, v2, v4}, Lcom/huawei/updatesdk/a/b/b/b;->a(III)V

    :goto_1
    invoke-direct {v1, v5, v5}, Lcom/huawei/updatesdk/a/b/b/b;->a(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    invoke-static {}, Lcom/huawei/updatesdk/service/d/a/c;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    invoke-direct/range {p0 .. p0}, Lcom/huawei/updatesdk/a/b/b/b;->e()V

    return v6

    :cond_1
    :try_start_1
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    iget-object v0, v1, Lcom/huawei/updatesdk/a/b/b/b;->a:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_7

    const/16 v7, 0xc8

    if-eq v7, v0, :cond_2

    const/16 v7, 0xce

    if-eq v7, v0, :cond_2

    iget-boolean v0, v1, Lcom/huawei/updatesdk/a/b/b/b;->b:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_2
    :try_start_2
    invoke-virtual/range {p1 .. p1}, Lcom/huawei/updatesdk/a/b/b/a;->b()I

    move-result v7
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_7

    :try_start_3
    new-instance v8, Ljava/io/BufferedInputStream;

    iget-object v0, v1, Lcom/huawei/updatesdk/a/b/b/b;->a:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    const/16 v9, 0x2000

    invoke-direct {v8, v0, v9}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    :try_start_4
    new-instance v10, Ljava/io/BufferedOutputStream;

    move-object/from16 v0, p2

    invoke-direct {v10, v0, v9}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    const-wide/16 v11, 0x0

    :try_start_5
    new-array v0, v9, [B
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    move v9, v6

    :cond_3
    :goto_2
    :try_start_6
    invoke-virtual {v8, v0}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v13

    if-eq v13, v2, :cond_4

    invoke-virtual {v10, v0, v6, v13}, Ljava/io/BufferedOutputStream;->write([BII)V

    add-int/2addr v9, v13

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    sub-long/2addr v13, v11

    invoke-static {v13, v14}, Ljava/lang/Math;->abs(J)J

    move-result-wide v13

    const-wide/16 v15, 0x3e8

    cmp-long v13, v13, v15

    if-lez v13, :cond_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    if-eq v9, v7, :cond_3

    const/4 v13, 0x2

    invoke-direct {v1, v9, v7, v13}, Lcom/huawei/updatesdk/a/b/b/b;->a(III)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_2

    :cond_4
    :try_start_7
    invoke-direct {v1, v8, v10}, Lcom/huawei/updatesdk/a/b/b/b;->a(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_6

    if-ne v9, v7, :cond_5

    if-lez v7, :cond_5

    :try_start_8
    invoke-virtual/range {p1 .. p1}, Lcom/huawei/updatesdk/a/b/b/a;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual/range {p1 .. p1}, Lcom/huawei/updatesdk/a/b/b/a;->d()Ljava/lang/String;

    move-result-object v0

    const-string v2, "SHA-256"

    move-object/from16 v8, p3

    invoke-static {v8, v2}, Lcom/huawei/updatesdk/a/a/c/d;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    if-eqz v0, :cond_5

    const/4 v0, 0x1

    move v2, v0

    goto :goto_3

    :cond_5
    move v2, v6

    :goto_3
    if-eqz v2, :cond_6

    const/4 v0, 0x4

    :try_start_9
    invoke-direct {v1, v9, v7, v0}, Lcom/huawei/updatesdk/a/b/b/b;->a(III)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception v0

    move v6, v2

    goto :goto_8

    :catch_0
    move-exception v0

    move-object v10, v5

    goto :goto_9

    :cond_6
    :goto_4
    if-nez v2, :cond_8

    iget-boolean v0, v1, Lcom/huawei/updatesdk/a/b/b/b;->b:Z

    if-eqz v0, :cond_7

    invoke-direct {v1, v9, v7, v3}, Lcom/huawei/updatesdk/a/b/b/b;->a(III)V

    goto :goto_5

    :cond_7
    invoke-direct {v1, v9, v7, v4}, Lcom/huawei/updatesdk/a/b/b/b;->a(III)V

    :cond_8
    :goto_5
    invoke-direct {v1, v5, v5}, Lcom/huawei/updatesdk/a/b/b/b;->a(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    invoke-static {}, Lcom/huawei/updatesdk/service/d/a/c;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    invoke-direct/range {p0 .. p0}, Lcom/huawei/updatesdk/a/b/b/b;->e()V

    return v2

    :catchall_1
    move-exception v0

    goto :goto_7

    :catchall_2
    move-exception v0

    goto :goto_6

    :catchall_3
    move-exception v0

    move-object v10, v5

    goto :goto_6

    :catchall_4
    move-exception v0

    move-object v8, v5

    move-object v10, v8

    :goto_6
    move v9, v6

    :goto_7
    :try_start_a
    invoke-direct {v1, v8, v10}, Lcom/huawei/updatesdk/a/b/b/b;->a(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_2
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    :try_start_b
    throw v0
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_1
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    :catchall_5
    move-exception v0

    :goto_8
    move-object v10, v5

    goto :goto_b

    :catch_1
    move-exception v0

    move-object v10, v5

    move v2, v6

    goto :goto_9

    :catchall_6
    move-exception v0

    move v2, v7

    move-object v5, v8

    goto :goto_c

    :catch_2
    move-exception v0

    move v2, v6

    move-object v5, v8

    goto :goto_9

    :catchall_7
    move-exception v0

    move-object v10, v5

    move v9, v6

    goto :goto_c

    :catch_3
    move-exception v0

    move v7, v2

    move-object v10, v5

    move v2, v6

    move v9, v2

    :goto_9
    :try_start_c
    const-string v8, "DownloadMarketTask"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "downloadUrlToStream(String urlString,OutputStream outputStream) "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Lcom/huawei/updatesdk/a/a/b/a/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_8

    if-nez v2, :cond_a

    iget-boolean v0, v1, Lcom/huawei/updatesdk/a/b/b/b;->b:Z

    if-eqz v0, :cond_9

    invoke-direct {v1, v9, v7, v3}, Lcom/huawei/updatesdk/a/b/b/b;->a(III)V

    goto :goto_a

    :cond_9
    invoke-direct {v1, v9, v7, v4}, Lcom/huawei/updatesdk/a/b/b/b;->a(III)V

    :cond_a
    :goto_a
    invoke-direct {v1, v5, v10}, Lcom/huawei/updatesdk/a/b/b/b;->a(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    invoke-static {}, Lcom/huawei/updatesdk/service/d/a/c;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    invoke-direct/range {p0 .. p0}, Lcom/huawei/updatesdk/a/b/b/b;->e()V

    return v6

    :catchall_8
    move-exception v0

    move v6, v2

    :goto_b
    move v2, v7

    :goto_c
    if-nez v6, :cond_c

    iget-boolean v6, v1, Lcom/huawei/updatesdk/a/b/b/b;->b:Z

    if-eqz v6, :cond_b

    invoke-direct {v1, v9, v2, v3}, Lcom/huawei/updatesdk/a/b/b/b;->a(III)V

    goto :goto_d

    :cond_b
    invoke-direct {v1, v9, v2, v4}, Lcom/huawei/updatesdk/a/b/b/b;->a(III)V

    :cond_c
    :goto_d
    invoke-direct {v1, v5, v10}, Lcom/huawei/updatesdk/a/b/b/b;->a(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    invoke-static {}, Lcom/huawei/updatesdk/service/d/a/c;->a()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    invoke-direct/range {p0 .. p0}, Lcom/huawei/updatesdk/a/b/b/b;->e()V

    throw v0
.end method

.method static synthetic c()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/huawei/updatesdk/a/b/b/b;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static d()Ljava/lang/String;
    .locals 4

    invoke-static {}, Lcom/huawei/updatesdk/a/b/a/a;->a()Lcom/huawei/updatesdk/a/b/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/huawei/updatesdk/a/b/a/a;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, ""

    if-eqz v1, :cond_0

    return-object v2

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/updatesdk"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-nez v1, :cond_1

    return-object v2

    :cond_1
    return-object v0
.end method

.method private e()V
    .locals 1

    iget-object v0, p0, Lcom/huawei/updatesdk/a/b/b/b;->a:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_0
    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 1

    invoke-static {p0}, Lcom/huawei/updatesdk/service/d/a/c;->a(Landroid/os/AsyncTask;)V

    iget-object p1, p0, Lcom/huawei/updatesdk/a/b/b/b;->c:Lcom/huawei/updatesdk/a/b/b/a;

    invoke-static {}, Lcom/huawei/updatesdk/a/b/b/b;->d()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/huawei/updatesdk/a/b/b/b;->a(Lcom/huawei/updatesdk/a/b/b/a;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/huawei/updatesdk/a/b/b/b;->a:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/huawei/updatesdk/a/b/b/b;->b:Z

    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/huawei/updatesdk/a/b/b/b;->d()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/huawei/updatesdk/a/a/c/d;->a(Ljava/io/File;)Z

    return-void
.end method

.method public b()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huawei/updatesdk/a/b/b/b;->d:Landroid/os/Handler;

    return-void
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/huawei/updatesdk/a/b/b/b;->a([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected onCancelled()V
    .locals 0

    invoke-super {p0}, Landroid/os/AsyncTask;->onCancelled()V

    invoke-virtual {p0}, Lcom/huawei/updatesdk/a/b/b/b;->a()V

    return-void
.end method
