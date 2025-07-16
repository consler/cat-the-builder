.class Lcom/thoughtworks/xstream/io/binary/BinaryStreamReader$IdRegistry;
.super Ljava/lang/Object;
.source "BinaryStreamReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/thoughtworks/xstream/io/binary/BinaryStreamReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "IdRegistry"
.end annotation


# instance fields
.field private map:Ljava/util/Map;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 203
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 205
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/thoughtworks/xstream/io/binary/BinaryStreamReader$IdRegistry;->map:Ljava/util/Map;

    return-void
.end method

.method synthetic constructor <init>(Lcom/thoughtworks/xstream/io/binary/BinaryStreamReader$1;)V
    .locals 0

    .line 203
    invoke-direct {p0}, Lcom/thoughtworks/xstream/io/binary/BinaryStreamReader$IdRegistry;-><init>()V

    return-void
.end method


# virtual methods
.method public get(J)Ljava/lang/String;
    .locals 3

    .line 212
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/binary/BinaryStreamReader$IdRegistry;->map:Ljava/util/Map;

    new-instance v1, Ljava/lang/Long;

    invoke-direct {v1, p1, p2}, Ljava/lang/Long;-><init>(J)V

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    .line 214
    :cond_0
    new-instance v0, Lcom/thoughtworks/xstream/io/StreamException;

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "Unknown ID : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/thoughtworks/xstream/io/StreamException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public put(JLjava/lang/String;)V
    .locals 2

    .line 208
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/binary/BinaryStreamReader$IdRegistry;->map:Ljava/util/Map;

    new-instance v1, Ljava/lang/Long;

    invoke-direct {v1, p1, p2}, Ljava/lang/Long;-><init>(J)V

    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
