.class public final Lorg/catrobat/catroid/TrustedDomainManager;
.super Ljava/lang/Object;
.source "TrustedDomainManager.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u0004J\u0010\u0010\u0015\u001a\u00020\u00042\u0006\u0010\u0016\u001a\u00020\u0004H\u0002J\u0010\u0010\u0017\u001a\u00020\t2\u0006\u0010\u0018\u001a\u00020\u0019H\u0002J\u0006\u0010\u001a\u001a\u00020\u0004J\n\u0010\u001b\u001a\u0004\u0018\u00010\tH\u0002J\n\u0010\u001c\u001a\u0004\u0018\u00010\tH\u0002J\u000e\u0010\u001d\u001a\u00020\u00132\u0006\u0010\u001e\u001a\u00020\u0004J\u0008\u0010\u001f\u001a\u00020\u0013H\u0007J\u000e\u0010 \u001a\u00020\u00132\u0006\u0010\u0018\u001a\u00020\u0004R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0006\u001a\n \u0007*\u0004\u0018\u00010\u00040\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001d\u0010\u0008\u001a\u0004\u0018\u00010\t8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u000c\u0010\r\u001a\u0004\u0008\n\u0010\u000bR\u001c\u0010\u000e\u001a\u0004\u0018\u00010\tX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000f\u0010\u000b\"\u0004\u0008\u0010\u0010\u0011\u00a8\u0006!"
    }
    d2 = {
        "Lorg/catrobat/catroid/TrustedDomainManager;",
        "",
        "()V",
        "PARSE_ERROR_LOG",
        "",
        "READ_ERROR_LOG",
        "TAG",
        "kotlin.jvm.PlatformType",
        "trustListPattern",
        "Ljava/util/regex/Pattern;",
        "getTrustListPattern",
        "()Ljava/util/regex/Pattern;",
        "trustListPattern$delegate",
        "Lkotlin/Lazy;",
        "userTrustListPattern",
        "getUserTrustListPattern",
        "setUserTrustListPattern",
        "(Ljava/util/regex/Pattern;)V",
        "addToUserTrustList",
        "",
        "domain",
        "cleanUpUserInput",
        "string",
        "getTrustListPatternFromDomains",
        "domains",
        "Lorg/json/JSONArray;",
        "getUserTrustList",
        "initializeTrustListPattern",
        "initializeUserTrustListPattern",
        "isURLTrusted",
        "url",
        "resetUserTrustList",
        "setUserTrustList",
        "catroid_catroidDebug"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# static fields
.field public static final INSTANCE:Lorg/catrobat/catroid/TrustedDomainManager;

.field private static final PARSE_ERROR_LOG:Ljava/lang/String; = "Cannot parse trusted domains"

.field private static final READ_ERROR_LOG:Ljava/lang/String; = "Cannot read trusted domains"

.field private static final TAG:Ljava/lang/String;

.field private static final trustListPattern$delegate:Lkotlin/Lazy;

.field private static userTrustListPattern:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 39
    new-instance v0, Lorg/catrobat/catroid/TrustedDomainManager;

    invoke-direct {v0}, Lorg/catrobat/catroid/TrustedDomainManager;-><init>()V

    sput-object v0, Lorg/catrobat/catroid/TrustedDomainManager;->INSTANCE:Lorg/catrobat/catroid/TrustedDomainManager;

    .line 40
    const-class v0, Lorg/catrobat/catroid/TrustedDomainManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/catrobat/catroid/TrustedDomainManager;->TAG:Ljava/lang/String;

    .line 44
    sget-object v0, Lorg/catrobat/catroid/TrustedDomainManager$trustListPattern$2;->INSTANCE:Lorg/catrobat/catroid/TrustedDomainManager$trustListPattern$2;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lorg/catrobat/catroid/TrustedDomainManager;->trustListPattern$delegate:Lkotlin/Lazy;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$initializeTrustListPattern(Lorg/catrobat/catroid/TrustedDomainManager;)Ljava/util/regex/Pattern;
    .locals 1
    .param p0, "$this"    # Lorg/catrobat/catroid/TrustedDomainManager;

    .line 39
    invoke-direct {p0}, Lorg/catrobat/catroid/TrustedDomainManager;->initializeTrustListPattern()Ljava/util/regex/Pattern;

    move-result-object v0

    return-object v0
.end method

.method private final cleanUpUserInput(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "string"    # Ljava/lang/String;

    .line 178
    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    new-instance v1, Lkotlin/text/Regex;

    const-string v2, "[ \"{}\\[\\]]|(\\n){2,}"

    invoke-direct {v1, v2}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    const-string v2, ""

    invoke-virtual {v1, v0, v2}, Lkotlin/text/Regex;->replace(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\n"

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v0, v1}, Lkotlin/text/StringsKt;->removeSuffix(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private final getTrustListPattern()Ljava/util/regex/Pattern;
    .locals 1

    sget-object v0, Lorg/catrobat/catroid/TrustedDomainManager;->trustListPattern$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/regex/Pattern;

    return-object v0
.end method

.method private final getTrustListPatternFromDomains(Lorg/json/JSONArray;)Ljava/util/regex/Pattern;
    .locals 5
    .param p1, "domains"    # Lorg/json/JSONArray;

    .line 161
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 162
    .local v0, "trustedDomains":Ljava/lang/StringBuilder;
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 163
    .local v2, "i":I
    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_0

    .line 165
    const/16 v3, 0x7c

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 162
    :cond_0
    nop

    .end local v2    # "i":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 168
    :cond_1
    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 170
    nop

    .line 171
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "https?://([a-zA-Z0-9-]+\\.)*"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "trustedDomains.toString()"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Ljava/lang/CharSequence;

    new-instance v3, Lkotlin/text/Regex;

    const-string v4, "\\."

    invoke-direct {v3, v4}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    const-string v4, "\\\\."

    invoke-virtual {v3, v2, v4}, Lkotlin/text/Regex;->replace(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "(:[0-9]{1,5})?(/.*)?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 170
    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    const-string v2, "Pattern.compile(\n       \u2026]{1,5})?(/.*)?\"\n        )"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v1
.end method

.method private final initializeTrustListPattern()Ljava/util/regex/Pattern;
    .locals 9

    .line 123
    const-string v0, "domains"

    .line 124
    nop

    .line 127
    nop

    .line 124
    nop

    .line 125
    const/4 v1, 0x0

    :try_start_0
    invoke-static {}, Lorg/catrobat/catroid/CatroidApplication;->getAppContext()Landroid/content/Context;

    move-result-object v2

    .line 126
    const-string v3, "trustedDomains.json"

    .line 124
    invoke-static {v2, v3}, Lorg/catrobat/catroid/utils/Utils;->getInputStreamFromAsset(Landroid/content/Context;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    check-cast v2, Ljava/io/Closeable;

    .line 127
    move-object v3, v1

    check-cast v3, Ljava/lang/Throwable;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    move-object v4, v2

    check-cast v4, Ljava/io/InputStream;

    .local v4, "it":Ljava/io/InputStream;
    const/4 v5, 0x0

    .line 128
    .local v5, "$i$a$-use-TrustedDomainManager$initializeTrustListPattern$1":I
    invoke-static {v4}, Lorg/catrobat/catroid/utils/Utils;->getJsonObjectFromInputStream(Ljava/io/InputStream;)Lorg/json/JSONObject;

    move-result-object v6

    .line 129
    .local v6, "trustList":Lorg/json/JSONObject;
    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    .line 130
    .local v7, "domains":Lorg/json/JSONArray;
    sget-object v8, Lorg/catrobat/catroid/TrustedDomainManager;->INSTANCE:Lorg/catrobat/catroid/TrustedDomainManager;

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v8, v7}, Lorg/catrobat/catroid/TrustedDomainManager;->getTrustListPatternFromDomains(Lorg/json/JSONArray;)Ljava/util/regex/Pattern;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v4    # "it":Ljava/io/InputStream;
    .end local v5    # "$i$a$-use-TrustedDomainManager$initializeTrustListPattern$1":I
    .end local v6    # "trustList":Lorg/json/JSONObject;
    .end local v7    # "domains":Lorg/json/JSONArray;
    :try_start_2
    invoke-static {v2, v3}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    return-object v0

    .line 127
    :catchall_0
    move-exception v0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v3

    :try_start_4
    invoke-static {v2, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v3
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_0

    .line 135
    :catch_0
    move-exception v0

    .line 136
    .local v0, "e":Lorg/json/JSONException;
    sget-object v2, Lorg/catrobat/catroid/TrustedDomainManager;->TAG:Ljava/lang/String;

    move-object v3, v0

    check-cast v3, Ljava/lang/Throwable;

    const-string v4, "Cannot parse trusted domains"

    invoke-static {v2, v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 137
    return-object v1

    .line 132
    .end local v0    # "e":Lorg/json/JSONException;
    :catch_1
    move-exception v0

    .line 133
    .local v0, "e":Ljava/io/IOException;
    sget-object v2, Lorg/catrobat/catroid/TrustedDomainManager;->TAG:Ljava/lang/String;

    move-object v3, v0

    check-cast v3, Ljava/lang/Throwable;

    const-string v4, "Cannot read trusted domains"

    invoke-static {v2, v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 134
    return-object v1
.end method

.method private final initializeUserTrustListPattern()Ljava/util/regex/Pattern;
    .locals 9

    .line 142
    const-string v0, "domains"

    .line 143
    const/4 v1, 0x0

    :try_start_0
    sget-object v2, Lorg/catrobat/catroid/common/Constants;->TRUSTED_USER_DOMAINS_FILE:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 144
    return-object v1

    .line 146
    :cond_0
    sget-object v2, Lorg/catrobat/catroid/common/Constants;->TRUSTED_USER_DOMAINS_FILE:Ljava/io/File;

    const-string v3, "TRUSTED_USER_DOMAINS_FILE"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    check-cast v3, Ljava/io/Closeable;

    move-object v2, v1

    check-cast v2, Ljava/lang/Throwable;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    move-object v4, v3

    check-cast v4, Ljava/io/FileInputStream;

    .local v4, "it":Ljava/io/FileInputStream;
    const/4 v5, 0x0

    .line 147
    .local v5, "$i$a$-use-TrustedDomainManager$initializeUserTrustListPattern$1":I
    move-object v6, v4

    check-cast v6, Ljava/io/InputStream;

    invoke-static {v6}, Lorg/catrobat/catroid/utils/Utils;->getJsonObjectFromInputStream(Ljava/io/InputStream;)Lorg/json/JSONObject;

    move-result-object v6

    .line 148
    .local v6, "trustList":Lorg/json/JSONObject;
    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    .line 149
    .local v7, "domains":Lorg/json/JSONArray;
    sget-object v8, Lorg/catrobat/catroid/TrustedDomainManager;->INSTANCE:Lorg/catrobat/catroid/TrustedDomainManager;

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v8, v7}, Lorg/catrobat/catroid/TrustedDomainManager;->getTrustListPatternFromDomains(Lorg/json/JSONArray;)Ljava/util/regex/Pattern;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v4    # "it":Ljava/io/FileInputStream;
    .end local v5    # "$i$a$-use-TrustedDomainManager$initializeUserTrustListPattern$1":I
    .end local v6    # "trustList":Lorg/json/JSONObject;
    .end local v7    # "domains":Lorg/json/JSONArray;
    :try_start_2
    invoke-static {v3, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    return-object v0

    .line 146
    :catchall_0
    move-exception v0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v2

    :try_start_4
    invoke-static {v3, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v2
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_0

    .line 154
    :catch_0
    move-exception v0

    .line 155
    .local v0, "e":Lorg/json/JSONException;
    sget-object v2, Lorg/catrobat/catroid/TrustedDomainManager;->TAG:Ljava/lang/String;

    move-object v3, v0

    check-cast v3, Ljava/lang/Throwable;

    const-string v4, "Cannot parse trusted domains"

    invoke-static {v2, v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 156
    return-object v1

    .line 151
    .end local v0    # "e":Lorg/json/JSONException;
    :catch_1
    move-exception v0

    .line 152
    .local v0, "e":Ljava/io/IOException;
    sget-object v2, Lorg/catrobat/catroid/TrustedDomainManager;->TAG:Ljava/lang/String;

    move-object v3, v0

    check-cast v3, Ljava/lang/Throwable;

    const-string v4, "Cannot read trusted domains"

    invoke-static {v2, v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 153
    return-object v1
.end method


# virtual methods
.method public final addToUserTrustList(Ljava/lang/String;)Z
    .locals 11
    .param p1, "domain"    # Ljava/lang/String;

    const-string v0, "domain"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    nop

    .line 60
    nop

    .line 61
    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lorg/catrobat/catroid/common/Constants;->TRUSTED_USER_DOMAINS_FILE:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "TRUSTED_USER_DOMAINS_FILE"

    const-string v3, "domains"

    const/4 v4, 0x0

    if-eqz v1, :cond_0

    .line 62
    :try_start_1
    sget-object v1, Lorg/catrobat/catroid/common/Constants;->TRUSTED_USER_DOMAINS_FILE:Ljava/io/File;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    check-cast v5, Ljava/io/Closeable;

    move-object v1, v4

    check-cast v1, Ljava/lang/Throwable;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    move-object v6, v5

    check-cast v6, Ljava/io/FileInputStream;

    .local v6, "it":Ljava/io/FileInputStream;
    const/4 v7, 0x0

    .line 63
    .local v7, "$i$a$-use-TrustedDomainManager$addToUserTrustList$domains$1":I
    move-object v8, v6

    check-cast v8, Ljava/io/InputStream;

    invoke-static {v8}, Lorg/catrobat/catroid/utils/Utils;->getJsonObjectFromInputStream(Ljava/io/InputStream;)Lorg/json/JSONObject;

    move-result-object v8

    .line 64
    .local v8, "trustList":Lorg/json/JSONObject;
    invoke-virtual {v8, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v9

    sget-object v10, Lorg/catrobat/catroid/TrustedDomainManager;->INSTANCE:Lorg/catrobat/catroid/TrustedDomainManager;

    invoke-direct {v10, p1}, Lorg/catrobat/catroid/TrustedDomainManager;->cleanUpUserInput(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 62
    .end local v6    # "it":Ljava/io/FileInputStream;
    .end local v7    # "$i$a$-use-TrustedDomainManager$addToUserTrustList$domains$1":I
    .end local v8    # "trustList":Lorg/json/JSONObject;
    :try_start_3
    invoke-static {v5, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .end local p1    # "domain":Ljava/lang/String;
    :try_start_4
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .restart local p1    # "domain":Ljava/lang/String;
    :catchall_1
    move-exception v2

    :try_start_5
    invoke-static {v5, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .end local p1    # "domain":Ljava/lang/String;
    throw v2

    .line 66
    .restart local p1    # "domain":Ljava/lang/String;
    :cond_0
    sget-object v1, Lorg/catrobat/catroid/common/Constants;->TRUSTED_USER_DOMAINS_FILE:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v9, Lorg/json/JSONArray;

    invoke-direct {p0, p1}, Lorg/catrobat/catroid/TrustedDomainManager;->cleanUpUserInput(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-direct {v9, v1}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    .line 60
    :goto_0
    move-object v1, v9

    .line 69
    .local v1, "domains":Lorg/json/JSONArray;
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lorg/catrobat/catroid/TrustedDomainManager;->getTrustListPatternFromDomains(Lorg/json/JSONArray;)Ljava/util/regex/Pattern;

    move-result-object v5

    sput-object v5, Lorg/catrobat/catroid/TrustedDomainManager;->userTrustListPattern:Ljava/util/regex/Pattern;

    .line 70
    new-instance v5, Lorg/json/JSONObject;

    invoke-static {v3, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    invoke-static {v3}, Lkotlin/collections/MapsKt;->mapOf(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v3

    invoke-direct {v5, v3}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    move-object v3, v5

    .line 71
    .local v3, "trustList":Lorg/json/JSONObject;
    sget-object v5, Lorg/catrobat/catroid/common/Constants;->TRUSTED_USER_DOMAINS_FILE:Ljava/io/File;

    invoke-static {v5, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x4

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object v2

    const-string v6, "trustList.toString(JSON_INDENTATION)"

    invoke-static {v2, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v6, 0x2

    invoke-static {v5, v2, v4, v6, v4}, Lkotlin/io/FilesKt;->writeText$default(Ljava/io/File;Ljava/lang/String;Ljava/nio/charset/Charset;ILjava/lang/Object;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_0

    .line 72
    const/4 v0, 0x1

    return v0

    .line 67
    .end local v1    # "domains":Lorg/json/JSONArray;
    .end local v3    # "trustList":Lorg/json/JSONObject;
    :cond_1
    return v0

    .line 76
    :catch_0
    move-exception v1

    .line 77
    .local v1, "e":Lorg/json/JSONException;
    sget-object v2, Lorg/catrobat/catroid/TrustedDomainManager;->TAG:Ljava/lang/String;

    move-object v3, v1

    check-cast v3, Ljava/lang/Throwable;

    const-string v4, "Cannot parse trusted domains"

    invoke-static {v2, v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 78
    return v0

    .line 73
    .end local v1    # "e":Lorg/json/JSONException;
    :catch_1
    move-exception v1

    .line 74
    .local v1, "e":Ljava/io/IOException;
    sget-object v2, Lorg/catrobat/catroid/TrustedDomainManager;->TAG:Ljava/lang/String;

    move-object v3, v1

    check-cast v3, Ljava/lang/Throwable;

    const-string v4, "Cannot read trusted domains"

    invoke-static {v2, v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 75
    return v0
.end method

.method public final getUserTrustList()Ljava/lang/String;
    .locals 10

    .line 83
    const-string v0, ""

    .line 84
    :try_start_0
    sget-object v1, Lorg/catrobat/catroid/common/Constants;->TRUSTED_USER_DOMAINS_FILE:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 85
    sget-object v1, Lorg/catrobat/catroid/common/Constants;->TRUSTED_USER_DOMAINS_FILE:Ljava/io/File;

    const-string v2, "TRUSTED_USER_DOMAINS_FILE"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    check-cast v2, Ljava/io/Closeable;

    const/4 v1, 0x0

    check-cast v1, Ljava/lang/Throwable;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    move-object v3, v2

    check-cast v3, Ljava/io/FileInputStream;

    .local v3, "it":Ljava/io/FileInputStream;
    const/4 v4, 0x0

    .line 86
    .local v4, "$i$a$-use-TrustedDomainManager$getUserTrustList$1":I
    move-object v5, v3

    check-cast v5, Ljava/io/InputStream;

    invoke-static {v5}, Lorg/catrobat/catroid/utils/Utils;->getJsonObjectFromInputStream(Ljava/io/InputStream;)Lorg/json/JSONObject;

    move-result-object v5

    .line 87
    .local v5, "trustList":Lorg/json/JSONObject;
    const-string v6, "domains"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    .line 88
    .local v6, "domains":Lorg/json/JSONArray;
    sget-object v7, Lorg/catrobat/catroid/TrustedDomainManager;->INSTANCE:Lorg/catrobat/catroid/TrustedDomainManager;

    const-string v8, "\n"

    invoke-virtual {v6, v8}, Lorg/json/JSONArray;->join(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "domains.join(\"\\n\")"

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v7, v8}, Lorg/catrobat/catroid/TrustedDomainManager;->cleanUpUserInput(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 85
    .end local v3    # "it":Ljava/io/FileInputStream;
    .end local v4    # "$i$a$-use-TrustedDomainManager$getUserTrustList$1":I
    .end local v5    # "trustList":Lorg/json/JSONObject;
    .end local v6    # "domains":Lorg/json/JSONArray;
    :try_start_2
    invoke-static {v2, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v0, v7

    goto :goto_0

    :catchall_0
    move-exception v1

    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v3

    :try_start_4
    invoke-static {v2, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v3
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_0

    .line 90
    :cond_0
    nop

    .line 84
    :goto_0
    goto :goto_1

    .line 94
    :catch_0
    move-exception v1

    .line 95
    .local v1, "e":Lorg/json/JSONException;
    sget-object v2, Lorg/catrobat/catroid/TrustedDomainManager;->TAG:Ljava/lang/String;

    move-object v3, v1

    check-cast v3, Ljava/lang/Throwable;

    const-string v4, "Cannot parse trusted domains"

    invoke-static {v2, v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 96
    goto :goto_1

    .line 91
    .end local v1    # "e":Lorg/json/JSONException;
    :catch_1
    move-exception v1

    .line 92
    .local v1, "e":Ljava/io/IOException;
    sget-object v2, Lorg/catrobat/catroid/TrustedDomainManager;->TAG:Ljava/lang/String;

    move-object v3, v1

    check-cast v3, Ljava/lang/Throwable;

    const-string v4, "Cannot read trusted domains"

    invoke-static {v2, v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 93
    nop

    .line 83
    .end local v1    # "e":Ljava/io/IOException;
    :goto_1
    return-object v0
.end method

.method public final getUserTrustListPattern()Ljava/util/regex/Pattern;
    .locals 1

    .line 47
    sget-object v0, Lorg/catrobat/catroid/TrustedDomainManager;->userTrustListPattern:Ljava/util/regex/Pattern;

    return-object v0
.end method

.method public final declared-synchronized isURLTrusted(Ljava/lang/String;)Z
    .locals 3
    .param p1, "url"    # Ljava/lang/String;

    monitor-enter p0

    :try_start_0
    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    sget-object v0, Lorg/catrobat/catroid/TrustedDomainManager;->userTrustListPattern:Ljava/util/regex/Pattern;

    if-nez v0, :cond_0

    .line 52
    invoke-direct {p0}, Lorg/catrobat/catroid/TrustedDomainManager;->initializeUserTrustListPattern()Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/catrobat/catroid/TrustedDomainManager;->userTrustListPattern:Ljava/util/regex/Pattern;

    .line 54
    .end local p0    # "this":Lorg/catrobat/catroid/TrustedDomainManager;
    :cond_0
    nop

    .line 55
    invoke-direct {p0}, Lorg/catrobat/catroid/TrustedDomainManager;->getTrustListPattern()Ljava/util/regex/Pattern;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 54
    move-object v2, p1

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    if-nez v0, :cond_3

    sget-object v0, Lorg/catrobat/catroid/TrustedDomainManager;->userTrustListPattern:Ljava/util/regex/Pattern;

    if-eqz v0, :cond_2

    .line 55
    move-object v2, p1

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_2
    move v0, v1

    :goto_1
    if-eqz v0, :cond_4

    :cond_3
    const/4 v1, 0x1

    .line 54
    :cond_4
    monitor-exit p0

    return v1

    .line 50
    .end local p1    # "url":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final resetUserTrustList()Z
    .locals 1

    .line 182
    const/4 v0, 0x0

    check-cast v0, Ljava/util/regex/Pattern;

    sput-object v0, Lorg/catrobat/catroid/TrustedDomainManager;->userTrustListPattern:Ljava/util/regex/Pattern;

    .line 183
    sget-object v0, Lorg/catrobat/catroid/common/Constants;->TRUSTED_USER_DOMAINS_FILE:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    return v0
.end method

.method public final setUserTrustList(Ljava/lang/String;)Z
    .locals 10
    .param p1, "domains"    # Ljava/lang/String;

    const-string v0, "domains"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 101
    nop

    .line 102
    nop

    .line 103
    const/4 v1, 0x0

    :try_start_0
    move-object v2, p1

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v2}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lorg/catrobat/catroid/TrustedDomainManager;->resetUserTrustList()Z

    move-result v1

    goto :goto_1

    .line 104
    :cond_0
    sget-object v2, Lorg/catrobat/catroid/common/Constants;->TRUSTED_USER_DOMAINS_FILE:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_2

    sget-object v2, Lorg/catrobat/catroid/common/Constants;->TRUSTED_USER_DOMAINS_FILE:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 111
    :cond_1
    goto :goto_1

    .line 105
    :cond_2
    :goto_0
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {p0, p1}, Lorg/catrobat/catroid/TrustedDomainManager;->cleanUpUserInput(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Ljava/lang/CharSequence;

    const-string v3, "\n"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x6

    const/4 v9, 0x0

    invoke-static/range {v4 .. v9}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v3

    check-cast v3, Ljava/util/Collection;

    invoke-direct {v2, v3}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    .line 106
    .local v2, "jsonArray":Lorg/json/JSONArray;
    invoke-direct {p0, v2}, Lorg/catrobat/catroid/TrustedDomainManager;->getTrustListPatternFromDomains(Lorg/json/JSONArray;)Ljava/util/regex/Pattern;

    move-result-object v3

    sput-object v3, Lorg/catrobat/catroid/TrustedDomainManager;->userTrustListPattern:Ljava/util/regex/Pattern;

    .line 107
    new-instance v3, Lorg/json/JSONObject;

    invoke-static {v0, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/MapsKt;->mapOf(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v0

    invoke-direct {v3, v0}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    move-object v0, v3

    .line 108
    .local v0, "trustList":Lorg/json/JSONObject;
    sget-object v3, Lorg/catrobat/catroid/common/Constants;->TRUSTED_USER_DOMAINS_FILE:Ljava/io/File;

    const-string v4, "TRUSTED_USER_DOMAINS_FILE"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x4

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "trustList.toString(JSON_INDENTATION)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static {v3, v4, v6, v5, v6}, Lkotlin/io/FilesKt;->writeText$default(Ljava/io/File;Ljava/lang/String;Ljava/nio/charset/Charset;ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    const/4 v1, 0x1

    .line 102
    .end local v0    # "trustList":Lorg/json/JSONObject;
    .end local v2    # "jsonArray":Lorg/json/JSONArray;
    :goto_1
    return v1

    .line 116
    :catch_0
    move-exception v0

    .line 117
    .local v0, "e":Lorg/json/JSONException;
    sget-object v2, Lorg/catrobat/catroid/TrustedDomainManager;->TAG:Ljava/lang/String;

    move-object v3, v0

    check-cast v3, Ljava/lang/Throwable;

    const-string v4, "Cannot parse trusted domains"

    invoke-static {v2, v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 118
    return v1

    .line 113
    .end local v0    # "e":Lorg/json/JSONException;
    :catch_1
    move-exception v0

    .line 114
    .local v0, "e":Ljava/io/IOException;
    sget-object v2, Lorg/catrobat/catroid/TrustedDomainManager;->TAG:Ljava/lang/String;

    move-object v3, v0

    check-cast v3, Ljava/lang/Throwable;

    const-string v4, "Cannot read trusted domains"

    invoke-static {v2, v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 115
    return v1
.end method

.method public final setUserTrustListPattern(Ljava/util/regex/Pattern;)V
    .locals 0
    .param p1, "<set-?>"    # Ljava/util/regex/Pattern;

    .line 47
    sput-object p1, Lorg/catrobat/catroid/TrustedDomainManager;->userTrustListPattern:Ljava/util/regex/Pattern;

    return-void
.end method
