.class Lcom/koushikdutta/async/http/body/MultipartFormDataBody$1$1;
.super Ljava/lang/Object;
.source "MultipartFormDataBody.java"

# interfaces
.implements Lcom/koushikdutta/async/callback/DataCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/async/http/body/MultipartFormDataBody$1;->onStringAvailable(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/koushikdutta/async/http/body/MultipartFormDataBody$1;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/http/body/MultipartFormDataBody$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/koushikdutta/async/http/body/MultipartFormDataBody$1;

    .line 88
    iput-object p1, p0, Lcom/koushikdutta/async/http/body/MultipartFormDataBody$1$1;->this$1:Lcom/koushikdutta/async/http/body/MultipartFormDataBody$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDataAvailable(Lcom/koushikdutta/async/DataEmitter;Lcom/koushikdutta/async/ByteBufferList;)V
    .locals 1
    .param p1, "emitter"    # Lcom/koushikdutta/async/DataEmitter;
    .param p2, "bb"    # Lcom/koushikdutta/async/ByteBufferList;

    .line 91
    iget-object v0, p0, Lcom/koushikdutta/async/http/body/MultipartFormDataBody$1$1;->this$1:Lcom/koushikdutta/async/http/body/MultipartFormDataBody$1;

    iget-object v0, v0, Lcom/koushikdutta/async/http/body/MultipartFormDataBody$1;->this$0:Lcom/koushikdutta/async/http/body/MultipartFormDataBody;

    iget-object v0, v0, Lcom/koushikdutta/async/http/body/MultipartFormDataBody;->last:Lcom/koushikdutta/async/ByteBufferList;

    invoke-virtual {p2, v0}, Lcom/koushikdutta/async/ByteBufferList;->get(Lcom/koushikdutta/async/ByteBufferList;)V

    .line 92
    return-void
.end method
