.class final Lorg/catrobat/catroid/retrofit/CatroidWebServer$Companion$getWebService$okHttpClient$1;
.super Ljava/lang/Object;
.source "RetrofitWebServer.kt"

# interfaces
.implements Lokhttp3/Interceptor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/catrobat/catroid/retrofit/CatroidWebServer$Companion;->getWebService(Ljava/lang/String;)Lorg/catrobat/catroid/retrofit/WebService;
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


# static fields
.field public static final INSTANCE:Lorg/catrobat/catroid/retrofit/CatroidWebServer$Companion$getWebService$okHttpClient$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/catrobat/catroid/retrofit/CatroidWebServer$Companion$getWebService$okHttpClient$1;

    invoke-direct {v0}, Lorg/catrobat/catroid/retrofit/CatroidWebServer$Companion$getWebService$okHttpClient$1;-><init>()V

    sput-object v0, Lorg/catrobat/catroid/retrofit/CatroidWebServer$Companion$getWebService$okHttpClient$1;->INSTANCE:Lorg/catrobat/catroid/retrofit/CatroidWebServer$Companion$getWebService$okHttpClient$1;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final intercept(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;
    .locals 3
    .param p1, "chain"    # Lokhttp3/Interceptor$Chain;

    .line 66
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const-string v1, "Locale.getDefault()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 67
    .local v0, "lang":Ljava/lang/String;
    nop

    .line 70
    nop

    .line 67
    nop

    .line 69
    nop

    .line 67
    nop

    .line 68
    nop

    .line 67
    invoke-interface {p1}, Lokhttp3/Interceptor$Chain;->request()Lokhttp3/Request;

    move-result-object v1

    .line 68
    invoke-virtual {v1}, Lokhttp3/Request;->newBuilder()Lokhttp3/Request$Builder;

    move-result-object v1

    .line 69
    const-string v2, "Accept-Language"

    invoke-virtual {v1, v2, v0}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v1

    .line 70
    invoke-virtual {v1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v1

    .line 67
    nop

    .line 71
    .local v1, "request":Lokhttp3/Request;
    invoke-interface {p1, v1}, Lokhttp3/Interceptor$Chain;->proceed(Lokhttp3/Request;)Lokhttp3/Response;

    move-result-object v0

    .end local v0    # "lang":Ljava/lang/String;
    .end local v1    # "request":Lokhttp3/Request;
    return-object v0
.end method
