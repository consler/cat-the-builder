.class Lcom/squareup/moshi/JsonAdapter$5;
.super Lcom/squareup/moshi/JsonAdapter;
.source "JsonAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/squareup/moshi/JsonAdapter;->failOnUnknown()Lcom/squareup/moshi/JsonAdapter;
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

    .line 228
    .local p0, "this":Lcom/squareup/moshi/JsonAdapter$5;, "Lcom/squareup/moshi/JsonAdapter$5;"
    iput-object p1, p0, Lcom/squareup/moshi/JsonAdapter$5;->this$0:Lcom/squareup/moshi/JsonAdapter;

    iput-object p2, p0, Lcom/squareup/moshi/JsonAdapter$5;->val$delegate:Lcom/squareup/moshi/JsonAdapter;

    invoke-direct {p0}, Lcom/squareup/moshi/JsonAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public fromJson(Lcom/squareup/moshi/JsonReader;)Ljava/lang/Object;
    .locals 2
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

    .line 230
    .local p0, "this":Lcom/squareup/moshi/JsonAdapter$5;, "Lcom/squareup/moshi/JsonAdapter$5;"
    invoke-virtual {p1}, Lcom/squareup/moshi/JsonReader;->failOnUnknown()Z

    move-result v0

    .line 231
    .local v0, "skipForbidden":Z
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/squareup/moshi/JsonReader;->setFailOnUnknown(Z)V

    .line 233
    :try_start_0
    iget-object v1, p0, Lcom/squareup/moshi/JsonAdapter$5;->val$delegate:Lcom/squareup/moshi/JsonAdapter;

    invoke-virtual {v1, p1}, Lcom/squareup/moshi/JsonAdapter;->fromJson(Lcom/squareup/moshi/JsonReader;)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 235
    invoke-virtual {p1, v0}, Lcom/squareup/moshi/JsonReader;->setFailOnUnknown(Z)V

    .line 233
    return-object v1

    .line 235
    :catchall_0
    move-exception v1

    invoke-virtual {p1, v0}, Lcom/squareup/moshi/JsonReader;->setFailOnUnknown(Z)V

    throw v1
.end method

.method isLenient()Z
    .locals 1

    .line 242
    .local p0, "this":Lcom/squareup/moshi/JsonAdapter$5;, "Lcom/squareup/moshi/JsonAdapter$5;"
    iget-object v0, p0, Lcom/squareup/moshi/JsonAdapter$5;->val$delegate:Lcom/squareup/moshi/JsonAdapter;

    invoke-virtual {v0}, Lcom/squareup/moshi/JsonAdapter;->isLenient()Z

    move-result v0

    return v0
.end method

.method public toJson(Lcom/squareup/moshi/JsonWriter;Ljava/lang/Object;)V
    .locals 1
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

    .line 239
    .local p0, "this":Lcom/squareup/moshi/JsonAdapter$5;, "Lcom/squareup/moshi/JsonAdapter$5;"
    .local p2, "value":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lcom/squareup/moshi/JsonAdapter$5;->val$delegate:Lcom/squareup/moshi/JsonAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/squareup/moshi/JsonAdapter;->toJson(Lcom/squareup/moshi/JsonWriter;Ljava/lang/Object;)V

    .line 240
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 245
    .local p0, "this":Lcom/squareup/moshi/JsonAdapter$5;, "Lcom/squareup/moshi/JsonAdapter$5;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/squareup/moshi/JsonAdapter$5;->val$delegate:Lcom/squareup/moshi/JsonAdapter;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ".failOnUnknown()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
