.class public interface abstract Lcom/koushikdutta/async/http/server/AsyncHttpServerRequest;
.super Ljava/lang/Object;
.source "AsyncHttpServerRequest.java"

# interfaces
.implements Lcom/koushikdutta/async/DataEmitter;


# virtual methods
.method public abstract getBody()Lcom/koushikdutta/async/http/body/AsyncHttpRequestBody;
.end method

.method public abstract getHeaders()Lcom/koushikdutta/async/http/Headers;
.end method

.method public abstract getMatcher()Ljava/util/regex/Matcher;
.end method

.method public abstract getMethod()Ljava/lang/String;
.end method

.method public abstract getPath()Ljava/lang/String;
.end method

.method public abstract getQuery()Lcom/koushikdutta/async/http/Multimap;
.end method

.method public abstract getSocket()Lcom/koushikdutta/async/AsyncSocket;
.end method
