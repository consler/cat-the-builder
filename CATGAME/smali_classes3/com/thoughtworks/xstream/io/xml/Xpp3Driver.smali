.class public Lcom/thoughtworks/xstream/io/xml/Xpp3Driver;
.super Lcom/thoughtworks/xstream/io/xml/AbstractXppDriver;
.source "Xpp3Driver.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 35
    new-instance v0, Lcom/thoughtworks/xstream/io/xml/XmlFriendlyNameCoder;

    invoke-direct {v0}, Lcom/thoughtworks/xstream/io/xml/XmlFriendlyNameCoder;-><init>()V

    invoke-direct {p0, v0}, Lcom/thoughtworks/xstream/io/xml/AbstractXppDriver;-><init>(Lcom/thoughtworks/xstream/io/naming/NameCoder;)V

    .line 36
    return-void
.end method

.method public constructor <init>(Lcom/thoughtworks/xstream/io/naming/NameCoder;)V
    .locals 0
    .param p1, "nameCoder"    # Lcom/thoughtworks/xstream/io/naming/NameCoder;

    .line 45
    invoke-direct {p0, p1}, Lcom/thoughtworks/xstream/io/xml/AbstractXppDriver;-><init>(Lcom/thoughtworks/xstream/io/naming/NameCoder;)V

    .line 46
    return-void
.end method


# virtual methods
.method protected createParser()Lorg/xmlpull/v1/XmlPullParser;
    .locals 1

    .line 52
    new-instance v0, Lorg/xmlpull/mxp1/MXParser;

    invoke-direct {v0}, Lorg/xmlpull/mxp1/MXParser;-><init>()V

    return-object v0
.end method
