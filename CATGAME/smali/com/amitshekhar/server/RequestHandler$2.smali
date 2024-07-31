.class Lcom/amitshekhar/server/RequestHandler$2;
.super Lcom/google/gson/reflect/TypeToken;
.source "RequestHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amitshekhar/server/RequestHandler;->updateTableDataAndGetResponse(Ljava/lang/String;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gson/reflect/TypeToken<",
        "Ljava/util/List<",
        "Lcom/amitshekhar/model/RowDataRequest;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amitshekhar/server/RequestHandler;


# direct methods
.method constructor <init>(Lcom/amitshekhar/server/RequestHandler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/amitshekhar/server/RequestHandler;

    .line 342
    iput-object p1, p0, Lcom/amitshekhar/server/RequestHandler$2;->this$0:Lcom/amitshekhar/server/RequestHandler;

    invoke-direct {p0}, Lcom/google/gson/reflect/TypeToken;-><init>()V

    return-void
.end method
