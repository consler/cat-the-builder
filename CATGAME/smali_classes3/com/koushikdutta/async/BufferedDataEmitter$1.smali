.class Lcom/koushikdutta/async/BufferedDataEmitter$1;
.super Ljava/lang/Object;
.source "BufferedDataEmitter.java"

# interfaces
.implements Lcom/koushikdutta/async/callback/DataCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/async/BufferedDataEmitter;-><init>(Lcom/koushikdutta/async/DataEmitter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/koushikdutta/async/BufferedDataEmitter;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/BufferedDataEmitter;)V
    .locals 0

    .line 10
    iput-object p1, p0, Lcom/koushikdutta/async/BufferedDataEmitter$1;->this$0:Lcom/koushikdutta/async/BufferedDataEmitter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDataAvailable(Lcom/koushikdutta/async/DataEmitter;Lcom/koushikdutta/async/ByteBufferList;)V
    .locals 0

    .line 13
    iget-object p1, p0, Lcom/koushikdutta/async/BufferedDataEmitter$1;->this$0:Lcom/koushikdutta/async/BufferedDataEmitter;

    iget-object p1, p1, Lcom/koushikdutta/async/BufferedDataEmitter;->mBuffers:Lcom/koushikdutta/async/ByteBufferList;

    invoke-virtual {p2, p1}, Lcom/koushikdutta/async/ByteBufferList;->get(Lcom/koushikdutta/async/ByteBufferList;)V

    .line 14
    iget-object p1, p0, Lcom/koushikdutta/async/BufferedDataEmitter$1;->this$0:Lcom/koushikdutta/async/BufferedDataEmitter;

    invoke-virtual {p1}, Lcom/koushikdutta/async/BufferedDataEmitter;->onDataAvailable()V

    return-void
.end method
