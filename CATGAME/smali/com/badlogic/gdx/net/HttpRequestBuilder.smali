.class public Lcom/badlogic/gdx/net/HttpRequestBuilder;
.super Ljava/lang/Object;
.source "HttpRequestBuilder.java"


# static fields
.field public static baseUrl:Ljava/lang/String;

.field public static defaultTimeout:I

.field public static json:Lcom/badlogic/gdx/utils/Json;


# instance fields
.field private httpRequest:Lcom/badlogic/gdx/Net$HttpRequest;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 37
    const-string v0, ""

    sput-object v0, Lcom/badlogic/gdx/net/HttpRequestBuilder;->baseUrl:Ljava/lang/String;

    .line 40
    const/16 v0, 0x3e8

    sput v0, Lcom/badlogic/gdx/net/HttpRequestBuilder;->defaultTimeout:I

    .line 43
    new-instance v0, Lcom/badlogic/gdx/utils/Json;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Json;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/net/HttpRequestBuilder;->json:Lcom/badlogic/gdx/utils/Json;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private validate()V
    .locals 2

    .line 153
    iget-object v0, p0, Lcom/badlogic/gdx/net/HttpRequestBuilder;->httpRequest:Lcom/badlogic/gdx/Net$HttpRequest;

    if-eqz v0, :cond_0

    .line 156
    return-void

    .line 154
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "A new request has not been started yet. Call HttpRequestBuilder.newRequest() first."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public basicAuthentication(Ljava/lang/String;Ljava/lang/String;)Lcom/badlogic/gdx/net/HttpRequestBuilder;
    .locals 4
    .param p1, "username"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;

    .line 138
    invoke-direct {p0}, Lcom/badlogic/gdx/net/HttpRequestBuilder;->validate()V

    .line 139
    iget-object v0, p0, Lcom/badlogic/gdx/net/HttpRequestBuilder;->httpRequest:Lcom/badlogic/gdx/Net$HttpRequest;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Basic "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/badlogic/gdx/utils/Base64Coder;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Authorization"

    invoke-virtual {v0, v2, v1}, Lcom/badlogic/gdx/Net$HttpRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    return-object p0
.end method

.method public build()Lcom/badlogic/gdx/Net$HttpRequest;
    .locals 2

    .line 146
    invoke-direct {p0}, Lcom/badlogic/gdx/net/HttpRequestBuilder;->validate()V

    .line 147
    iget-object v0, p0, Lcom/badlogic/gdx/net/HttpRequestBuilder;->httpRequest:Lcom/badlogic/gdx/Net$HttpRequest;

    .line 148
    .local v0, "request":Lcom/badlogic/gdx/Net$HttpRequest;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/badlogic/gdx/net/HttpRequestBuilder;->httpRequest:Lcom/badlogic/gdx/Net$HttpRequest;

    .line 149
    return-object v0
.end method

.method public content(Ljava/io/InputStream;J)Lcom/badlogic/gdx/net/HttpRequestBuilder;
    .locals 1
    .param p1, "contentStream"    # Ljava/io/InputStream;
    .param p2, "contentLength"    # J

    .line 113
    invoke-direct {p0}, Lcom/badlogic/gdx/net/HttpRequestBuilder;->validate()V

    .line 114
    iget-object v0, p0, Lcom/badlogic/gdx/net/HttpRequestBuilder;->httpRequest:Lcom/badlogic/gdx/Net$HttpRequest;

    invoke-virtual {v0, p1, p2, p3}, Lcom/badlogic/gdx/Net$HttpRequest;->setContent(Ljava/io/InputStream;J)V

    .line 115
    return-object p0
.end method

.method public content(Ljava/lang/String;)Lcom/badlogic/gdx/net/HttpRequestBuilder;
    .locals 1
    .param p1, "content"    # Ljava/lang/String;

    .line 106
    invoke-direct {p0}, Lcom/badlogic/gdx/net/HttpRequestBuilder;->validate()V

    .line 107
    iget-object v0, p0, Lcom/badlogic/gdx/net/HttpRequestBuilder;->httpRequest:Lcom/badlogic/gdx/Net$HttpRequest;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/Net$HttpRequest;->setContent(Ljava/lang/String;)V

    .line 108
    return-object p0
.end method

.method public followRedirects(Z)Lcom/badlogic/gdx/net/HttpRequestBuilder;
    .locals 1
    .param p1, "followRedirects"    # Z

    .line 85
    invoke-direct {p0}, Lcom/badlogic/gdx/net/HttpRequestBuilder;->validate()V

    .line 86
    iget-object v0, p0, Lcom/badlogic/gdx/net/HttpRequestBuilder;->httpRequest:Lcom/badlogic/gdx/Net$HttpRequest;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/Net$HttpRequest;->setFollowRedirects(Z)V

    .line 87
    return-object p0
.end method

.method public formEncodedContent(Ljava/util/Map;)Lcom/badlogic/gdx/net/HttpRequestBuilder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/badlogic/gdx/net/HttpRequestBuilder;"
        }
    .end annotation

    .line 120
    .local p1, "content":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/badlogic/gdx/net/HttpRequestBuilder;->validate()V

    .line 121
    iget-object v0, p0, Lcom/badlogic/gdx/net/HttpRequestBuilder;->httpRequest:Lcom/badlogic/gdx/Net$HttpRequest;

    const-string v1, "Content-Type"

    const-string v2, "application/x-www-form-urlencoded"

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/Net$HttpRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    invoke-static {p1}, Lcom/badlogic/gdx/net/HttpParametersUtils;->convertHttpParameters(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 123
    .local v0, "formEncodedContent":Ljava/lang/String;
    iget-object v1, p0, Lcom/badlogic/gdx/net/HttpRequestBuilder;->httpRequest:Lcom/badlogic/gdx/Net$HttpRequest;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/Net$HttpRequest;->setContent(Ljava/lang/String;)V

    .line 124
    return-object p0
.end method

.method public header(Ljava/lang/String;Ljava/lang/String;)Lcom/badlogic/gdx/net/HttpRequestBuilder;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 99
    invoke-direct {p0}, Lcom/badlogic/gdx/net/HttpRequestBuilder;->validate()V

    .line 100
    iget-object v0, p0, Lcom/badlogic/gdx/net/HttpRequestBuilder;->httpRequest:Lcom/badlogic/gdx/Net$HttpRequest;

    invoke-virtual {v0, p1, p2}, Lcom/badlogic/gdx/Net$HttpRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    return-object p0
.end method

.method public includeCredentials(Z)Lcom/badlogic/gdx/net/HttpRequestBuilder;
    .locals 1
    .param p1, "includeCredentials"    # Z

    .line 92
    invoke-direct {p0}, Lcom/badlogic/gdx/net/HttpRequestBuilder;->validate()V

    .line 93
    iget-object v0, p0, Lcom/badlogic/gdx/net/HttpRequestBuilder;->httpRequest:Lcom/badlogic/gdx/Net$HttpRequest;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/Net$HttpRequest;->setIncludeCredentials(Z)V

    .line 94
    return-object p0
.end method

.method public jsonContent(Ljava/lang/Object;)Lcom/badlogic/gdx/net/HttpRequestBuilder;
    .locals 3
    .param p1, "content"    # Ljava/lang/Object;

    .line 129
    invoke-direct {p0}, Lcom/badlogic/gdx/net/HttpRequestBuilder;->validate()V

    .line 130
    iget-object v0, p0, Lcom/badlogic/gdx/net/HttpRequestBuilder;->httpRequest:Lcom/badlogic/gdx/Net$HttpRequest;

    const-string v1, "Content-Type"

    const-string v2, "application/json"

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/Net$HttpRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    sget-object v0, Lcom/badlogic/gdx/net/HttpRequestBuilder;->json:Lcom/badlogic/gdx/utils/Json;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/Json;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 132
    .local v0, "jsonContent":Ljava/lang/String;
    iget-object v1, p0, Lcom/badlogic/gdx/net/HttpRequestBuilder;->httpRequest:Lcom/badlogic/gdx/Net$HttpRequest;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/Net$HttpRequest;->setContent(Ljava/lang/String;)V

    .line 133
    return-object p0
.end method

.method public method(Ljava/lang/String;)Lcom/badlogic/gdx/net/HttpRequestBuilder;
    .locals 1
    .param p1, "httpMethod"    # Ljava/lang/String;

    .line 60
    invoke-direct {p0}, Lcom/badlogic/gdx/net/HttpRequestBuilder;->validate()V

    .line 61
    iget-object v0, p0, Lcom/badlogic/gdx/net/HttpRequestBuilder;->httpRequest:Lcom/badlogic/gdx/Net$HttpRequest;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/Net$HttpRequest;->setMethod(Ljava/lang/String;)V

    .line 62
    return-object p0
.end method

.method public newRequest()Lcom/badlogic/gdx/net/HttpRequestBuilder;
    .locals 2

    .line 49
    iget-object v0, p0, Lcom/badlogic/gdx/net/HttpRequestBuilder;->httpRequest:Lcom/badlogic/gdx/Net$HttpRequest;

    if-nez v0, :cond_0

    .line 53
    const-class v0, Lcom/badlogic/gdx/Net$HttpRequest;

    invoke-static {v0}, Lcom/badlogic/gdx/utils/Pools;->obtain(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/Net$HttpRequest;

    iput-object v0, p0, Lcom/badlogic/gdx/net/HttpRequestBuilder;->httpRequest:Lcom/badlogic/gdx/Net$HttpRequest;

    .line 54
    sget v1, Lcom/badlogic/gdx/net/HttpRequestBuilder;->defaultTimeout:I

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/Net$HttpRequest;->setTimeOut(I)V

    .line 55
    return-object p0

    .line 50
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "A new request has already been started. Call HttpRequestBuilder.build() first."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public timeout(I)Lcom/badlogic/gdx/net/HttpRequestBuilder;
    .locals 1
    .param p1, "timeOut"    # I

    .line 78
    invoke-direct {p0}, Lcom/badlogic/gdx/net/HttpRequestBuilder;->validate()V

    .line 79
    iget-object v0, p0, Lcom/badlogic/gdx/net/HttpRequestBuilder;->httpRequest:Lcom/badlogic/gdx/Net$HttpRequest;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/Net$HttpRequest;->setTimeOut(I)V

    .line 80
    return-object p0
.end method

.method public url(Ljava/lang/String;)Lcom/badlogic/gdx/net/HttpRequestBuilder;
    .locals 3
    .param p1, "url"    # Ljava/lang/String;

    .line 69
    invoke-direct {p0}, Lcom/badlogic/gdx/net/HttpRequestBuilder;->validate()V

    .line 70
    iget-object v0, p0, Lcom/badlogic/gdx/net/HttpRequestBuilder;->httpRequest:Lcom/badlogic/gdx/Net$HttpRequest;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/badlogic/gdx/net/HttpRequestBuilder;->baseUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/Net$HttpRequest;->setUrl(Ljava/lang/String;)V

    .line 71
    return-object p0
.end method
