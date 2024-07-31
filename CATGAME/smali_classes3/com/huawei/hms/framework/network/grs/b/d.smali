.class public Lcom/huawei/hms/framework/network/grs/b/d;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private c:[B

.field private d:I

.field private e:J

.field private f:J

.field private g:J

.field private h:Ljava/lang/String;

.field private i:I

.field private j:I

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:J

.field private o:Ljava/lang/Exception;

.field private p:Ljava/lang/String;

.field private q:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/huawei/hms/framework/network/grs/b/d;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/huawei/hms/framework/network/grs/b/d;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ILjava/util/Map;[BJ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;[BJ)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/huawei/hms/framework/network/grs/b/d;->d:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/huawei/hms/framework/network/grs/b/d;->i:I

    const/16 v0, 0x2329

    iput v0, p0, Lcom/huawei/hms/framework/network/grs/b/d;->j:I

    const-string v0, ""

    iput-object v0, p0, Lcom/huawei/hms/framework/network/grs/b/d;->k:Ljava/lang/String;

    iput-object v0, p0, Lcom/huawei/hms/framework/network/grs/b/d;->l:Ljava/lang/String;

    iput-object v0, p0, Lcom/huawei/hms/framework/network/grs/b/d;->m:Ljava/lang/String;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/huawei/hms/framework/network/grs/b/d;->n:J

    iput p1, p0, Lcom/huawei/hms/framework/network/grs/b/d;->d:I

    iput-object p2, p0, Lcom/huawei/hms/framework/network/grs/b/d;->b:Ljava/util/Map;

    iput-object p3, p0, Lcom/huawei/hms/framework/network/grs/b/d;->c:[B

    iput-wide p4, p0, Lcom/huawei/hms/framework/network/grs/b/d;->e:J

    invoke-direct {p0}, Lcom/huawei/hms/framework/network/grs/b/d;->n()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Exception;J)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/huawei/hms/framework/network/grs/b/d;->d:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/huawei/hms/framework/network/grs/b/d;->i:I

    const/16 v0, 0x2329

    iput v0, p0, Lcom/huawei/hms/framework/network/grs/b/d;->j:I

    const-string v0, ""

    iput-object v0, p0, Lcom/huawei/hms/framework/network/grs/b/d;->k:Ljava/lang/String;

    iput-object v0, p0, Lcom/huawei/hms/framework/network/grs/b/d;->l:Ljava/lang/String;

    iput-object v0, p0, Lcom/huawei/hms/framework/network/grs/b/d;->m:Ljava/lang/String;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/huawei/hms/framework/network/grs/b/d;->n:J

    iput-object p1, p0, Lcom/huawei/hms/framework/network/grs/b/d;->o:Ljava/lang/Exception;

    iput-wide p2, p0, Lcom/huawei/hms/framework/network/grs/b/d;->e:J

    return-void
.end method

.method private a(Ljava/util/Map;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_8

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    if-gtz v0, :cond_0

    goto/16 :goto_4

    :cond_0
    const-string v0, "Cache-Control"

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const-wide/16 v2, 0x3e8

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v1, :cond_1

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "max-age="

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    :try_start_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v1, v0

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    sget-object p1, Lcom/huawei/hms/framework/network/grs/b/d;->a:Ljava/lang/String;

    const-string v8, "Cache-Control value{%s}"

    new-array v9, v7, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v9, v6

    invoke-static {p1, v8, v9}, Lcom/huawei/hms/framework/common/Logger;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_3

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    move-wide v0, v4

    :goto_0
    sget-object v8, Lcom/huawei/hms/framework/network/grs/b/d;->a:Ljava/lang/String;

    const-string v9, "getExpireTime addHeadersToResult NumberFormatException"

    invoke-static {v8, v9, p1}, Lcom/huawei/hms/framework/common/Logger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_1
    const-string v0, "Expires"

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v1, Lcom/huawei/hms/framework/network/grs/b/d;->a:Ljava/lang/String;

    new-array v8, v7, [Ljava/lang/Object;

    aput-object v0, v8, v6

    const-string v9, "expires is{%s}"

    invoke-static {v1, v9, v8}, Lcom/huawei/hms/framework/common/Logger;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v1, Ljava/text/SimpleDateFormat;

    sget-object v8, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string v9, "EEE, d MMM yyyy HH:mm:ss \'GMT\'"

    invoke-direct {v1, v9, v8}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    const/4 v8, 0x0

    const-string v9, "Date"

    invoke-interface {p1, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {p1, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v8, p1

    check-cast v8, Ljava/lang/String;

    :cond_2
    :try_start_2
    invoke-virtual {v1, v0}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    goto :goto_1

    :cond_3
    invoke-virtual {v1, v8}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    :goto_1
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    sub-long/2addr v8, v0

    div-long/2addr v8, v2
    :try_end_2
    .catch Ljava/text/ParseException; {:try_start_2 .. :try_end_2} :catch_2

    move-wide v0, v8

    goto :goto_3

    :catch_2
    move-exception p1

    sget-object v0, Lcom/huawei/hms/framework/network/grs/b/d;->a:Ljava/lang/String;

    const-string v1, "getExpireTime ParseException."

    invoke-static {v0, v1, p1}, Lcom/huawei/hms/framework/common/Logger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_4
    sget-object p1, Lcom/huawei/hms/framework/network/grs/b/d;->a:Ljava/lang/String;

    const-string v0, "response headers neither contains Cache-Control nor Expires."

    invoke-static {p1, v0}, Lcom/huawei/hms/framework/common/Logger;->i(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_5
    :goto_2
    move-wide v0, v4

    :goto_3
    cmp-long p1, v0, v4

    if-lez p1, :cond_6

    const-wide/32 v4, 0x278d00

    cmp-long p1, v0, v4

    if-lez p1, :cond_7

    :cond_6
    const-wide/32 v0, 0x15180

    :cond_7
    mul-long/2addr v0, v2

    sget-object p1, Lcom/huawei/hms/framework/network/grs/b/d;->a:Ljava/lang/String;

    new-array v2, v7, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v6

    const-string v3, "convert expireTime{%s}"

    invoke-static {p1, v3, v2}, Lcom/huawei/hms/framework/common/Logger;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    add-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/huawei/hms/framework/network/grs/b/d;->d(Ljava/lang/String;)V

    return-void

    :cond_8
    :goto_4
    sget-object p1, Lcom/huawei/hms/framework/network/grs/b/d;->a:Ljava/lang/String;

    const-string v0, "getExpireTime {headers == null} or {headers.size() <= 0}"

    invoke-static {p1, v0}, Lcom/huawei/hms/framework/common/Logger;->w(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private b(I)V
    .locals 0

    iput p1, p0, Lcom/huawei/hms/framework/network/grs/b/d;->i:I

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/huawei/hms/framework/network/grs/b/d;->l:Ljava/lang/String;

    return-void
.end method

.method private b(Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_1

    :cond_0
    const-wide/16 v0, 0x0

    const-string v2, "Retry-After"

    invoke-interface {p1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    :try_start_0
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    sget-object v2, Lcom/huawei/hms/framework/network/grs/b/d;->a:Ljava/lang/String;

    const-string v3, "getRetryAfter addHeadersToResult NumberFormatException"

    invoke-static {v2, v3, p1}, Lcom/huawei/hms/framework/common/Logger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    sget-object p1, Lcom/huawei/hms/framework/network/grs/b/d;->a:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const-string v3, "convert retry-afterTime{%s}"

    invoke-static {p1, v3, v2}, Lcom/huawei/hms/framework/common/Logger;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0, v0, v1}, Lcom/huawei/hms/framework/network/grs/b/d;->c(J)V

    return-void

    :cond_2
    :goto_1
    sget-object p1, Lcom/huawei/hms/framework/network/grs/b/d;->a:Ljava/lang/String;

    const-string v0, "getExpireTime {headers == null} or {headers.size() <= 0}"

    invoke-static {p1, v0}, Lcom/huawei/hms/framework/common/Logger;->w(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private c(I)V
    .locals 0

    iput p1, p0, Lcom/huawei/hms/framework/network/grs/b/d;->j:I

    return-void
.end method

.method private c(J)V
    .locals 0

    iput-wide p1, p0, Lcom/huawei/hms/framework/network/grs/b/d;->n:J

    return-void
.end method

.method private c(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/huawei/hms/framework/network/grs/b/d;->h:Ljava/lang/String;

    return-void
.end method

.method private d(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/huawei/hms/framework/network/grs/b/d;->m:Ljava/lang/String;

    return-void
.end method

.method private e(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/huawei/hms/framework/network/grs/b/d;->k:Ljava/lang/String;

    return-void
.end method

.method private n()V
    .locals 0

    invoke-direct {p0}, Lcom/huawei/hms/framework/network/grs/b/d;->o()V

    invoke-direct {p0}, Lcom/huawei/hms/framework/network/grs/b/d;->q()V

    return-void
.end method

.method private o()V
    .locals 3

    invoke-virtual {p0}, Lcom/huawei/hms/framework/network/grs/b/d;->h()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/huawei/hms/framework/network/grs/b/d;->i()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/huawei/hms/framework/network/grs/b/d;->p()Ljava/util/Map;

    move-result-object v0

    :try_start_0
    invoke-virtual {p0}, Lcom/huawei/hms/framework/network/grs/b/d;->h()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0, v0}, Lcom/huawei/hms/framework/network/grs/b/d;->a(Ljava/util/Map;)V

    :cond_1
    invoke-virtual {p0}, Lcom/huawei/hms/framework/network/grs/b/d;->i()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0, v0}, Lcom/huawei/hms/framework/network/grs/b/d;->b(Ljava/util/Map;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/huawei/hms/framework/network/grs/b/d;->a:Ljava/lang/String;

    const-string v2, "parseHeader catch JSONException"

    invoke-static {v1, v2, v0}, Lcom/huawei/hms/framework/common/Logger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private p()Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iget-object v1, p0, Lcom/huawei/hms/framework/network/grs/b/d;->b:Ljava/util/Map;

    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-gtz v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcom/huawei/hms/framework/network/grs/b/d;->b:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-object v0

    :cond_2
    :goto_1
    sget-object v1, Lcom/huawei/hms/framework/network/grs/b/d;->a:Ljava/lang/String;

    const-string v2, "parseRespHeaders {respHeaders == null} or {respHeaders.size() <= 0}"

    invoke-static {v1, v2}, Lcom/huawei/hms/framework/common/Logger;->v(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method private q()V
    .locals 10

    const-string v0, "errorDesc"

    const-string v1, "errorList"

    const-string v2, "errorCode"

    const-string v3, "resultCode"

    const-string v4, "isSuccess"

    invoke-virtual {p0}, Lcom/huawei/hms/framework/network/grs/b/d;->h()Z

    move-result v5

    const/4 v6, 0x2

    if-nez v5, :cond_0

    sget-object v0, Lcom/huawei/hms/framework/network/grs/b/d;->a:Ljava/lang/String;

    const-string v1, "GRSSDK parse server body all failed."

    invoke-static {v0, v1}, Lcom/huawei/hms/framework/common/Logger;->i(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0, v6}, Lcom/huawei/hms/framework/network/grs/b/d;->b(I)V

    return-void

    :cond_0
    :try_start_0
    iget-object v5, p0, Lcom/huawei/hms/framework/network/grs/b/d;->c:[B

    invoke-static {v5}, Lcom/huawei/hms/framework/common/StringUtils;->byte2Str([B)Ljava/lang/String;

    move-result-object v5

    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const/4 v8, -0x1

    invoke-virtual {v7, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-virtual {v7, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v8

    goto :goto_0

    :cond_1
    invoke-virtual {v7, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v7, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v8

    goto :goto_0

    :cond_2
    sget-object v3, Lcom/huawei/hms/framework/network/grs/b/d;->a:Ljava/lang/String;

    const-string v4, "sth. wrong because server errorcode\'s key."

    invoke-static {v3, v4}, Lcom/huawei/hms/framework/common/Logger;->e(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    invoke-direct {p0, v8}, Lcom/huawei/hms/framework/network/grs/b/d;->b(I)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v3, 0x1

    const-string v4, "services"

    if-nez v8, :cond_3

    :try_start_1
    invoke-virtual {v5, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz v5, :cond_3

    move v5, v3

    goto :goto_1

    :cond_3
    const/4 v5, 0x0

    :goto_1
    const-string v9, ""

    if-eq v8, v3, :cond_7

    if-eqz v5, :cond_4

    goto :goto_3

    :cond_4
    :try_start_2
    invoke-direct {p0, v6}, Lcom/huawei/hms/framework/network/grs/b/d;->b(I)V

    invoke-virtual {v7, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {v7, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    goto :goto_2

    :cond_5
    const/16 v1, 0x2329

    :goto_2
    invoke-direct {p0, v1}, Lcom/huawei/hms/framework/network/grs/b/d;->c(I)V

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    :cond_6
    invoke-direct {p0, v9}, Lcom/huawei/hms/framework/network/grs/b/d;->e(Ljava/lang/String;)V

    goto :goto_4

    :cond_7
    :goto_3
    invoke-virtual {v7, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/huawei/hms/framework/network/grs/b/d;->c(Ljava/lang/String;)V

    if-eqz v5, :cond_9

    invoke-virtual {v7, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {v7, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    :cond_8
    invoke-direct {p0, v9}, Lcom/huawei/hms/framework/network/grs/b/d;->b(Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    sget-object v1, Lcom/huawei/hms/framework/network/grs/b/d;->a:Ljava/lang/String;

    const-string v2, "GrsResponse GrsResponse(String result) JSONException"

    invoke-static {v1, v2, v0}, Lcom/huawei/hms/framework/common/Logger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {p0, v6}, Lcom/huawei/hms/framework/network/grs/b/d;->b(I)V

    :cond_9
    :goto_4
    return-void
.end method


# virtual methods
.method public a()J
    .locals 2

    iget-wide v0, p0, Lcom/huawei/hms/framework/network/grs/b/d;->f:J

    return-wide v0
.end method

.method public a(I)V
    .locals 0

    iput p1, p0, Lcom/huawei/hms/framework/network/grs/b/d;->q:I

    return-void
.end method

.method public a(J)V
    .locals 0

    iput-wide p1, p0, Lcom/huawei/hms/framework/network/grs/b/d;->f:J

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/huawei/hms/framework/network/grs/b/d;->p:Ljava/lang/String;

    return-void
.end method

.method public b()J
    .locals 2

    iget-wide v0, p0, Lcom/huawei/hms/framework/network/grs/b/d;->g:J

    return-wide v0
.end method

.method public b(J)V
    .locals 0

    iput-wide p1, p0, Lcom/huawei/hms/framework/network/grs/b/d;->g:J

    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/huawei/hms/framework/network/grs/b/d;->h:Ljava/lang/String;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/huawei/hms/framework/network/grs/b/d;->m:Ljava/lang/String;

    return-object v0
.end method

.method public e()J
    .locals 2

    iget-wide v0, p0, Lcom/huawei/hms/framework/network/grs/b/d;->n:J

    return-wide v0
.end method

.method public f()I
    .locals 1

    iget v0, p0, Lcom/huawei/hms/framework/network/grs/b/d;->i:I

    return v0
.end method

.method public g()I
    .locals 1

    iget v0, p0, Lcom/huawei/hms/framework/network/grs/b/d;->j:I

    return v0
.end method

.method public h()Z
    .locals 2

    iget v0, p0, Lcom/huawei/hms/framework/network/grs/b/d;->d:I

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public i()Z
    .locals 2

    iget v0, p0, Lcom/huawei/hms/framework/network/grs/b/d;->d:I

    const/16 v1, 0x1f7

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public j()Ljava/lang/Exception;
    .locals 1

    iget-object v0, p0, Lcom/huawei/hms/framework/network/grs/b/d;->o:Ljava/lang/Exception;

    return-object v0
.end method

.method public k()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/huawei/hms/framework/network/grs/b/d;->p:Ljava/lang/String;

    return-object v0
.end method

.method public l()I
    .locals 1

    iget v0, p0, Lcom/huawei/hms/framework/network/grs/b/d;->d:I

    return v0
.end method

.method public m()J
    .locals 2

    iget-wide v0, p0, Lcom/huawei/hms/framework/network/grs/b/d;->e:J

    return-wide v0
.end method
