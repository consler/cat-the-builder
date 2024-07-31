.class public Lcom/koushikdutta/async/http/AsyncHttpHead;
.super Lcom/koushikdutta/async/http/AsyncHttpRequest;
.source "AsyncHttpHead.java"


# static fields
.field public static final METHOD:Ljava/lang/String; = "HEAD"


# direct methods
.method public constructor <init>(Landroid/net/Uri;)V
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    .line 10
    const-string v0, "HEAD"

    invoke-direct {p0, p1, v0}, Lcom/koushikdutta/async/http/AsyncHttpRequest;-><init>(Landroid/net/Uri;Ljava/lang/String;)V

    .line 11
    return-void
.end method
