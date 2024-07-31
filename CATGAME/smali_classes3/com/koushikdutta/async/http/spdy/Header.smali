.class final Lcom/koushikdutta/async/http/spdy/Header;
.super Ljava/lang/Object;
.source "Header.java"


# static fields
.field public static final RESPONSE_STATUS:Lcom/koushikdutta/async/http/spdy/ByteString;

.field public static final TARGET_AUTHORITY:Lcom/koushikdutta/async/http/spdy/ByteString;

.field public static final TARGET_HOST:Lcom/koushikdutta/async/http/spdy/ByteString;

.field public static final TARGET_METHOD:Lcom/koushikdutta/async/http/spdy/ByteString;

.field public static final TARGET_PATH:Lcom/koushikdutta/async/http/spdy/ByteString;

.field public static final TARGET_SCHEME:Lcom/koushikdutta/async/http/spdy/ByteString;

.field public static final VERSION:Lcom/koushikdutta/async/http/spdy/ByteString;


# instance fields
.field final hpackSize:I

.field public final name:Lcom/koushikdutta/async/http/spdy/ByteString;

.field public final value:Lcom/koushikdutta/async/http/spdy/ByteString;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 9
    const-string v0, ":status"

    invoke-static {v0}, Lcom/koushikdutta/async/http/spdy/ByteString;->encodeUtf8(Ljava/lang/String;)Lcom/koushikdutta/async/http/spdy/ByteString;

    move-result-object v0

    sput-object v0, Lcom/koushikdutta/async/http/spdy/Header;->RESPONSE_STATUS:Lcom/koushikdutta/async/http/spdy/ByteString;

    .line 10
    const-string v0, ":method"

    invoke-static {v0}, Lcom/koushikdutta/async/http/spdy/ByteString;->encodeUtf8(Ljava/lang/String;)Lcom/koushikdutta/async/http/spdy/ByteString;

    move-result-object v0

    sput-object v0, Lcom/koushikdutta/async/http/spdy/Header;->TARGET_METHOD:Lcom/koushikdutta/async/http/spdy/ByteString;

    .line 11
    const-string v0, ":path"

    invoke-static {v0}, Lcom/koushikdutta/async/http/spdy/ByteString;->encodeUtf8(Ljava/lang/String;)Lcom/koushikdutta/async/http/spdy/ByteString;

    move-result-object v0

    sput-object v0, Lcom/koushikdutta/async/http/spdy/Header;->TARGET_PATH:Lcom/koushikdutta/async/http/spdy/ByteString;

    .line 12
    const-string v0, ":scheme"

    invoke-static {v0}, Lcom/koushikdutta/async/http/spdy/ByteString;->encodeUtf8(Ljava/lang/String;)Lcom/koushikdutta/async/http/spdy/ByteString;

    move-result-object v0

    sput-object v0, Lcom/koushikdutta/async/http/spdy/Header;->TARGET_SCHEME:Lcom/koushikdutta/async/http/spdy/ByteString;

    .line 13
    const-string v0, ":authority"

    invoke-static {v0}, Lcom/koushikdutta/async/http/spdy/ByteString;->encodeUtf8(Ljava/lang/String;)Lcom/koushikdutta/async/http/spdy/ByteString;

    move-result-object v0

    sput-object v0, Lcom/koushikdutta/async/http/spdy/Header;->TARGET_AUTHORITY:Lcom/koushikdutta/async/http/spdy/ByteString;

    .line 14
    const-string v0, ":host"

    invoke-static {v0}, Lcom/koushikdutta/async/http/spdy/ByteString;->encodeUtf8(Ljava/lang/String;)Lcom/koushikdutta/async/http/spdy/ByteString;

    move-result-object v0

    sput-object v0, Lcom/koushikdutta/async/http/spdy/Header;->TARGET_HOST:Lcom/koushikdutta/async/http/spdy/ByteString;

    .line 15
    const-string v0, ":version"

    invoke-static {v0}, Lcom/koushikdutta/async/http/spdy/ByteString;->encodeUtf8(Ljava/lang/String;)Lcom/koushikdutta/async/http/spdy/ByteString;

    move-result-object v0

    sput-object v0, Lcom/koushikdutta/async/http/spdy/Header;->VERSION:Lcom/koushikdutta/async/http/spdy/ByteString;

    return-void
.end method

.method public constructor <init>(Lcom/koushikdutta/async/http/spdy/ByteString;Lcom/koushikdutta/async/http/spdy/ByteString;)V
    .locals 2
    .param p1, "name"    # Lcom/koushikdutta/async/http/spdy/ByteString;
    .param p2, "value"    # Lcom/koushikdutta/async/http/spdy/ByteString;

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/koushikdutta/async/http/spdy/Header;->name:Lcom/koushikdutta/async/http/spdy/ByteString;

    .line 34
    iput-object p2, p0, Lcom/koushikdutta/async/http/spdy/Header;->value:Lcom/koushikdutta/async/http/spdy/ByteString;

    .line 35
    invoke-virtual {p1}, Lcom/koushikdutta/async/http/spdy/ByteString;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x20

    invoke-virtual {p2}, Lcom/koushikdutta/async/http/spdy/ByteString;->size()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/koushikdutta/async/http/spdy/Header;->hpackSize:I

    .line 36
    return-void
.end method

.method public constructor <init>(Lcom/koushikdutta/async/http/spdy/ByteString;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Lcom/koushikdutta/async/http/spdy/ByteString;
    .param p2, "value"    # Ljava/lang/String;

    .line 29
    invoke-static {p2}, Lcom/koushikdutta/async/http/spdy/ByteString;->encodeUtf8(Ljava/lang/String;)Lcom/koushikdutta/async/http/spdy/ByteString;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/koushikdutta/async/http/spdy/Header;-><init>(Lcom/koushikdutta/async/http/spdy/ByteString;Lcom/koushikdutta/async/http/spdy/ByteString;)V

    .line 30
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 25
    invoke-static {p1}, Lcom/koushikdutta/async/http/spdy/ByteString;->encodeUtf8(Ljava/lang/String;)Lcom/koushikdutta/async/http/spdy/ByteString;

    move-result-object v0

    invoke-static {p2}, Lcom/koushikdutta/async/http/spdy/ByteString;->encodeUtf8(Ljava/lang/String;)Lcom/koushikdutta/async/http/spdy/ByteString;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/koushikdutta/async/http/spdy/Header;-><init>(Lcom/koushikdutta/async/http/spdy/ByteString;Lcom/koushikdutta/async/http/spdy/ByteString;)V

    .line 26
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "other"    # Ljava/lang/Object;

    .line 39
    instance-of v0, p1, Lcom/koushikdutta/async/http/spdy/Header;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 40
    move-object v0, p1

    check-cast v0, Lcom/koushikdutta/async/http/spdy/Header;

    .line 41
    .local v0, "that":Lcom/koushikdutta/async/http/spdy/Header;
    iget-object v2, p0, Lcom/koushikdutta/async/http/spdy/Header;->name:Lcom/koushikdutta/async/http/spdy/ByteString;

    iget-object v3, v0, Lcom/koushikdutta/async/http/spdy/Header;->name:Lcom/koushikdutta/async/http/spdy/ByteString;

    invoke-virtual {v2, v3}, Lcom/koushikdutta/async/http/spdy/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/koushikdutta/async/http/spdy/Header;->value:Lcom/koushikdutta/async/http/spdy/ByteString;

    iget-object v3, v0, Lcom/koushikdutta/async/http/spdy/Header;->value:Lcom/koushikdutta/async/http/spdy/ByteString;

    .line 42
    invoke-virtual {v2, v3}, Lcom/koushikdutta/async/http/spdy/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    nop

    .line 41
    :goto_0
    return v1

    .line 44
    .end local v0    # "that":Lcom/koushikdutta/async/http/spdy/Header;
    :cond_1
    return v1
.end method

.method public hashCode()I
    .locals 3

    .line 48
    const/16 v0, 0x11

    .line 49
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/koushikdutta/async/http/spdy/Header;->name:Lcom/koushikdutta/async/http/spdy/ByteString;

    invoke-virtual {v2}, Lcom/koushikdutta/async/http/spdy/ByteString;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 50
    .end local v0    # "result":I
    .local v1, "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lcom/koushikdutta/async/http/spdy/Header;->value:Lcom/koushikdutta/async/http/spdy/ByteString;

    invoke-virtual {v2}, Lcom/koushikdutta/async/http/spdy/ByteString;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    .line 51
    .end local v1    # "result":I
    .restart local v0    # "result":I
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 55
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/koushikdutta/async/http/spdy/Header;->name:Lcom/koushikdutta/async/http/spdy/ByteString;

    invoke-virtual {v2}, Lcom/koushikdutta/async/http/spdy/ByteString;->utf8()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/koushikdutta/async/http/spdy/Header;->value:Lcom/koushikdutta/async/http/spdy/ByteString;

    invoke-virtual {v2}, Lcom/koushikdutta/async/http/spdy/ByteString;->utf8()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string v2, "%s: %s"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
