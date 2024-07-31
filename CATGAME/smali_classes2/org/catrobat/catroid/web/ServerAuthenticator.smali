.class public final Lorg/catrobat/catroid/web/ServerAuthenticator;
.super Ljava/lang/Object;
.source "ServerAuthenticator.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/catrobat/catroid/web/ServerAuthenticator$TaskListener;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000J\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0008\u0018\u00002\u00020\u0001:\u0001,B=\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\u0003\u0012\u0006\u0010\t\u001a\u00020\n\u0012\u0006\u0010\u000b\u001a\u00020\u000c\u00a2\u0006\u0002\u0010\rJ\u0018\u0010\u001e\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020!2\u0006\u0010\"\u001a\u00020#H\u0007J\u0006\u0010$\u001a\u00020%J\u001e\u0010&\u001a\u00020%2\u0006\u0010\'\u001a\u00020\u00032\u0006\u0010(\u001a\u00020\u00032\u0006\u0010)\u001a\u00020\u0003J\u0018\u0010*\u001a\u00020%2\u0006\u0010+\u001a\u00020\u00032\u0006\u0010 \u001a\u00020!H\u0007R\u000e\u0010\u0008\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0004\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000e\u0010\u000f\"\u0004\u0008\u0010\u0010\u0011R(\u0010\u0012\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00030\u00138\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u0014\u0010\u0015\u001a\u0004\u0008\u0016\u0010\u0017R\u0011\u0010\t\u001a\u00020\n\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0018\u0010\u0019R\u0016\u0010\u001a\u001a\n \u001b*\u0004\u0018\u00010\u00030\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u000cX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001c\u0010\u000f\"\u0004\u0008\u001d\u0010\u0011\u00a8\u0006-"
    }
    d2 = {
        "Lorg/catrobat/catroid/web/ServerAuthenticator;",
        "",
        "username",
        "",
        "password",
        "token",
        "okHttpClient",
        "Lokhttp3/OkHttpClient;",
        "baseUrl",
        "sharedPreferences",
        "Landroid/content/SharedPreferences;",
        "taskListener",
        "Lorg/catrobat/catroid/web/ServerAuthenticator$TaskListener;",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lokhttp3/OkHttpClient;Ljava/lang/String;Landroid/content/SharedPreferences;Lorg/catrobat/catroid/web/ServerAuthenticator$TaskListener;)V",
        "getPassword",
        "()Ljava/lang/String;",
        "setPassword",
        "(Ljava/lang/String;)V",
        "postValues",
        "Ljava/util/HashMap;",
        "getPostValues$annotations",
        "()V",
        "getPostValues",
        "()Ljava/util/HashMap;",
        "getSharedPreferences",
        "()Landroid/content/SharedPreferences;",
        "tag",
        "kotlin.jvm.PlatformType",
        "getUsername",
        "setUsername",
        "isInvalidResponse",
        "",
        "acceptedStatusCode",
        "",
        "resultJsonObject",
        "Lorg/json/JSONObject;",
        "performCatrobatLogin",
        "",
        "performCatrobatRegister",
        "userEmail",
        "language",
        "country",
        "performTask",
        "serverUrl",
        "TaskListener",
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
.field private final baseUrl:Ljava/lang/String;

.field private final okHttpClient:Lokhttp3/OkHttpClient;

.field private password:Ljava/lang/String;

.field private final postValues:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final sharedPreferences:Landroid/content/SharedPreferences;

.field private final tag:Ljava/lang/String;

.field private final taskListener:Lorg/catrobat/catroid/web/ServerAuthenticator$TaskListener;

.field private final token:Ljava/lang/String;

.field private username:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lokhttp3/OkHttpClient;Ljava/lang/String;Landroid/content/SharedPreferences;Lorg/catrobat/catroid/web/ServerAuthenticator$TaskListener;)V
    .locals 1
    .param p1, "username"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "token"    # Ljava/lang/String;
    .param p4, "okHttpClient"    # Lokhttp3/OkHttpClient;
    .param p5, "baseUrl"    # Ljava/lang/String;
    .param p6, "sharedPreferences"    # Landroid/content/SharedPreferences;
    .param p7, "taskListener"    # Lorg/catrobat/catroid/web/ServerAuthenticator$TaskListener;

    const-string v0, "username"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "password"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "token"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "okHttpClient"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "baseUrl"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sharedPreferences"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "taskListener"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/catrobat/catroid/web/ServerAuthenticator;->username:Ljava/lang/String;

    iput-object p2, p0, Lorg/catrobat/catroid/web/ServerAuthenticator;->password:Ljava/lang/String;

    iput-object p3, p0, Lorg/catrobat/catroid/web/ServerAuthenticator;->token:Ljava/lang/String;

    iput-object p4, p0, Lorg/catrobat/catroid/web/ServerAuthenticator;->okHttpClient:Lokhttp3/OkHttpClient;

    iput-object p5, p0, Lorg/catrobat/catroid/web/ServerAuthenticator;->baseUrl:Ljava/lang/String;

    iput-object p6, p0, Lorg/catrobat/catroid/web/ServerAuthenticator;->sharedPreferences:Landroid/content/SharedPreferences;

    iput-object p7, p0, Lorg/catrobat/catroid/web/ServerAuthenticator;->taskListener:Lorg/catrobat/catroid/web/ServerAuthenticator$TaskListener;

    .line 58
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/catrobat/catroid/web/ServerAuthenticator;->postValues:Ljava/util/HashMap;

    .line 59
    const-class v0, Lorg/catrobat/catroid/web/ServerAuthenticator;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/catrobat/catroid/web/ServerAuthenticator;->tag:Ljava/lang/String;

    return-void
.end method

.method public static synthetic getPostValues$annotations()V
    .locals 0

    return-void
.end method


# virtual methods
.method public final getPassword()Ljava/lang/String;
    .locals 1

    .line 49
    iget-object v0, p0, Lorg/catrobat/catroid/web/ServerAuthenticator;->password:Ljava/lang/String;

    return-object v0
.end method

.method public final getPostValues()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 58
    iget-object v0, p0, Lorg/catrobat/catroid/web/ServerAuthenticator;->postValues:Ljava/util/HashMap;

    return-object v0
.end method

.method public final getSharedPreferences()Landroid/content/SharedPreferences;
    .locals 1

    .line 53
    iget-object v0, p0, Lorg/catrobat/catroid/web/ServerAuthenticator;->sharedPreferences:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method public final getUsername()Ljava/lang/String;
    .locals 1

    .line 48
    iget-object v0, p0, Lorg/catrobat/catroid/web/ServerAuthenticator;->username:Ljava/lang/String;

    return-object v0
.end method

.method public final isInvalidResponse(ILorg/json/JSONObject;)Z
    .locals 7
    .param p1, "acceptedStatusCode"    # I
    .param p2, "resultJsonObject"    # Lorg/json/JSONObject;

    const-string v0, "resultJsonObject"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 128
    const-string v0, "statusCode"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    .line 129
    .local v0, "statusCode":I
    const-string v1, "answer"

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 130
    .local v1, "serverAnswer":Ljava/lang/String;
    const-string v2, "token"

    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 132
    .local v2, "tokenReceived":Ljava/lang/String;
    const/4 v3, 0x1

    if-eq p1, v0, :cond_0

    .line 133
    iget-object v4, p0, Lorg/catrobat/catroid/web/ServerAuthenticator;->tag:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Not accepted StatusCode: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "; Server Answer: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    return v3

    .line 136
    :cond_0
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0x20

    if-eq v4, v5, :cond_1

    .line 137
    iget-object v4, p0, Lorg/catrobat/catroid/web/ServerAuthenticator;->tag:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invlaid TokenError: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "; StatusCode: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " Server Answer: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    return v3

    .line 140
    :cond_1
    const/4 v3, 0x0

    return v3
.end method

.method public final performCatrobatLogin()V
    .locals 3

    .line 80
    iget-object v0, p0, Lorg/catrobat/catroid/web/ServerAuthenticator;->postValues:Ljava/util/HashMap;

    check-cast v0, Ljava/util/Map;

    iget-object v1, p0, Lorg/catrobat/catroid/web/ServerAuthenticator;->username:Ljava/lang/String;

    const-string v2, "registrationUsername"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    iget-object v0, p0, Lorg/catrobat/catroid/web/ServerAuthenticator;->postValues:Ljava/util/HashMap;

    check-cast v0, Ljava/util/Map;

    iget-object v1, p0, Lorg/catrobat/catroid/web/ServerAuthenticator;->password:Ljava/lang/String;

    const-string v2, "registrationPassword"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    iget-object v0, p0, Lorg/catrobat/catroid/web/ServerAuthenticator;->token:Ljava/lang/String;

    const-string v1, "no_token"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lorg/catrobat/catroid/web/ServerAuthenticator;->postValues:Ljava/util/HashMap;

    check-cast v0, Ljava/util/Map;

    iget-object v1, p0, Lorg/catrobat/catroid/web/ServerAuthenticator;->token:Ljava/lang/String;

    const-string v2, "token"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/catrobat/catroid/web/ServerAuthenticator;->baseUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "api/login/Login.json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 86
    .local v0, "url":Ljava/lang/String;
    sget-object v1, Lorg/catrobat/catroid/web/ServerAuthenticationConstants;->SERVER_RESPONSE_TOKEN_OK:Ljava/lang/Integer;

    const-string v2, "SERVER_RESPONSE_TOKEN_OK"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lorg/catrobat/catroid/web/ServerAuthenticator;->performTask(Ljava/lang/String;I)V

    .line 87
    return-void
.end method

.method public final performCatrobatRegister(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "userEmail"    # Ljava/lang/String;
    .param p2, "language"    # Ljava/lang/String;
    .param p3, "country"    # Ljava/lang/String;

    const-string v0, "userEmail"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "language"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "country"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    iget-object v0, p0, Lorg/catrobat/catroid/web/ServerAuthenticator;->postValues:Ljava/util/HashMap;

    check-cast v0, Ljava/util/Map;

    iget-object v1, p0, Lorg/catrobat/catroid/web/ServerAuthenticator;->username:Ljava/lang/String;

    const-string v2, "registrationUsername"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    iget-object v0, p0, Lorg/catrobat/catroid/web/ServerAuthenticator;->postValues:Ljava/util/HashMap;

    check-cast v0, Ljava/util/Map;

    iget-object v1, p0, Lorg/catrobat/catroid/web/ServerAuthenticator;->password:Ljava/lang/String;

    const-string v2, "registrationPassword"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    iget-object v0, p0, Lorg/catrobat/catroid/web/ServerAuthenticator;->postValues:Ljava/util/HashMap;

    check-cast v0, Ljava/util/Map;

    const-string v1, "registrationEmail"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    iget-object v0, p0, Lorg/catrobat/catroid/web/ServerAuthenticator;->token:Ljava/lang/String;

    const-string v1, "no_token"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lorg/catrobat/catroid/web/ServerAuthenticator;->postValues:Ljava/util/HashMap;

    check-cast v0, Ljava/util/Map;

    iget-object v1, p0, Lorg/catrobat/catroid/web/ServerAuthenticator;->token:Ljava/lang/String;

    const-string v2, "token"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    :cond_0
    iget-object v0, p0, Lorg/catrobat/catroid/web/ServerAuthenticator;->postValues:Ljava/util/HashMap;

    check-cast v0, Ljava/util/Map;

    const-string v1, "registrationCountry"

    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    iget-object v0, p0, Lorg/catrobat/catroid/web/ServerAuthenticator;->postValues:Ljava/util/HashMap;

    check-cast v0, Ljava/util/Map;

    const-string v1, "deviceLanguage"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/catrobat/catroid/web/ServerAuthenticator;->baseUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "api/register/Register.json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 76
    .local v0, "url":Ljava/lang/String;
    sget-object v1, Lorg/catrobat/catroid/web/ServerAuthenticationConstants;->SERVER_RESPONSE_REGISTER_OK:Ljava/lang/Integer;

    const-string v2, "SERVER_RESPONSE_REGISTER_OK"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lorg/catrobat/catroid/web/ServerAuthenticator;->performTask(Ljava/lang/String;I)V

    .line 77
    return-void
.end method

.method public final performTask(Ljava/lang/String;I)V
    .locals 7
    .param p1, "serverUrl"    # Ljava/lang/String;
    .param p2, "acceptedStatusCode"    # I

    const-string v0, "serverUrl"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 94
    nop

    .line 95
    :try_start_0
    iget-object v0, p0, Lorg/catrobat/catroid/web/ServerAuthenticator;->postValues:Ljava/util/HashMap;

    check-cast v0, Ljava/util/Map;

    invoke-static {v0, p1}, Lorg/catrobat/catroid/web/CatrobatWebClientKt;->createFormEncodedRequest(Ljava/util/Map;Ljava/lang/String;)Lokhttp3/Request;

    move-result-object v0

    .line 96
    .local v0, "request":Lokhttp3/Request;
    iget-object v1, p0, Lorg/catrobat/catroid/web/ServerAuthenticator;->okHttpClient:Lokhttp3/OkHttpClient;

    invoke-static {v1, v0}, Lorg/catrobat/catroid/web/CatrobatWebClientKt;->performCallWith(Lokhttp3/OkHttpClient;Lokhttp3/Request;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Lorg/catrobat/catroid/web/WebconnectionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    .end local v0    # "request":Lokhttp3/Request;
    move-object v0, v1

    .line 105
    .local v0, "resultString":Ljava/lang/String;
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 106
    .local v1, "resultJsonObject":Lorg/json/JSONObject;
    invoke-virtual {p0, p2, v1}, Lorg/catrobat/catroid/web/ServerAuthenticator;->isInvalidResponse(ILorg/json/JSONObject;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 107
    const-string v2, "statusCode"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    .line 108
    .local v2, "statusCode":I
    const-string v3, "answer"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 109
    .local v3, "serverAnswer":Ljava/lang/String;
    iget-object v4, p0, Lorg/catrobat/catroid/web/ServerAuthenticator;->taskListener:Lorg/catrobat/catroid/web/ServerAuthenticator$TaskListener;

    invoke-interface {v4, v2, v3}, Lorg/catrobat/catroid/web/ServerAuthenticator$TaskListener;->onError(ILjava/lang/String;)V

    .line 110
    return-void

    .line 113
    .end local v2    # "statusCode":I
    .end local v3    # "serverAnswer":Ljava/lang/String;
    :cond_0
    const-string v2, "token"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 114
    .local v3, "tokenReceived":Ljava/lang/String;
    iget-object v4, p0, Lorg/catrobat/catroid/web/ServerAuthenticator;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    .line 115
    .local v4, "sharedPreferencesEditor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v4, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 116
    iget-object v2, p0, Lorg/catrobat/catroid/web/ServerAuthenticator;->username:Ljava/lang/String;

    const-string v5, "username"

    invoke-interface {v4, v5, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 118
    const-string v2, "email"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 119
    .local v5, "eMail":Ljava/lang/String;
    const-string v6, "eMail"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v6, v5

    check-cast v6, Ljava/lang/CharSequence;

    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-lez v6, :cond_1

    const/4 v6, 0x1

    goto :goto_0

    :cond_1
    const/4 v6, 0x0

    :goto_0
    if-eqz v6, :cond_2

    .line 120
    invoke-interface {v4, v2, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 122
    :cond_2
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 123
    iget-object v2, p0, Lorg/catrobat/catroid/web/ServerAuthenticator;->taskListener:Lorg/catrobat/catroid/web/ServerAuthenticator$TaskListener;

    invoke-interface {v2}, Lorg/catrobat/catroid/web/ServerAuthenticator$TaskListener;->onSuccess()V

    .line 124
    return-void

    .line 97
    .end local v0    # "resultString":Ljava/lang/String;
    .end local v1    # "resultJsonObject":Lorg/json/JSONObject;
    .end local v3    # "tokenReceived":Ljava/lang/String;
    .end local v4    # "sharedPreferencesEditor":Landroid/content/SharedPreferences$Editor;
    .end local v5    # "eMail":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 98
    .local v0, "exception":Lorg/catrobat/catroid/web/WebconnectionException;
    invoke-virtual {v0}, Lorg/catrobat/catroid/web/WebconnectionException;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    .local v1, "it":Ljava/lang/String;
    const/4 v2, 0x0

    .line 99
    .local v2, "$i$a$-let-ServerAuthenticator$performTask$resultString$1":I
    iget-object v3, p0, Lorg/catrobat/catroid/web/ServerAuthenticator;->tag:Ljava/lang/String;

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    .end local v1    # "it":Ljava/lang/String;
    .end local v2    # "$i$a$-let-ServerAuthenticator$performTask$resultString$1":I
    nop

    .line 101
    :cond_3
    iget-object v1, p0, Lorg/catrobat/catroid/web/ServerAuthenticator;->taskListener:Lorg/catrobat/catroid/web/ServerAuthenticator$TaskListener;

    invoke-virtual {v0}, Lorg/catrobat/catroid/web/WebconnectionException;->getStatusCode()I

    move-result v2

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lorg/catrobat/catroid/web/ServerAuthenticator$TaskListener;->onError(ILjava/lang/String;)V

    .line 102
    return-void
.end method

.method public final setPassword(Ljava/lang/String;)V
    .locals 1
    .param p1, "<set-?>"    # Ljava/lang/String;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    iput-object p1, p0, Lorg/catrobat/catroid/web/ServerAuthenticator;->password:Ljava/lang/String;

    return-void
.end method

.method public final setUsername(Ljava/lang/String;)V
    .locals 1
    .param p1, "<set-?>"    # Ljava/lang/String;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    iput-object p1, p0, Lorg/catrobat/catroid/web/ServerAuthenticator;->username:Ljava/lang/String;

    return-void
.end method
