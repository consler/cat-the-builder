.class public Lcom/huawei/updatesdk/a/b/d/b;
.super Landroid/os/AsyncTask;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Lcom/huawei/updatesdk/a/b/d/a/c;",
        "Ljava/lang/Void;",
        "Lcom/huawei/updatesdk/a/b/d/a/d;",
        ">;"
    }
.end annotation


# instance fields
.field protected a:Lcom/huawei/updatesdk/a/b/d/a/c;

.field private b:Lcom/huawei/updatesdk/a/b/d/a/d;

.field private c:Lcom/huawei/updatesdk/a/b/d/a/a;

.field private d:Lcom/huawei/updatesdk/a/a/a/b;

.field private e:I

.field private f:I


# direct methods
.method public constructor <init>(Lcom/huawei/updatesdk/a/b/d/a/c;Lcom/huawei/updatesdk/a/b/d/a/a;)V
    .locals 1

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huawei/updatesdk/a/b/d/b;->a:Lcom/huawei/updatesdk/a/b/d/a/c;

    iput-object v0, p0, Lcom/huawei/updatesdk/a/b/d/b;->b:Lcom/huawei/updatesdk/a/b/d/a/d;

    iput-object v0, p0, Lcom/huawei/updatesdk/a/b/d/b;->c:Lcom/huawei/updatesdk/a/b/d/a/a;

    iput-object v0, p0, Lcom/huawei/updatesdk/a/b/d/b;->d:Lcom/huawei/updatesdk/a/a/a/b;

    const/4 v0, 0x0

    iput v0, p0, Lcom/huawei/updatesdk/a/b/d/b;->e:I

    iput v0, p0, Lcom/huawei/updatesdk/a/b/d/b;->f:I

    iput-object p1, p0, Lcom/huawei/updatesdk/a/b/d/b;->a:Lcom/huawei/updatesdk/a/b/d/a/c;

    iput-object p2, p0, Lcom/huawei/updatesdk/a/b/d/b;->c:Lcom/huawei/updatesdk/a/b/d/a/a;

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Lcom/huawei/updatesdk/a/b/d/a/d;)Lcom/huawei/updatesdk/a/b/d/a/d;
    .locals 2

    const-string p1, "parse json error"

    const-string v0, "StoreTask"

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, v1}, Lcom/huawei/updatesdk/a/b/d/a/d;->fromJson(Lorg/json/JSONObject;)V

    const/4 p2, 0x0

    invoke-virtual {p3, p2}, Lcom/huawei/updatesdk/a/b/d/a/d;->a(I)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p2

    goto :goto_0

    :catch_1
    move-exception p2

    goto :goto_0

    :catch_2
    move-exception p2

    goto :goto_0

    :catch_3
    move-exception p2

    :goto_0
    invoke-static {v0, p1, p2}, Lcom/huawei/updatesdk/a/a/b/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    return-object p3
.end method

.method private a(Lcom/huawei/updatesdk/a/b/d/a/d;ILcom/huawei/updatesdk/a/b/d/a/d$a;Ljava/lang/Throwable;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p1, p2}, Lcom/huawei/updatesdk/a/b/d/a/d;->a(I)V

    invoke-virtual {p1, p3}, Lcom/huawei/updatesdk/a/b/d/a/d;->a(Lcom/huawei/updatesdk/a/b/d/a/d$a;)V

    invoke-virtual {p4}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/huawei/updatesdk/a/b/d/a/d;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private a(Lcom/huawei/updatesdk/a/b/d/a/d;Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 3

    instance-of v0, p2, Ljava/net/ConnectException;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    sget-object v0, Lcom/huawei/updatesdk/a/b/d/a/d$a;->f:Lcom/huawei/updatesdk/a/b/d/a/d$a;

    :goto_0
    invoke-direct {p0, p1, v1, v0, p2}, Lcom/huawei/updatesdk/a/b/d/b;->a(Lcom/huawei/updatesdk/a/b/d/a/d;ILcom/huawei/updatesdk/a/b/d/a/d$a;Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_0
    instance-of v0, p2, Ljava/net/SocketTimeoutException;

    const/4 v2, 0x2

    if-eqz v0, :cond_1

    :goto_1
    sget-object v0, Lcom/huawei/updatesdk/a/b/d/a/d$a;->f:Lcom/huawei/updatesdk/a/b/d/a/d$a;

    invoke-direct {p0, p1, v2, v0, p2}, Lcom/huawei/updatesdk/a/b/d/b;->a(Lcom/huawei/updatesdk/a/b/d/a/d;ILcom/huawei/updatesdk/a/b/d/a/d$a;Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_1
    instance-of v0, p2, Lorg/apache/http/conn/ConnectTimeoutException;

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    instance-of v0, p2, Ljava/io/IOException;

    if-eqz v0, :cond_3

    sget-object v0, Lcom/huawei/updatesdk/a/b/d/a/d$a;->e:Lcom/huawei/updatesdk/a/b/d/a/d$a;

    goto :goto_0

    :cond_3
    instance-of v0, p2, Ljava/lang/IllegalArgumentException;

    if-eqz v0, :cond_4

    const/4 v0, 0x5

    sget-object v1, Lcom/huawei/updatesdk/a/b/d/a/d$a;->d:Lcom/huawei/updatesdk/a/b/d/a/d$a;

    :goto_2
    invoke-direct {p0, p1, v0, v1, p2}, Lcom/huawei/updatesdk/a/b/d/b;->a(Lcom/huawei/updatesdk/a/b/d/a/d;ILcom/huawei/updatesdk/a/b/d/a/d$a;Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_4
    instance-of v0, p2, Ljava/lang/IllegalAccessException;

    if-eqz v0, :cond_5

    sget-object v0, Lcom/huawei/updatesdk/a/b/d/a/d$a;->g:Lcom/huawei/updatesdk/a/b/d/a/d$a;

    goto :goto_0

    :cond_5
    instance-of v0, p2, Ljava/lang/ArrayIndexOutOfBoundsException;

    if-eqz v0, :cond_6

    const/4 v0, 0x6

    sget-object v1, Lcom/huawei/updatesdk/a/b/d/a/d$a;->h:Lcom/huawei/updatesdk/a/b/d/a/d$a;

    goto :goto_2

    :cond_6
    if-eqz p1, :cond_7

    invoke-virtual {p2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/huawei/updatesdk/a/b/d/a/d;->a(Ljava/lang/String;)V

    :cond_7
    :goto_3
    invoke-direct {p0, p3, p2}, Lcom/huawei/updatesdk/a/b/d/b;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "invoke store error"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", exceptionType:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", url:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", method:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/huawei/updatesdk/a/b/d/b;->a:Lcom/huawei/updatesdk/a/b/d/a/c;

    invoke-virtual {p1}, Lcom/huawei/updatesdk/a/b/d/a/c;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ", retryTimes:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/huawei/updatesdk/a/b/d/b;->e:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "StoreTask"

    invoke-static {v0, p1, p2}, Lcom/huawei/updatesdk/a/a/b/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UpdateSDK call store error: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private a(Ljava/lang/String;)Z
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Lcom/huawei/updatesdk/a/a/c/g;->b(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method private b(Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const-string v0, "StoreTask"

    if-eqz p1, :cond_0

    const-string p1, "UpdateSDK response error, resData == null"

    goto :goto_0

    :cond_0
    const-string p1, "UpdateSDK response error, resData is not json string"

    :goto_0
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private c(Lcom/huawei/updatesdk/a/b/d/a/d;)Z
    .locals 6

    invoke-virtual {p0}, Lcom/huawei/updatesdk/a/b/d/b;->isCancelled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Lcom/huawei/updatesdk/a/b/d/a/d;->a()I

    move-result v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    invoke-virtual {p1}, Lcom/huawei/updatesdk/a/b/d/a/d;->a()I

    move-result v0

    const/4 v3, 0x2

    if-eq v0, v3, :cond_1

    return v1

    :cond_1
    iget v0, p0, Lcom/huawei/updatesdk/a/b/d/b;->e:I

    add-int/lit8 v3, v0, 0x1

    iput v3, p0, Lcom/huawei/updatesdk/a/b/d/b;->e:I

    const/4 v3, 0x3

    const-string v4, ",response.responseCode = "

    const-string v5, "StoreTask"

    if-lt v0, v3, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "retry completed total times = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/huawei/updatesdk/a/b/d/b;->e:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/huawei/updatesdk/a/b/d/a/d;->a()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Lcom/huawei/updatesdk/a/a/b/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "retry times = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/huawei/updatesdk/a/b/d/b;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/huawei/updatesdk/a/b/d/a/d;->a()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Lcom/huawei/updatesdk/a/a/b/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v2
.end method

.method private d(Lcom/huawei/updatesdk/a/b/d/a/d;)V
    .locals 4

    const-string v0, "notifyResult, create response error, method:"

    invoke-virtual {p0}, Lcom/huawei/updatesdk/a/b/d/b;->isCancelled()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/huawei/updatesdk/a/b/d/b;->c:Lcom/huawei/updatesdk/a/b/d/a/a;

    if-eqz v1, :cond_2

    if-nez p1, :cond_1

    const-string v1, "StoreTask"

    const-string v2, "notifyResult, response is null"

    invoke-static {v1, v2}, Lcom/huawei/updatesdk/a/a/b/a/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object v2, p0, Lcom/huawei/updatesdk/a/b/d/b;->a:Lcom/huawei/updatesdk/a/b/d/a/c;

    invoke-virtual {v2}, Lcom/huawei/updatesdk/a/b/d/a/c;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/huawei/updatesdk/a/b/d/a;->a(Ljava/lang/String;)Lcom/huawei/updatesdk/a/b/d/a/d;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_0

    :catch_1
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/huawei/updatesdk/a/b/d/b;->a:Lcom/huawei/updatesdk/a/b/d/a/c;

    invoke-virtual {v0}, Lcom/huawei/updatesdk/a/b/d/a/c;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, v2}, Lcom/huawei/updatesdk/a/a/b/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    if-nez p1, :cond_0

    new-instance p1, Lcom/huawei/updatesdk/a/b/d/a/d;

    invoke-direct {p1}, Lcom/huawei/updatesdk/a/b/d/a/d;-><init>()V

    sget-object v0, Lcom/huawei/updatesdk/a/b/d/a/d$a;->d:Lcom/huawei/updatesdk/a/b/d/a/d$a;

    goto :goto_2

    :cond_0
    sget-object v0, Lcom/huawei/updatesdk/a/b/d/a/d$a;->g:Lcom/huawei/updatesdk/a/b/d/a/d$a;

    :goto_2
    invoke-virtual {p1, v0}, Lcom/huawei/updatesdk/a/b/d/a/d;->a(Lcom/huawei/updatesdk/a/b/d/a/d$a;)V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/huawei/updatesdk/a/b/d/a/d;->a(I)V

    :cond_1
    iget-object v0, p0, Lcom/huawei/updatesdk/a/b/d/b;->c:Lcom/huawei/updatesdk/a/b/d/a/a;

    iget-object v1, p0, Lcom/huawei/updatesdk/a/b/d/b;->a:Lcom/huawei/updatesdk/a/b/d/a/c;

    invoke-interface {v0, v1, p1}, Lcom/huawei/updatesdk/a/b/d/a/a;->b(Lcom/huawei/updatesdk/a/b/d/a/c;Lcom/huawei/updatesdk/a/b/d/a/d;)V

    :cond_2
    return-void
.end method

.method private e()V
    .locals 1

    iget-object v0, p0, Lcom/huawei/updatesdk/a/b/d/b;->b:Lcom/huawei/updatesdk/a/b/d/a/d;

    invoke-direct {p0, v0}, Lcom/huawei/updatesdk/a/b/d/b;->d(Lcom/huawei/updatesdk/a/b/d/a/d;)V

    return-void
.end method


# virtual methods
.method public final a()Lcom/huawei/updatesdk/a/b/d/a/d;
    .locals 3

    const/4 v0, 0x0

    :cond_0
    iget v1, p0, Lcom/huawei/updatesdk/a/b/d/b;->e:I

    if-lez v1, :cond_1

    if-eqz v0, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "call store error! responseCode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/huawei/updatesdk/a/b/d/a/d;->a()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", retryTimes:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/huawei/updatesdk/a/b/d/b;->e:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StoreTask"

    invoke-static {v1, v0}, Lcom/huawei/updatesdk/a/a/b/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p0}, Lcom/huawei/updatesdk/a/b/d/b;->b()Lcom/huawei/updatesdk/a/b/d/a/d;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/huawei/updatesdk/a/b/d/b;->a(Lcom/huawei/updatesdk/a/b/d/a/d;)V

    invoke-direct {p0, v0}, Lcom/huawei/updatesdk/a/b/d/b;->c(Lcom/huawei/updatesdk/a/b/d/a/d;)Z

    move-result v1

    if-nez v1, :cond_0

    iput-object v0, p0, Lcom/huawei/updatesdk/a/b/d/b;->b:Lcom/huawei/updatesdk/a/b/d/a/d;

    return-object v0
.end method

.method protected varargs a([Lcom/huawei/updatesdk/a/b/d/a/c;)Lcom/huawei/updatesdk/a/b/d/a/d;
    .locals 2

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "doInBackground, method:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/huawei/updatesdk/a/b/d/b;->a:Lcom/huawei/updatesdk/a/b/d/a/c;

    invoke-virtual {v0}, Lcom/huawei/updatesdk/a/b/d/a/c;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "StoreTask"

    invoke-static {v0, p1}, Lcom/huawei/updatesdk/a/a/b/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/huawei/updatesdk/service/d/a/c;->a(Landroid/os/AsyncTask;)V

    invoke-virtual {p0}, Lcom/huawei/updatesdk/a/b/d/b;->a()Lcom/huawei/updatesdk/a/b/d/a/d;

    move-result-object p1

    iget-object v0, p0, Lcom/huawei/updatesdk/a/b/d/b;->c:Lcom/huawei/updatesdk/a/b/d/a/a;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/huawei/updatesdk/a/b/d/b;->a:Lcom/huawei/updatesdk/a/b/d/a/c;

    invoke-interface {v0, v1, p1}, Lcom/huawei/updatesdk/a/b/d/a/a;->a(Lcom/huawei/updatesdk/a/b/d/a/c;Lcom/huawei/updatesdk/a/b/d/a/d;)V

    :cond_0
    return-object p1
.end method

.method public a(Lcom/huawei/updatesdk/a/b/d/a/d;)V
    .locals 0

    return-void
.end method

.method public final a(Ljava/util/concurrent/Executor;)V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/huawei/updatesdk/a/b/d/a/c;

    iget-object v1, p0, Lcom/huawei/updatesdk/a/b/d/b;->a:Lcom/huawei/updatesdk/a/b/d/a/c;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p0, p1, v0}, Lcom/huawei/updatesdk/a/b/d/b;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method protected b()Lcom/huawei/updatesdk/a/b/d/a/d;
    .locals 13

    const-string v0, ", body:"

    const-string v1, ", url:"

    const-string v2, "StoreTask"

    const/4 v3, 0x5

    const/4 v4, 0x0

    :try_start_0
    iget-object v5, p0, Lcom/huawei/updatesdk/a/b/d/b;->a:Lcom/huawei/updatesdk/a/b/d/a/c;

    invoke-virtual {v5}, Lcom/huawei/updatesdk/a/b/d/a/c;->a()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/huawei/updatesdk/a/b/d/a;->a(Ljava/lang/String;)Lcom/huawei/updatesdk/a/b/d/a/d;

    move-result-object v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-static {}, Lcom/huawei/updatesdk/a/b/a/a;->a()Lcom/huawei/updatesdk/a/b/a/a;

    move-result-object v6

    invoke-virtual {v6}, Lcom/huawei/updatesdk/a/b/a/a;->b()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/huawei/updatesdk/a/a/c/b/b;->a(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_0

    const/4 v0, 0x3

    invoke-virtual {v5, v0}, Lcom/huawei/updatesdk/a/b/d/a/d;->a(I)V

    sget-object v0, Lcom/huawei/updatesdk/a/b/d/a/d$a;->b:Lcom/huawei/updatesdk/a/b/d/a/d$a;

    invoke-virtual {v5, v0}, Lcom/huawei/updatesdk/a/b/d/a/d;->a(Lcom/huawei/updatesdk/a/b/d/a/d$a;)V

    goto/16 :goto_1

    :cond_0
    iget-object v6, p0, Lcom/huawei/updatesdk/a/b/d/b;->a:Lcom/huawei/updatesdk/a/b/d/a/c;

    invoke-virtual {v6}, Lcom/huawei/updatesdk/a/b/d/a/c;->b()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/huawei/updatesdk/a/b/d/b;->a:Lcom/huawei/updatesdk/a/b/d/a/c;

    invoke-virtual {v7}, Lcom/huawei/updatesdk/a/b/d/a/c;->d()Ljava/lang/String;

    move-result-object v4

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "callStore, method:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/huawei/updatesdk/a/b/d/b;->a:Lcom/huawei/updatesdk/a/b/d/a/c;

    invoke-virtual {v8}, Lcom/huawei/updatesdk/a/b/d/a/c;->a()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Lcom/huawei/updatesdk/a/a/b/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v7, Lcom/huawei/updatesdk/a/a/a/b;

    invoke-direct {v7}, Lcom/huawei/updatesdk/a/a/a/b;-><init>()V

    iput-object v7, p0, Lcom/huawei/updatesdk/a/b/d/b;->d:Lcom/huawei/updatesdk/a/a/a/b;

    const-string v10, "UTF-8"

    invoke-virtual {p0}, Lcom/huawei/updatesdk/a/b/d/b;->c()Ljava/lang/String;

    move-result-object v11

    invoke-static {}, Lcom/huawei/updatesdk/a/b/a/a;->a()Lcom/huawei/updatesdk/a/b/a/a;

    move-result-object v8

    invoke-virtual {v8}, Lcom/huawei/updatesdk/a/b/a/a;->b()Landroid/content/Context;

    move-result-object v12

    move-object v8, v4

    move-object v9, v6

    invoke-virtual/range {v7 .. v12}, Lcom/huawei/updatesdk/a/a/a/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Lcom/huawei/updatesdk/a/a/a/b$a;

    move-result-object v7

    invoke-virtual {v7}, Lcom/huawei/updatesdk/a/a/a/b$a;->a()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7}, Lcom/huawei/updatesdk/a/a/a/b$a;->b()I

    move-result v9

    invoke-virtual {v5, v9}, Lcom/huawei/updatesdk/a/b/d/a/d;->b(I)V

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "UpdateSDK call store responsecode: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/huawei/updatesdk/a/b/d/a/d;->b()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v2, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v7}, Lcom/huawei/updatesdk/a/a/a/b$a;->b()I

    move-result v7

    div-int/lit8 v7, v7, 0x64

    if-ne v7, v3, :cond_1

    const/4 v0, 0x0

    invoke-virtual {v5, v0}, Lcom/huawei/updatesdk/a/b/d/a/d;->a(I)V

    return-object v5

    :cond_1
    invoke-direct {p0, v8}, Lcom/huawei/updatesdk/a/b/d/b;->a(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    const/4 v0, 0x1

    invoke-virtual {v5, v0}, Lcom/huawei/updatesdk/a/b/d/a/d;->a(I)V

    sget-object v0, Lcom/huawei/updatesdk/a/b/d/a/d$a;->c:Lcom/huawei/updatesdk/a/b/d/a/d$a;

    invoke-virtual {v5, v0}, Lcom/huawei/updatesdk/a/b/d/a/d;->a(Lcom/huawei/updatesdk/a/b/d/a/d$a;)V

    invoke-direct {p0, v8}, Lcom/huawei/updatesdk/a/b/d/b;->b(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    invoke-direct {p0, v6, v8, v5}, Lcom/huawei/updatesdk/a/b/d/b;->a(Ljava/lang/String;Ljava/lang/String;Lcom/huawei/updatesdk/a/b/d/a/d;)Lcom/huawei/updatesdk/a/b/d/a/d;

    move-result-object v5

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "callStore response, method:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/huawei/updatesdk/a/b/d/b;->a:Lcom/huawei/updatesdk/a/b/d/a/c;

    invoke-virtual {v8}, Lcom/huawei/updatesdk/a/b/d/a/c;->a()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", Receive Json msg:"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/huawei/updatesdk/a/b/d/a/d;->toJson()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/huawei/updatesdk/a/a/b/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v1, v4

    move-object v4, v5

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object v1, v4

    :goto_0
    invoke-direct {p0, v4, v0, v1}, Lcom/huawei/updatesdk/a/b/d/b;->a(Lcom/huawei/updatesdk/a/b/d/a/d;Ljava/lang/Throwable;Ljava/lang/String;)V

    move-object v5, v4

    :goto_1
    if-nez v5, :cond_3

    new-instance v5, Lcom/huawei/updatesdk/a/b/d/a/d;

    invoke-direct {v5}, Lcom/huawei/updatesdk/a/b/d/a/d;-><init>()V

    invoke-virtual {v5, v3}, Lcom/huawei/updatesdk/a/b/d/a/d;->a(I)V

    sget-object v0, Lcom/huawei/updatesdk/a/b/d/a/d$a;->d:Lcom/huawei/updatesdk/a/b/d/a/d$a;

    invoke-virtual {v5, v0}, Lcom/huawei/updatesdk/a/b/d/a/d;->a(Lcom/huawei/updatesdk/a/b/d/a/d$a;)V

    :cond_3
    return-object v5
.end method

.method protected b(Lcom/huawei/updatesdk/a/b/d/a/d;)V
    .locals 1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onPostExecute, method:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/huawei/updatesdk/a/b/d/b;->a:Lcom/huawei/updatesdk/a/b/d/a/c;

    invoke-virtual {v0}, Lcom/huawei/updatesdk/a/b/d/a/c;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "StoreTask"

    invoke-static {v0, p1}, Lcom/huawei/updatesdk/a/a/b/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/huawei/updatesdk/service/d/a/c;->a()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/huawei/updatesdk/a/b/d/b;->e()V

    return-void
.end method

.method protected c()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/huawei/updatesdk/service/d/a/a;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "Android/1.0"

    :cond_0
    return-object v0
.end method

.method public d()V
    .locals 1

    iget-object v0, p0, Lcom/huawei/updatesdk/a/b/d/b;->d:Lcom/huawei/updatesdk/a/a/a/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/huawei/updatesdk/a/a/a/b;->a()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huawei/updatesdk/a/b/d/b;->d:Lcom/huawei/updatesdk/a/a/a/b;

    :cond_0
    return-void
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Lcom/huawei/updatesdk/a/b/d/a/c;

    invoke-virtual {p0, p1}, Lcom/huawei/updatesdk/a/b/d/b;->a([Lcom/huawei/updatesdk/a/b/d/a/c;)Lcom/huawei/updatesdk/a/b/d/a/d;

    move-result-object p1

    return-object p1
.end method

.method protected onCancelled()V
    .locals 0

    invoke-super {p0}, Landroid/os/AsyncTask;->onCancelled()V

    invoke-virtual {p0}, Lcom/huawei/updatesdk/a/b/d/b;->d()V

    return-void
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/huawei/updatesdk/a/b/d/a/d;

    invoke-virtual {p0, p1}, Lcom/huawei/updatesdk/a/b/d/b;->b(Lcom/huawei/updatesdk/a/b/d/a/d;)V

    return-void
.end method
