.class public final Lorg/catrobat/catroid/web/WebConnection$createCallback$1;
.super Ljava/lang/Object;
.source "WebConnection.kt"

# interfaces
.implements Lokhttp3/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/catrobat/catroid/web/WebConnection;->createCallback()Lokhttp3/Callback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000%\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016J\u0018\u0010\u0008\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\t\u001a\u00020\nH\u0016\u00a8\u0006\u000b"
    }
    d2 = {
        "org/catrobat/catroid/web/WebConnection$createCallback$1",
        "Lokhttp3/Callback;",
        "onFailure",
        "",
        "call",
        "Lokhttp3/Call;",
        "e",
        "Ljava/io/IOException;",
        "onResponse",
        "response",
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


# instance fields
.field final synthetic this$0:Lorg/catrobat/catroid/web/WebConnection;


# direct methods
.method constructor <init>(Lorg/catrobat/catroid/web/WebConnection;)V
    .locals 0
    .param p1, "this$0"    # Lorg/catrobat/catroid/web/WebConnection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 71
    iput-object p1, p0, Lorg/catrobat/catroid/web/WebConnection$createCallback$1;->this$0:Lorg/catrobat/catroid/web/WebConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
    .locals 5
    .param p1, "call"    # Lokhttp3/Call;
    .param p2, "e"    # Ljava/io/IOException;

    const-string v0, "call"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "e"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    iget-object v0, p0, Lorg/catrobat/catroid/web/WebConnection$createCallback$1;->this$0:Lorg/catrobat/catroid/web/WebConnection;

    invoke-static {v0}, Lorg/catrobat/catroid/web/WebConnection;->access$popListener(Lorg/catrobat/catroid/web/WebConnection;)Lorg/catrobat/catroid/web/WebConnection$WebRequestListener;

    move-result-object v0

    if-eqz v0, :cond_4

    .local v0, "$this$apply":Lorg/catrobat/catroid/web/WebConnection$WebRequestListener;
    const/4 v1, 0x0

    .line 74
    .local v1, "$i$a$-apply-WebConnection$createCallback$1$onFailure$1":I
    invoke-virtual {p2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    const v4, -0x4e50b29f

    if-eq v3, v4, :cond_2

    const v4, -0x37d1747

    if-eq v3, v4, :cond_1

    :goto_0
    goto :goto_1

    .line 76
    :cond_1
    const-string v3, "Canceled"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Lorg/catrobat/catroid/web/WebConnection$WebRequestListener;->onCancelledCall()V

    goto :goto_2

    .line 75
    :cond_2
    const-string v3, "timeout"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/16 v2, 0x1f8

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lorg/catrobat/catroid/web/WebConnection$WebRequestListener;->onRequestError(Ljava/lang/String;)V

    goto :goto_2

    .line 77
    :cond_3
    :goto_1
    const/16 v2, 0x1f4

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lorg/catrobat/catroid/web/WebConnection$WebRequestListener;->onRequestError(Ljava/lang/String;)V

    .line 78
    :goto_2
    nop

    .line 79
    nop

    .line 73
    .end local v0    # "$this$apply":Lorg/catrobat/catroid/web/WebConnection$WebRequestListener;
    .end local v1    # "$i$a$-apply-WebConnection$createCallback$1$onFailure$1":I
    nop

    .line 80
    :cond_4
    return-void
.end method

.method public onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
    .locals 3
    .param p1, "call"    # Lokhttp3/Call;
    .param p2, "response"    # Lokhttp3/Response;

    const-string v0, "call"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "response"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    iget-object v0, p0, Lorg/catrobat/catroid/web/WebConnection$createCallback$1;->this$0:Lorg/catrobat/catroid/web/WebConnection;

    invoke-static {v0}, Lorg/catrobat/catroid/web/WebConnection;->access$popListener(Lorg/catrobat/catroid/web/WebConnection;)Lorg/catrobat/catroid/web/WebConnection$WebRequestListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .local v0, "$this$apply":Lorg/catrobat/catroid/web/WebConnection$WebRequestListener;
    const/4 v1, 0x0

    .line 84
    .local v1, "$i$a$-apply-WebConnection$createCallback$1$onResponse$1":I
    invoke-virtual {p2}, Lokhttp3/Response;->isSuccessful()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 85
    invoke-interface {v0, p2}, Lorg/catrobat/catroid/web/WebConnection$WebRequestListener;->onRequestSuccess(Lokhttp3/Response;)V

    goto :goto_0

    .line 87
    :cond_0
    invoke-virtual {p2}, Lokhttp3/Response;->code()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lorg/catrobat/catroid/web/WebConnection$WebRequestListener;->onRequestError(Ljava/lang/String;)V

    .line 88
    :goto_0
    nop

    .line 89
    nop

    .line 83
    .end local v0    # "$this$apply":Lorg/catrobat/catroid/web/WebConnection$WebRequestListener;
    .end local v1    # "$i$a$-apply-WebConnection$createCallback$1$onResponse$1":I
    nop

    .line 90
    :cond_1
    return-void
.end method
