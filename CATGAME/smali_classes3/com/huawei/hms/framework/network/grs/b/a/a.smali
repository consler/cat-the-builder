.class public Lcom/huawei/hms/framework/network/grs/b/a/a;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String;

.field private static b:Lcom/huawei/hms/framework/network/grs/b/b/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/huawei/hms/framework/network/grs/b/a/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/huawei/hms/framework/network/grs/b/a/a;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/huawei/hms/framework/network/grs/b/b/c;
    .locals 5

    const-class v0, Lcom/huawei/hms/framework/network/grs/b/a/a;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/huawei/hms/framework/network/grs/b/a/a;->b:Lcom/huawei/hms/framework/network/grs/b/b/c;

    if-eqz v1, :cond_0

    sget-object p0, Lcom/huawei/hms/framework/network/grs/b/a/a;->b:Lcom/huawei/hms/framework/network/grs/b/b/c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :cond_0
    :try_start_1
    const-string v1, "grs_sdk_server_config.json"

    invoke-static {v1, p0}, Lcom/huawei/hms/framework/network/grs/c/c;->a(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    monitor-exit v0

    return-object v2

    :cond_1
    :try_start_2
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p0, "grs_server"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    const-string v1, "grs_base_url"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-lez v3, :cond_2

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_2

    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    new-instance v1, Lcom/huawei/hms/framework/network/grs/b/b/c;

    invoke-direct {v1}, Lcom/huawei/hms/framework/network/grs/b/b/c;-><init>()V

    sput-object v1, Lcom/huawei/hms/framework/network/grs/b/a/a;->b:Lcom/huawei/hms/framework/network/grs/b/b/c;

    invoke-virtual {v1, v2}, Lcom/huawei/hms/framework/network/grs/b/b/c;->a(Ljava/util/List;)V

    const-string v1, "grs_query_endpoint_1.0"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/huawei/hms/framework/network/grs/b/a/a;->b:Lcom/huawei/hms/framework/network/grs/b/b/c;

    invoke-virtual {v2, v1}, Lcom/huawei/hms/framework/network/grs/b/b/c;->a(Ljava/lang/String;)V

    const-string v1, "grs_query_endpoint_2.0"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/huawei/hms/framework/network/grs/b/a/a;->b:Lcom/huawei/hms/framework/network/grs/b/b/c;

    invoke-virtual {v2, v1}, Lcom/huawei/hms/framework/network/grs/b/b/c;->b(Ljava/lang/String;)V

    const-string v1, "grs_query_timeout"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p0

    sget-object v1, Lcom/huawei/hms/framework/network/grs/b/a/a;->b:Lcom/huawei/hms/framework/network/grs/b/b/c;

    invoke-virtual {v1, p0}, Lcom/huawei/hms/framework/network/grs/b/b/c;->a(I)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catch_0
    move-exception p0

    :try_start_3
    sget-object v1, Lcom/huawei/hms/framework/network/grs/b/a/a;->a:Ljava/lang/String;

    const-string v2, "getGrsServerBean catch JSONException"

    invoke-static {v1, v2, p0}, Lcom/huawei/hms/framework/common/Logger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    sget-object p0, Lcom/huawei/hms/framework/network/grs/b/a/a;->b:Lcom/huawei/hms/framework/network/grs/b/b/c;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method
