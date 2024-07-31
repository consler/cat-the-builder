.class final Lorg/catrobat/catroid/web/CatrobatServerCalls$downloadProject$1;
.super Ljava/lang/Object;
.source "CatrobatServerCalls.kt"

# interfaces
.implements Lokhttp3/Interceptor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/catrobat/catroid/web/CatrobatServerCalls;->downloadProject(Ljava/lang/String;Ljava/io/File;Lorg/catrobat/catroid/web/CatrobatServerCalls$DownloadSuccessCallback;Lorg/catrobat/catroid/web/CatrobatServerCalls$DownloadErrorCallback;Lorg/catrobat/catroid/web/CatrobatServerCalls$DownloadProgressCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\n \u0002*\u0004\u0018\u00010\u00010\u00012\u000e\u0010\u0003\u001a\n \u0002*\u0004\u0018\u00010\u00040\u0004H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "Lokhttp3/Response;",
        "kotlin.jvm.PlatformType",
        "chain",
        "Lokhttp3/Interceptor$Chain;",
        "intercept"
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# instance fields
.field final synthetic $progressCallback:Lorg/catrobat/catroid/web/CatrobatServerCalls$DownloadProgressCallback;


# direct methods
.method constructor <init>(Lorg/catrobat/catroid/web/CatrobatServerCalls$DownloadProgressCallback;)V
    .locals 0

    iput-object p1, p0, Lorg/catrobat/catroid/web/CatrobatServerCalls$downloadProject$1;->$progressCallback:Lorg/catrobat/catroid/web/CatrobatServerCalls$DownloadProgressCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final intercept(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;
    .locals 4
    .param p1, "chain"    # Lokhttp3/Interceptor$Chain;

    .line 232
    nop

    .line 233
    invoke-interface {p1}, Lokhttp3/Interceptor$Chain;->request()Lokhttp3/Request;

    move-result-object v0

    invoke-interface {p1, v0}, Lokhttp3/Interceptor$Chain;->proceed(Lokhttp3/Request;)Lokhttp3/Response;

    move-result-object v0

    .line 232
    nop

    .line 234
    .local v0, "originalResponse":Lokhttp3/Response;
    new-instance v1, Lorg/catrobat/catroid/web/ProgressResponseBody;

    .line 235
    invoke-virtual {v0}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v2

    .line 236
    iget-object v3, p0, Lorg/catrobat/catroid/web/CatrobatServerCalls$downloadProject$1;->$progressCallback:Lorg/catrobat/catroid/web/CatrobatServerCalls$DownloadProgressCallback;

    .line 234
    invoke-direct {v1, v2, v3}, Lorg/catrobat/catroid/web/ProgressResponseBody;-><init>(Lokhttp3/ResponseBody;Lorg/catrobat/catroid/web/CatrobatServerCalls$DownloadProgressCallback;)V

    .line 238
    .local v1, "body":Lorg/catrobat/catroid/web/ProgressResponseBody;
    invoke-virtual {v0}, Lokhttp3/Response;->newBuilder()Lokhttp3/Response$Builder;

    move-result-object v2

    move-object v3, v1

    check-cast v3, Lokhttp3/ResponseBody;

    invoke-virtual {v2, v3}, Lokhttp3/Response$Builder;->body(Lokhttp3/ResponseBody;)Lokhttp3/Response$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/Response$Builder;->build()Lokhttp3/Response;

    move-result-object v0

    .end local v0    # "originalResponse":Lokhttp3/Response;
    .end local v1    # "body":Lorg/catrobat/catroid/web/ProgressResponseBody;
    return-object v0
.end method
