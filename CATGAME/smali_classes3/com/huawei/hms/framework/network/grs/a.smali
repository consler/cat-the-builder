.class public Lcom/huawei/hms/framework/network/grs/a;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;

.field private c:Lcom/huawei/hms/framework/network/grs/a/a;

.field private d:Lcom/huawei/hms/framework/network/grs/b/h;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/huawei/hms/framework/network/grs/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/huawei/hms/framework/network/grs/a;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;Lcom/huawei/hms/framework/network/grs/a/a;Lcom/huawei/hms/framework/network/grs/b/h;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/huawei/hms/framework/network/grs/a;->b:Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;

    iput-object p2, p0, Lcom/huawei/hms/framework/network/grs/a;->c:Lcom/huawei/hms/framework/network/grs/a/a;

    iput-object p3, p0, Lcom/huawei/hms/framework/network/grs/a;->d:Lcom/huawei/hms/framework/network/grs/b/h;

    return-void
.end method

.method public static a(Landroid/content/Context;Z)Lcom/huawei/hms/framework/network/grs/local/model/CountryCodeBean;
    .locals 1

    new-instance v0, Lcom/huawei/hms/framework/network/grs/local/model/CountryCodeBean;

    invoke-direct {v0, p0, p1}, Lcom/huawei/hms/framework/network/grs/local/model/CountryCodeBean;-><init>(Landroid/content/Context;Z)V

    return-object v0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Lcom/huawei/hms/framework/network/grs/a/b;Landroid/content/Context;)Ljava/lang/String;
    .locals 6

    iget-object v0, p0, Lcom/huawei/hms/framework/network/grs/a;->c:Lcom/huawei/hms/framework/network/grs/a/a;

    iget-object v1, p0, Lcom/huawei/hms/framework/network/grs/a;->b:Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/huawei/hms/framework/network/grs/a/a;->a(Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;Ljava/lang/String;Ljava/lang/String;Lcom/huawei/hms/framework/network/grs/a/b;Landroid/content/Context;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p1, Lcom/huawei/hms/framework/network/grs/a;->a:Ljava/lang/String;

    const-string p2, "get url from sp is not empty."

    invoke-static {p1, p2}, Lcom/huawei/hms/framework/common/Logger;->i(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p3

    :cond_0
    invoke-virtual {p4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/huawei/hms/framework/network/grs/local/b;->a(Ljava/lang/String;)Lcom/huawei/hms/framework/network/grs/local/b;

    move-result-object p3

    iget-object p4, p0, Lcom/huawei/hms/framework/network/grs/a;->b:Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;

    invoke-virtual {p3, p4, p1, p2}, Lcom/huawei/hms/framework/network/grs/local/b;->a(Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    invoke-virtual {p0, p2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/huawei/hms/framework/network/grs/a;->a:Ljava/lang/String;

    const-string p2, "Method{getServiceNameUrl} query url from SP occur an JSONException"

    invoke-static {p1, p2, p0}, Lcom/huawei/hms/framework/common/Logger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v1
.end method

.method public static a(Ljava/lang/String;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object p0, Lcom/huawei/hms/framework/network/grs/a;->a:Ljava/lang/String;

    const-string v1, "isSpExpire jsonValue is null."

    invoke-static {p0, v1}, Lcom/huawei/hms/framework/common/Logger;->v(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0

    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-static {v3}, Lcom/huawei/hms/framework/network/grs/a;->a(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_1
    return-object v0

    :catch_0
    move-exception p0

    sget-object v1, Lcom/huawei/hms/framework/network/grs/a;->a:Ljava/lang/String;

    const-string v2, "getServicesUrlsMap occur a JSONException"

    invoke-static {v1, v2, p0}, Lcom/huawei/hms/framework/common/Logger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method private a(Ljava/lang/String;Lcom/huawei/hms/framework/network/grs/a/b;Landroid/content/Context;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/huawei/hms/framework/network/grs/a/b;",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/huawei/hms/framework/network/grs/a;->c:Lcom/huawei/hms/framework/network/grs/a/a;

    iget-object v1, p0, Lcom/huawei/hms/framework/network/grs/a;->b:Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/huawei/hms/framework/network/grs/a/a;->a(Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;Ljava/lang/String;Lcom/huawei/hms/framework/network/grs/a/b;Landroid/content/Context;)Ljava/util/Map;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    return-object p2

    :cond_0
    invoke-virtual {p3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/huawei/hms/framework/network/grs/local/b;->a(Ljava/lang/String;)Lcom/huawei/hms/framework/network/grs/local/b;

    move-result-object p2

    iget-object p3, p0, Lcom/huawei/hms/framework/network/grs/a;->b:Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;

    invoke-virtual {p2, p3, p1}, Lcom/huawei/hms/framework/network/grs/local/b;->a(Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object p0, Lcom/huawei/hms/framework/network/grs/a;->a:Ljava/lang/String;

    const-string p1, "isSpExpire jsonValue is null."

    invoke-static {p0, p1}, Lcom/huawei/hms/framework/common/Logger;->v(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0

    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    if-nez p0, :cond_1

    sget-object p0, Lcom/huawei/hms/framework/network/grs/a;->a:Ljava/lang/String;

    const-string p1, "getServiceNameUrls jsObject null."

    invoke-static {p0, p1}, Lcom/huawei/hms/framework/common/Logger;->v(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0

    :cond_1
    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_2
    return-object v0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/huawei/hms/framework/network/grs/a;->a:Ljava/lang/String;

    const-string v1, "Method{getServiceNameUrls} query url from SP occur an JSONException"

    invoke-static {p1, v1, p0}, Lcom/huawei/hms/framework/common/Logger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public static a(Lorg/json/JSONObject;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    :try_start_0
    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_0
    return-object v0

    :catch_0
    move-exception p0

    sget-object v1, Lcom/huawei/hms/framework/network/grs/a;->a:Ljava/lang/String;

    const-string v2, "getServiceUrls occur a JSONException"

    invoke-static {v1, v2, p0}, Lcom/huawei/hms/framework/common/Logger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method private a(Ljava/lang/String;Ljava/util/Map;Lcom/huawei/hms/framework/network/grs/IQueryUrlsCallBack;Landroid/content/Context;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/huawei/hms/framework/network/grs/IQueryUrlsCallBack;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/huawei/hms/framework/network/grs/a;->d:Lcom/huawei/hms/framework/network/grs/b/h;

    iget-object v1, p0, Lcom/huawei/hms/framework/network/grs/a;->b:Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;

    new-instance v2, Lcom/huawei/hms/framework/network/grs/a$2;

    invoke-direct {v2, p0, p1, p3, p2}, Lcom/huawei/hms/framework/network/grs/a$2;-><init>(Lcom/huawei/hms/framework/network/grs/a;Ljava/lang/String;Lcom/huawei/hms/framework/network/grs/IQueryUrlsCallBack;Ljava/util/Map;)V

    invoke-virtual {v0, v1, p4, v2, p1}, Lcom/huawei/hms/framework/network/grs/b/h;->a(Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;Landroid/content/Context;Lcom/huawei/hms/framework/network/grs/b;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/huawei/hms/framework/network/grs/a;->d:Lcom/huawei/hms/framework/network/grs/b/h;

    iget-object v1, p0, Lcom/huawei/hms/framework/network/grs/a;->b:Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;

    invoke-virtual {v0, v1, p1, p2}, Lcom/huawei/hms/framework/network/grs/b/h;->a(Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;Landroid/content/Context;Ljava/lang/String;)Lcom/huawei/hms/framework/network/grs/b/d;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, ""

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/huawei/hms/framework/network/grs/b/d;->c()Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    new-instance v0, Lcom/huawei/hms/framework/network/grs/a/b;

    invoke-direct {v0}, Lcom/huawei/hms/framework/network/grs/a/b;-><init>()V

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/huawei/hms/framework/network/grs/a;->a(Ljava/lang/String;Ljava/lang/String;Lcom/huawei/hms/framework/network/grs/a/b;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/huawei/hms/framework/network/grs/a/b;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p1, Lcom/huawei/hms/framework/network/grs/a;->a:Ljava/lang/String;

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    const/4 p3, 0x0

    aput-object v1, p2, p3

    const-string p3, "get unexpired cache localUrl{%s}"

    invoke-static {p1, p3, p2}, Lcom/huawei/hms/framework/common/Logger;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v1

    :cond_0
    invoke-virtual {p0, p3, p1}, Lcom/huawei/hms/framework/network/grs/a;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3, p1, p2}, Lcom/huawei/hms/framework/network/grs/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_1

    sget-object p2, Lcom/huawei/hms/framework/network/grs/a;->a:Ljava/lang/String;

    const-string p3, "get url is from remote server"

    invoke-static {p2, p3}, Lcom/huawei/hms/framework/common/Logger;->i(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p1

    :cond_1
    return-object v1
.end method

.method public a(Ljava/lang/String;Landroid/content/Context;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/huawei/hms/framework/network/grs/a/b;

    invoke-direct {v0}, Lcom/huawei/hms/framework/network/grs/a/b;-><init>()V

    invoke-direct {p0, p1, v0, p2}, Lcom/huawei/hms/framework/network/grs/a;->a(Ljava/lang/String;Lcom/huawei/hms/framework/network/grs/a/b;Landroid/content/Context;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0}, Lcom/huawei/hms/framework/network/grs/a/b;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {p0, p2, p1}, Lcom/huawei/hms/framework/network/grs/a;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/huawei/hms/framework/network/grs/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_1

    return-object p1

    :cond_1
    return-object v1
.end method

.method public a(Ljava/lang/String;Lcom/huawei/hms/framework/network/grs/IQueryUrlsCallBack;Landroid/content/Context;)V
    .locals 2

    new-instance v0, Lcom/huawei/hms/framework/network/grs/a/b;

    invoke-direct {v0}, Lcom/huawei/hms/framework/network/grs/a/b;-><init>()V

    invoke-direct {p0, p1, v0, p3}, Lcom/huawei/hms/framework/network/grs/a;->a(Ljava/lang/String;Lcom/huawei/hms/framework/network/grs/a/b;Landroid/content/Context;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0}, Lcom/huawei/hms/framework/network/grs/a/b;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p2, v1}, Lcom/huawei/hms/framework/network/grs/IQueryUrlsCallBack;->onCallBackSuccess(Ljava/util/Map;)V

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, -0x5

    invoke-interface {p2, p1}, Lcom/huawei/hms/framework/network/grs/IQueryUrlsCallBack;->onCallBackFail(I)V

    :goto_1
    return-void

    :cond_2
    invoke-direct {p0, p1, v1, p2, p3}, Lcom/huawei/hms/framework/network/grs/a;->a(Ljava/lang/String;Ljava/util/Map;Lcom/huawei/hms/framework/network/grs/IQueryUrlsCallBack;Landroid/content/Context;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Lcom/huawei/hms/framework/network/grs/IQueryUrlCallBack;Landroid/content/Context;)V
    .locals 9

    new-instance v0, Lcom/huawei/hms/framework/network/grs/a/b;

    invoke-direct {v0}, Lcom/huawei/hms/framework/network/grs/a/b;-><init>()V

    invoke-direct {p0, p1, p2, v0, p4}, Lcom/huawei/hms/framework/network/grs/a;->a(Ljava/lang/String;Ljava/lang/String;Lcom/huawei/hms/framework/network/grs/a/b;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Lcom/huawei/hms/framework/network/grs/a/b;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, -0x5

    invoke-interface {p3, p1}, Lcom/huawei/hms/framework/network/grs/IQueryUrlCallBack;->onCallBackFail(I)V

    goto :goto_0

    :cond_0
    invoke-interface {p3, v6}, Lcom/huawei/hms/framework/network/grs/IQueryUrlCallBack;->onCallBackSuccess(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/huawei/hms/framework/network/grs/a;->d:Lcom/huawei/hms/framework/network/grs/b/h;

    iget-object v7, p0, Lcom/huawei/hms/framework/network/grs/a;->b:Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;

    new-instance v8, Lcom/huawei/hms/framework/network/grs/a$1;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v1 .. v6}, Lcom/huawei/hms/framework/network/grs/a$1;-><init>(Lcom/huawei/hms/framework/network/grs/a;Ljava/lang/String;Ljava/lang/String;Lcom/huawei/hms/framework/network/grs/IQueryUrlCallBack;Ljava/lang/String;)V

    invoke-virtual {v0, v7, p4, v8, p1}, Lcom/huawei/hms/framework/network/grs/b/h;->a(Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;Landroid/content/Context;Lcom/huawei/hms/framework/network/grs/b;Ljava/lang/String;)V

    return-void
.end method
