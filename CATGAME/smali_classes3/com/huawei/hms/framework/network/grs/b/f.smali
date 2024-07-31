.class public Lcom/huawei/hms/framework/network/grs/b/f;
.super Lcom/huawei/hms/framework/network/grs/b/b;

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/huawei/hms/framework/network/grs/b/b;",
        "Ljava/util/concurrent/Callable<",
        "Lcom/huawei/hms/framework/network/grs/b/d;",
        ">;"
    }
.end annotation


# static fields
.field private static final b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/huawei/hms/framework/network/grs/b/f;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/huawei/hms/framework/network/grs/b/f;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILcom/huawei/hms/framework/network/grs/b/a;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/huawei/hms/framework/network/grs/b/b;-><init>(Ljava/lang/String;ILcom/huawei/hms/framework/network/grs/b/a;Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public synthetic call()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/huawei/hms/framework/network/grs/b/f;->g()Lcom/huawei/hms/framework/network/grs/b/d;

    move-result-object v0

    return-object v0
.end method

.method public g()Lcom/huawei/hms/framework/network/grs/b/d;
    .locals 18

    move-object/from16 v1, p0

    sget-object v0, Lcom/huawei/hms/framework/network/grs/b/f;->b:Ljava/lang/String;

    const-string v2, "Get call execute"

    invoke-static {v0, v2}, Lcom/huawei/hms/framework/common/Logger;->i(Ljava/lang/String;Ljava/lang/Object;)V

    const-wide/16 v2, 0x0

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual/range {p0 .. p0}, Lcom/huawei/hms/framework/network/grs/b/f;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lcom/huawei/hms/framework/network/grs/b/f;->d()Landroid/content/Context;

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, Lcom/huawei/hms/framework/network/grs/b/f;->e()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v6, v7}, Lcom/huawei/hms/framework/network/grs/c/a/a;->a(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Ljavax/net/ssl/HttpsURLConnection;

    move-result-object v0

    const/4 v6, 0x0

    if-nez v0, :cond_0

    sget-object v0, Lcom/huawei/hms/framework/network/grs/b/f;->b:Ljava/lang/String;

    const-string v7, "create HttpsURLConnection instance by url return null."

    invoke-static {v0, v7}, Lcom/huawei/hms/framework/common/Logger;->w(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v6

    :cond_0
    const-string v7, "GET"

    invoke-virtual {v0, v7}, Ljavax/net/ssl/HttpsURLConnection;->setRequestMethod(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->connect()V

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getResponseCode()I

    move-result v9
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    const/16 v7, 0xc8

    if-ne v9, v7, :cond_1

    :try_start_2
    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    invoke-static {v6}, Lcom/huawei/hms/framework/common/IoUtils;->toByteArray(Ljava/io/InputStream;)[B

    move-result-object v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-static {v6}, Lcom/huawei/hms/framework/common/IoUtils;->closeSecure(Ljava/io/InputStream;)V

    move-object v11, v7

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v6}, Lcom/huawei/hms/framework/common/IoUtils;->closeSecure(Ljava/io/InputStream;)V

    throw v0

    :cond_1
    move-object v11, v6

    :goto_0
    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v10

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    new-instance v0, Lcom/huawei/hms/framework/network/grs/b/d;

    sub-long v12, v6, v4

    move-object v8, v0

    invoke-direct/range {v8 .. v13}, Lcom/huawei/hms/framework/network/grs/b/d;-><init>(ILjava/util/Map;[BJ)V

    iput-object v0, v1, Lcom/huawei/hms/framework/network/grs/b/f;->a:Lcom/huawei/hms/framework/network/grs/b/d;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    move-wide/from16 v16, v2

    move-wide v2, v4

    move-wide/from16 v4, v16

    goto :goto_1

    :catch_1
    move-exception v0

    move-wide v4, v2

    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    sget-object v8, Lcom/huawei/hms/framework/network/grs/b/f;->b:Ljava/lang/String;

    const-string v9, "RequestCallable run task catch IOException"

    invoke-static {v8, v9, v0}, Lcom/huawei/hms/framework/common/Logger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v8, Lcom/huawei/hms/framework/network/grs/b/d;

    sub-long/2addr v6, v2

    invoke-direct {v8, v0, v6, v7}, Lcom/huawei/hms/framework/network/grs/b/d;-><init>(Ljava/lang/Exception;J)V

    iput-object v8, v1, Lcom/huawei/hms/framework/network/grs/b/f;->a:Lcom/huawei/hms/framework/network/grs/b/d;

    move-wide v2, v4

    :goto_2
    iget-object v0, v1, Lcom/huawei/hms/framework/network/grs/b/f;->a:Lcom/huawei/hms/framework/network/grs/b/d;

    invoke-virtual/range {p0 .. p0}, Lcom/huawei/hms/framework/network/grs/b/f;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/huawei/hms/framework/network/grs/b/d;->a(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/huawei/hms/framework/network/grs/b/f;->a:Lcom/huawei/hms/framework/network/grs/b/d;

    invoke-virtual/range {p0 .. p0}, Lcom/huawei/hms/framework/network/grs/b/f;->c()I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/huawei/hms/framework/network/grs/b/d;->a(I)V

    iget-object v0, v1, Lcom/huawei/hms/framework/network/grs/b/f;->a:Lcom/huawei/hms/framework/network/grs/b/d;

    invoke-virtual {v0, v2, v3}, Lcom/huawei/hms/framework/network/grs/b/d;->a(J)V

    iget-object v0, v1, Lcom/huawei/hms/framework/network/grs/b/f;->a:Lcom/huawei/hms/framework/network/grs/b/d;

    invoke-virtual {v0, v14, v15}, Lcom/huawei/hms/framework/network/grs/b/d;->b(J)V

    invoke-virtual/range {p0 .. p0}, Lcom/huawei/hms/framework/network/grs/b/f;->b()Lcom/huawei/hms/framework/network/grs/b/a;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/huawei/hms/framework/network/grs/b/f;->b()Lcom/huawei/hms/framework/network/grs/b/a;

    move-result-object v0

    iget-object v2, v1, Lcom/huawei/hms/framework/network/grs/b/f;->a:Lcom/huawei/hms/framework/network/grs/b/d;

    invoke-interface {v0, v2}, Lcom/huawei/hms/framework/network/grs/b/a;->a(Lcom/huawei/hms/framework/network/grs/b/d;)V

    :cond_2
    iget-object v0, v1, Lcom/huawei/hms/framework/network/grs/b/f;->a:Lcom/huawei/hms/framework/network/grs/b/d;

    return-object v0
.end method
