.class public interface abstract Lorg/catrobat/catroid/web/WebConnection$WebRequestListener;
.super Ljava/lang/Object;
.source "WebConnection.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/catrobat/catroid/web/WebConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "WebRequestListener"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0008f\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H&J\u0010\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u0006H&J\u0010\u0010\u0007\u001a\u00020\u00032\u0006\u0010\u0008\u001a\u00020\tH&\u00a8\u0006\n"
    }
    d2 = {
        "Lorg/catrobat/catroid/web/WebConnection$WebRequestListener;",
        "",
        "onCancelledCall",
        "",
        "onRequestError",
        "httpError",
        "",
        "onRequestSuccess",
        "httpResponse",
        "Lokhttp3/Response;",
        "catroid_catroidDebug"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# virtual methods
.method public abstract onCancelledCall()V
.end method

.method public abstract onRequestError(Ljava/lang/String;)V
.end method

.method public abstract onRequestSuccess(Lokhttp3/Response;)V
.end method
