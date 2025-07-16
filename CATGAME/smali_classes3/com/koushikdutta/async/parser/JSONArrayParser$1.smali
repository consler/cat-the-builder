.class Lcom/koushikdutta/async/parser/JSONArrayParser$1;
.super Lcom/koushikdutta/async/future/TransformFuture;
.source "JSONArrayParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/async/parser/JSONArrayParser;->parse(Lcom/koushikdutta/async/DataEmitter;)Lcom/koushikdutta/async/future/Future;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/koushikdutta/async/future/TransformFuture<",
        "Lorg/json/JSONArray;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/koushikdutta/async/parser/JSONArrayParser;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/parser/JSONArrayParser;)V
    .locals 0

    .line 21
    iput-object p1, p0, Lcom/koushikdutta/async/parser/JSONArrayParser$1;->this$0:Lcom/koushikdutta/async/parser/JSONArrayParser;

    invoke-direct {p0}, Lcom/koushikdutta/async/future/TransformFuture;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic transform(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 21
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/koushikdutta/async/parser/JSONArrayParser$1;->transform(Ljava/lang/String;)V

    return-void
.end method

.method protected transform(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 24
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/koushikdutta/async/parser/JSONArrayParser$1;->setComplete(Ljava/lang/Object;)Z

    return-void
.end method
