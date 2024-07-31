.class Lcom/koushikdutta/async/http/AsyncHttpResponseImpl$3;
.super Lcom/koushikdutta/async/callback/DataCallback$NullDataCallback;
.source "AsyncHttpResponseImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;->terminate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;

    .line 81
    iput-object p1, p0, Lcom/koushikdutta/async/http/AsyncHttpResponseImpl$3;->this$0:Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;

    invoke-direct {p0}, Lcom/koushikdutta/async/callback/DataCallback$NullDataCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onDataAvailable(Lcom/koushikdutta/async/DataEmitter;Lcom/koushikdutta/async/ByteBufferList;)V
    .locals 1
    .param p1, "emitter"    # Lcom/koushikdutta/async/DataEmitter;
    .param p2, "bb"    # Lcom/koushikdutta/async/ByteBufferList;

    .line 84
    invoke-super {p0, p1, p2}, Lcom/koushikdutta/async/callback/DataCallback$NullDataCallback;->onDataAvailable(Lcom/koushikdutta/async/DataEmitter;Lcom/koushikdutta/async/ByteBufferList;)V

    .line 85
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpResponseImpl$3;->this$0:Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;

    invoke-static {v0}, Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;->access$000(Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;)Lcom/koushikdutta/async/AsyncSocket;

    move-result-object v0

    invoke-interface {v0}, Lcom/koushikdutta/async/AsyncSocket;->close()V

    .line 86
    return-void
.end method
