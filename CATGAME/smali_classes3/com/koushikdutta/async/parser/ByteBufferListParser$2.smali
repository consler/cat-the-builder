.class Lcom/koushikdutta/async/parser/ByteBufferListParser$2;
.super Ljava/lang/Object;
.source "ByteBufferListParser.java"

# interfaces
.implements Lcom/koushikdutta/async/callback/DataCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/async/parser/ByteBufferListParser;->parse(Lcom/koushikdutta/async/DataEmitter;)Lcom/koushikdutta/async/future/Future;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/koushikdutta/async/parser/ByteBufferListParser;

.field final synthetic val$bb:Lcom/koushikdutta/async/ByteBufferList;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/parser/ByteBufferListParser;Lcom/koushikdutta/async/ByteBufferList;)V
    .locals 0
    .param p1, "this$0"    # Lcom/koushikdutta/async/parser/ByteBufferListParser;

    .line 27
    iput-object p1, p0, Lcom/koushikdutta/async/parser/ByteBufferListParser$2;->this$0:Lcom/koushikdutta/async/parser/ByteBufferListParser;

    iput-object p2, p0, Lcom/koushikdutta/async/parser/ByteBufferListParser$2;->val$bb:Lcom/koushikdutta/async/ByteBufferList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDataAvailable(Lcom/koushikdutta/async/DataEmitter;Lcom/koushikdutta/async/ByteBufferList;)V
    .locals 1
    .param p1, "emitter"    # Lcom/koushikdutta/async/DataEmitter;
    .param p2, "data"    # Lcom/koushikdutta/async/ByteBufferList;

    .line 30
    iget-object v0, p0, Lcom/koushikdutta/async/parser/ByteBufferListParser$2;->val$bb:Lcom/koushikdutta/async/ByteBufferList;

    invoke-virtual {p2, v0}, Lcom/koushikdutta/async/ByteBufferList;->get(Lcom/koushikdutta/async/ByteBufferList;)V

    .line 31
    return-void
.end method
