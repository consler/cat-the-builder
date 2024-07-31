.class interface abstract Lcom/koushikdutta/async/http/spdy/Variant;
.super Ljava/lang/Object;
.source "Variant.java"


# virtual methods
.method public abstract getProtocol()Lcom/koushikdutta/async/http/Protocol;
.end method

.method public abstract maxFrameSize()I
.end method

.method public abstract newReader(Lcom/koushikdutta/async/DataEmitter;Lcom/koushikdutta/async/http/spdy/FrameReader$Handler;Z)Lcom/koushikdutta/async/http/spdy/FrameReader;
.end method

.method public abstract newWriter(Lcom/koushikdutta/async/BufferedDataSink;Z)Lcom/koushikdutta/async/http/spdy/FrameWriter;
.end method
