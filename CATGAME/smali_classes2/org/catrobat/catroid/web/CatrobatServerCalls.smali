.class public final Lorg/catrobat/catroid/web/CatrobatServerCalls;
.super Ljava/lang/Object;
.source "CatrobatServerCalls.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/catrobat/catroid/web/CatrobatServerCalls$DownloadSuccessCallback;,
        Lorg/catrobat/catroid/web/CatrobatServerCalls$DownloadErrorCallback;,
        Lorg/catrobat/catroid/web/CatrobatServerCalls$DownloadProgressCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCatrobatServerCalls.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CatrobatServerCalls.kt\norg/catrobat/catroid/web/CatrobatServerCalls\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,277:1\n1#2:278\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000L\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000b\u0018\u00002\u00020\u0001:\u0003&\'(B\u000f\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\'\u0010\u0008\u001a\u0004\u0018\u00010\t2\u0006\u0010\n\u001a\u00020\u00062\u0006\u0010\u000b\u001a\u00020\u00062\u0008\u0010\u000c\u001a\u0004\u0018\u00010\r\u00a2\u0006\u0002\u0010\u000eJ\u001e\u0010\u000f\u001a\u00020\t2\u0006\u0010\u0010\u001a\u00020\u00062\u0006\u0010\u0011\u001a\u00020\u00062\u0006\u0010\u0012\u001a\u00020\u0006J\u0006\u0010\u0013\u001a\u00020\tJ.\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u00062\u0006\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u001eJ\u0010\u0010\u001f\u001a\u00020\u00062\u0006\u0010\u0016\u001a\u00020\u0006H\u0002J\u0010\u0010 \u001a\u00020\u00062\u0008\u0010!\u001a\u0004\u0018\u00010\u0006J\u0010\u0010\"\u001a\u00020\u00062\u0008\u0010!\u001a\u0004\u0018\u00010\u0006J\u000e\u0010#\u001a\u00020\t2\u0006\u0010$\u001a\u00020\u0006J\u000e\u0010%\u001a\u00020\t2\u0006\u0010\u0011\u001a\u00020\u0006R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0005\u001a\n \u0007*\u0004\u0018\u00010\u00060\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006)"
    }
    d2 = {
        "Lorg/catrobat/catroid/web/CatrobatServerCalls;",
        "",
        "okHttpClient",
        "Lokhttp3/OkHttpClient;",
        "(Lokhttp3/OkHttpClient;)V",
        "tag",
        "",
        "kotlin.jvm.PlatformType",
        "checkOAuthToken",
        "",
        "id",
        "oauthProvider",
        "context",
        "Landroid/content/Context;",
        "(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Ljava/lang/Boolean;",
        "checkToken",
        "token",
        "username",
        "baseUrl",
        "deleteTestUserAccountsOnServer",
        "downloadProject",
        "",
        "url",
        "destination",
        "Ljava/io/File;",
        "successCallback",
        "Lorg/catrobat/catroid/web/CatrobatServerCalls$DownloadSuccessCallback;",
        "errorCallback",
        "Lorg/catrobat/catroid/web/CatrobatServerCalls$DownloadErrorCallback;",
        "progressCallback",
        "Lorg/catrobat/catroid/web/CatrobatServerCalls$DownloadProgressCallback;",
        "getRequest",
        "getSurvey",
        "language",
        "getTags",
        "isEMailAvailable",
        "email",
        "isUserNameAvailable",
        "DownloadErrorCallback",
        "DownloadProgressCallback",
        "DownloadSuccessCallback",
        "catroid_catroidDebug"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# instance fields
.field private final okHttpClient:Lokhttp3/OkHttpClient;

.field private final tag:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v0}, Lorg/catrobat/catroid/web/CatrobatServerCalls;-><init>(Lokhttp3/OkHttpClient;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lokhttp3/OkHttpClient;)V
    .locals 1
    .param p1, "okHttpClient"    # Lokhttp3/OkHttpClient;

    const-string v0, "okHttpClient"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/catrobat/catroid/web/CatrobatServerCalls;->okHttpClient:Lokhttp3/OkHttpClient;

    .line 57
    const-class v0, Lorg/catrobat/catroid/web/CatrobatServerCalls;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/catrobat/catroid/web/CatrobatServerCalls;->tag:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Lokhttp3/OkHttpClient;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    .line 56
    sget-object p1, Lorg/catrobat/catroid/web/CatrobatWebClient;->INSTANCE:Lorg/catrobat/catroid/web/CatrobatWebClient;

    invoke-virtual {p1}, Lorg/catrobat/catroid/web/CatrobatWebClient;->getClient()Lokhttp3/OkHttpClient;

    move-result-object p1

    :cond_0
    invoke-direct {p0, p1}, Lorg/catrobat/catroid/web/CatrobatServerCalls;-><init>(Lokhttp3/OkHttpClient;)V

    return-void
.end method

.method private final getRequest(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/catrobat/catroid/web/WebconnectionException;
        }
    .end annotation

    .line 87
    nop

    .line 89
    nop

    .line 87
    nop

    .line 88
    nop

    .line 87
    new-instance v0, Lokhttp3/Request$Builder;

    invoke-direct {v0}, Lokhttp3/Request$Builder;-><init>()V

    .line 88
    invoke-virtual {v0, p1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    .line 89
    invoke-virtual {v0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v0

    .line 87
    nop

    .line 90
    .local v0, "request":Lokhttp3/Request;
    iget-object v1, p0, Lorg/catrobat/catroid/web/CatrobatServerCalls;->okHttpClient:Lokhttp3/OkHttpClient;

    const-string v2, "request"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, v0}, Lorg/catrobat/catroid/web/CatrobatWebClientKt;->performCallWith(Lokhttp3/OkHttpClient;Lokhttp3/Request;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public final checkOAuthToken(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Ljava/lang/Boolean;
    .locals 16
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "oauthProvider"    # Ljava/lang/String;
    .param p3, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/catrobat/catroid/web/WebconnectionException;
        }
    .end annotation

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const-string v0, "GPLUS"

    const-string v3, "id"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "oauthProvider"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 121
    const/4 v4, 0x0

    .line 122
    .local v4, "statusCode":I
    const/4 v5, 0x0

    .line 123
    .local v5, "message":Ljava/lang/String;
    nop

    .line 124
    :try_start_0
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 125
    .local v6, "postValues":Ljava/util/HashMap;
    move-object v7, v6

    check-cast v7, Ljava/util/Map;

    invoke-interface {v7, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->hashCode()I

    move-result v3

    const v7, 0x40e0a61

    if-ne v3, v7, :cond_3

    .line 128
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "https://share.catrob.at/pocketcode/api/GoogleServerTokenAvailable/GoogleServerTokenAvailable.json"

    .line 127
    nop

    .line 132
    .local v3, "serverUrl":Ljava/lang/String;
    move-object v7, v6

    check-cast v7, Ljava/util/Map;

    invoke-static {v7, v3}, Lorg/catrobat/catroid/web/CatrobatWebClientKt;->createFormEncodedRequest(Ljava/util/Map;Ljava/lang/String;)Lokhttp3/Request;

    move-result-object v7
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 133
    .local v7, "request":Lokhttp3/Request;
    move-object/from16 v8, p0

    :try_start_1
    iget-object v9, v8, Lorg/catrobat/catroid/web/CatrobatServerCalls;->okHttpClient:Lokhttp3/OkHttpClient;

    invoke-static {v9, v7}, Lorg/catrobat/catroid/web/CatrobatWebClientKt;->performCallWith(Lokhttp3/OkHttpClient;Lokhttp3/Request;)Ljava/lang/String;

    move-result-object v9

    .line 135
    .local v9, "resultString":Ljava/lang/String;
    new-instance v10, Lorg/json/JSONObject;

    invoke-direct {v10, v9}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 136
    .local v10, "jsonObject":Lorg/json/JSONObject;
    const-string v11, "statusCode"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v11

    move v4, v11

    .line 137
    sget-object v11, Lorg/catrobat/catroid/web/ServerAuthenticationConstants;->SERVER_RESPONSE_TOKEN_OK:Ljava/lang/Integer;

    if-eqz v11, :cond_1

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    if-ne v4, v11, :cond_1

    .line 138
    const-string v11, "email"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 139
    .local v11, "serverEmail":Ljava/lang/String;
    const-string v12, "username"

    invoke-virtual {v10, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 140
    .local v12, "serverUsername":Ljava/lang/String;
    const-string v13, "token_available"

    invoke-virtual {v10, v13}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v13

    .line 142
    .local v13, "tokenAvailable":Z
    if-eqz v13, :cond_0

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 143
    invoke-static/range {p3 .. p3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 144
    .local v0, "sharedPreferences":Landroid/content/SharedPreferences;
    nop

    .line 147
    nop

    .line 144
    nop

    .line 146
    nop

    .line 144
    nop

    .line 145
    nop

    .line 144
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v14

    .line 145
    const-string v15, "GOOGLE_USERNAME"

    invoke-interface {v14, v15, v12}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v14

    .line 146
    const-string v15, "GOOGLE_EMAIL"

    invoke-interface {v14, v15, v11}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v14

    .line 147
    invoke-interface {v14}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 150
    .end local v0    # "sharedPreferences":Landroid/content/SharedPreferences;
    :cond_0
    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 152
    .end local v11    # "serverEmail":Ljava/lang/String;
    .end local v12    # "serverUsername":Ljava/lang/String;
    .end local v13    # "tokenAvailable":Z
    :cond_1
    move-object v0, v9

    .end local v3    # "serverUrl":Ljava/lang/String;
    .end local v5    # "message":Ljava/lang/String;
    .end local v6    # "postValues":Ljava/util/HashMap;
    .end local v7    # "request":Lokhttp3/Request;
    .end local v9    # "resultString":Ljava/lang/String;
    .end local v10    # "jsonObject":Lorg/json/JSONObject;
    .local v0, "message":Ljava/lang/String;
    goto :goto_2

    .line 128
    .end local v0    # "message":Ljava/lang/String;
    .restart local v5    # "message":Ljava/lang/String;
    .restart local v6    # "postValues":Ljava/util/HashMap;
    :cond_2
    move-object/from16 v8, p0

    goto :goto_0

    .line 127
    :cond_3
    move-object/from16 v8, p0

    .line 129
    :goto_0
    new-instance v0, Lorg/catrobat/catroid/web/WebconnectionException;

    const/4 v3, -0x1

    const-string v7, "OAuth provider not supported!"

    invoke-direct {v0, v3, v7}, Lorg/catrobat/catroid/web/WebconnectionException;-><init>(ILjava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    .end local v4    # "statusCode":I
    .end local v5    # "message":Ljava/lang/String;
    .end local p1    # "id":Ljava/lang/String;
    .end local p2    # "oauthProvider":Ljava/lang/String;
    .end local p3    # "context":Landroid/content/Context;
    throw v0
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 153
    .end local v6    # "postValues":Ljava/util/HashMap;
    .restart local v4    # "statusCode":I
    .restart local v5    # "message":Ljava/lang/String;
    .restart local p1    # "id":Ljava/lang/String;
    .restart local p2    # "oauthProvider":Ljava/lang/String;
    .restart local p3    # "context":Landroid/content/Context;
    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    move-object/from16 v8, p0

    .line 154
    .local v0, "e":Lorg/json/JSONException;
    :goto_1
    const/16 v4, 0x3e9

    .line 155
    move-object v3, v0

    check-cast v3, Ljava/lang/Throwable;

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    const-string v6, "Log.getStackTraceString(e)"

    invoke-static {v3, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, v3

    .line 156
    .end local v5    # "message":Ljava/lang/String;
    .local v0, "message":Ljava/lang/String;
    :goto_2
    nop

    .line 157
    new-instance v3, Lorg/catrobat/catroid/web/WebconnectionException;

    invoke-direct {v3, v4, v0}, Lorg/catrobat/catroid/web/WebconnectionException;-><init>(ILjava/lang/String;)V

    check-cast v3, Ljava/lang/Throwable;

    throw v3
.end method

.method public final checkToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 10
    .param p1, "token"    # Ljava/lang/String;
    .param p2, "username"    # Ljava/lang/String;
    .param p3, "baseUrl"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/catrobat/catroid/web/WebconnectionException;
        }
    .end annotation

    const-string v0, "token"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "username"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "baseUrl"

    invoke-static {p3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    nop

    .line 62
    :try_start_0
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 63
    .local v2, "postValues":Ljava/util/HashMap;
    move-object v3, v2

    check-cast v3, Ljava/util/Map;

    invoke-interface {v3, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    move-object v0, v2

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "api/checkToken/check.json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 68
    .local v0, "serverUrl":Ljava/lang/String;
    move-object v1, v2

    check-cast v1, Ljava/util/Map;

    invoke-static {v1, v0}, Lorg/catrobat/catroid/web/CatrobatWebClientKt;->createFormEncodedRequest(Ljava/util/Map;Ljava/lang/String;)Lokhttp3/Request;

    move-result-object v1

    .line 69
    .local v1, "request":Lokhttp3/Request;
    iget-object v3, p0, Lorg/catrobat/catroid/web/CatrobatServerCalls;->okHttpClient:Lokhttp3/OkHttpClient;

    invoke-static {v3, v1}, Lorg/catrobat/catroid/web/CatrobatWebClientKt;->performCallWith(Lokhttp3/OkHttpClient;Lokhttp3/Request;)Ljava/lang/String;

    move-result-object v3

    .line 71
    .local v3, "resultString":Ljava/lang/String;
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 72
    .local v4, "jsonObject":Lorg/json/JSONObject;
    const-string v5, "statusCode"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 73
    .local v5, "statusCode":I
    const-string v6, "answer"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 75
    .local v6, "serverAnswer":Ljava/lang/String;
    sget-object v7, Lorg/catrobat/catroid/web/ServerAuthenticationConstants;->SERVER_RESPONSE_TOKEN_OK:Ljava/lang/Integer;

    if-eqz v7, :cond_0

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-ne v5, v7, :cond_0

    .line 76
    const/4 v7, 0x1

    .line 75
    return v7

    .line 78
    :cond_0
    new-instance v7, Lorg/catrobat/catroid/web/WebconnectionException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "server response token ok, but error: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v5, v8}, Lorg/catrobat/catroid/web/WebconnectionException;-><init>(ILjava/lang/String;)V

    check-cast v7, Ljava/lang/Throwable;

    .end local p1    # "token":Ljava/lang/String;
    .end local p2    # "username":Ljava/lang/String;
    .end local p3    # "baseUrl":Ljava/lang/String;
    throw v7
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    .end local v0    # "serverUrl":Ljava/lang/String;
    .end local v1    # "request":Lokhttp3/Request;
    .end local v2    # "postValues":Ljava/util/HashMap;
    .end local v3    # "resultString":Ljava/lang/String;
    .end local v4    # "jsonObject":Lorg/json/JSONObject;
    .end local v5    # "statusCode":I
    .end local v6    # "serverAnswer":Ljava/lang/String;
    .restart local p1    # "token":Ljava/lang/String;
    .restart local p2    # "username":Ljava/lang/String;
    .restart local p3    # "baseUrl":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 81
    .local v0, "e":Lorg/json/JSONException;
    new-instance v1, Lorg/catrobat/catroid/web/WebconnectionException;

    const/16 v2, 0x3e9

    move-object v3, v0

    check-cast v3, Ljava/lang/Throwable;

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/catrobat/catroid/web/WebconnectionException;-><init>(ILjava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    throw v1
.end method

.method public final deleteTestUserAccountsOnServer()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/catrobat/catroid/web/WebconnectionException;
        }
    .end annotation

    .line 208
    nop

    .line 209
    :try_start_0
    const-string v0, ""

    invoke-direct {p0, v0}, Lorg/catrobat/catroid/web/CatrobatServerCalls;->getRequest(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 210
    .local v0, "resultString":Ljava/lang/String;
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 211
    .local v1, "jsonObject":Lorg/json/JSONObject;
    const-string v2, "statusCode"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 212
    .local v2, "statusCode":I
    sget-object v3, Lorg/catrobat/catroid/web/ServerAuthenticationConstants;->SERVER_RESPONSE_TOKEN_OK:Ljava/lang/Integer;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 215
    const/4 v3, 0x1

    return v3

    .line 213
    :cond_0
    new-instance v3, Lorg/catrobat/catroid/web/WebconnectionException;

    invoke-direct {v3, v2, v0}, Lorg/catrobat/catroid/web/WebconnectionException;-><init>(ILjava/lang/String;)V

    check-cast v3, Ljava/lang/Throwable;

    throw v3
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 216
    .end local v0    # "resultString":Ljava/lang/String;
    .end local v1    # "jsonObject":Lorg/json/JSONObject;
    .end local v2    # "statusCode":I
    :catch_0
    move-exception v0

    .line 217
    .local v0, "e":Lorg/json/JSONException;
    new-instance v1, Lorg/catrobat/catroid/web/WebconnectionException;

    const/16 v2, 0x3e9

    move-object v3, v0

    check-cast v3, Ljava/lang/Throwable;

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/catrobat/catroid/web/WebconnectionException;-><init>(ILjava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    throw v1
.end method

.method public final downloadProject(Ljava/lang/String;Ljava/io/File;Lorg/catrobat/catroid/web/CatrobatServerCalls$DownloadSuccessCallback;Lorg/catrobat/catroid/web/CatrobatServerCalls$DownloadErrorCallback;Lorg/catrobat/catroid/web/CatrobatServerCalls$DownloadProgressCallback;)V
    .locals 8
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "destination"    # Ljava/io/File;
    .param p3, "successCallback"    # Lorg/catrobat/catroid/web/CatrobatServerCalls$DownloadSuccessCallback;
    .param p4, "errorCallback"    # Lorg/catrobat/catroid/web/CatrobatServerCalls$DownloadErrorCallback;
    .param p5, "progressCallback"    # Lorg/catrobat/catroid/web/CatrobatServerCalls$DownloadProgressCallback;

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "destination"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "successCallback"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "errorCallback"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "progressCallback"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 228
    new-instance v0, Lokhttp3/Request$Builder;

    invoke-direct {v0}, Lokhttp3/Request$Builder;-><init>()V

    invoke-virtual {v0, p1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v0

    .line 229
    .local v0, "request":Lokhttp3/Request;
    iget-object v1, p0, Lorg/catrobat/catroid/web/CatrobatServerCalls;->okHttpClient:Lokhttp3/OkHttpClient;

    invoke-virtual {v1}, Lokhttp3/OkHttpClient;->newBuilder()Lokhttp3/OkHttpClient$Builder;

    move-result-object v1

    .line 230
    .local v1, "httpClientBuilder":Lokhttp3/OkHttpClient$Builder;
    nop

    .line 231
    nop

    .line 230
    invoke-virtual {v1}, Lokhttp3/OkHttpClient$Builder;->networkInterceptors()Ljava/util/List;

    move-result-object v2

    .line 231
    new-instance v3, Lorg/catrobat/catroid/web/CatrobatServerCalls$downloadProject$1;

    invoke-direct {v3, p5}, Lorg/catrobat/catroid/web/CatrobatServerCalls$downloadProject$1;-><init>(Lorg/catrobat/catroid/web/CatrobatServerCalls$DownloadProgressCallback;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 240
    const-string v2, "http://"

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static {p1, v2, v3, v4, v5}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 241
    nop

    .line 243
    nop

    .line 241
    nop

    .line 242
    nop

    .line 241
    nop

    .line 242
    sget-object v2, Lokhttp3/ConnectionSpec;->CLEARTEXT:Lokhttp3/ConnectionSpec;

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lokhttp3/OkHttpClient$Builder;->connectionSpecs(Ljava/util/List;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v2

    .line 243
    invoke-virtual {v2}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v2

    goto :goto_0

    .line 245
    :cond_0
    invoke-virtual {v1}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v2

    .line 240
    :goto_0
    nop

    .line 248
    .local v2, "httpClient":Lokhttp3/OkHttpClient;
    nop

    .line 249
    :try_start_0
    invoke-virtual {v2, v0}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v3

    invoke-interface {v3}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object v3

    .line 250
    .local v3, "response":Lokhttp3/Response;
    const-string v4, "response"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Lokhttp3/Response;->isSuccessful()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 251
    invoke-static {p2}, Lokio/Okio;->sink(Ljava/io/File;)Lokio/Sink;

    move-result-object v4

    invoke-static {v4}, Lokio/Okio;->buffer(Lokio/Sink;)Lokio/BufferedSink;

    move-result-object v4

    .line 252
    .local v4, "bufferedSink":Lokio/BufferedSink;
    invoke-virtual {v3}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 278
    .local v5, "it":Lokhttp3/ResponseBody;
    const/4 v6, 0x0

    .line 252
    .local v6, "$i$a$-let-CatrobatServerCalls$downloadProject$2":I
    invoke-virtual {v5}, Lokhttp3/ResponseBody;->source()Lokio/BufferedSource;

    move-result-object v7

    check-cast v7, Lokio/Source;

    invoke-interface {v4, v7}, Lokio/BufferedSink;->writeAll(Lokio/Source;)J

    .line 253
    .end local v5    # "it":Lokhttp3/ResponseBody;
    .end local v6    # "$i$a$-let-CatrobatServerCalls$downloadProject$2":I
    :cond_1
    invoke-interface {v4}, Lokio/BufferedSink;->close()V

    .line 254
    invoke-interface {p3}, Lorg/catrobat/catroid/web/CatrobatServerCalls$DownloadSuccessCallback;->onSuccess()V

    .end local v4    # "bufferedSink":Lokio/BufferedSink;
    goto :goto_1

    .line 256
    :cond_2
    iget-object v4, p0, Lorg/catrobat/catroid/web/CatrobatServerCalls;->tag:Ljava/lang/String;

    const-string v5, "Download not successful"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    invoke-virtual {v3}, Lokhttp3/Response;->code()I

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Download failed! HTTP Status code was "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lokhttp3/Response;->code()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p4, v4, v5}, Lorg/catrobat/catroid/web/CatrobatServerCalls$DownloadErrorCallback;->onError(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 258
    .end local v3    # "response":Lokhttp3/Response;
    goto :goto_1

    .line 259
    :catch_0
    move-exception v3

    .line 260
    .local v3, "ioException":Ljava/io/IOException;
    iget-object v4, p0, Lorg/catrobat/catroid/web/CatrobatServerCalls;->tag:Ljava/lang/String;

    move-object v5, v3

    check-cast v5, Ljava/lang/Throwable;

    invoke-static {v5}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    const/16 v4, 0x3ea

    const-string v5, "I/O Exception"

    invoke-interface {p4, v4, v5}, Lorg/catrobat/catroid/web/CatrobatServerCalls$DownloadErrorCallback;->onError(ILjava/lang/String;)V

    .line 262
    .end local v3    # "ioException":Ljava/io/IOException;
    :goto_1
    nop

    .line 263
    return-void
.end method

.method public final getSurvey(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "language"    # Ljava/lang/String;

    .line 107
    nop

    .line 108
    :try_start_0
    const-string v0, "https://share.catrob.at/api/survey/"

    .line 109
    .local v0, "serverUrl":Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 110
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .line 112
    :cond_0
    invoke-direct {p0, v0}, Lorg/catrobat/catroid/web/CatrobatServerCalls;->getRequest(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Lorg/catrobat/catroid/web/WebconnectionException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "serverUrl":Ljava/lang/String;
    goto :goto_0

    .line 113
    :catch_0
    move-exception v0

    .line 114
    .local v0, "e":Lorg/catrobat/catroid/web/WebconnectionException;
    iget-object v1, p0, Lorg/catrobat/catroid/web/CatrobatServerCalls;->tag:Ljava/lang/String;

    move-object v2, v0

    check-cast v2, Ljava/lang/Throwable;

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    const-string v1, ""

    .line 107
    .end local v0    # "e":Lorg/catrobat/catroid/web/WebconnectionException;
    :goto_0
    return-object v1
.end method

.method public final getTags(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "language"    # Ljava/lang/String;

    .line 94
    nop

    .line 95
    :try_start_0
    const-string v0, "https://share.catrob.at/pocketcode/api/tags/getTags.json"

    .line 96
    .local v0, "serverUrl":Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 97
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "?language="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .line 99
    :cond_0
    invoke-direct {p0, v0}, Lorg/catrobat/catroid/web/CatrobatServerCalls;->getRequest(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Lorg/catrobat/catroid/web/WebconnectionException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "serverUrl":Ljava/lang/String;
    goto :goto_0

    .line 100
    :catch_0
    move-exception v0

    .line 101
    .local v0, "e":Lorg/catrobat/catroid/web/WebconnectionException;
    iget-object v1, p0, Lorg/catrobat/catroid/web/CatrobatServerCalls;->tag:Ljava/lang/String;

    move-object v2, v0

    check-cast v2, Ljava/lang/Throwable;

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    const-string v1, ""

    .line 94
    .end local v0    # "e":Lorg/catrobat/catroid/web/WebconnectionException;
    :goto_0
    return-object v1
.end method

.method public final isEMailAvailable(Ljava/lang/String;)Z
    .locals 7
    .param p1, "email"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/catrobat/catroid/web/WebconnectionException;
        }
    .end annotation

    const-string v0, "email"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 162
    nop

    .line 163
    :try_start_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 164
    .local v1, "postValues":Ljava/util/HashMap;
    move-object v2, v1

    check-cast v2, Ljava/util/Map;

    invoke-interface {v2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    const-string v0, "https://share.catrob.at/pocketcode/api/EMailAvailable/EMailAvailable.json"

    .line 167
    .local v0, "serverUrl":Ljava/lang/String;
    move-object v2, v1

    check-cast v2, Ljava/util/Map;

    invoke-static {v2, v0}, Lorg/catrobat/catroid/web/CatrobatWebClientKt;->createFormEncodedRequest(Ljava/util/Map;Ljava/lang/String;)Lokhttp3/Request;

    move-result-object v2

    .line 168
    .local v2, "request":Lokhttp3/Request;
    iget-object v3, p0, Lorg/catrobat/catroid/web/CatrobatServerCalls;->okHttpClient:Lokhttp3/OkHttpClient;

    invoke-static {v3, v2}, Lorg/catrobat/catroid/web/CatrobatWebClientKt;->performCallWith(Lokhttp3/OkHttpClient;Lokhttp3/Request;)Ljava/lang/String;

    move-result-object v3

    .line 170
    .local v3, "resultString":Ljava/lang/String;
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 171
    .local v4, "jsonObject":Lorg/json/JSONObject;
    const-string v5, "statusCode"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 172
    .local v5, "statusCode":I
    sget-object v6, Lorg/catrobat/catroid/web/ServerAuthenticationConstants;->SERVER_RESPONSE_TOKEN_OK:Ljava/lang/Integer;

    if-eqz v6, :cond_0

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ne v5, v6, :cond_0

    .line 176
    const-string v6, "email_available"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    return v6

    .line 173
    :cond_0
    new-instance v6, Lorg/catrobat/catroid/web/WebconnectionException;

    invoke-direct {v6, v5, v3}, Lorg/catrobat/catroid/web/WebconnectionException;-><init>(ILjava/lang/String;)V

    check-cast v6, Ljava/lang/Throwable;

    .end local p1    # "email":Ljava/lang/String;
    throw v6
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 177
    .end local v0    # "serverUrl":Ljava/lang/String;
    .end local v1    # "postValues":Ljava/util/HashMap;
    .end local v2    # "request":Lokhttp3/Request;
    .end local v3    # "resultString":Ljava/lang/String;
    .end local v4    # "jsonObject":Lorg/json/JSONObject;
    .end local v5    # "statusCode":I
    .restart local p1    # "email":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 178
    .local v0, "e":Lorg/json/JSONException;
    new-instance v1, Lorg/catrobat/catroid/web/WebconnectionException;

    const/16 v2, 0x3e9

    move-object v3, v0

    check-cast v3, Ljava/lang/Throwable;

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/catrobat/catroid/web/WebconnectionException;-><init>(ILjava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    throw v1
.end method

.method public final isUserNameAvailable(Ljava/lang/String;)Z
    .locals 7
    .param p1, "username"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/catrobat/catroid/web/WebconnectionException;
        }
    .end annotation

    const-string v0, "username"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 184
    const-string v1, ""

    .line 185
    .local v1, "resultString":Ljava/lang/String;
    nop

    .line 186
    :try_start_0
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 187
    .local v2, "postValues":Ljava/util/HashMap;
    move-object v3, v2

    check-cast v3, Ljava/util/Map;

    invoke-interface {v3, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    const-string v0, "https://share.catrob.at/pocketcode/api/UsernameAvailable/UsernameAvailable.json"

    .line 190
    .local v0, "serverUrl":Ljava/lang/String;
    move-object v3, v2

    check-cast v3, Ljava/util/Map;

    invoke-static {v3, v0}, Lorg/catrobat/catroid/web/CatrobatWebClientKt;->createFormEncodedRequest(Ljava/util/Map;Ljava/lang/String;)Lokhttp3/Request;

    move-result-object v3

    .line 191
    .local v3, "request":Lokhttp3/Request;
    iget-object v4, p0, Lorg/catrobat/catroid/web/CatrobatServerCalls;->okHttpClient:Lokhttp3/OkHttpClient;

    invoke-static {v4, v3}, Lorg/catrobat/catroid/web/CatrobatWebClientKt;->performCallWith(Lokhttp3/OkHttpClient;Lokhttp3/Request;)Ljava/lang/String;

    move-result-object v4

    move-object v1, v4

    .line 193
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 194
    .local v4, "jsonObject":Lorg/json/JSONObject;
    const-string v5, "statusCode"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 195
    .local v5, "statusCode":I
    sget-object v6, Lorg/catrobat/catroid/web/ServerAuthenticationConstants;->SERVER_RESPONSE_TOKEN_OK:Ljava/lang/Integer;

    if-eqz v6, :cond_0

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ne v5, v6, :cond_0

    .line 199
    const-string v6, "username_available"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    return v6

    .line 196
    :cond_0
    new-instance v6, Lorg/catrobat/catroid/web/WebconnectionException;

    invoke-direct {v6, v5, v1}, Lorg/catrobat/catroid/web/WebconnectionException;-><init>(ILjava/lang/String;)V

    check-cast v6, Ljava/lang/Throwable;

    .end local v1    # "resultString":Ljava/lang/String;
    .end local p1    # "username":Ljava/lang/String;
    throw v6
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 200
    .end local v0    # "serverUrl":Ljava/lang/String;
    .end local v2    # "postValues":Ljava/util/HashMap;
    .end local v3    # "request":Lokhttp3/Request;
    .end local v4    # "jsonObject":Lorg/json/JSONObject;
    .end local v5    # "statusCode":I
    .restart local v1    # "resultString":Ljava/lang/String;
    .restart local p1    # "username":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 201
    .local v0, "jsonException":Lorg/json/JSONException;
    iget-object v2, p0, Lorg/catrobat/catroid/web/CatrobatServerCalls;->tag:Ljava/lang/String;

    move-object v3, v0

    check-cast v3, Ljava/lang/Throwable;

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    new-instance v2, Lorg/catrobat/catroid/web/WebconnectionException;

    const/16 v3, 0x3e9

    invoke-direct {v2, v3, v1}, Lorg/catrobat/catroid/web/WebconnectionException;-><init>(ILjava/lang/String;)V

    check-cast v2, Ljava/lang/Throwable;

    throw v2
.end method
