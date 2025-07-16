.class public Lcom/thoughtworks/xstream/io/xml/xppdom/Xpp3DomBuilder;
.super Ljava/lang/Object;
.source "Xpp3DomBuilder.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static build(Ljava/io/Reader;)Lcom/thoughtworks/xstream/io/xml/xppdom/Xpp3Dom;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 31
    new-instance v0, Lorg/xmlpull/mxp1/MXParser;

    invoke-direct {v0}, Lorg/xmlpull/mxp1/MXParser;-><init>()V

    .line 32
    invoke-interface {v0, p0}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 34
    :try_start_0
    invoke-static {v0}, Lcom/thoughtworks/xstream/io/xml/xppdom/XppDom;->build(Lorg/xmlpull/v1/XmlPullParser;)Lcom/thoughtworks/xstream/io/xml/xppdom/XppDom;

    move-result-object v0

    check-cast v0, Lcom/thoughtworks/xstream/io/xml/xppdom/Xpp3Dom;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    invoke-virtual {p0}, Ljava/io/Reader;->close()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Ljava/io/Reader;->close()V

    .line 37
    throw v0
.end method
