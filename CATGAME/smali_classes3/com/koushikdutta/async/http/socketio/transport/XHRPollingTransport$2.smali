.class Lcom/koushikdutta/async/http/socketio/transport/XHRPollingTransport$2;
.super Lcom/koushikdutta/async/http/AsyncHttpClient$StringCallback;
.source "XHRPollingTransport.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/async/http/socketio/transport/XHRPollingTransport;->doLongPolling()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/koushikdutta/async/http/socketio/transport/XHRPollingTransport;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/http/socketio/transport/XHRPollingTransport;)V
    .locals 0

    .line 93
    iput-object p1, p0, Lcom/koushikdutta/async/http/socketio/transport/XHRPollingTransport$2;->this$0:Lcom/koushikdutta/async/http/socketio/transport/XHRPollingTransport;

    invoke-direct {p0}, Lcom/koushikdutta/async/http/AsyncHttpClient$StringCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted(Ljava/lang/Exception;Lcom/koushikdutta/async/http/AsyncHttpResponse;Ljava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 97
    iget-object p2, p0, Lcom/koushikdutta/async/http/socketio/transport/XHRPollingTransport$2;->this$0:Lcom/koushikdutta/async/http/socketio/transport/XHRPollingTransport;

    invoke-static {p2, p1}, Lcom/koushikdutta/async/http/socketio/transport/XHRPollingTransport;->access$000(Lcom/koushikdutta/async/http/socketio/transport/XHRPollingTransport;Ljava/lang/Exception;)V

    return-void

    .line 101
    :cond_0
    iget-object p1, p0, Lcom/koushikdutta/async/http/socketio/transport/XHRPollingTransport$2;->this$0:Lcom/koushikdutta/async/http/socketio/transport/XHRPollingTransport;

    invoke-static {p1, p3}, Lcom/koushikdutta/async/http/socketio/transport/XHRPollingTransport;->access$100(Lcom/koushikdutta/async/http/socketio/transport/XHRPollingTransport;Ljava/lang/String;)V

    .line 102
    iget-object p1, p0, Lcom/koushikdutta/async/http/socketio/transport/XHRPollingTransport$2;->this$0:Lcom/koushikdutta/async/http/socketio/transport/XHRPollingTransport;

    invoke-static {p1}, Lcom/koushikdutta/async/http/socketio/transport/XHRPollingTransport;->access$200(Lcom/koushikdutta/async/http/socketio/transport/XHRPollingTransport;)V

    return-void
.end method

.method public bridge synthetic onCompleted(Ljava/lang/Exception;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 93
    check-cast p2, Lcom/koushikdutta/async/http/AsyncHttpResponse;

    check-cast p3, Ljava/lang/String;

    invoke-virtual {p0, p1, p2, p3}, Lcom/koushikdutta/async/http/socketio/transport/XHRPollingTransport$2;->onCompleted(Ljava/lang/Exception;Lcom/koushikdutta/async/http/AsyncHttpResponse;Ljava/lang/String;)V

    return-void
.end method
