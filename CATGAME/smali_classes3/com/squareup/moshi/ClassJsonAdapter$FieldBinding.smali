.class Lcom/squareup/moshi/ClassJsonAdapter$FieldBinding;
.super Ljava/lang/Object;
.source "ClassJsonAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/moshi/ClassJsonAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FieldBinding"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field final adapter:Lcom/squareup/moshi/JsonAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/squareup/moshi/JsonAdapter<",
            "TT;>;"
        }
    .end annotation
.end field

.field final field:Ljava/lang/reflect/Field;

.field final name:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/reflect/Field;Lcom/squareup/moshi/JsonAdapter;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "field"    # Ljava/lang/reflect/Field;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Field;",
            "Lcom/squareup/moshi/JsonAdapter<",
            "TT;>;)V"
        }
    .end annotation

    .line 187
    .local p0, "this":Lcom/squareup/moshi/ClassJsonAdapter$FieldBinding;, "Lcom/squareup/moshi/ClassJsonAdapter$FieldBinding<TT;>;"
    .local p3, "adapter":Lcom/squareup/moshi/JsonAdapter;, "Lcom/squareup/moshi/JsonAdapter<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 188
    iput-object p1, p0, Lcom/squareup/moshi/ClassJsonAdapter$FieldBinding;->name:Ljava/lang/String;

    .line 189
    iput-object p2, p0, Lcom/squareup/moshi/ClassJsonAdapter$FieldBinding;->field:Ljava/lang/reflect/Field;

    .line 190
    iput-object p3, p0, Lcom/squareup/moshi/ClassJsonAdapter$FieldBinding;->adapter:Lcom/squareup/moshi/JsonAdapter;

    .line 191
    return-void
.end method


# virtual methods
.method read(Lcom/squareup/moshi/JsonReader;Ljava/lang/Object;)V
    .locals 2
    .param p1, "reader"    # Lcom/squareup/moshi/JsonReader;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 194
    .local p0, "this":Lcom/squareup/moshi/ClassJsonAdapter$FieldBinding;, "Lcom/squareup/moshi/ClassJsonAdapter$FieldBinding<TT;>;"
    iget-object v0, p0, Lcom/squareup/moshi/ClassJsonAdapter$FieldBinding;->adapter:Lcom/squareup/moshi/JsonAdapter;

    invoke-virtual {v0, p1}, Lcom/squareup/moshi/JsonAdapter;->fromJson(Lcom/squareup/moshi/JsonReader;)Ljava/lang/Object;

    move-result-object v0

    .line 195
    .local v0, "fieldValue":Ljava/lang/Object;, "TT;"
    iget-object v1, p0, Lcom/squareup/moshi/ClassJsonAdapter$FieldBinding;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v1, p2, v0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 196
    return-void
.end method

.method write(Lcom/squareup/moshi/JsonWriter;Ljava/lang/Object;)V
    .locals 2
    .param p1, "writer"    # Lcom/squareup/moshi/JsonWriter;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 200
    .local p0, "this":Lcom/squareup/moshi/ClassJsonAdapter$FieldBinding;, "Lcom/squareup/moshi/ClassJsonAdapter$FieldBinding<TT;>;"
    iget-object v0, p0, Lcom/squareup/moshi/ClassJsonAdapter$FieldBinding;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 201
    .local v0, "fieldValue":Ljava/lang/Object;, "TT;"
    iget-object v1, p0, Lcom/squareup/moshi/ClassJsonAdapter$FieldBinding;->adapter:Lcom/squareup/moshi/JsonAdapter;

    invoke-virtual {v1, p1, v0}, Lcom/squareup/moshi/JsonAdapter;->toJson(Lcom/squareup/moshi/JsonWriter;Ljava/lang/Object;)V

    .line 202
    return-void
.end method
