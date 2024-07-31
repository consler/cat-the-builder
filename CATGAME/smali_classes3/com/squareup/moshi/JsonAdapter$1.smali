.class Lcom/squareup/moshi/JsonAdapter$1;
.super Lcom/squareup/moshi/JsonAdapter;
.source "JsonAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/squareup/moshi/JsonAdapter;->serializeNulls()Lcom/squareup/moshi/JsonAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/moshi/JsonAdapter<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/squareup/moshi/JsonAdapter;

.field final synthetic val$delegate:Lcom/squareup/moshi/JsonAdapter;


# direct methods
.method constructor <init>(Lcom/squareup/moshi/JsonAdapter;Lcom/squareup/moshi/JsonAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/squareup/moshi/JsonAdapter;

    .line 104
    .local p0, "this":Lcom/squareup/moshi/JsonAdapter$1;, "Lcom/squareup/moshi/JsonAdapter$1;"
    iput-object p1, p0, Lcom/squareup/moshi/JsonAdapter$1;->this$0:Lcom/squareup/moshi/JsonAdapter;

    iput-object p2, p0, Lcom/squareup/moshi/JsonAdapter$1;->val$delegate:Lcom/squareup/moshi/JsonAdapter;

    invoke-direct {p0}, Lcom/squareup/moshi/JsonAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public fromJson(Lcom/squareup/moshi/JsonReader;)Ljava/lang/Object;
    .locals 1
    .param p1, "reader"    # Lcom/squareup/moshi/JsonReader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/squareup/moshi/JsonReader;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 106
    .local p0, "this":Lcom/squareup/moshi/JsonAdapter$1;, "Lcom/squareup/moshi/JsonAdapter$1;"
    iget-object v0, p0, Lcom/squareup/moshi/JsonAdapter$1;->val$delegate:Lcom/squareup/moshi/JsonAdapter;

    invoke-virtual {v0, p1}, Lcom/squareup/moshi/JsonAdapter;->fromJson(Lcom/squareup/moshi/JsonReader;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method isLenient()Z
    .locals 1

    .line 118
    .local p0, "this":Lcom/squareup/moshi/JsonAdapter$1;, "Lcom/squareup/moshi/JsonAdapter$1;"
    iget-object v0, p0, Lcom/squareup/moshi/JsonAdapter$1;->val$delegate:Lcom/squareup/moshi/JsonAdapter;

    invoke-virtual {v0}, Lcom/squareup/moshi/JsonAdapter;->isLenient()Z

    move-result v0

    return v0
.end method

.method public toJson(Lcom/squareup/moshi/JsonWriter;Ljava/lang/Object;)V
    .locals 2
    .param p1, "writer"    # Lcom/squareup/moshi/JsonWriter;
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/squareup/moshi/JsonWriter;",
            "TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 109
    .local p0, "this":Lcom/squareup/moshi/JsonAdapter$1;, "Lcom/squareup/moshi/JsonAdapter$1;"
    .local p2, "value":Ljava/lang/Object;, "TT;"
    invoke-virtual {p1}, Lcom/squareup/moshi/JsonWriter;->getSerializeNulls()Z

    move-result v0

    .line 110
    .local v0, "serializeNulls":Z
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/squareup/moshi/JsonWriter;->setSerializeNulls(Z)V

    .line 112
    :try_start_0
    iget-object v1, p0, Lcom/squareup/moshi/JsonAdapter$1;->val$delegate:Lcom/squareup/moshi/JsonAdapter;

    invoke-virtual {v1, p1, p2}, Lcom/squareup/moshi/JsonAdapter;->toJson(Lcom/squareup/moshi/JsonWriter;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 114
    invoke-virtual {p1, v0}, Lcom/squareup/moshi/JsonWriter;->setSerializeNulls(Z)V

    .line 115
    nop

    .line 116
    return-void

    .line 114
    :catchall_0
    move-exception v1

    invoke-virtual {p1, v0}, Lcom/squareup/moshi/JsonWriter;->setSerializeNulls(Z)V

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 121
    .local p0, "this":Lcom/squareup/moshi/JsonAdapter$1;, "Lcom/squareup/moshi/JsonAdapter$1;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/squareup/moshi/JsonAdapter$1;->val$delegate:Lcom/squareup/moshi/JsonAdapter;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ".serializeNulls()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
