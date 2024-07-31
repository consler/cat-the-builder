.class public interface abstract Lcom/koushikdutta/async/http/spdy/FrameReader$Handler;
.super Ljava/lang/Object;
.source "FrameReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/koushikdutta/async/http/spdy/FrameReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Handler"
.end annotation


# virtual methods
.method public abstract ackSettings()V
.end method

.method public abstract alternateService(ILjava/lang/String;Lcom/koushikdutta/async/http/spdy/ByteString;Ljava/lang/String;IJ)V
.end method

.method public abstract data(ZILcom/koushikdutta/async/ByteBufferList;)V
.end method

.method public abstract error(Ljava/lang/Exception;)V
.end method

.method public abstract goAway(ILcom/koushikdutta/async/http/spdy/ErrorCode;Lcom/koushikdutta/async/http/spdy/ByteString;)V
.end method

.method public abstract headers(ZZIILjava/util/List;Lcom/koushikdutta/async/http/spdy/HeadersMode;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZII",
            "Ljava/util/List<",
            "Lcom/koushikdutta/async/http/spdy/Header;",
            ">;",
            "Lcom/koushikdutta/async/http/spdy/HeadersMode;",
            ")V"
        }
    .end annotation
.end method

.method public abstract ping(ZII)V
.end method

.method public abstract priority(IIIZ)V
.end method

.method public abstract pushPromise(IILjava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Lcom/koushikdutta/async/http/spdy/Header;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract rstStream(ILcom/koushikdutta/async/http/spdy/ErrorCode;)V
.end method

.method public abstract settings(ZLcom/koushikdutta/async/http/spdy/Settings;)V
.end method

.method public abstract windowUpdate(IJ)V
.end method
