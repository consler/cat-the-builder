.class Lcom/koushikdutta/async/http/cache/RequestHeaders$1;
.super Ljava/lang/Object;
.source "RequestHeaders.java"

# interfaces
.implements Lcom/koushikdutta/async/http/cache/HeaderParser$CacheControlHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/async/http/cache/RequestHeaders;-><init>(Landroid/net/Uri;Lcom/koushikdutta/async/http/cache/RawHeaders;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/koushikdutta/async/http/cache/RequestHeaders;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/http/cache/RequestHeaders;)V
    .locals 0
    .param p1, "this$0"    # Lcom/koushikdutta/async/http/cache/RequestHeaders;

    .line 71
    iput-object p1, p0, Lcom/koushikdutta/async/http/cache/RequestHeaders$1;->this$0:Lcom/koushikdutta/async/http/cache/RequestHeaders;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handle(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "directive"    # Ljava/lang/String;
    .param p2, "parameter"    # Ljava/lang/String;

    .line 73
    const-string v0, "no-cache"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/koushikdutta/async/http/cache/RequestHeaders$1;->this$0:Lcom/koushikdutta/async/http/cache/RequestHeaders;

    invoke-static {v0, v1}, Lcom/koushikdutta/async/http/cache/RequestHeaders;->access$002(Lcom/koushikdutta/async/http/cache/RequestHeaders;Z)Z

    goto :goto_0

    .line 75
    :cond_0
    const-string v0, "max-age"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 76
    iget-object v0, p0, Lcom/koushikdutta/async/http/cache/RequestHeaders$1;->this$0:Lcom/koushikdutta/async/http/cache/RequestHeaders;

    invoke-static {p2}, Lcom/koushikdutta/async/http/cache/HeaderParser;->parseSeconds(Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/koushikdutta/async/http/cache/RequestHeaders;->access$102(Lcom/koushikdutta/async/http/cache/RequestHeaders;I)I

    goto :goto_0

    .line 77
    :cond_1
    const-string v0, "max-stale"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 78
    iget-object v0, p0, Lcom/koushikdutta/async/http/cache/RequestHeaders$1;->this$0:Lcom/koushikdutta/async/http/cache/RequestHeaders;

    invoke-static {p2}, Lcom/koushikdutta/async/http/cache/HeaderParser;->parseSeconds(Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/koushikdutta/async/http/cache/RequestHeaders;->access$202(Lcom/koushikdutta/async/http/cache/RequestHeaders;I)I

    goto :goto_0

    .line 79
    :cond_2
    const-string v0, "min-fresh"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 80
    iget-object v0, p0, Lcom/koushikdutta/async/http/cache/RequestHeaders$1;->this$0:Lcom/koushikdutta/async/http/cache/RequestHeaders;

    invoke-static {p2}, Lcom/koushikdutta/async/http/cache/HeaderParser;->parseSeconds(Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/koushikdutta/async/http/cache/RequestHeaders;->access$302(Lcom/koushikdutta/async/http/cache/RequestHeaders;I)I

    goto :goto_0

    .line 81
    :cond_3
    const-string v0, "only-if-cached"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 82
    iget-object v0, p0, Lcom/koushikdutta/async/http/cache/RequestHeaders$1;->this$0:Lcom/koushikdutta/async/http/cache/RequestHeaders;

    invoke-static {v0, v1}, Lcom/koushikdutta/async/http/cache/RequestHeaders;->access$402(Lcom/koushikdutta/async/http/cache/RequestHeaders;Z)Z

    .line 84
    :cond_4
    :goto_0
    return-void
.end method
