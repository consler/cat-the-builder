.class public Lcom/thoughtworks/xstream/io/xml/XppDomDriver;
.super Lcom/thoughtworks/xstream/io/xml/AbstractXppDomDriver;
.source "XppDomDriver.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 29
    new-instance v0, Lcom/thoughtworks/xstream/io/xml/XmlFriendlyNameCoder;

    invoke-direct {v0}, Lcom/thoughtworks/xstream/io/xml/XmlFriendlyNameCoder;-><init>()V

    invoke-direct {p0, v0}, Lcom/thoughtworks/xstream/io/xml/AbstractXppDomDriver;-><init>(Lcom/thoughtworks/xstream/io/naming/NameCoder;)V

    .line 30
    return-void
.end method

.method public constructor <init>(Lcom/thoughtworks/xstream/io/naming/NameCoder;)V
    .locals 0
    .param p1, "nameCoder"    # Lcom/thoughtworks/xstream/io/naming/NameCoder;

    .line 36
    invoke-direct {p0, p1}, Lcom/thoughtworks/xstream/io/xml/AbstractXppDomDriver;-><init>(Lcom/thoughtworks/xstream/io/naming/NameCoder;)V

    .line 37
    return-void
.end method

.method public constructor <init>(Lcom/thoughtworks/xstream/io/xml/XmlFriendlyReplacer;)V
    .locals 0
    .param p1, "replacer"    # Lcom/thoughtworks/xstream/io/xml/XmlFriendlyReplacer;

    .line 44
    invoke-direct {p0, p1}, Lcom/thoughtworks/xstream/io/xml/AbstractXppDomDriver;-><init>(Lcom/thoughtworks/xstream/io/naming/NameCoder;)V

    .line 45
    return-void
.end method


# virtual methods
.method protected declared-synchronized createParser()Lorg/xmlpull/v1/XmlPullParser;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    monitor-enter p0

    .line 48
    :try_start_0
    invoke-static {}, Lcom/thoughtworks/xstream/io/xml/XppDriver;->createDefaultParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 48
    .end local p0    # "this":Lcom/thoughtworks/xstream/io/xml/XppDomDriver;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
