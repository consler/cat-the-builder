.class public Lcom/thoughtworks/xstream/io/xml/SjsxpDriver;
.super Lcom/thoughtworks/xstream/io/xml/StaxDriver;
.source "SjsxpDriver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/thoughtworks/xstream/io/xml/StaxDriver;-><init>()V

    .line 32
    return-void
.end method

.method public constructor <init>(Lcom/thoughtworks/xstream/io/xml/QNameMap;)V
    .locals 0
    .param p1, "qnameMap"    # Lcom/thoughtworks/xstream/io/xml/QNameMap;

    .line 45
    invoke-direct {p0, p1}, Lcom/thoughtworks/xstream/io/xml/StaxDriver;-><init>(Lcom/thoughtworks/xstream/io/xml/QNameMap;)V

    .line 46
    return-void
.end method

.method public constructor <init>(Lcom/thoughtworks/xstream/io/xml/QNameMap;Lcom/thoughtworks/xstream/io/xml/XmlFriendlyNameCoder;)V
    .locals 0
    .param p1, "qnameMap"    # Lcom/thoughtworks/xstream/io/xml/QNameMap;
    .param p2, "nameCoder"    # Lcom/thoughtworks/xstream/io/xml/XmlFriendlyNameCoder;

    .line 38
    invoke-direct {p0, p1, p2}, Lcom/thoughtworks/xstream/io/xml/StaxDriver;-><init>(Lcom/thoughtworks/xstream/io/xml/QNameMap;Lcom/thoughtworks/xstream/io/naming/NameCoder;)V

    .line 39
    return-void
.end method

.method public constructor <init>(Lcom/thoughtworks/xstream/io/xml/XmlFriendlyNameCoder;)V
    .locals 0
    .param p1, "nameCoder"    # Lcom/thoughtworks/xstream/io/xml/XmlFriendlyNameCoder;

    .line 52
    invoke-direct {p0, p1}, Lcom/thoughtworks/xstream/io/xml/StaxDriver;-><init>(Lcom/thoughtworks/xstream/io/naming/NameCoder;)V

    .line 53
    return-void
.end method


# virtual methods
.method protected createInputFactory()Ljavax/xml/stream/XMLInputFactory;
    .locals 4

    .line 59
    const/4 v0, 0x0

    .line 61
    .local v0, "exception":Ljava/lang/Exception;
    :try_start_0
    const-string v1, "com.sun.xml.internal.stream.XMLInputFactoryImpl"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/xml/stream/XMLInputFactory;

    .line 62
    .local v1, "instance":Ljavax/xml/stream/XMLInputFactory;
    const-string v2, "javax.xml.stream.isSupportingExternalEntities"

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2, v3}, Ljavax/xml/stream/XMLInputFactory;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    return-object v1

    .line 68
    .end local v1    # "instance":Ljavax/xml/stream/XMLInputFactory;
    :catch_0
    move-exception v1

    .line 69
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    move-object v0, v1

    goto :goto_1

    .line 66
    .end local v1    # "e":Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v1

    .line 67
    .local v1, "e":Ljava/lang/IllegalAccessException;
    move-object v0, v1

    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    goto :goto_0

    .line 64
    :catch_2
    move-exception v1

    .line 65
    .local v1, "e":Ljava/lang/InstantiationException;
    move-object v0, v1

    .line 70
    .end local v1    # "e":Ljava/lang/InstantiationException;
    :goto_0
    nop

    .line 71
    :goto_1
    new-instance v1, Lcom/thoughtworks/xstream/io/StreamException;

    const-string v2, "Cannot create SJSXP (Sun JDK 6 StAX) XMLInputFaqctory instance."

    invoke-direct {v1, v2, v0}, Lcom/thoughtworks/xstream/io/StreamException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected createOutputFactory()Ljavax/xml/stream/XMLOutputFactory;
    .locals 3

    .line 78
    const/4 v0, 0x0

    .line 80
    .local v0, "exception":Ljava/lang/Exception;
    :try_start_0
    const-string v1, "com.sun.xml.internal.stream.XMLOutputFactoryImpl"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/xml/stream/XMLOutputFactory;
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 85
    :catch_0
    move-exception v1

    .line 86
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    move-object v0, v1

    goto :goto_1

    .line 83
    .end local v1    # "e":Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v1

    .line 84
    .local v1, "e":Ljava/lang/IllegalAccessException;
    move-object v0, v1

    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    goto :goto_0

    .line 81
    :catch_2
    move-exception v1

    .line 82
    .local v1, "e":Ljava/lang/InstantiationException;
    move-object v0, v1

    .line 87
    .end local v1    # "e":Ljava/lang/InstantiationException;
    :goto_0
    nop

    .line 88
    :goto_1
    new-instance v1, Lcom/thoughtworks/xstream/io/StreamException;

    const-string v2, "Cannot create SJSXP (Sun JDK 6 StAX) XMLOutputFaqctory instance."

    invoke-direct {v1, v2, v0}, Lcom/thoughtworks/xstream/io/StreamException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
