.class Lretrofit2/ParameterHandler$2;
.super Lretrofit2/ParameterHandler;
.source "ParameterHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lretrofit2/ParameterHandler;->array()Lretrofit2/ParameterHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lretrofit2/ParameterHandler<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lretrofit2/ParameterHandler;


# direct methods
.method constructor <init>(Lretrofit2/ParameterHandler;)V
    .locals 0
    .param p1, "this$0"    # Lretrofit2/ParameterHandler;

    .line 44
    .local p0, "this":Lretrofit2/ParameterHandler$2;, "Lretrofit2/ParameterHandler$2;"
    iput-object p1, p0, Lretrofit2/ParameterHandler$2;->this$0:Lretrofit2/ParameterHandler;

    invoke-direct {p0}, Lretrofit2/ParameterHandler;-><init>()V

    return-void
.end method


# virtual methods
.method apply(Lretrofit2/RequestBuilder;Ljava/lang/Object;)V
    .locals 4
    .param p1, "builder"    # Lretrofit2/RequestBuilder;
    .param p2, "values"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 47
    .local p0, "this":Lretrofit2/ParameterHandler$2;, "Lretrofit2/ParameterHandler$2;"
    if-nez p2, :cond_0

    return-void

    .line 49
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-static {p2}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v1

    .local v1, "size":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 51
    iget-object v2, p0, Lretrofit2/ParameterHandler$2;->this$0:Lretrofit2/ParameterHandler;

    invoke-static {p2, v0}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Lretrofit2/ParameterHandler;->apply(Lretrofit2/RequestBuilder;Ljava/lang/Object;)V

    .line 49
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 53
    .end local v0    # "i":I
    .end local v1    # "size":I
    :cond_1
    return-void
.end method
