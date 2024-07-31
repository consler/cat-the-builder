.class Lcom/huawei/agconnect/config/impl/InputStreamReader;
.super Ljava/lang/Object;
.source "InputStreamReader.java"

# interfaces
.implements Lcom/huawei/agconnect/config/impl/ConfigReader;


# static fields
.field private static final PATH_SEPARATOR:Ljava/lang/String; = "/"

.field private static final TAG:Ljava/lang/String; = "InputStreamReader"


# instance fields
.field private final config:Lorg/json/JSONObject;


# direct methods
.method constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .param p1, "input"    # Ljava/io/InputStream;

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    invoke-direct {p0, p1}, Lcom/huawei/agconnect/config/impl/InputStreamReader;->toJSONObject(Ljava/io/InputStream;)Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/agconnect/config/impl/InputStreamReader;->config:Lorg/json/JSONObject;

    .line 29
    return-void
.end method

.method private toJSONObject(Ljava/io/InputStream;)Lorg/json/JSONObject;
    .locals 3
    .param p1, "input"    # Ljava/io/InputStream;

    .line 32
    const-string v0, "InputStreamReader"

    if-eqz p1, :cond_0

    .line 34
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    const-string v2, "UTF-8"

    invoke-static {p1, v2}, Lcom/huawei/agconnect/config/impl/Utils;->toString(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 37
    :catch_0
    move-exception v1

    .line 38
    .local v1, "e":Lorg/json/JSONException;
    const-string v2, "JSONException when reading the \'Config\' from InputStream."

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 35
    .end local v1    # "e":Lorg/json/JSONException;
    :catch_1
    move-exception v1

    .line 36
    .local v1, "e":Ljava/io/IOException;
    const-string v2, "IOException when reading the \'Config\' from InputStream."

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    .end local v1    # "e":Ljava/io/IOException;
    :cond_0
    :goto_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    return-object v0
.end method


# virtual methods
.method public getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "def"    # Ljava/lang/String;

    .line 46
    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 47
    return-object p2

    .line 50
    :cond_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 52
    .local v0, "names":[Ljava/lang/String;
    :try_start_0
    iget-object v1, p0, Lcom/huawei/agconnect/config/impl/InputStreamReader;->config:Lorg/json/JSONObject;

    .line 53
    .local v1, "obj":Lorg/json/JSONObject;
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_2

    .line 54
    array-length v3, v0

    add-int/lit8 v3, v3, -0x1

    if-ne v2, v3, :cond_1

    .line 55
    aget-object v3, v0, v2

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 57
    :cond_1
    aget-object v3, v0, v2

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v3

    .line 53
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 62
    .end local v1    # "obj":Lorg/json/JSONObject;
    .end local v2    # "i":I
    :cond_2
    goto :goto_1

    .line 60
    :catch_0
    move-exception v1

    .line 61
    .local v1, "e":Lorg/json/JSONException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "JSONException when reading \'path\': "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "InputStreamReader"

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    .end local v1    # "e":Lorg/json/JSONException;
    :goto_1
    return-object p2
.end method
