.class public final Lorg/catrobat/catroid/web/CatrobatWebClientKt;
.super Ljava/lang/Object;
.source "CatrobatWebClient.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001a\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u001a\u001e\u0010\u0000\u001a\u00020\u0001*\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00030\u00022\u0006\u0010\u0004\u001a\u00020\u0003\u001a\u0012\u0010\u0005\u001a\u00020\u0003*\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0001\u00a8\u0006\u0008"
    }
    d2 = {
        "createFormEncodedRequest",
        "Lokhttp3/Request;",
        "",
        "",
        "url",
        "performCallWith",
        "Lokhttp3/OkHttpClient;",
        "request",
        "catroid_catroidDebug"
    }
    k = 0x2
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# direct methods
.method public static final createFormEncodedRequest(Ljava/util/Map;Ljava/lang/String;)Lokhttp3/Request;
    .locals 4
    .param p0, "$this$createFormEncodedRequest"    # Ljava/util/Map;
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lokhttp3/Request;"
        }
    .end annotation

    const-string v0, "$this$createFormEncodedRequest"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    new-instance v0, Lokhttp3/FormBody$Builder;

    invoke-direct {v0}, Lokhttp3/FormBody$Builder;-><init>()V

    .line 60
    .local v0, "formEncodingBuilder":Lokhttp3/FormBody$Builder;
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .local v3, "key":Ljava/lang/String;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 61
    .local v2, "value":Ljava/lang/String;
    invoke-virtual {v0, v3, v2}, Lokhttp3/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    .line 60
    .end local v2    # "value":Ljava/lang/String;
    .end local v3    # "key":Ljava/lang/String;
    goto :goto_0

    .line 63
    :cond_0
    nop

    .line 66
    nop

    .line 63
    nop

    .line 65
    nop

    .line 63
    nop

    .line 64
    nop

    .line 63
    new-instance v1, Lokhttp3/Request$Builder;

    invoke-direct {v1}, Lokhttp3/Request$Builder;-><init>()V

    .line 64
    invoke-virtual {v1, p1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v1

    .line 65
    invoke-virtual {v0}, Lokhttp3/FormBody$Builder;->build()Lokhttp3/FormBody;

    move-result-object v2

    check-cast v2, Lokhttp3/RequestBody;

    invoke-virtual {v1, v2}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object v1

    .line 66
    invoke-virtual {v1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v1

    const-string v2, "Request.Builder()\n      \u2026build())\n        .build()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    return-object v1
.end method

.method public static final performCallWith(Lokhttp3/OkHttpClient;Lokhttp3/Request;)Ljava/lang/String;
    .locals 7
    .param p0, "$this$performCallWith"    # Lokhttp3/OkHttpClient;
    .param p1, "request"    # Lokhttp3/Request;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/catrobat/catroid/web/WebconnectionException;
        }
    .end annotation

    const-string v0, "$this$performCallWith"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    const-string v0, "Bad Connection"

    .line 41
    .local v0, "message":Ljava/lang/Object;
    const/16 v1, 0x3ea

    .line 42
    .local v1, "statusCode":I
    nop

    .line 43
    :try_start_0
    invoke-virtual {p0, p1}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v2

    invoke-interface {v2}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object v2

    .line 44
    .local v2, "response":Lokhttp3/Response;
    invoke-virtual {v2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v3

    if-eqz v3, :cond_0

    .local v3, "it":Lokhttp3/ResponseBody;
    const/4 v4, 0x0

    .line 45
    .local v4, "$i$a$-let-CatrobatWebClientKt$performCallWith$1":I
    invoke-virtual {v3}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v5

    const-string v6, "it.string()"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v5

    .line 47
    .end local v3    # "it":Lokhttp3/ResponseBody;
    .end local v4    # "$i$a$-let-CatrobatWebClientKt$performCallWith$1":I
    :cond_0
    invoke-virtual {v2}, Lokhttp3/Response;->code()I

    move-result v3

    move v1, v3

    .line 48
    invoke-virtual {v2}, Lokhttp3/Response;->message()Ljava/lang/String;

    move-result-object v3

    const-string v4, "response.message()"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v3

    .end local v2    # "response":Lokhttp3/Response;
    goto :goto_0

    .line 49
    :catch_0
    move-exception v2

    .line 50
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    .local v3, "it":Ljava/lang/String;
    const/4 v4, 0x0

    .line 51
    .local v4, "$i$a$-let-CatrobatWebClientKt$performCallWith$2":I
    move-object v0, v3

    .line 52
    nop

    .line 50
    .end local v3    # "it":Ljava/lang/String;
    .end local v4    # "$i$a$-let-CatrobatWebClientKt$performCallWith$2":I
    nop

    .line 53
    .end local v2    # "e":Ljava/io/IOException;
    :cond_1
    :goto_0
    nop

    .line 55
    new-instance v2, Lorg/catrobat/catroid/web/WebconnectionException;

    invoke-direct {v2, v1, v0}, Lorg/catrobat/catroid/web/WebconnectionException;-><init>(ILjava/lang/String;)V

    check-cast v2, Ljava/lang/Throwable;

    throw v2
.end method
