.class public Lcom/thoughtworks/xstream/core/util/Base64JAXBCodec;
.super Ljava/lang/Object;
.source "Base64JAXBCodec.java"

# interfaces
.implements Lcom/thoughtworks/xstream/core/StringCodec;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public decode(Ljava/lang/String;)[B
    .locals 0

    .line 28
    invoke-static {p1}, Ljavax/xml/bind/DatatypeConverter;->parseBase64Binary(Ljava/lang/String;)[B

    move-result-object p1

    return-object p1
.end method

.method public encode([B)Ljava/lang/String;
    .locals 0

    .line 33
    invoke-static {p1}, Ljavax/xml/bind/DatatypeConverter;->printBase64Binary([B)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
