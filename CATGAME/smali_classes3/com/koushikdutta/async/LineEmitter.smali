.class public Lcom/koushikdutta/async/LineEmitter;
.super Ljava/lang/Object;
.source "LineEmitter.java"

# interfaces
.implements Lcom/koushikdutta/async/callback/DataCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/koushikdutta/async/LineEmitter$StringCallback;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field charset:Ljava/nio/charset/Charset;

.field data:Lcom/koushikdutta/async/ByteBufferList;

.field mLineCallback:Lcom/koushikdutta/async/LineEmitter$StringCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 10
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 16
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/koushikdutta/async/LineEmitter;-><init>(Ljava/nio/charset/Charset;)V

    .line 17
    return-void
.end method

.method public constructor <init>(Ljava/nio/charset/Charset;)V
    .locals 1
    .param p1, "charset"    # Ljava/nio/charset/Charset;

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Lcom/koushikdutta/async/ByteBufferList;

    invoke-direct {v0}, Lcom/koushikdutta/async/ByteBufferList;-><init>()V

    iput-object v0, p0, Lcom/koushikdutta/async/LineEmitter;->data:Lcom/koushikdutta/async/ByteBufferList;

    .line 20
    iput-object p1, p0, Lcom/koushikdutta/async/LineEmitter;->charset:Ljava/nio/charset/Charset;

    .line 21
    return-void
.end method


# virtual methods
.method public getLineCallback()Lcom/koushikdutta/async/LineEmitter$StringCallback;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/koushikdutta/async/LineEmitter;->mLineCallback:Lcom/koushikdutta/async/LineEmitter$StringCallback;

    return-object v0
.end method

.method public onDataAvailable(Lcom/koushikdutta/async/DataEmitter;Lcom/koushikdutta/async/ByteBufferList;)V
    .locals 5
    .param p1, "emitter"    # Lcom/koushikdutta/async/DataEmitter;
    .param p2, "bb"    # Lcom/koushikdutta/async/ByteBufferList;

    .line 38
    invoke-virtual {p2}, Lcom/koushikdutta/async/ByteBufferList;->remaining()I

    move-result v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 39
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    :goto_0
    invoke-virtual {p2}, Lcom/koushikdutta/async/ByteBufferList;->remaining()I

    move-result v1

    if-lez v1, :cond_1

    .line 40
    invoke-virtual {p2}, Lcom/koushikdutta/async/ByteBufferList;->get()B

    move-result v1

    .line 41
    .local v1, "b":B
    const/16 v2, 0xa

    if-ne v1, v2, :cond_0

    .line 42
    nop

    .line 43
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 44
    iget-object v2, p0, Lcom/koushikdutta/async/LineEmitter;->data:Lcom/koushikdutta/async/ByteBufferList;

    invoke-virtual {v2, v0}, Lcom/koushikdutta/async/ByteBufferList;->add(Ljava/nio/ByteBuffer;)Lcom/koushikdutta/async/ByteBufferList;

    .line 45
    iget-object v2, p0, Lcom/koushikdutta/async/LineEmitter;->mLineCallback:Lcom/koushikdutta/async/LineEmitter$StringCallback;

    iget-object v3, p0, Lcom/koushikdutta/async/LineEmitter;->data:Lcom/koushikdutta/async/ByteBufferList;

    iget-object v4, p0, Lcom/koushikdutta/async/LineEmitter;->charset:Ljava/nio/charset/Charset;

    invoke-virtual {v3, v4}, Lcom/koushikdutta/async/ByteBufferList;->readString(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/koushikdutta/async/LineEmitter$StringCallback;->onStringAvailable(Ljava/lang/String;)V

    .line 46
    new-instance v2, Lcom/koushikdutta/async/ByteBufferList;

    invoke-direct {v2}, Lcom/koushikdutta/async/ByteBufferList;-><init>()V

    iput-object v2, p0, Lcom/koushikdutta/async/LineEmitter;->data:Lcom/koushikdutta/async/ByteBufferList;

    .line 47
    return-void

    .line 50
    :cond_0
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 52
    .end local v1    # "b":B
    goto :goto_0

    .line 53
    :cond_1
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 54
    iget-object v1, p0, Lcom/koushikdutta/async/LineEmitter;->data:Lcom/koushikdutta/async/ByteBufferList;

    invoke-virtual {v1, v0}, Lcom/koushikdutta/async/ByteBufferList;->add(Ljava/nio/ByteBuffer;)Lcom/koushikdutta/async/ByteBufferList;

    .line 55
    return-void
.end method

.method public setLineCallback(Lcom/koushikdutta/async/LineEmitter$StringCallback;)V
    .locals 0
    .param p1, "callback"    # Lcom/koushikdutta/async/LineEmitter$StringCallback;

    .line 29
    iput-object p1, p0, Lcom/koushikdutta/async/LineEmitter;->mLineCallback:Lcom/koushikdutta/async/LineEmitter$StringCallback;

    .line 30
    return-void
.end method
