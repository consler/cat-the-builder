.class Lcom/squareup/moshi/JsonAdapter$6;
.super Lcom/squareup/moshi/JsonAdapter;
.source "JsonAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/squareup/moshi/JsonAdapter;->indent(Ljava/lang/String;)Lcom/squareup/moshi/JsonAdapter;
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

.field final synthetic val$indent:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/squareup/moshi/JsonAdapter;Lcom/squareup/moshi/JsonAdapter;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/squareup/moshi/JsonAdapter;

    .line 263
    .local p0, "this":Lcom/squareup/moshi/JsonAdapter$6;, "Lcom/squareup/moshi/JsonAdapter$6;"
    iput-object p1, p0, Lcom/squareup/moshi/JsonAdapter$6;->this$0:Lcom/squareup/moshi/JsonAdapter;

    iput-object p2, p0, Lcom/squareup/moshi/JsonAdapter$6;->val$delegate:Lcom/squareup/moshi/JsonAdapter;

    iput-object p3, p0, Lcom/squareup/moshi/JsonAdapter$6;->val$indent:Ljava/lang/String;

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

    .line 265
    .local p0, "this":Lcom/squareup/moshi/JsonAdapter$6;, "Lcom/squareup/moshi/JsonAdapter$6;"
    iget-object v0, p0, Lcom/squareup/moshi/JsonAdapter$6;->val$delegate:Lcom/squareup/moshi/JsonAdapter;

    invoke-virtual {v0, p1}, Lcom/squareup/moshi/JsonAdapter;->fromJson(Lcom/squareup/moshi/JsonReader;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method isLenient()Z
    .locals 1

    .line 277
    .local p0, "this":Lcom/squareup/moshi/JsonAdapter$6;, "Lcom/squareup/moshi/JsonAdapter$6;"
    iget-object v0, p0, Lcom/squareup/moshi/JsonAdapter$6;->val$delegate:Lcom/squareup/moshi/JsonAdapter;

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

    .line 268
    .local p0, "this":Lcom/squareup/moshi/JsonAdapter$6;, "Lcom/squareup/moshi/JsonAdapter$6;"
    .local p2, "value":Ljava/lang/Object;, "TT;"
    invoke-virtual {p1}, Lcom/squareup/moshi/JsonWriter;->getIndent()Ljava/lang/String;

    move-result-object v0

    .line 269
    .local v0, "originalIndent":Ljava/lang/String;
    iget-object v1, p0, Lcom/squareup/moshi/JsonAdapter$6;->val$indent:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/squareup/moshi/JsonWriter;->setIndent(Ljava/lang/String;)V

    .line 271
    :try_start_0
    iget-object v1, p0, Lcom/squareup/moshi/JsonAdapter$6;->val$delegate:Lcom/squareup/moshi/JsonAdapter;

    invoke-virtual {v1, p1, p2}, Lcom/squareup/moshi/JsonAdapter;->toJson(Lcom/squareup/moshi/JsonWriter;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 273
    invoke-virtual {p1, v0}, Lcom/squareup/moshi/JsonWriter;->setIndent(Ljava/lang/String;)V

    .line 274
    nop

    .line 275
    return-void

    .line 273
    :catchall_0
    move-exception v1

    invoke-virtual {p1, v0}, Lcom/squareup/moshi/JsonWriter;->setIndent(Ljava/lang/String;)V

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 280
    .local p0, "this":Lcom/squareup/moshi/JsonAdapter$6;, "Lcom/squareup/moshi/JsonAdapter$6;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/squareup/moshi/JsonAdapter$6;->val$delegate:Lcom/squareup/moshi/JsonAdapter;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ".indent(\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/squareup/moshi/JsonAdapter$6;->val$indent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
